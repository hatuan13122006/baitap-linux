#!/bin/bash
read -p "Nhập đường dẫn thư mục: " dir
if [ ! -d "$dir" ]; then
    echo "Thư mục không tồn tại."
    exit 1
fi
echo "Số file: $(find "$dir" -maxdepth 1 -type f | wc -l)"
echo "Số thư mục: $(find "$dir" -maxdepth 1 -type d | wc -l)"
echo "Số file .txt: $(find "$dir" -maxdepth 1 -type f -name "*.txt" | wc -l)"
echo "Số file .sh: $(find "$dir" -maxdepth 1 -type f -name "*.sh" | wc -l)"