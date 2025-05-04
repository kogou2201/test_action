#!/bin/bash
set -e

# 保存当前目录
pushd "$(dirname "$0")" > /dev/null

mkdir -p build
pushd build > /dev/null
cmake -DCMAKE_RUNTIME_OUTPUT_DIRECTORY=../output ..
make
popd > /dev/null

# 返回到脚本启动时的目录
popd > /dev/null
