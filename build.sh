#!/bin/bash
set -e
set -x

mkdir -p build
pushd build
cmake ..
cmake --build .
popd
