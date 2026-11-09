#!/bin/bash

echo "Bai 7: Sao chep file"
read -p "Nhap file nguon: " source
read -p "Nhap file dich: " target

if [ ! -f "$source" ]; then
    echo "File nguon '$source' khong ton tai."
    exit 1
fi

cp "$source" "$target"

echo "Da sao chep thanh cong."
ls -l "$target"
