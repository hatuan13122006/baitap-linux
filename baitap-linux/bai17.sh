#!/bin/bash
read -p "Nhập tên file: " file
read -p "Nhập từ khóa: " keyword
if grep -q "$keyword" "$file"; then
    echo "Từ khóa có tồn tại."
    echo "Các dòng chứa từ khóa:"
    grep "$keyword" "$file"
    echo "Số dòng chứa từ khóa: $(grep -c "$keyword" "$file")"
else
    echo "Không tìm thấy từ khóa."
fi