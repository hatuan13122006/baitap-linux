#!/bin/bash
while true; do
    echo "1. Thông tin hệ thống"
    echo "2. Thông tin người dùng"
    echo "3. Kiểm tra ổ đĩa"
    echo "4. Kiểm tra RAM"
    echo "5. Tìm file"
    echo "6. Tìm kiếm nội dung"
    echo "7. Sao lưu thư mục"
    echo "8. Quản lý file"
    echo "9. Thoát"
    read -p "Chọn: " c
    case $c in
        1) uname -a ;;
        2) whoami; id ;;
        3) df -h ;;
        4) free -h ;;
        5) read -p "Tên file: " f; find / -name "$f" 2>/dev/null ;;
        6) read -p "File: " f; read -p "Từ khóa: " k; grep "$k" "$f" ;;
        7) read -p "Thư mục: " d; tar -czf "backup_$(date +%F).tar.gz" "$d" ;;
        8) ls -l ;;
        9) break ;;
    esac
done