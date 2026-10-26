#!/bin/bash
echo "Nhập số phần tử của mảng:"
read n
arr=()

echo "Nhập các phần tử:"
for ((i=0; i<n; i++)); do
    read -p "a[$i] = " val
    arr[$i]=$val
done

echo "Các số nguyên tố trong mảng là:"
for num in "${arr[@]}"; do
    if (( num < 2 )); then continue; fi
    
    is_prime=1
    for ((j=2; j*j<=num; j++)); do
        if (( num % j == 0 )); then
            is_prime=0
            break
        fi
    done
    
    if (( is_prime == 1 )); then
        echo -n "$num "
    fi
done
echo ""