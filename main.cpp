#include <iostream>
#include <vector>
#include <cmath>
#include <mkl.h>

void cuda_vector_add(const float* a, const float* b,
                     float* c, int n);

int main() {
    constexpr int n = 8;
    std::vector<float> a(n), b(n), c(n), cpu(n);

    for (int i = 0; i < n; ++i) {
        a[i] = float(i + 1);
        b[i] = float(10 * (i + 1));
    }

    // Intel oneMKL: CPU vector operation, cpu = 2*a + b.
    cpu = a;
    cblas_saxpy(n, 1.0f, b.data(), 1, cpu.data(), 1);
    cblas_sscal(n, 2.0f, cpu.data(), 1);

    // NVIDIA CUDA: GPU vector addition, c = a + b.
    cuda_vector_add(a.data(), b.data(), c.data(), n);

    std::cout << "oneMKL + CUDA C++ results\n";
    for (int i = 0; i < n; ++i) {
        std::cout << i << ": CUDA=" << c[i]
                  << ", oneMKL=" << cpu[i] << '\n';
        if (std::abs(c[i] - (a[i] + b[i])) > 1e-5f)
            return 2;
    }

    std::cout << "CUDA vector-add validation passed.\n";
    return 0;
}

