#!/bin/bash
echo "Nhập chuỗi:"
read str
echo "Nhập ký tự cần tìm:"
read char

# Đếm số lần xuất hiện bằng cách thay thế ký tự đó bằng rỗng và so sánh độ dài
# Cách 1: Dùng grep
count=$(echo "$str" | grep -o "$char" | wc -l)

if [ "$count" -gt 0 ]; then
    echo "Ký tự '$char' CÓ xuất hiện trong chuỗi."
    echo "Số lần xuất hiện: $count"
else
    echo "Ký tự '$char' KHÔNG xuất hiện trong chuỗi."
fi