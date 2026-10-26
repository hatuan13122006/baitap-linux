#!/bin/bash
echo "Nhập số phần tử của mảng:"
read n

# Nhập mảng
echo "Nhập các phần tử:"
for ((i=0; i<n; i++)); do
    read -p "a[$i] = " arr[$i]
done

echo "Chọn kiểu sắp xếp:"
echo "1. Tăng dần"
echo "2. Giảm dần"
read choice

# Sắp xếp (Sử dụng thuật toán sắp xếp nổi bọt - Bubble Sort)
for ((i=0; i<n-1; i++)); do
    for ((j=i+1; j<n; j++)); do
        if [ "$choice" -eq 1 ]; then
            # Sắp xếp tăng
            if [ ${arr[$i]} -gt ${arr[$j]} ]; then
                temp=${arr[$i]}
                arr[$i]=${arr[$j]}
                arr[$j]=$temp
            fi
        else
            # Sắp xếp giảm
            if [ ${arr[$i]} -lt ${arr[$j]} ]; then
                temp=${arr[$i]}
                arr[$i]=${arr[$j]}
                arr[$j]=$temp
            fi
        fi
    done
done

echo "Mảng sau khi sắp xếp:"
echo "${arr[@]}"