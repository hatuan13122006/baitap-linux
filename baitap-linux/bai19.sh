#!/bin/bash
read -p "Nhập thư mục cần sao lưu: " src
backup_dir="backup"
mkdir -p "$backup_dir"
date_str=$(date +%Y-%m-%d)
tar -czf "$backup_dir/backup-$date_str.tar.gz" "$src"
echo "Đã sao lưu vào $backup_dir/backup-$date_str.tar.gz"