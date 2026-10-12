#!/bin/bash
FILE="sinhvien.txt"
while true; do
    echo "--- MENU ---"
    echo "1. Hiển thị danh sách"
    echo "2. Tìm sinh viên"
    echo "3. Thêm sinh viên"
    echo "4. Đếm sinh viên"
    echo "5. Tìm điểm cao nhất"
    echo "6. Thoát"
    read -p "Chọn: " choice
    case $choice in
        1) cat "$FILE" ;;
        2) read -p "Nhập MSSV cần tìm: " mssv; grep "$mssv" "$FILE" ;;
        3) read -p "Nhập MSSV, Họ tên, Điểm: " info; echo "$info" >> "$FILE" ;;
        4) wc -l < "$FILE" ;;
        5) sort -k3 -nr "$FILE" | head -n 1 ;;
        6) break ;;
        *) echo "Chọn sai" ;;
    esac
done