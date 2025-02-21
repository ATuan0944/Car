create database wed 
use wed

-- Tạo bảng Vai trò
CREATE TABLE VaiTro (
    VaiTroID INT AUTO_INCREMENT PRIMARY KEY,
    TenVaiTro VARCHAR(50) NOT NULL
);

-- Tạo bảng Tài khoản
CREATE TABLE TaiKhoan (
    TaiKhoanID INT AUTO_INCREMENT PRIMARY KEY,
    TenDangNhap VARCHAR(50) NOT NULL UNIQUE,
    MatKhau VARCHAR(255) NOT NULL,
    VaiTroID INT,
    FOREIGN KEY (VaiTroID) REFERENCES VaiTro(VaiTroID)
);

-- Tạo bảng Khách hàng
CREATE TABLE KhachHang (
    KhachHangID INT AUTO_INCREMENT PRIMARY KEY,
    HoTen VARCHAR(100) NOT NULL,
    SoDienThoai VARCHAR(15) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    DiaChi VARCHAR(255)
);

-- Tạo bảng Sản phẩm
CREATE TABLE SanPham (
    SanPhamID INT AUTO_INCREMENT PRIMARY KEY,
    TenSanPham VARCHAR(100) NOT NULL,
    HangSanXuat VARCHAR(100) NOT NULL,
    NamSanXuat YEAR NOT NULL
);

-- Tạo bảng Chi tiết sản phẩm
CREATE TABLE ChiTietSanPham (
    ChiTietID INT AUTO_INCREMENT PRIMARY KEY,
    SanPhamID INT,
    MauSac VARCHAR(50) NOT NULL,
    DongCo VARCHAR(50) NOT NULL,
    HopSo VARCHAR(50) NOT NULL,
    FOREIGN KEY (SanPhamID) REFERENCES SanPham(SanPhamID)
);

-- Tạo bảng Giá bán
CREATE TABLE GiaBan (
    GiaBanID INT AUTO_INCREMENT PRIMARY KEY,
    SanPhamID INT,
    Gia FLOAT NOT NULL,
    NgayCapNhat DATE NOT NULL,
    FOREIGN KEY (SanPhamID) REFERENCES SanPham(SanPhamID)
);

-- Tạo bảng Giao dịch
CREATE TABLE GiaoDich (
    GiaoDichID INT AUTO_INCREMENT PRIMARY KEY,
    KhachHangID INT,
    SanPhamID INT,
    SoLuong INT NOT NULL,
    TongTien FLOAT NOT NULL,
    NgayMua DATE NOT NULL,
    FOREIGN KEY (KhachHangID) REFERENCES KhachHang(KhachHangID),
    FOREIGN KEY (SanPhamID) REFERENCES SanPham(SanPhamID)
);
-- Thêm dữ liệu vào bảng VaiTro
INSERT INTO VaiTro (TenVaiTro) VALUES
('Quản trị viên'),
('Nhân viên bán hàng'),
('Khách hàng');

-- Thêm dữ liệu vào bảng TaiKhoan
INSERT INTO TaiKhoan (TenDangNhap, MatKhau, VaiTroID) VALUES
('admin', 'admin123', 1),
('seller1', 'password123', 2),
('seller2', 'password123', 2),
('customer1', 'password123', 3),
('customer2', 'password123', 3),
('customer3', 'password123', 3),
('customer4', 'password123', 3),
('customer5', 'password123', 3),
('customer6', 'password123', 3),
('customer7', 'password123', 3);

-- Thêm dữ liệu vào bảng KhachHang
INSERT INTO KhachHang (HoTen, SoDienThoai, Email, DiaChi) VALUES
('Nguyen Van A', '0987654321', 'vana@example.com', 'Ha Noi'),
('Tran Thi B', '0976543210', 'thib@example.com', 'Hai Phong'),
('Le Van C', '0965432109', 'vanc@example.com', 'Da Nang'),
('Pham Thi D', '0954321098', 'thid@example.com', 'Hue'),
('Hoang Van E', '0943210987', 'vane@example.com', 'Ho Chi Minh'),
('Nguyen Thi F', '0932109876', 'thif@example.com', 'Binh Duong'),
('Tran Van G', '0921098765', 'vang@example.com', 'Dong Nai'),
('Pham Thi H', '0910987654', 'thih@example.com', 'Can Tho'),
('Hoang Van I', '0909876543', 'vani@example.com', 'Quang Ninh'),
('Le Thi J', '0898765432', 'thij@example.com', 'Nha Trang');

-- Thêm dữ liệu vào bảng SanPham
INSERT INTO SanPham (TenSanPham, HangSanXuat, NamSanXuat) VALUES
('Toyota Camry', 'Toyota', 2023),
('Honda CR-V', 'Honda', 2023),
('Mazda CX-5', 'Mazda', 2023),
('Ford Ranger', 'Ford', 2023),
('Hyundai Tucson', 'Hyundai', 2023),
('Kia Seltos', 'Kia', 2023),
('Nissan Navara', 'Nissan', 2023),
('Mitsubishi Xpander', 'Mitsubishi', 2023),
('Chevrolet Trailblazer', 'Chevrolet', 2023),
('Suzuki Ertiga', 'Suzuki', 2023);

-- Thêm dữ liệu vào bảng ChiTietSanPham
INSERT INTO ChiTietSanPham (SanPhamID, MauSac, DongCo, HopSo) VALUES
(1, 'Trắng', '2.0L', 'Tự động'),
(2, 'Đen', '1.5L', 'Tự động'),
(3, 'Xanh', '2.0L', 'Số sàn'),
(4, 'Bạc', '2.2L', 'Tự động'),
(5, 'Đỏ', '1.6L', 'Tự động'),
(6, 'Vàng', '2.5L', 'Số sàn'),
(7, 'Nâu', '2.3L', 'Tự động'),
(8, 'Cam', '2.4L', 'Tự động'),
(9, 'Hồng', '1.8L', 'Số sàn'),
(10, 'Xanh Dương', '2.0L', 'Tự động');

-- Thêm dữ liệu vào bảng GiaBan
INSERT INTO GiaBan (SanPhamID, Gia, NgayCapNhat) VALUES
(1, 1000000000, '2023-01-01'),
(2, 850000000, '2023-02-01'),
(3, 950000000, '2023-03-01'),
(4, 1200000000, '2023-04-01'),
(5, 890000000, '2023-05-01'),
(6, 770000000, '2023-06-01'),
(7, 1050000000, '2023-07-01'),
(8, 980000000, '2023-08-01'),
(9, 690000000, '2023-09-01'),
(10, 750000000, '2023-10-01');

-- Thêm dữ liệu vào bảng GiaoDich
INSERT INTO GiaoDich (KhachHangID, SanPhamID, SoLuong, TongTien, NgayMua) VALUES
(1, 1, 1, 1000000000, '2023-06-01'),
(2, 2, 1, 850000000, '2023-07-01'),
(3, 3, 1, 950000000, '2023-08-01'),
(4, 4, 1, 1200000000, '2023-09-01'),
(5, 5, 1, 890000000, '2023-10-01'),
(6, 6, 1, 770000000, '2023-11-01'),
(7, 7, 1, 1050000000, '2023-12-01'),
(8, 8, 1, 980000000, '2024-01-01'),
(9, 9, 1, 690000000, '2024-02-01'),
(10, 10, 1, 750000000, '2024-03-01');
select * from GiaoDich


