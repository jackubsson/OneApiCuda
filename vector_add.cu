#include <cuda_runtime.h>
#include <stdexcept>
#include <string>

static void check(cudaError_t e) {
    if (e != cudaSuccess)
        throw std::runtime_error(cudaGetErrorString(e));
}

__global__ void add_kernel(const float* a, const float* b,
                           float* c, int n) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < n) c[i] = a[i] + b[i];
}

void cuda_vector_add(const float* a, const float* b,
                     float* c, int n) {
    float *da = nullptr, *db = nullptr, *dc = nullptr;
    check(cudaMalloc(&da, n * sizeof(float)));
    try {
        check(cudaMalloc(&db, n * sizeof(float)));
        check(cudaMalloc(&dc, n * sizeof(float)));

        check(cudaMemcpy(da, a, n * sizeof(float),
                         cudaMemcpyHostToDevice));
        check(cudaMemcpy(db, b, n * sizeof(float),
                         cudaMemcpyHostToDevice));

        add_kernel<<<(n + 255) / 256, 256>>>(da, db, dc, n);
        check(cudaGetLastError());
        check(cudaDeviceSynchronize());

        check(cudaMemcpy(c, dc, n * sizeof(float),
                         cudaMemcpyDeviceToHost));
    } catch (...) {
        if (dc) cudaFree(dc);
        if (db) cudaFree(db);
        cudaFree(da);
        throw;
    }
    cudaFree(dc);
    cudaFree(db);
    cudaFree(da);
}
