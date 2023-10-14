-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 14, 2023 lúc 10:02 AM
-- Phiên bản máy phục vụ: 8.0.31
-- Phiên bản PHP: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duong-laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_banner`
--

DROP TABLE IF EXISTS `db_banner`;
CREATE TABLE IF NOT EXISTS `db_banner` (
  `id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `updated_by` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `status` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_brand`
--

DROP TABLE IF EXISTS `db_brand`;
CREATE TABLE IF NOT EXISTS `db_brand` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `metakey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `db_brand`
--

INSERT INTO `db_brand` (`id`, `name`, `slug`, `image`, `sort_order`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(10, 'Samurai', 'samurai', 'samurai.jpg', 0, 'a', 'a', '2023-10-13 07:17:19', 1, '2023-10-13 07:17:19', NULL, 1),
(11, 'Katana', 'katana', 'katana.jpg', 0, 'a', 'a', '2023-10-13 07:17:43', 1, '2023-10-13 07:17:43', NULL, 1),
(7, 'Kami', 'kami', 'kami.jpg', 0, 'a', 'a', '2023-10-13 07:15:54', 1, '2023-10-13 07:15:54', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_category`
--

DROP TABLE IF EXISTS `db_category`;
CREATE TABLE IF NOT EXISTS `db_category` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int UNSIGNED DEFAULT '0',
  `sort_order` int UNSIGNED DEFAULT NULL,
  `metakey` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadesc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `slug`, `image`, `parent_id`, `sort_order`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(28, 'Samurai', 'samurai', 'samurai.jpg', 0, 0, 'Samurai', 'Samurai', '2023-10-13 07:07:11', 1, '2023-10-13 07:07:11', NULL, 1),
(29, 'Kami', 'kami', 'kami.jpg', 0, 0, 'Kami', 'Kami', '2023-10-13 07:12:07', 1, '2023-10-13 07:12:07', NULL, 1),
(27, 'Katana', 'katana', 'katana.jpg', 0, 0, 'Katana', 'Katana', '2023-10-13 07:06:49', 1, '2023-10-13 07:06:49', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_config`
--

DROP TABLE IF EXISTS `db_config`;
CREATE TABLE IF NOT EXISTS `db_config` (
  `id` bigint NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zalo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_by` int NOT NULL,
  `updated` int NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_contact`
--

DROP TABLE IF EXISTS `db_contact`;
CREATE TABLE IF NOT EXISTS `db_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user id` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `replay_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `db_contact`
--

INSERT INTO `db_contact` (`id`, `user id`, `name`, `email`, `phone`, `title`, `content`, `replay_id`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(5, NULL, 'Ichi Mogi', 'duong@gmail.com', '1', NULL, NULL, NULL, '2023-10-13 05:21:16', '2023-10-13 05:21:16', NULL, 1),
(2, NULL, 'd', 'd', '1', '1', '1', NULL, '2023-06-14 06:27:14', '2023-06-14 06:27:14', NULL, 1),
(3, NULL, 'd', 'd', '1', '1', '1', NULL, '2023-06-14 06:27:14', '2023-06-14 06:27:14', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_menu`
--

DROP TABLE IF EXISTS `db_menu`;
CREATE TABLE IF NOT EXISTS `db_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_id` int UNSIGNED DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `db_menu`
--

INSERT INTO `db_menu` (`id`, `name`, `link`, `table_id`, `type`, `position`, `parent_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Katana', '/', NULL, 'dsf', 'mainmenu', 0, '2023-06-09 00:23:20', 1, '2023-10-13 07:59:11', 1, 1),
(2, 'Sản phẩm', '/san-pham', NULL, 'sà', 'mainmenu', 0, '2023-06-09 00:24:27', 1, '2023-06-09 00:24:27', 1, 1),
(5, 'Liên hệ', '/lien-he', NULL, 'sà', 'mainmenu', 0, '2023-06-17 01:21:46', 1, '2023-06-09 00:24:27', 1, 1),
(6, 'Danh Mục Theo Loại', '/danh-muc-san-pham', NULL, 'sà', 'mainmenu', 0, '2023-06-17 03:35:28', 1, '2023-06-09 00:24:27', 1, 1),
(8, 'Rolls-Royce', '/danh-muc-san-pham/rolls-royce', NULL, 'sà', 'mainmenu', 6, '2023-06-17 03:53:06', 1, '2023-06-09 00:24:27', 1, 1),
(9, 'Lamborghini', '/danh-muc-san-pham/lamborghini', NULL, 'sà', 'mainmenu', 6, '2023-06-17 04:00:56', 1, '2023-06-09 00:24:27', 1, 1),
(3, 'Giới thiệu', '/gioi-thieu', NULL, 'Giới thiệu', 'mainmenu', 0, '2023-09-28 03:26:15', 1, '2023-09-28 03:26:15', NULL, 1),
(13, 'Katana', '/danh-muc-san-pham/Katana', NULL, 'Katana', NULL, NULL, '2023-10-13 08:17:20', 1, '2023-10-13 08:17:20', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_order`
--

DROP TABLE IF EXISTS `db_order`;
CREATE TABLE IF NOT EXISTS `db_order` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `db_order`
--

INSERT INTO `db_order` (`id`, `name`, `phone`, `email`, `address`, `note`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(6, 'sfsfsa', NULL, NULL, NULL, '23', '2023-06-14 07:27:56', '2023-10-13 05:23:04', 1, 1),
(7, 'fsadf', '1234', 'hiêu', 'sàgdfgh', '3243', '2023-06-14 07:28:39', '2023-06-14 07:28:39', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_orderdetail`
--

DROP TABLE IF EXISTS `db_orderdetail`;
CREATE TABLE IF NOT EXISTS `db_orderdetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `price` float NOT NULL,
  `qty` int UNSIGNED NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_post`
--

DROP TABLE IF EXISTS `db_post`;
CREATE TABLE IF NOT EXISTS `db_post` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `topic_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metakey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `db_post`
--

INSERT INTO `db_post` (`id`, `topic_id`, `title`, `detail`, `image`, `type`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(11, 16, 'Immerse yourself in the world of Samurai precision with our meticulously crafted Katana Sword. This symbol of elegance, strength, and tradition offers a seamless fusion of expert craftsmanship and supreme functionality. Each stroke of its blade is a testament to the resilient spirit of the Samurai, and its impressive detail work is a nod to the artistry of the past. A must-have for collectors and enthusiasts alike, the Katana Sword\'s unparalleled blend of heritage and quality has catapulted it to global acclaim. Experience the legacy of a timeless masterpiece today, and let its power, grace, and enduring appeal resonate with your spirit.', 'Itoito-nomi', 'Itoito-nomi.webp', 'Katana', 'kata', 'a', '2023-10-13 08:25:30', 1, '2023-10-13 08:25:30', NULL, 1),
(12, 16, 'Introducing the Katana, a masterpiece meticulously crafted by our senior sword maker. With unparalleled expertise and a deep respect for tradition, each Katana embodies the essence of Japanese swordsmanship. The blade, meticulously hand-forged from the finest steel, exhibits exceptional sharpness, strength, and resilience, enabling precise and devastating strikes. Its elegant curvature, known as the sori, enhances the cutting power and balance of the blade. The meticulously crafted tsuka (handle) provides a comfortable and secure grip, allowing for fluid and controlled movements. Every detail, from the intricately designed tsuba (handguard) to the meticulously wrapped sageo (cord)', 'katana', 'Samurai.webp', 'Kami', 'a', 'a', '2023-10-13 08:25:12', 1, '2023-10-13 08:25:12', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_product`
--

DROP TABLE IF EXISTS `db_product`;
CREATE TABLE IF NOT EXISTS `db_product` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `brand_id` int UNSIGNED NOT NULL,
  `name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float DEFAULT NULL,
  `pricesale` float DEFAULT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int UNSIGNED NOT NULL,
  `detail` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `db_product`
--

INSERT INTO `db_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `price`, `pricesale`, `image`, `qty`, `detail`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(54, 27, 11, 'Samehada', 'samehada', 999, 785, 'samehada.webp', 1, '100% pure hand-forged and sharpened to create a perfect blade, it\'s a sharpened and battle ready katana.\r\nFully handmade real katana swords with stunning workmanship.\r\nBlade comes with a full tang which greatly enhances the strength of the sword. the blade is made of carbon steel with perfect sharpeness.\r\nTsuba is made of alloy metal, high quality wooden for saya, tsuka is tightly wrapped over imitation ray skin and light-blue cotton cord.', 'a', 'a', '2023-10-13 07:45:20', 1, '2023-10-13 07:45:20', NULL, 1),
(53, 27, 11, 'Tanjizo', 'tanjizo', 790, 555, 'tanjizo.webp', 1, '100% pure hand-forged and sharpened to create a perfect blade, it\'s a sharpened and battle ready katana.\r\nFully handmade real katana swords with stunning workmanship.\r\nBlade comes with a full tang which greatly enhances the strength of the sword. the blade is made of carbon steel with perfect sharpeness.\r\nTsuba is made of alloy metal, high quality wooden for saya, tsuka is tightly wrapped over imitation ray skin and light-blue cotton cord.', 'a', 'a', '2023-10-13 07:44:48', 1, '2023-10-13 07:44:48', NULL, 1),
(45, 28, 10, 'Ichi mogi', 'ichi-mogi', 762, 237, 'ichi-mogi.webp', 1, 'Overall length: 102cm, handle length (tsuka): 72cm, blade length (nagasa): 27, blade material: t10 carbon steel, blade sharp: sharpened, blade width: 1.2 inches, scabbard material (saya): wood, weight: 1.15kg', 'ichi', 'a', '2023-10-13 07:27:54', 1, '2023-10-13 07:27:54', NULL, 1),
(46, 28, 10, 'Uno nyc', 'uno-nyc', NULL, 999, 'uno-nyc.webp', 1, 'Red blade, 1060 carbon steel, handmade, full tang, sharpened, 40.5 inches, red and black scabbard, alloy fittings\r\n.Hand forged red 1060 folded steel blade, hand sharpened, full tang,\r\n.Overall length: 40.5 inches, nagasa length: 28.3 inches, handle length: 10.2 inches, blade sharp: sharpened, blade material: 1060 carbon steel, blade width: 1.18inches, saya material: wood, weight: 2.65 lbs', 'truc', '12', '2023-10-13 07:34:00', 1, '2023-10-13 07:34:00', NULL, 1),
(47, 28, 10, 'Ito noa', 'ito-noa', 899, 125, 'ito-noa.webp', 5, '100% pure hand-forged and sharpened to create a perfect blade, it\'s a sharpened and battle ready katana.\r\nFully handmade real katana swords with stunning workmanship.\r\nBlade comes with a full tang which greatly enhances the strength of the sword. the blade is made of carbon steel with perfect sharpeness.\r\nTsuba is made of alloy metal, high quality wooden for saya, tsuka is tightly wrapped over imitation ray skin and light-blue cotton cord.', 'a', 'a', '2023-10-13 07:35:45', 1, '2023-10-13 07:35:45', NULL, 1),
(50, 28, 10, 'Mami nue', 'mami-nue', 909, 888, 'mami-nue.webp', 3, '100% pure hand-forged and sharpened to create a perfect blade, it\'s a sharpened and battle ready katana.\r\nFully handmade real katana swords with stunning workmanship.\r\nBlade comes with a full tang which greatly enhances the strength of the sword. the blade is made of carbon steel with perfect sharpeness.\r\nTsuba is made of alloy metal, high quality wooden for saya, tsuka is tightly wrapped over imitation ray skin and light-blue cotton cord.', 'a', 'a', '2023-10-13 07:41:07', 1, '2023-10-13 07:41:07', NULL, 1),
(51, 27, 11, 'Kite ozu', 'kite-ozu', 999, 999, 'kite-ozu.webp', 1, '100% pure hand-forged and sharpened to create a perfect blade, it\'s a sharpened and battle ready katana.\r\nFully handmade real katana swords with stunning workmanship.\r\nBlade comes with a full tang which greatly enhances the strength of the sword. the blade is made of carbon steel with perfect sharpeness.\r\nTsuba is made of alloy metal, high quality wooden for saya, tsuka is tightly wrapped over imitation ray skin and light-blue cotton cord.', 'a', 'a', '2023-10-13 07:42:50', 1, '2023-10-13 07:42:50', NULL, 1),
(52, 27, 11, 'Suchiro', 'suchiro', 10, 1, 'suchiro.webp', 9, '100% pure hand-forged and sharpened to create a perfect blade, it\'s a sharpened and battle ready katana.\r\nFully handmade real katana swords with stunning workmanship.\r\nBlade comes with a full tang which greatly enhances the strength of the sword. the blade is made of carbon steel with perfect sharpeness.\r\nTsuba is made of alloy metal, high quality wooden for saya, tsuka is tightly wrapped over imitation ray skin and light-blue cotton cord.', 'a', 'a', '2023-10-13 07:44:11', 1, '2023-10-13 07:44:11', NULL, 1),
(42, 29, 7, 'momonogi', 'momonogi', 899, 599, 'momonogi.webp', 7, 'Overall length: 102cm, handle length (tsuka): 72cm, blade length (nagasa): 27, blade material: t10 carbon steel, blade sharp: sharpened, blade width: 1.2 inches, scabbard material (saya): wood, weight: 1.15kg', 'momonogi', 'a', '2023-10-13 07:21:40', 1, '2023-10-13 07:21:40', NULL, 1),
(43, 29, 10, 'Hikari', 'hikari', 777, 555, 'hikari.webp', 9, 'Overall length: 150cm, handle length (tsuka): 80cm, blade length (nagasa): 27, blade material: t10 carbon steel, blade sharp: sharpened, blade width: 1.0 inches, scabbard material (saya): wood, weight: 1.0kg', 'hikari', 'a', '2023-10-13 07:23:35', 1, '2023-10-13 07:23:35', NULL, 1),
(44, 29, 7, 'aozawa', 'aozawa', 589, 435, 'aozawa.webp', 2, 'Overall length: 102cm, handle length (tsuka): 72cm, blade length (nagasa): 27, blade material: t10 carbon steel, blade sharp: sharpened, blade width: 1.2 inches, scabbard material (saya): wood, weight: 1.15kg', 'aoza', 'a', '2023-10-13 07:25:20', 1, '2023-10-13 07:25:20', NULL, 1),
(41, 29, 7, 'kana', 'kana', 999, 599, 'kana.webp', 5, 'Key features: katana, handmade, full tang, white scabbard, blade polished, base-sharp, alloy fittings\r\nFully functional samurai sword work of art, stunning workmanship and attention to detail.\r\nHand lacquered wooden saya protects blade, handsome color scheme.\r\nOverall length: 40.5 inches, nagasa length: 28.3 inches, handle length: 10.2 inches, blade sharp: sharpened, blade material: 1095 carbon steel, blade width: 1.18 inches, saya material: wood, weight: 2.65 lbs', 'Kami', 'a', '2023-10-13 07:19:56', 1, '2023-10-13 07:19:56', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_productsale`
--

DROP TABLE IF EXISTS `db_productsale`;
CREATE TABLE IF NOT EXISTS `db_productsale` (
  `id` bigint NOT NULL,
  `product_id` int NOT NULL,
  `pricesale` double NOT NULL,
  `qty` int NOT NULL,
  `date_begin` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_by` int NOT NULL,
  `updated_by` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_productstore`
--

DROP TABLE IF EXISTS `db_productstore`;
CREATE TABLE IF NOT EXISTS `db_productstore` (
  `id` bigint NOT NULL,
  `product_id` int NOT NULL,
  `price` double NOT NULL,
  `qty` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_by` int NOT NULL,
  `updated_by` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_slider`
--

DROP TABLE IF EXISTS `db_slider`;
CREATE TABLE IF NOT EXISTS `db_slider` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `image`, `sort_order`, `position`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(7, 'Slider 2', 'Slider 2', 'Slider 2.jpg', 0, 'slidershow', '2023-06-19 06:08:43', 1, '2023-06-19 06:08:43', NULL, 1),
(11, 'Slider 1', 'Slider 1', 'Slider 1.webp', 0, 'slidershow', '2023-06-19 06:10:10', 1, '2023-06-19 06:10:10', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_topic`
--

DROP TABLE IF EXISTS `db_topic`;
CREATE TABLE IF NOT EXISTS `db_topic` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int NOT NULL,
  `metakey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `db_topic`
--

INSERT INTO `db_topic` (`id`, `name`, `parent_id`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(16, 'Top Thanh Đại Bảo Kiếm', 0, 'a', 'a', '2023-10-13 08:18:48', 1, '2023-10-13 08:18:48', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

DROP TABLE IF EXISTS `db_user`;
CREATE TABLE IF NOT EXISTS `db_user` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id`, `name`, `email`, `phone`, `username`, `password`, `address`, `image`, `roles`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(4, 'phanhieu', 'Hieuecquot39@gmail.com', '0349544297', 'phan đình hiếu', '123456', 'thủ đức', '.jpg', 'người dùng', '2023-09-28 05:46:29', 1, '2023-09-28 05:46:29', NULL, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
