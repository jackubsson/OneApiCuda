cmake_minimum_required(VERSION 3.24)
cmake_policy(SET CMP0091 NEW)
project(OneApiCuda LANGUAGES CXX CUDA)

set(CMAKE_CUDA_RUNTIME_LIBRARY Shared)
set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>DLL")
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CUDA_STANDARD 17)
set(CMAKE_CUDA_STANDARD_REQUIRED ON)
set(CMAKE_CUDA_ARCHITECTURES 86)

set(MKL_INTERFACE_FULL intel_lp64)
set(MKL_THREADING sequential)
set(MKL_LINK dynamic)

find_package(MKL CONFIG REQUIRED)

add_executable(OneApiCuda main.cpp vector_add.cu)
target_link_libraries(OneApiCuda PRIVATE MKL::MKL)


