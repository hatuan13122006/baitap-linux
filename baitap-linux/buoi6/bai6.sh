#!/bin/bash

echo "Bai 6: Kiem tra duong dan la tap tin hay thu muc"
read -p "Nhap duong dan: " path

if [ ! -e "$path" ]; then
    echo "Duong dan '$path' khong ton tai."
    exit 1
fi

if [ -d "$path" ]; then
    echo "'$path' la thu muc."
    ls -la "$path"
elif [ -f "$path" ]; then
    echo "'$path' la tap tin."
    ls -l "$path"
else
    echo "'$path' la mot loai duong dan khac."
fi
