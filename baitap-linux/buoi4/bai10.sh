#!/bin/bash
echo "Nhập số phần tử của mảng:"
read n
arr=()

echo "Nhập các phần tử:"
for ((i=0; i<n; i++)); do
    read -p "a[$i] = " val
    arr[$i]=$val
done

sum_all=0
sum_even=0
sum_odd=0

for num in "${arr[@]}"; do
    ((sum_all += num))
    if (( num % 2 == 0 )); then
        ((sum_even += num))
    else
        ((sum_odd += num))
    fi
done

echo "Tổng tất cả: $sum_all"
echo "Tổng các số chẵn: $sum_even"
echo "Tổng các số lẻ: $sum_odd"