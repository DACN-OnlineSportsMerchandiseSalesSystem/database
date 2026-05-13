DROP DATABASE IF EXISTS backend_dacn;
CREATE DATABASE backend_dacn;
USE backend_dacn;

-- ==========================================
-- NHÓM 1: TÀI KHOẢN & NGƯỜI DÙNG
-- ==========================================
CREATE TABLE roles (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    password VARCHAR(255) NOT NULL,
    last_name VARCHAR(255),
    first_name VARCHAR(255),
    role_id BIGINT,
    level INT,
    gender VARCHAR(10),
    rank VARCHAR(20),
    last_login DATETIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'ACTIVE', -- ACTIVE, INACTIVE, BANNED, LOCKED
    FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE SET NULL
);

CREATE TABLE addresses (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT,
    receiver_name VARCHAR(100),
    receiver_phone VARCHAR(20),
    street VARCHAR(255),
    ward VARCHAR(100),
    city VARCHAR(100),
    is_default BOOLEAN,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- ==========================================
-- NHÓM 2: SẢN PHẨM & DANH MỤC
-- ==========================================
CREATE TABLE brands (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    detail TEXT,
    image_url VARCHAR(255),
    status VARCHAR(50),
    rating INT
);

CREATE TABLE categories (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    slug VARCHAR(255),
    status VARCHAR(50),
    rating INT,
    parent_id BIGINT,
    FOREIGN KEY (parent_id) REFERENCES categories(id) ON DELETE SET NULL
);

CREATE TABLE products (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    brand_id BIGINT,
    status VARCHAR(50) DEFAULT 'ACTIVE',
    slug VARCHAR(255),
    product_code VARCHAR(50) NOT NULL,
    search_tag VARCHAR(255),
    FOREIGN KEY (brand_id) REFERENCES brands(id) ON DELETE SET NULL
);

-- Bảng trung gian n-n Product-Category
CREATE TABLE product_category (
    product_id BIGINT,
    category_id BIGINT,
    PRIMARY KEY (product_id, category_id),
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE
);

CREATE TABLE product_images (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_id BIGINT,
    image_url VARCHAR(255) NOT NULL,
    is_thumbnail BOOLEAN DEFAULT FALSE,
    display_order INT,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
);

CREATE TABLE product_variants (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_id BIGINT,
    sku_code VARCHAR(50) UNIQUE,
    size VARCHAR(20),
    color VARCHAR(50),
    price DECIMAL(12,2) NOT NULL,
    original_price DECIMAL(12,2),
    stock_quantity INT DEFAULT 0,
    weight INT,
    gender VARCHAR(50),
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
);

-- ==========================================
-- NHÓM 3: GIỎ HÀNG
-- ==========================================
CREATE TABLE carts (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE cart_items (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    cart_id BIGINT,
    product_variant_id BIGINT,
    quantity INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cart_id) REFERENCES carts(id) ON DELETE CASCADE,
    FOREIGN KEY (product_variant_id) REFERENCES product_variants(id) ON DELETE CASCADE
);

-- ==========================================
-- NHÓM 4: KHUYẾN MÃI & DISCOUNT
-- ==========================================
CREATE TABLE vouchers (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(50) UNIQUE NOT NULL,
    discount_amount DECIMAL(12,2),
    min_order_value DECIMAL(12,2),
    usage_limit INT,
    used_count INT DEFAULT 0,
    expiry_date DATETIME,
    rank VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE discounts (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    discount_percent INT NOT NULL,
    scope VARCHAR(20) NOT NULL,       -- GLOBAL, CATEGORY, BRAND
    category_id BIGINT NULL,
    brand_id BIGINT NULL,
    start_date DATETIME NULL,
    end_date DATETIME NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL,
    FOREIGN KEY (brand_id) REFERENCES brands(id) ON DELETE SET NULL
);

-- ==========================================
-- NHÓM 5: ĐƠN HÀNG & THANH TOÁN
-- ==========================================
CREATE TABLE orders (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT,
    receiver_name VARCHAR(100),
    phone VARCHAR(20),
    billing_street VARCHAR(255),
    billing_ward VARCHAR(100),
    billing_city VARCHAR(100),
    total_price DECIMAL(12,2),
    note VARCHAR(255),
    status VARCHAR(50), -- PENDING, CONFIRMED, SHIPPING, DELIVERED, CANCELLED
    shipping_fee DECIMAL(12,2) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    voucher_id BIGINT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL,
    FOREIGN KEY (voucher_id) REFERENCES vouchers(id) ON DELETE SET NULL
);

CREATE TABLE order_items (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    order_id BIGINT,
    variant_id BIGINT,
    quantity INT NOT NULL,
    price_at_purchase DECIMAL(12,2) NOT NULL,
    discount_amount DECIMAL(12,2) DEFAULT 0,
    FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE,
    FOREIGN KEY (variant_id) REFERENCES product_variants(id) ON DELETE SET NULL
);

CREATE TABLE payments (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    order_id BIGINT UNIQUE,
    payment_method VARCHAR(50), -- COD, VNPAY, MOMO
    amount DECIMAL(12,2),
    status VARCHAR(50), -- PENDING, COMPLETED, FAILED
    transaction_code VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE
);

CREATE TABLE reviews (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT,
    product_id BIGINT,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    comment TEXT,
    title TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
);

-- ==========================================
-- NHÓM 6: HOÀN TRẢ & CHÍNH SÁCH & THỐNG KÊ
-- ==========================================
CREATE TABLE return_requests (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    order_id BIGINT,
    user_id BIGINT,
    status VARCHAR(50), -- PENDING, APPROVED, REJECTED
    refund_amount DECIMAL(12,2),
    reason TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL
);

CREATE TABLE return_items (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    return_request_id BIGINT,
    order_item_id BIGINT,
    quantity INT NOT NULL,
    image_proof VARCHAR(255),
    FOREIGN KEY (return_request_id) REFERENCES return_requests(id) ON DELETE CASCADE,
    FOREIGN KEY (order_item_id) REFERENCES order_items(id) ON DELETE CASCADE
);

CREATE TABLE store_policies (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    policy_key VARCHAR(100) UNIQUE NOT NULL,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    category VARCHAR(50) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    display_order INT DEFAULT 0,
    updated_at DATETIME,
    is_vectorized BOOLEAN DEFAULT FALSE
);

CREATE TABLE daily_statistic (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    stat_date DATE UNIQUE NOT NULL,
    revenue DECIMAL(15,2) DEFAULT 0,
    order_count INT DEFAULT 0,
    new_user_count INT DEFAULT 0
);

CREATE TABLE user_category_interest (
    user_id BIGINT,
    category_id BIGINT,
    PRIMARY KEY (user_id, category_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE
);

-- DỮ LIỆU MẪU CƠ BẢN
INSERT INTO roles (name) VALUES ('ADMIN'), ('CUSTOMER');
