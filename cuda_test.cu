#include <cuda_runtime.h>
#include <iostream>

int main() {
    int count = 0;
    cudaError_t err = cudaGetDeviceCount(&count);

    if (err != cudaSuccess) {
        std::cerr << "CUDA error: "
                  << cudaGetErrorString(err) << "\n";
        return 1;
    }

    std::cout << "CUDA devices: " << count << "\n";

    for (int i = 0; i < count; ++i) {
        cudaDeviceProp p{};
        cudaGetDeviceProperties(&p, i);
        std::cout << i << ": " << p.name
                  << ", compute capability "
                  << p.major << "." << p.minor << "\n";
    }
    return count > 0 ? 0 : 1;
}
