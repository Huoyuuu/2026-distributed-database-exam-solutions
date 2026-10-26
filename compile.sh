#!/usr/bin/env bash
# 用 xelatex 编译两遍（第二遍补全页码引用），PDF 输出到当前目录
set -e
cd "$(dirname "$0")"
for i in 1 2; do xelatex -interaction=nonstopmode -halt-on-error 分布式数据库_往年试题参考解析.tex >/dev/null; done
echo "完成：分布式数据库_往年试题参考解析.pdf"
