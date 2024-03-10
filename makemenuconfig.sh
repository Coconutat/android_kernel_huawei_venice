#!/bin/bash
#设置环境

# 交叉编译器路径
export PATH=$PATH:$(pwd)/../Compiler/android-ndk-r20b/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin:$(pwd)/../Compiler/android-ndk-r20b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:$(pwd)/../Compiler/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin
export CC=clang
export CLANG_TRIPLE=aarch64-linux-android-
export CROSS_COMPILE=aarch64-linux-android-
export CROSS_COMPILE_ARM32=arm-linux-androideabi-

export ARCH=arm64
# export DTC_EXT=dtc

make ARCH=arm64 O=out CC=clang merge_kirin970_mod_defconfig
make ARCH=arm64 O=out CC=clang menuconfig