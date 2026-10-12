#!/bin/bash
read -p "Nhập N: " n
sum=0
for ((i=2; i<=n; i+=2)); do
    sum=$((sum + i))
done
echo "Tổng các số chẵn từ 1 đến $n là: $sum"