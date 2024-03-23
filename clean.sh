#!/bin/bash

# 开始运行
echo "开始清理编译残留..."
start_time_sum=$(date +%s)

rm -rf out

# 交叉编译器路径
export PATH=$PATH:$(pwd)/../Compiler/Google/GCC64/bin

# Find those flag in Makefile!!!
# 这两个标记请在Makefile内寻找！！！
export CLANG_PREBUILTS_PATH=$(pwd)/../Compiler/Google/Clang/clang-r346389c/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)/../Compiler/Google/Clang/clang-r346389c/lib64/
export CROSS_COMPILE=aarch64-linux-android-
export ARCH=arm64
export SUBARCH=arm64
# export DTC_EXT=dtc

make ARCH=arm64 distclean

end_time_sum=$(date +%s)

# 计算运行时间（秒）
duration=$((end_time_sum - start_time_sum))

# 将秒数转化为 "小时:分钟:秒" 形式输出
hours=$((duration / 3600))
minutes=$(( (duration % 3600) / 60 ))
seconds=$((duration % 60))

# 打印运行时间
echo "脚本运行时间为：${hours}小时 ${minutes}分钟 ${seconds}秒"