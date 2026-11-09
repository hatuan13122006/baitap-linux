#!/bin/bash

echo "Bai 9: Chuyen hoac doi ten file"
read -p "Nhap ten file cu: " source
read -p "Nhap ten file moi: " target

if [ ! -e "$source" ]; then
    echo "File '$source' khong ton tai."
    exit 1
fi

mv "$source" "$target"

echo "Da chuyen/doi ten thanh cong."
ls -l "$target"
