-- MySQL dump 10.13  Distrib 9.7.0, for Win64 (x86_64)
--
-- Host: localhost    Database: backend_dacn
-- ------------------------------------------------------
-- Server version	9.7.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '7c83e4e6-4322-11f1-b8a6-00155d81187f:1-1929';

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `is_default` bit(1) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6i66ijb8twgcqtetl8eeeed6v` (`user_id`),
  CONSTRAINT `FK6i66ijb8twgcqtetl8eeeed6v` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'TP. Hồ Chí Minh',_binary '','0969036564','Nguyễn Thiết','Phường Bến Nghé','Lê Lai',3);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `receiver_name` varchar(100) DEFAULT NULL,
  `receiver_phone` varchar(20) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `ward` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,2,'Cristiano Ronaldo','0987654321','Sân vận động Thống Nhất','Phường 6, Quận 10','Hồ Chí Minh',1);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `content` text,
  `excerpt` text,
  `image_url` varchar(255) DEFAULT NULL,
  `is_vectorized` bit(1) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `sport` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKpl5w1yw2c5lligoeb9a393fr3` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'Admin','Chạy bộ','<h1><strong>Mở đầu</strong></h1><p>Trong những năm gần đây, chạy bộ không chỉ là môn thể thao giúp cải thiện sức khỏe mà còn trở thành một phong cách sống hiện đại. Tuy nhiên, để chạy hiệu quả và hạn chế chấn thương, việc lựa chọn đúng đôi giày là yếu tố cực kỳ quan trọng.</p><p>Nếu bạn đang tìm kiếm một đôi giày vừa êm ái, nhẹ, hỗ trợ tốt cho tập luyện hằng ngày lẫn chạy cự ly dài, thì dưới đây là 5 mẫu giày chạy bộ nổi bật nhất năm 2026 mà SportZone khuyên dùng.</p><h2><strong>1. Nike Pegasus 41</strong></h2><p><img src=\"https://images.openai.com/static-rsc-4/TkK1ko7I69NRZw_U4ecJ01wbU-xb7ryx7Ivh8L1WMx5QmpzE7qjTtu5AVkwGwa6fgGZbiu20YL0NJl8Bp_5qoi9tIHqpNmNsjfFTu4z__KlQZCbSsQp3FCs3i7kFY05Z-xDr-CqbhPfom__fIM7RYh1pgpsbJYEAl3do9QTF3UE?purpose=inline\" alt=\"https://images.openai.com/static-rsc-4/rdVVZN6pCRYzlnJSlc57pxPtXZ7ajIG_chooowWBIDA_ow2paMisI6VVK131LMq4NJWTx8IKbk-n6yzagpPEsuSmERcMQl9ZcDN5EGAT8vuhL_HUW1dkiCpuM2VZbQEqhNoq3EdhYBOfXuh6Z03VB54RYZLZCqgC6sgbx9TNqCyurRm8i_ijgNVOPZ3DWMk1?purpose=fullsize\"></p><p><img src=\"https://images.openai.com/static-rsc-4/N0FnW8ulN28kSP8L3-m_NI3xP79EqRgdhnF0pBFjJM2lTe5nu6IVZ-3ldNYP727IdhC1v8WKgnVqG52CJJSCHdEPHuDXGz9xs9Y7SqOTKyRCHb201PgifjaICs683m7mlm41JTxI-XuXOHvegoHTWN0fq4HvOsyZ5zG8isEqfK0?purpose=inline\" alt=\"https://images.openai.com/static-rsc-4/yXv4GvCNVIc9D439_kxBMbmKEPqNf1CMDLR_3CRzsEtYeWOBGHH5Q6k--FUeJB6HQ2M_PMUrf3hSOIFuALo3oZzmpRH80JpP7fakHZuF69geZP4lj3hRxjCU2ibfeMHMoT-5rt04QOMQh6sEG8M_4Y3GcRaF-Kqdj1tkMCWGHM28VGfMq2xtTkMcXQde_RIK?purpose=fullsize\"></p><p><img src=\"https://images.openai.com/static-rsc-4/C4HClbqpx6KTrgGTnOlLQ7q6KKcMvl5dwYwWAeRlwTxY8frBw_4IGlmMtWbNBbUHYJNMzwgE2OohHVGJ3fZXtUB3_CLVTXwdEJSOYrDU8jUtcKm3UbzAi3OYln3UKebZhUc5CVRZvgGJXTNKQuyjQq43dXKoQ1dAgUu5Lm3sPto?purpose=inline\" alt=\"https://images.openai.com/static-rsc-4/Pl-sq9qnpQjquwaOXTQHFAYNUJJWauXtc5InmiHBd4IafjJQ-CAzJpkzJBxr-PXV_9VSYXk18dqaU_7hqcmD1st4VRa-X34YoLNpiX9waKfrhIrgzMwT6e6egDMZuqgpeHXhHId_htVJAWspRbY0hFHxPFJ-UPFvFEO2B02PIlBtvIprxjezp2D9pCJRRUF6?purpose=fullsize\"></p><p>6</p><p>Nike Pegasus 41 tiếp tục là dòng “quốc dân” dành cho runner nhờ sự cân bằng hoàn hảo giữa:</p><ul><li>độ êm</li><li>độ phản hồi lực</li><li>độ bền</li></ul><h3>Điểm nổi bật</h3><ul><li>Đệm ReactX thế hệ mới</li><li>Trọng lượng nhẹ</li><li>Phù hợp chạy daily training</li><li>Hỗ trợ tốt cho người mới bắt đầu</li></ul><h3>Phù hợp với:</h3><ul><li>Runner mới</li><li>Chạy 5km – 21km</li><li>Tập luyện hàng ngày</li></ul><h2><strong>2. Adidas Ultraboost 5</strong></h2><p><img src=\"https://images.openai.com/static-rsc-4/IteJbxXVLgzwNDLo91KYlZhPx5KdiIlSa3B0qQGq_3q0-o7vbKGIPzkwhtXrR9l8me5HFMefBKhYloprQikrYbyb91_nZtfMdYHaTEGF9E40XjfsHBXrD0ayMuxIljvpY3zSMW31mD0fmKOcbpAwuctUHXGM58x6iAErSMhxTUY?purpose=inline\" alt=\"https://images.openai.com/static-rsc-4/AZez-XAs2s98aqqiDnL4AW4GKbFxLv9V3o4KEZqQztVnoWcopK5MxAaeVWbCy8l2232oOUxa7cQOiUv2akFrn0n71YhKR9fNBjOx-M0Erq-J0Uovj1hJDcnRMrI4sSVpxK-vM6D-aGCftpcZPz4fEmARNyUmB3FlNGL-kLd74-2pKomCpQ27qKNSPAn6UOf5?purpose=fullsize\"></p><p><img src=\"https://images.openai.com/static-rsc-4/cVaQXkd-XFaOlaaxMdFP0LollhnBjquhDdhjgmvEYM80WCsV9tYtZnh2-y43mZ3nYpckw3NaQenfdnEoUTP-bTaTPAmUUEh_4uHjlYtOW9a7AvGBhlUpV7-FqtpTQ0uaaKbBvyoPqwdeZ4g6CtbWZanomCNYfjAdAdRuFbtoZjo?purpose=inline\" alt=\"https://images.openai.com/static-rsc-4/J5xr-Qz05gv9gcj-1p134rA8OBa1NuyYjEq687AFrLG26xQ3lu55KOXllhxB-tYltm28ZAGvMAzCMlmqg9LSgA5zW3RdabwS7Ri56TsaF_WJW73Bh0MwIwiZu4KZG2q3Ho5-xHIE720FboqdziJ5JiwyQvIZfEACxJHfMnMpyLyWLeIxR14CJBttORH2C3HO?purpose=fullsize\"></p><p><img src=\"https://images.openai.com/static-rsc-4/gJ7YJwDFxs8cd8eUzfnT-Gc85EKtMcOzMIr0Ov8OlHnPhgbCLOQsex_Sl0x43gAf4qr3DTaAv3lx61G9rhQp50M84jPku9VVFj3h2J553o9TpUm2AwAz5fgIZpipQxNubouxFdiiWKZrrboBnWmWa-lNEgq2B7Qck4IR5pYvSdg?purpose=inline\" alt=\"https://images.openai.com/static-rsc-4/hrRitbPqK72LC7tq3iXk_sazzOqKcKMhApwTzbC6f0PFDkhtunSD063WtrrO8PnOYNCMqBS0hvsyMNNqRrq83JYpx0aYqpnRf-jfOpFpxoyBCO0dzFEcyucf7KSI_Qi7jW1nEMVqqwLKkoHSEAh61JSiMS2Gu4Az2_ldAmqpJUpG58wOPTFvOWUL7TUPh_hg?purpose=fullsize\"></p><p>6</p><p>Ultraboost 5 nổi bật với công nghệ đệm Lightboost giúp hoàn trả năng lượng cực tốt khi chạy.</p><h3>Ưu điểm</h3><ul><li>Êm chân</li><li>Thiết kế thời trang</li><li>Upper thoáng khí</li><li>Phù hợp chạy và lifestyle</li></ul><h3>Nhược điểm</h3><ul><li>Giá hơi cao</li><li>Hơi nặng với người thích tốc độ</li></ul><h2><strong>3. Asics Gel-Kayano 31</strong></h2><p><img src=\"https://images.openai.com/static-rsc-4/6cAOixqSpWs-asbDMN4rfDr2CfNlEbEwqzZ9tDBATgzYgwXz1Fi79qPOEfreAhvng2sJOMsxNfuDpE4HlHtBCy6iNbLE3oYQh2AGgA0DrY2qGpPeD4_p05xqvm3xFq2XZQLHuMmDbC5Iuiv8yCz0rvyL0cR33QuMFkQDrDibBzs?purpose=inline\" alt=\"https://images.openai.com/static-rsc-4/Z_16zZd19YuKwyuHGwkBb1Eh6koyvtKFbsf-hc3MHKJAiTbSpE2IkFXaTuw3pAMrOj-F7F5-RWPgxIu-A-spKnFybGaGyRlHBUfwvddlAqtmxSTYFTRHkQZObQ1tlB5l3JQmtmcqCIZIcgSnkCwk0Ss_E_FCOR7sy8wKyY_UqPRAFUOaT3mN--Mn2dblT583?purpose=fullsize\"></p><p><img src=\"https://images.openai.com/static-rsc-4/rvXJIhiWl_PjQfyubSMXCX6ALKj8VFZORNWARQKHv40GaXLZtzX28vKRLRP-O5gIsE81puD_-i70xkjHgm0pxZfEDNoKw4XJKFaulTooN0CyYUDyszVHZCHlvkNN0vC5iYlnxWtnPYNU020hM64d9ddWWy6Tbm9rXXU33K7EYss?purpose=inline\" alt=\"https://images.openai.com/static-rsc-4/kae9CdZrj-cFJoXmd9h8B1PdTnmPF9LmFytR_6PtAK8qsewdN7KPaMYdJ-Kcer1NQIKWhdsepZWqQsJ3sMvrcQZqPk1jD8nh98i-dUbNuFTE7a-v1xQY94Dk5Il4mqChi6ajmkdmywiUGzIU9dQSK8aq4YJcAqoXL5Dzv8AF4lXhjmHWENwj0o1EJGVOqas6?purpose=fullsize\"></p><p><img src=\"https://images.openai.com/static-rsc-4/eBTXf-PpbnZ1DYBH1zFw-xkYkT3XT-VFSbPfILU9Cs5LUTQZ02iBDHKjvl0AJmH1STuHoGRX2XU5EQ0P6VLhLj-pLkncd0jV7IUYwpfKS9DgAV6i4u3-Whatfr2voFn27zYxYbvZdAPaNDN_vGnyoj5VGgyWN36qdULAgF84zR8?purpose=inline\" alt=\"https://images.openai.com/static-rsc-4/qZCTzFoIijcvh7VYBgqvrQ25rIJHYXwMiYAS5yJGY7j4i6fdVekY7fN8qgDrCC2CD7ljQTlCPOh58SHF5LEa-mATAPrbNu89prsf4DsVUdNxc9f_BAfcir883lFWA1-oaoMHoDMGcPFjCRBAx6VQW7u4GASf_dsnrvchCrKbHsvyOo5rKKkjLzU_DPME57jS?purpose=fullsize\"></p><p>6</p><p>Đây là một trong những đôi giày stability tốt nhất dành cho runner có hiện tượng overpronation (đổ chân vào trong).</p><h3>Điểm mạnh</h3><ul><li>Đệm cực êm</li><li>Hỗ trợ cổ chân tốt</li><li>Giảm áp lực đầu gối</li></ul><h3>Phù hợp với:</h3><ul><li>Người nặng cân</li><li>Chạy long run</li><li>Runner cần stability</li></ul><h2><strong>4. Những tiêu chí quan trọng khi chọn giày chạy bộ</strong></h2><p><img src=\"https://images.openai.com/static-rsc-4/9BkfRvvKIMEt7UZqpSJOFBUD4h-8KShKaYVMay5LJa37lkiySaGpU18vXcj4gX2Qs9Mr300oNgXLW0kPb1mKB-JpXNtmQXhmo6LOoDmJawDez0iWOS6zKxqreyzd48DFqW7Y4JQMbDNj5P96ZSfIZAHZkvqWZsaROls7zzXBEwM?purpose=inline\" alt=\"https://images.openai.com/static-rsc-4/sbEv5nW4y2LATJGojGApSBKhcOUJKy_9C_V3_5p7QdXPuPz7Ekoq-sDv64y0E8hKBqN8FLpKu-RuJaiA82bmEvnI_mRU341GjLhOopJpH0VG79Kk6-4uZVhwpX7PLbvXpx11Uvw9h9i1rvpYJVVr83GqtjcqfxunC-ryhXRzmA1Lq4rS1PtiD5VoDTsx-Bnp?purpose=fullsize\"></p><p><img src=\"https://images.openai.com/static-rsc-4/aIorG9fGM_9caYhoEku29yhwfvXSF-8tZic_ULDS12OgJaVhthERd9Nv9wdKnzR8fs5Fw45W8lJAt7QSf4S0YR2kqOK3px_UbtXMj1O4vFN5hYowcD2W-4xHsRKuyLPNiapr5QqUOk3ig-ZTQEb9Pza3SOSNFhM1HpWRlcuhnOc?purpose=inline\" alt=\"https://images.openai.com/static-rsc-4/VjulEQQKqiBQEPO-mAUncAQ0LjHrmg3eSFciM3aCmKlsTdsTciA-ACtKvtj3QfH7PXLBSyXElewLUqhETc0iWytLMI0Wc_jNXf7AARbze9FvogynKcMbNOwwtO0uno9yRkgGqbeQSC2BFW8p0TuEZv00Ur_kDVufx7s2zRuPvJVV9MW1AISM08anLHdKfZsB?purpose=fullsize\"></p><p><img src=\"https://images.openai.com/static-rsc-4/V3rWeTIk0atRKeXyNisVVsopM4js8xGhtvtsT3eYlONCF_qURZoQyDNTYNKH2JO9QDaGPhFmWxZtTHDvvEKqJJEhmicssKIzFdtqfD2FlJLBVhCLMhNwWuMsWDEGeS2SVKDtSsViV5FAMrcfq1Tjbw5LC3RUurZUbWypxk-lUKs?purpose=inline\" alt=\"https://images.openai.com/static-rsc-4/IC-vBevYEGlUUVPQeTRPpKfUivW34Wbyq3KeuiiPYFnIa_AGExNG4WMca-rRQxS-vC0mvUUkapzCPY_nezSXjQw9jUpzkFdXxnNki2wXO1FFKYIFAbLm1xv-Vutdla8qWOZoQeiMBR5tGQE_5nh0eVV0mXtlORoTUgXBNkDPOT_Eu4dgSono04PT9CZKVXnL?purpose=fullsize\"></p><h2><strong>Chọn đúng form chân</strong></h2><p>Mỗi người sẽ có:</p><ul><li>bàn chân bè</li><li>bàn chân thon</li><li>vòm chân cao/thấp</li></ul><p>Mang đúng form giúp:</p><ul><li>giảm phồng rộp</li><li>giảm đau gối</li><li>tăng hiệu suất chạy</li></ul><h2><strong>Ưu tiên độ êm nếu mới tập</strong></h2><p>Người mới nên chọn:</p><ul><li>đệm mềm</li><li>ổn định</li><li>không quá cứng</li></ul><p>Ví dụ:</p><ul><li>Pegasus</li><li>Kayano</li><li>Ultraboost</li></ul><h2><strong>Không nên chọn giày quá chật</strong></h2><p>Khi chạy chân thường nở ra khoảng 0.5 size.</p><p>Nên:</p><ul><li>dư khoảng 0.5–1cm ở mũi chân</li><li>mang thử với tất chạy bộ</li></ul><h2>5. Kết luận</h2><p>Nếu bạn cần một đôi giày:</p><ul><li>cân bằng toàn diện → Pegasus 41</li><li>siêu êm và thời trang → Ultraboost 5</li><li>hỗ trợ stability tối đa → Gel-Kayano 31</li></ul><p>Đầu tư đúng đôi giày chạy bộ sẽ giúp quá trình luyện tập thoải mái hơn, hạn chế chấn thương và duy trì động lực lâu dài.</p>','Trong những năm gần đây, chạy bộ không chỉ là môn thể thao giúp cải thiện sức khỏe mà còn trở thành một phong cách sống hiện đại. Tuy nhiên, để chạy hiệu quả và hạn chế chấn thương, việc lựa chọn đúng đôi giày là yếu tố cực kỳ quan trọng.','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779413568/hoqgslu1ftwcxiaqxh7o.webp',_binary '','top-5-giay-chay-bo-ang-mua-nam-2026','Chạy bộ','Nike, Adidas, Asics, Running, Giày chạy bộ','Top 5 Giày Chạy Bộ Đáng Mua Năm 2026');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `detail` text,
  `image_url` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Joola','Thương hiệu dụng cụ thể thao hàng đầu từ Đức/Mỹ.','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779385711/hau4tabssjwmopnryder.png','ACTIVE',5),(2,'Decathlon','Đại siêu thị thể thao đa năng đến từ Pháp.','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779385724/f28l0yuqeatxrt0zut67.png','ACTIVE',5),(3,'Biti\'s','Thương hiệu giày quốc dân Việt Nam (Hunter).','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779385785/g8qufbmhudxwfe8pzak4.png','ACTIVE',4),(4,'FowerMax','Thương hiệu phụ kiện thể thao, bó gối y sinh.','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779385800/c8a9fouiarerhjpuif7w.png','ACTIVE',4),(5,'Yonex','Thương hiệu dụng cụ cầu lông hàng đầu Nhật Bản.','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779385840/wej4gpdstbqy4n84pooz.png','ACTIVE',5),(6,'Kamito','Thương hiệu thời trang và dụng cụ thể thao Việt Nam.','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779385849/xgmiv5yuyxqgcch1yjni.png','ACTIVE',4),(7,'Động Lực','Tập đoàn thể thao hàng đầu Việt Nam sở hữu Jogarbola.','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779385883/kchdj9ak22pe7lyzcg0m.jpg','ACTIVE',4),(8,'Asics','Thương hiệu giày chạy bộ và thể thao từ Nhật Bản.','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779385912/suj6u03qbzh1qxw3aqeg.png','ACTIVE',5),(9,'View','Thương hiệu kính bơi cao cấp đến từ Nhật Bản.','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779385956/dftezcxrty9gnhkuc4pb.png','ACTIVE',4),(10,'ICADO','Thời trang thể thao gym, yoga cao cấp Việt Nam.','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779385968/n7obhtqbkomsrr1rzhoq.png','ACTIVE',4),(11,'Everlast','Thương hiệu thiết bị và trang phục võ thuật từ Mỹ.','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779385978/wryqtg5njc1gxslrryey.png','ACTIVE',4),(12,'Adidas','Thương hiệu thời trang và giày thể thao toàn cầu từ Đức.','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779385988/greh4wvgf6jqv3pwlut4.png','ACTIVE',5),(13,'Lining','Thương hiệu thể thao hàng đầu Trung Quốc.','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779385996/o987vat3xmyqekpxzeap.png','ACTIVE',5),(14,'Nike','Tập đoàn thể thao hàng đầu thế giới đến từ Mỹ.','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779386006/rwflg0ojyivdchz8ru3l.png','ACTIVE',5),(15,'Victor','Thương hiệu sản xuất dụng cụ cầu lông lâu đời và uy tín toàn cầu.','https://res.cloudinary.com/dbpbujhbt/image/upload/v1779386014/khzcdpsdeakwoixevkau.jpg','ACTIVE',5);
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cart_id` bigint DEFAULT NULL,
  `product_variant_id` bigint DEFAULT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKgsd2omh6dn3xdhlr5ta36gu4o` (`cart_id`,`product_variant_id`),
  KEY `product_variant_id` (`product_variant_id`),
  CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (10,2,54,1,'2026-05-21 21:06:45'),(11,2,56,2,'2026-05-21 23:20:05'),(12,2,58,1,'2026-05-21 23:20:14');
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,2,'2026-05-21 17:43:10'),(2,3,'2026-05-21 10:46:07');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Chạy bộ','chay-bo','ACTIVE',5,NULL),(2,'Bóng đá','bong-da','ACTIVE',5,NULL),(3,'Bóng rổ','bong-ro','ACTIVE',5,NULL),(4,'Cầu lông','cau-long','ACTIVE',5,NULL),(5,'Gym & Fitness','gym-fitness','ACTIVE',5,NULL),(6,'Bơi lội','boi-loi','ACTIVE',5,NULL),(7,'Xe đạp','xe-dap','ACTIVE',5,NULL),(8,'Yoga','yoga','ACTIVE',5,NULL),(9,'Võ thuật','vo-thuat','ACTIVE',5,NULL),(10,'Pickleball','pickleball','ACTIVE',5,NULL),(11,'Quần áo & Áo đấu Chạy bộ','quan-ao-ao-dau-chay-bo','ACTIVE',5,1),(12,'Giày thể thao Chạy bộ','giay-the-thao-chay-bo','ACTIVE',5,1),(13,'Balo & Túi nước Chạy bộ','balo-tui-nuoc-chay-bo','ACTIVE',5,1),(14,'Phụ kiện & Dụng cụ Chạy bộ','phu-kien-dung-cu-chay-bo','ACTIVE',5,1),(15,'Quần áo & Áo đấu Bóng đá','quan-ao-ao-dau-bong-da','ACTIVE',5,2),(16,'Giày thể thao Bóng đá','giay-the-thao-bong-da','ACTIVE',5,2),(17,'Bóng thi đấu Bóng đá','bong-thi-dau-bong-da','ACTIVE',5,2),(18,'Phụ kiện & Dụng cụ Bóng đá','phu-kien-dung-cu-bong-da','ACTIVE',5,2),(19,'Quần áo & Áo đấu Bóng rổ','quan-ao-ao-dau-bong-ro','ACTIVE',5,3),(20,'Giày thể thao Bóng rổ','giay-the-thao-bong-ro','ACTIVE',5,3),(21,'Bóng thi đấu Bóng rổ','bong-thi-dau-bong-ro','ACTIVE',5,3),(22,'Phụ kiện & Dụng cụ Bóng rổ','phu-kien-dung-cu-bong-ro','ACTIVE',5,3),(23,'Quần áo & Áo đấu Cầu lông','quan-ao-ao-dau-cau-long','ACTIVE',5,4),(24,'Giày thể thao Cầu lông','giay-the-thao-cau-long','ACTIVE',5,4),(25,'Vợt Cầu lông','vot-cau-long','ACTIVE',5,4),(26,'Phụ kiện & Dụng cụ Cầu lông','phu-kien-dung-cu-cau-long','ACTIVE',5,4),(27,'Quần áo & Áo đấu Gym','quan-ao-ao-dau-gym','ACTIVE',5,5),(28,'Giày thể thao Gym','giay-the-thao-gym','ACTIVE',5,5),(29,'Băng bảo vệ & Bó cơ Gym','bang-bao-ve-bo-co-gym','ACTIVE',5,5),(30,'Phụ kiện & Dụng cụ Gym','phu-kien-dung-cu-gym','ACTIVE',5,5),(31,'Quần áo & Áo đấu Bơi lội','quan-ao-ao-dau-boi-loi','ACTIVE',5,6),(32,'Giày thể thao Bơi lội','giay-the-thao-boi-loi','ACTIVE',5,6),(33,'Kính bơi & Mũ bơi Bơi lội','kinh-boi-mu-boi-boi-loi','ACTIVE',5,6),(34,'Phụ kiện & Dụng cụ Bơi lội','phu-kien-dung-cu-boi-loi','ACTIVE',5,6),(35,'Quần áo & Áo đấu Xe đạp','quan-ao-ao-dau-xe-dap','ACTIVE',5,7),(36,'Giày thể thao Xe đạp','giay-the-thao-xe-dap','ACTIVE',5,7),(37,'Mũ bảo hiểm Xe đạp','mu-bao-hiem-xe-dap','ACTIVE',5,7),(38,'Phụ kiện & Dụng cụ Xe đạp','phu-kien-dung-cu-xe-dap','ACTIVE',5,7),(39,'Quần áo & Áo đấu Yoga','quan-ao-ao-dau-yoga','ACTIVE',5,8),(40,'Giày thể thao Yoga','giay-the-thao-yoga','ACTIVE',5,8),(41,'Thảm & Khăn tập Yoga','tham-khan-tap-yoga','ACTIVE',5,8),(42,'Phụ kiện & Dụng cụ Yoga','phu-kien-dung-cu-yoga','ACTIVE',5,8),(43,'Quần áo & Áo đấu Võ thuật','quan-ao-ao-dau-vo-thuat','ACTIVE',5,9),(44,'Giày thể thao Võ thuật','giay-the-thao-vo-thuat','ACTIVE',5,9),(45,'Găng tay & Bao cát Võ thuật','gang-tay-bao-cat-vo-thuat','ACTIVE',5,9),(46,'Phụ kiện & Dụng cụ Võ thuật','phu-kien-dung-cu-vo-thuat','ACTIVE',5,9),(47,'Quần áo & Áo đấu Pickleball','quan-ao-ao-dau-pickleball','ACTIVE',5,10),(48,'Giày thể thao Pickleball','giay-the-thao-pickleball','ACTIVE',5,10),(49,'Vợt Pickleball','vot-pickleball','ACTIVE',5,10),(50,'Phụ kiện & Dụng cụ Pickleball','phu-kien-dung-cu-pickleball','ACTIVE',5,10);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_statistic`
--

DROP TABLE IF EXISTS `daily_statistic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_statistic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `stat_date` date NOT NULL,
  `revenue` decimal(15,2) DEFAULT '0.00',
  `order_count` int DEFAULT '0',
  `new_user_count` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `stat_date` (`stat_date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_statistic`
--

LOCK TABLES `daily_statistic` WRITE;
/*!40000 ALTER TABLE `daily_statistic` DISABLE KEYS */;
INSERT INTO `daily_statistic` VALUES (1,'2026-05-22',20139350.00,7,3);
/*!40000 ALTER TABLE `daily_statistic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `discount_percent` int NOT NULL,
  `scope` varchar(20) NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `brand_id` (`brand_id`),
  CONSTRAINT `discounts_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discounts_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,'MÙA HÈ RỰC RỠ',5,'CATEGORY',1,NULL,'2026-05-22 00:00:00','2026-05-28 00:00:00',1,'2026-05-21 11:52:57');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `variant_id` bigint DEFAULT NULL,
  `quantity` int NOT NULL,
  `price_at_purchase` decimal(38,2) DEFAULT NULL,
  `discount_amount` decimal(38,2) DEFAULT NULL,
  `product_variant_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `variant_id` (`variant_id`),
  KEY `FKltmtlue0wixrg1cf0xo7x0l4d` (`product_variant_id`),
  CONSTRAINT `FKltmtlue0wixrg1cf0xo7x0l4d` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,NULL,1,284050.00,0.00,58),(2,2,NULL,1,812250.00,0.00,53),(3,3,NULL,2,7750000.00,0.00,42),(4,4,NULL,2,812250.00,0.00,53),(5,5,NULL,1,812250.00,0.00,52),(6,6,NULL,1,812250.00,0.00,53),(7,7,NULL,1,284050.00,0.00,56);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `billing_street` varchar(255) DEFAULT NULL,
  `billing_ward` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `total_price` decimal(38,2) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `shipping_fee` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `voucher_id` bigint DEFAULT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `voucher_id` (`voucher_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,3,'Nguyễn Thiết','0969036564','Lê Lai','Phường Bến Nghé','TP. Hồ Chí Minh',284050.00,'','DELIVERED',30000,'2026-05-22 00:35:03',3,'2026-05-22 00:35:03.265000','COD'),(2,3,'Nguyễn Thiết','0969036564','Lê Lai','Phường Bến Nghé','TP. Hồ Chí Minh',842250.00,'','DELIVERED',30000,'2026-05-22 01:43:48',NULL,'2026-05-22 01:43:48.597000','COD'),(3,3,'Nguyễn Thiết','0969036564','Lê Lai','Phường Bến Nghé','TP. Hồ Chí Minh',15530000.00,'','DELIVERED',30000,'2026-05-22 03:41:01',NULL,'2026-05-22 03:41:01.349000','MoMo'),(4,3,'Nguyễn Thiết','0969036564','Lê Lai','Phường Bến Nghé','TP. Hồ Chí Minh',1634500.00,'','DELIVERED',30000,'2026-05-22 03:50:30',2,'2026-05-22 03:50:30.737000','COD'),(5,3,'Nguyễn Thiết','0969036564','Lê Lai','Phường Bến Nghé','TP. Hồ Chí Minh',792250.00,'','DELIVERED',30000,'2026-05-22 03:51:18',4,'2026-05-22 03:51:18.784000','COD'),(6,3,'Nguyễn Thiết','0969036564','Lê Lai','Phường Bến Nghé','TP. Hồ Chí Minh',792250.00,'','DELIVERED',30000,'2026-05-22 03:53:36',1,'2026-05-22 03:53:36.050000','COD'),(7,3,'Nguyễn Thiết','0969036564','Lê Lai','Phường Bến Nghé','TP. Hồ Chí Minh',264050.00,'','DELIVERED',30000,'2026-05-22 03:54:50',1,'2026-05-22 03:54:50.076000','COD');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `transaction_code` varchar(255) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlouu98csyullos9k25tbpk4va` (`order_id`),
  CONSTRAINT `FKlouu98csyullos9k25tbpk4va` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `transaction_code` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `product_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1002,1),(1003,1),(1004,1),(1005,1),(1010,1),(1016,1),(1018,1),(1019,1),(1021,1),(1004,2),(1005,2),(1007,2),(1008,2),(1004,3),(1005,3),(1009,3),(1020,3),(1004,4),(1005,4),(1006,4),(1017,4),(1022,4),(1004,5),(1005,5),(1005,6),(1011,6),(1005,7),(1005,8),(1012,8),(1005,9),(1013,9),(1001,10),(1005,10),(1015,10),(1005,11),(1019,11),(1002,12),(1003,12),(1010,12),(1016,12),(1021,12),(1018,13),(1004,14),(1018,14),(1005,15),(1007,16),(1008,17),(1004,18),(1008,18),(1005,19),(1009,20),(1020,21),(1004,22),(1005,23),(1006,25),(1017,25),(1022,25),(1004,26),(1005,27),(1003,28),(1004,29),(1004,30),(1005,31),(1011,33),(1005,35),(1014,36),(1014,37),(1014,38),(1005,39),(1012,41),(1012,42),(1005,43),(1013,45),(1013,46),(1005,47),(1015,47),(1001,49);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_thumbnail` tinyint(1) DEFAULT '0',
  `display_order` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (26,1001,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779386070/mauhuq1ua6wtbuwpm8ex.webp',1,NULL),(29,1002,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779386169/nszyiebboikm4pcwjsma.jpg',1,NULL),(30,1003,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779386136/c1px6uzqmho5l1vnl3cm.avif',1,NULL),(32,1004,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779386211/uwuytnohkwu27sqkyp1l.avif',1,NULL),(33,1005,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779386281/iuqjwfpbwsxzq5pwx2bq.avif',1,NULL),(34,1006,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779386482/c5tbom6c28srfa3yd2h7.webp',1,NULL),(35,1007,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779386512/jujjculgklqcebb3qy6x.jpg',1,NULL),(36,1008,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779386537/iy6zfz72ahy69asnirhy.png',1,NULL),(43,1011,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779386667/co85unng4o3x8bxb1rxy.jpg',1,NULL),(45,1009,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779386564/ryolyhwr0ududnvtnydq.webp',1,NULL),(46,1010,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779386610/vqqi09vw6zxtf4pmvzdu.webp',1,NULL),(47,1012,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779386708/x37larqzqqsmfvnrnsv5.jpg',1,NULL),(49,1013,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779387614/htlb3hnwpgc2hz4yfet9.png',1,NULL),(50,1014,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779387642/e1wqiig7dfwhpf1mrz3c.avif',1,NULL),(51,1015,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779387661/p1blmmtl3hbxjrtoo5zv.jpg',1,NULL),(53,1016,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779387681/impkn8hiemyw1byub6e5.jpg',1,NULL),(54,1017,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779387702/e3q4ths79l0fnpiibr2g.webp',1,NULL),(55,1018,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779387717/ymd7ha9ofdwjsy2lqqqk.avif',1,NULL),(56,1019,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779387732/kajse25axxejok5q9vrk.avif',1,NULL),(57,1020,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779387744/d8gmksvpjujfdeapppgk.png',1,NULL),(58,1021,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779387763/zrwreijz6np8x7dskfma.webp',1,NULL),(59,1022,'https://res.cloudinary.com/dbpbujhbt/image/upload/v1779387779/gxggrwyrbi3vw5xd5ags.webp',1,NULL);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variants`
--

DROP TABLE IF EXISTS `product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variants` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `sku_code` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` decimal(38,2) DEFAULT NULL,
  `original_price` decimal(38,2) DEFAULT NULL,
  `stock_quantity` int DEFAULT '0',
  `weight` int DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `discount` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sku_code` (`sku_code`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_variants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variants`
--

LOCK TABLES `product_variants` WRITE;
/*!40000 ALTER TABLE `product_variants` DISABLE KEYS */;
INSERT INTO `product_variants` VALUES (42,1001,'JOO-PER3S-ĐEN-16MM-7847','16mm','Đen',7750000.00,7750000.00,83,NULL,NULL,0),(43,1001,'JOO-PER3S-ĐEN-14MM-E750','14mm','Đen',7750000.00,7750000.00,85,NULL,NULL,0),(52,1002,'BITIS-EVO-HỒNG LỢT-37-1D63','37','Hồng Lợt',855000.00,855000.00,69,NULL,NULL,0),(53,1002,'BITIS-EVO-HỒNG LỢT-38-2552','38','Hồng Lợt',855000.00,855000.00,66,NULL,NULL,0),(54,1002,'BITIS-EVO-TRẮNG-38-4095','38','Trắng',855000.00,855000.00,70,NULL,NULL,0),(55,1002,'BITIS-EVO-TRẮNG-37-949C','37','Trắng',855000.00,855000.00,70,NULL,NULL,0),(56,1003,'DEC-RUNONE-ĐEN-43-490A','43','Đen',299000.00,299000.00,119,NULL,NULL,0),(57,1003,'DEC-RUNONE-XÁM-43-7ABF','43','Xám',299000.00,299000.00,120,NULL,NULL,0),(58,1003,'DEC-RUNONE-ĐEN-42-EA91','42','Đen',299000.00,299000.00,119,NULL,NULL,0),(59,1003,'DEC-RUNONE-XÁM-42-EEB7','42','Xám',299000.00,299000.00,120,NULL,NULL,0),(62,1004,'FWM-KNEE-ĐEN-XL-7D24','XL','Đen',250000.00,250000.00,120,NULL,NULL,0),(63,1004,'FWM-KNEE-ĐEN-L-0355','L','Đen',250000.00,250000.00,120,NULL,NULL,0),(64,1005,'DEC-100DRY-ĐEN-L-D355','L','Đen',149000.00,149000.00,200,NULL,NULL,0),(65,1005,'DEC-100DRY-ĐEN-M-42E0','M','Đen',149000.00,149000.00,200,NULL,NULL,0),(66,1005,'DEC-100DRY-XÁM NHẠT-M-5765','M','Xám nhạt',149000.00,149000.00,200,NULL,NULL,0),(67,1005,'DEC-100DRY-XÁM NHẠT-L-80DF','L','Xám nhạt',149000.00,149000.00,200,NULL,NULL,0),(68,1006,'YNX-AX88DP-VÀNG CAMEL-3UG5-297C','3UG5','Vàng Camel',4349000.00,4349000.00,65,NULL,NULL,0),(69,1006,'YNX-AX88DP-VÀNG CAMEL-4UG5-DBE1','4UG5','Vàng Camel',4349000.00,4349000.00,65,NULL,NULL,0),(70,1007,'KMT-ARTTF-XANH NGỌC-40-0A71','40','Xanh Ngọc',1599000.00,1599000.00,50,NULL,NULL,0),(71,1007,'KMT-ARTTF-ĐỎ ĐÔ-41-4636','41','Đỏ Đô',1599000.00,1599000.00,50,NULL,NULL,0),(72,1007,'KMT-ARTTF-XANH NGỌC-41-9E02','41','Xanh Ngọc',1599000.00,1599000.00,50,NULL,NULL,0),(73,1007,'KMT-ARTTF-ĐỎ ĐÔ-40-1D22','40','Đỏ Đô',1599000.00,1599000.00,50,NULL,NULL,0),(74,1008,'DL-UHV205-TRẮNG XANH-SIZE 5-0ABB','Size 5','Trắng Xanh',680000.00,680000.00,180,NULL,NULL,0),(97,1011,'VIEW-V610-ĐEN-FREE SIZE-8F33','Free Size','Đen',495000.00,495000.00,121,NULL,NULL,0),(98,1011,'VIEW-V610-XANH-FREE SIZE-6FFB','Free Size','Xanh',495000.00,495000.00,121,NULL,NULL,0),(101,1009,'JGB-COMET-XANH DƯƠNG-42-927B','42','Xanh Dương',1750000.00,1750000.00,31,NULL,NULL,0),(102,1009,'JGB-COMET-ĐỎ-42-8E7E','42','Đỏ',1750000.00,1750000.00,31,NULL,NULL,0),(103,1009,'JGB-COMET-XANH DƯƠNG-43-1F78','43','Xanh Dương',1750000.00,1750000.00,31,NULL,NULL,0),(104,1009,'JGB-COMET-ĐỎ-43-8AD9','43','Đỏ',1750000.00,1750000.00,31,NULL,NULL,0),(105,1010,'ASC-GK31-INDIGO BLUE-42-6ADA','42','Indigo Blue',4500000.00,4500000.00,15,NULL,NULL,0),(106,1010,'ASC-GK31-INDIGO BLUE-41-E515','41','Indigo Blue',4500000.00,4500000.00,15,NULL,NULL,0),(107,1010,'ASC-GK31-ĐEN-41-7DFC','41','Đen',4500000.00,4500000.00,15,NULL,NULL,0),(108,1010,'ASC-GK31-ĐEN-42-4F6E','42','Đen',4500000.00,4500000.00,15,NULL,NULL,0),(109,1012,'ICD-YGMAT-XANH LÁ-6MM-25E3','6mm','Xanh Lá',350000.00,350000.00,80,NULL,NULL,0),(110,1012,'ICD-YGMAT-TÍM-6MM-FCE9','6mm','Tím',350000.00,350000.00,80,NULL,NULL,0),(115,1013,'EVR-BOXPRO-ĐEN-14OZ-048B','14oz','Đen',1250000.00,1250000.00,35,NULL,NULL,0),(116,1013,'EVR-BOXPRO-ĐỎ-12OZ-506F','12oz','Đỏ',1250000.00,1250000.00,35,NULL,NULL,0),(117,1013,'EVR-BOXPRO-ĐEN-12OZ-B599','12oz','Đen',1250000.00,1250000.00,35,NULL,NULL,0),(118,1013,'EVR-BOXPRO-ĐỎ-14OZ-F144','14oz','Đỏ',1250000.00,1250000.00,35,NULL,NULL,0),(119,1014,'DEC-ROCKMUT-TRẮNG-M-2A0B','M','Trắng',550000.00,550000.00,85,NULL,NULL,0),(120,1014,'DEC-ROCKMUT-ĐEN-M-2522','M','Đen',550000.00,550000.00,85,NULL,NULL,0),(121,1014,'DEC-ROCKMUT-ĐEN-L-CCE6','L','Đen',550000.00,550000.00,85,NULL,NULL,0),(122,1014,'DEC-ROCKMUT-TRẮNG-L-9A8F','L','Trắng',550000.00,550000.00,85,NULL,NULL,0),(123,1015,'ICD-HT603-TRẮNG-M-8E0C','M','Trắng',270000.00,270000.00,120,NULL,NULL,0),(124,1015,'ICD-HT603-TRẮNG-S-6667','S','Trắng',270000.00,270000.00,120,NULL,NULL,0),(129,1016,'ADI-UB5-ĐEN-42-0B1C','42','Đen',4900000.00,4900000.00,30,NULL,NULL,0),(130,1016,'ADI-UB5-ĐEN-41-EE3E','41','Đen',4900000.00,4900000.00,30,NULL,NULL,0),(131,1016,'ADI-UB5-CLOUD WHITE-42-C918','42','Cloud White',4900000.00,4900000.00,30,NULL,NULL,0),(132,1016,'ADI-UB5-CLOUD WHITE-41-EF3F','41','Cloud White',4900000.00,4900000.00,30,NULL,NULL,0),(133,1017,'LIN-HB7000-PURPLE TWILIGHT-4U-711D','4U','Purple Twilight',3699000.00,3699000.00,40,NULL,NULL,0),(134,1017,'LIN-HB7000-PURPLE TWILIGHT-3U-5A6A','3U','Purple Twilight',3699000.00,3699000.00,40,NULL,NULL,0),(135,1018,'DEC-QUE500-ĐEN-23L-9E28','23L','Đen',999000.00,999000.00,60,NULL,NULL,0),(136,1018,'DEC-QUE500-XANH RÊU-23L-BCA1','23L','Xanh Rêu',999000.00,999000.00,60,NULL,NULL,0),(137,1019,'DEC-KIP100-ĐEN-M-F958','M','Đen',129000.00,129000.00,100,NULL,NULL,0),(138,1019,'DEC-KIP100-ĐEN-L-1685','L','Đen',129000.00,129000.00,100,NULL,NULL,0),(139,1019,'DEC-KIP100-XANH LÁ-M-0111','M','Xanh Lá',129000.00,129000.00,100,NULL,NULL,0),(140,1019,'DEC-KIP100-XANH LÁ-L-EF77','L','Xanh Lá',129000.00,129000.00,100,NULL,NULL,0),(141,1020,'DL-BASKET-NÂU-SIZE 7-FAF0','Size 7','Nâu',350000.00,350000.00,110,NULL,NULL,0),(142,1021,'NKE-PEG41-TRẮNG-42-233E','42','Trắng',3790000.00,3790000.00,60,NULL,NULL,0),(143,1021,'NKE-PEG41-TRẮNG-41-4434','41','Trắng',3790000.00,3790000.00,60,NULL,NULL,0),(144,1021,'NKE-PEG41-ĐEN-42-0DE8','42','Đen',3790000.00,3790000.00,60,NULL,NULL,0),(145,1021,'NKE-PEG41-ĐEN-41-4AD5','41','Đen',3790000.00,3790000.00,60,NULL,NULL,0),(146,1022,'VIC-RYUGA2-ĐEN TÍM-4UG5-792B','4UG5','Đen Tím',3900000.00,3900000.00,30,NULL,NULL,0);
/*!40000 ALTER TABLE `product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `brand_id` bigint DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `search_tag` varchar(255) DEFAULT NULL,
  `is_vectorized` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brand_id` (`brand_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=1023 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1001,'Vợt Pickleball JOOLA Ben Johns Perseus 3S','Phiên bản vợt Pickleball hiệu suất cao áp dụng công nghệ viền HyperFoam.',1,'active','vợt-pickleball-joola-ben-johns-perseus-3s','JOO-PER3S',NULL,_binary ''),(1002,'Giày Thể Thao Biti\'s Hunter Evo Nữ','Giày thể thao Biti\'s Hunter Evo thiết kế trẻ trung, quai Si PU cao cấp.',3,'active','giày-thể-thao-biti\'s-hunter-evo-nữ','BITIS-EVO',NULL,_binary ''),(1003,'Giày chạy bộ nam nhẹ thoải mái - Run One','Đế xốp bằng EVA giúp giảm tác động khi tập luyện.',2,'active','giày-chạy-bộ-nam-nhẹ-thoải-mái---run-one','DEC-RUNONE',NULL,_binary ''),(1004,'Băng bảo vệ khớp gối FowerMax Pro','Băng bảo vệ khớp gối, co giãn 4 chiều hỗ trợ phục hồi khớp gối hiệu quả.',4,'active','băng-bảo-vệ-khớp-gối-fowermax-pro','FWM-KNEE',NULL,_binary ''),(1005,'Áo thun thể thao nam thoáng khí - 100 Dry','Áo thun siêu nhẹ, công nghệ Dry+ khử mùi, khô thoáng nhanh.',2,'active','áo-thun-thể-thao-nam-thoáng-khí---100-dry','DEC-100DRY',NULL,_binary ''),(1006,'Vợt Cầu Lông Yonex Astrox 88D Pro 2024','Vợt cầu lông thiên về lối đánh tấn công mạnh mẽ với các pha đập cầu uy lực.',5,'active','vợt-cầu-lông-yonex-astrox-88d-pro-2024','YNX-AX88DP',NULL,_binary ''),(1007,'Giày bóng đá Kamito Artista KL TF','Sử dụng da Kangaroo cao cấp siêu mềm mại, tối ưu phom chân bè người Việt.',6,'active','giày-bóng-đá-kamito-artista-kl-tf','KMT-ARTTF',NULL,_binary ''),(1008,'Quả bóng đá Động Lực UHV 2.05','Quả bóng đá tiêu chuẩn thi đấu, độ nảy và độ bền ma sát cực cao.',7,'active','quả-bóng-đá-động-lực-uhv-2.05','DL-UHV205',NULL,_binary ''),(1009,'Giày bóng rổ Jogarbola Comet Star','Giày bóng rổ cổ cao bảo vệ mắt cá chân hiệu quả khi bật nhảy chuyển hướng.',7,'active','giày-bóng-rổ-jogarbola-comet-star','JGB-COMET',NULL,_binary ''),(1010,'Giày chạy bộ Asics Gel-Kayano 31','Giày chạy bộ hỗ trợ vòm chân tối đa, đệm Gel-Kayano giảm chấn tuyệt đối.',8,'active','giày-chạy-bộ-asics-gel-kayano-31','ASC-GK31',NULL,_binary ''),(1011,'Kính bơi Nhật Bản VIEW V610','Chống tia UV, chống đọng sương mù, góc nhìn cực rộng chính hãng VIEW.',9,'active','kính-bơi-nhật-bản-view-v610','VIEW-V610',NULL,_binary ''),(1012,'Thảm tập Yoga ICADO cao cấp','Chất liệu TPE 2 lớp đàn hồi, chống trơn trượt tối đa khi thực hành Yoga.',10,'active','thảm-tập-yoga-icado-cao-cấp','ICD-YGMAT',NULL,_binary ''),(1013,'Găng tay Boxing Everlast Pro Style','Găng tay đấm bốc chất liệu da tổng hợp cao cấp, bảo vệ cổ tay tối ưu.',11,'active','găng-tay-boxing-everlast-pro-style','EVR-BOXPRO',NULL,_binary ''),(1014,'Mũ bảo hiểm xe đạp Decathlon Rockrider','Mũ bảo hiểm địa hình siêu nhẹ, thoáng khí và đạt chuẩn an toàn châu Âu.',2,'active','mũ-bảo-hiểm-xe-đạp-decathlon-rockrider','DEC-ROCKMUT',NULL,_binary ''),(1015,'Áo Polo Pickleball ICADO HT603','Thời trang Pickleball cao cấp, thấm mồ hôi và co giãn đa chiều thoải mái.',10,'active','áo-polo-pickleball-icado-ht603','ICD-HT603',NULL,_binary ''),(1016,'Giày chạy bộ Adidas Ultraboost 5','Công nghệ hạt đệm Lightboost hoàn trả năng lượng tối ưu cho runner.',12,'active','giày-chạy-bộ-adidas-ultraboost-5','ADI-UB5',NULL,_binary ''),(1017,'Vợt cầu lông Lining Halbertec 7000','Vợt cầu lông cân bằng hoàn hảo giữa tấn công và phòng thủ linh hoạt.',13,'active','vợt-cầu-lông-lining-halbertec-7000','LIN-HB7000',NULL,_binary ''),(1018,'Balo dã ngoại Quechua NH Escape 500 23L','Thiết kế nhiều ngăn tiện dụng, có đệm lưng êm ái thích hợp trekking dã ngoại.',2,'active','balo-dã-ngoại-quechua-nh-escape-500-23l','DEC-QUE500',NULL,_binary ''),(1019,'Quần short chạy bộ Kiprun Run 100 Nam','Chất liệu siêu nhẹ, mau khô, tích hợp túi khóa đựng chìa khóa và điện thoại.',2,'active','quần-short-chạy-bộ-kiprun-run-100-nam','DEC-KIP100',NULL,_binary ''),(1020,'Quả bóng rổ Động Lực Hunter','Chất liệu da PU cao cấp bám tay tốt, độ nảy tiêu chuẩn thi đấu chuyên nghiệp.',7,'active','quả-bóng-rổ-động-lực-hunter','DL-BASKET',NULL,_binary ''),(1021,'Giày Chạy Bộ Nam Nike Pegasus 41','Dòng giày chạy bộ quốc dân thế hệ mới với đệm ReactX siêu êm ái.',14,'active','giày-chạy-bộ-nam-nike-pegasus-41','NKE-PEG41',NULL,_binary ''),(1022,'Vợt Cầu Lông Victor Thruster K Ryuga II','Cây vợt thiên công mạnh mẽ gắn liền với tên tuổi của Lee Zii Jia.',15,'active','vợt-cầu-lông-victor-thruster-k-ryuga-ii','VIC-RYUGA2',NULL,_binary '');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_items`
--

DROP TABLE IF EXISTS `return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `return_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `return_request_id` bigint DEFAULT NULL,
  `order_item_id` bigint DEFAULT NULL,
  `quantity` int NOT NULL,
  `image_proof` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `return_request_id` (`return_request_id`),
  KEY `order_item_id` (`order_item_id`),
  CONSTRAINT `return_items_ibfk_1` FOREIGN KEY (`return_request_id`) REFERENCES `return_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `return_items_ibfk_2` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_items`
--

LOCK TABLES `return_items` WRITE;
/*!40000 ALTER TABLE `return_items` DISABLE KEYS */;
INSERT INTO `return_items` VALUES (1,1,3,2,'');
/*!40000 ALTER TABLE `return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_requests`
--

DROP TABLE IF EXISTS `return_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `return_requests` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `refund_amount` decimal(38,2) DEFAULT NULL,
  `reason` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `return_requests_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `return_requests_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_requests`
--

LOCK TABLES `return_requests` WRITE;
/*!40000 ALTER TABLE `return_requests` DISABLE KEYS */;
INSERT INTO `return_requests` VALUES (1,3,3,'APPROVED',15500000.00,'[Đổi sản phẩm] Nhận sai sản phẩm / sai màu / sai size','2026-05-21 21:23:06');
/*!40000 ALTER TABLE `return_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comment` text,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_reply` text,
  `replied_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_chk_1` CHECK (((`rating` >= 1) and (`rating` <= 5)))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,2,1003,5,'Giày đi êm cực kỳ, xỏ vào chạy 5 vòng sân vận động Bách Khoa không thấy mỏi chân!','Tuyệt vời','2026-05-01 03:00:00','ok','2026-05-22 00:47:06.038000'),(2,2,1002,4,'Giày Biti\'s Hunter thiết kế trẻ trung, chất đi rất êm phom chuẩn. Tuy nhiên giao hàng hơi chậm một chút.','Giày đẹp','2026-05-02 02:30:00','OK \n\n','2026-05-22 00:52:45.270000'),(3,2,1006,5,'Vợt Yonex Astrox 88D Pro đập cầu rất uy lực, đúng là hàng chính hãng có khác.','Vợt xịn','2026-05-03 08:45:00',NULL,NULL),(4,3,1001,5,'Sản phẩm tốt , giao hàng nhanh support tận tình','Sản Phẩm rất tốt ','2026-05-21 20:23:36',NULL,NULL);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ADMIN'),(2,'CUSTOMER'),(3,'ROLE_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_policies`
--

DROP TABLE IF EXISTS `store_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_policies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `policy_key` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category` varchar(50) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `display_order` int DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `is_vectorized` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `policy_key` (`policy_key`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_policies`
--

LOCK TABLES `store_policies` WRITE;
/*!40000 ALTER TABLE `store_policies` DISABLE KEYS */;
INSERT INTO `store_policies` VALUES (1,'doi_tra','Chính Sách Đổi Trả','<p>Tại SportZone, chúng tôi luôn mong muốn mang đến trải nghiệm mua sắm tốt nhất cho khách hàng. Vì vậy, SportZone áp dụng chính sách đổi trả linh hoạt và minh bạch nhằm đảm bảo quyền lợi của khách hàng trong quá trình mua sắm.</p><h2><strong>1. Thời gian đổi trả</strong></h2><ul><li>Hỗ trợ đổi trả miễn phí trong vòng <strong>30 ngày</strong> kể từ ngày khách hàng nhận được sản phẩm.</li></ul><h2><strong>2. Điều kiện áp dụng đổi trả</strong></h2><p>Sản phẩm được chấp nhận đổi trả khi đáp ứng đầy đủ các điều kiện sau:</p><ul><li>Còn nguyên tem, nhãn mác và bao bì sản phẩm.</li><li>Chưa qua sử dụng, chưa bị giặt hoặc hư hỏng do tác động bên ngoài.</li><li>Còn đầy đủ hộp, phụ kiện và quà tặng kèm theo (nếu có).</li><li>Có hóa đơn mua hàng hoặc thông tin đơn hàng hợp lệ.</li></ul><h2><strong>3. Trường hợp được hỗ trợ hoàn tiền</strong></h2><p>SportZone hỗ trợ hoàn tiền 100% đối với các trường hợp:</p><ul><li>Sản phẩm bị lỗi từ nhà sản xuất.</li><li>Giao sai sản phẩm, sai kích thước hoặc sai mẫu mã so với đơn đặt hàng.</li></ul><h2><strong>4. Chi phí vận chuyển đổi trả</strong></h2><ul><li>SportZone sẽ chịu toàn bộ phí vận chuyển đối với các trường hợp đổi trả do lỗi sản phẩm hoặc lỗi từ phía cửa hàng.</li><li>Với các trường hợp đổi size hoặc đổi theo nhu cầu cá nhân, chi phí vận chuyển có thể được áp dụng tùy khu vực.</li></ul><h2><strong>5. Thông tin liên hệ hỗ trợ</strong></h2><p>Khách hàng có thể liên hệ bộ phận chăm sóc khách hàng để được hỗ trợ nhanh chóng:</p><ul><li>Hotline: 1800-1234</li><li>Email: <a href=\"mailto:support@sportzone.vn\" rel=\"noopener noreferrer\" target=\"_blank\">support@sportzone.vn</a></li></ul><p>SportZone xin chân thành cảm ơn quý khách đã tin tưởng và lựa chọn sản phẩm của chúng tôi.</p>','POLICY',1,1,'2026-05-22 01:52:15',1),(2,'chinh_sach_chung','Chính Sách Chung','Hàng chính hãng 100%, có tem và chứng nhận xuất xứ đầy đủ.\nBảo hành theo chính sách của từng hãng sản xuất.\nĐổi trả trong vòng 30 ngày nếu sản phẩm có lỗi hoặc không đúng mô tả.\nBảo mật thông tin khách hàng tuyệt đối theo chính sách bảo mật dữ liệu.\nHỗ trợ khách hàng 7 ngày/tuần từ 8h sáng đến 22h tối.','POLICY',1,2,NULL,1),(3,'bao_hanh','Chính Sách Bảo Hành','Giày thể thao: Bảo hành 6 tháng đối với lỗi đế và 3 tháng đối với lỗi chất liệu.\nQuần áo thể thao: Bảo hành 30 ngày đối với lỗi đường may.\nDụng cụ thể thao (vợt, bóng...): Bảo hành theo hãng, thường từ 3-12 tháng.\nKhách hàng mang sản phẩm đến cửa hàng hoặc gửi về địa chỉ SportZone để được xử lý bảo hành.','POLICY',1,3,NULL,1),(4,'giao_hang','Chính Sách Giao Hàng','<p>SportZone cam kết mang đến dịch vụ giao hàng nhanh chóng, an toàn và tiện lợi nhằm giúp khách hàng nhận được sản phẩm trong thời gian sớm nhất.</p><h2><strong>1. Phạm vi giao hàng</strong></h2><ul><li>Hỗ trợ giao hàng trên toàn quốc tại tất cả 63 tỉnh thành.</li><li>Áp dụng cho mọi sản phẩm được phân phối chính thức bởi SportZone.</li></ul><h2><strong>2. Thời gian giao hàng</strong></h2><h3>Nội thành TP.HCM và Hà Nội</h3><ul><li>Thời gian giao hàng dự kiến từ <strong>1 – 2 ngày làm việc</strong>.</li></ul><h3>Các tỉnh thành khác</h3><ul><li>Thời gian giao hàng dự kiến từ <strong>3 – 5 ngày làm việc</strong> tùy khu vực và đơn vị vận chuyển.</li></ul><blockquote>Lưu ý: Thời gian giao hàng có thể thay đổi trong các dịp lễ, Tết hoặc do điều kiện thời tiết, giao thông.</blockquote><h2><strong>3. Phí vận chuyển</strong></h2><ul><li>Miễn phí giao hàng đối với đơn hàng có giá trị từ <strong>500.000đ</strong> trở lên.</li><li>Đối với đơn hàng dưới <strong>500.000đ</strong>, phí vận chuyển tiêu chuẩn dao động từ:</li><li class=\"ql-indent-1\"><strong>30.000đ – 50.000đ</strong></li><li class=\"ql-indent-1\">Tùy thuộc vào khu vực nhận hàng và đơn vị vận chuyển.</li></ul><h2><strong>4. Theo dõi đơn hàng</strong></h2><p>Khách hàng có thể theo dõi trạng thái đơn hàng trực tiếp trên website SportZone thông qua:</p><ul><li>Mã đơn hàng</li><li>Tài khoản cá nhân</li><li>Thông báo cập nhật trạng thái giao hàng</li></ul><h2><strong>5. Hỗ trợ khách hàng</strong></h2><p>Nếu có bất kỳ vấn đề nào liên quan đến vận chuyển hoặc giao nhận, vui lòng liên hệ:</p><ul><li>Hotline: 1800-1234</li><li>Email: <a href=\"mailto:support@sportzone.vn\" rel=\"noopener noreferrer\" target=\"_blank\">support@sportzone.vn</a></li></ul><p>SportZone luôn nỗ lực mang đến trải nghiệm mua sắm thể thao nhanh chóng, tiện lợi và đáng tin cậy cho mọi khách hàng.</p>','SHIPPING',1,1,'2026-05-22 01:53:18',1),(5,'thanh_toan','Phương Thức Thanh Toán','<p>Nhằm mang đến trải nghiệm mua sắm tiện lợi và linh hoạt, SportZone hỗ trợ nhiều phương thức thanh toán an toàn và nhanh chóng dành cho khách hàng trên toàn quốc.</p><h2><strong>1. Thanh toán khi nhận hàng (COD)</strong></h2><ul><li>Khách hàng thanh toán trực tiếp bằng tiền mặt khi nhận được sản phẩm.</li><li>Áp dụng trên toàn quốc.</li><li>Phù hợp với khách hàng muốn kiểm tra hàng trước khi thanh toán.</li></ul><h2><strong>2. Thanh toán qua ví điện tử MoMo</strong></h2><ul><li>Hỗ trợ thanh toán nhanh chóng thông qua ví điện tử MoMo.</li><li>Giao dịch bảo mật, tiện lợi chỉ với vài thao tác.</li><li>Có thể áp dụng các chương trình ưu đãi hoặc hoàn tiền từ MoMo.</li></ul><h2><strong>3. Thanh toán qua VNPay</strong></h2><ul><li>Thanh toán thông qua cổng thanh toán VNPay.</li><li>Hỗ trợ hầu hết các ngân hàng nội địa tại Việt Nam.</li><li>Cho phép thanh toán bằng:</li><li class=\"ql-indent-1\">Internet Banking</li><li class=\"ql-indent-1\">QR Code</li><li class=\"ql-indent-1\">Thẻ ATM nội địa</li></ul><h2><strong>4. Thanh toán bằng thẻ tín dụng / ghi nợ quốc tế</strong></h2><p>SportZone hỗ trợ thanh toán trực tuyến bằng các loại thẻ quốc tế phổ biến:</p><ul><li>Visa</li><li>Mastercard</li><li>JCB</li></ul><p>Hệ thống thanh toán được bảo mật nhằm đảm bảo an toàn thông tin cho khách hàng.</p><h2><strong>5. Chuyển khoản ngân hàng</strong></h2><p>Khách hàng có thể thanh toán qua chuyển khoản ngân hàng với các ngân hàng hỗ trợ:</p><ul><li>Vietcombank</li><li>Techcombank</li><li>MB Bank</li></ul><p>Sau khi chuyển khoản thành công, vui lòng gửi thông tin giao dịch để SportZone xác nhận và xử lý đơn hàng nhanh chóng.</p><h2><strong>6. Lưu ý khi thanh toán</strong></h2><ul><li>Vui lòng kiểm tra kỹ thông tin đơn hàng trước khi thanh toán.</li><li>Đơn hàng chỉ được xác nhận sau khi thanh toán thành công hoặc được xác nhận COD.</li><li>Trong trường hợp phát sinh lỗi thanh toán, khách hàng vui lòng liên hệ bộ phận hỗ trợ để được xử lý kịp thời.</li></ul><h2><strong>7. Thông tin hỗ trợ</strong></h2><p>Nếu cần hỗ trợ về thanh toán, vui lòng liên hệ:</p><ul><li>Hotline: 1800-1234</li><li>Email: <a href=\"mailto:support@sportzone.vn\" rel=\"noopener noreferrer\" target=\"_blank\">support@sportzone.vn</a></li></ul><p>SportZone cam kết mang đến trải nghiệm thanh toán an toàn, minh bạch và thuận tiện cho mọi khách hàng.</p>','PAYMENT',1,1,'2026-05-22 01:54:18',1),(6,'khuyen_mai','Chương Trình Ưu Đãi','Giảm đến 30% cho nhiều sản phẩm thể thao hot trong năm.\nFlash Sale hàng tuần vào thứ 6 với giá giảm sâu.\nThành viên VIP (đơn hàng tích lũy trên 5 triệu) giảm thêm 5% cho mọi đơn hàng.\nĐăng ký nhận newsletter qua email để nhận mã giảm giá độc quyền.\nChương trình giới thiệu bạn bè: nhận voucher 50.000đ cho mỗi lượt giới thiệu thành công.','PROMOTION',1,1,NULL,1),(7,'lien_he','Thông Tin Liên Hệ','Hotline: 1800-1234 (miễn phí cước gọi, hỗ trợ 8h-22h).\nEmail: support@sportzone.vn (phản hồi trong vòng 24h làm việc).\nFacebook: /SportZoneVN.\nZalo OA: SportZone Official.\nĐịa chỉ cửa hàng: 123 Nguyễn Trãi, Quận 1, TP.HCM.\nGiờ làm việc: 8h sáng đến 22h tối, 7 ngày trong tuần.','SUPPORT',1,1,NULL,1),(8,'bang_size','Bảng Size Tham Khảo','Giày thể thao: EU 39 tương đương US 6.5/VN 24.5cm, EU 40 = US 7/VN 25cm, EU 41 = US 8/VN 26cm, EU 42 = US 8.5/VN 26.5cm, EU 43 = US 9.5/VN 27.5cm, EU 44 = US 10/VN 28cm.\nQuần áo thể thao: S (44-48kg), M (48-55kg), L (55-65kg), XL (65-75kg), 2XL (75-90kg).\nLưu ý: Nên chọn size lớn hơn 0.5cm nếu chân rộng hoặc mu chân cao.\nXem bảng size chi tiết cho từng sản phẩm trên trang sản phẩm.','SUPPORT',1,2,NULL,1);
/*!40000 ALTER TABLE `store_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_category_interest`
--

DROP TABLE IF EXISTS `user_category_interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_category_interest` (
  `user_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`category_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `user_category_interest_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_category_interest_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_category_interest`
--

LOCK TABLES `user_category_interest` WRITE;
/*!40000 ALTER TABLE `user_category_interest` DISABLE KEYS */;
INSERT INTO `user_category_interest` VALUES (3,2),(3,3);
/*!40000 ALTER TABLE `user_category_interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `level` bigint DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `rank` varchar(20) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT 'ACTIVE',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@bachkhoa.vn','0901234567','$2a$10$xn3LI/AjqicFYZFruSwve.681477XaVNaUQbr1gioaWPn4t1KsnmG',' Tiến Anh','Admin',1,1000,NULL,NULL,NULL,'2026-05-21 17:43:10','ACTIVE'),(2,NULL,'0987654321','$2a$10$xn3LI/AjqicFYZFruSwve.681477XaVNaUQbr1gioaWPn4t1KsnmG',' Ronaldo','Cristiano',3,500,NULL,NULL,'2026-05-21 18:59:46','2026-05-21 17:43:10','ACTIVE'),(3,'thiet.nguyen6868@hcmut.edu.vn','0969036564','$2a$10$uFL7yZpW8NF89wB/khbTBezqCP6uxsKvH75W1UkZj75L5pHANzqhm','Thiết','Nguyễn',1,NULL,NULL,NULL,'2026-05-22 02:41:07','2026-05-21 10:46:06','ACTIVE');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchers`
--

DROP TABLE IF EXISTS `vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vouchers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `discount_amount` decimal(38,2) DEFAULT NULL,
  `min_order_value` decimal(38,2) DEFAULT NULL,
  `usage_limit` int DEFAULT NULL,
  `used_count` int DEFAULT '0',
  `expiry_date` datetime DEFAULT NULL,
  `rank` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` bit(1) DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `FKrnyik9ma4hf1erd4nynwvnq2c` (`brand_id`),
  KEY `FKde2rrgktr2ehhkdosv4uotdcg` (`category_id`),
  CONSTRAINT `FKde2rrgktr2ehhkdosv4uotdcg` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `FKrnyik9ma4hf1erd4nynwvnq2c` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchers`
--

LOCK TABLES `vouchers` WRITE;
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
INSERT INTO `vouchers` VALUES (1,'GIAM50K',50000.00,200000.00,100,12,'2026-12-31 23:59:59',NULL,'2026-05-21 17:43:10',NULL,NULL,NULL),(2,'SALE20',20000.00,500000.00,200,1,'2026-12-31 23:59:59',NULL,'2026-05-21 17:43:10',NULL,NULL,NULL),(3,'FREESHIP',30000.00,100000.00,500,51,'2026-12-31 23:59:59',NULL,'2026-05-21 17:43:10',NULL,NULL,NULL),(4,'NEWUSER',50000.00,0.00,1000,121,'2026-06-30 23:59:59',NULL,'2026-05-21 17:43:10',NULL,NULL,NULL),(5,'CC',4.00,2.00,5,0,'2026-05-28 00:00:00',NULL,'2026-05-21 12:01:28',_binary '',NULL,NULL);
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-22 17:11:21
