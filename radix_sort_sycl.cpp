#include <sycl/sycl.hpp>

#include <algorithm>
#include <chrono>
#include <cstdint>
#include <iostream>
#include <random>
#include <string>
#include <vector>

// Stable least-significant-digit radix sort for signed 32-bit integers.
// Each pass sorts one 8-bit digit. XORing the sign bit maps signed integer
// order to unsigned lexicographic order.
namespace {
constexpr std::size_t kRadix = 256;
constexpr std::size_t kBlockSize = 256;
constexpr int kPasses = 4;

std::uint32_t sortable_key(std::int32_t value) {
    return static_cast<std::uint32_t>(value) ^ 0x80000000u;
}

} // namespace

int main(int argc, char* argv[]) {
    std::size_t n = 1'000'000;
    if (argc > 1) {
        try {
            n = static_cast<std::size_t>(std::stoull(argv[1]));
        } catch (...) {
            std::cerr << "Invalid element count.\n";
            return 1;
        }
    }

    constexpr std::size_t kMaxElements = 1u << 24;
    if (n == 0 || n > kMaxElements) {
        std::cerr << "Choose an element count between 1 and "
                  << kMaxElements << ".\n";
        return 1;
    }

    const std::size_t blocks = (n + kBlockSize - 1) / kBlockSize;
    const std::size_t padded = blocks * kBlockSize;

    try {
        sycl::queue q{sycl::gpu_selector_v};
        std::cout << "Device: "
                  << q.get_device().get_info<sycl::info::device::name>()
                  << '\n';
        std::cout << "Input elements: " << n
                  << ", radix blocks: " << blocks
                  << ", block size: " << kBlockSize << '\n';

        std::vector<std::int32_t> input(n);
        std::vector<std::int32_t> output(n);
        std::mt19937 rng(12345);
        std::uniform_int_distribution<std::int32_t> dist(
            -1'000'000, 1'000'000);
        for (auto& value : input) {
            value = dist(rng);
        }

        auto* src = sycl::malloc_device<std::int32_t>(padded, q);
        auto* dst = sycl::malloc_device<std::int32_t>(padded, q);
        auto* block_hist = sycl::malloc_device<std::uint32_t>(
            blocks * kRadix, q);
        auto* block_offsets = sycl::malloc_device<std::uint32_t>(
            blocks * kRadix, q);

        if (!src || !dst || !block_hist || !block_offsets) {
            if (src) sycl::free(src, q);
            if (dst) sycl::free(dst, q);
            if (block_hist) sycl::free(block_hist, q);
            if (block_offsets) sycl::free(block_offsets, q);
            std::cerr << "Device memory allocation failed.\n";
            return 1;
        }

        try {
            q.memcpy(src, input.data(), n * sizeof(std::int32_t)).wait();

            std::vector<std::uint32_t> host_hist(blocks * kRadix);
            std::vector<std::uint32_t> host_offsets(blocks * kRadix);

            const auto start = std::chrono::steady_clock::now();

            for (int pass = 0; pass < kPasses; ++pass) {
                const unsigned shift = static_cast<unsigned>(pass * 8);

                // Build one 256-bin histogram per block.
                // Use a separate kernel with a local histogram accessor.
                q.submit([&](sycl::handler& h) {
                    sycl::local_accessor<std::uint32_t, 1> local_hist(
                        sycl::range<1>(kRadix), h);
                    h.parallel_for(
                        sycl::nd_range<1>(
                            sycl::range<1>(padded),
                            sycl::range<1>(kBlockSize)),
                        [=](sycl::nd_item<1> item) {
                            const std::size_t lid = item.get_local_id(0);
                            const std::size_t idx = item.get_global_id(0);
                            const std::size_t block = item.get_group(0);

                            local_hist[lid] = 0;
                            sycl::group_barrier(item.get_group());

                            if (idx < n) {
                                const std::uint32_t key =
                                    static_cast<std::uint32_t>(src[idx]) ^
                                    0x80000000u;
                                const std::uint32_t digit =
                                    (key >> shift) & 0xffu;
                                sycl::atomic_ref<
                                    std::uint32_t,
                                    sycl::memory_order::relaxed,
                                    sycl::memory_scope::work_group,
                                    sycl::access::address_space::local_space>
                                    counter(local_hist[digit]);
                                counter.fetch_add(1);
                            }

                            sycl::group_barrier(item.get_group());
                            block_hist[block * kRadix + lid] = local_hist[lid];
                        });
                });
                q.wait_and_throw();

                // Compute stable global offsets: digit order first, then
                // block order. The small prefix calculation runs on the CPU.
                q.memcpy(host_hist.data(), block_hist,
                         host_hist.size() * sizeof(std::uint32_t)).wait();

                std::uint32_t digit_base = 0;
                for (std::size_t digit = 0; digit < kRadix; ++digit) {
                    std::uint32_t block_base = digit_base;
                    for (std::size_t block = 0; block < blocks; ++block) {
                        const std::size_t pos = block * kRadix + digit;
                        host_offsets[pos] = block_base;
                        block_base += host_hist[pos];
                    }
                    digit_base = block_base;
                }

                q.memcpy(block_offsets, host_offsets.data(),
                         host_offsets.size() * sizeof(std::uint32_t)).wait();

                // Stable scatter. Within each block, each element counts
                // preceding elements with the same digit to obtain its rank.
                // This simple rank calculation favors clarity over peak speed.
                q.parallel_for(sycl::range<1>(n), [=](sycl::id<1> id) {
                    const std::size_t idx = id[0];
                    const std::size_t block_start =
                        (idx / kBlockSize) * kBlockSize;
                    const std::uint32_t key =
                        static_cast<std::uint32_t>(src[idx]) ^ 0x80000000u;
                    const std::uint32_t digit = (key >> shift) & 0xffu;

                    std::uint32_t rank = 0;
                    for (std::size_t prev = block_start; prev < idx; ++prev) {
                        const std::uint32_t prev_key =
                            static_cast<std::uint32_t>(src[prev]) ^
                            0x80000000u;
                        if (((prev_key >> shift) & 0xffu) == digit) {
                            ++rank;
                        }
                    }

                    const std::size_t offset_index =
                        (idx / kBlockSize) * kRadix + digit;
                    dst[block_offsets[offset_index] + rank] = src[idx];
                });
                q.wait_and_throw();

                std::swap(src, dst);
            }

            const auto stop = std::chrono::steady_clock::now();
            q.memcpy(output.data(), src, n * sizeof(std::int32_t)).wait();

            const double elapsed_ms =
                std::chrono::duration<double, std::milli>(stop - start).count();

            std::vector<std::int32_t> reference = input;
            std::sort(reference.begin(), reference.end());
            const bool correct = output == reference;

            std::cout << "GPU radix-sort time (including per-pass "
                         "histogram transfers/prefix): "
                      << elapsed_ms << " ms\n";
            std::cout << "Elements per second: "
                      << (static_cast<double>(n) / (elapsed_ms / 1000.0))
                      << '\n';
            std::cout << "Correctness: "
                      << (correct ? "PASS" : "FAIL") << '\n';

            sycl::free(src, q);
            sycl::free(dst, q);
            sycl::free(block_hist, q);
            sycl::free(block_offsets, q);
            return correct ? 0 : 2;
        } catch (...) {
            sycl::free(src, q);
            sycl::free(dst, q);
            sycl::free(block_hist, q);
            sycl::free(block_offsets, q);
            throw;
        }
    } catch (const sycl::exception& e) {
        std::cerr << "SYCL error: " << e.what() << '\n';
        return 1;
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << '\n';
        return 1;
    }
}
