#!/bin/bash

# Nhập số N
echo -n "Nhập số tự nhiên N: "
read n

# Khởi tạo biến tổng
tong=0

# Vòng lặp tính tổng
for (( i=1; i<=n; i++ ))
do
    tong=$((tong + i))
done

echo "Tổng từ 1 đến $n là: $tong"