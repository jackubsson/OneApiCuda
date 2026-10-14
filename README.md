# OneApiCuda

**Enabling SYCL GPU computing on NVIDIA hardware with a custom Intel LLVM toolchain**

OneApiCuda is a project focused on building and testing an Intel LLVM/SYCL toolchain with NVIDIA CUDA backend support on Windows. The goal is to enable SYCL applications to discover NVIDIA GPUs, compile device code, and execute parallel workloads using the SYCL programming model.

The project demonstrates a working development setup in which a custom-built SYCL toolchain successfully compiles and executes a GPU kernel on an NVIDIA GeForce RTX 3050 Ti Laptop GPU.

## Table of Contents

- [Overview](#overview)
- [Objectives](#objectives)
- [Current Status](#current-status)
- [Architecture](#architecture)
- [Test Environment](#test-environment)
- [Prerequisites](#prerequisites)
- [Build the Toolchain](#build-the-toolchain)
- [Verify CUDA Device Detection](#verify-cuda-device-detection)
- [Compile and Run a SYCL Program](#compile-and-run-a-sycl-program)
- [Example Program](#example-program)
- [Expected Output](#expected-output)
- [Troubleshooting](#troubleshooting)
- [Technical Details](#technical-details)
- [Limitations and Future Work](#limitations-and-future-work)
- [References](#references)
- [License](#license)

## Overview

SYCL is a C++ programming model for heterogeneous computing. It allows developers to write parallel code that can target supported compute devices through a common programming interface.

This project explores the use of Intel's LLVM-based SYCL toolchain with an NVIDIA CUDA backend. Instead of relying only on the default installed oneAPI configuration, the project builds a custom toolchain from source and verifies that its CUDA runtime components can discover and execute work on NVIDIA hardware.

The verified workflow includes:

1. Cloning the Intel LLVM repository and checking out the `sycl` branch.
2. Configuring the build with CUDA backend support.
3. Compiling and deploying the SYCL toolchain.
4. Detecting the NVIDIA GPU through the Unified Runtime CUDA adapter.
5. Compiling a SYCL application for the `nvptx64-nvidia-cuda` target.
6. Executing a device kernel and validating its result.

## Objectives

The main objectives are to:

- Build a custom LLVM/Clang-based SYCL toolchain on Windows.
- Enable NVIDIA CUDA backend support in the build.
- Investigate GPU discovery through the Unified Runtime.
- Compile SYCL device code for NVIDIA GPU execution.
- Validate the complete compile-and-run workflow with a minimal kernel.
- Document the build environment and runtime configuration for reproducibility.

## Current Status

The following functionality has been verified in the test environment.

| Component | Status |
|---|---|
| Intel LLVM/SYCL source checkout | Completed |
| Windows x64 build environment | Configured |
| CUDA-enabled toolchain configuration | Completed |
| Custom toolchain build and deployment | Successful |
| Unified Runtime CUDA adapter discovery | Verified |
| NVIDIA GPU detection | Verified |
| SYCL kernel compilation | Successful |
| GPU kernel execution | Successful |
| Kernel result validation | Passed |
| Automatic workload migration between GPUs | Not implemented or verified |
| Performance benchmarking | Not yet documented |

The primary proof of functionality is a SYCL kernel that executes on the NVIDIA GPU and returns the expected result, `42`.

## Architecture

The execution path consists of the following components:

```text
SYCL C++ Application
        |
        v
Custom LLVM / Clang Toolchain
        |
        v
SYCL Device Compilation
        |
        v
NVPTX NVIDIA CUDA Target
        |
        v
Unified Runtime CUDA Adapter
        |
        v
NVIDIA CUDA Driver
        |
        v
NVIDIA GeForce RTX 3050 Ti
        |
        v
Kernel Execution and Result
```

The SYCL application expresses parallel work using standard C++ and SYCL abstractions. The compiler generates device code for the NVIDIA target, while the CUDA runtime adapter provides the connection between the SYCL runtime and the NVIDIA GPU.

The CUDA adapter is responsible for making the device available to the runtime; it does not by itself implement automatic scheduling or migration of workloads between different GPU vendors.

## Test Environment

The following environment was used for the successful proof of concept.

| Component | Configuration |
|---|---|
| Operating system | Windows |
| Architecture | x64 |
| Compiler toolchain | Custom Intel LLVM/SYCL build |
| Source branch | `sycl` |
| GPU backend | NVIDIA CUDA |
| GPU | NVIDIA GeForce RTX 3050 Ti Laptop GPU |
| GPU compute capability | 8.6 (`sm_86`) |
| NVIDIA driver | 617.42 |
| Installed CUDA Toolkit | 12.9 |
| Reported CUDA driver/UMD version | 13.4 |
| Python used for build scripts | Python 3.12.5 |

The reported CUDA driver/U​MD version and installed CUDA Toolkit version refer to different components and should not be treated as interchangeable.

Paths in the instructions below reflect the original Windows development environment. Adjust them if your repository or toolchain is installed elsewhere.

## Prerequisites

Before building the project, prepare the following components.

### Required software

- Git
- Python 3.12 or a compatible version for the build scripts
- Visual Studio 2022 Build Tools with the C++ build toolchain
- A Windows SDK compatible with the Visual Studio installation
- CMake and Ninja if required by the source build configuration
- An NVIDIA GPU with a compatible driver
- NVIDIA CUDA Toolkit
- Sufficient disk space and memory to compile LLVM and its SYCL components

The exact compiler, CMake, Ninja, CUDA Toolkit, and Windows SDK versions supported by the checked-out source should be confirmed against the repository's build instructions.

### Check the NVIDIA GPU

Open PowerShell and run:

```powershell
nvidia-smi
```

Confirm that the NVIDIA GPU is listed and that the driver is operational.

### Check Python

The build scripts in this environment were run using:

```powershell
& C:\intelpython4\python.exe --version
```

Expected version:

```text
Python 3.12.5
```

If multiple Python installations are present, use the intended interpreter explicitly to avoid running the build scripts with an incompatible environment.

## Build the Toolchain

### 1. Create the project directory

The working project directory was:

```powershell
C:\Users\wqads\Documents\OneApiCuda
```

Navigate to it:

```powershell
cd "$HOME\Documents\OneApiCuda"
```

### 2. Clone the Intel LLVM repository

Clone the `sycl` branch into a dedicated directory:

```powershell
git clone --config core.autocrlf=false `
    --branch sycl `
    https://github.com/intel/llvm.git `
    sycl-cuda-clean
```

Enter the repository:

```powershell
cd .\sycl-cuda-clean
```

Disabling Git's automatic CRLF conversion helps preserve the line endings expected by the source build.

### 3. Initialize the Visual Studio build environment

Open PowerShell and execute the following command to load the Visual Studio 2022 x64 compiler environment into the current session:

```powershell
cmd.exe /c '"C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64 && set' |
    ForEach-Object {
        if ($_ -match '^([^=]+)=(.*)$') {
            Set-Item -Path "Env:\$($matches[1])" -Value $matches[2]
        }
    }
```

This makes the required compiler and build environment variables available to PowerShell.

If Visual Studio Build Tools is installed in a different location, update the path to `vcvarsall.bat`.

### 4. Configure the CUDA-enabled build

Run the repository's configuration script:

```powershell
& C:\intelpython4\python.exe .\buildbot\configure.py --cuda -t Release
```

The configuration requests a Release build with CUDA backend support.

Check the command output for missing dependencies or configuration errors before proceeding.

### 5. Build and deploy the toolchain

Run:

```powershell
& C:\intelpython4\python.exe .\buildbot\compile.py -t deploy-sycl-toolchain
```

This step compiles and deploys the configured SYCL toolchain. Building LLVM and its SYCL components can take considerable time and disk space.

After a successful build, the relevant executables and runtime components are available under the build directory.

Important paths include:

```text
sycl-cuda-clean/
├── build/
│   ├── bin/
│   │   └── clang++.exe
│   └── install/
│       └── bin/
│           ├── sycl-ls.exe
│           ├── ur_adapter_cuda.dll
│           ├── ur_adapter_cudad.dll
│           └── ...
└── buildbot/
    ├── configure.py
    └── compile.py
```

This is a simplified representation of the relevant outputs, not a complete listing of the build tree. Exact generated files may vary by configuration.

## Verify CUDA Device Detection

Once the toolchain has been built, add its runtime directories to `PATH`:

```powershell
$env:PATH = "$PWD\build\install\bin;$PWD\build\bin;$env:PATH"
```

Run the SYCL device discovery utility:

```powershell
& "$PWD\build\install\bin\sycl-ls.exe" --verbose
```

The successful test environment reported a CUDA device similar to:

```text
[cuda:gpu][cuda:0] NVIDIA CUDA BACKEND,
NVIDIA GeForce RTX 3050 Ti Laptop GPU 8.6 [CUDA 13.4]
```

The exact formatting and additional diagnostic messages can vary by runtime version.

### Select the CUDA backend

Set the device selector environment variable:

```powershell
$env:ONEAPI_DEVICE_SELECTOR = "cuda:*"
```

This restricts device selection to the CUDA backend for the current PowerShell session.

The system may also contain Intel integrated graphics. Explicitly selecting CUDA helps ensure that the test uses the NVIDIA GPU rather than an Intel GPU backend.

## Compile and Run a SYCL Program

### 1. Create the test source

Save the example below as `test.cpp` in the project directory or another convenient location.

### 2. Set up the runtime environment

From the `sycl-cuda-clean` directory:

```powershell
$env:PATH = "$PWD\build\install\bin;$PWD\build\bin;$env:PATH"
$env:ONEAPI_DEVICE_SELECTOR = "cuda:*"
```

The runtime directories need to remain on `PATH` when launching the compiled executable so Windows can locate the required DLLs.

### 3. Compile for the NVIDIA target

Run:

```powershell
& "$PWD\build\bin\clang++.exe" `
    -fsycl `
    -fsycl-targets=nvptx64-nvidia-cuda `
    -fexceptions `
    "$HOME\Documents\OneApiCuda\test.cpp" `
    -o "$PWD\test-cuda.exe"
```

The key options are:

- `-fsycl`: Enables SYCL compilation.
- `-fsycl-targets=nvptx64-nvidia-cuda`: Specifies the NVIDIA CUDA device target.
- `-fexceptions`: Enables C++ exception handling for the test's error handling.
- `-o`: Specifies the output executable.

The command uses the custom-built Clang compiler, rather than assuming that the system's default `clang++` or `icx` points to the custom toolchain.

### 4. Execute the program

Keep the runtime environment configured and run:

```powershell
& "$PWD\test-cuda.exe"
```

A successful execution should report the NVIDIA GPU and the expected kernel result.

## Example Program

```cpp
#include <sycl/sycl.hpp>
#include <iostream>

int main() {
    try {
        sycl::queue q{sycl::gpu_selector_v};

        std::cout << "Selected device: "
                  << q.get_device()
                         .get_info<sycl::info::device::name>()
                  << '\n';

        int result = 0;

        {
            sycl::buffer<int, 1> buf{
                &result, sycl::range<1>{1}
            };

            q.submit([&](sycl::handler& h) {
                auto out =
                    buf.get_access<sycl::access::mode::write>(h);

                h.single_task([=]() {
                    out[0] = 42;
                });
            });
        }

        std::cout << "Kernel result: " << result << '\n';
    }
    catch (const sycl::exception& e) {
        std::cerr << e.what() << '\n';
        return 1;
    }
}
```

### How it works

1. **Queue creation:** Creates a SYCL queue using the GPU selector. The environment variable restricts available devices to the CUDA backend.
2. **Buffer creation:** Creates a one-element SYCL buffer associated with the host variable.
3. **Kernel submission:** Submits a single-task kernel that writes `42` into the device-accessible buffer.
4. **Synchronization:** The buffer's scope ends before the result is printed. Buffer destruction provides the required synchronization and copies the modified data back to the host where applicable.
5. **Validation:** Prints the selected device and the computed value.

This is a minimal functional test. It validates device discovery, compilation, execution, and result retrieval, but does not measure performance or demonstrate a substantial parallel workload.

## Expected Output

The verified test produced:

```text
Selected device: NVIDIA GeForce RTX 3050 Ti Laptop GPU
Kernel result: 42
```

The compiler exited successfully with code `0`, and the executable completed successfully with code `0`.

These results confirm that the custom-built toolchain was able to compile and execute the example SYCL kernel on the NVIDIA GPU in the tested environment.

## Troubleshooting

### CUDA GPU does not appear in `sycl-ls`

**Possible causes:**

- The custom CUDA adapter is not present in the deployed toolchain.
- The runtime cannot locate the adapter DLL or one of its dependencies.
- The NVIDIA driver is unavailable or incompatible.
- The CUDA-enabled configuration was not applied to the build.

**Checks:**

```powershell
nvidia-smi
```

Then inspect the verbose SYCL device listing:

```powershell
& "$PWD\build\install\bin\sycl-ls.exe" --verbose
```

Confirm that the CUDA adapter DLL exists in the installation directory.

### The executable fails with `0xC0000135`

This Windows status commonly indicates that a required DLL could not be found.

Add the deployed runtime directories to `PATH` before running the executable:

```powershell
$env:PATH = "$PWD\build\install\bin;$PWD\build\bin;$env:PATH"
```

Then retry:

```powershell
& "$PWD\test-cuda.exe"
```

The original test environment encountered this issue when the custom runtime directories were not included in `PATH`.

### The program selects the Intel GPU instead of NVIDIA

Set the device selector explicitly:

```powershell
$env:ONEAPI_DEVICE_SELECTOR = "cuda:*"
```

Run the executable again from the same PowerShell session.

### C++ exception handling errors during compilation

The test catches `sycl::exception` to provide diagnostic output. The original `icx` attempt required `/EHsc`, while the custom Clang compiler accepts the Clang-style option:

```powershell
-fexceptions
```

Use the option supported by the actual compiler being invoked.

### Build configuration or compilation fails

Verify that:

- The correct Visual Studio x64 environment is active.
- The intended Python interpreter is being used.
- The repository's `sycl` branch is checked out.
- Required build dependencies are installed.
- Configuration completed successfully before compilation began.

Consult the checked-out repository's build documentation and compiler output for version-specific requirements.

### NVML diagnostics appear during device discovery

The successful environment displayed some NVML unsupported-parameter diagnostics even though the CUDA GPU was detected.

Such diagnostics do not necessarily indicate that CUDA execution has failed. Verify the actual device listing and run the kernel test to distinguish non-fatal diagnostics from a runtime failure.

## Technical Details

### SYCL and heterogeneous computing

SYCL provides abstractions for submitting work to compute devices through queues, handlers, kernels, buffers, and accessors. A SYCL application can use these abstractions without directly expressing every operation in vendor-specific CUDA APIs.

Actual portability depends on the target backend, compiler capabilities, supported features, and device implementation.

### LLVM and Clang

LLVM provides compiler infrastructure, while Clang supplies a C-family language front end. Building the toolchain from source makes it possible to configure and test the relevant SYCL and CUDA backend components rather than relying exclusively on the system's preinstalled compiler.

### Unified Runtime

The Unified Runtime provides a common runtime interface used by the SYCL implementation to interact with supported backends. In this project, the CUDA adapter exposes the NVIDIA device to the custom SYCL runtime.

### CUDA and NVIDIA GPU execution

The `nvptx64-nvidia-cuda` target identifies the NVIDIA device compilation target used in the test command. Successful compilation and execution demonstrate that the toolchain's NVIDIA path worked for the tested kernel and environment.

The test does not establish support for every CUDA architecture, all SYCL features, or every CUDA Toolkit and driver combination.

## Limitations and Future Work

This project currently demonstrates a working build and a minimal end-to-end execution path. Further work could include:

- **Expanded kernel testing:** Test parallel kernels, work-groups, barriers, and a broader selection of SYCL features.
- **Memory management:** Evaluate buffer and Unified Shared Memory workflows, where supported.
- **Performance benchmarking:** Compare execution time against native CUDA and other available SYCL backends using reproducible workloads.
- **Compatibility testing:** Document behavior across additional driver, toolkit, compiler, and GPU combinations.
- **Build automation:** Create scripts to simplify environment setup, configuration, compilation, and runtime initialization.
- **Diagnostics:** Improve error reporting for missing DLLs, adapter loading, and device selection.
- **Multi-device applications:** Investigate explicit scheduling and data movement between Intel and NVIDIA devices.

Automatic workload migration, transparent cross-vendor execution, and performance improvements have not been established by the current test. These would require separate design, implementation, and validation.

## References

- **Project repository:** https://github.com/jackubsson/OneApiCuda
- **Intel LLVM repository:** https://github.com/intel/llvm
- **SYCL specification and resources:** https://www.khronos.org/sycl/
- **NVIDIA CUDA Toolkit documentation:** https://docs.nvidia.com/cuda/
- **LLVM documentation:** https://llvm.org/docs/

## License

The project's licensing terms should be documented according to the license selected for this repository. The Intel LLVM source and its components have their own licensing terms; review the applicable repository license and notices before redistributing binaries or derivative work.

---

**OneApiCuda — A practical exploration of custom SYCL toolchain builds and NVIDIA GPU execution on Windows.**
