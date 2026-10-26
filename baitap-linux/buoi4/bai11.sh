#!/bin/bash
echo "Nhập số phần tử của mảng:"
read n
arr=()

echo "Nhập các phần tử:"
for ((i=0; i<n; i++)); do
    read -p "a[$i] = " val
    arr[$i]=$val
done

# Gán giá trị đầu tiên làm mốc
max=${arr[0]}
min=${arr[0]}

for num in "${arr[@]}"; do
    if (( num > max )); then
        max=$num
    fi
    if (( num < min )); then
        min=$num
    fi
done

echo "Số lớn nhất: $max"
echo "Số nhỏ nhất: $min"