#include <sycl/sycl.hpp>
#include <iostream>
#include <vector>

int main() {
    try {
        sycl::queue q{
            sycl::gpu_selector_v,
            sycl::property::queue::in_order{}
        };

        auto device = q.get_device();

        std::cout << "Device: "
                  << device.get_info<
                         sycl::info::device::name>()
                  << "\n";

        constexpr size_t N = 1024;
        std::vector<int> data(N, 1);

        {
            sycl::buffer<int, 1> buf(data.data(),
                                     sycl::range<1>(N));

            q.submit([&](sycl::handler& h) {
                sycl::accessor a{
                    buf, h, sycl::write_only,
                    sycl::no_init
                };

                h.parallel_for(sycl::range<1>(N),
                    [=](sycl::id<1> i) {
                        a[i] = static_cast<int>(i) * 2;
                    });
            });
        }

        std::cout << "Result[10]: " << data[10] << "\n";
        std::cout << "SYCL GPU test passed\n";
    } catch (const sycl::exception& e) {
        std::cerr << "SYCL error: " << e.what() << "\n";
        return 1;
    }
}
