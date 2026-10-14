cmake_minimum_required(VERSION 3.24)
project(OneApiCuda LANGUAGES CXX CUDA)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CUDA_STANDARD 17)
set(CMAKE_CUDA_STANDARD_REQUIRED ON)
set(CMAKE_CUDA_ARCHITECTURES 86)

set(MKL_INTERFACE_FULL lp64)
set(MKL_THREADING sequential)
set(MKL_LINK dynamic)

find_package(MKL CONFIG REQUIRED)

add_executable(OneApiCuda main.cpp vector_add.cu)
target_link_libraries(OneApiCuda PRIVATE MKL::MKL)
