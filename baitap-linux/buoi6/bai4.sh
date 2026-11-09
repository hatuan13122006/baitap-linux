#!/bin/bash

echo "Bai 4: Hien thi thong tin chi tiet cua tap tin/thu muc"
read -p "Nhap ten tap tin hoac thu muc: " path

if [ -e "$path" ]; then
    echo "Thong tin chi tiet cua '$path':"
    ls -ld "$path"

    if [ -f "$path" ]; then
        echo "Loai: Tap tin"
    elif [ -d "$path" ]; then
        echo "Loai: Thu muc"
    else
        echo "Loai: Khac"
    fi

    stat -c "Kich thuoc: %s byte | Quyền: %A | Chu so huu: %U | Nhom: %G | Thoi gian: %y" "$path"
else
    echo "'$path' khong ton tai."
fi
