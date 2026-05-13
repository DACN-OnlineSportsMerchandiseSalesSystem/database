USE backend_dacn;

-- ==========================================
-- 1. DATA USER & ĐỊA CHỈ (Pass đăng nhập vẫn là: 123456)
-- ==========================================


INSERT INTO addresses (user_id, receiver_name, receiver_phone, street, city, ward, is_default)
SELECT 
    id, 
    CONCAT(last_name, ' ', first_name),  -- Dùng CONCAT để nối chuỗi thay vì dấu +
    phone, 
    'Trường Chinh', 
    'Hồ Chí Minh', 
    'Trung Mỹ Tây', 
    TRUE 
FROM users
WHERE id = 2;

INSERT INTO brands (name) VALUES ('Nike'), ('Adidas'), ('Puma'), ('Under Armour'), ('Mizuno');
INSERT INTO categories (name) VALUES ('Áo Quần Thể Thao'), ('Giày Thể Thao'), ('Dụng Cụ Tập Gym'), ('Phụ Kiện Thể Thao'), ('Bóng Đá');
INSERT INTO products (name, description, category_id, brand_id, status, slug, product_code, search_tag) VALUES 
('Áo Bóng Đá Manchester United Sân Nhà 23/24', 'Áo đấu chính thức sân nhà MU mùa giải 2023-2024.', 1, 2, 'ACTIVE', 'ao-bong-da-mu', 'MU-HOME-2324', 'áo bóng đá, mu'),
('Giày Chạy Bộ Nike Air Zoom Pegasus 40', 'Giày chạy bộ quốc dân với công nghệ Air Zoom.', 2, 1, 'ACTIVE', 'nike-pegasus-40', 'NK-PEG-40', 'giày chạy, nike');
INSERT INTO product_images (product_id, image_url, is_active, display_order) VALUES 
(1, 'https://example.com/mu_front.jpg', true, 1),
(2, 'https://example.com/nike_pegasus.jpg', true, 1);
INSERT INTO product_variants (product_id, sku_code, size, color, price, stock_quantity, weight, gender) VALUES 
(1, 'MU-HOME-M', 'M', 'Đỏ', 1200000.00, 100, 200, 'Nam'),
(1, 'MU-HOME-L', 'L', 'Đỏ', 1200000.00, 80, 200, 'Nam'),
(2, 'NK-PEG40-41', '41', 'Đen', 2500000.00, 35, 600, 'Unisex'),
(2, 'NK-PEG40-42', '42', 'Đen', 2500000.00, 40, 600, 'Unisex');


INSERT INTO reviews (user_id, product_id, rating, comment) VALUES
(2, 1, 5, 'Giày đi êm cực kỳ, xỏ vào chạy 5 vòng sân vận động Bách Khoa không thấy mỏi chân!');


INSERT INTO carts (user_id) VALUES (2);

-- Anh CR7 mua 1 đôi Nike (Size 41) và 1 cái Vợt (4U)
INSERT INTO cart_items (cart_id, product_variant_id, quantity) VALUES
(1, 2, 1), 
(1, 7, 1);

INSERT INTO roles (name) VALUES ('ITADMIN') ;

ALTER TABLE product_variants AUTO_INCREMENT = 1;
ALTER TABLE users AUTO_INCREMENT = 1;

SELECT * FROM roles;
SELECT * FROM users;
delete from roles;
delete from users;
delete from product_variants;
-- pass 123456a;
select * from product_variants;
select * from products;
update users set role_id = 1 where id = 1;
delete from users where id =2;

	