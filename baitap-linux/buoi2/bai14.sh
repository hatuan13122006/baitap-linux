#!/bin/bash
read -p "Nhập số nguyên dương N: " n
count=0
# Sử dụng vòng lặp while và phép chia nguyên
temp=$n
while [ $temp -gt 0 ]; do
    count=$((count + 1))
    temp=$((temp / 10))
done
echo "Số chữ số của $n là: $count"