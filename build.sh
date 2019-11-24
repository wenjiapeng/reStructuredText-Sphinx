#!/bin/bash

rm -r build/latex

# 编译出tex文件
make latex

# 编译得到PDF文件
cd build/latex
make

