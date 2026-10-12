#!/bin/bash
# Lấy % sử dụng của partition root (/)
usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
if [ $usage -lt 70 ]; then
    echo "Bình thường ($usage%)"
elif [ $usage -le 85 ]; then
    echo "Cảnh báo ($usage%)"
else
    echo "Nguy hiểm ($usage%)"
fi