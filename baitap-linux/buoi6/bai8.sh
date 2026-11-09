#!/bin/bash

echo "Bai 8: Dem so file va thu muc trong thu muc"
read -p "Nhap ten thu muc: " dir

if [ ! -d "$dir" ]; then
    echo "'$dir' khong phai la thu muc hop le."
    exit 1
fi

file_count=$(find "$dir" -maxdepth 1 -type f | wc -l)
dir_count=$(find "$dir" -maxdepth 1 -mindepth 1 -type d | wc -l)

echo "Thu muc: $dir"
echo "So tap tin: $file_count"
echo "So thu muc con: $dir_count"
du -sh "$dir"
