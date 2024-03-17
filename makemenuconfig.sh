#!/bin/bash
#设置环境

# 交叉编译器路径
export PATH=$PATH:$(pwd)/../Compiler/Google/GCC32/bin:$(pwd)/../Compiler/Google/GCC64/bin:$(pwd)/../Compiler/Google/Clang/clang-r346389c/bin
export CLANG_PREBUILTS_PATH=$(pwd)/../Compiler/Google/Clang/clang-r346389c/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)/../Compiler/Google/Clang/clang-r346389c/lib64/
export CC="ccache clang"
export CLANG_TRIPLE=aarch64-linux-android-
export CROSS_COMPILE=aarch64-linux-android-
export CROSS_COMPILE_ARM32=arm-linux-androideabi-

export ARCH=arm64
# export DTC_EXT=dtc

make ARCH=arm64 O=out CC=clang merge_kirin970_mod_defconfig
make ARCH=arm64 O=out CC=clang menuconfig