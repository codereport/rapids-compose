#!/usr/bin/env bash

set -e

cat << EOF > "$PWD/compose/.env"
# Build arguments
RAPIDS_HOME=$PWD
GCC_VERSION=$vGCC
CXX_VERSION=$vGXX
CUDA_VERSION=10.0
PYTHON_VERSION=3.7
LINUX_VERSION=ubuntu18.04

# Whether to build C++/cuda tests/benchmarks during \`make rapids\` target
BUILD_TESTS=ON
BUILD_BENCHMARKS=OFF

# Set to \`Debug\` to compile in debug symbols during \`make rapids\` target
CMAKE_BUILD_TYPE=Release

# Set which GPU the containers should see when running tests/notebooks
NVIDIA_VISIBLE_DEVICES=0
EOF