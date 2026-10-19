#!/bin/bash

echo -n "Nhập số tự nhiên N: "
read n

tong_chan=0
tong_le=0
tong_chia_het_2=0

for (( i=1; i<=n; i++ ))
do
    # Kiểm tra số chẵn (chia hết cho 2)
    if [ $((i % 2)) -eq 0 ]; then
        tong_chan=$((tong_chan + i))
        tong_chia_het_2=$((tong_chia_het_2 + i)) # Số chẵn thì chia hết cho 2
    else
        # Số lẻ
        tong_le=$((tong_le + i))
    fi
done

echo "Tổng các số chẵn từ 1 đến $n: $tong_chan"
echo "Tổng các số lẻ từ 1 đến $n: $tong_le"
echo "Tổng các số chia hết cho 2 từ 1 đến $n: $tong_chia_het_2"