#!/bin/bash
read -p "Nhập đường dẫn thư mục: " dir
# Tìm file có kích thước lớn nhất (sắp xếp theo cột 5)
find "$dir" -type f -exec du -a {} + | sort -rn | head -n 1