USE backend_dacn;

-- ==========================================
-- 1. DATA USER & ĐỊA CHỈ (Pass đăng nhập vẫn là: 123456)
-- ==========================================

INSERT INTO users (phone, email, status, first_name, last_name, password, is_super_admin, level, role_id) VALUES
('0901234567', 'admin@bachkhoa.vn', 'ACTIVE', 'Admin',' Tiến Anh', '$2a$10$xn3LI/AjqicFYZFruSwve.681477XaVNaUQbr1gioaWPn4t1KsnmG', TRUE, 'Quản lý cấp cao', 1),
('0987654321', 'khachhang@gmail.com', 'ACTIVE', 'Cristiano',' Ronaldo', '$2a$10$xn3LI/AjqicFYZFruSwve.681477XaVNaUQbr1gioaWPn4t1KsnmG', FALSE, 'Khách V.I.P', 2);

INSERT INTO addresses (user_id, street_address, city, district, ward, is_default) VALUES
(2, 'Sân vận động Thống Nhất', 'Hồ Chí Minh', 'Quận 10', 'Phường 6', TRUE);

-- ==========================================
-- 2. DATA DANH MỤC & THƯƠNG HIỆU
-- ==========================================
INSERT INTO categories (name) VALUES 
('Giày Thể Thao'), 
('Quần Áo & Áo Đấu'), 
('Phụ Kiện & Dụng Cụ');

INSERT INTO brands (name) VALUES 
('Nike'), 
('Adidas'), 
('Yonex'),
('Under Armour');

-- ==========================================
-- 3. DATA SẢN PHẨM THỂ THAO
-- ==========================================
INSERT INTO products (name, description, category_id, brand_id) VALUES
('Giày Chạy Bộ Nike Air Zoom Pegasus 40', 'Đôi giày chạy bộ quốc dân, siêu nhẹ, đệm Zoom êm ái, phù hợp chạy road.', 1, 1),
('Áo Đấu Manchester United Sân Nhà 23/24', 'Áo bóng đá chính hãng, công nghệ Aeroready thấm hút mồ hôi cực tốt.', 2, 2),
('Vợt Cầu Lông Yonex Astrox 99 Pro', 'Vợt thiên công đỉnh cao, thân cứng, đầu nặng, dành cho dân đập cháy sân.', 3, 3);

-- ==========================================
-- 4. HÌNH ẢNH SẢN PHẨM
-- ==========================================
INSERT INTO product_images (product_id, image_url, is_thumbnail) VALUES
(1, 'https://res.cloudinary.com/demo/image/upload/nike_pegasus_40_main.jpg', TRUE),
(1, 'https://res.cloudinary.com/demo/image/upload/nike_pegasus_40_side.jpg', FALSE),
(2, 'https://res.cloudinary.com/demo/image/upload/mu_jersey_front.jpg', TRUE),
(3, 'https://res.cloudinary.com/demo/image/upload/yonex_astrox99.jpg', TRUE);

-- ==========================================
-- 5. BIẾN THỂ (SIZE GIÀY, SIZE ÁO, TRỌNG LƯỢNG VỢT)
-- ==========================================
-- Giày Nike (Có Size 40, 41, 42)
INSERT INTO product_variants (product_id, sku, price, stock_quantity) VALUES
(1, 'NIKE-PEG40-SIZE40', 2990000.00, 15),
(1, 'NIKE-PEG40-SIZE41', 2990000.00, 20),
(1, 'NIKE-PEG40-SIZE42', 2990000.00, 10),

-- Áo MU (Có Size M, L)
(2, 'ADIDAS-MU23-SIZEM', 1850000.00, 30),
(2, 'ADIDAS-MU23-SIZEL', 1850000.00, 25),

-- Vợt Yonex (Phân loại theo trọng lượng 3U, 4U)
(3, 'YONEX-AX99-3U', 3500000.00, 5),
(3, 'YONEX-AX99-4U', 3500000.00, 8);

-- ==========================================
-- 6. ĐÁNH GIÁ (Reviews)
-- ==========================================
INSERT INTO reviews (user_id, product_id, rating, comment) VALUES
(2, 1, 5, 'Giày đi êm cực kỳ, xỏ vào chạy 5 vòng sân vận động Bách Khoa không thấy mỏi chân!');

-- ==========================================
-- 7. GIỎ HÀNG & CHI TIẾT
-- ==========================================
INSERT INTO carts (user_id) VALUES (2);

-- Anh CR7 mua 1 đôi Nike (Size 41) và 1 cái Vợt (4U)
INSERT INTO cart_items (cart_id, product_variant_id, quantity) VALUES
(1, 2, 1), 
(1, 7, 1);


SELECT * FROM users;