#!/bin/bash

echo "Bai 5: Kiem tra va tao file neu chua ton tai"
read -p "Nhap ten tap tin: " file

if [ -e "$file" ]; then
    echo "Tap tin '$file' da ton tai."
    ls -l "$file"
else
    echo "Tap tin '$file' khong ton tai."
    read -p "Ban co muon tao file nay khong? [y/n]: " answer
    if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
        touch "$file"
        echo "Da tao '$file' thanh cong."
        ls -l "$file"
    else
        echo "Khong tao file."
    fi
fi
