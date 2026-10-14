#include <sycl/sycl.hpp>

#include <algorithm>
#include <chrono>
#include <cstdint>
#include <iostream>
#include <random>
#include <string>
#include <vector>

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

    constexpr std::size_t max_elements = 1u << 24;
    if (n == 0 || n > max_elements) {
        std::cerr << "Choose an element count between 1 and "
                  << max_elements << ".\n";
        return 1;
    }

    // Bitonic sort requires a power-of-two array length.
    std::size_t padded = 1;
    while (padded < n) {
        padded <<= 1;
    }

    try {
        sycl::queue q{sycl::gpu_selector_v};

        std::cout << "Device: "
                  << q.get_device().get_info<
                         sycl::info::device::name>()
                  << '\n';
        std::cout << "Input elements: " << n
                  << ", padded elements: " << padded << '\n';

        std::vector<std::int32_t> input(padded);
        std::vector<std::int32_t> output(n);

        std::mt19937 rng(12345);
        std::uniform_int_distribution<std::int32_t> dist(
            -1'000'000, 1'000'000);

        for (std::size_t i = 0; i < n; ++i) {
            input[i] = dist(rng);
        }

        // Sentinel values sort after all generated values.
        std::fill(input.begin() + n, input.end(), INT32_MAX);

        std::int32_t* data =
            sycl::malloc_device<std::int32_t>(padded, q);

        if (data == nullptr) {
            std::cerr << "Device memory allocation failed.\n";
            return 1;
        }

        try {
            q.memcpy(data, input.data(),
                     padded * sizeof(std::int32_t)).wait();

            const auto start = std::chrono::steady_clock::now();

            // Parallel bitonic sorting network. Each stage is a separate
            // kernel, and completion is required before the next stage.
            for (std::size_t k = 2; k <= padded; k <<= 1) {
                for (std::size_t j = k >> 1; j > 0; j >>= 1) {
                    q.parallel_for(
                        sycl::range<1>(padded),
                        [=](sycl::id<1> id) {
                            const std::size_t i = id[0];
                            const std::size_t partner = i ^ j;

                            // Only the lower index of each pair writes it.
                            if (partner > i) {
                                const std::int32_t a = data[i];
                                const std::int32_t b = data[partner];
                                const bool ascending = (i & k) == 0;

                                if ((ascending && a > b) ||
                                    (!ascending && a < b)) {
                                    data[i] = b;
                                    data[partner] = a;
                                }
                            }
                        });
                    q.wait_and_throw();
                }
            }

            const auto stop = std::chrono::steady_clock::now();

            q.memcpy(output.data(), data,
                     n * sizeof(std::int32_t)).wait();

            const double elapsed_ms =
                std::chrono::duration<double, std::milli>(
                    stop - start).count();

            std::vector<std::int32_t> reference(
                input.begin(), input.begin() + n);
            std::sort(reference.begin(), reference.end());

            const bool correct = (output == reference);

            std::cout << "GPU sort time: " << elapsed_ms << " ms\n";
            std::cout << "Elements per second: "
                      << (static_cast<double>(n) /
                          (elapsed_ms / 1000.0))
                      << '\n';
            std::cout << "Correctness: "
                      << (correct ? "PASS" : "FAIL") << '\n';

            if (n <= 32) {
                std::cout << "Sorted values: ";
                for (const auto value : output) {
                    std::cout << value << ' ';
                }
                std::cout << '\n';
            }

            sycl::free(data, q);
            return correct ? 0 : 2;
        } catch (...) {
            sycl::free(data, q);
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
