#include <sycl/sycl.hpp>
#include <iostream>

int main() {
    try {
        sycl::queue q{sycl::gpu_selector_v};

        std::cout << "Selected device: "
                  << q.get_device().get_info<
                         sycl::info::device::name>()
                  << '\n';

        int result = 0;
        {
            sycl::buffer<int, 1> buf{&result, sycl::range<1>{1}};
            q.submit([&](sycl::handler& h) {
                auto out = buf.get_access<sycl::access::mode::write>(h);
                h.single_task([=]() {
                    out[0] = 42;
                });
            });
        }

        std::cout << "Kernel result: " << result << '\n';
    } catch (const sycl::exception& e) {
        std::cerr << e.what() << '\n';
        return 1;
    }
}
