#!/bin/bash

echo -n "Nhập một số N: "
read n

# Sử dụng regex để kiểm tra
# ^-? : bắt đầu bằng dấu trừ hoặc không (cho số âm)
# [0-9]+ : theo sau là các chữ số từ 0-9
# $ : kết thúc chuỗi
if [[ $n =~ ^-?[0-9]+$ ]]; then
    echo "$n là số nguyên."
    
    # (Mở rộng thêm) Kiểm tra chẵn lẻ nếu muốn
    if [ $((n % 2)) -eq 0 ]; then
        echo "Đây là số chẵn."
    else
        echo "Đây là số lẻ."
    fi
else
    echo "$n KHÔNG phải là số nguyên (có thể là số thực hoặc chứa ký tự)."
fi