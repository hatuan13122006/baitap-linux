#!/bin/bash

echo "Bai 3: Kiem tra ton tai va quyen truy cap"
read -p "Nhap ten tap tin hoac thu muc: " name

if [ -e "$name" ]; then
    echo "'$name' ton tai tren he thong."

    if [ -f "$name" ]; then
        echo "Loai: Tap tin"
    elif [ -d "$name" ]; then
        echo "Loai: Thu muc"
    else
        echo "Loai: Khac"
    fi

    if [ -r "$name" ]; then
        echo "Quyen doc: Co"
    else
        echo "Quyen doc: Khong"
    fi

    if [ -w "$name" ]; then
        echo "Quyen ghi: Co"
    else
        echo "Quyen ghi: Khong"
    fi

    if [ -x "$name" ]; then
        echo "Quyen thuc thi: Co"
    else
        echo "Quyen thuc thi: Khong"
    fi
else
    echo "'$name' khong ton tai tren he thong."
fi
