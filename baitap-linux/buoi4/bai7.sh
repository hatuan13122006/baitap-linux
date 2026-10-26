#!/bin/bash
echo "Nhập số N:"
read n

sum=0
# Sử dụng vòng lặp for
for ((i=1; i<=n; i++)); do
    ((sum += i))
done

echo "Tổng các số từ 1 đến $n là: $sum"