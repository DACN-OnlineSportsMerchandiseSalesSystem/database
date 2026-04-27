CREATE DATABASE QuanLyDuLieu; -- Tạo database tên là QuanLyDuLieu
USE QuanLyDuLieu;             -- Chọn database này để làm việc

CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Cột ID tự động tăng, là khóa chính
    ten VARCHAR(100),                   -- Cột tên, chứa tối đa 100 ký tự
    mo_ta TEXT,                         -- Cột mô tả, chứa văn bản dài
    ngay_tao DATE                       -- Cột ngày tháng
);

INSERT INTO Users (ten, mo_ta, ngay_tao)
VALUES ('Sản phẩm A', 'Đây là dữ liệu mẫu', '2023-10-27');