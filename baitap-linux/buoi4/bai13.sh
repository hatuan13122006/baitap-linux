#!/bin/bash
echo "Nhập số lượng sinh viên:"
read n

# Khai báo mảng chứa thông tin sinh viên dưới dạng chuỗi
students=()

for ((i=0; i<n; i++)); do
    echo "--- Nhập thông tin sinh viên thứ $((i+1)) ---"
    read -p "Họ tên: " hoten
    read -p "Ngày sinh (dd/mm/yyyy): " ngaysinh
    read -p "Nơi sinh: " noisinh
    read -p "Lớp: " lop
    read -p "Môn học: " monhoc
    read -p "Điểm: " diem
    
    # Lưu vào mảng dưới dạng chuỗi phân tách bởi dấu |
    students[$i]="$hoten|$ngaysinh|$noisinh|$lop|$monhoc|$diem"
done

echo ""
echo "======== DANH SÁCH SINH VIÊN ========"
printf "%-20s %-12s %-15s %-10s %-15s %-5s\n" "Họ Tên" "Ngày Sinh" "Nơi Sinh" "Lớp" "Môn Học" "Điểm"
for sv in "${students[@]}"; do
    # Tách chuỗi dựa vào dấu |
    IFS='|' read -r hoten ngaysinh noisinh lop monhoc diem <<< "$sv"
    printf "%-20s %-12s %-15s %-10s %-15s %-5s\n" "$hoten" "$ngaysinh" "$noisinh" "$lop" "$monhoc" "$diem"
done