#!/bin/bash
read -p "Nhập n (2-9): " n
if [ $n -lt 2 ] || [ $n -gt 9 ]; then
    echo "Vui lòng nhập n từ 2 đến 9"
else
    for i in {1..10}; do
        echo "$n x $i = $((n * i))"
    done
fi