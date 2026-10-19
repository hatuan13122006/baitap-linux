#!/bin/bash

echo -n "Nhập hệ số A: "
read a
echo -n "Nhập hệ số B: "
read b

echo "Phương trình: ${a}x + ${b} = 0"

# Kiểm tra điều kiện
if [ $a -eq 0 ]; then
    if [ $b -eq 0 ]; then
        echo "Phương trình có vô số nghiệm."
    else
        echo "Phương trình vô nghiệm."
    fi
else
    # Tính nghiệm x = -b/a
    # Sử dụng bc để tính toán số thực (float)
    nghiem=$(echo "scale=2; -($b)/$a" | bc)
    echo "Phương trình có nghiệm duy nhất: x = $nghiem"
fi