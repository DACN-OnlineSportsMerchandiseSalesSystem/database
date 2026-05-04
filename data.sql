SET NAMES utf8mb4;
USE backend_dacn;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE cart_items;
TRUNCATE TABLE carts;
TRUNCATE TABLE reviews;
TRUNCATE TABLE product_variants;
TRUNCATE TABLE product_images;
TRUNCATE TABLE products;
TRUNCATE TABLE brands;
TRUNCATE TABLE categories;
TRUNCATE TABLE address;
TRUNCATE TABLE users;
TRUNCATE TABLE blogs;
SET FOREIGN_KEY_CHECKS = 1;
-- ==========================================
-- 1. DATA USER & ĐỊA CHỈ (Pass đăng nhập vẫn là: 123456)
-- ==========================================

INSERT INTO users (phone, email, status, first_name, last_name, password, level, role_id) VALUES
('0901234567', 'admin@bachkhoa.vn', 'ACTIVE', 'Admin',' Tiến Anh', '$2a$10$xn3LI/AjqicFYZFruSwve.681477XaVNaUQbr1gioaWPn4t1KsnmG', 1000, 1),
('0987654321', 'khachhang@gmail.com', 'ACTIVE', 'Cristiano',' Ronaldo', '$2a$10$xn3LI/AjqicFYZFruSwve.681477XaVNaUQbr1gioaWPn4t1KsnmG', 500, 2);

INSERT INTO address (user_id, street, city, ward, is_default, receiver_name, phone) VALUES
(2, 'Sân vận động Thống Nhất', 'Hồ Chí Minh', 'Phường 6, Quận 10', TRUE, 'Cristiano Ronaldo', '0987654321');

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
INSERT INTO products (name, product_code, description, category_id, brand_id) VALUES
('Giày Chạy Bộ Nike Air Zoom Pegasus 40', 'NIKE-PEG-40', 'Giày chạy bộ Nike Air Zoom Pegasus 40 là đôi giày quốc dân dành cho người chạy road (đường nhựa). Trọng lượng siêu nhẹ chỉ khoảng 260g, sử dụng công nghệ đệm React kết hợp túi khí Zoom Air mang lại cảm giác êm ái, phản hồi lực xuất sắc. Phù hợp cho việc tập luyện hàng ngày, chạy phục hồi và chạy đường dài.', 1, 1),
('Áo Đấu Manchester United Sân Nhà 23/24', 'MU-HOME-2324', 'Áo bóng đá Manchester United sân nhà mùa giải 2023/2024 chính hãng Adidas. Tích hợp công nghệ Aeroready thấm hút mồ hôi cực tốt, giữ cho cơ thể luôn khô ráo. Thiết kế cổ chữ V viền đen đỏ đặc trưng, họa tiết hoa hồng Lancashire chìm tinh tế. Chất liệu 100% polyester tái chế bảo vệ môi trường.', 2, 2),
('Vợt Cầu Lông Yonex Astrox 99 Pro', 'YONEX-AX-99', 'Vợt cầu lông Yonex Astrox 99 Pro phiên bản Kento Momota là cây vợt thiên công đỉnh cao dành cho người chơi có kỹ thuật tốt. Đặc điểm thân siêu cứng, đầu cực nặng (Head heavy) giúp tạo ra những cú đập cầu (smash) uy lực và cắm. Công nghệ Namd toàn khung vợt tăng cường độ đàn hồi, phù hợp cho đánh đơn và đánh đôi tấn công.', 3, 3);

-- ==========================================
-- 4. HÌNH ẢNH SẢN PHẨM
-- ==========================================
INSERT INTO product_image (product_id, image_url, is_thumbnail) VALUES
(1, 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&q=80&w=1000', TRUE),
(1, 'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?auto=format&fit=crop&q=80&w=1000', FALSE),
(2, 'https://images.unsplash.com/photo-1521412644187-c49fa049e84d?auto=format&fit=crop&q=80&w=1000', TRUE),
(3, 'https://images.unsplash.com/photo-1626225967045-9410dd996e0c?auto=format&fit=crop&q=80&w=1000', TRUE);

-- ==========================================
-- 5. BIẾN THỂ (SIZE GIÀY, SIZE ÁO, TRỌNG LƯỢNG VỢT)
-- ==========================================
-- Giày Nike (Có Size 40, 41, 42)
INSERT INTO product_variants (product_id, sku_code, size, color, price, stock_quantity) VALUES
(1, 'NIKE-PEG40-SIZE40', '40', 'Đỏ Trắng', 2990000.00, 15),
(1, 'NIKE-PEG40-SIZE41', '41', 'Đỏ Trắng', 2990000.00, 20),
(1, 'NIKE-PEG40-SIZE42', '42', 'Đỏ Trắng', 2990000.00, 10),

-- Áo MU (Có Size M, L)
(2, 'ADIDAS-MU23-SIZEM', 'M', 'Đỏ Quỷ', 1850000.00, 30),
(2, 'ADIDAS-MU23-SIZEL', 'L', 'Đỏ Quỷ', 1850000.00, 25),

-- Vợt Yonex (Phân loại theo trọng lượng 3U, 4U)
(3, 'YONEX-AX99-3U', '3U', 'Cam Đen', 3500000.00, 5),
(3, 'YONEX-AX99-4U', '4U', 'Cam Đen', 3500000.00, 8);

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

-- ==========================================
-- 8. DATA BÀI VIẾT BLOG
-- ==========================================
INSERT INTO blogs (slug, title, category, sport, author, excerpt, content, tags, image_url) VALUES
('bai-tap-chay-bo-tang-toc-do', '5 Bài Tập Chạy Bộ Giúp Tăng Tốc Độ Hiệu Quả', 'Huấn luyện', 'Chạy bộ', 'HLV Trần Minh Khoa', 'Khám phá 5 bài tập chạy bộ chuyên nghiệp giúp bạn cải thiện tốc độ, sức bền và kỹ thuật chạy một cách hiệu quả nhất.', 'Chạy bộ không chỉ đơn giản là đặt một chân trước chân kia. Để thực sự cải thiện tốc độ và hiệu suất, bạn cần áp dụng các bài tập chuyên biệt được thiết kế bởi các chuyên gia hàng đầu. Interval Training (Chạy ngắt quãng) là phương pháp huấn luyện hiệu quả nhất để tăng tốc độ. Tempo run là chạy ở tốc độ không thoải mái nhưng có thể duy trì được.', '["chạy bộ", "tốc độ", "huấn luyện", "kỹ thuật"]', 'https://images.unsplash.com/photo-1662651800883-b784f138e9dd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3Nzg4Nzd8MHwxfHNlYXJjaHwxfHxydW5uaW5nJTIwdHJhaW5pbmclMjB0aXBzJTIwYXRobGV0ZXxlbnwxfHx8fDE3NzQ5MzI5MjB8MA&ixlib=rb-4.1.0&q=80&w=1080'),
('tap-gym-cho-nguoi-moi-bat-dau', 'Hướng Dẫn Tập Gym Cho Người Mới Bắt Đầu Từ A-Z', 'Gym & Fitness', 'Gym & Fitness', 'PT Nguyễn Thanh Hùng', 'Lộ trình tập gym hoàn chỉnh dành cho người mới: từ khởi động, các bài tập cơ bản, đến dinh dưỡng và phục hồi sau tập.', 'Bước vào phòng gym lần đầu tiên có thể khiến bạn choáng ngợp. Hai tuần đầu tiên tập trung vào việc học đúng kỹ thuật các bài tập cơ bản. Đừng vội vàng tăng tạ. Các bài tập gồm: Squat, Deadlift, Bench Press. Dinh dưỡng khi tập gym rất quan trọng, đặc biệt là Protein.', '["gym", "người mới", "tập luyện", "cơ bắp"]', 'https://images.unsplash.com/photo-1584827386916-b5351d3ba34b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3Nzg4Nzd8MHwxfHNlYXJjaHwxfHxneW0lMjB3b3Jrb3V0JTIwZml0bmVzcyUyMGV4ZXJjaXNlfGVufDF8fHx8MTc3NDkzMjkyMXww&ixlib=rb-4.1.0&q=80&w=1080'),
('ky-thuat-da-bong-chuan', 'Kỹ Thuật Đá Bóng Chuẩn: Từ Dẫn Bóng Đến Sút Cầu Môn', 'Kỹ thuật', 'Bóng đá', 'HLV Phạm Văn Đức', 'Những kỹ thuật cơ bản và nâng cao trong bóng đá mà mọi cầu thủ cần nắm vững, từ dẫn bóng, chuyền bóng cho đến kỹ thuật sút cầu môn.', 'Bóng đá là môn thể thao của kỹ năng và chiến thuật. Kỹ thuật dẫn bóng tốt nghĩa là giữ bóng gần chân. Chuyền bóng chính xác là nền tảng của lối chơi tập thể. Sút bóng có nhiều kỹ thuật: sút bằng mu bàn chân, sút bằng lòng bàn chân.', '["bóng đá", "kỹ thuật", "sút bóng", "dẫn bóng"]', 'https://images.unsplash.com/photo-1771257807779-a72e74deaa11?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3Nzg4Nzd8MHwxfHNlYXJjaHwxfHxmb290YmFsbCUyMHNvY2NlciUyMHRyYWluaW5nfGVufDF8fHx8MTc3NDkzMjkyMXww&ixlib=rb-4.1.0&q=80&w=1080'),
('dinh-duong-the-thao', 'Dinh Dưỡng Thể Thao: Ăn Gì Để Tập Luyện Hiệu Quả Hơn', 'Dinh dưỡng', 'Đa môn', 'Chuyên gia Võ Thị Lan', 'Dinh dưỡng đúng cách là chìa khóa để tối ưu hóa hiệu suất thể thao. Tìm hiểu những gì nên ăn trước, trong và sau khi tập luyện.', 'Dinh dưỡng thể thao là khoa học về việc nuôi dưỡng cơ thể để đạt hiệu suất cao nhất. Bữa ăn trước tập cần cung cấp đủ năng lượng (Cơm, ức gà). Bữa ăn phục hồi sau tập trong 30-60 phút rất quan trọng để nạp lại Protein và Carb.', '["dinh dưỡng", "protein", "carb", "phục hồi"]', 'https://images.unsplash.com/photo-1774557937569-93b4a6e358a3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3Nzg4Nzd8MHwxfHNlYXJjaHwxfHxzcG9ydHMlMjBudXRyaXRpb24lMjBoZWFsdGh5JTIwZm9vZCUyMGF0aGxldGV8ZW58MXx8fHwxNzc0OTMyOTIyfDA&ixlib=rb-4.1.0&q=80&w=1080');


SELECT * FROM users;
