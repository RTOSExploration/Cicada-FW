#!/usr/bin/env bash

#DB=$RTOSExploration/bitcode-db/Cicada-FW
#rm -rf $DB build && mkdir -p build
#meson build --cross-file stm32.cross.build

# To setup build dependencies, do: git submodule init git submodule update
export LLVM_COMPILER=hybrid
export LLVM_COMPILER_PATH=/usr/lib/llvm-14/bin
export BINUTILS_TARGET_PREFIX=$TOOLCHAIN_BIN/arm-none-eabi
export CC=wllvm
rm -rf build && mkdir -p build
meson build --cross-file stm32.cross.build
cd build && ninja
