-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2025 at 09:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movingbazaar_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `mobile` varchar(24) DEFAULT NULL,
  `alternate_mobile` varchar(24) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `landmark` varchar(128) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `city` varchar(256) NOT NULL DEFAULT 'NULL',
  `area` varchar(256) NOT NULL DEFAULT 'NULL',
  `pincode` varchar(256) DEFAULT NULL,
  `system_pincode` tinyint(4) NOT NULL DEFAULT 1,
  `country_code` int(11) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  `latitude` varchar(64) DEFAULT NULL,
  `longitude` varchar(64) DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `state_id` int(11) DEFAULT NULL,
  `sub_state_id` int(11) DEFAULT NULL,
  `sub_state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `name`, `type`, `mobile`, `alternate_mobile`, `address`, `landmark`, `area_id`, `city_id`, `city`, `area`, `pincode`, `system_pincode`, `country_code`, `state`, `country`, `latitude`, `longitude`, `is_default`, `state_id`, `sub_state_id`, `sub_state`) VALUES
(1, 1, 'saddam', 'home', '0526459465', '', 'Khalidhiaya, Abudhabi, UAE', NULL, NULL, 0, '', 'Khalidhiya', '', 1, 0, 'AbuDhabi', 'UAE', NULL, NULL, 1, NULL, NULL, NULL),
(4, 1, 'movingbazaar', 'home', '9876554334', '', 'etslksfdnakd', NULL, NULL, 2, 'Al Khalidhiya', 'Al Khalidhiya', '', 1, 0, 'AbuDhabi', 'UAE', NULL, NULL, 0, NULL, NULL, NULL),
(7, 8, 'arshad', 'office', '0551529945', '9585465225', 'test address', NULL, NULL, 1, 'Abudhabi', 'Mussafah', '00000', 0, 0, 'Abu dhabi', 'United arab Emirates', NULL, NULL, 0, NULL, NULL, NULL),
(9, 14, 'ARSHAD', 'office', '0551529945', '', 'DXB', NULL, NULL, 1, 'Abudhabi', 'DXB', '', 1, 0, 'DUBAI', 'UNITED ARAB EMIRATES', NULL, NULL, 0, NULL, NULL, NULL),
(17, 15, 'arshad', 'home', '509841567', '', '9GM7+42P - Musaffah - MN-2 - Abu Dhabi - United Arab Emirates undefined', NULL, NULL, 20, 'RUWAIS', 'ruwais', '0000', 0, 0, 'Abudhabi', 'UAE', NULL, NULL, 0, 1, 29, 'ruwais'),
(18, 14, 'NELLAI SWEETS', 'home', '0508600250', '', '9GM7+42P - Musaffah - MN-2 - Abu Dhabi - United Arab Emirates undefined', NULL, NULL, 13, 'Dubai', '', '11111', 0, 0, 'Dubai', 'UAE', NULL, NULL, 0, 13, NULL, NULL),
(23, 1, 'ARSHAD', NULL, '0508600250', '', '9GM7+42P - Musaffah - MN-2 - Abu Dhabi - United Arab Emirates undefined', NULL, NULL, 0, '', '', '', 1, 0, 'Dubai', 'UAE', NULL, NULL, 0, 13, NULL, NULL),
(25, 14, 'Arshad', 'home', '551529945', '', '204, lootah building, doha street, al qusais 1 , al qusais,', NULL, NULL, 0, '', '', '', 1, 0, 'Dubai', 'UAE', NULL, NULL, 0, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `city_id` int(11) NOT NULL,
  `zipcode_id` int(11) NOT NULL DEFAULT 0,
  `minimum_free_delivery_order_amount` double NOT NULL DEFAULT 100,
  `delivery_charges` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attribute_set_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `type` varchar(64) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attribute_set_id`, `name`, `type`, `date_created`, `status`) VALUES
(1, 1, 'Weight', NULL, '2024-03-27 06:44:56', 1),
(2, 1, 'Fluid volume', NULL, '2024-03-27 09:59:44', 1),
(3, 1, 'Liter Volume', NULL, '2024-03-27 10:07:19', 1),
(4, 1, 'Flavour', NULL, '2024-03-27 10:11:16', 1),
(5, 1, 'pieces', NULL, '2024-03-29 12:20:55', 1),
(6, 1, 'Weight', NULL, '2024-03-30 11:27:11', 1),
(7, 1, 'Weight', NULL, '2024-03-30 11:27:50', 1),
(8, 1, 'Weight', NULL, '2024-03-30 11:32:17', 1),
(9, 1, 'Weight', NULL, '2024-03-30 11:35:01', 1),
(10, 1, 'Weight', NULL, '2024-04-01 07:59:42', 1),
(11, 1, 'Weight', NULL, '2024-04-04 07:42:20', 1),
(12, 1, 'Flavour', NULL, '2024-04-04 09:22:35', 1),
(13, 1, 'Weight', NULL, '2024-04-04 09:59:10', 1),
(14, 1, 'COLOR', NULL, '2024-04-05 11:14:02', 1),
(15, 1, 'COLOR', NULL, '2024-04-05 11:20:46', 1),
(16, 1, 'Flavour', NULL, '2024-04-05 12:29:40', 1),
(17, 1, 'FLAVOUR', NULL, '2024-04-06 07:08:33', 1),
(18, 1, 'FLAVOUR', NULL, '2024-04-06 07:16:31', 1),
(19, 1, 'FLAVOUR', NULL, '2024-04-06 07:32:11', 1),
(20, 1, 'liter volume', NULL, '2024-04-06 07:33:27', 1),
(21, 1, 'fluid volume', NULL, '2024-04-06 07:48:34', 1),
(22, 1, 'Pakages', NULL, '2024-04-06 07:49:17', 1),
(23, 1, 'Pakages', NULL, '2024-04-06 08:07:13', 1),
(24, 1, 'Weight', NULL, '2024-04-06 09:39:40', 1),
(25, 1, 'Fluid volume', NULL, '2024-04-06 09:43:33', 1),
(26, 1, 'Fluid volume', NULL, '2024-04-06 09:53:53', 1),
(27, 1, 'Fluid volume', NULL, '2024-04-06 09:59:15', 1),
(28, 1, 'Fluid volume', NULL, '2024-04-06 10:00:25', 1),
(29, 1, 'Weight', NULL, '2024-04-06 10:01:45', 1),
(30, 1, 'COLOR', NULL, '2024-04-06 10:21:03', 1),
(31, 1, 'Fluid volume', NULL, '2024-04-06 10:29:43', 1),
(32, 1, 'Weight', NULL, '2024-04-06 10:29:54', 1),
(33, 1, 'pieces', NULL, '2024-04-06 10:30:16', 1),
(34, 1, 'Fluid volume', NULL, '2024-04-06 10:32:57', 1),
(35, 1, 'COLOR', NULL, '2024-04-06 10:33:53', 1),
(36, 1, 'Weight', NULL, '2024-04-06 10:56:07', 1),
(37, 1, 'Fluid volume', NULL, '2024-04-06 10:56:47', 1),
(38, 1, 'COLOR', NULL, '2024-04-06 10:57:01', 1),
(39, 1, 'Weight', NULL, '2024-04-06 11:06:56', 1),
(40, 1, 'Weight', NULL, '2024-04-06 11:27:14', 1),
(41, 1, 'liter volume', NULL, '2024-04-06 12:36:41', 1),
(42, 1, 'Weight', NULL, '2024-04-06 13:03:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_set`
--

DROP TABLE IF EXISTS `attribute_set`;
CREATE TABLE `attribute_set` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_set`
--

INSERT INTO `attribute_set` (`id`, `name`, `status`) VALUES
(1, 'General', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

DROP TABLE IF EXISTS `attribute_values`;
CREATE TABLE `attribute_values` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `filterable` int(11) DEFAULT 0,
  `value` varchar(1024) NOT NULL,
  `swatche_type` int(11) DEFAULT 0,
  `swatche_value` varchar(512) DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `filterable`, `value`, `swatche_type`, `swatche_value`, `status`) VALUES
(1, 1, 0, '50 g', 0, '#000000', 1),
(2, 1, 0, '100 g', 0, '#000000', 1),
(3, 1, 0, '200 g', 0, '#000000', 1),
(4, 1, 0, '500 g', 0, '#000000', 1),
(5, 1, 0, '1 kg', 0, '#000000', 1),
(6, 2, 0, '3 ml', 0, '#000000', 1),
(7, 2, 0, '5 ml', 0, '#000000', 1),
(8, 2, 0, '10 ml', 0, '#000000', 1),
(9, 3, 0, '100 ml', 0, '#000000', 1),
(10, 3, 0, '200 ml', 0, '#000000', 1),
(11, 3, 0, '500 ml', 0, '#000000', 1),
(12, 3, 0, '1 lt', 0, '#000000', 1),
(13, 3, 0, '2 lt', 0, '#000000', 1),
(14, 4, 0, 'Badam', 0, '#000000', 1),
(15, 4, 0, 'Mango', 0, '#000000', 1),
(16, 4, 0, 'Elachi', 0, '#000000', 1),
(17, 5, 0, '1', 0, '#000000', 1),
(18, 5, 0, '2', 0, '#000000', 1),
(19, 1, 0, '3 kg', 0, '#000000', 0),
(20, 1, 0, '5 kg', 0, '#000000', 0),
(21, 1, 0, '10 kg', 0, '#000000', 0),
(22, 1, 0, '20 kg', 0, '#000000', 0),
(23, 1, 0, '200 gm', 0, '', 0),
(24, 1, 0, '3 kg', 0, '#000000', 1),
(25, 1, 0, '5 kg', 0, '#000000', 1),
(26, 1, 0, '10 kg', 0, '#000000', 1),
(27, 1, 0, '15 kg', 0, '#000000', 1),
(28, 1, 0, '20 kg', 0, '#000000', 1),
(29, 1, 0, '250 g', 0, '#000000', 1),
(30, 1, 0, '180 g', 0, '', 1),
(31, 4, 0, 'CITRON', 0, '#000000', 1),
(32, 4, 0, 'GARLIC', 0, '#000000', 1),
(33, 4, 0, 'MANGO & GINGER', 0, '#000000', 1),
(34, 4, 0, 'CUT MANGO', 0, '#000000', 1),
(35, 4, 0, 'SALTED CITRON', 0, '#000000', 1),
(36, 4, 0, 'LEMON', 0, '#000000', 1),
(37, 4, 0, 'MANGO THOKKU', 0, '#000000', 1),
(38, 4, 0, 'PIRANDAI THOKKU', 0, '#000000', 1),
(39, 4, 0, 'VATHA KULAMBU PASTE', 0, '#000000', 1),
(40, 4, 0, 'PULIYOTHARAI PASTE', 0, '#000000', 1),
(41, 1, 0, '750 g', 0, '#000000', 1),
(42, 1, 0, '190 g', 0, '#000000', 1),
(43, 14, 0, 'WHITE', 0, '#000000', 1),
(44, 14, 0, 'RED', 0, '#000000', 1),
(45, 14, 0, 'BLACK', 0, '#000000', 1),
(46, 4, 0, 'garlic', 0, '#000000', 1),
(47, 4, 0, 'pepper', 0, '#000000', 1),
(48, 4, 0, 'plain', 0, '#000000', 1),
(49, 4, 0, 'jeera', 0, '#000000', 1),
(50, 4, 0, 'creami', 0, '#000000', 1),
(51, 4, 0, 'tikka dip', 0, '#000000', 1),
(52, 4, 0, 'tropical fruit', 0, '#000000', 1),
(53, 4, 0, 'red chili flakes', 0, '#000000', 1),
(54, 4, 0, 'oregano pickle', 0, '#000000', 1),
(55, 4, 0, 'Choco buttery', 0, '#000000', 1),
(56, 4, 0, 'KESAR', 0, '#000000', 1),
(57, 4, 0, 'BADAM', 0, '#000000', 1),
(58, 4, 0, 'CAFE', 0, '#000000', 1),
(59, 4, 0, 'ELACHI', 0, '#000000', 1),
(60, 4, 0, 'KOKO', 0, '#000000', 1),
(61, 4, 0, 'PLAIN', 0, '#000000', 1),
(62, 3, 0, '250 ml', 0, '#000000', 1),
(63, 2, 0, '10 ml', 0, '#000000', 1),
(64, 2, 0, '14 ml', 0, '#000000', 1),
(65, 2, 0, '28 ml', 0, '#000000', 1),
(66, 2, 0, '3 ml', 0, '#000000', 1),
(67, 2, 0, '5 ml', 0, '#000000', 1),
(68, 2, 0, '56 ml', 0, '#000000', 1),
(69, 22, 0, '12 pcs', 0, '', 1),
(70, 22, 0, '1 pc', 0, '#000000', 1),
(71, 1, 0, '25 g', 0, '#000000', 1),
(72, 2, 0, '24 ml', 0, '#000000', 1),
(73, 2, 0, '60 ml', 0, '#000000', 1),
(74, 2, 0, '120 ml', 0, '#000000', 1),
(75, 2, 0, '25 ML', 0, '#000000', 1),
(76, 2, 0, '57 ml', 0, '#000000', 1),
(77, 1, 0, '50 gm', 0, '#000000', 1),
(78, 14, 0, 'WHITE', 0, '#000000', 1),
(79, 14, 0, 'YELLOW', 0, '#000000', 1),
(80, 14, 0, 'NORMAL', 0, '#000000', 1),
(81, 2, 0, '30 ml', 0, '#000000', 1),
(82, 1, 0, '30 g', 0, '#000000', 1),
(83, 5, 0, '5 pcs', 0, '#000000', 1),
(84, 2, 0, '48 ml', 0, '#000000', 1),
(85, 2, 0, '82 ml', 0, '#000000', 1),
(86, 14, 0, 'RED', 0, '#000000', 1),
(87, 14, 0, 'GREEN', 0, '#000000', 1),
(88, 1, 0, '12 g', 0, '#000000', 1),
(89, 2, 0, '7 ml', 0, '#000000', 1),
(90, 14, 0, 'silver', 0, '#000000', 1),
(91, 1, 0, '60 G', 0, '#000000', 1),
(92, 1, 0, '10 g', 0, '#000000', 1),
(93, 1, 0, '19 g', 0, '#000000', 1),
(94, 3, 0, '5  lt', 0, '#000000', 1),
(95, 1, 0, '1 g', 0, '#000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `slug` varchar(256) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `slug` varchar(256) DEFAULT NULL,
  `image` text NOT NULL,
  `banner` text NOT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `slug` varchar(256) DEFAULT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `status`) VALUES
(2, 'PANNAIYAR', 'pannaiyar', 'uploads/media/2024/pannaiyar_new.jpg', 1),
(3, 'ANIL', 'anil', 'uploads/media/2024/anil_logo.jpg', 1),
(4, 'SAKTHI', 'sakthi', 'uploads/media/2024/sakthimasala_welcome_1.jpg', 1),
(5, 'Everest foods', 'everest-foods', 'uploads/media/2024/everestspices_logo.jpg', 1),
(6, 'Amul', 'amul', 'uploads/media/2024/Frame-32-6.png', 1),
(7, 'Axe Brand', 'axe-brand', 'uploads/media/2024/download.png', 1),
(8, 'Eagle Brand', 'eagle-brand', 'uploads/media/2024/download_(1).png', 1),
(9, 'Vicks', 'vicks', 'uploads/media/2024/download1.jpg', 1),
(10, 'SIANG PURE', 'siang-pure', 'uploads/media/2024/images.png', 1),
(11, 'TIGER', 'tiger', 'uploads/media/2024/images_(1).png', 1),
(12, 'Annapurna', 'annapurna', 'uploads/media/2025/annapurna-og-image.jpg', 1),
(13, 'Harshini Groceries', 'harshini-groceries', 'uploads/media/2025/Harshini.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `is_saved_for_later` int(11) NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(256) NOT NULL,
  `image` text NOT NULL,
  `banner` text DEFAULT NULL,
  `row_order` int(11) DEFAULT 0,
  `status` tinyint(4) DEFAULT NULL,
  `clicks` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `image`, `banner`, `row_order`, `status`, `clicks`) VALUES
(1, 'test', 0, 'test', 'uploads/media/2021/eshop-logo-full.png', NULL, 1, NULL, 13),
(2, 'RICE', 1, 'rice', 'uploads/media/2024/RICE1.jpg', '', 0, NULL, 0),
(3, 'Sweets', 0, 'sweets', 'uploads/media/2024/download.jpg', NULL, 0, NULL, 1),
(4, 'Coconut Sweets', 3, 'coconut-sweets', 'uploads/media/2024/download_(1).jpg', NULL, 0, NULL, 1),
(5, 'sweets', 0, 'sweets-1', 'uploads/media/2025/1666880405-abcd.webp', 'uploads/media/2024/smart_watch_offer.jpg', 0, 1, 5626),
(6, 'savoury', 0, 'savoury', 'uploads/media/2024/savoury.jpg', NULL, 0, 1, 2366),
(7, 'Groceries', 0, 'groceries', 'uploads/media/2024/images.jpg', NULL, 0, 1, 4830),
(8, 'Rice', 7, 'rice-1', 'uploads/media/2024/RICE.jpg', NULL, 0, 1, 1997),
(9, 'Spices & Seasonings', 7, 'spices-seasonings', 'uploads/media/2024/134551576_07548d14-2b9c-4029-9309-b9274b5cdef1.jpg', NULL, 0, 1, 865),
(10, 'Powdered Spices', 9, 'powdered-spices', 'uploads/media/2024/2148536721.jpg', NULL, 0, 1, 9888),
(11, 'Pain Relief Oils & Medicines', 0, 'pain-relief-oils-medicines', 'uploads/media/2024/Axe_oil_5_ml.jpg', 'uploads/media/2024/BLKF_head_phone.jpg', 0, 1, 7984),
(12, 'Drinks & Beverages', 0, 'drinks-beverages', 'uploads/media/2024/download_(1)1.jpg', NULL, 0, 1, 1807),
(13, 'NOODLES', 7, 'noodles', 'uploads/media/2024/InShot_20240402_154421771.jpg', NULL, 0, 1, 617),
(14, 'READY TO COOK', 7, 'ready-to-cook', 'uploads/media/2024/ready_to_cook.jpg', NULL, 0, 1, 500),
(15, 'WHOLE SPICE', 7, 'whole-spice', 'uploads/media/2024/WHOLE_SPICE.jpg', NULL, 0, 1, 926),
(16, 'PICKLES', 7, 'pickles', 'uploads/media/2024/21--7-.jpg', NULL, 0, 1, 84),
(17, 'JAGGERY ITEMS', 7, 'jaggery-items', 'uploads/media/2024/funW4uFbGLwSw5oBZ2QLZyIgDeIfXbXlEueknJhr.webp', NULL, 0, 1, 714),
(18, 'EDIBLE OIL', 7, 'edible-oil', 'uploads/media/2024/Cooking-Oil-0053.jpg', NULL, 0, 1, 692),
(19, 'BEVERAGES', 7, 'beverages', 'uploads/media/2024/latte-americano-orange-juice-lime-600nw-2122885682.webp', NULL, 0, 1, 558),
(20, 'MILLETS', 7, 'millets', 'uploads/media/2024/MILLETS.webp', NULL, 0, 1, 2678),
(21, 'DAL & PULSES', 7, 'dal-pulses', 'uploads/media/2024/dal-and-pulses-250x250.webp', NULL, 0, 1, 4507),
(22, 'CHEESE', 7, 'cheese', 'uploads/media/2024/82065684.webp', '', 0, 1, 1084),
(23, 'GHEE', 7, 'ghee', 'uploads/media/2024/download_(1)2.jpg', NULL, 0, 1, 578),
(24, 'MILK', 7, 'milk', 'uploads/media/2024/360_F_281001895_usd6SIfy6zjBCf7hkVtFGKpG4B3zbwWM.jpg', NULL, 0, 1, 237),
(25, 'TOYS', 0, 'toys', 'uploads/media/2024/shutterstock-436617280-toy-dealers-5-02u2p.webp', NULL, 0, 1, 687),
(26, 'Vegetables', 0, 'vegetables', 'uploads/media/2025/Vegetables.jpg', NULL, 0, NULL, 0),
(27, 'Health drinks', 7, 'health-drinks', 'uploads/media/2025/Main-protein-powder.jpg', NULL, 0, 1, 668),
(28, 'Nuts', 7, 'nuts', 'uploads/media/2025/nuts-banner-img.webp', NULL, 0, 1, 68),
(29, 'Flour', 7, 'flour', 'uploads/media/2025/Spelt-Flour-Substitutes-1.jpg', NULL, 0, 1, 506),
(30, 'PERSONAL CARE PRODUCTS', 0, 'personal-care-products', 'uploads/media/2025/Choose_Natural_Skin_Care_Products.webp', '', 0, 1, 376),
(31, 'POOJA ITEMS', 0, 'pooja-items', 'uploads/media/2025/Pooja_items.webp', NULL, 0, 1, 1756),
(32, 'Confectionary', 7, 'confectionary', 'uploads/media/2025/Confectionary.jpg', NULL, 0, 1, 54);

-- --------------------------------------------------------

--
-- Table structure for table `chat_media`
--

DROP TABLE IF EXISTS `chat_media`;
CREATE TABLE `chat_media` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `original_file_name` text NOT NULL,
  `file_name` text NOT NULL,
  `file_extension` varchar(64) NOT NULL,
  `file_size` varchar(256) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, 'Abudhabi'),
(2, 'Al Khalidhiya'),
(3, 'Musaffah'),
(4, 'Mohamed Bin Zayed City'),
(5, 'Saadiyat Island.'),
(6, 'Al Reem Island.'),
(7, 'Al Raha.'),
(8, 'Abu Dhabi Corniche.'),
(9, 'Al Reef.'),
(10, 'Khalidiya.'),
(11, 'Al Maryah Island.'),
(12, 'Al Zahiyah and Al Markaziyah'),
(13, 'Dubai'),
(14, 'SHARJAH'),
(15, 'RAS AL KHAIMAH'),
(16, 'UMM UL QUWAIN'),
(17, 'FUJAIRAH'),
(18, 'AJMAN'),
(19, 'AL AIN'),
(20, 'RUWAIS'),
(21, 'GHAYATHI'),
(22, 'DEIRA');

-- --------------------------------------------------------

--
-- Table structure for table `client_api_keys`
--

DROP TABLE IF EXISTS `client_api_keys`;
CREATE TABLE `client_api_keys` (
  `id` int(11) NOT NULL,
  `name` mediumtext DEFAULT NULL,
  `secret` mediumtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_api_keys`
--

INSERT INTO `client_api_keys` (`id`, `name`, `secret`, `status`) VALUES
(2, 'movingbazaar', '80564d878bda3ee1ada088dbe4a8f567ba9cc96b', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numeric_code` char(3) DEFAULT NULL,
  `iso2` char(2) DEFAULT NULL,
  `phonecode` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `currency_name` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `tld` varchar(255) DEFAULT NULL,
  `native` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `subregion` varchar(255) DEFAULT NULL,
  `timezones` text DEFAULT NULL,
  `translations` text DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `emoji` varchar(191) DEFAULT NULL,
  `emojiU` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `flag` tinyint(1) NOT NULL DEFAULT 1,
  `wikiDataId` varchar(255) DEFAULT NULL COMMENT 'Rapid API GeoDB Cities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_name`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(1, 'Afghanistan', 'AFG', '004', 'AF', '93', 'Kabul', 'AFN', 'Afghan afghani', '؋', '.af', 'افغانستان', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Kabul\",\"gmtOffset\":16200,\"gmtOffsetName\":\"UTC+04:30\",\"abbreviation\":\"AFT\",\"tzName\":\"Afghanistan Time\"}]', '{\"kr\":\"아프가니스탄\",\"br\":\"Afeganistão\",\"pt\":\"Afeganistão\",\"nl\":\"Afghanistan\",\"hr\":\"Afganistan\",\"fa\":\"افغانستان\",\"de\":\"Afghanistan\",\"es\":\"Afganistán\",\"fr\":\"Afghanistan\",\"ja\":\"アフガニスタン\",\"it\":\"Afghanistan\",\"cn\":\"阿富汗\"}', 33.00000000, 65.00000000, '🇦🇫', 'U+1F1E6 U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 18:19:42', 1, 'Q889'),
(2, 'Aland Islands', 'ALA', '248', 'AX', '+358-18', 'Mariehamn', 'EUR', 'Euro', '€', '.ax', 'Åland', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Mariehamn\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"올란드 제도\",\"br\":\"Ilhas de Aland\",\"pt\":\"Ilhas de Aland\",\"nl\":\"Ålandeilanden\",\"hr\":\"Ålandski otoci\",\"fa\":\"جزایر الند\",\"de\":\"Åland\",\"es\":\"Alandia\",\"fr\":\"Åland\",\"ja\":\"オーランド諸島\",\"it\":\"Isole Aland\",\"cn\":\"奥兰群岛\"}', 60.11666700, 19.90000000, '🇦🇽', 'U+1F1E6 U+1F1FD', '2018-07-21 01:41:03', '2021-12-11 18:26:03', 1, NULL),
(3, 'Albania', 'ALB', '008', 'AL', '355', 'Tirana', 'ALL', 'Albanian lek', 'Lek', '.al', 'Shqipëria', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Tirane\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"알바니아\",\"br\":\"Albânia\",\"pt\":\"Albânia\",\"nl\":\"Albanië\",\"hr\":\"Albanija\",\"fa\":\"آلبانی\",\"de\":\"Albanien\",\"es\":\"Albania\",\"fr\":\"Albanie\",\"ja\":\"アルバニア\",\"it\":\"Albania\",\"cn\":\"阿尔巴尼亚\"}', 41.00000000, 20.00000000, '🇦🇱', 'U+1F1E6 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 18:20:01', 1, 'Q222'),
(4, 'Algeria', 'DZA', '012', 'DZ', '213', 'Algiers', 'DZD', 'Algerian dinar', 'دج', '.dz', 'الجزائر', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Algiers\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"알제리\",\"br\":\"Argélia\",\"pt\":\"Argélia\",\"nl\":\"Algerije\",\"hr\":\"Alžir\",\"fa\":\"الجزایر\",\"de\":\"Algerien\",\"es\":\"Argelia\",\"fr\":\"Algérie\",\"ja\":\"アルジェリア\",\"it\":\"Algeria\",\"cn\":\"阿尔及利亚\"}', 28.00000000, 3.00000000, '🇩🇿', 'U+1F1E9 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 18:20:10', 1, 'Q262'),
(5, 'American Samoa', 'ASM', '016', 'AS', '+1-684', 'Pago Pago', 'USD', 'US Dollar', '$', '.as', 'American Samoa', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Pago_Pago\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"SST\",\"tzName\":\"Samoa Standard Time\"}]', '{\"kr\":\"아메리칸사모아\",\"br\":\"Samoa Americana\",\"pt\":\"Samoa Americana\",\"nl\":\"Amerikaans Samoa\",\"hr\":\"Američka Samoa\",\"fa\":\"ساموآی آمریکا\",\"de\":\"Amerikanisch-Samoa\",\"es\":\"Samoa Americana\",\"fr\":\"Samoa américaines\",\"ja\":\"アメリカ領サモア\",\"it\":\"Samoa Americane\",\"cn\":\"美属萨摩亚\"}', -14.33333333, -170.00000000, '🇦🇸', 'U+1F1E6 U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 18:25:50', 1, NULL),
(6, 'Andorra', 'AND', '020', 'AD', '376', 'Andorra la Vella', 'EUR', 'Euro', '€', '.ad', 'Andorra', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Andorra\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"안도라\",\"br\":\"Andorra\",\"pt\":\"Andorra\",\"nl\":\"Andorra\",\"hr\":\"Andora\",\"fa\":\"آندورا\",\"de\":\"Andorra\",\"es\":\"Andorra\",\"fr\":\"Andorre\",\"ja\":\"アンドラ\",\"it\":\"Andorra\",\"cn\":\"安道尔\"}', 42.50000000, 1.50000000, '🇦🇩', 'U+1F1E6 U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 18:20:22', 1, 'Q228'),
(7, 'Angola', 'AGO', '024', 'AO', '244', 'Luanda', 'AOA', 'Angolan kwanza', 'Kz', '.ao', 'Angola', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Luanda\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"앙골라\",\"br\":\"Angola\",\"pt\":\"Angola\",\"nl\":\"Angola\",\"hr\":\"Angola\",\"fa\":\"آنگولا\",\"de\":\"Angola\",\"es\":\"Angola\",\"fr\":\"Angola\",\"ja\":\"アンゴラ\",\"it\":\"Angola\",\"cn\":\"安哥拉\"}', -12.50000000, 18.50000000, '🇦🇴', 'U+1F1E6 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 18:20:31', 1, 'Q916'),
(8, 'Anguilla', 'AIA', '660', 'AI', '+1-264', 'The Valley', 'XCD', 'East Caribbean dollar', '$', '.ai', 'Anguilla', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"앵귈라\",\"br\":\"Anguila\",\"pt\":\"Anguila\",\"nl\":\"Anguilla\",\"hr\":\"Angvila\",\"fa\":\"آنگویلا\",\"de\":\"Anguilla\",\"es\":\"Anguilla\",\"fr\":\"Anguilla\",\"ja\":\"アンギラ\",\"it\":\"Anguilla\",\"cn\":\"安圭拉\"}', 18.25000000, -63.16666666, '🇦🇮', 'U+1F1E6 U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 18:20:46', 1, NULL),
(9, 'Antarctica', 'ATA', '010', 'AQ', '672', '', 'AAD', 'Antarctican dollar', '$', '.aq', 'Antarctica', 'Polar', '', '[{\"zoneName\":\"Antarctica/Casey\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AWST\",\"tzName\":\"Australian Western Standard Time\"},{\"zoneName\":\"Antarctica/Davis\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"DAVT\",\"tzName\":\"Davis Time\"},{\"zoneName\":\"Antarctica/DumontDUrville\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"DDUT\",\"tzName\":\"Dumont d\'Urville Time\"},{\"zoneName\":\"Antarctica/Mawson\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"MAWT\",\"tzName\":\"Mawson Station Time\"},{\"zoneName\":\"Antarctica/McMurdo\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"NZDT\",\"tzName\":\"New Zealand Daylight Time\"},{\"zoneName\":\"Antarctica/Palmer\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"CLST\",\"tzName\":\"Chile Summer Time\"},{\"zoneName\":\"Antarctica/Rothera\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ROTT\",\"tzName\":\"Rothera Research Station Time\"},{\"zoneName\":\"Antarctica/Syowa\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"SYOT\",\"tzName\":\"Showa Station Time\"},{\"zoneName\":\"Antarctica/Troll\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"},{\"zoneName\":\"Antarctica/Vostok\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"VOST\",\"tzName\":\"Vostok Station Time\"}]', '{\"kr\":\"남극\",\"br\":\"Antártida\",\"pt\":\"Antárctida\",\"nl\":\"Antarctica\",\"hr\":\"Antarktika\",\"fa\":\"جنوبگان\",\"de\":\"Antarktika\",\"es\":\"Antártida\",\"fr\":\"Antarctique\",\"ja\":\"南極大陸\",\"it\":\"Antartide\",\"cn\":\"南极洲\"}', -74.65000000, 4.48000000, '🇦🇶', 'U+1F1E6 U+1F1F6', '2018-07-21 01:41:03', '2021-12-11 19:19:17', 1, NULL),
(10, 'Antigua And Barbuda', 'ATG', '028', 'AG', '+1-268', 'St. John\'s', 'XCD', 'Eastern Caribbean dollar', '$', '.ag', 'Antigua and Barbuda', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Antigua\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"앤티가 바부다\",\"br\":\"Antígua e Barbuda\",\"pt\":\"Antígua e Barbuda\",\"nl\":\"Antigua en Barbuda\",\"hr\":\"Antigva i Barbuda\",\"fa\":\"آنتیگوا و باربودا\",\"de\":\"Antigua und Barbuda\",\"es\":\"Antigua y Barbuda\",\"fr\":\"Antigua-et-Barbuda\",\"ja\":\"アンティグア・バーブーダ\",\"it\":\"Antigua e Barbuda\",\"cn\":\"安提瓜和巴布达\"}', 17.05000000, -61.80000000, '🇦🇬', 'U+1F1E6 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 18:26:34', 1, 'Q781'),
(11, 'Argentina', 'ARG', '032', 'AR', '54', 'Buenos Aires', 'ARS', 'Argentine peso', '$', '.ar', 'Argentina', 'Americas', 'South America', '[{\"zoneName\":\"America/Argentina/Buenos_Aires\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Catamarca\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Cordoba\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Jujuy\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/La_Rioja\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Mendoza\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Rio_Gallegos\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Salta\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/San_Juan\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/San_Luis\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Tucuman\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Ushuaia\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"}]', '{\"kr\":\"아르헨티나\",\"br\":\"Argentina\",\"pt\":\"Argentina\",\"nl\":\"Argentinië\",\"hr\":\"Argentina\",\"fa\":\"آرژانتین\",\"de\":\"Argentinien\",\"es\":\"Argentina\",\"fr\":\"Argentine\",\"ja\":\"アルゼンチン\",\"it\":\"Argentina\",\"cn\":\"阿根廷\"}', -34.00000000, -64.00000000, '🇦🇷', 'U+1F1E6 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:21:01', 1, 'Q414'),
(12, 'Armenia', 'ARM', '051', 'AM', '374', 'Yerevan', 'AMD', 'Armenian dram', '֏', '.am', 'Հայաստան', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Yerevan\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Armenia Time\"}]', '{\"kr\":\"아르메니아\",\"br\":\"Armênia\",\"pt\":\"Arménia\",\"nl\":\"Armenië\",\"hr\":\"Armenija\",\"fa\":\"ارمنستان\",\"de\":\"Armenien\",\"es\":\"Armenia\",\"fr\":\"Arménie\",\"ja\":\"アルメニア\",\"it\":\"Armenia\",\"cn\":\"亚美尼亚\"}', 40.00000000, 45.00000000, '🇦🇲', 'U+1F1E6 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:21:06', 1, 'Q399'),
(13, 'Aruba', 'ABW', '533', 'AW', '297', 'Oranjestad', 'AWG', 'Aruban florin', 'ƒ', '.aw', 'Aruba', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Aruba\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"아루바\",\"br\":\"Aruba\",\"pt\":\"Aruba\",\"nl\":\"Aruba\",\"hr\":\"Aruba\",\"fa\":\"آروبا\",\"de\":\"Aruba\",\"es\":\"Aruba\",\"fr\":\"Aruba\",\"ja\":\"アルバ\",\"it\":\"Aruba\",\"cn\":\"阿鲁巴\"}', 12.50000000, -69.96666666, '🇦🇼', 'U+1F1E6 U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 18:26:47', 1, NULL),
(14, 'Australia', 'AUS', '036', 'AU', '61', 'Canberra', 'AUD', 'Australian dollar', '$', '.au', 'Australia', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Antarctica/Macquarie\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"MIST\",\"tzName\":\"Macquarie Island Station Time\"},{\"zoneName\":\"Australia/Adelaide\",\"gmtOffset\":37800,\"gmtOffsetName\":\"UTC+10:30\",\"abbreviation\":\"ACDT\",\"tzName\":\"Australian Central Daylight Saving Time\"},{\"zoneName\":\"Australia/Brisbane\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"AEST\",\"tzName\":\"Australian Eastern Standard Time\"},{\"zoneName\":\"Australia/Broken_Hill\",\"gmtOffset\":37800,\"gmtOffsetName\":\"UTC+10:30\",\"abbreviation\":\"ACDT\",\"tzName\":\"Australian Central Daylight Saving Time\"},{\"zoneName\":\"Australia/Currie\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"},{\"zoneName\":\"Australia/Darwin\",\"gmtOffset\":34200,\"gmtOffsetName\":\"UTC+09:30\",\"abbreviation\":\"ACST\",\"tzName\":\"Australian Central Standard Time\"},{\"zoneName\":\"Australia/Eucla\",\"gmtOffset\":31500,\"gmtOffsetName\":\"UTC+08:45\",\"abbreviation\":\"ACWST\",\"tzName\":\"Australian Central Western Standard Time (Unofficial)\"},{\"zoneName\":\"Australia/Hobart\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"},{\"zoneName\":\"Australia/Lindeman\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"AEST\",\"tzName\":\"Australian Eastern Standard Time\"},{\"zoneName\":\"Australia/Lord_Howe\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"LHST\",\"tzName\":\"Lord Howe Summer Time\"},{\"zoneName\":\"Australia/Melbourne\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"},{\"zoneName\":\"Australia/Perth\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"AWST\",\"tzName\":\"Australian Western Standard Time\"},{\"zoneName\":\"Australia/Sydney\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"}]', '{\"kr\":\"호주\",\"br\":\"Austrália\",\"pt\":\"Austrália\",\"nl\":\"Australië\",\"hr\":\"Australija\",\"fa\":\"استرالیا\",\"de\":\"Australien\",\"es\":\"Australia\",\"fr\":\"Australie\",\"ja\":\"オーストラリア\",\"it\":\"Australia\",\"cn\":\"澳大利亚\"}', -27.00000000, 133.00000000, '🇦🇺', 'U+1F1E6 U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 18:21:23', 1, 'Q408'),
(15, 'Austria', 'AUT', '040', 'AT', '43', 'Vienna', 'EUR', 'Euro', '€', '.at', 'Österreich', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Vienna\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"오스트리아\",\"br\":\"áustria\",\"pt\":\"áustria\",\"nl\":\"Oostenrijk\",\"hr\":\"Austrija\",\"fa\":\"اتریش\",\"de\":\"Österreich\",\"es\":\"Austria\",\"fr\":\"Autriche\",\"ja\":\"オーストリア\",\"it\":\"Austria\",\"cn\":\"奥地利\"}', 47.33333333, 13.33333333, '🇦🇹', 'U+1F1E6 U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:21:35', 1, 'Q40'),
(16, 'Azerbaijan', 'AZE', '031', 'AZ', '994', 'Baku', 'AZN', 'Azerbaijani manat', 'm', '.az', 'Azərbaycan', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Baku\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"AZT\",\"tzName\":\"Azerbaijan Time\"}]', '{\"kr\":\"아제르바이잔\",\"br\":\"Azerbaijão\",\"pt\":\"Azerbaijão\",\"nl\":\"Azerbeidzjan\",\"hr\":\"Azerbajdžan\",\"fa\":\"آذربایجان\",\"de\":\"Aserbaidschan\",\"es\":\"Azerbaiyán\",\"fr\":\"Azerbaïdjan\",\"ja\":\"アゼルバイジャン\",\"it\":\"Azerbaijan\",\"cn\":\"阿塞拜疆\"}', 40.50000000, 47.50000000, '🇦🇿', 'U+1F1E6 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 18:21:43', 1, 'Q227'),
(17, 'The Bahamas', 'BHS', '044', 'BS', '+1-242', 'Nassau', 'BSD', 'Bahamian dollar', 'B$', '.bs', 'Bahamas', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Nassau\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America)\"}]', '{\"kr\":\"바하마\",\"br\":\"Bahamas\",\"pt\":\"Baamas\",\"nl\":\"Bahama’s\",\"hr\":\"Bahami\",\"fa\":\"باهاما\",\"de\":\"Bahamas\",\"es\":\"Bahamas\",\"fr\":\"Bahamas\",\"ja\":\"バハマ\",\"it\":\"Bahamas\",\"cn\":\"巴哈马\"}', 24.25000000, -76.00000000, '🇧🇸', 'U+1F1E7 U+1F1F8', '2018-07-21 01:41:03', '2022-03-13 16:28:29', 1, 'Q778'),
(18, 'Bahrain', 'BHR', '048', 'BH', '973', 'Manama', 'BHD', 'Bahraini dinar', '.د.ب', '.bh', '‏البحرين', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Bahrain\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"바레인\",\"br\":\"Bahrein\",\"pt\":\"Barém\",\"nl\":\"Bahrein\",\"hr\":\"Bahrein\",\"fa\":\"بحرین\",\"de\":\"Bahrain\",\"es\":\"Bahrein\",\"fr\":\"Bahreïn\",\"ja\":\"バーレーン\",\"it\":\"Bahrein\",\"cn\":\"巴林\"}', 26.00000000, 50.55000000, '🇧🇭', 'U+1F1E7 U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 18:21:58', 1, 'Q398'),
(19, 'Bangladesh', 'BGD', '050', 'BD', '880', 'Dhaka', 'BDT', 'Bangladeshi taka', '৳', '.bd', 'Bangladesh', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Dhaka\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"BDT\",\"tzName\":\"Bangladesh Standard Time\"}]', '{\"kr\":\"방글라데시\",\"br\":\"Bangladesh\",\"pt\":\"Bangladeche\",\"nl\":\"Bangladesh\",\"hr\":\"Bangladeš\",\"fa\":\"بنگلادش\",\"de\":\"Bangladesch\",\"es\":\"Bangladesh\",\"fr\":\"Bangladesh\",\"ja\":\"バングラデシュ\",\"it\":\"Bangladesh\",\"cn\":\"孟加拉\"}', 24.00000000, 90.00000000, '🇧🇩', 'U+1F1E7 U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 18:22:04', 1, 'Q902'),
(20, 'Barbados', 'BRB', '052', 'BB', '+1-246', 'Bridgetown', 'BBD', 'Barbadian dollar', 'Bds$', '.bb', 'Barbados', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Barbados\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"바베이도스\",\"br\":\"Barbados\",\"pt\":\"Barbados\",\"nl\":\"Barbados\",\"hr\":\"Barbados\",\"fa\":\"باربادوس\",\"de\":\"Barbados\",\"es\":\"Barbados\",\"fr\":\"Barbade\",\"ja\":\"バルバドス\",\"it\":\"Barbados\",\"cn\":\"巴巴多斯\"}', 13.16666666, -59.53333333, '🇧🇧', 'U+1F1E7 U+1F1E7', '2018-07-21 01:41:03', '2021-12-11 18:27:03', 1, 'Q244'),
(21, 'Belarus', 'BLR', '112', 'BY', '375', 'Minsk', 'BYN', 'Belarusian ruble', 'Br', '.by', 'Белару́сь', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Minsk\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"}]', '{\"kr\":\"벨라루스\",\"br\":\"Bielorrússia\",\"pt\":\"Bielorrússia\",\"nl\":\"Wit-Rusland\",\"hr\":\"Bjelorusija\",\"fa\":\"بلاروس\",\"de\":\"Weißrussland\",\"es\":\"Bielorrusia\",\"fr\":\"Biélorussie\",\"ja\":\"ベラルーシ\",\"it\":\"Bielorussia\",\"cn\":\"白俄罗斯\"}', 53.00000000, 28.00000000, '🇧🇾', 'U+1F1E7 U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 18:27:09', 1, 'Q184'),
(22, 'Belgium', 'BEL', '056', 'BE', '32', 'Brussels', 'EUR', 'Euro', '€', '.be', 'België', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Brussels\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"벨기에\",\"br\":\"Bélgica\",\"pt\":\"Bélgica\",\"nl\":\"België\",\"hr\":\"Belgija\",\"fa\":\"بلژیک\",\"de\":\"Belgien\",\"es\":\"Bélgica\",\"fr\":\"Belgique\",\"ja\":\"ベルギー\",\"it\":\"Belgio\",\"cn\":\"比利时\"}', 50.83333333, 4.00000000, '🇧🇪', 'U+1F1E7 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 18:27:15', 1, 'Q31'),
(23, 'Belize', 'BLZ', '084', 'BZ', '501', 'Belmopan', 'BZD', 'Belize dollar', '$', '.bz', 'Belize', 'Americas', 'Central America', '[{\"zoneName\":\"America/Belize\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America)\"}]', '{\"kr\":\"벨리즈\",\"br\":\"Belize\",\"pt\":\"Belize\",\"nl\":\"Belize\",\"hr\":\"Belize\",\"fa\":\"بلیز\",\"de\":\"Belize\",\"es\":\"Belice\",\"fr\":\"Belize\",\"ja\":\"ベリーズ\",\"it\":\"Belize\",\"cn\":\"伯利兹\"}', 17.25000000, -88.75000000, '🇧🇿', 'U+1F1E7 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 18:27:21', 1, 'Q242'),
(24, 'Benin', 'BEN', '204', 'BJ', '229', 'Porto-Novo', 'XOF', 'West African CFA franc', 'CFA', '.bj', 'Bénin', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Porto-Novo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"베냉\",\"br\":\"Benin\",\"pt\":\"Benim\",\"nl\":\"Benin\",\"hr\":\"Benin\",\"fa\":\"بنین\",\"de\":\"Benin\",\"es\":\"Benín\",\"fr\":\"Bénin\",\"ja\":\"ベナン\",\"it\":\"Benin\",\"cn\":\"贝宁\"}', 9.50000000, 2.25000000, '🇧🇯', 'U+1F1E7 U+1F1EF', '2018-07-21 01:41:03', '2021-12-11 18:27:27', 1, 'Q962'),
(25, 'Bermuda', 'BMU', '060', 'BM', '+1-441', 'Hamilton', 'BMD', 'Bermudian dollar', '$', '.bm', 'Bermuda', 'Americas', 'Northern America', '[{\"zoneName\":\"Atlantic/Bermuda\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"버뮤다\",\"br\":\"Bermudas\",\"pt\":\"Bermudas\",\"nl\":\"Bermuda\",\"hr\":\"Bermudi\",\"fa\":\"برمودا\",\"de\":\"Bermuda\",\"es\":\"Bermudas\",\"fr\":\"Bermudes\",\"ja\":\"バミューダ\",\"it\":\"Bermuda\",\"cn\":\"百慕大\"}', 32.33333333, -64.75000000, '🇧🇲', 'U+1F1E7 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:27:32', 1, NULL),
(26, 'Bhutan', 'BTN', '064', 'BT', '975', 'Thimphu', 'BTN', 'Bhutanese ngultrum', 'Nu.', '.bt', 'ʼbrug-yul', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Thimphu\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"BTT\",\"tzName\":\"Bhutan Time\"}]', '{\"kr\":\"부탄\",\"br\":\"Butão\",\"pt\":\"Butão\",\"nl\":\"Bhutan\",\"hr\":\"Butan\",\"fa\":\"بوتان\",\"de\":\"Bhutan\",\"es\":\"Bután\",\"fr\":\"Bhoutan\",\"ja\":\"ブータン\",\"it\":\"Bhutan\",\"cn\":\"不丹\"}', 27.50000000, 90.50000000, '🇧🇹', 'U+1F1E7 U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:27:38', 1, 'Q917'),
(27, 'Bolivia', 'BOL', '068', 'BO', '591', 'Sucre', 'BOB', 'Bolivian boliviano', 'Bs.', '.bo', 'Bolivia', 'Americas', 'South America', '[{\"zoneName\":\"America/La_Paz\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"BOT\",\"tzName\":\"Bolivia Time\"}]', '{\"kr\":\"볼리비아\",\"br\":\"Bolívia\",\"pt\":\"Bolívia\",\"nl\":\"Bolivia\",\"hr\":\"Bolivija\",\"fa\":\"بولیوی\",\"de\":\"Bolivien\",\"es\":\"Bolivia\",\"fr\":\"Bolivie\",\"ja\":\"ボリビア多民族国\",\"it\":\"Bolivia\",\"cn\":\"玻利维亚\"}', -17.00000000, -65.00000000, '🇧🇴', 'U+1F1E7 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 18:27:50', 1, 'Q750'),
(28, 'Bosnia and Herzegovina', 'BIH', '070', 'BA', '387', 'Sarajevo', 'BAM', 'Bosnia and Herzegovina convertible mark', 'KM', '.ba', 'Bosna i Hercegovina', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Sarajevo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"보스니아 헤르체고비나\",\"br\":\"Bósnia e Herzegovina\",\"pt\":\"Bósnia e Herzegovina\",\"nl\":\"Bosnië en Herzegovina\",\"hr\":\"Bosna i Hercegovina\",\"fa\":\"بوسنی و هرزگوین\",\"de\":\"Bosnien und Herzegowina\",\"es\":\"Bosnia y Herzegovina\",\"fr\":\"Bosnie-Herzégovine\",\"ja\":\"ボスニア・ヘルツェゴビナ\",\"it\":\"Bosnia ed Erzegovina\",\"cn\":\"波斯尼亚和黑塞哥维那\"}', 44.00000000, 18.00000000, '🇧🇦', 'U+1F1E7 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 18:28:10', 1, 'Q225'),
(29, 'Botswana', 'BWA', '072', 'BW', '267', 'Gaborone', 'BWP', 'Botswana pula', 'P', '.bw', 'Botswana', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Gaborone\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"보츠와나\",\"br\":\"Botsuana\",\"pt\":\"Botsuana\",\"nl\":\"Botswana\",\"hr\":\"Bocvana\",\"fa\":\"بوتسوانا\",\"de\":\"Botswana\",\"es\":\"Botswana\",\"fr\":\"Botswana\",\"ja\":\"ボツワナ\",\"it\":\"Botswana\",\"cn\":\"博茨瓦纳\"}', -22.00000000, 24.00000000, '🇧🇼', 'U+1F1E7 U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 18:28:22', 1, 'Q963'),
(30, 'Bouvet Island', 'BVT', '074', 'BV', '0055', '', 'NOK', 'Norwegian Krone', 'kr', '.bv', 'Bouvetøya', '', '', '[{\"zoneName\":\"Europe/Oslo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"부벳 섬\",\"br\":\"Ilha Bouvet\",\"pt\":\"Ilha Bouvet\",\"nl\":\"Bouveteiland\",\"hr\":\"Otok Bouvet\",\"fa\":\"جزیره بووه\",\"de\":\"Bouvetinsel\",\"es\":\"Isla Bouvet\",\"fr\":\"Île Bouvet\",\"ja\":\"ブーベ島\",\"it\":\"Isola Bouvet\",\"cn\":\"布维岛\"}', -54.43333333, 3.40000000, '🇧🇻', 'U+1F1E7 U+1F1FB', '2018-07-21 01:41:03', '2021-12-11 19:17:50', 1, NULL),
(31, 'Brazil', 'BRA', '076', 'BR', '55', 'Brasilia', 'BRL', 'Brazilian real', 'R$', '.br', 'Brasil', 'Americas', 'South America', '[{\"zoneName\":\"America/Araguaina\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Bahia\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Belem\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Boa_Vista\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)[3\"},{\"zoneName\":\"America/Campo_Grande\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)[3\"},{\"zoneName\":\"America/Cuiaba\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasilia Time\"},{\"zoneName\":\"America/Eirunepe\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"ACT\",\"tzName\":\"Acre Time\"},{\"zoneName\":\"America/Fortaleza\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Maceio\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Manaus\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)\"},{\"zoneName\":\"America/Noronha\",\"gmtOffset\":-7200,\"gmtOffsetName\":\"UTC-02:00\",\"abbreviation\":\"FNT\",\"tzName\":\"Fernando de Noronha Time\"},{\"zoneName\":\"America/Porto_Velho\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)[3\"},{\"zoneName\":\"America/Recife\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Rio_Branco\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"ACT\",\"tzName\":\"Acre Time\"},{\"zoneName\":\"America/Santarem\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Sao_Paulo\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"}]', '{\"kr\":\"브라질\",\"br\":\"Brasil\",\"pt\":\"Brasil\",\"nl\":\"Brazilië\",\"hr\":\"Brazil\",\"fa\":\"برزیل\",\"de\":\"Brasilien\",\"es\":\"Brasil\",\"fr\":\"Brésil\",\"ja\":\"ブラジル\",\"it\":\"Brasile\",\"cn\":\"巴西\"}', -10.00000000, -55.00000000, '🇧🇷', 'U+1F1E7 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:28:56', 1, 'Q155'),
(32, 'British Indian Ocean Territory', 'IOT', '086', 'IO', '246', 'Diego Garcia', 'USD', 'United States dollar', '$', '.io', 'British Indian Ocean Territory', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Chagos\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"IOT\",\"tzName\":\"Indian Ocean Time\"}]', '{\"kr\":\"영국령 인도양 지역\",\"br\":\"Território Britânico do Oceano íÍdico\",\"pt\":\"Território Britânico do Oceano Índico\",\"nl\":\"Britse Gebieden in de Indische Oceaan\",\"hr\":\"Britanski Indijskooceanski teritorij\",\"fa\":\"قلمرو بریتانیا در اقیانوس هند\",\"de\":\"Britisches Territorium im Indischen Ozean\",\"es\":\"Territorio Británico del Océano Índico\",\"fr\":\"Territoire britannique de l\'océan Indien\",\"ja\":\"イギリス領インド洋地域\",\"it\":\"Territorio britannico dell\'oceano indiano\",\"cn\":\"英属印度洋领地\"}', -6.00000000, 71.50000000, '🇮🇴', 'U+1F1EE U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 18:29:10', 1, NULL),
(33, 'Brunei', 'BRN', '096', 'BN', '673', 'Bandar Seri Begawan', 'BND', 'Brunei dollar', 'B$', '.bn', 'Negara Brunei Darussalam', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Brunei\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"BNT\",\"tzName\":\"Brunei Darussalam Time\"}]', '{\"kr\":\"브루나이\",\"br\":\"Brunei\",\"pt\":\"Brunei\",\"nl\":\"Brunei\",\"hr\":\"Brunej\",\"fa\":\"برونئی\",\"de\":\"Brunei\",\"es\":\"Brunei\",\"fr\":\"Brunei\",\"ja\":\"ブルネイ・ダルサラーム\",\"it\":\"Brunei\",\"cn\":\"文莱\"}', 4.50000000, 114.66666666, '🇧🇳', 'U+1F1E7 U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 18:29:19', 1, 'Q921'),
(34, 'Bulgaria', 'BGR', '100', 'BG', '359', 'Sofia', 'BGN', 'Bulgarian lev', 'Лв.', '.bg', 'България', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Sofia\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"불가리아\",\"br\":\"Bulgária\",\"pt\":\"Bulgária\",\"nl\":\"Bulgarije\",\"hr\":\"Bugarska\",\"fa\":\"بلغارستان\",\"de\":\"Bulgarien\",\"es\":\"Bulgaria\",\"fr\":\"Bulgarie\",\"ja\":\"ブルガリア\",\"it\":\"Bulgaria\",\"cn\":\"保加利亚\"}', 43.00000000, 25.00000000, '🇧🇬', 'U+1F1E7 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 18:29:26', 1, 'Q219'),
(35, 'Burkina Faso', 'BFA', '854', 'BF', '226', 'Ouagadougou', 'XOF', 'West African CFA franc', 'CFA', '.bf', 'Burkina Faso', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Ouagadougou\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"부르키나 파소\",\"br\":\"Burkina Faso\",\"pt\":\"Burquina Faso\",\"nl\":\"Burkina Faso\",\"hr\":\"Burkina Faso\",\"fa\":\"بورکینافاسو\",\"de\":\"Burkina Faso\",\"es\":\"Burkina Faso\",\"fr\":\"Burkina Faso\",\"ja\":\"ブルキナファソ\",\"it\":\"Burkina Faso\",\"cn\":\"布基纳法索\"}', 13.00000000, -2.00000000, '🇧🇫', 'U+1F1E7 U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 18:29:35', 1, 'Q965'),
(36, 'Burundi', 'BDI', '108', 'BI', '257', 'Bujumbura', 'BIF', 'Burundian franc', 'FBu', '.bi', 'Burundi', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Bujumbura\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"부룬디\",\"br\":\"Burundi\",\"pt\":\"Burúndi\",\"nl\":\"Burundi\",\"hr\":\"Burundi\",\"fa\":\"بوروندی\",\"de\":\"Burundi\",\"es\":\"Burundi\",\"fr\":\"Burundi\",\"ja\":\"ブルンジ\",\"it\":\"Burundi\",\"cn\":\"布隆迪\"}', -3.50000000, 30.00000000, '🇧🇮', 'U+1F1E7 U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 18:29:42', 1, 'Q967'),
(37, 'Cambodia', 'KHM', '116', 'KH', '855', 'Phnom Penh', 'KHR', 'Cambodian riel', 'KHR', '.kh', 'Kâmpŭchéa', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Phnom_Penh\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"캄보디아\",\"br\":\"Camboja\",\"pt\":\"Camboja\",\"nl\":\"Cambodja\",\"hr\":\"Kambodža\",\"fa\":\"کامبوج\",\"de\":\"Kambodscha\",\"es\":\"Camboya\",\"fr\":\"Cambodge\",\"ja\":\"カンボジア\",\"it\":\"Cambogia\",\"cn\":\"柬埔寨\"}', 13.00000000, 105.00000000, '🇰🇭', 'U+1F1F0 U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 18:29:47', 1, 'Q424'),
(38, 'Cameroon', 'CMR', '120', 'CM', '237', 'Yaounde', 'XAF', 'Central African CFA franc', 'FCFA', '.cm', 'Cameroon', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Douala\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"카메룬\",\"br\":\"Camarões\",\"pt\":\"Camarões\",\"nl\":\"Kameroen\",\"hr\":\"Kamerun\",\"fa\":\"کامرون\",\"de\":\"Kamerun\",\"es\":\"Camerún\",\"fr\":\"Cameroun\",\"ja\":\"カメルーン\",\"it\":\"Camerun\",\"cn\":\"喀麦隆\"}', 6.00000000, 12.00000000, '🇨🇲', 'U+1F1E8 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:29:54', 1, 'Q1009'),
(39, 'Canada', 'CAN', '124', 'CA', '1', 'Ottawa', 'CAD', 'Canadian dollar', '$', '.ca', 'Canada', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Atikokan\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America)\"},{\"zoneName\":\"America/Blanc-Sablon\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Cambridge_Bay\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Creston\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Dawson\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Dawson_Creek\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Edmonton\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Fort_Nelson\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Glace_Bay\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Goose_Bay\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Halifax\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Inuvik\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Iqaluit\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Moncton\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Nipigon\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Pangnirtung\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Rainy_River\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Rankin_Inlet\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Regina\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Resolute\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/St_Johns\",\"gmtOffset\":-12600,\"gmtOffsetName\":\"UTC-03:30\",\"abbreviation\":\"NST\",\"tzName\":\"Newfoundland Standard Time\"},{\"zoneName\":\"America/Swift_Current\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Thunder_Bay\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Toronto\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Vancouver\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"},{\"zoneName\":\"America/Whitehorse\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Winnipeg\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Yellowknife\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"}]', '{\"kr\":\"캐나다\",\"br\":\"Canadá\",\"pt\":\"Canadá\",\"nl\":\"Canada\",\"hr\":\"Kanada\",\"fa\":\"کانادا\",\"de\":\"Kanada\",\"es\":\"Canadá\",\"fr\":\"Canada\",\"ja\":\"カナダ\",\"it\":\"Canada\",\"cn\":\"加拿大\"}', 60.00000000, -95.00000000, '🇨🇦', 'U+1F1E8 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 18:29:58', 1, 'Q16'),
(40, 'Cape Verde', 'CPV', '132', 'CV', '238', 'Praia', 'CVE', 'Cape Verdean escudo', '$', '.cv', 'Cabo Verde', 'Africa', 'Western Africa', '[{\"zoneName\":\"Atlantic/Cape_Verde\",\"gmtOffset\":-3600,\"gmtOffsetName\":\"UTC-01:00\",\"abbreviation\":\"CVT\",\"tzName\":\"Cape Verde Time\"}]', '{\"kr\":\"카보베르데\",\"br\":\"Cabo Verde\",\"pt\":\"Cabo Verde\",\"nl\":\"Kaapverdië\",\"hr\":\"Zelenortska Republika\",\"fa\":\"کیپ ورد\",\"de\":\"Kap Verde\",\"es\":\"Cabo Verde\",\"fr\":\"Cap Vert\",\"ja\":\"カーボベルデ\",\"it\":\"Capo Verde\",\"cn\":\"佛得角\"}', 16.00000000, -24.00000000, '🇨🇻', 'U+1F1E8 U+1F1FB', '2018-07-21 01:41:03', '2021-12-11 18:30:03', 1, 'Q1011'),
(41, 'Cayman Islands', 'CYM', '136', 'KY', '+1-345', 'George Town', 'KYD', 'Cayman Islands dollar', '$', '.ky', 'Cayman Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Cayman\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"케이먼 제도\",\"br\":\"Ilhas Cayman\",\"pt\":\"Ilhas Caimão\",\"nl\":\"Caymaneilanden\",\"hr\":\"Kajmanski otoci\",\"fa\":\"جزایر کیمن\",\"de\":\"Kaimaninseln\",\"es\":\"Islas Caimán\",\"fr\":\"Îles Caïmans\",\"ja\":\"ケイマン諸島\",\"it\":\"Isole Cayman\",\"cn\":\"开曼群岛\"}', 19.50000000, -80.50000000, '🇰🇾', 'U+1F1F0 U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 18:30:09', 1, NULL),
(42, 'Central African Republic', 'CAF', '140', 'CF', '236', 'Bangui', 'XAF', 'Central African CFA franc', 'FCFA', '.cf', 'Ködörösêse tî Bêafrîka', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Bangui\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"중앙아프리카 공화국\",\"br\":\"República Centro-Africana\",\"pt\":\"República Centro-Africana\",\"nl\":\"Centraal-Afrikaanse Republiek\",\"hr\":\"Srednjoafrička Republika\",\"fa\":\"جمهوری آفریقای مرکزی\",\"de\":\"Zentralafrikanische Republik\",\"es\":\"República Centroafricana\",\"fr\":\"République centrafricaine\",\"ja\":\"中央アフリカ共和国\",\"it\":\"Repubblica Centrafricana\",\"cn\":\"中非\"}', 7.00000000, 21.00000000, '🇨🇫', 'U+1F1E8 U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 18:30:14', 1, 'Q929'),
(43, 'Chad', 'TCD', '148', 'TD', '235', 'N\'Djamena', 'XAF', 'Central African CFA franc', 'FCFA', '.td', 'Tchad', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Ndjamena\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"차드\",\"br\":\"Chade\",\"pt\":\"Chade\",\"nl\":\"Tsjaad\",\"hr\":\"Čad\",\"fa\":\"چاد\",\"de\":\"Tschad\",\"es\":\"Chad\",\"fr\":\"Tchad\",\"ja\":\"チャド\",\"it\":\"Ciad\",\"cn\":\"乍得\"}', 15.00000000, 19.00000000, '🇹🇩', 'U+1F1F9 U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 18:30:21', 1, 'Q657'),
(44, 'Chile', 'CHL', '152', 'CL', '56', 'Santiago', 'CLP', 'Chilean peso', '$', '.cl', 'Chile', 'Americas', 'South America', '[{\"zoneName\":\"America/Punta_Arenas\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"CLST\",\"tzName\":\"Chile Summer Time\"},{\"zoneName\":\"America/Santiago\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"CLST\",\"tzName\":\"Chile Summer Time\"},{\"zoneName\":\"Pacific/Easter\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EASST\",\"tzName\":\"Easter Island Summer Time\"}]', '{\"kr\":\"칠리\",\"br\":\"Chile\",\"pt\":\"Chile\",\"nl\":\"Chili\",\"hr\":\"Čile\",\"fa\":\"شیلی\",\"de\":\"Chile\",\"es\":\"Chile\",\"fr\":\"Chili\",\"ja\":\"チリ\",\"it\":\"Cile\",\"cn\":\"智利\"}', -30.00000000, -71.00000000, '🇨🇱', 'U+1F1E8 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 18:30:28', 1, 'Q298'),
(45, 'China', 'CHN', '156', 'CN', '86', 'Beijing', 'CNY', 'Chinese yuan', '¥', '.cn', '中国', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Shanghai\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CST\",\"tzName\":\"China Standard Time\"},{\"zoneName\":\"Asia/Urumqi\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"XJT\",\"tzName\":\"China Standard Time\"}]', '{\"kr\":\"중국\",\"br\":\"China\",\"pt\":\"China\",\"nl\":\"China\",\"hr\":\"Kina\",\"fa\":\"چین\",\"de\":\"China\",\"es\":\"China\",\"fr\":\"Chine\",\"ja\":\"中国\",\"it\":\"Cina\",\"cn\":\"中国\"}', 35.00000000, 105.00000000, '🇨🇳', 'U+1F1E8 U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 18:30:33', 1, 'Q148'),
(46, 'Christmas Island', 'CXR', '162', 'CX', '61', 'Flying Fish Cove', 'AUD', 'Australian dollar', '$', '.cx', 'Christmas Island', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Indian/Christmas\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"CXT\",\"tzName\":\"Christmas Island Time\"}]', '{\"kr\":\"크리스마스 섬\",\"br\":\"Ilha Christmas\",\"pt\":\"Ilha do Natal\",\"nl\":\"Christmaseiland\",\"hr\":\"Božićni otok\",\"fa\":\"جزیره کریسمس\",\"de\":\"Weihnachtsinsel\",\"es\":\"Isla de Navidad\",\"fr\":\"Île Christmas\",\"ja\":\"クリスマス島\",\"it\":\"Isola di Natale\",\"cn\":\"圣诞岛\"}', -10.50000000, 105.66666666, '🇨🇽', 'U+1F1E8 U+1F1FD', '2018-07-21 01:41:03', '2021-12-11 19:18:01', 1, NULL),
(47, 'Cocos (Keeling) Islands', 'CCK', '166', 'CC', '61', 'West Island', 'AUD', 'Australian dollar', '$', '.cc', 'Cocos (Keeling) Islands', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Indian/Cocos\",\"gmtOffset\":23400,\"gmtOffsetName\":\"UTC+06:30\",\"abbreviation\":\"CCT\",\"tzName\":\"Cocos Islands Time\"}]', '{\"kr\":\"코코스 제도\",\"br\":\"Ilhas Cocos\",\"pt\":\"Ilhas dos Cocos\",\"nl\":\"Cocoseilanden\",\"hr\":\"Kokosovi Otoci\",\"fa\":\"جزایر کوکوس\",\"de\":\"Kokosinseln\",\"es\":\"Islas Cocos o Islas Keeling\",\"fr\":\"Îles Cocos\",\"ja\":\"ココス（キーリング）諸島\",\"it\":\"Isole Cocos e Keeling\",\"cn\":\"科科斯（基林）群岛\"}', -12.50000000, 96.83333333, '🇨🇨', 'U+1F1E8 U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 19:18:14', 1, NULL),
(48, 'Colombia', 'COL', '170', 'CO', '57', 'Bogotá', 'COP', 'Colombian peso', '$', '.co', 'Colombia', 'Americas', 'South America', '[{\"zoneName\":\"America/Bogota\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"COT\",\"tzName\":\"Colombia Time\"}]', '{\"kr\":\"콜롬비아\",\"br\":\"Colômbia\",\"pt\":\"Colômbia\",\"nl\":\"Colombia\",\"hr\":\"Kolumbija\",\"fa\":\"کلمبیا\",\"de\":\"Kolumbien\",\"es\":\"Colombia\",\"fr\":\"Colombie\",\"ja\":\"コロンビア\",\"it\":\"Colombia\",\"cn\":\"哥伦比亚\"}', 4.00000000, -72.00000000, '🇨🇴', 'U+1F1E8 U+1F1F4', '2018-07-21 01:41:03', '2022-01-22 12:56:05', 1, 'Q739'),
(49, 'Comoros', 'COM', '174', 'KM', '269', 'Moroni', 'KMF', 'Comorian franc', 'CF', '.km', 'Komori', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Comoro\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"코모로\",\"br\":\"Comores\",\"pt\":\"Comores\",\"nl\":\"Comoren\",\"hr\":\"Komori\",\"fa\":\"کومور\",\"de\":\"Union der Komoren\",\"es\":\"Comoras\",\"fr\":\"Comores\",\"ja\":\"コモロ\",\"it\":\"Comore\",\"cn\":\"科摩罗\"}', -12.16666666, 44.25000000, '🇰🇲', 'U+1F1F0 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:30:50', 1, 'Q970'),
(50, 'Congo', 'COG', '178', 'CG', '242', 'Brazzaville', 'XAF', 'Central African CFA franc', 'FC', '.cg', 'République du Congo', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Brazzaville\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"콩고\",\"br\":\"Congo\",\"pt\":\"Congo\",\"nl\":\"Congo [Republiek]\",\"hr\":\"Kongo\",\"fa\":\"کنگو\",\"de\":\"Kongo\",\"es\":\"Congo\",\"fr\":\"Congo\",\"ja\":\"コンゴ共和国\",\"it\":\"Congo\",\"cn\":\"刚果\"}', -1.00000000, 15.00000000, '🇨🇬', 'U+1F1E8 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 18:31:09', 1, 'Q971'),
(51, 'Democratic Republic of the Congo', 'COD', '180', 'CD', '243', 'Kinshasa', 'CDF', 'Congolese Franc', 'FC', '.cd', 'République démocratique du Congo', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Kinshasa\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"},{\"zoneName\":\"Africa/Lubumbashi\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"콩고 민주 공화국\",\"br\":\"RD Congo\",\"pt\":\"RD Congo\",\"nl\":\"Congo [DRC]\",\"hr\":\"Kongo, Demokratska Republika\",\"fa\":\"جمهوری کنگو\",\"de\":\"Kongo (Dem. Rep.)\",\"es\":\"Congo (Rep. Dem.)\",\"fr\":\"Congo (Rép. dém.)\",\"ja\":\"コンゴ民主共和国\",\"it\":\"Congo (Rep. Dem.)\",\"cn\":\"刚果（金）\"}', 0.00000000, 25.00000000, '🇨🇩', 'U+1F1E8 U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 19:18:42', 1, 'Q974'),
(52, 'Cook Islands', 'COK', '184', 'CK', '682', 'Avarua', 'NZD', 'Cook Islands dollar', '$', '.ck', 'Cook Islands', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Rarotonga\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"CKT\",\"tzName\":\"Cook Island Time\"}]', '{\"kr\":\"쿡 제도\",\"br\":\"Ilhas Cook\",\"pt\":\"Ilhas Cook\",\"nl\":\"Cookeilanden\",\"hr\":\"Cookovo Otočje\",\"fa\":\"جزایر کوک\",\"de\":\"Cookinseln\",\"es\":\"Islas Cook\",\"fr\":\"Îles Cook\",\"ja\":\"クック諸島\",\"it\":\"Isole Cook\",\"cn\":\"库克群岛\"}', -21.23333333, -159.76666666, '🇨🇰', 'U+1F1E8 U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 18:31:15', 1, 'Q26988'),
(53, 'Costa Rica', 'CRI', '188', 'CR', '506', 'San Jose', 'CRC', 'Costa Rican colón', '₡', '.cr', 'Costa Rica', 'Americas', 'Central America', '[{\"zoneName\":\"America/Costa_Rica\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"코스타리카\",\"br\":\"Costa Rica\",\"pt\":\"Costa Rica\",\"nl\":\"Costa Rica\",\"hr\":\"Kostarika\",\"fa\":\"کاستاریکا\",\"de\":\"Costa Rica\",\"es\":\"Costa Rica\",\"fr\":\"Costa Rica\",\"ja\":\"コスタリカ\",\"it\":\"Costa Rica\",\"cn\":\"哥斯达黎加\"}', 10.00000000, -84.00000000, '🇨🇷', 'U+1F1E8 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:31:20', 1, 'Q800'),
(54, 'Cote D\'Ivoire (Ivory Coast)', 'CIV', '384', 'CI', '225', 'Yamoussoukro', 'XOF', 'West African CFA franc', 'CFA', '.ci', NULL, 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Abidjan\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"코트디부아르\",\"br\":\"Costa do Marfim\",\"pt\":\"Costa do Marfim\",\"nl\":\"Ivoorkust\",\"hr\":\"Obala Bjelokosti\",\"fa\":\"ساحل عاج\",\"de\":\"Elfenbeinküste\",\"es\":\"Costa de Marfil\",\"fr\":\"Côte d\'Ivoire\",\"ja\":\"コートジボワール\",\"it\":\"Costa D\'Avorio\",\"cn\":\"科特迪瓦\"}', 8.00000000, -5.00000000, '🇨🇮', 'U+1F1E8 U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 18:31:26', 1, 'Q1008'),
(55, 'Croatia', 'HRV', '191', 'HR', '385', 'Zagreb', 'HRK', 'Croatian kuna', 'kn', '.hr', 'Hrvatska', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Zagreb\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"크로아티아\",\"br\":\"Croácia\",\"pt\":\"Croácia\",\"nl\":\"Kroatië\",\"hr\":\"Hrvatska\",\"fa\":\"کرواسی\",\"de\":\"Kroatien\",\"es\":\"Croacia\",\"fr\":\"Croatie\",\"ja\":\"クロアチア\",\"it\":\"Croazia\",\"cn\":\"克罗地亚\"}', 45.16666666, 15.50000000, '🇭🇷', 'U+1F1ED U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:31:33', 1, 'Q224'),
(56, 'Cuba', 'CUB', '192', 'CU', '53', 'Havana', 'CUP', 'Cuban peso', '$', '.cu', 'Cuba', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Havana\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"CST\",\"tzName\":\"Cuba Standard Time\"}]', '{\"kr\":\"쿠바\",\"br\":\"Cuba\",\"pt\":\"Cuba\",\"nl\":\"Cuba\",\"hr\":\"Kuba\",\"fa\":\"کوبا\",\"de\":\"Kuba\",\"es\":\"Cuba\",\"fr\":\"Cuba\",\"ja\":\"キューバ\",\"it\":\"Cuba\",\"cn\":\"古巴\"}', 21.50000000, -80.00000000, '🇨🇺', 'U+1F1E8 U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 18:31:39', 1, 'Q241'),
(57, 'Cyprus', 'CYP', '196', 'CY', '357', 'Nicosia', 'EUR', 'Euro', '€', '.cy', 'Κύπρος', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Asia/Famagusta\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Asia/Nicosia\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"키프로스\",\"br\":\"Chipre\",\"pt\":\"Chipre\",\"nl\":\"Cyprus\",\"hr\":\"Cipar\",\"fa\":\"قبرس\",\"de\":\"Zypern\",\"es\":\"Chipre\",\"fr\":\"Chypre\",\"ja\":\"キプロス\",\"it\":\"Cipro\",\"cn\":\"塞浦路斯\"}', 35.00000000, 33.00000000, '🇨🇾', 'U+1F1E8 U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 18:31:50', 1, 'Q229');
INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_name`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(58, 'Czech Republic', 'CZE', '203', 'CZ', '420', 'Prague', 'CZK', 'Czech koruna', 'Kč', '.cz', 'Česká republika', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Prague\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"체코\",\"br\":\"República Tcheca\",\"pt\":\"República Checa\",\"nl\":\"Tsjechië\",\"hr\":\"Češka\",\"fa\":\"جمهوری چک\",\"de\":\"Tschechische Republik\",\"es\":\"República Checa\",\"fr\":\"République tchèque\",\"ja\":\"チェコ\",\"it\":\"Repubblica Ceca\",\"cn\":\"捷克\"}', 49.75000000, 15.50000000, '🇨🇿', 'U+1F1E8 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 18:31:57', 1, 'Q213'),
(59, 'Denmark', 'DNK', '208', 'DK', '45', 'Copenhagen', 'DKK', 'Danish krone', 'Kr.', '.dk', 'Danmark', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Copenhagen\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"덴마크\",\"br\":\"Dinamarca\",\"pt\":\"Dinamarca\",\"nl\":\"Denemarken\",\"hr\":\"Danska\",\"fa\":\"دانمارک\",\"de\":\"Dänemark\",\"es\":\"Dinamarca\",\"fr\":\"Danemark\",\"ja\":\"デンマーク\",\"it\":\"Danimarca\",\"cn\":\"丹麦\"}', 56.00000000, 10.00000000, '🇩🇰', 'U+1F1E9 U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 18:32:05', 1, 'Q35'),
(60, 'Djibouti', 'DJI', '262', 'DJ', '253', 'Djibouti', 'DJF', 'Djiboutian franc', 'Fdj', '.dj', 'Djibouti', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Djibouti\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"지부티\",\"br\":\"Djibuti\",\"pt\":\"Djibuti\",\"nl\":\"Djibouti\",\"hr\":\"Džibuti\",\"fa\":\"جیبوتی\",\"de\":\"Dschibuti\",\"es\":\"Yibuti\",\"fr\":\"Djibouti\",\"ja\":\"ジブチ\",\"it\":\"Gibuti\",\"cn\":\"吉布提\"}', 11.50000000, 43.00000000, '🇩🇯', 'U+1F1E9 U+1F1EF', '2018-07-21 01:41:03', '2021-12-11 18:32:11', 1, 'Q977'),
(61, 'Dominica', 'DMA', '212', 'DM', '+1-767', 'Roseau', 'XCD', 'Eastern Caribbean dollar', '$', '.dm', 'Dominica', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Dominica\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"도미니카 연방\",\"br\":\"Dominica\",\"pt\":\"Dominica\",\"nl\":\"Dominica\",\"hr\":\"Dominika\",\"fa\":\"دومینیکا\",\"de\":\"Dominica\",\"es\":\"Dominica\",\"fr\":\"Dominique\",\"ja\":\"ドミニカ国\",\"it\":\"Dominica\",\"cn\":\"多米尼加\"}', 15.41666666, -61.33333333, '🇩🇲', 'U+1F1E9 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:32:16', 1, 'Q784'),
(62, 'Dominican Republic', 'DOM', '214', 'DO', '+1-809 and 1-829', 'Santo Domingo', 'DOP', 'Dominican peso', '$', '.do', 'República Dominicana', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Santo_Domingo\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"도미니카 공화국\",\"br\":\"República Dominicana\",\"pt\":\"República Dominicana\",\"nl\":\"Dominicaanse Republiek\",\"hr\":\"Dominikanska Republika\",\"fa\":\"جمهوری دومینیکن\",\"de\":\"Dominikanische Republik\",\"es\":\"República Dominicana\",\"fr\":\"République dominicaine\",\"ja\":\"ドミニカ共和国\",\"it\":\"Repubblica Dominicana\",\"cn\":\"多明尼加共和国\"}', 19.00000000, -70.66666666, '🇩🇴', 'U+1F1E9 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 18:32:22', 1, 'Q786'),
(63, 'East Timor', 'TLS', '626', 'TL', '670', 'Dili', 'USD', 'United States dollar', '$', '.tl', 'Timor-Leste', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Dili\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"TLT\",\"tzName\":\"Timor Leste Time\"}]', '{\"kr\":\"동티모르\",\"br\":\"Timor Leste\",\"pt\":\"Timor Leste\",\"nl\":\"Oost-Timor\",\"hr\":\"Istočni Timor\",\"fa\":\"تیمور شرقی\",\"de\":\"Timor-Leste\",\"es\":\"Timor Oriental\",\"fr\":\"Timor oriental\",\"ja\":\"東ティモール\",\"it\":\"Timor Est\",\"cn\":\"东帝汶\"}', -8.83333333, 125.91666666, '🇹🇱', 'U+1F1F9 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 18:32:27', 1, 'Q574'),
(64, 'Ecuador', 'ECU', '218', 'EC', '593', 'Quito', 'USD', 'United States dollar', '$', '.ec', 'Ecuador', 'Americas', 'South America', '[{\"zoneName\":\"America/Guayaquil\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"ECT\",\"tzName\":\"Ecuador Time\"},{\"zoneName\":\"Pacific/Galapagos\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"GALT\",\"tzName\":\"Galápagos Time\"}]', '{\"kr\":\"에콰도르\",\"br\":\"Equador\",\"pt\":\"Equador\",\"nl\":\"Ecuador\",\"hr\":\"Ekvador\",\"fa\":\"اکوادور\",\"de\":\"Ecuador\",\"es\":\"Ecuador\",\"fr\":\"Équateur\",\"ja\":\"エクアドル\",\"it\":\"Ecuador\",\"cn\":\"厄瓜多尔\"}', -2.00000000, -77.50000000, '🇪🇨', 'U+1F1EA U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 18:32:33', 1, 'Q736'),
(65, 'Egypt', 'EGY', '818', 'EG', '20', 'Cairo', 'EGP', 'Egyptian pound', 'ج.م', '.eg', 'مصر‎', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Cairo\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"이집트\",\"br\":\"Egito\",\"pt\":\"Egipto\",\"nl\":\"Egypte\",\"hr\":\"Egipat\",\"fa\":\"مصر\",\"de\":\"Ägypten\",\"es\":\"Egipto\",\"fr\":\"Égypte\",\"ja\":\"エジプト\",\"it\":\"Egitto\",\"cn\":\"埃及\"}', 27.00000000, 30.00000000, '🇪🇬', 'U+1F1EA U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 18:32:38', 1, 'Q79'),
(66, 'El Salvador', 'SLV', '222', 'SV', '503', 'San Salvador', 'USD', 'United States dollar', '$', '.sv', 'El Salvador', 'Americas', 'Central America', '[{\"zoneName\":\"America/El_Salvador\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"엘살바도르\",\"br\":\"El Salvador\",\"pt\":\"El Salvador\",\"nl\":\"El Salvador\",\"hr\":\"Salvador\",\"fa\":\"السالوادور\",\"de\":\"El Salvador\",\"es\":\"El Salvador\",\"fr\":\"Salvador\",\"ja\":\"エルサルバドル\",\"it\":\"El Salvador\",\"cn\":\"萨尔瓦多\"}', 13.83333333, -88.91666666, '🇸🇻', 'U+1F1F8 U+1F1FB', '2018-07-21 01:41:03', '2021-12-11 18:32:45', 1, 'Q792'),
(67, 'Equatorial Guinea', 'GNQ', '226', 'GQ', '240', 'Malabo', 'XAF', 'Central African CFA franc', 'FCFA', '.gq', 'Guinea Ecuatorial', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Malabo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"적도 기니\",\"br\":\"Guiné Equatorial\",\"pt\":\"Guiné Equatorial\",\"nl\":\"Equatoriaal-Guinea\",\"hr\":\"Ekvatorijalna Gvineja\",\"fa\":\"گینه استوایی\",\"de\":\"Äquatorial-Guinea\",\"es\":\"Guinea Ecuatorial\",\"fr\":\"Guinée-Équatoriale\",\"ja\":\"赤道ギニア\",\"it\":\"Guinea Equatoriale\",\"cn\":\"赤道几内亚\"}', 2.00000000, 10.00000000, '🇬🇶', 'U+1F1EC U+1F1F6', '2018-07-21 01:41:03', '2021-12-11 18:32:52', 1, 'Q983'),
(68, 'Eritrea', 'ERI', '232', 'ER', '291', 'Asmara', 'ERN', 'Eritrean nakfa', 'Nfk', '.er', 'ኤርትራ', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Asmara\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"에리트레아\",\"br\":\"Eritreia\",\"pt\":\"Eritreia\",\"nl\":\"Eritrea\",\"hr\":\"Eritreja\",\"fa\":\"اریتره\",\"de\":\"Eritrea\",\"es\":\"Eritrea\",\"fr\":\"Érythrée\",\"ja\":\"エリトリア\",\"it\":\"Eritrea\",\"cn\":\"厄立特里亚\"}', 15.00000000, 39.00000000, '🇪🇷', 'U+1F1EA U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:32:58', 1, 'Q986'),
(69, 'Estonia', 'EST', '233', 'EE', '372', 'Tallinn', 'EUR', 'Euro', '€', '.ee', 'Eesti', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Tallinn\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"에스토니아\",\"br\":\"Estônia\",\"pt\":\"Estónia\",\"nl\":\"Estland\",\"hr\":\"Estonija\",\"fa\":\"استونی\",\"de\":\"Estland\",\"es\":\"Estonia\",\"fr\":\"Estonie\",\"ja\":\"エストニア\",\"it\":\"Estonia\",\"cn\":\"爱沙尼亚\"}', 59.00000000, 26.00000000, '🇪🇪', 'U+1F1EA U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 18:33:03', 1, 'Q191'),
(70, 'Ethiopia', 'ETH', '231', 'ET', '251', 'Addis Ababa', 'ETB', 'Ethiopian birr', 'Nkf', '.et', 'ኢትዮጵያ', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Addis_Ababa\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"에티오피아\",\"br\":\"Etiópia\",\"pt\":\"Etiópia\",\"nl\":\"Ethiopië\",\"hr\":\"Etiopija\",\"fa\":\"اتیوپی\",\"de\":\"Äthiopien\",\"es\":\"Etiopía\",\"fr\":\"Éthiopie\",\"ja\":\"エチオピア\",\"it\":\"Etiopia\",\"cn\":\"埃塞俄比亚\"}', 8.00000000, 38.00000000, '🇪🇹', 'U+1F1EA U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:46:58', 1, 'Q115'),
(71, 'Falkland Islands', 'FLK', '238', 'FK', '500', 'Stanley', 'FKP', 'Falkland Islands pound', '£', '.fk', 'Falkland Islands', 'Americas', 'South America', '[{\"zoneName\":\"Atlantic/Stanley\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"FKST\",\"tzName\":\"Falkland Islands Summer Time\"}]', '{\"kr\":\"포클랜드 제도\",\"br\":\"Ilhas Malvinas\",\"pt\":\"Ilhas Falkland\",\"nl\":\"Falklandeilanden [Islas Malvinas]\",\"hr\":\"Falklandski Otoci\",\"fa\":\"جزایر فالکلند\",\"de\":\"Falklandinseln\",\"es\":\"Islas Malvinas\",\"fr\":\"Îles Malouines\",\"ja\":\"フォークランド（マルビナス）諸島\",\"it\":\"Isole Falkland o Isole Malvine\",\"cn\":\"福克兰群岛\"}', -51.75000000, -59.00000000, '🇫🇰', 'U+1F1EB U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 18:47:05', 1, NULL),
(72, 'Faroe Islands', 'FRO', '234', 'FO', '298', 'Torshavn', 'DKK', 'Danish krone', 'Kr.', '.fo', 'Føroyar', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Atlantic/Faroe\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"}]', '{\"kr\":\"페로 제도\",\"br\":\"Ilhas Faroé\",\"pt\":\"Ilhas Faroé\",\"nl\":\"Faeröer\",\"hr\":\"Farski Otoci\",\"fa\":\"جزایر فارو\",\"de\":\"Färöer-Inseln\",\"es\":\"Islas Faroe\",\"fr\":\"Îles Féroé\",\"ja\":\"フェロー諸島\",\"it\":\"Isole Far Oer\",\"cn\":\"法罗群岛\"}', 62.00000000, -7.00000000, '🇫🇴', 'U+1F1EB U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 18:47:11', 1, NULL),
(73, 'Fiji Islands', 'FJI', '242', 'FJ', '679', 'Suva', 'FJD', 'Fijian dollar', 'FJ$', '.fj', 'Fiji', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Fiji\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"FJT\",\"tzName\":\"Fiji Time\"}]', '{\"kr\":\"피지\",\"br\":\"Fiji\",\"pt\":\"Fiji\",\"nl\":\"Fiji\",\"hr\":\"Fiđi\",\"fa\":\"فیجی\",\"de\":\"Fidschi\",\"es\":\"Fiyi\",\"fr\":\"Fidji\",\"ja\":\"フィジー\",\"it\":\"Figi\",\"cn\":\"斐济\"}', -18.00000000, 175.00000000, '🇫🇯', 'U+1F1EB U+1F1EF', '2018-07-21 01:41:03', '2021-12-11 18:47:17', 1, 'Q712'),
(74, 'Finland', 'FIN', '246', 'FI', '358', 'Helsinki', 'EUR', 'Euro', '€', '.fi', 'Suomi', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Helsinki\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"핀란드\",\"br\":\"Finlândia\",\"pt\":\"Finlândia\",\"nl\":\"Finland\",\"hr\":\"Finska\",\"fa\":\"فنلاند\",\"de\":\"Finnland\",\"es\":\"Finlandia\",\"fr\":\"Finlande\",\"ja\":\"フィンランド\",\"it\":\"Finlandia\",\"cn\":\"芬兰\"}', 64.00000000, 26.00000000, '🇫🇮', 'U+1F1EB U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 18:47:24', 1, 'Q33'),
(75, 'France', 'FRA', '250', 'FR', '33', 'Paris', 'EUR', 'Euro', '€', '.fr', 'France', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Paris\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"프랑스\",\"br\":\"França\",\"pt\":\"França\",\"nl\":\"Frankrijk\",\"hr\":\"Francuska\",\"fa\":\"فرانسه\",\"de\":\"Frankreich\",\"es\":\"Francia\",\"fr\":\"France\",\"ja\":\"フランス\",\"it\":\"Francia\",\"cn\":\"法国\"}', 46.00000000, 2.00000000, '🇫🇷', 'U+1F1EB U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:47:33', 1, 'Q142'),
(76, 'French Guiana', 'GUF', '254', 'GF', '594', 'Cayenne', 'EUR', 'Euro', '€', '.gf', 'Guyane française', 'Americas', 'South America', '[{\"zoneName\":\"America/Cayenne\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"GFT\",\"tzName\":\"French Guiana Time\"}]', '{\"kr\":\"프랑스령 기아나\",\"br\":\"Guiana Francesa\",\"pt\":\"Guiana Francesa\",\"nl\":\"Frans-Guyana\",\"hr\":\"Francuska Gvajana\",\"fa\":\"گویان فرانسه\",\"de\":\"Französisch Guyana\",\"es\":\"Guayana Francesa\",\"fr\":\"Guayane\",\"ja\":\"フランス領ギアナ\",\"it\":\"Guyana francese\",\"cn\":\"法属圭亚那\"}', 4.00000000, -53.00000000, '🇬🇫', 'U+1F1EC U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 18:48:11', 1, NULL),
(77, 'French Polynesia', 'PYF', '258', 'PF', '689', 'Papeete', 'XPF', 'CFP franc', '₣', '.pf', 'Polynésie française', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Gambier\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"GAMT\",\"tzName\":\"Gambier Islands Time\"},{\"zoneName\":\"Pacific/Marquesas\",\"gmtOffset\":-34200,\"gmtOffsetName\":\"UTC-09:30\",\"abbreviation\":\"MART\",\"tzName\":\"Marquesas Islands Time\"},{\"zoneName\":\"Pacific/Tahiti\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"TAHT\",\"tzName\":\"Tahiti Time\"}]', '{\"kr\":\"프랑스령 폴리네시아\",\"br\":\"Polinésia Francesa\",\"pt\":\"Polinésia Francesa\",\"nl\":\"Frans-Polynesië\",\"hr\":\"Francuska Polinezija\",\"fa\":\"پلی‌نزی فرانسه\",\"de\":\"Französisch-Polynesien\",\"es\":\"Polinesia Francesa\",\"fr\":\"Polynésie française\",\"ja\":\"フランス領ポリネシア\",\"it\":\"Polinesia Francese\",\"cn\":\"法属波利尼西亚\"}', -15.00000000, -140.00000000, '🇵🇫', 'U+1F1F5 U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 18:47:54', 1, NULL),
(78, 'French Southern Territories', 'ATF', '260', 'TF', '262', 'Port-aux-Francais', 'EUR', 'Euro', '€', '.tf', 'Territoire des Terres australes et antarctiques fr', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Indian/Kerguelen\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TFT\",\"tzName\":\"French Southern and Antarctic Time\"}]', '{\"kr\":\"프랑스령 남방 및 남극\",\"br\":\"Terras Austrais e Antárticas Francesas\",\"pt\":\"Terras Austrais e Antárticas Francesas\",\"nl\":\"Franse Gebieden in de zuidelijke Indische Oceaan\",\"hr\":\"Francuski južni i antarktički teritoriji\",\"fa\":\"سرزمین‌های جنوبی و جنوبگانی فرانسه\",\"de\":\"Französische Süd- und Antarktisgebiete\",\"es\":\"Tierras Australes y Antárticas Francesas\",\"fr\":\"Terres australes et antarctiques françaises\",\"ja\":\"フランス領南方・南極地域\",\"it\":\"Territori Francesi del Sud\",\"cn\":\"法属南部领地\"}', -49.25000000, 69.16700000, '🇹🇫', 'U+1F1F9 U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 18:48:34', 1, NULL),
(79, 'Gabon', 'GAB', '266', 'GA', '241', 'Libreville', 'XAF', 'Central African CFA franc', 'FCFA', '.ga', 'Gabon', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Libreville\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"가봉\",\"br\":\"Gabão\",\"pt\":\"Gabão\",\"nl\":\"Gabon\",\"hr\":\"Gabon\",\"fa\":\"گابن\",\"de\":\"Gabun\",\"es\":\"Gabón\",\"fr\":\"Gabon\",\"ja\":\"ガボン\",\"it\":\"Gabon\",\"cn\":\"加蓬\"}', -1.00000000, 11.75000000, '🇬🇦', 'U+1F1EC U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 18:48:46', 1, 'Q1000'),
(80, 'Gambia The', 'GMB', '270', 'GM', '220', 'Banjul', 'GMD', 'Gambian dalasi', 'D', '.gm', 'Gambia', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Banjul\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"감비아\",\"br\":\"Gâmbia\",\"pt\":\"Gâmbia\",\"nl\":\"Gambia\",\"hr\":\"Gambija\",\"fa\":\"گامبیا\",\"de\":\"Gambia\",\"es\":\"Gambia\",\"fr\":\"Gambie\",\"ja\":\"ガンビア\",\"it\":\"Gambia\",\"cn\":\"冈比亚\"}', 13.46666666, -16.56666666, '🇬🇲', 'U+1F1EC U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:48:53', 1, 'Q1005'),
(81, 'Georgia', 'GEO', '268', 'GE', '995', 'Tbilisi', 'GEL', 'Georgian lari', 'ლ', '.ge', 'საქართველო', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Tbilisi\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"GET\",\"tzName\":\"Georgia Standard Time\"}]', '{\"kr\":\"조지아\",\"br\":\"Geórgia\",\"pt\":\"Geórgia\",\"nl\":\"Georgië\",\"hr\":\"Gruzija\",\"fa\":\"گرجستان\",\"de\":\"Georgien\",\"es\":\"Georgia\",\"fr\":\"Géorgie\",\"ja\":\"グルジア\",\"it\":\"Georgia\",\"cn\":\"格鲁吉亚\"}', 42.00000000, 43.50000000, '🇬🇪', 'U+1F1EC U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 18:48:59', 1, 'Q230'),
(82, 'Germany', 'DEU', '276', 'DE', '49', 'Berlin', 'EUR', 'Euro', '€', '.de', 'Deutschland', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Berlin\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"},{\"zoneName\":\"Europe/Busingen\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"독일\",\"br\":\"Alemanha\",\"pt\":\"Alemanha\",\"nl\":\"Duitsland\",\"hr\":\"Njemačka\",\"fa\":\"آلمان\",\"de\":\"Deutschland\",\"es\":\"Alemania\",\"fr\":\"Allemagne\",\"ja\":\"ドイツ\",\"it\":\"Germania\",\"cn\":\"德国\"}', 51.00000000, 9.00000000, '🇩🇪', 'U+1F1E9 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 18:49:06', 1, 'Q183'),
(83, 'Ghana', 'GHA', '288', 'GH', '233', 'Accra', 'GHS', 'Ghanaian cedi', 'GH₵', '.gh', 'Ghana', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Accra\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"가나\",\"br\":\"Gana\",\"pt\":\"Gana\",\"nl\":\"Ghana\",\"hr\":\"Gana\",\"fa\":\"غنا\",\"de\":\"Ghana\",\"es\":\"Ghana\",\"fr\":\"Ghana\",\"ja\":\"ガーナ\",\"it\":\"Ghana\",\"cn\":\"加纳\"}', 8.00000000, -2.00000000, '🇬🇭', 'U+1F1EC U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 18:49:14', 1, 'Q117'),
(84, 'Gibraltar', 'GIB', '292', 'GI', '350', 'Gibraltar', 'GIP', 'Gibraltar pound', '£', '.gi', 'Gibraltar', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Gibraltar\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"지브롤터\",\"br\":\"Gibraltar\",\"pt\":\"Gibraltar\",\"nl\":\"Gibraltar\",\"hr\":\"Gibraltar\",\"fa\":\"جبل‌طارق\",\"de\":\"Gibraltar\",\"es\":\"Gibraltar\",\"fr\":\"Gibraltar\",\"ja\":\"ジブラルタル\",\"it\":\"Gibilterra\",\"cn\":\"直布罗陀\"}', 36.13333333, -5.35000000, '🇬🇮', 'U+1F1EC U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 18:49:19', 1, NULL),
(85, 'Greece', 'GRC', '300', 'GR', '30', 'Athens', 'EUR', 'Euro', '€', '.gr', 'Ελλάδα', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Athens\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"그리스\",\"br\":\"Grécia\",\"pt\":\"Grécia\",\"nl\":\"Griekenland\",\"hr\":\"Grčka\",\"fa\":\"یونان\",\"de\":\"Griechenland\",\"es\":\"Grecia\",\"fr\":\"Grèce\",\"ja\":\"ギリシャ\",\"it\":\"Grecia\",\"cn\":\"希腊\"}', 39.00000000, 22.00000000, '🇬🇷', 'U+1F1EC U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:49:24', 1, 'Q41'),
(86, 'Greenland', 'GRL', '304', 'GL', '299', 'Nuuk', 'DKK', 'Danish krone', 'Kr.', '.gl', 'Kalaallit Nunaat', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Danmarkshavn\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"},{\"zoneName\":\"America/Nuuk\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"WGT\",\"tzName\":\"West Greenland Time\"},{\"zoneName\":\"America/Scoresbysund\",\"gmtOffset\":-3600,\"gmtOffsetName\":\"UTC-01:00\",\"abbreviation\":\"EGT\",\"tzName\":\"Eastern Greenland Time\"},{\"zoneName\":\"America/Thule\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"그린란드\",\"br\":\"Groelândia\",\"pt\":\"Gronelândia\",\"nl\":\"Groenland\",\"hr\":\"Grenland\",\"fa\":\"گرینلند\",\"de\":\"Grönland\",\"es\":\"Groenlandia\",\"fr\":\"Groenland\",\"ja\":\"グリーンランド\",\"it\":\"Groenlandia\",\"cn\":\"格陵兰岛\"}', 72.00000000, -40.00000000, '🇬🇱', 'U+1F1EC U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 18:49:31', 1, NULL),
(87, 'Grenada', 'GRD', '308', 'GD', '+1-473', 'St. George\'s', 'XCD', 'Eastern Caribbean dollar', '$', '.gd', 'Grenada', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Grenada\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"그레나다\",\"br\":\"Granada\",\"pt\":\"Granada\",\"nl\":\"Grenada\",\"hr\":\"Grenada\",\"fa\":\"گرنادا\",\"de\":\"Grenada\",\"es\":\"Grenada\",\"fr\":\"Grenade\",\"ja\":\"グレナダ\",\"it\":\"Grenada\",\"cn\":\"格林纳达\"}', 12.11666666, -61.66666666, '🇬🇩', 'U+1F1EC U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 18:49:40', 1, 'Q769'),
(88, 'Guadeloupe', 'GLP', '312', 'GP', '590', 'Basse-Terre', 'EUR', 'Euro', '€', '.gp', 'Guadeloupe', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Guadeloupe\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"과들루프\",\"br\":\"Guadalupe\",\"pt\":\"Guadalupe\",\"nl\":\"Guadeloupe\",\"hr\":\"Gvadalupa\",\"fa\":\"جزیره گوادلوپ\",\"de\":\"Guadeloupe\",\"es\":\"Guadalupe\",\"fr\":\"Guadeloupe\",\"ja\":\"グアドループ\",\"it\":\"Guadeloupa\",\"cn\":\"瓜德罗普岛\"}', 16.25000000, -61.58333300, '🇬🇵', 'U+1F1EC U+1F1F5', '2018-07-21 01:41:03', '2021-12-11 18:51:29', 1, NULL),
(89, 'Guam', 'GUM', '316', 'GU', '+1-671', 'Hagatna', 'USD', 'US Dollar', '$', '.gu', 'Guam', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Guam\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"CHST\",\"tzName\":\"Chamorro Standard Time\"}]', '{\"kr\":\"괌\",\"br\":\"Guam\",\"pt\":\"Guame\",\"nl\":\"Guam\",\"hr\":\"Guam\",\"fa\":\"گوام\",\"de\":\"Guam\",\"es\":\"Guam\",\"fr\":\"Guam\",\"ja\":\"グアム\",\"it\":\"Guam\",\"cn\":\"关岛\"}', 13.46666666, 144.78333333, '🇬🇺', 'U+1F1EC U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 18:50:50', 1, NULL),
(90, 'Guatemala', 'GTM', '320', 'GT', '502', 'Guatemala City', 'GTQ', 'Guatemalan quetzal', 'Q', '.gt', 'Guatemala', 'Americas', 'Central America', '[{\"zoneName\":\"America/Guatemala\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"과테말라\",\"br\":\"Guatemala\",\"pt\":\"Guatemala\",\"nl\":\"Guatemala\",\"hr\":\"Gvatemala\",\"fa\":\"گواتمالا\",\"de\":\"Guatemala\",\"es\":\"Guatemala\",\"fr\":\"Guatemala\",\"ja\":\"グアテマラ\",\"it\":\"Guatemala\",\"cn\":\"危地马拉\"}', 15.50000000, -90.25000000, '🇬🇹', 'U+1F1EC U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:51:50', 1, 'Q774'),
(91, 'Guernsey and Alderney', 'GGY', '831', 'GG', '+44-1481', 'St Peter Port', 'GBP', 'British pound', '£', '.gg', 'Guernsey', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Guernsey\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"건지, 올더니\",\"br\":\"Guernsey\",\"pt\":\"Guernsey\",\"nl\":\"Guernsey\",\"hr\":\"Guernsey\",\"fa\":\"گرنزی\",\"de\":\"Guernsey\",\"es\":\"Guernsey\",\"fr\":\"Guernesey\",\"ja\":\"ガーンジー\",\"it\":\"Guernsey\",\"cn\":\"根西岛\"}', 49.46666666, -2.58333333, '🇬🇬', 'U+1F1EC U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 18:53:37', 1, NULL),
(92, 'Guinea', 'GIN', '324', 'GN', '224', 'Conakry', 'GNF', 'Guinean franc', 'FG', '.gn', 'Guinée', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Conakry\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"기니\",\"br\":\"Guiné\",\"pt\":\"Guiné\",\"nl\":\"Guinee\",\"hr\":\"Gvineja\",\"fa\":\"گینه\",\"de\":\"Guinea\",\"es\":\"Guinea\",\"fr\":\"Guinée\",\"ja\":\"ギニア\",\"it\":\"Guinea\",\"cn\":\"几内亚\"}', 11.00000000, -10.00000000, '🇬🇳', 'U+1F1EC U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 18:53:45', 1, 'Q1006'),
(93, 'Guinea-Bissau', 'GNB', '624', 'GW', '245', 'Bissau', 'XOF', 'West African CFA franc', 'CFA', '.gw', 'Guiné-Bissau', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Bissau\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"기니비사우\",\"br\":\"Guiné-Bissau\",\"pt\":\"Guiné-Bissau\",\"nl\":\"Guinee-Bissau\",\"hr\":\"Gvineja Bisau\",\"fa\":\"گینه بیسائو\",\"de\":\"Guinea-Bissau\",\"es\":\"Guinea-Bisáu\",\"fr\":\"Guinée-Bissau\",\"ja\":\"ギニアビサウ\",\"it\":\"Guinea-Bissau\",\"cn\":\"几内亚比绍\"}', 12.00000000, -15.00000000, '🇬🇼', 'U+1F1EC U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 18:53:54', 1, 'Q1007'),
(94, 'Guyana', 'GUY', '328', 'GY', '592', 'Georgetown', 'GYD', 'Guyanese dollar', '$', '.gy', 'Guyana', 'Americas', 'South America', '[{\"zoneName\":\"America/Guyana\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"GYT\",\"tzName\":\"Guyana Time\"}]', '{\"kr\":\"가이아나\",\"br\":\"Guiana\",\"pt\":\"Guiana\",\"nl\":\"Guyana\",\"hr\":\"Gvajana\",\"fa\":\"گویان\",\"de\":\"Guyana\",\"es\":\"Guyana\",\"fr\":\"Guyane\",\"ja\":\"ガイアナ\",\"it\":\"Guyana\",\"cn\":\"圭亚那\"}', 5.00000000, -59.00000000, '🇬🇾', 'U+1F1EC U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 18:54:01', 1, 'Q734'),
(95, 'Haiti', 'HTI', '332', 'HT', '509', 'Port-au-Prince', 'HTG', 'Haitian gourde', 'G', '.ht', 'Haïti', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Port-au-Prince\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"아이티\",\"br\":\"Haiti\",\"pt\":\"Haiti\",\"nl\":\"Haïti\",\"hr\":\"Haiti\",\"fa\":\"هائیتی\",\"de\":\"Haiti\",\"es\":\"Haiti\",\"fr\":\"Haïti\",\"ja\":\"ハイチ\",\"it\":\"Haiti\",\"cn\":\"海地\"}', 19.00000000, -72.41666666, '🇭🇹', 'U+1F1ED U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:54:06', 1, 'Q790'),
(96, 'Heard Island and McDonald Islands', 'HMD', '334', 'HM', '672', '', 'AUD', 'Australian dollar', '$', '.hm', 'Heard Island and McDonald Islands', '', '', '[{\"zoneName\":\"Indian/Kerguelen\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TFT\",\"tzName\":\"French Southern and Antarctic Time\"}]', '{\"kr\":\"허드 맥도날드 제도\",\"br\":\"Ilha Heard e Ilhas McDonald\",\"pt\":\"Ilha Heard e Ilhas McDonald\",\"nl\":\"Heard- en McDonaldeilanden\",\"hr\":\"Otok Heard i otočje McDonald\",\"fa\":\"جزیره هرد و جزایر مک‌دونالد\",\"de\":\"Heard und die McDonaldinseln\",\"es\":\"Islas Heard y McDonald\",\"fr\":\"Îles Heard-et-MacDonald\",\"ja\":\"ハード島とマクドナルド諸島\",\"it\":\"Isole Heard e McDonald\",\"cn\":\"赫德·唐纳岛及麦唐纳岛\"}', -53.10000000, 72.51666666, '🇭🇲', 'U+1F1ED U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:18:51', 1, NULL),
(97, 'Honduras', 'HND', '340', 'HN', '504', 'Tegucigalpa', 'HNL', 'Honduran lempira', 'L', '.hn', 'Honduras', 'Americas', 'Central America', '[{\"zoneName\":\"America/Tegucigalpa\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"온두라스\",\"br\":\"Honduras\",\"pt\":\"Honduras\",\"nl\":\"Honduras\",\"hr\":\"Honduras\",\"fa\":\"هندوراس\",\"de\":\"Honduras\",\"es\":\"Honduras\",\"fr\":\"Honduras\",\"ja\":\"ホンジュラス\",\"it\":\"Honduras\",\"cn\":\"洪都拉斯\"}', 15.00000000, -86.50000000, '🇭🇳', 'U+1F1ED U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 18:54:16', 1, 'Q783'),
(98, 'Hong Kong S.A.R.', 'HKG', '344', 'HK', '852', 'Hong Kong', 'HKD', 'Hong Kong dollar', '$', '.hk', '香港', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Hong_Kong\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"HKT\",\"tzName\":\"Hong Kong Time\"}]', '{\"kr\":\"홍콩\",\"br\":\"Hong Kong\",\"pt\":\"Hong Kong\",\"nl\":\"Hongkong\",\"hr\":\"Hong Kong\",\"fa\":\"هنگ‌کنگ\",\"de\":\"Hong Kong\",\"es\":\"Hong Kong\",\"fr\":\"Hong Kong\",\"ja\":\"香港\",\"it\":\"Hong Kong\",\"cn\":\"中国香港\"}', 22.25000000, 114.16666666, '🇭🇰', 'U+1F1ED U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 18:54:22', 1, 'Q8646'),
(99, 'Hungary', 'HUN', '348', 'HU', '36', 'Budapest', 'HUF', 'Hungarian forint', 'Ft', '.hu', 'Magyarország', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Budapest\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"헝가리\",\"br\":\"Hungria\",\"pt\":\"Hungria\",\"nl\":\"Hongarije\",\"hr\":\"Mađarska\",\"fa\":\"مجارستان\",\"de\":\"Ungarn\",\"es\":\"Hungría\",\"fr\":\"Hongrie\",\"ja\":\"ハンガリー\",\"it\":\"Ungheria\",\"cn\":\"匈牙利\"}', 47.00000000, 20.00000000, '🇭🇺', 'U+1F1ED U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 18:54:30', 1, 'Q28'),
(100, 'Iceland', 'ISL', '352', 'IS', '354', 'Reykjavik', 'ISK', 'Icelandic króna', 'kr', '.is', 'Ísland', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Atlantic/Reykjavik\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"아이슬란드\",\"br\":\"Islândia\",\"pt\":\"Islândia\",\"nl\":\"IJsland\",\"hr\":\"Island\",\"fa\":\"ایسلند\",\"de\":\"Island\",\"es\":\"Islandia\",\"fr\":\"Islande\",\"ja\":\"アイスランド\",\"it\":\"Islanda\",\"cn\":\"冰岛\"}', 65.00000000, -18.00000000, '🇮🇸', 'U+1F1EE U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 18:54:35', 1, 'Q189'),
(101, 'India', 'IND', '356', 'IN', '91', 'New Delhi', 'INR', 'Indian rupee', '₹', '.in', 'भारत', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Kolkata\",\"gmtOffset\":19800,\"gmtOffsetName\":\"UTC+05:30\",\"abbreviation\":\"IST\",\"tzName\":\"Indian Standard Time\"}]', '{\"kr\":\"인도\",\"br\":\"Índia\",\"pt\":\"Índia\",\"nl\":\"India\",\"hr\":\"Indija\",\"fa\":\"هند\",\"de\":\"Indien\",\"es\":\"India\",\"fr\":\"Inde\",\"ja\":\"インド\",\"it\":\"India\",\"cn\":\"印度\"}', 20.00000000, 77.00000000, '🇮🇳', 'U+1F1EE U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 18:54:41', 1, 'Q668'),
(102, 'Indonesia', 'IDN', '360', 'ID', '62', 'Jakarta', 'IDR', 'Indonesian rupiah', 'Rp', '.id', 'Indonesia', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Jakarta\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"WIB\",\"tzName\":\"Western Indonesian Time\"},{\"zoneName\":\"Asia/Jayapura\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"WIT\",\"tzName\":\"Eastern Indonesian Time\"},{\"zoneName\":\"Asia/Makassar\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"WITA\",\"tzName\":\"Central Indonesia Time\"},{\"zoneName\":\"Asia/Pontianak\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"WIB\",\"tzName\":\"Western Indonesian Time\"}]', '{\"kr\":\"인도네시아\",\"br\":\"Indonésia\",\"pt\":\"Indonésia\",\"nl\":\"Indonesië\",\"hr\":\"Indonezija\",\"fa\":\"اندونزی\",\"de\":\"Indonesien\",\"es\":\"Indonesia\",\"fr\":\"Indonésie\",\"ja\":\"インドネシア\",\"it\":\"Indonesia\",\"cn\":\"印度尼西亚\"}', -5.00000000, 120.00000000, '🇮🇩', 'U+1F1EE U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 18:54:49', 1, 'Q252'),
(103, 'Iran', 'IRN', '364', 'IR', '98', 'Tehran', 'IRR', 'Iranian rial', '﷼', '.ir', 'ایران', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Tehran\",\"gmtOffset\":12600,\"gmtOffsetName\":\"UTC+03:30\",\"abbreviation\":\"IRDT\",\"tzName\":\"Iran Daylight Time\"}]', '{\"kr\":\"이란\",\"br\":\"Irã\",\"pt\":\"Irão\",\"nl\":\"Iran\",\"hr\":\"Iran\",\"fa\":\"ایران\",\"de\":\"Iran\",\"es\":\"Iran\",\"fr\":\"Iran\",\"ja\":\"イラン・イスラム共和国\",\"cn\":\"伊朗\"}', 32.00000000, 53.00000000, '🇮🇷', 'U+1F1EE U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:54:54', 1, 'Q794'),
(104, 'Iraq', 'IRQ', '368', 'IQ', '964', 'Baghdad', 'IQD', 'Iraqi dinar', 'د.ع', '.iq', 'العراق', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Baghdad\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"이라크\",\"br\":\"Iraque\",\"pt\":\"Iraque\",\"nl\":\"Irak\",\"hr\":\"Irak\",\"fa\":\"عراق\",\"de\":\"Irak\",\"es\":\"Irak\",\"fr\":\"Irak\",\"ja\":\"イラク\",\"it\":\"Iraq\",\"cn\":\"伊拉克\"}', 33.00000000, 44.00000000, '🇮🇶', 'U+1F1EE U+1F1F6', '2018-07-21 01:41:03', '2021-12-11 18:55:01', 1, 'Q796'),
(105, 'Ireland', 'IRL', '372', 'IE', '353', 'Dublin', 'EUR', 'Euro', '€', '.ie', 'Éire', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Dublin\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"아일랜드\",\"br\":\"Irlanda\",\"pt\":\"Irlanda\",\"nl\":\"Ierland\",\"hr\":\"Irska\",\"fa\":\"ایرلند\",\"de\":\"Irland\",\"es\":\"Irlanda\",\"fr\":\"Irlande\",\"ja\":\"アイルランド\",\"it\":\"Irlanda\",\"cn\":\"爱尔兰\"}', 53.00000000, -8.00000000, '🇮🇪', 'U+1F1EE U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 18:55:07', 1, 'Q27'),
(106, 'Israel', 'ISR', '376', 'IL', '972', 'Jerusalem', 'ILS', 'Israeli new shekel', '₪', '.il', 'יִשְׂרָאֵל', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Jerusalem\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"IST\",\"tzName\":\"Israel Standard Time\"}]', '{\"kr\":\"이스라엘\",\"br\":\"Israel\",\"pt\":\"Israel\",\"nl\":\"Israël\",\"hr\":\"Izrael\",\"fa\":\"اسرائیل\",\"de\":\"Israel\",\"es\":\"Israel\",\"fr\":\"Israël\",\"ja\":\"イスラエル\",\"it\":\"Israele\",\"cn\":\"以色列\"}', 31.50000000, 34.75000000, '🇮🇱', 'U+1F1EE U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 18:55:27', 1, 'Q801'),
(107, 'Italy', 'ITA', '380', 'IT', '39', 'Rome', 'EUR', 'Euro', '€', '.it', 'Italia', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Rome\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"이탈리아\",\"br\":\"Itália\",\"pt\":\"Itália\",\"nl\":\"Italië\",\"hr\":\"Italija\",\"fa\":\"ایتالیا\",\"de\":\"Italien\",\"es\":\"Italia\",\"fr\":\"Italie\",\"ja\":\"イタリア\",\"it\":\"Italia\",\"cn\":\"意大利\"}', 42.83333333, 12.83333333, '🇮🇹', 'U+1F1EE U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:55:33', 1, 'Q38'),
(108, 'Jamaica', 'JAM', '388', 'JM', '+1-876', 'Kingston', 'JMD', 'Jamaican dollar', 'J$', '.jm', 'Jamaica', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Jamaica\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"자메이카\",\"br\":\"Jamaica\",\"pt\":\"Jamaica\",\"nl\":\"Jamaica\",\"hr\":\"Jamajka\",\"fa\":\"جامائیکا\",\"de\":\"Jamaika\",\"es\":\"Jamaica\",\"fr\":\"Jamaïque\",\"ja\":\"ジャマイカ\",\"it\":\"Giamaica\",\"cn\":\"牙买加\"}', 18.25000000, -77.50000000, '🇯🇲', 'U+1F1EF U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:55:41', 1, 'Q766'),
(109, 'Japan', 'JPN', '392', 'JP', '81', 'Tokyo', 'JPY', 'Japanese yen', '¥', '.jp', '日本', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Tokyo\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"JST\",\"tzName\":\"Japan Standard Time\"}]', '{\"kr\":\"일본\",\"br\":\"Japão\",\"pt\":\"Japão\",\"nl\":\"Japan\",\"hr\":\"Japan\",\"fa\":\"ژاپن\",\"de\":\"Japan\",\"es\":\"Japón\",\"fr\":\"Japon\",\"ja\":\"日本\",\"it\":\"Giappone\",\"cn\":\"日本\"}', 36.00000000, 138.00000000, '🇯🇵', 'U+1F1EF U+1F1F5', '2018-07-21 01:41:03', '2021-12-11 18:55:46', 1, 'Q17'),
(110, 'Jersey', 'JEY', '832', 'JE', '+44-1534', 'Saint Helier', 'GBP', 'British pound', '£', '.je', 'Jersey', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Jersey\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"저지 섬\",\"br\":\"Jersey\",\"pt\":\"Jersey\",\"nl\":\"Jersey\",\"hr\":\"Jersey\",\"fa\":\"جرزی\",\"de\":\"Jersey\",\"es\":\"Jersey\",\"fr\":\"Jersey\",\"ja\":\"ジャージー\",\"it\":\"Isola di Jersey\",\"cn\":\"泽西岛\"}', 49.25000000, -2.16666666, '🇯🇪', 'U+1F1EF U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 18:55:59', 1, 'Q785'),
(111, 'Jordan', 'JOR', '400', 'JO', '962', 'Amman', 'JOD', 'Jordanian dinar', 'ا.د', '.jo', 'الأردن', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Amman\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"요르단\",\"br\":\"Jordânia\",\"pt\":\"Jordânia\",\"nl\":\"Jordanië\",\"hr\":\"Jordan\",\"fa\":\"اردن\",\"de\":\"Jordanien\",\"es\":\"Jordania\",\"fr\":\"Jordanie\",\"ja\":\"ヨルダン\",\"it\":\"Giordania\",\"cn\":\"约旦\"}', 31.00000000, 36.00000000, '🇯🇴', 'U+1F1EF U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 18:56:07', 1, 'Q810'),
(112, 'Kazakhstan', 'KAZ', '398', 'KZ', '7', 'Astana', 'KZT', 'Kazakhstani tenge', 'лв', '.kz', 'Қазақстан', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Almaty\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"ALMT\",\"tzName\":\"Alma-Ata Time[1\"},{\"zoneName\":\"Asia/Aqtau\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"AQTT\",\"tzName\":\"Aqtobe Time\"},{\"zoneName\":\"Asia/Aqtobe\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"AQTT\",\"tzName\":\"Aqtobe Time\"},{\"zoneName\":\"Asia/Atyrau\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"MSD+1\",\"tzName\":\"Moscow Daylight Time+1\"},{\"zoneName\":\"Asia/Oral\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"ORAT\",\"tzName\":\"Oral Time\"},{\"zoneName\":\"Asia/Qostanay\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"QYZST\",\"tzName\":\"Qyzylorda Summer Time\"},{\"zoneName\":\"Asia/Qyzylorda\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"QYZT\",\"tzName\":\"Qyzylorda Summer Time\"}]', '{\"kr\":\"카자흐스탄\",\"br\":\"Cazaquistão\",\"pt\":\"Cazaquistão\",\"nl\":\"Kazachstan\",\"hr\":\"Kazahstan\",\"fa\":\"قزاقستان\",\"de\":\"Kasachstan\",\"es\":\"Kazajistán\",\"fr\":\"Kazakhstan\",\"ja\":\"カザフスタン\",\"it\":\"Kazakistan\",\"cn\":\"哈萨克斯坦\"}', 48.00000000, 68.00000000, '🇰🇿', 'U+1F1F0 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 18:56:18', 1, 'Q232'),
(113, 'Kenya', 'KEN', '404', 'KE', '254', 'Nairobi', 'KES', 'Kenyan shilling', 'KSh', '.ke', 'Kenya', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Nairobi\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"케냐\",\"br\":\"Quênia\",\"pt\":\"Quénia\",\"nl\":\"Kenia\",\"hr\":\"Kenija\",\"fa\":\"کنیا\",\"de\":\"Kenia\",\"es\":\"Kenia\",\"fr\":\"Kenya\",\"ja\":\"ケニア\",\"it\":\"Kenya\",\"cn\":\"肯尼亚\"}', 1.00000000, 38.00000000, '🇰🇪', 'U+1F1F0 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 18:56:23', 1, 'Q114'),
(114, 'Kiribati', 'KIR', '296', 'KI', '686', 'Tarawa', 'AUD', 'Australian dollar', '$', '.ki', 'Kiribati', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Enderbury\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"PHOT\",\"tzName\":\"Phoenix Island Time\"},{\"zoneName\":\"Pacific/Kiritimati\",\"gmtOffset\":50400,\"gmtOffsetName\":\"UTC+14:00\",\"abbreviation\":\"LINT\",\"tzName\":\"Line Islands Time\"},{\"zoneName\":\"Pacific/Tarawa\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"GILT\",\"tzName\":\"Gilbert Island Time\"}]', '{\"kr\":\"키리바시\",\"br\":\"Kiribati\",\"pt\":\"Quiribáti\",\"nl\":\"Kiribati\",\"hr\":\"Kiribati\",\"fa\":\"کیریباتی\",\"de\":\"Kiribati\",\"es\":\"Kiribati\",\"fr\":\"Kiribati\",\"ja\":\"キリバス\",\"it\":\"Kiribati\",\"cn\":\"基里巴斯\"}', 1.41666666, 173.00000000, '🇰🇮', 'U+1F1F0 U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 18:56:30', 1, 'Q710'),
(115, 'North Korea', 'PRK', '408', 'KP', '850', 'Pyongyang', 'KPW', 'North Korean Won', '₩', '.kp', '북한', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Pyongyang\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"KST\",\"tzName\":\"Korea Standard Time\"}]', '{\"kr\":\"조선민주주의인민공화국\",\"br\":\"Coreia do Norte\",\"pt\":\"Coreia do Norte\",\"nl\":\"Noord-Korea\",\"hr\":\"Sjeverna Koreja\",\"fa\":\"کره جنوبی\",\"de\":\"Nordkorea\",\"es\":\"Corea del Norte\",\"fr\":\"Corée du Nord\",\"ja\":\"朝鮮民主主義人民共和国\",\"it\":\"Corea del Nord\",\"cn\":\"朝鲜\"}', 40.00000000, 127.00000000, '🇰🇵', 'U+1F1F0 U+1F1F5', '2018-07-21 01:41:03', '2021-12-11 19:05:28', 1, 'Q423'),
(116, 'South Korea', 'KOR', '410', 'KR', '82', 'Seoul', 'KRW', 'Won', '₩', '.kr', '대한민국', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Seoul\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"KST\",\"tzName\":\"Korea Standard Time\"}]', '{\"kr\":\"대한민국\",\"br\":\"Coreia do Sul\",\"pt\":\"Coreia do Sul\",\"nl\":\"Zuid-Korea\",\"hr\":\"Južna Koreja\",\"fa\":\"کره شمالی\",\"de\":\"Südkorea\",\"es\":\"Corea del Sur\",\"fr\":\"Corée du Sud\",\"ja\":\"大韓民国\",\"it\":\"Corea del Sud\",\"cn\":\"韩国\"}', 37.00000000, 127.50000000, '🇰🇷', 'U+1F1F0 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 19:12:11', 1, 'Q884'),
(117, 'Kuwait', 'KWT', '414', 'KW', '965', 'Kuwait City', 'KWD', 'Kuwaiti dinar', 'ك.د', '.kw', 'الكويت', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Kuwait\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"쿠웨이트\",\"br\":\"Kuwait\",\"pt\":\"Kuwait\",\"nl\":\"Koeweit\",\"hr\":\"Kuvajt\",\"fa\":\"کویت\",\"de\":\"Kuwait\",\"es\":\"Kuwait\",\"fr\":\"Koweït\",\"ja\":\"クウェート\",\"it\":\"Kuwait\",\"cn\":\"科威特\"}', 29.50000000, 45.75000000, '🇰🇼', 'U+1F1F0 U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 18:56:44', 1, 'Q817'),
(118, 'Kyrgyzstan', 'KGZ', '417', 'KG', '996', 'Bishkek', 'KGS', 'Kyrgyzstani som', 'лв', '.kg', 'Кыргызстан', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Bishkek\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"KGT\",\"tzName\":\"Kyrgyzstan Time\"}]', '{\"kr\":\"키르기스스탄\",\"br\":\"Quirguistão\",\"pt\":\"Quirguizistão\",\"nl\":\"Kirgizië\",\"hr\":\"Kirgistan\",\"fa\":\"قرقیزستان\",\"de\":\"Kirgisistan\",\"es\":\"Kirguizistán\",\"fr\":\"Kirghizistan\",\"ja\":\"キルギス\",\"it\":\"Kirghizistan\",\"cn\":\"吉尔吉斯斯坦\"}', 41.00000000, 75.00000000, '🇰🇬', 'U+1F1F0 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 18:56:49', 1, 'Q813'),
(119, 'Laos', 'LAO', '418', 'LA', '856', 'Vientiane', 'LAK', 'Lao kip', '₭', '.la', 'ສປປລາວ', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Vientiane\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"라오스\",\"br\":\"Laos\",\"pt\":\"Laos\",\"nl\":\"Laos\",\"hr\":\"Laos\",\"fa\":\"لائوس\",\"de\":\"Laos\",\"es\":\"Laos\",\"fr\":\"Laos\",\"ja\":\"ラオス人民民主共和国\",\"it\":\"Laos\",\"cn\":\"寮人民民主共和国\"}', 18.00000000, 105.00000000, '🇱🇦', 'U+1F1F1 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 18:56:58', 1, 'Q819'),
(120, 'Latvia', 'LVA', '428', 'LV', '371', 'Riga', 'EUR', 'Euro', '€', '.lv', 'Latvija', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Riga\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"라트비아\",\"br\":\"Letônia\",\"pt\":\"Letónia\",\"nl\":\"Letland\",\"hr\":\"Latvija\",\"fa\":\"لتونی\",\"de\":\"Lettland\",\"es\":\"Letonia\",\"fr\":\"Lettonie\",\"ja\":\"ラトビア\",\"it\":\"Lettonia\",\"cn\":\"拉脱维亚\"}', 57.00000000, 25.00000000, '🇱🇻', 'U+1F1F1 U+1F1FB', '2018-07-21 01:41:03', '2021-12-11 18:57:04', 1, 'Q211'),
(121, 'Lebanon', 'LBN', '422', 'LB', '961', 'Beirut', 'LBP', 'Lebanese pound', '£', '.lb', 'لبنان', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Beirut\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"레바논\",\"br\":\"Líbano\",\"pt\":\"Líbano\",\"nl\":\"Libanon\",\"hr\":\"Libanon\",\"fa\":\"لبنان\",\"de\":\"Libanon\",\"es\":\"Líbano\",\"fr\":\"Liban\",\"ja\":\"レバノン\",\"it\":\"Libano\",\"cn\":\"黎巴嫩\"}', 33.83333333, 35.83333333, '🇱🇧', 'U+1F1F1 U+1F1E7', '2018-07-21 01:41:03', '2021-12-11 18:57:10', 1, 'Q822'),
(122, 'Lesotho', 'LSO', '426', 'LS', '266', 'Maseru', 'LSL', 'Lesotho loti', 'L', '.ls', 'Lesotho', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Maseru\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"SAST\",\"tzName\":\"South African Standard Time\"}]', '{\"kr\":\"레소토\",\"br\":\"Lesoto\",\"pt\":\"Lesoto\",\"nl\":\"Lesotho\",\"hr\":\"Lesoto\",\"fa\":\"لسوتو\",\"de\":\"Lesotho\",\"es\":\"Lesotho\",\"fr\":\"Lesotho\",\"ja\":\"レソト\",\"it\":\"Lesotho\",\"cn\":\"莱索托\"}', -29.50000000, 28.50000000, '🇱🇸', 'U+1F1F1 U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 18:57:27', 1, 'Q1013'),
(123, 'Liberia', 'LBR', '430', 'LR', '231', 'Monrovia', 'LRD', 'Liberian dollar', '$', '.lr', 'Liberia', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Monrovia\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"라이베리아\",\"br\":\"Libéria\",\"pt\":\"Libéria\",\"nl\":\"Liberia\",\"hr\":\"Liberija\",\"fa\":\"لیبریا\",\"de\":\"Liberia\",\"es\":\"Liberia\",\"fr\":\"Liberia\",\"ja\":\"リベリア\",\"it\":\"Liberia\",\"cn\":\"利比里亚\"}', 6.50000000, -9.50000000, '🇱🇷', 'U+1F1F1 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:57:33', 1, 'Q1014'),
(124, 'Libya', 'LBY', '434', 'LY', '218', 'Tripolis', 'LYD', 'Libyan dinar', 'د.ل', '.ly', '‏ليبيا', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Tripoli\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"리비아\",\"br\":\"Líbia\",\"pt\":\"Líbia\",\"nl\":\"Libië\",\"hr\":\"Libija\",\"fa\":\"لیبی\",\"de\":\"Libyen\",\"es\":\"Libia\",\"fr\":\"Libye\",\"ja\":\"リビア\",\"it\":\"Libia\",\"cn\":\"利比亚\"}', 25.00000000, 17.00000000, '🇱🇾', 'U+1F1F1 U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 18:57:38', 1, 'Q1016'),
(125, 'Liechtenstein', 'LIE', '438', 'LI', '423', 'Vaduz', 'CHF', 'Swiss franc', 'CHf', '.li', 'Liechtenstein', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Vaduz\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"리히텐슈타인\",\"br\":\"Liechtenstein\",\"pt\":\"Listenstaine\",\"nl\":\"Liechtenstein\",\"hr\":\"Lihtenštajn\",\"fa\":\"لیختن‌اشتاین\",\"de\":\"Liechtenstein\",\"es\":\"Liechtenstein\",\"fr\":\"Liechtenstein\",\"ja\":\"リヒテンシュタイン\",\"it\":\"Liechtenstein\",\"cn\":\"列支敦士登\"}', 47.26666666, 9.53333333, '🇱🇮', 'U+1F1F1 U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 18:57:47', 1, 'Q347'),
(126, 'Lithuania', 'LTU', '440', 'LT', '370', 'Vilnius', 'EUR', 'Euro', '€', '.lt', 'Lietuva', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Vilnius\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"리투아니아\",\"br\":\"Lituânia\",\"pt\":\"Lituânia\",\"nl\":\"Litouwen\",\"hr\":\"Litva\",\"fa\":\"لیتوانی\",\"de\":\"Litauen\",\"es\":\"Lituania\",\"fr\":\"Lituanie\",\"ja\":\"リトアニア\",\"it\":\"Lituania\",\"cn\":\"立陶宛\"}', 56.00000000, 24.00000000, '🇱🇹', 'U+1F1F1 U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:58:00', 1, 'Q37'),
(127, 'Luxembourg', 'LUX', '442', 'LU', '352', 'Luxembourg', 'EUR', 'Euro', '€', '.lu', 'Luxembourg', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Luxembourg\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"룩셈부르크\",\"br\":\"Luxemburgo\",\"pt\":\"Luxemburgo\",\"nl\":\"Luxemburg\",\"hr\":\"Luksemburg\",\"fa\":\"لوکزامبورگ\",\"de\":\"Luxemburg\",\"es\":\"Luxemburgo\",\"fr\":\"Luxembourg\",\"ja\":\"ルクセンブルク\",\"it\":\"Lussemburgo\",\"cn\":\"卢森堡\"}', 49.75000000, 6.16666666, '🇱🇺', 'U+1F1F1 U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 18:58:06', 1, 'Q32'),
(128, 'Macau S.A.R.', 'MAC', '446', 'MO', '853', 'Macao', 'MOP', 'Macanese pataca', '$', '.mo', '澳門', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Macau\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CST\",\"tzName\":\"China Standard Time\"}]', '{\"kr\":\"마카오\",\"br\":\"Macau\",\"pt\":\"Macau\",\"nl\":\"Macao\",\"hr\":\"Makao\",\"fa\":\"مکائو\",\"de\":\"Macao\",\"es\":\"Macao\",\"fr\":\"Macao\",\"ja\":\"マカオ\",\"it\":\"Macao\",\"cn\":\"中国澳门\"}', 22.16666666, 113.55000000, '🇲🇴', 'U+1F1F2 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 18:58:15', 1, NULL),
(129, 'Macedonia', 'MKD', '807', 'MK', '389', 'Skopje', 'MKD', 'Denar', 'ден', '.mk', 'Северна Македонија', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Skopje\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"마케도니아\",\"br\":\"Macedônia\",\"pt\":\"Macedónia\",\"nl\":\"Macedonië\",\"hr\":\"Makedonija\",\"fa\":\"\",\"de\":\"Mazedonien\",\"es\":\"Macedonia\",\"fr\":\"Macédoine\",\"ja\":\"マケドニア旧ユーゴスラビア共和国\",\"it\":\"Macedonia\",\"cn\":\"马其顿\"}', 41.83333333, 22.00000000, '🇲🇰', 'U+1F1F2 U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 18:58:42', 1, 'Q221'),
(130, 'Madagascar', 'MDG', '450', 'MG', '261', 'Antananarivo', 'MGA', 'Malagasy ariary', 'Ar', '.mg', 'Madagasikara', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Antananarivo\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"마다가스카르\",\"br\":\"Madagascar\",\"pt\":\"Madagáscar\",\"nl\":\"Madagaskar\",\"hr\":\"Madagaskar\",\"fa\":\"ماداگاسکار\",\"de\":\"Madagaskar\",\"es\":\"Madagascar\",\"fr\":\"Madagascar\",\"ja\":\"マダガスカル\",\"it\":\"Madagascar\",\"cn\":\"马达加斯加\"}', -20.00000000, 47.00000000, '🇲🇬', 'U+1F1F2 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 18:58:52', 1, 'Q1019'),
(131, 'Malawi', 'MWI', '454', 'MW', '265', 'Lilongwe', 'MWK', 'Malawian kwacha', 'MK', '.mw', 'Malawi', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Blantyre\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"말라위\",\"br\":\"Malawi\",\"pt\":\"Malávi\",\"nl\":\"Malawi\",\"hr\":\"Malavi\",\"fa\":\"مالاوی\",\"de\":\"Malawi\",\"es\":\"Malawi\",\"fr\":\"Malawi\",\"ja\":\"マラウイ\",\"it\":\"Malawi\",\"cn\":\"马拉维\"}', -13.50000000, 34.00000000, '🇲🇼', 'U+1F1F2 U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 18:59:01', 1, 'Q1020');
INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_name`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(132, 'Malaysia', 'MYS', '458', 'MY', '60', 'Kuala Lumpur', 'MYR', 'Malaysian ringgit', 'RM', '.my', 'Malaysia', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Kuala_Lumpur\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"MYT\",\"tzName\":\"Malaysia Time\"},{\"zoneName\":\"Asia/Kuching\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"MYT\",\"tzName\":\"Malaysia Time\"}]', '{\"kr\":\"말레이시아\",\"br\":\"Malásia\",\"pt\":\"Malásia\",\"nl\":\"Maleisië\",\"hr\":\"Malezija\",\"fa\":\"مالزی\",\"de\":\"Malaysia\",\"es\":\"Malasia\",\"fr\":\"Malaisie\",\"ja\":\"マレーシア\",\"it\":\"Malesia\",\"cn\":\"马来西亚\"}', 2.50000000, 112.50000000, '🇲🇾', 'U+1F1F2 U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 18:59:08', 1, 'Q833'),
(133, 'Maldives', 'MDV', '462', 'MV', '960', 'Male', 'MVR', 'Maldivian rufiyaa', 'Rf', '.mv', 'Maldives', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Indian/Maldives\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"MVT\",\"tzName\":\"Maldives Time\"}]', '{\"kr\":\"몰디브\",\"br\":\"Maldivas\",\"pt\":\"Maldivas\",\"nl\":\"Maldiven\",\"hr\":\"Maldivi\",\"fa\":\"مالدیو\",\"de\":\"Malediven\",\"es\":\"Maldivas\",\"fr\":\"Maldives\",\"ja\":\"モルディブ\",\"it\":\"Maldive\",\"cn\":\"马尔代夫\"}', 3.25000000, 73.00000000, '🇲🇻', 'U+1F1F2 U+1F1FB', '2018-07-21 01:41:03', '2021-12-11 18:59:15', 1, 'Q826'),
(134, 'Mali', 'MLI', '466', 'ML', '223', 'Bamako', 'XOF', 'West African CFA franc', 'CFA', '.ml', 'Mali', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Bamako\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"말리\",\"br\":\"Mali\",\"pt\":\"Mali\",\"nl\":\"Mali\",\"hr\":\"Mali\",\"fa\":\"مالی\",\"de\":\"Mali\",\"es\":\"Mali\",\"fr\":\"Mali\",\"ja\":\"マリ\",\"it\":\"Mali\",\"cn\":\"马里\"}', 17.00000000, -4.00000000, '🇲🇱', 'U+1F1F2 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 18:59:20', 1, 'Q912'),
(135, 'Malta', 'MLT', '470', 'MT', '356', 'Valletta', 'EUR', 'Euro', '€', '.mt', 'Malta', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Malta\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"몰타\",\"br\":\"Malta\",\"pt\":\"Malta\",\"nl\":\"Malta\",\"hr\":\"Malta\",\"fa\":\"مالت\",\"de\":\"Malta\",\"es\":\"Malta\",\"fr\":\"Malte\",\"ja\":\"マルタ\",\"it\":\"Malta\",\"cn\":\"马耳他\"}', 35.83333333, 14.58333333, '🇲🇹', 'U+1F1F2 U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:59:26', 1, 'Q233'),
(136, 'Man (Isle of)', 'IMN', '833', 'IM', '+44-1624', 'Douglas, Isle of Man', 'GBP', 'British pound', '£', '.im', 'Isle of Man', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Isle_of_Man\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"맨 섬\",\"br\":\"Ilha de Man\",\"pt\":\"Ilha de Man\",\"nl\":\"Isle of Man\",\"hr\":\"Otok Man\",\"fa\":\"جزیره من\",\"de\":\"Insel Man\",\"es\":\"Isla de Man\",\"fr\":\"Île de Man\",\"ja\":\"マン島\",\"it\":\"Isola di Man\",\"cn\":\"马恩岛\"}', 54.25000000, -4.50000000, '🇮🇲', 'U+1F1EE U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:59:43', 1, NULL),
(137, 'Marshall Islands', 'MHL', '584', 'MH', '692', 'Majuro', 'USD', 'United States dollar', '$', '.mh', 'M̧ajeļ', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Kwajalein\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"MHT\",\"tzName\":\"Marshall Islands Time\"},{\"zoneName\":\"Pacific/Majuro\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"MHT\",\"tzName\":\"Marshall Islands Time\"}]', '{\"kr\":\"마셜 제도\",\"br\":\"Ilhas Marshall\",\"pt\":\"Ilhas Marshall\",\"nl\":\"Marshalleilanden\",\"hr\":\"Maršalovi Otoci\",\"fa\":\"جزایر مارشال\",\"de\":\"Marshallinseln\",\"es\":\"Islas Marshall\",\"fr\":\"Îles Marshall\",\"ja\":\"マーシャル諸島\",\"it\":\"Isole Marshall\",\"cn\":\"马绍尔群岛\"}', 9.00000000, 168.00000000, '🇲🇭', 'U+1F1F2 U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 19:00:32', 1, 'Q709'),
(138, 'Martinique', 'MTQ', '474', 'MQ', '596', 'Fort-de-France', 'EUR', 'Euro', '€', '.mq', 'Martinique', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Martinique\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"마르티니크\",\"br\":\"Martinica\",\"pt\":\"Martinica\",\"nl\":\"Martinique\",\"hr\":\"Martinique\",\"fa\":\"مونتسرات\",\"de\":\"Martinique\",\"es\":\"Martinica\",\"fr\":\"Martinique\",\"ja\":\"マルティニーク\",\"it\":\"Martinica\",\"cn\":\"马提尼克岛\"}', 14.66666700, -61.00000000, '🇲🇶', 'U+1F1F2 U+1F1F6', '2018-07-21 01:41:03', '2021-12-11 19:00:44', 1, NULL),
(139, 'Mauritania', 'MRT', '478', 'MR', '222', 'Nouakchott', 'MRO', 'Mauritanian ouguiya', 'MRU', '.mr', 'موريتانيا', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Nouakchott\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"모리타니\",\"br\":\"Mauritânia\",\"pt\":\"Mauritânia\",\"nl\":\"Mauritanië\",\"hr\":\"Mauritanija\",\"fa\":\"موریتانی\",\"de\":\"Mauretanien\",\"es\":\"Mauritania\",\"fr\":\"Mauritanie\",\"ja\":\"モーリタニア\",\"it\":\"Mauritania\",\"cn\":\"毛里塔尼亚\"}', 20.00000000, -12.00000000, '🇲🇷', 'U+1F1F2 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 19:01:03', 1, 'Q1025'),
(140, 'Mauritius', 'MUS', '480', 'MU', '230', 'Port Louis', 'MUR', 'Mauritian rupee', '₨', '.mu', 'Maurice', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Mauritius\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"MUT\",\"tzName\":\"Mauritius Time\"}]', '{\"kr\":\"모리셔스\",\"br\":\"Maurício\",\"pt\":\"Maurícia\",\"nl\":\"Mauritius\",\"hr\":\"Mauricijus\",\"fa\":\"موریس\",\"de\":\"Mauritius\",\"es\":\"Mauricio\",\"fr\":\"Île Maurice\",\"ja\":\"モーリシャス\",\"it\":\"Mauritius\",\"cn\":\"毛里求斯\"}', -20.28333333, 57.55000000, '🇲🇺', 'U+1F1F2 U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 19:01:10', 1, 'Q1027'),
(141, 'Mayotte', 'MYT', '175', 'YT', '262', 'Mamoudzou', 'EUR', 'Euro', '€', '.yt', 'Mayotte', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Mayotte\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"마요트\",\"br\":\"Mayotte\",\"pt\":\"Mayotte\",\"nl\":\"Mayotte\",\"hr\":\"Mayotte\",\"fa\":\"مایوت\",\"de\":\"Mayotte\",\"es\":\"Mayotte\",\"fr\":\"Mayotte\",\"ja\":\"マヨット\",\"it\":\"Mayotte\",\"cn\":\"马约特\"}', -12.83333333, 45.16666666, '🇾🇹', 'U+1F1FE U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 19:01:15', 1, NULL),
(142, 'Mexico', 'MEX', '484', 'MX', '52', 'Ciudad de México', 'MXN', 'Mexican peso', '$', '.mx', 'México', 'Americas', 'Central America', '[{\"zoneName\":\"America/Bahia_Banderas\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Cancun\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Chihuahua\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Hermosillo\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Matamoros\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Mazatlan\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Merida\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Mexico_City\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Monterrey\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Ojinaga\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Tijuana\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"}]', '{\"kr\":\"멕시코\",\"br\":\"México\",\"pt\":\"México\",\"nl\":\"Mexico\",\"hr\":\"Meksiko\",\"fa\":\"مکزیک\",\"de\":\"Mexiko\",\"es\":\"México\",\"fr\":\"Mexique\",\"ja\":\"メキシコ\",\"it\":\"Messico\",\"cn\":\"墨西哥\"}', 23.00000000, -102.00000000, '🇲🇽', 'U+1F1F2 U+1F1FD', '2018-07-21 01:41:03', '2021-12-11 19:01:23', 1, 'Q96'),
(143, 'Micronesia', 'FSM', '583', 'FM', '691', 'Palikir', 'USD', 'United States dollar', '$', '.fm', 'Micronesia', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Chuuk\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"CHUT\",\"tzName\":\"Chuuk Time\"},{\"zoneName\":\"Pacific/Kosrae\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"KOST\",\"tzName\":\"Kosrae Time\"},{\"zoneName\":\"Pacific/Pohnpei\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"PONT\",\"tzName\":\"Pohnpei Standard Time\"}]', '{\"kr\":\"미크로네시아 연방\",\"br\":\"Micronésia\",\"pt\":\"Micronésia\",\"nl\":\"Micronesië\",\"hr\":\"Mikronezija\",\"fa\":\"ایالات فدرال میکرونزی\",\"de\":\"Mikronesien\",\"es\":\"Micronesia\",\"fr\":\"Micronésie\",\"ja\":\"ミクロネシア連邦\",\"it\":\"Micronesia\",\"cn\":\"密克罗尼西亚\"}', 6.91666666, 158.25000000, '🇫🇲', 'U+1F1EB U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:01:30', 1, 'Q702'),
(144, 'Moldova', 'MDA', '498', 'MD', '373', 'Chisinau', 'MDL', 'Moldovan leu', 'L', '.md', 'Moldova', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Chisinau\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"몰도바\",\"br\":\"Moldávia\",\"pt\":\"Moldávia\",\"nl\":\"Moldavië\",\"hr\":\"Moldova\",\"fa\":\"مولداوی\",\"de\":\"Moldawie\",\"es\":\"Moldavia\",\"fr\":\"Moldavie\",\"ja\":\"モルドバ共和国\",\"it\":\"Moldavia\",\"cn\":\"摩尔多瓦\"}', 47.00000000, 29.00000000, '🇲🇩', 'U+1F1F2 U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 19:01:39', 1, 'Q217'),
(145, 'Monaco', 'MCO', '492', 'MC', '377', 'Monaco', 'EUR', 'Euro', '€', '.mc', 'Monaco', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Monaco\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"모나코\",\"br\":\"Mônaco\",\"pt\":\"Mónaco\",\"nl\":\"Monaco\",\"hr\":\"Monako\",\"fa\":\"موناکو\",\"de\":\"Monaco\",\"es\":\"Mónaco\",\"fr\":\"Monaco\",\"ja\":\"モナコ\",\"it\":\"Principato di Monaco\",\"cn\":\"摩纳哥\"}', 43.73333333, 7.40000000, '🇲🇨', 'U+1F1F2 U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 19:01:44', 1, 'Q235'),
(146, 'Mongolia', 'MNG', '496', 'MN', '976', 'Ulan Bator', 'MNT', 'Mongolian tögrög', '₮', '.mn', 'Монгол улс', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Choibalsan\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CHOT\",\"tzName\":\"Choibalsan Standard Time\"},{\"zoneName\":\"Asia/Hovd\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"HOVT\",\"tzName\":\"Hovd Time\"},{\"zoneName\":\"Asia/Ulaanbaatar\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"ULAT\",\"tzName\":\"Ulaanbaatar Standard Time\"}]', '{\"kr\":\"몽골\",\"br\":\"Mongólia\",\"pt\":\"Mongólia\",\"nl\":\"Mongolië\",\"hr\":\"Mongolija\",\"fa\":\"مغولستان\",\"de\":\"Mongolei\",\"es\":\"Mongolia\",\"fr\":\"Mongolie\",\"ja\":\"モンゴル\",\"it\":\"Mongolia\",\"cn\":\"蒙古\"}', 46.00000000, 105.00000000, '🇲🇳', 'U+1F1F2 U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 19:02:45', 1, 'Q711'),
(147, 'Montenegro', 'MNE', '499', 'ME', '382', 'Podgorica', 'EUR', 'Euro', '€', '.me', 'Црна Гора', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Podgorica\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"몬테네그로\",\"br\":\"Montenegro\",\"pt\":\"Montenegro\",\"nl\":\"Montenegro\",\"hr\":\"Crna Gora\",\"fa\":\"مونته‌نگرو\",\"de\":\"Montenegro\",\"es\":\"Montenegro\",\"fr\":\"Monténégro\",\"ja\":\"モンテネグロ\",\"it\":\"Montenegro\",\"cn\":\"黑山\"}', 42.50000000, 19.30000000, '🇲🇪', 'U+1F1F2 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:01:46', 1, 'Q236'),
(148, 'Montserrat', 'MSR', '500', 'MS', '+1-664', 'Plymouth', 'XCD', 'Eastern Caribbean dollar', '$', '.ms', 'Montserrat', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Montserrat\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"몬트세랫\",\"br\":\"Montserrat\",\"pt\":\"Monserrate\",\"nl\":\"Montserrat\",\"hr\":\"Montserrat\",\"fa\":\"مایوت\",\"de\":\"Montserrat\",\"es\":\"Montserrat\",\"fr\":\"Montserrat\",\"ja\":\"モントセラト\",\"it\":\"Montserrat\",\"cn\":\"蒙特塞拉特\"}', 16.75000000, -62.20000000, '🇲🇸', 'U+1F1F2 U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:02:56', 1, NULL),
(149, 'Morocco', 'MAR', '504', 'MA', '212', 'Rabat', 'MAD', 'Moroccan dirham', 'DH', '.ma', 'المغرب', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Casablanca\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WEST\",\"tzName\":\"Western European Summer Time\"}]', '{\"kr\":\"모로코\",\"br\":\"Marrocos\",\"pt\":\"Marrocos\",\"nl\":\"Marokko\",\"hr\":\"Maroko\",\"fa\":\"مراکش\",\"de\":\"Marokko\",\"es\":\"Marruecos\",\"fr\":\"Maroc\",\"ja\":\"モロッコ\",\"it\":\"Marocco\",\"cn\":\"摩洛哥\"}', 32.00000000, -5.00000000, '🇲🇦', 'U+1F1F2 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:03:08', 1, 'Q1028'),
(150, 'Mozambique', 'MOZ', '508', 'MZ', '258', 'Maputo', 'MZN', 'Mozambican metical', 'MT', '.mz', 'Moçambique', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Maputo\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"모잠비크\",\"br\":\"Moçambique\",\"pt\":\"Moçambique\",\"nl\":\"Mozambique\",\"hr\":\"Mozambik\",\"fa\":\"موزامبیک\",\"de\":\"Mosambik\",\"es\":\"Mozambique\",\"fr\":\"Mozambique\",\"ja\":\"モザンビーク\",\"it\":\"Mozambico\",\"cn\":\"莫桑比克\"}', -18.25000000, 35.00000000, '🇲🇿', 'U+1F1F2 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 19:03:19', 1, 'Q1029'),
(151, 'Myanmar', 'MMR', '104', 'MM', '95', 'Nay Pyi Taw', 'MMK', 'Burmese kyat', 'K', '.mm', 'မြန်မာ', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Yangon\",\"gmtOffset\":23400,\"gmtOffsetName\":\"UTC+06:30\",\"abbreviation\":\"MMT\",\"tzName\":\"Myanmar Standard Time\"}]', '{\"kr\":\"미얀마\",\"br\":\"Myanmar\",\"pt\":\"Myanmar\",\"nl\":\"Myanmar\",\"hr\":\"Mijanmar\",\"fa\":\"میانمار\",\"de\":\"Myanmar\",\"es\":\"Myanmar\",\"fr\":\"Myanmar\",\"ja\":\"ミャンマー\",\"it\":\"Birmania\",\"cn\":\"缅甸\"}', 22.00000000, 98.00000000, '🇲🇲', 'U+1F1F2 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:03:25', 1, 'Q836'),
(152, 'Namibia', 'NAM', '516', 'NA', '264', 'Windhoek', 'NAD', 'Namibian dollar', '$', '.na', 'Namibia', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Windhoek\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"WAST\",\"tzName\":\"West Africa Summer Time\"}]', '{\"kr\":\"나미비아\",\"br\":\"Namíbia\",\"pt\":\"Namíbia\",\"nl\":\"Namibië\",\"hr\":\"Namibija\",\"fa\":\"نامیبیا\",\"de\":\"Namibia\",\"es\":\"Namibia\",\"fr\":\"Namibie\",\"ja\":\"ナミビア\",\"it\":\"Namibia\",\"cn\":\"纳米比亚\"}', -22.00000000, 17.00000000, '🇳🇦', 'U+1F1F3 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:03:32', 1, 'Q1030'),
(153, 'Nauru', 'NRU', '520', 'NR', '674', 'Yaren', 'AUD', 'Australian dollar', '$', '.nr', 'Nauru', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Nauru\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"NRT\",\"tzName\":\"Nauru Time\"}]', '{\"kr\":\"나우루\",\"br\":\"Nauru\",\"pt\":\"Nauru\",\"nl\":\"Nauru\",\"hr\":\"Nauru\",\"fa\":\"نائورو\",\"de\":\"Nauru\",\"es\":\"Nauru\",\"fr\":\"Nauru\",\"ja\":\"ナウル\",\"it\":\"Nauru\",\"cn\":\"瑙鲁\"}', -0.53333333, 166.91666666, '🇳🇷', 'U+1F1F3 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 19:03:37', 1, 'Q697'),
(154, 'Nepal', 'NPL', '524', 'NP', '977', 'Kathmandu', 'NPR', 'Nepalese rupee', '₨', '.np', 'नपल', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Kathmandu\",\"gmtOffset\":20700,\"gmtOffsetName\":\"UTC+05:45\",\"abbreviation\":\"NPT\",\"tzName\":\"Nepal Time\"}]', '{\"kr\":\"네팔\",\"br\":\"Nepal\",\"pt\":\"Nepal\",\"nl\":\"Nepal\",\"hr\":\"Nepal\",\"fa\":\"نپال\",\"de\":\"Népal\",\"es\":\"Nepal\",\"fr\":\"Népal\",\"ja\":\"ネパール\",\"it\":\"Nepal\",\"cn\":\"尼泊尔\"}', 28.00000000, 84.00000000, '🇳🇵', 'U+1F1F3 U+1F1F5', '2018-07-21 01:41:03', '2021-12-11 19:03:41', 1, 'Q837'),
(155, 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'BQ', '599', 'Kralendijk', 'USD', 'United States dollar', '$', '.an', 'Caribisch Nederland', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"보네르 섬\",\"br\":\"Bonaire\",\"pt\":\"Bonaire\",\"fa\":\"بونیر\",\"de\":\"Bonaire, Sint Eustatius und Saba\",\"fr\":\"Bonaire, Saint-Eustache et Saba\",\"it\":\"Bonaire, Saint-Eustache e Saba\",\"cn\":\"博内尔岛、圣尤斯特歇斯和萨巴岛\"}', 12.15000000, -68.26666700, '🇧🇶', 'U+1F1E7 U+1F1F6', '2018-07-21 01:41:03', '2021-12-11 18:28:02', 1, 'Q27561'),
(156, 'Netherlands', 'NLD', '528', 'NL', '31', 'Amsterdam', 'EUR', 'Euro', '€', '.nl', 'Nederland', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Amsterdam\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"네덜란드 \",\"br\":\"Holanda\",\"pt\":\"Países Baixos\",\"nl\":\"Nederland\",\"hr\":\"Nizozemska\",\"fa\":\"پادشاهی هلند\",\"de\":\"Niederlande\",\"es\":\"Países Bajos\",\"fr\":\"Pays-Bas\",\"ja\":\"オランダ\",\"it\":\"Paesi Bassi\",\"cn\":\"荷兰\"}', 52.50000000, 5.75000000, '🇳🇱', 'U+1F1F3 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 19:01:52', 1, 'Q55'),
(157, 'New Caledonia', 'NCL', '540', 'NC', '687', 'Noumea', 'XPF', 'CFP franc', '₣', '.nc', 'Nouvelle-Calédonie', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Noumea\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"NCT\",\"tzName\":\"New Caledonia Time\"}]', '{\"kr\":\"누벨칼레도니\",\"br\":\"Nova Caledônia\",\"pt\":\"Nova Caledónia\",\"nl\":\"Nieuw-Caledonië\",\"hr\":\"Nova Kaledonija\",\"fa\":\"کالدونیای جدید\",\"de\":\"Neukaledonien\",\"es\":\"Nueva Caledonia\",\"fr\":\"Nouvelle-Calédonie\",\"ja\":\"ニューカレドニア\",\"it\":\"Nuova Caledonia\",\"cn\":\"新喀里多尼亚\"}', -21.50000000, 165.50000000, '🇳🇨', 'U+1F1F3 U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 19:04:11', 1, NULL),
(158, 'New Zealand', 'NZL', '554', 'NZ', '64', 'Wellington', 'NZD', 'New Zealand dollar', '$', '.nz', 'New Zealand', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Pacific/Auckland\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"NZDT\",\"tzName\":\"New Zealand Daylight Time\"},{\"zoneName\":\"Pacific/Chatham\",\"gmtOffset\":49500,\"gmtOffsetName\":\"UTC+13:45\",\"abbreviation\":\"CHAST\",\"tzName\":\"Chatham Standard Time\"}]', '{\"kr\":\"뉴질랜드\",\"br\":\"Nova Zelândia\",\"pt\":\"Nova Zelândia\",\"nl\":\"Nieuw-Zeeland\",\"hr\":\"Novi Zeland\",\"fa\":\"نیوزیلند\",\"de\":\"Neuseeland\",\"es\":\"Nueva Zelanda\",\"fr\":\"Nouvelle-Zélande\",\"ja\":\"ニュージーランド\",\"it\":\"Nuova Zelanda\",\"cn\":\"新西兰\"}', -41.00000000, 174.00000000, '🇳🇿', 'U+1F1F3 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 19:04:18', 1, 'Q664'),
(159, 'Nicaragua', 'NIC', '558', 'NI', '505', 'Managua', 'NIO', 'Nicaraguan córdoba', 'C$', '.ni', 'Nicaragua', 'Americas', 'Central America', '[{\"zoneName\":\"America/Managua\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"니카라과\",\"br\":\"Nicarágua\",\"pt\":\"Nicarágua\",\"nl\":\"Nicaragua\",\"hr\":\"Nikaragva\",\"fa\":\"نیکاراگوئه\",\"de\":\"Nicaragua\",\"es\":\"Nicaragua\",\"fr\":\"Nicaragua\",\"ja\":\"ニカラグア\",\"it\":\"Nicaragua\",\"cn\":\"尼加拉瓜\"}', 13.00000000, -85.00000000, '🇳🇮', 'U+1F1F3 U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 19:04:25', 1, 'Q811'),
(160, 'Niger', 'NER', '562', 'NE', '227', 'Niamey', 'XOF', 'West African CFA franc', 'CFA', '.ne', 'Niger', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Niamey\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"니제르\",\"br\":\"Níger\",\"pt\":\"Níger\",\"nl\":\"Niger\",\"hr\":\"Niger\",\"fa\":\"نیجر\",\"de\":\"Niger\",\"es\":\"Níger\",\"fr\":\"Niger\",\"ja\":\"ニジェール\",\"it\":\"Niger\",\"cn\":\"尼日尔\"}', 16.00000000, 8.00000000, '🇳🇪', 'U+1F1F3 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:04:32', 1, 'Q1032'),
(161, 'Nigeria', 'NGA', '566', 'NG', '234', 'Abuja', 'NGN', 'Nigerian naira', '₦', '.ng', 'Nigeria', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Lagos\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"나이지리아\",\"br\":\"Nigéria\",\"pt\":\"Nigéria\",\"nl\":\"Nigeria\",\"hr\":\"Nigerija\",\"fa\":\"نیجریه\",\"de\":\"Nigeria\",\"es\":\"Nigeria\",\"fr\":\"Nigéria\",\"ja\":\"ナイジェリア\",\"it\":\"Nigeria\",\"cn\":\"尼日利亚\"}', 10.00000000, 8.00000000, '🇳🇬', 'U+1F1F3 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 19:04:37', 1, 'Q1033'),
(162, 'Niue', 'NIU', '570', 'NU', '683', 'Alofi', 'NZD', 'New Zealand dollar', '$', '.nu', 'Niuē', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Niue\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"NUT\",\"tzName\":\"Niue Time\"}]', '{\"kr\":\"니우에\",\"br\":\"Niue\",\"pt\":\"Niue\",\"nl\":\"Niue\",\"hr\":\"Niue\",\"fa\":\"نیووی\",\"de\":\"Niue\",\"es\":\"Niue\",\"fr\":\"Niue\",\"ja\":\"ニウエ\",\"it\":\"Niue\",\"cn\":\"纽埃\"}', -19.03333333, -169.86666666, '🇳🇺', 'U+1F1F3 U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 19:04:42', 1, 'Q34020'),
(163, 'Norfolk Island', 'NFK', '574', 'NF', '672', 'Kingston', 'AUD', 'Australian dollar', '$', '.nf', 'Norfolk Island', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Pacific/Norfolk\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"NFT\",\"tzName\":\"Norfolk Time\"}]', '{\"kr\":\"노퍽 섬\",\"br\":\"Ilha Norfolk\",\"pt\":\"Ilha Norfolk\",\"nl\":\"Norfolkeiland\",\"hr\":\"Otok Norfolk\",\"fa\":\"جزیره نورفک\",\"de\":\"Norfolkinsel\",\"es\":\"Isla de Norfolk\",\"fr\":\"Île de Norfolk\",\"ja\":\"ノーフォーク島\",\"it\":\"Isola Norfolk\",\"cn\":\"诺福克岛\"}', -29.03333333, 167.95000000, '🇳🇫', 'U+1F1F3 U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 19:05:39', 1, NULL),
(164, 'Northern Mariana Islands', 'MNP', '580', 'MP', '+1-670', 'Saipan', 'USD', 'United States dollar', '$', '.mp', 'Northern Mariana Islands', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Saipan\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"ChST\",\"tzName\":\"Chamorro Standard Time\"}]', '{\"kr\":\"북마리아나 제도\",\"br\":\"Ilhas Marianas\",\"pt\":\"Ilhas Marianas\",\"nl\":\"Noordelijke Marianeneilanden\",\"hr\":\"Sjevernomarijanski otoci\",\"fa\":\"جزایر ماریانای شمالی\",\"de\":\"Nördliche Marianen\",\"es\":\"Islas Marianas del Norte\",\"fr\":\"Îles Mariannes du Nord\",\"ja\":\"北マリアナ諸島\",\"it\":\"Isole Marianne Settentrionali\",\"cn\":\"北马里亚纳群岛\"}', 15.20000000, 145.75000000, '🇲🇵', 'U+1F1F2 U+1F1F5', '2018-07-21 01:41:03', '2021-12-11 19:05:55', 1, NULL),
(165, 'Norway', 'NOR', '578', 'NO', '47', 'Oslo', 'NOK', 'Norwegian krone', 'kr', '.no', 'Norge', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Oslo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"노르웨이\",\"br\":\"Noruega\",\"pt\":\"Noruega\",\"nl\":\"Noorwegen\",\"hr\":\"Norveška\",\"fa\":\"نروژ\",\"de\":\"Norwegen\",\"es\":\"Noruega\",\"fr\":\"Norvège\",\"ja\":\"ノルウェー\",\"it\":\"Norvegia\",\"cn\":\"挪威\"}', 62.00000000, 10.00000000, '🇳🇴', 'U+1F1F3 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 19:07:57', 1, 'Q20'),
(166, 'Oman', 'OMN', '512', 'OM', '968', 'Muscat', 'OMR', 'Omani rial', '.ع.ر', '.om', 'عمان', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Muscat\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"GST\",\"tzName\":\"Gulf Standard Time\"}]', '{\"kr\":\"오만\",\"br\":\"Omã\",\"pt\":\"Omã\",\"nl\":\"Oman\",\"hr\":\"Oman\",\"fa\":\"عمان\",\"de\":\"Oman\",\"es\":\"Omán\",\"fr\":\"Oman\",\"ja\":\"オマーン\",\"it\":\"oman\",\"cn\":\"阿曼\"}', 21.00000000, 57.00000000, '🇴🇲', 'U+1F1F4 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:08:03', 1, 'Q842'),
(167, 'Pakistan', 'PAK', '586', 'PK', '92', 'Islamabad', 'PKR', 'Pakistani rupee', '₨', '.pk', 'Pakistan', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Karachi\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"PKT\",\"tzName\":\"Pakistan Standard Time\"}]', '{\"kr\":\"파키스탄\",\"br\":\"Paquistão\",\"pt\":\"Paquistão\",\"nl\":\"Pakistan\",\"hr\":\"Pakistan\",\"fa\":\"پاکستان\",\"de\":\"Pakistan\",\"es\":\"Pakistán\",\"fr\":\"Pakistan\",\"ja\":\"パキスタン\",\"it\":\"Pakistan\",\"cn\":\"巴基斯坦\"}', 30.00000000, 70.00000000, '🇵🇰', 'U+1F1F5 U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 19:08:09', 1, 'Q843'),
(168, 'Palau', 'PLW', '585', 'PW', '680', 'Melekeok', 'USD', 'United States dollar', '$', '.pw', 'Palau', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Palau\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"PWT\",\"tzName\":\"Palau Time\"}]', '{\"kr\":\"팔라우\",\"br\":\"Palau\",\"pt\":\"Palau\",\"nl\":\"Palau\",\"hr\":\"Palau\",\"fa\":\"پالائو\",\"de\":\"Palau\",\"es\":\"Palau\",\"fr\":\"Palaos\",\"ja\":\"パラオ\",\"it\":\"Palau\",\"cn\":\"帕劳\"}', 7.50000000, 134.50000000, '🇵🇼', 'U+1F1F5 U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 19:05:58', 1, 'Q695'),
(169, 'Palestinian Territory Occupied', 'PSE', '275', 'PS', '970', 'East Jerusalem', 'ILS', 'Israeli new shekel', '₪', '.ps', 'فلسطين', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Gaza\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Asia/Hebron\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"팔레스타인 영토\",\"br\":\"Palestina\",\"pt\":\"Palestina\",\"nl\":\"Palestijnse gebieden\",\"hr\":\"Palestina\",\"fa\":\"فلسطین\",\"de\":\"Palästina\",\"es\":\"Palestina\",\"fr\":\"Palestine\",\"ja\":\"パレスチナ\",\"it\":\"Palestina\",\"cn\":\"巴勒斯坦\"}', 31.90000000, 35.20000000, '🇵🇸', 'U+1F1F5 U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:08:16', 1, NULL),
(170, 'Panama', 'PAN', '591', 'PA', '507', 'Panama City', 'PAB', 'Panamanian balboa', 'B/.', '.pa', 'Panamá', 'Americas', 'Central America', '[{\"zoneName\":\"America/Panama\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"파나마\",\"br\":\"Panamá\",\"pt\":\"Panamá\",\"nl\":\"Panama\",\"hr\":\"Panama\",\"fa\":\"پاناما\",\"de\":\"Panama\",\"es\":\"Panamá\",\"fr\":\"Panama\",\"ja\":\"パナマ\",\"it\":\"Panama\",\"cn\":\"巴拿马\"}', 9.00000000, -80.00000000, '🇵🇦', 'U+1F1F5 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:08:22', 1, 'Q804'),
(171, 'Papua new Guinea', 'PNG', '598', 'PG', '675', 'Port Moresby', 'PGK', 'Papua New Guinean kina', 'K', '.pg', 'Papua Niugini', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Bougainville\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"BST\",\"tzName\":\"Bougainville Standard Time[6\"},{\"zoneName\":\"Pacific/Port_Moresby\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"PGT\",\"tzName\":\"Papua New Guinea Time\"}]', '{\"kr\":\"파푸아뉴기니\",\"br\":\"Papua Nova Guiné\",\"pt\":\"Papua Nova Guiné\",\"nl\":\"Papoea-Nieuw-Guinea\",\"hr\":\"Papua Nova Gvineja\",\"fa\":\"پاپوآ گینه نو\",\"de\":\"Papua-Neuguinea\",\"es\":\"Papúa Nueva Guinea\",\"fr\":\"Papouasie-Nouvelle-Guinée\",\"ja\":\"パプアニューギニア\",\"it\":\"Papua Nuova Guinea\",\"cn\":\"巴布亚新几内亚\"}', -6.00000000, 147.00000000, '🇵🇬', 'U+1F1F5 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 19:08:31', 1, 'Q691'),
(172, 'Paraguay', 'PRY', '600', 'PY', '595', 'Asuncion', 'PYG', 'Paraguayan guarani', '₲', '.py', 'Paraguay', 'Americas', 'South America', '[{\"zoneName\":\"America/Asuncion\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"PYST\",\"tzName\":\"Paraguay Summer Time\"}]', '{\"kr\":\"파라과이\",\"br\":\"Paraguai\",\"pt\":\"Paraguai\",\"nl\":\"Paraguay\",\"hr\":\"Paragvaj\",\"fa\":\"پاراگوئه\",\"de\":\"Paraguay\",\"es\":\"Paraguay\",\"fr\":\"Paraguay\",\"ja\":\"パラグアイ\",\"it\":\"Paraguay\",\"cn\":\"巴拉圭\"}', -23.00000000, -58.00000000, '🇵🇾', 'U+1F1F5 U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 19:08:49', 1, 'Q733'),
(173, 'Peru', 'PER', '604', 'PE', '51', 'Lima', 'PEN', 'Peruvian sol', 'S/.', '.pe', 'Perú', 'Americas', 'South America', '[{\"zoneName\":\"America/Lima\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"PET\",\"tzName\":\"Peru Time\"}]', '{\"kr\":\"페루\",\"br\":\"Peru\",\"pt\":\"Peru\",\"nl\":\"Peru\",\"hr\":\"Peru\",\"fa\":\"پرو\",\"de\":\"Peru\",\"es\":\"Perú\",\"fr\":\"Pérou\",\"ja\":\"ペルー\",\"it\":\"Perù\",\"cn\":\"秘鲁\"}', -10.00000000, -76.00000000, '🇵🇪', 'U+1F1F5 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:08:59', 1, 'Q419'),
(174, 'Philippines', 'PHL', '608', 'PH', '63', 'Manila', 'PHP', 'Philippine peso', '₱', '.ph', 'Pilipinas', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Manila\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"PHT\",\"tzName\":\"Philippine Time\"}]', '{\"kr\":\"필리핀\",\"br\":\"Filipinas\",\"pt\":\"Filipinas\",\"nl\":\"Filipijnen\",\"hr\":\"Filipini\",\"fa\":\"جزایر الندفیلیپین\",\"de\":\"Philippinen\",\"es\":\"Filipinas\",\"fr\":\"Philippines\",\"ja\":\"フィリピン\",\"it\":\"Filippine\",\"cn\":\"菲律宾\"}', 13.00000000, 122.00000000, '🇵🇭', 'U+1F1F5 U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 19:09:03', 1, 'Q928'),
(175, 'Pitcairn Island', 'PCN', '612', 'PN', '870', 'Adamstown', 'NZD', 'New Zealand dollar', '$', '.pn', 'Pitcairn Islands', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Pitcairn\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"}]', '{\"kr\":\"핏케언 제도\",\"br\":\"Ilhas Pitcairn\",\"pt\":\"Ilhas Picárnia\",\"nl\":\"Pitcairneilanden\",\"hr\":\"Pitcairnovo otočje\",\"fa\":\"پیتکرن\",\"de\":\"Pitcairn\",\"es\":\"Islas Pitcairn\",\"fr\":\"Îles Pitcairn\",\"ja\":\"ピトケアン\",\"it\":\"Isole Pitcairn\",\"cn\":\"皮特凯恩群岛\"}', -25.06666666, -130.10000000, '🇵🇳', 'U+1F1F5 U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 19:09:08', 1, NULL),
(176, 'Poland', 'POL', '616', 'PL', '48', 'Warsaw', 'PLN', 'Polish złoty', 'zł', '.pl', 'Polska', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Warsaw\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"폴란드\",\"br\":\"Polônia\",\"pt\":\"Polónia\",\"nl\":\"Polen\",\"hr\":\"Poljska\",\"fa\":\"لهستان\",\"de\":\"Polen\",\"es\":\"Polonia\",\"fr\":\"Pologne\",\"ja\":\"ポーランド\",\"it\":\"Polonia\",\"cn\":\"波兰\"}', 52.00000000, 20.00000000, '🇵🇱', 'U+1F1F5 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 19:09:19', 1, 'Q36'),
(177, 'Portugal', 'PRT', '620', 'PT', '351', 'Lisbon', 'EUR', 'Euro', '€', '.pt', 'Portugal', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Atlantic/Azores\",\"gmtOffset\":-3600,\"gmtOffsetName\":\"UTC-01:00\",\"abbreviation\":\"AZOT\",\"tzName\":\"Azores Standard Time\"},{\"zoneName\":\"Atlantic/Madeira\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"},{\"zoneName\":\"Europe/Lisbon\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"}]', '{\"kr\":\"포르투갈\",\"br\":\"Portugal\",\"pt\":\"Portugal\",\"nl\":\"Portugal\",\"hr\":\"Portugal\",\"fa\":\"پرتغال\",\"de\":\"Portugal\",\"es\":\"Portugal\",\"fr\":\"Portugal\",\"ja\":\"ポルトガル\",\"it\":\"Portogallo\",\"cn\":\"葡萄牙\"}', 39.50000000, -8.00000000, '🇵🇹', 'U+1F1F5 U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 19:02:09', 1, 'Q45'),
(178, 'Puerto Rico', 'PRI', '630', 'PR', '+1-787 and 1-939', 'San Juan', 'USD', 'United States dollar', '$', '.pr', 'Puerto Rico', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Puerto_Rico\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"푸에르토리코\",\"br\":\"Porto Rico\",\"pt\":\"Porto Rico\",\"nl\":\"Puerto Rico\",\"hr\":\"Portoriko\",\"fa\":\"پورتو ریکو\",\"de\":\"Puerto Rico\",\"es\":\"Puerto Rico\",\"fr\":\"Porto Rico\",\"ja\":\"プエルトリコ\",\"it\":\"Porto Rico\",\"cn\":\"波多黎各\"}', 18.25000000, -66.50000000, '🇵🇷', 'U+1F1F5 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 19:06:02', 1, NULL),
(179, 'Qatar', 'QAT', '634', 'QA', '974', 'Doha', 'QAR', 'Qatari riyal', 'ق.ر', '.qa', 'قطر', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Qatar\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"카타르\",\"br\":\"Catar\",\"pt\":\"Catar\",\"nl\":\"Qatar\",\"hr\":\"Katar\",\"fa\":\"قطر\",\"de\":\"Katar\",\"es\":\"Catar\",\"fr\":\"Qatar\",\"ja\":\"カタール\",\"it\":\"Qatar\",\"cn\":\"卡塔尔\"}', 25.50000000, 51.25000000, '🇶🇦', 'U+1F1F6 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:09:24', 1, 'Q846'),
(180, 'Reunion', 'REU', '638', 'RE', '262', 'Saint-Denis', 'EUR', 'Euro', '€', '.re', 'La Réunion', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Reunion\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"RET\",\"tzName\":\"Réunion Time\"}]', '{\"kr\":\"레위니옹\",\"br\":\"Reunião\",\"pt\":\"Reunião\",\"nl\":\"Réunion\",\"hr\":\"Réunion\",\"fa\":\"رئونیون\",\"de\":\"Réunion\",\"es\":\"Reunión\",\"fr\":\"Réunion\",\"ja\":\"レユニオン\",\"it\":\"Riunione\",\"cn\":\"留尼汪岛\"}', -21.15000000, 55.50000000, '🇷🇪', 'U+1F1F7 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:01:59', 1, NULL),
(181, 'Romania', 'ROU', '642', 'RO', '40', 'Bucharest', 'RON', 'Romanian leu', 'lei', '.ro', 'România', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Bucharest\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"루마니아\",\"br\":\"Romênia\",\"pt\":\"Roménia\",\"nl\":\"Roemenië\",\"hr\":\"Rumunjska\",\"fa\":\"رومانی\",\"de\":\"Rumänien\",\"es\":\"Rumania\",\"fr\":\"Roumanie\",\"ja\":\"ルーマニア\",\"it\":\"Romania\",\"cn\":\"罗马尼亚\"}', 46.00000000, 25.00000000, '🇷🇴', 'U+1F1F7 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 19:09:31', 1, 'Q218'),
(182, 'Russia', 'RUS', '643', 'RU', '7', 'Moscow', 'RUB', 'Russian ruble', '₽', '.ru', 'Россия', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Asia/Anadyr\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"ANAT\",\"tzName\":\"Anadyr Time[4\"},{\"zoneName\":\"Asia/Barnaul\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"KRAT\",\"tzName\":\"Krasnoyarsk Time\"},{\"zoneName\":\"Asia/Chita\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"YAKT\",\"tzName\":\"Yakutsk Time\"},{\"zoneName\":\"Asia/Irkutsk\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"IRKT\",\"tzName\":\"Irkutsk Time\"},{\"zoneName\":\"Asia/Kamchatka\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"PETT\",\"tzName\":\"Kamchatka Time\"},{\"zoneName\":\"Asia/Khandyga\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"YAKT\",\"tzName\":\"Yakutsk Time\"},{\"zoneName\":\"Asia/Krasnoyarsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"KRAT\",\"tzName\":\"Krasnoyarsk Time\"},{\"zoneName\":\"Asia/Magadan\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"MAGT\",\"tzName\":\"Magadan Time\"},{\"zoneName\":\"Asia/Novokuznetsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"KRAT\",\"tzName\":\"Krasnoyarsk Time\"},{\"zoneName\":\"Asia/Novosibirsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"NOVT\",\"tzName\":\"Novosibirsk Time\"},{\"zoneName\":\"Asia/Omsk\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"OMST\",\"tzName\":\"Omsk Time\"},{\"zoneName\":\"Asia/Sakhalin\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"SAKT\",\"tzName\":\"Sakhalin Island Time\"},{\"zoneName\":\"Asia/Srednekolymsk\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"SRET\",\"tzName\":\"Srednekolymsk Time\"},{\"zoneName\":\"Asia/Tomsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"MSD+3\",\"tzName\":\"Moscow Daylight Time+3\"},{\"zoneName\":\"Asia/Ust-Nera\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"VLAT\",\"tzName\":\"Vladivostok Time\"},{\"zoneName\":\"Asia/Vladivostok\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"VLAT\",\"tzName\":\"Vladivostok Time\"},{\"zoneName\":\"Asia/Yakutsk\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"YAKT\",\"tzName\":\"Yakutsk Time\"},{\"zoneName\":\"Asia/Yekaterinburg\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"YEKT\",\"tzName\":\"Yekaterinburg Time\"},{\"zoneName\":\"Europe/Astrakhan\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SAMT\",\"tzName\":\"Samara Time\"},{\"zoneName\":\"Europe/Kaliningrad\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Europe/Kirov\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"},{\"zoneName\":\"Europe/Moscow\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"},{\"zoneName\":\"Europe/Samara\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SAMT\",\"tzName\":\"Samara Time\"},{\"zoneName\":\"Europe/Saratov\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"MSD\",\"tzName\":\"Moscow Daylight Time+4\"},{\"zoneName\":\"Europe/Ulyanovsk\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SAMT\",\"tzName\":\"Samara Time\"},{\"zoneName\":\"Europe/Volgograd\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Standard Time\"}]', '{\"kr\":\"러시아\",\"br\":\"Rússia\",\"pt\":\"Rússia\",\"nl\":\"Rusland\",\"hr\":\"Rusija\",\"fa\":\"روسیه\",\"de\":\"Russland\",\"es\":\"Rusia\",\"fr\":\"Russie\",\"ja\":\"ロシア連邦\",\"it\":\"Russia\",\"cn\":\"俄罗斯联邦\"}', 60.00000000, 100.00000000, '🇷🇺', 'U+1F1F7 U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 19:09:37', 1, 'Q159'),
(183, 'Rwanda', 'RWA', '646', 'RW', '250', 'Kigali', 'RWF', 'Rwandan franc', 'FRw', '.rw', 'Rwanda', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Kigali\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"르완다\",\"br\":\"Ruanda\",\"pt\":\"Ruanda\",\"nl\":\"Rwanda\",\"hr\":\"Ruanda\",\"fa\":\"رواندا\",\"de\":\"Ruanda\",\"es\":\"Ruanda\",\"fr\":\"Rwanda\",\"ja\":\"ルワンダ\",\"it\":\"Ruanda\",\"cn\":\"卢旺达\"}', -2.00000000, 30.00000000, '🇷🇼', 'U+1F1F7 U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 19:09:42', 1, 'Q1037'),
(184, 'Saint Helena', 'SHN', '654', 'SH', '290', 'Jamestown', 'SHP', 'Saint Helena pound', '£', '.sh', 'Saint Helena', 'Africa', 'Western Africa', '[{\"zoneName\":\"Atlantic/St_Helena\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"세인트헬레나\",\"br\":\"Santa Helena\",\"pt\":\"Santa Helena\",\"nl\":\"Sint-Helena\",\"hr\":\"Sveta Helena\",\"fa\":\"سنت هلنا، اسنشن و تریستان دا کونا\",\"de\":\"Sankt Helena\",\"es\":\"Santa Helena\",\"fr\":\"Sainte-Hélène\",\"ja\":\"セントヘレナ・アセンションおよびトリスタンダクーニャ\",\"it\":\"Sant\'Elena\",\"cn\":\"圣赫勒拿\"}', -15.95000000, -5.70000000, '🇸🇭', 'U+1F1F8 U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 19:09:50', 1, NULL),
(185, 'Saint Kitts And Nevis', 'KNA', '659', 'KN', '+1-869', 'Basseterre', 'XCD', 'Eastern Caribbean dollar', '$', '.kn', 'Saint Kitts and Nevis', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Kitts\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트키츠 네비스\",\"br\":\"São Cristóvão e Neves\",\"pt\":\"São Cristóvão e Neves\",\"nl\":\"Saint Kitts en Nevis\",\"hr\":\"Sveti Kristof i Nevis\",\"fa\":\"سنت کیتس و نویس\",\"de\":\"St. Kitts und Nevis\",\"es\":\"San Cristóbal y Nieves\",\"fr\":\"Saint-Christophe-et-Niévès\",\"ja\":\"セントクリストファー・ネイビス\",\"it\":\"Saint Kitts e Nevis\",\"cn\":\"圣基茨和尼维斯\"}', 17.33333333, -62.75000000, '🇰🇳', 'U+1F1F0 U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 19:09:56', 1, 'Q763'),
(186, 'Saint Lucia', 'LCA', '662', 'LC', '+1-758', 'Castries', 'XCD', 'Eastern Caribbean dollar', '$', '.lc', 'Saint Lucia', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Lucia\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트루시아\",\"br\":\"Santa Lúcia\",\"pt\":\"Santa Lúcia\",\"nl\":\"Saint Lucia\",\"hr\":\"Sveta Lucija\",\"fa\":\"سنت لوسیا\",\"de\":\"Saint Lucia\",\"es\":\"Santa Lucía\",\"fr\":\"Saint-Lucie\",\"ja\":\"セントルシア\",\"it\":\"Santa Lucia\",\"cn\":\"圣卢西亚\"}', 13.88333333, -60.96666666, '🇱🇨', 'U+1F1F1 U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 19:09:58', 1, 'Q760'),
(187, 'Saint Pierre and Miquelon', 'SPM', '666', 'PM', '508', 'Saint-Pierre', 'EUR', 'Euro', '€', '.pm', 'Saint-Pierre-et-Miquelon', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Miquelon\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"PMDT\",\"tzName\":\"Pierre & Miquelon Daylight Time\"}]', '{\"kr\":\"생피에르 미클롱\",\"br\":\"Saint-Pierre e Miquelon\",\"pt\":\"São Pedro e Miquelon\",\"nl\":\"Saint Pierre en Miquelon\",\"hr\":\"Sveti Petar i Mikelon\",\"fa\":\"سن پیر و میکلن\",\"de\":\"Saint-Pierre und Miquelon\",\"es\":\"San Pedro y Miquelón\",\"fr\":\"Saint-Pierre-et-Miquelon\",\"ja\":\"サンピエール島・ミクロン島\",\"it\":\"Saint-Pierre e Miquelon\",\"cn\":\"圣皮埃尔和密克隆\"}', 46.83333333, -56.33333333, '🇵🇲', 'U+1F1F5 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:02:00', 1, NULL),
(188, 'Saint Vincent And The Grenadines', 'VCT', '670', 'VC', '+1-784', 'Kingstown', 'XCD', 'Eastern Caribbean dollar', '$', '.vc', 'Saint Vincent and the Grenadines', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Vincent\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트빈센트 그레나딘\",\"br\":\"São Vicente e Granadinas\",\"pt\":\"São Vicente e Granadinas\",\"nl\":\"Saint Vincent en de Grenadines\",\"hr\":\"Sveti Vincent i Grenadini\",\"fa\":\"سنت وینسنت و گرنادین‌ها\",\"de\":\"Saint Vincent und die Grenadinen\",\"es\":\"San Vicente y Granadinas\",\"fr\":\"Saint-Vincent-et-les-Grenadines\",\"ja\":\"セントビンセントおよびグレナディーン諸島\",\"it\":\"Saint Vincent e Grenadine\",\"cn\":\"圣文森特和格林纳丁斯\"}', 13.25000000, -61.20000000, '🇻🇨', 'U+1F1FB U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 19:09:59', 1, 'Q757'),
(189, 'Saint-Barthelemy', 'BLM', '652', 'BL', '590', 'Gustavia', 'EUR', 'Euro', '€', '.bl', 'Saint-Barthélemy', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Barthelemy\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"생바르텔레미\",\"br\":\"São Bartolomeu\",\"pt\":\"São Bartolomeu\",\"nl\":\"Saint Barthélemy\",\"hr\":\"Saint Barthélemy\",\"fa\":\"سن-بارتلمی\",\"de\":\"Saint-Barthélemy\",\"es\":\"San Bartolomé\",\"fr\":\"Saint-Barthélemy\",\"ja\":\"サン・バルテルミー\",\"it\":\"Antille Francesi\",\"cn\":\"圣巴泰勒米\"}', 18.50000000, -63.41666666, '🇧🇱', 'U+1F1E7 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 19:06:08', 1, NULL),
(190, 'Saint-Martin (French part)', 'MAF', '663', 'MF', '590', 'Marigot', 'EUR', 'Euro', '€', '.mf', 'Saint-Martin', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Marigot\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트마틴 섬\",\"br\":\"Saint Martin\",\"pt\":\"Ilha São Martinho\",\"nl\":\"Saint-Martin\",\"hr\":\"Sveti Martin\",\"fa\":\"سینت مارتن\",\"de\":\"Saint Martin\",\"es\":\"Saint Martin\",\"fr\":\"Saint-Martin\",\"ja\":\"サン・マルタン（フランス領）\",\"it\":\"Saint Martin\",\"cn\":\"密克罗尼西亚\"}', 18.08333333, -63.95000000, '🇲🇫', 'U+1F1F2 U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 19:06:10', 1, NULL),
(191, 'Samoa', 'WSM', '882', 'WS', '685', 'Apia', 'WST', 'Samoan tālā', 'SAT', '.ws', 'Samoa', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Apia\",\"gmtOffset\":50400,\"gmtOffsetName\":\"UTC+14:00\",\"abbreviation\":\"WST\",\"tzName\":\"West Samoa Time\"}]', '{\"kr\":\"사모아\",\"br\":\"Samoa\",\"pt\":\"Samoa\",\"nl\":\"Samoa\",\"hr\":\"Samoa\",\"fa\":\"ساموآ\",\"de\":\"Samoa\",\"es\":\"Samoa\",\"fr\":\"Samoa\",\"ja\":\"サモア\",\"it\":\"Samoa\",\"cn\":\"萨摩亚\"}', -13.58333333, -172.33333333, '🇼🇸', 'U+1F1FC U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:10:07', 1, 'Q683'),
(192, 'San Marino', 'SMR', '674', 'SM', '378', 'San Marino', 'EUR', 'Euro', '€', '.sm', 'San Marino', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/San_Marino\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"산마리노\",\"br\":\"San Marino\",\"pt\":\"São Marinho\",\"nl\":\"San Marino\",\"hr\":\"San Marino\",\"fa\":\"سان مارینو\",\"de\":\"San Marino\",\"es\":\"San Marino\",\"fr\":\"Saint-Marin\",\"ja\":\"サンマリノ\",\"it\":\"San Marino\",\"cn\":\"圣马力诺\"}', 43.76666666, 12.41666666, '🇸🇲', 'U+1F1F8 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:02:15', 1, 'Q238'),
(193, 'Sao Tome and Principe', 'STP', '678', 'ST', '239', 'Sao Tome', 'STD', 'Dobra', 'Db', '.st', 'São Tomé e Príncipe', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Sao_Tome\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"상투메 프린시페\",\"br\":\"São Tomé e Príncipe\",\"pt\":\"São Tomé e Príncipe\",\"nl\":\"Sao Tomé en Principe\",\"hr\":\"Sveti Toma i Princip\",\"fa\":\"کواترو دو فرویرو\",\"de\":\"São Tomé und Príncipe\",\"es\":\"Santo Tomé y Príncipe\",\"fr\":\"Sao Tomé-et-Principe\",\"ja\":\"サントメ・プリンシペ\",\"it\":\"São Tomé e Príncipe\",\"cn\":\"圣多美和普林西比\"}', 1.00000000, 7.00000000, '🇸🇹', 'U+1F1F8 U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 19:10:28', 1, 'Q1039'),
(194, 'Saudi Arabia', 'SAU', '682', 'SA', '966', 'Riyadh', 'SAR', 'Saudi riyal', '﷼', '.sa', 'المملكة العربية السعودية', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Riyadh\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"사우디아라비아\",\"br\":\"Arábia Saudita\",\"pt\":\"Arábia Saudita\",\"nl\":\"Saoedi-Arabië\",\"hr\":\"Saudijska Arabija\",\"fa\":\"عربستان سعودی\",\"de\":\"Saudi-Arabien\",\"es\":\"Arabia Saudí\",\"fr\":\"Arabie Saoudite\",\"ja\":\"サウジアラビア\",\"it\":\"Arabia Saudita\",\"cn\":\"沙特阿拉伯\"}', 25.00000000, 45.00000000, '🇸🇦', 'U+1F1F8 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:10:44', 1, 'Q851'),
(195, 'Senegal', 'SEN', '686', 'SN', '221', 'Dakar', 'XOF', 'West African CFA franc', 'CFA', '.sn', 'Sénégal', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Dakar\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"세네갈\",\"br\":\"Senegal\",\"pt\":\"Senegal\",\"nl\":\"Senegal\",\"hr\":\"Senegal\",\"fa\":\"سنگال\",\"de\":\"Senegal\",\"es\":\"Senegal\",\"fr\":\"Sénégal\",\"ja\":\"セネガル\",\"it\":\"Senegal\",\"cn\":\"塞内加尔\"}', 14.00000000, -14.00000000, '🇸🇳', 'U+1F1F8 U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 19:10:50', 1, 'Q1041'),
(196, 'Serbia', 'SRB', '688', 'RS', '381', 'Belgrade', 'RSD', 'Serbian dinar', 'din', '.rs', 'Србија', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Belgrade\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"세르비아\",\"br\":\"Sérvia\",\"pt\":\"Sérvia\",\"nl\":\"Servië\",\"hr\":\"Srbija\",\"fa\":\"صربستان\",\"de\":\"Serbien\",\"es\":\"Serbia\",\"fr\":\"Serbie\",\"ja\":\"セルビア\",\"it\":\"Serbia\",\"cn\":\"塞尔维亚\"}', 44.00000000, 21.00000000, '🇷🇸', 'U+1F1F7 U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:10:55', 1, 'Q403'),
(197, 'Seychelles', 'SYC', '690', 'SC', '248', 'Victoria', 'SCR', 'Seychellois rupee', 'SRe', '.sc', 'Seychelles', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Mahe\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SCT\",\"tzName\":\"Seychelles Time\"}]', '{\"kr\":\"세이셸\",\"br\":\"Seicheles\",\"pt\":\"Seicheles\",\"nl\":\"Seychellen\",\"hr\":\"Sejšeli\",\"fa\":\"سیشل\",\"de\":\"Seychellen\",\"es\":\"Seychelles\",\"fr\":\"Seychelles\",\"ja\":\"セーシェル\",\"it\":\"Seychelles\",\"cn\":\"塞舌尔\"}', -4.58333333, 55.66666666, '🇸🇨', 'U+1F1F8 U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 19:11:01', 1, 'Q1042');
INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_name`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(198, 'Sierra Leone', 'SLE', '694', 'SL', '232', 'Freetown', 'SLL', 'Sierra Leonean leone', 'Le', '.sl', 'Sierra Leone', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Freetown\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"시에라리온\",\"br\":\"Serra Leoa\",\"pt\":\"Serra Leoa\",\"nl\":\"Sierra Leone\",\"hr\":\"Sijera Leone\",\"fa\":\"سیرالئون\",\"de\":\"Sierra Leone\",\"es\":\"Sierra Leone\",\"fr\":\"Sierra Leone\",\"ja\":\"シエラレオネ\",\"it\":\"Sierra Leone\",\"cn\":\"塞拉利昂\"}', 8.50000000, -11.50000000, '🇸🇱', 'U+1F1F8 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 19:11:06', 1, 'Q1044'),
(199, 'Singapore', 'SGP', '702', 'SG', '65', 'Singapur', 'SGD', 'Singapore dollar', '$', '.sg', 'Singapore', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Singapore\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"SGT\",\"tzName\":\"Singapore Time\"}]', '{\"kr\":\"싱가포르\",\"br\":\"Singapura\",\"pt\":\"Singapura\",\"nl\":\"Singapore\",\"hr\":\"Singapur\",\"fa\":\"سنگاپور\",\"de\":\"Singapur\",\"es\":\"Singapur\",\"fr\":\"Singapour\",\"ja\":\"シンガポール\",\"it\":\"Singapore\",\"cn\":\"新加坡\"}', 1.36666666, 103.80000000, '🇸🇬', 'U+1F1F8 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 19:11:12', 1, 'Q334'),
(200, 'Slovakia', 'SVK', '703', 'SK', '421', 'Bratislava', 'EUR', 'Euro', '€', '.sk', 'Slovensko', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Bratislava\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"슬로바키아\",\"br\":\"Eslováquia\",\"pt\":\"Eslováquia\",\"nl\":\"Slowakije\",\"hr\":\"Slovačka\",\"fa\":\"اسلواکی\",\"de\":\"Slowakei\",\"es\":\"República Eslovaca\",\"fr\":\"Slovaquie\",\"ja\":\"スロバキア\",\"it\":\"Slovacchia\",\"cn\":\"斯洛伐克\"}', 48.66666666, 19.50000000, '🇸🇰', 'U+1F1F8 U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 19:07:01', 1, 'Q214'),
(201, 'Slovenia', 'SVN', '705', 'SI', '386', 'Ljubljana', 'EUR', 'Euro', '€', '.si', 'Slovenija', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Ljubljana\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"슬로베니아\",\"br\":\"Eslovênia\",\"pt\":\"Eslovénia\",\"nl\":\"Slovenië\",\"hr\":\"Slovenija\",\"fa\":\"اسلوونی\",\"de\":\"Slowenien\",\"es\":\"Eslovenia\",\"fr\":\"Slovénie\",\"ja\":\"スロベニア\",\"it\":\"Slovenia\",\"cn\":\"斯洛文尼亚\"}', 46.11666666, 14.81666666, '🇸🇮', 'U+1F1F8 U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 19:07:05', 1, 'Q215'),
(202, 'Solomon Islands', 'SLB', '090', 'SB', '677', 'Honiara', 'SBD', 'Solomon Islands dollar', 'Si$', '.sb', 'Solomon Islands', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Guadalcanal\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"SBT\",\"tzName\":\"Solomon Islands Time\"}]', '{\"kr\":\"솔로몬 제도\",\"br\":\"Ilhas Salomão\",\"pt\":\"Ilhas Salomão\",\"nl\":\"Salomonseilanden\",\"hr\":\"Solomonski Otoci\",\"fa\":\"جزایر سلیمان\",\"de\":\"Salomonen\",\"es\":\"Islas Salomón\",\"fr\":\"Îles Salomon\",\"ja\":\"ソロモン諸島\",\"it\":\"Isole Salomone\",\"cn\":\"所罗门群岛\"}', -8.00000000, 159.00000000, '🇸🇧', 'U+1F1F8 U+1F1E7', '2018-07-21 01:41:03', '2021-12-11 19:11:36', 1, 'Q685'),
(203, 'Somalia', 'SOM', '706', 'SO', '252', 'Mogadishu', 'SOS', 'Somali shilling', 'Sh.so.', '.so', 'Soomaaliya', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Mogadishu\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"소말리아\",\"br\":\"Somália\",\"pt\":\"Somália\",\"nl\":\"Somalië\",\"hr\":\"Somalija\",\"fa\":\"سومالی\",\"de\":\"Somalia\",\"es\":\"Somalia\",\"fr\":\"Somalie\",\"ja\":\"ソマリア\",\"it\":\"Somalia\",\"cn\":\"索马里\"}', 10.00000000, 49.00000000, '🇸🇴', 'U+1F1F8 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 19:11:41', 1, 'Q1045'),
(204, 'South Africa', 'ZAF', '710', 'ZA', '27', 'Pretoria', 'ZAR', 'South African rand', 'R', '.za', 'South Africa', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Johannesburg\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"SAST\",\"tzName\":\"South African Standard Time\"}]', '{\"kr\":\"남아프리카 공화국\",\"br\":\"República Sul-Africana\",\"pt\":\"República Sul-Africana\",\"nl\":\"Zuid-Afrika\",\"hr\":\"Južnoafrička Republika\",\"fa\":\"آفریقای جنوبی\",\"de\":\"Republik Südafrika\",\"es\":\"República de Sudáfrica\",\"fr\":\"Afrique du Sud\",\"ja\":\"南アフリカ\",\"it\":\"Sud Africa\",\"cn\":\"南非\"}', -29.00000000, 24.00000000, '🇿🇦', 'U+1F1FF U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:11:49', 1, 'Q258'),
(205, 'South Georgia', 'SGS', '239', 'GS', '500', 'Grytviken', 'GBP', 'British pound', '£', '.gs', 'South Georgia', 'Americas', 'South America', '[{\"zoneName\":\"Atlantic/South_Georgia\",\"gmtOffset\":-7200,\"gmtOffsetName\":\"UTC-02:00\",\"abbreviation\":\"GST\",\"tzName\":\"South Georgia and the South Sandwich Islands Time\"}]', '{\"kr\":\"사우스조지아\",\"br\":\"Ilhas Geórgias do Sul e Sandwich do Sul\",\"pt\":\"Ilhas Geórgia do Sul e Sanduíche do Sul\",\"nl\":\"Zuid-Georgia en Zuidelijke Sandwicheilanden\",\"hr\":\"Južna Georgija i otočje Južni Sandwich\",\"fa\":\"جزایر جورجیای جنوبی و ساندویچ جنوبی\",\"de\":\"Südgeorgien und die Südlichen Sandwichinseln\",\"es\":\"Islas Georgias del Sur y Sandwich del Sur\",\"fr\":\"Géorgie du Sud-et-les Îles Sandwich du Sud\",\"ja\":\"サウスジョージア・サウスサンドウィッチ諸島\",\"it\":\"Georgia del Sud e Isole Sandwich Meridionali\",\"cn\":\"南乔治亚\"}', -54.50000000, -37.00000000, '🇬🇸', 'U+1F1EC U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:06:45', 1, NULL),
(206, 'South Sudan', 'SSD', '728', 'SS', '211', 'Juba', 'SSP', 'South Sudanese pound', '£', '.ss', 'South Sudan', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Juba\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"남수단\",\"br\":\"Sudão do Sul\",\"pt\":\"Sudão do Sul\",\"nl\":\"Zuid-Soedan\",\"hr\":\"Južni Sudan\",\"fa\":\"سودان جنوبی\",\"de\":\"Südsudan\",\"es\":\"Sudán del Sur\",\"fr\":\"Soudan du Sud\",\"ja\":\"南スーダン\",\"it\":\"Sudan del sud\",\"cn\":\"南苏丹\"}', 7.00000000, 30.00000000, '🇸🇸', 'U+1F1F8 U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:12:25', 1, 'Q958'),
(207, 'Spain', 'ESP', '724', 'ES', '34', 'Madrid', 'EUR', 'Euro', '€', '.es', 'España', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Africa/Ceuta\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"},{\"zoneName\":\"Atlantic/Canary\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"},{\"zoneName\":\"Europe/Madrid\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스페인\",\"br\":\"Espanha\",\"pt\":\"Espanha\",\"nl\":\"Spanje\",\"hr\":\"Španjolska\",\"fa\":\"اسپانیا\",\"de\":\"Spanien\",\"es\":\"España\",\"fr\":\"Espagne\",\"ja\":\"スペイン\",\"it\":\"Spagna\",\"cn\":\"西班牙\"}', 40.00000000, -4.00000000, '🇪🇸', 'U+1F1EA U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:02:30', 1, 'Q29'),
(208, 'Sri Lanka', 'LKA', '144', 'LK', '94', 'Colombo', 'LKR', 'Sri Lankan rupee', 'Rs', '.lk', 'śrī laṃkāva', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Colombo\",\"gmtOffset\":19800,\"gmtOffsetName\":\"UTC+05:30\",\"abbreviation\":\"IST\",\"tzName\":\"Indian Standard Time\"}]', '{\"kr\":\"스리랑카\",\"br\":\"Sri Lanka\",\"pt\":\"Sri Lanka\",\"nl\":\"Sri Lanka\",\"hr\":\"Šri Lanka\",\"fa\":\"سری‌لانکا\",\"de\":\"Sri Lanka\",\"es\":\"Sri Lanka\",\"fr\":\"Sri Lanka\",\"ja\":\"スリランカ\",\"it\":\"Sri Lanka\",\"cn\":\"斯里兰卡\"}', 7.00000000, 81.00000000, '🇱🇰', 'U+1F1F1 U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 19:12:30', 1, 'Q854'),
(209, 'Sudan', 'SDN', '729', 'SD', '249', 'Khartoum', 'SDG', 'Sudanese pound', '.س.ج', '.sd', 'السودان', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Khartoum\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EAT\",\"tzName\":\"Eastern African Time\"}]', '{\"kr\":\"수단\",\"br\":\"Sudão\",\"pt\":\"Sudão\",\"nl\":\"Soedan\",\"hr\":\"Sudan\",\"fa\":\"سودان\",\"de\":\"Sudan\",\"es\":\"Sudán\",\"fr\":\"Soudan\",\"ja\":\"スーダン\",\"it\":\"Sudan\",\"cn\":\"苏丹\"}', 15.00000000, 30.00000000, '🇸🇩', 'U+1F1F8 U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 19:12:35', 1, 'Q1049'),
(210, 'Suriname', 'SUR', '740', 'SR', '597', 'Paramaribo', 'SRD', 'Surinamese dollar', '$', '.sr', 'Suriname', 'Americas', 'South America', '[{\"zoneName\":\"America/Paramaribo\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"SRT\",\"tzName\":\"Suriname Time\"}]', '{\"kr\":\"수리남\",\"br\":\"Suriname\",\"pt\":\"Suriname\",\"nl\":\"Suriname\",\"hr\":\"Surinam\",\"fa\":\"سورینام\",\"de\":\"Suriname\",\"es\":\"Surinam\",\"fr\":\"Surinam\",\"ja\":\"スリナム\",\"it\":\"Suriname\",\"cn\":\"苏里南\"}', 4.00000000, -56.00000000, '🇸🇷', 'U+1F1F8 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 19:12:40', 1, 'Q730'),
(211, 'Svalbard And Jan Mayen Islands', 'SJM', '744', 'SJ', '47', 'Longyearbyen', 'NOK', 'Norwegian Krone', 'kr', '.sj', 'Svalbard og Jan Mayen', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Arctic/Longyearbyen\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스발바르 얀마옌 제도\",\"br\":\"Svalbard\",\"pt\":\"Svalbard\",\"nl\":\"Svalbard en Jan Mayen\",\"hr\":\"Svalbard i Jan Mayen\",\"fa\":\"سوالبارد و یان ماین\",\"de\":\"Svalbard und Jan Mayen\",\"es\":\"Islas Svalbard y Jan Mayen\",\"fr\":\"Svalbard et Jan Mayen\",\"ja\":\"スヴァールバル諸島およびヤンマイエン島\",\"it\":\"Svalbard e Jan Mayen\",\"cn\":\"斯瓦尔巴和扬马延群岛\"}', 78.00000000, 20.00000000, '🇸🇯', 'U+1F1F8 U+1F1EF', '2018-07-21 01:41:03', '2021-12-11 19:12:54', 1, NULL),
(212, 'Swaziland', 'SWZ', '748', 'SZ', '268', 'Mbabane', 'SZL', 'Lilangeni', 'E', '.sz', 'Swaziland', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Mbabane\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"SAST\",\"tzName\":\"South African Standard Time\"}]', '{\"kr\":\"에스와티니\",\"br\":\"Suazilândia\",\"pt\":\"Suazilândia\",\"nl\":\"Swaziland\",\"hr\":\"Svazi\",\"fa\":\"سوازیلند\",\"de\":\"Swasiland\",\"es\":\"Suazilandia\",\"fr\":\"Swaziland\",\"ja\":\"スワジランド\",\"it\":\"Swaziland\",\"cn\":\"斯威士兰\"}', -26.50000000, 31.50000000, '🇸🇿', 'U+1F1F8 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 19:13:12', 1, 'Q1050'),
(213, 'Sweden', 'SWE', '752', 'SE', '46', 'Stockholm', 'SEK', 'Swedish krona', 'kr', '.se', 'Sverige', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Stockholm\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스웨덴\",\"br\":\"Suécia\",\"pt\":\"Suécia\",\"nl\":\"Zweden\",\"hr\":\"Švedska\",\"fa\":\"سوئد\",\"de\":\"Schweden\",\"es\":\"Suecia\",\"fr\":\"Suède\",\"ja\":\"スウェーデン\",\"it\":\"Svezia\",\"cn\":\"瑞典\"}', 62.00000000, 15.00000000, '🇸🇪', 'U+1F1F8 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:13:24', 1, 'Q34'),
(214, 'Switzerland', 'CHE', '756', 'CH', '41', 'Bern', 'CHF', 'Swiss franc', 'CHf', '.ch', 'Schweiz', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Zurich\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스위스\",\"br\":\"Suíça\",\"pt\":\"Suíça\",\"nl\":\"Zwitserland\",\"hr\":\"Švicarska\",\"fa\":\"سوئیس\",\"de\":\"Schweiz\",\"es\":\"Suiza\",\"fr\":\"Suisse\",\"ja\":\"スイス\",\"it\":\"Svizzera\",\"cn\":\"瑞士\"}', 47.00000000, 8.00000000, '🇨🇭', 'U+1F1E8 U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 19:13:31', 1, 'Q39'),
(215, 'Syria', 'SYR', '760', 'SY', '963', 'Damascus', 'SYP', 'Syrian pound', 'LS', '.sy', 'سوريا', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Damascus\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"시리아\",\"br\":\"Síria\",\"pt\":\"Síria\",\"nl\":\"Syrië\",\"hr\":\"Sirija\",\"fa\":\"سوریه\",\"de\":\"Syrien\",\"es\":\"Siria\",\"fr\":\"Syrie\",\"ja\":\"シリア・アラブ共和国\",\"it\":\"Siria\",\"cn\":\"叙利亚\"}', 35.00000000, 38.00000000, '🇸🇾', 'U+1F1F8 U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 19:13:36', 1, 'Q858'),
(216, 'Taiwan', 'TWN', '158', 'TW', '886', 'Taipei', 'TWD', 'New Taiwan dollar', '$', '.tw', '臺灣', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Taipei\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CST\",\"tzName\":\"China Standard Time\"}]', '{\"kr\":\"대만\",\"br\":\"Taiwan\",\"pt\":\"Taiwan\",\"nl\":\"Taiwan\",\"hr\":\"Tajvan\",\"fa\":\"تایوان\",\"de\":\"Taiwan\",\"es\":\"Taiwán\",\"fr\":\"Taïwan\",\"ja\":\"台湾（中華民国）\",\"it\":\"Taiwan\",\"cn\":\"中国台湾\"}', 23.50000000, 121.00000000, '🇹🇼', 'U+1F1F9 U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 19:13:41', 1, 'Q865'),
(217, 'Tajikistan', 'TJK', '762', 'TJ', '992', 'Dushanbe', 'TJS', 'Tajikistani somoni', 'SM', '.tj', 'Тоҷикистон', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Dushanbe\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TJT\",\"tzName\":\"Tajikistan Time\"}]', '{\"kr\":\"타지키스탄\",\"br\":\"Tajiquistão\",\"pt\":\"Tajiquistão\",\"nl\":\"Tadzjikistan\",\"hr\":\"Tađikistan\",\"fa\":\"تاجیکستان\",\"de\":\"Tadschikistan\",\"es\":\"Tayikistán\",\"fr\":\"Tadjikistan\",\"ja\":\"タジキスタン\",\"it\":\"Tagikistan\",\"cn\":\"塔吉克斯坦\"}', 39.00000000, 71.00000000, '🇹🇯', 'U+1F1F9 U+1F1EF', '2018-07-21 01:41:03', '2021-12-11 19:13:46', 1, 'Q863'),
(218, 'Tanzania', 'TZA', '834', 'TZ', '255', 'Dodoma', 'TZS', 'Tanzanian shilling', 'TSh', '.tz', 'Tanzania', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Dar_es_Salaam\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"탄자니아\",\"br\":\"Tanzânia\",\"pt\":\"Tanzânia\",\"nl\":\"Tanzania\",\"hr\":\"Tanzanija\",\"fa\":\"تانزانیا\",\"de\":\"Tansania\",\"es\":\"Tanzania\",\"fr\":\"Tanzanie\",\"ja\":\"タンザニア\",\"it\":\"Tanzania\",\"cn\":\"坦桑尼亚\"}', -6.00000000, 35.00000000, '🇹🇿', 'U+1F1F9 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 19:13:57', 1, 'Q924'),
(219, 'Thailand', 'THA', '764', 'TH', '66', 'Bangkok', 'THB', 'Thai baht', '฿', '.th', 'ประเทศไทย', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Bangkok\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"태국\",\"br\":\"Tailândia\",\"pt\":\"Tailândia\",\"nl\":\"Thailand\",\"hr\":\"Tajland\",\"fa\":\"تایلند\",\"de\":\"Thailand\",\"es\":\"Tailandia\",\"fr\":\"Thaïlande\",\"ja\":\"タイ\",\"it\":\"Tailandia\",\"cn\":\"泰国\"}', 15.00000000, 100.00000000, '🇹🇭', 'U+1F1F9 U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 19:14:06', 1, 'Q869'),
(220, 'Togo', 'TGO', '768', 'TG', '228', 'Lome', 'XOF', 'West African CFA franc', 'CFA', '.tg', 'Togo', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Lome\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"토고\",\"br\":\"Togo\",\"pt\":\"Togo\",\"nl\":\"Togo\",\"hr\":\"Togo\",\"fa\":\"توگو\",\"de\":\"Togo\",\"es\":\"Togo\",\"fr\":\"Togo\",\"ja\":\"トーゴ\",\"it\":\"Togo\",\"cn\":\"多哥\"}', 8.00000000, 1.16666666, '🇹🇬', 'U+1F1F9 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 19:14:14', 1, 'Q945'),
(221, 'Tokelau', 'TKL', '772', 'TK', '690', '', 'NZD', 'New Zealand dollar', '$', '.tk', 'Tokelau', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Fakaofo\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"TKT\",\"tzName\":\"Tokelau Time\"}]', '{\"kr\":\"토켈라우\",\"br\":\"Tokelau\",\"pt\":\"Toquelau\",\"nl\":\"Tokelau\",\"hr\":\"Tokelau\",\"fa\":\"توکلائو\",\"de\":\"Tokelau\",\"es\":\"Islas Tokelau\",\"fr\":\"Tokelau\",\"ja\":\"トケラウ\",\"it\":\"Isole Tokelau\",\"cn\":\"托克劳\"}', -9.00000000, -172.00000000, '🇹🇰', 'U+1F1F9 U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 19:14:33', 1, NULL),
(222, 'Tonga', 'TON', '776', 'TO', '676', 'Nuku\'alofa', 'TOP', 'Tongan paʻanga', '$', '.to', 'Tonga', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Tongatapu\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"TOT\",\"tzName\":\"Tonga Time\"}]', '{\"kr\":\"통가\",\"br\":\"Tonga\",\"pt\":\"Tonga\",\"nl\":\"Tonga\",\"hr\":\"Tonga\",\"fa\":\"تونگا\",\"de\":\"Tonga\",\"es\":\"Tonga\",\"fr\":\"Tonga\",\"ja\":\"トンガ\",\"it\":\"Tonga\",\"cn\":\"汤加\"}', -20.00000000, -175.00000000, '🇹🇴', 'U+1F1F9 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 19:14:44', 1, 'Q678'),
(223, 'Trinidad And Tobago', 'TTO', '780', 'TT', '+1-868', 'Port of Spain', 'TTD', 'Trinidad and Tobago dollar', '$', '.tt', 'Trinidad and Tobago', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Port_of_Spain\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"트리니다드 토바고\",\"br\":\"Trinidad e Tobago\",\"pt\":\"Trindade e Tobago\",\"nl\":\"Trinidad en Tobago\",\"hr\":\"Trinidad i Tobago\",\"fa\":\"ترینیداد و توباگو\",\"de\":\"Trinidad und Tobago\",\"es\":\"Trinidad y Tobago\",\"fr\":\"Trinité et Tobago\",\"ja\":\"トリニダード・トバゴ\",\"it\":\"Trinidad e Tobago\",\"cn\":\"特立尼达和多巴哥\"}', 11.00000000, -61.00000000, '🇹🇹', 'U+1F1F9 U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 19:14:51', 1, 'Q754'),
(224, 'Tunisia', 'TUN', '788', 'TN', '216', 'Tunis', 'TND', 'Tunisian dinar', 'ت.د', '.tn', 'تونس', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Tunis\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"튀니지\",\"br\":\"Tunísia\",\"pt\":\"Tunísia\",\"nl\":\"Tunesië\",\"hr\":\"Tunis\",\"fa\":\"تونس\",\"de\":\"Tunesien\",\"es\":\"Túnez\",\"fr\":\"Tunisie\",\"ja\":\"チュニジア\",\"it\":\"Tunisia\",\"cn\":\"突尼斯\"}', 34.00000000, 9.00000000, '🇹🇳', 'U+1F1F9 U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 19:15:00', 1, 'Q948'),
(225, 'Turkey', 'TUR', '792', 'TR', '90', 'Ankara', 'TRY', 'Turkish lira', '₺', '.tr', 'Türkiye', 'Asia', 'Western Asia', '[{\"zoneName\":\"Europe/Istanbul\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"터키\",\"br\":\"Turquia\",\"pt\":\"Turquia\",\"nl\":\"Turkije\",\"hr\":\"Turska\",\"fa\":\"ترکیه\",\"de\":\"Türkei\",\"es\":\"Turquía\",\"fr\":\"Turquie\",\"ja\":\"トルコ\",\"it\":\"Turchia\",\"cn\":\"土耳其\"}', 39.00000000, 35.00000000, '🇹🇷', 'U+1F1F9 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 19:15:05', 1, 'Q43'),
(226, 'Turkmenistan', 'TKM', '795', 'TM', '993', 'Ashgabat', 'TMT', 'Turkmenistan manat', 'T', '.tm', 'Türkmenistan', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Ashgabat\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TMT\",\"tzName\":\"Turkmenistan Time\"}]', '{\"kr\":\"투르크메니스탄\",\"br\":\"Turcomenistão\",\"pt\":\"Turquemenistão\",\"nl\":\"Turkmenistan\",\"hr\":\"Turkmenistan\",\"fa\":\"ترکمنستان\",\"de\":\"Turkmenistan\",\"es\":\"Turkmenistán\",\"fr\":\"Turkménistan\",\"ja\":\"トルクメニスタン\",\"it\":\"Turkmenistan\",\"cn\":\"土库曼斯坦\"}', 40.00000000, 60.00000000, '🇹🇲', 'U+1F1F9 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:15:10', 1, 'Q874'),
(227, 'Turks And Caicos Islands', 'TCA', '796', 'TC', '+1-649', 'Cockburn Town', 'USD', 'United States dollar', '$', '.tc', 'Turks and Caicos Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Grand_Turk\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"터크스 케이커스 제도\",\"br\":\"Ilhas Turcas e Caicos\",\"pt\":\"Ilhas Turcas e Caicos\",\"nl\":\"Turks- en Caicoseilanden\",\"hr\":\"Otoci Turks i Caicos\",\"fa\":\"جزایر تورکس و کایکوس\",\"de\":\"Turks- und Caicosinseln\",\"es\":\"Islas Turks y Caicos\",\"fr\":\"Îles Turques-et-Caïques\",\"ja\":\"タークス・カイコス諸島\",\"it\":\"Isole Turks e Caicos\",\"cn\":\"特克斯和凯科斯群岛\"}', 21.75000000, -71.58333333, '🇹🇨', 'U+1F1F9 U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 19:06:26', 1, NULL),
(228, 'Tuvalu', 'TUV', '798', 'TV', '688', 'Funafuti', 'AUD', 'Australian dollar', '$', '.tv', 'Tuvalu', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Funafuti\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"TVT\",\"tzName\":\"Tuvalu Time\"}]', '{\"kr\":\"투발루\",\"br\":\"Tuvalu\",\"pt\":\"Tuvalu\",\"nl\":\"Tuvalu\",\"hr\":\"Tuvalu\",\"fa\":\"تووالو\",\"de\":\"Tuvalu\",\"es\":\"Tuvalu\",\"fr\":\"Tuvalu\",\"ja\":\"ツバル\",\"it\":\"Tuvalu\",\"cn\":\"图瓦卢\"}', -8.00000000, 178.00000000, '🇹🇻', 'U+1F1F9 U+1F1FB', '2018-07-21 01:41:03', '2021-12-11 19:07:37', 1, 'Q672'),
(229, 'Uganda', 'UGA', '800', 'UG', '256', 'Kampala', 'UGX', 'Ugandan shilling', 'USh', '.ug', 'Uganda', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Kampala\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"우간다\",\"br\":\"Uganda\",\"pt\":\"Uganda\",\"nl\":\"Oeganda\",\"hr\":\"Uganda\",\"fa\":\"اوگاندا\",\"de\":\"Uganda\",\"es\":\"Uganda\",\"fr\":\"Uganda\",\"ja\":\"ウガンダ\",\"it\":\"Uganda\",\"cn\":\"乌干达\"}', 1.00000000, 32.00000000, '🇺🇬', 'U+1F1FA U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 19:15:17', 1, 'Q1036'),
(230, 'Ukraine', 'UKR', '804', 'UA', '380', 'Kiev', 'UAH', 'Ukrainian hryvnia', '₴', '.ua', 'Україна', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Kiev\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Europe/Simferopol\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"},{\"zoneName\":\"Europe/Uzhgorod\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Europe/Zaporozhye\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"우크라이나\",\"br\":\"Ucrânia\",\"pt\":\"Ucrânia\",\"nl\":\"Oekraïne\",\"hr\":\"Ukrajina\",\"fa\":\"وکراین\",\"de\":\"Ukraine\",\"es\":\"Ucrania\",\"fr\":\"Ukraine\",\"ja\":\"ウクライナ\",\"it\":\"Ucraina\",\"cn\":\"乌克兰\"}', 49.00000000, 32.00000000, '🇺🇦', 'U+1F1FA U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:15:22', 1, 'Q212'),
(231, 'United Arab Emirates', 'ARE', '784', 'AE', '971', 'Abu Dhabi', 'AED', 'United Arab Emirates dirham', 'إ.د', '.ae', 'دولة الإمارات العربية المتحدة', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Dubai\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"GST\",\"tzName\":\"Gulf Standard Time\"}]', '{\"kr\":\"아랍에미리트\",\"br\":\"Emirados árabes Unidos\",\"pt\":\"Emirados árabes Unidos\",\"nl\":\"Verenigde Arabische Emiraten\",\"hr\":\"Ujedinjeni Arapski Emirati\",\"fa\":\"امارات متحده عربی\",\"de\":\"Vereinigte Arabische Emirate\",\"es\":\"Emiratos Árabes Unidos\",\"fr\":\"Émirats arabes unis\",\"ja\":\"アラブ首長国連邦\",\"it\":\"Emirati Arabi Uniti\",\"cn\":\"阿拉伯联合酋长国\"}', 24.00000000, 54.00000000, '🇦🇪', 'U+1F1E6 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:15:29', 1, 'Q878'),
(232, 'United Kingdom', 'GBR', '826', 'GB', '44', 'London', 'GBP', 'British pound', '£', '.uk', 'United Kingdom', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/London\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"영국\",\"br\":\"Reino Unido\",\"pt\":\"Reino Unido\",\"nl\":\"Verenigd Koninkrijk\",\"hr\":\"Ujedinjeno Kraljevstvo\",\"fa\":\"بریتانیای کبیر و ایرلند شمالی\",\"de\":\"Vereinigtes Königreich\",\"es\":\"Reino Unido\",\"fr\":\"Royaume-Uni\",\"ja\":\"イギリス\",\"it\":\"Regno Unito\",\"cn\":\"英国\"}', 54.00000000, -2.00000000, '🇬🇧', 'U+1F1EC U+1F1E7', '2018-07-21 01:41:03', '2021-12-11 19:07:13', 1, 'Q145'),
(233, 'United States', 'USA', '840', 'US', '1', 'Washington', 'USD', 'United States dollar', '$', '.us', 'United States', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Adak\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"HST\",\"tzName\":\"Hawaii–Aleutian Standard Time\"},{\"zoneName\":\"America/Anchorage\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/Boise\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Chicago\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Denver\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Detroit\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Indianapolis\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Knox\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Marengo\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Petersburg\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Tell_City\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Vevay\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Vincennes\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Winamac\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Juneau\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/Kentucky/Louisville\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Kentucky/Monticello\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Los_Angeles\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"},{\"zoneName\":\"America/Menominee\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Metlakatla\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/New_York\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Nome\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/North_Dakota/Beulah\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/North_Dakota/Center\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/North_Dakota/New_Salem\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Phoenix\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Sitka\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/Yakutat\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"Pacific/Honolulu\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"HST\",\"tzName\":\"Hawaii–Aleutian Standard Time\"}]', '{\"kr\":\"미국\",\"br\":\"Estados Unidos\",\"pt\":\"Estados Unidos\",\"nl\":\"Verenigde Staten\",\"hr\":\"Sjedinjene Američke Države\",\"fa\":\"ایالات متحده آمریکا\",\"de\":\"Vereinigte Staaten von Amerika\",\"es\":\"Estados Unidos\",\"fr\":\"États-Unis\",\"ja\":\"アメリカ合衆国\",\"it\":\"Stati Uniti D\'America\",\"cn\":\"美国\"}', 38.00000000, -97.00000000, '🇺🇸', 'U+1F1FA U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:06:28', 1, 'Q30'),
(234, 'United States Minor Outlying Islands', 'UMI', '581', 'UM', '1', '', 'USD', 'United States dollar', '$', '.us', 'United States Minor Outlying Islands', 'Americas', 'Northern America', '[{\"zoneName\":\"Pacific/Midway\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"SST\",\"tzName\":\"Samoa Standard Time\"},{\"zoneName\":\"Pacific/Wake\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"WAKT\",\"tzName\":\"Wake Island Time\"}]', '{\"kr\":\"미국령 군소 제도\",\"br\":\"Ilhas Menores Distantes dos Estados Unidos\",\"pt\":\"Ilhas Menores Distantes dos Estados Unidos\",\"nl\":\"Kleine afgelegen eilanden van de Verenigde Staten\",\"hr\":\"Mali udaljeni otoci SAD-a\",\"fa\":\"جزایر کوچک حاشیه‌ای ایالات متحده آمریکا\",\"de\":\"Kleinere Inselbesitzungen der Vereinigten Staaten\",\"es\":\"Islas Ultramarinas Menores de Estados Unidos\",\"fr\":\"Îles mineures éloignées des États-Unis\",\"ja\":\"合衆国領有小離島\",\"it\":\"Isole minori esterne degli Stati Uniti d\'America\",\"cn\":\"美国本土外小岛屿\"}', 0.00000000, 0.00000000, '🇺🇲', 'U+1F1FA U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:06:30', 1, NULL),
(235, 'Uruguay', 'URY', '858', 'UY', '598', 'Montevideo', 'UYU', 'Uruguayan peso', '$', '.uy', 'Uruguay', 'Americas', 'South America', '[{\"zoneName\":\"America/Montevideo\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"UYT\",\"tzName\":\"Uruguay Standard Time\"}]', '{\"kr\":\"우루과이\",\"br\":\"Uruguai\",\"pt\":\"Uruguai\",\"nl\":\"Uruguay\",\"hr\":\"Urugvaj\",\"fa\":\"اروگوئه\",\"de\":\"Uruguay\",\"es\":\"Uruguay\",\"fr\":\"Uruguay\",\"ja\":\"ウルグアイ\",\"it\":\"Uruguay\",\"cn\":\"乌拉圭\"}', -33.00000000, -56.00000000, '🇺🇾', 'U+1F1FA U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 19:15:36', 1, 'Q77'),
(236, 'Uzbekistan', 'UZB', '860', 'UZ', '998', 'Tashkent', 'UZS', 'Uzbekistani soʻm', 'лв', '.uz', 'O‘zbekiston', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Samarkand\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"UZT\",\"tzName\":\"Uzbekistan Time\"},{\"zoneName\":\"Asia/Tashkent\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"UZT\",\"tzName\":\"Uzbekistan Time\"}]', '{\"kr\":\"우즈베키스탄\",\"br\":\"Uzbequistão\",\"pt\":\"Usbequistão\",\"nl\":\"Oezbekistan\",\"hr\":\"Uzbekistan\",\"fa\":\"ازبکستان\",\"de\":\"Usbekistan\",\"es\":\"Uzbekistán\",\"fr\":\"Ouzbékistan\",\"ja\":\"ウズベキスタン\",\"it\":\"Uzbekistan\",\"cn\":\"乌兹别克斯坦\"}', 41.00000000, 64.00000000, '🇺🇿', 'U+1F1FA U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 19:15:40', 1, 'Q265'),
(237, 'Vanuatu', 'VUT', '548', 'VU', '678', 'Port Vila', 'VUV', 'Vanuatu vatu', 'VT', '.vu', 'Vanuatu', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Efate\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"VUT\",\"tzName\":\"Vanuatu Time\"}]', '{\"kr\":\"바누아투\",\"br\":\"Vanuatu\",\"pt\":\"Vanuatu\",\"nl\":\"Vanuatu\",\"hr\":\"Vanuatu\",\"fa\":\"وانواتو\",\"de\":\"Vanuatu\",\"es\":\"Vanuatu\",\"fr\":\"Vanuatu\",\"ja\":\"バヌアツ\",\"it\":\"Vanuatu\",\"cn\":\"瓦努阿图\"}', -16.00000000, 167.00000000, '🇻🇺', 'U+1F1FB U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 19:15:47', 1, 'Q686'),
(238, 'Vatican City State (Holy See)', 'VAT', '336', 'VA', '379', 'Vatican City', 'EUR', 'Euro', '€', '.va', 'Vaticano', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Vatican\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"바티칸 시국\",\"br\":\"Vaticano\",\"pt\":\"Vaticano\",\"nl\":\"Heilige Stoel\",\"hr\":\"Sveta Stolica\",\"fa\":\"سریر مقدس\",\"de\":\"Heiliger Stuhl\",\"es\":\"Santa Sede\",\"fr\":\"voir Saint\",\"ja\":\"聖座\",\"it\":\"Santa Sede\",\"cn\":\"梵蒂冈\"}', 41.90000000, 12.45000000, '🇻🇦', 'U+1F1FB U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:02:24', 1, 'Q237'),
(239, 'Venezuela', 'VEN', '862', 'VE', '58', 'Caracas', 'VEF', 'Bolívar', 'Bs', '.ve', 'Venezuela', 'Americas', 'South America', '[{\"zoneName\":\"America/Caracas\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"VET\",\"tzName\":\"Venezuelan Standard Time\"}]', '{\"kr\":\"베네수엘라\",\"br\":\"Venezuela\",\"pt\":\"Venezuela\",\"nl\":\"Venezuela\",\"hr\":\"Venezuela\",\"fa\":\"ونزوئلا\",\"de\":\"Venezuela\",\"es\":\"Venezuela\",\"fr\":\"Venezuela\",\"ja\":\"ベネズエラ・ボリバル共和国\",\"it\":\"Venezuela\",\"cn\":\"委内瑞拉\"}', 8.00000000, -66.00000000, '🇻🇪', 'U+1F1FB U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:16:04', 1, 'Q717'),
(240, 'Vietnam', 'VNM', '704', 'VN', '84', 'Hanoi', 'VND', 'Vietnamese đồng', '₫', '.vn', 'Việt Nam', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Ho_Chi_Minh\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"베트남\",\"br\":\"Vietnã\",\"pt\":\"Vietname\",\"nl\":\"Vietnam\",\"hr\":\"Vijetnam\",\"fa\":\"ویتنام\",\"de\":\"Vietnam\",\"es\":\"Vietnam\",\"fr\":\"Viêt Nam\",\"ja\":\"ベトナム\",\"it\":\"Vietnam\",\"cn\":\"越南\"}', 16.16666666, 107.83333333, '🇻🇳', 'U+1F1FB U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 19:16:14', 1, 'Q881'),
(241, 'Virgin Islands (British)', 'VGB', '092', 'VG', '+1-284', 'Road Town', 'USD', 'United States dollar', '$', '.vg', 'British Virgin Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Tortola\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"영국령 버진아일랜드\",\"br\":\"Ilhas Virgens Britânicas\",\"pt\":\"Ilhas Virgens Britânicas\",\"nl\":\"Britse Maagdeneilanden\",\"hr\":\"Britanski Djevičanski Otoci\",\"fa\":\"جزایر ویرجین بریتانیا\",\"de\":\"Britische Jungferninseln\",\"es\":\"Islas Vírgenes del Reino Unido\",\"fr\":\"Îles Vierges britanniques\",\"ja\":\"イギリス領ヴァージン諸島\",\"it\":\"Isole Vergini Britanniche\",\"cn\":\"圣文森特和格林纳丁斯\"}', 18.43138300, -64.62305000, '🇻🇬', 'U+1F1FB U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 19:06:33', 1, NULL),
(242, 'Virgin Islands (US)', 'VIR', '850', 'VI', '+1-340', 'Charlotte Amalie', 'USD', 'United States dollar', '$', '.vi', 'United States Virgin Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Thomas\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"미국령 버진아일랜드\",\"br\":\"Ilhas Virgens Americanas\",\"pt\":\"Ilhas Virgens Americanas\",\"nl\":\"Verenigde Staten Maagdeneilanden\",\"fa\":\"جزایر ویرجین آمریکا\",\"de\":\"Amerikanische Jungferninseln\",\"es\":\"Islas Vírgenes de los Estados Unidos\",\"fr\":\"Îles Vierges des États-Unis\",\"ja\":\"アメリカ領ヴァージン諸島\",\"it\":\"Isole Vergini americane\",\"cn\":\"维尔京群岛（美国）\"}', 18.34000000, -64.93000000, '🇻🇮', 'U+1F1FB U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 19:16:20', 1, NULL),
(243, 'Wallis And Futuna Islands', 'WLF', '876', 'WF', '681', 'Mata Utu', 'XPF', 'CFP franc', '₣', '.wf', 'Wallis et Futuna', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Wallis\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"WFT\",\"tzName\":\"Wallis & Futuna Time\"}]', '{\"kr\":\"왈리스 푸투나\",\"br\":\"Wallis e Futuna\",\"pt\":\"Wallis e Futuna\",\"nl\":\"Wallis en Futuna\",\"hr\":\"Wallis i Fortuna\",\"fa\":\"والیس و فوتونا\",\"de\":\"Wallis und Futuna\",\"es\":\"Wallis y Futuna\",\"fr\":\"Wallis-et-Futuna\",\"ja\":\"ウォリス・フツナ\",\"it\":\"Wallis e Futuna\",\"cn\":\"瓦利斯群岛和富图纳群岛\"}', -13.30000000, -176.20000000, '🇼🇫', 'U+1F1FC U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 19:16:25', 1, NULL),
(244, 'Western Sahara', 'ESH', '732', 'EH', '212', 'El-Aaiun', 'MAD', 'Moroccan Dirham', 'MAD', '.eh', 'الصحراء الغربية', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/El_Aaiun\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WEST\",\"tzName\":\"Western European Summer Time\"}]', '{\"kr\":\"서사하라\",\"br\":\"Saara Ocidental\",\"pt\":\"Saara Ocidental\",\"nl\":\"Westelijke Sahara\",\"hr\":\"Zapadna Sahara\",\"fa\":\"جمهوری دموکراتیک عربی صحرا\",\"de\":\"Westsahara\",\"es\":\"Sahara Occidental\",\"fr\":\"Sahara Occidental\",\"ja\":\"西サハラ\",\"it\":\"Sahara Occidentale\",\"cn\":\"西撒哈拉\"}', 24.50000000, -13.00000000, '🇪🇭', 'U+1F1EA U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 19:16:40', 1, NULL),
(245, 'Yemen', 'YEM', '887', 'YE', '967', 'Sanaa', 'YER', 'Yemeni rial', '﷼', '.ye', 'اليَمَن', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Aden\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"예멘\",\"br\":\"Iêmen\",\"pt\":\"Iémen\",\"nl\":\"Jemen\",\"hr\":\"Jemen\",\"fa\":\"یمن\",\"de\":\"Jemen\",\"es\":\"Yemen\",\"fr\":\"Yémen\",\"ja\":\"イエメン\",\"it\":\"Yemen\",\"cn\":\"也门\"}', 15.00000000, 48.00000000, '🇾🇪', 'U+1F1FE U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:16:48', 1, 'Q805'),
(246, 'Zambia', 'ZMB', '894', 'ZM', '260', 'Lusaka', 'ZMW', 'Zambian kwacha', 'ZK', '.zm', 'Zambia', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Lusaka\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"잠비아\",\"br\":\"Zâmbia\",\"pt\":\"Zâmbia\",\"nl\":\"Zambia\",\"hr\":\"Zambija\",\"fa\":\"زامبیا\",\"de\":\"Sambia\",\"es\":\"Zambia\",\"fr\":\"Zambie\",\"ja\":\"ザンビア\",\"it\":\"Zambia\",\"cn\":\"赞比亚\"}', -15.00000000, 30.00000000, '🇿🇲', 'U+1F1FF U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:16:53', 1, 'Q953'),
(247, 'Zimbabwe', 'ZWE', '716', 'ZW', '263', 'Harare', 'ZWL', 'Zimbabwe Dollar', '$', '.zw', 'Zimbabwe', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Harare\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"짐바브웨\",\"br\":\"Zimbabwe\",\"pt\":\"Zimbabué\",\"nl\":\"Zimbabwe\",\"hr\":\"Zimbabve\",\"fa\":\"زیمباوه\",\"de\":\"Simbabwe\",\"es\":\"Zimbabue\",\"fr\":\"Zimbabwe\",\"ja\":\"ジンバブエ\",\"it\":\"Zimbabwe\",\"cn\":\"津巴布韦\"}', -20.00000000, 30.00000000, '🇿🇼', 'U+1F1FF U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 19:17:10', 1, 'Q954'),
(248, 'Kosovo', 'XKX', '926', 'XK', '383', 'Pristina', 'EUR', 'Euro', '€', '.xk', 'Republika e Kosovës', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Belgrade\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"코소보\",\"cn\":\"科索沃\"}', 42.56129090, 20.34030350, '🇽🇰', 'U+1F1FD U+1F1F0', '2020-08-15 21:03:50', '2021-12-11 18:56:38', 1, 'Q1246'),
(249, 'Curaçao', 'CUW', '531', 'CW', '599', 'Willemstad', 'ANG', 'Netherlands Antillean guilder', 'ƒ', '.cw', 'Curaçao', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Curacao\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"퀴라소\",\"br\":\"Curaçao\",\"pt\":\"Curaçao\",\"nl\":\"Curaçao\",\"fa\":\"کوراسائو\",\"de\":\"Curaçao\",\"fr\":\"Curaçao\",\"it\":\"Curaçao\",\"cn\":\"库拉索\"}', 12.11666700, -68.93333300, '🇨🇼', 'U+1F1E8 U+1F1FC', '2020-10-25 20:24:20', '2021-12-11 18:31:45', 1, 'Q25279'),
(250, 'Sint Maarten (Dutch part)', 'SXM', '534', 'SX', '1721', 'Philipsburg', 'ANG', 'Netherlands Antillean guilder', 'ƒ', '.sx', 'Sint Maarten', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"신트마르턴\",\"br\":\"Sint Maarten\",\"pt\":\"São Martinho\",\"nl\":\"Sint Maarten\",\"fa\":\"سینت مارتن\",\"de\":\"Sint Maarten (niederl. Teil)\",\"fr\":\"Saint Martin (partie néerlandaise)\",\"it\":\"Saint Martin (parte olandese)\",\"cn\":\"圣马丁岛（荷兰部分）\"}', 18.03333300, -63.05000000, '🇸🇽', 'U+1F1F8 U+1F1FD', '2020-12-05 18:33:39', '2021-12-11 19:11:24', 1, 'Q26273');

-- --------------------------------------------------------

--
-- Table structure for table `custom_notifications`
--

DROP TABLE IF EXISTS `custom_notifications`;
CREATE TABLE `custom_notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(2048) DEFAULT NULL,
  `message` varchar(4096) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `date_sent` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `custom_notifications`
--

INSERT INTO `custom_notifications` (`id`, `title`, `message`, `type`, `date_sent`) VALUES
(1, 'HI < order_id >', 'your order  being processed < application_name >', 'place_order', '2024-05-04 19:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `custom_sms`
--

DROP TABLE IF EXISTS `custom_sms`;
CREATE TABLE `custom_sms` (
  `id` int(11) NOT NULL,
  `title` varchar(2048) NOT NULL,
  `message` varchar(4096) NOT NULL,
  `type` varchar(64) NOT NULL,
  `date_sent` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `custom_sms`
--

INSERT INTO `custom_sms` (`id`, `title`, `message`, `type`, `date_sent`) VALUES
(1, 'Your Order Has Been Placed - Order #{order.id}', 'Dear {user.username},\\r\\n\\r\\nThank you for placing your order with {system.company_name}. We are thrilled to confirm that your order has been successfully placed and is now being processed. Please find the details of your order below:\\r\\n\\r\\nOrder Number: #{order.id}\\r\\nOrder Date: {order.date_added}\\r\\nDelivery Address: {order.address}\\r\\n\\r\\n...\\r\\nTotal Amount: ${order.total}\\r\\n\\r\\nPayment Information:\\r\\n----------------------------------------\\r\\nPayment Method: {order.payment_method}\\r\\n\\r\\nDelivery Information:\\r\\n----------------------------------------\\r\\nYour order will be delivered to the following address:\\r\\n{order.address}\\r\\n\\r\\nEstimated Delivery Date: {order.delivery_date}\\r\\n\\r\\nIf you have any questions or need further assistance with your order, please don\'t hesitate to contact our customer support team at \\r\\n{system.support_email} or {system.support_number}.\\r\\n\\r\\nThank you for choosing {system.company_name}. We appreciate your business and look forward to serving you. Your satisfaction is our priority.\\r\\n\\r\\nSincerely,\\r\\nThe {system.company_name} Team', 'place_order', '2023-11-02 09:19:07'),
(2, 'Cashback/Discount Settlement', 'Hello {user.username},\\r\\n\\r\\nGood news! Your cashback/discount has been successfully settled:\\r\\n\\r\\nYour cashback/discount has been credited to your account. Enjoy the savings!\\r\\n\\r\\nFor any questions, contact us at {system.support_number}. Thanks for choosing {system.company_name}.', 'settle_cashback_discount', '2023-11-02 09:22:51'),
(3, 'Seller Commission Settlement', 'Hello {user.username},\\r\\n\\r\\nGood news! Your recent sale on {system.company_name} has earned you a commission payout.\\r\\n\\r\\nYour payment will be processed and deposited into your account within [Payment Processing Time]. For assistance, contact us at {system.support_number}.\\r\\n\\r\\nThank you for being a seller on {system.company_name}.\\r\\n\\r\\nBest regards,\\r\\n{system.company_name}', 'settle_seller_commission', '2023-11-02 09:26:30'),
(4, 'Order Confirmation - Your Order Is Received', 'Hello {user.username},\\r\\n\\r\\nYour order #{order.id} has been received by {system.company_name} We\'re working diligently to prepare and deliver your items.\\r\\n\\r\\nOrder Date: {order.date_added}\\r\\nTotal Amount: {system.currency}{order.total}\\r\\nEstimated Delivery Date: {order.delivery_date}\\r\\n\\r\\nWe\'ll keep you informed on your order\'s progress. For questions or support, contact us at {system.support_number}.\\r\\n\\r\\nThank you for shopping with us.\\r\\n\\r\\nBest regards,\\r\\n{system.company_name}', 'customer_order_received', '2023-11-02 09:29:35'),
(5, 'Order Processing Update', 'Hello {user.username},\\r\\n\\r\\nGreat news! Your order #{order.id} is now being processed. Here are the details:\\r\\n- Order Date: {order.date_added}\\r\\n- Estimated Delivery Date: {order.delivery_date}\\r\\n\\r\\nYour order will arrive by {order.delivery_date}. Any questions? Contact us at {system.support_number} Thank you for shopping with us.\\r\\n\\r\\nBest regards,\\r\\n{system.company_name}', 'customer_order_processed', '2023-11-02 09:32:04'),
(6, 'Your Order Has Been Shipped', 'Hello {user.username},\\r\\n\\r\\nExciting news! Your order #{order.id}has been shipped. \\r\\n\\r\\nEstimated Delivery: {order.delivery_date}\\r\\n\\r\\n\\r\\nFor any questions, contact us at {system.support_number}. We\'re here to help!\\r\\n\\r\\nBest regards,\\r\\n{system.company_name}', 'customer_order_shipped', '2023-11-02 09:43:09'),
(7, 'Your Order Has Been Delivered', 'Hello {user.username},\\r\\n\\r\\nGreat news! Your order #{order.id} has been delivered. We hope you\'re enjoying your purchase. Here are the delivery\\r\\n\\r\\nDelivery Date: {order.delivery_date}\\r\\n\\r\\nIf you have any questions or need assistance, please contact us at {system.support_number}. Your satisfaction is important to us.\\r\\n\\r\\nThank you for choosing {system.company_name}.\\r\\n\\r\\nBest regards,\\r\\n{system.company_name}', 'customer_order_delivered', '2023-11-02 09:47:33'),
(8, 'Order Cancellation Confirmation', 'Hello {user.username},\\r\\n\\r\\nWe\'ve received your order cancellation request for order #{order.id}. Here are the details:\\r\\nOrder Date: {order.date_added}\\r\\n\\r\\nYou will receive a refund of {transactions.currency_code}{transactions.amount} via {transactions.type}. Please take a note of it .\\r\\n\\r\\nFor assistance, contact us at {system.support_number}. Thank you for choosing {system.company_name}.\\r\\n\\r\\nBest regards,\\r\\n{system.company_name}', 'customer_order_cancelled', '2023-11-02 09:52:54'),
(9, 'Order Return Confirmation', 'Hello {user.mobile},\\r\\n\\r\\nYour order #{return_requests.order_id} has been successfully returned. Return Details:\\r\\n- Return Date: {return_requests.date_created}\\r\\n- Reason: {return_requests.remarks}\\r\\n- Status: {return_requests.status}\\r\\n\\r\\n\\r\\nFor assistance, contact us at {system.support_number}.\\r\\n\\r\\nThank you for choosing {system.company_name}.\\r\\n\\r\\nBest regards,\\r\\n{system.company_name}', 'customer_order_returned', '2023-11-02 09:56:29'),
(10, 'Your Order Return Request - Declined', 'Hello {user.username},\\r\\n\\r\\nWe\'ve reviewed your return request for Order #{return_requests.order_item_id}, and unfortunately, it has been declined for the following reason: {return_requests.remarks}.\\r\\n\\r\\nWe understand this may be disappointing. If you have questions or need assistance, please contact our support team at {system.support_number}. We\'re here to help.\\r\\n\\r\\nThank you for choosing{system.company_name}.\\r\\n\\r\\nBest regards,\\r\\n{system.company_name}', 'customer_order_returned_request_decline', '2023-11-02 09:59:45'),
(11, 'Your Order Return Request - Approved', 'Hello {user.username},\\r\\n\\r\\nGreat news! Your order return request has been approved. Here are the details:\\r\\nOrder ID: {return_requests.order_item_id}\\r\\nReturn Reason: {return_requests.remarks}\\r\\n\\r\\nYour return process is now in progress. Please follow the provided instructions for returning the item. If you have any questions or need assistance, contact our support team at {system.support_number}.\\r\\n\\r\\nThank you for choosing {system.company_name}.\\r\\n\\r\\nBest regards,\\r\\n{system.company_name}', 'customer_order_returned_request_approved', '2023-11-02 10:01:43'),
(12, 'Order Delivery Confirmation', 'Hello {user.username},\\r\\n\\r\\nGreat news! Your order #{order.id} from {system.company_name} has been successfully delivered to {order.address}. If you have any questions, contact us at {system.support_number}.\\r\\n\\r\\nThanks for choosing {system.company_name}!\\r\\n\\r\\nBest regards,\\r\\n{system.company_name}', 'delivery_boy_order_deliver', '2023-11-02 10:05:59'),
(13, 'Wallet Transaction Confirmation', 'Hello {user.username},\\r\\n\\r\\nYour wallet has been updated with a recent transaction.\\r\\nType: {transactions.type}\\r\\nAmount: {transactions.currency_code}{transactions.amount}\\r\\nDate: {transactions.transaction_date}\\r\\n\\r\\nFor assistance, contact us at{system.company_name}.\\r\\n\\r\\nThank you for {system.company_name}.\\r\\n\\r\\nBest regards,\\r\\n{system.company_name}', 'wallet_transaction', '2023-11-02 10:08:37'),
(14, 'Bank Transfer Receipt Status - Update', 'Hello {user.username},\\r\\n\\r\\nWe have an update regarding your bank transfer receipt:\\r\\nTransfer ID: {transactions.id}\\r\\nAmount Transferred: {transactions.currency_code}{transactions.amount}\\r\\nStatus: {transactions.status}\\r\\n\\r\\nFor questions or assistance, contact us at {system.support_number}.\\r\\n\\r\\nThank you for choosing {system.company_name}.\\r\\n\\r\\nBest regards,\\r\\n{system.company_name}\\r\\n{transactions.id}', 'bank_transfer_receipt_status', '2023-11-02 10:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy_notifications`
--

DROP TABLE IF EXISTS `delivery_boy_notifications`;
CREATE TABLE `delivery_boy_notifications` (
  `id` int(11) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `message` mediumtext NOT NULL,
  `type` varchar(56) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `digital_orders_mails`
--

DROP TABLE IF EXISTS `digital_orders_mails`;
CREATE TABLE `digital_orders_mails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `subject` varchar(256) DEFAULT NULL,
  `message` varchar(256) DEFAULT NULL,
  `file_url` varchar(512) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` mediumtext DEFAULT NULL,
  `answer` mediumtext DEFAULT NULL,
  `status` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fund_transfers`
--

DROP TABLE IF EXISTS `fund_transfers`;
CREATE TABLE `fund_transfers` (
  `id` int(11) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `opening_balance` double NOT NULL,
  `closing_balance` double NOT NULL,
  `amount` double NOT NULL,
  `status` varchar(28) DEFAULT NULL,
  `message` varchar(512) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'delivery_boy', 'Delivery Boys'),
(4, 'seller', 'Sellers');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(128) DEFAULT NULL,
  `code` varchar(8) DEFAULT NULL,
  `is_rtl` tinyint(4) NOT NULL DEFAULT 0,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `code`, `is_rtl`, `created_on`) VALUES
(1, 'english', 'en', 0, '2021-02-11 05:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE `login_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

DROP TABLE IF EXISTS `markets`;
CREATE TABLE `markets` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `slug` varchar(256) DEFAULT NULL,
  `image` text NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `markets`
--

INSERT INTO `markets` (`id`, `name`, `slug`, `image`, `is_default`, `status`) VALUES
(1, 'Tamil Market', 'tamil-market', 'uploads/media/2024/Tamil_Market.jpg', 0, 1),
(2, 'Kerala Market', 'kerala-market-1', 'uploads/media/2024/Kerala_Market.jpg', 0, 0),
(3, 'General Market', 'general-market', 'uploads/media/2024/ecom_(1).jpg', 0, 0),
(4, 'CHINA MARKET', 'china-market', 'uploads/media/2025/China.jpg', 0, 1),
(7, 'Bangalore Market', 'bangalore-market', 'uploads/media/2025/real-estate-market-in-bangalore-2024.jpg', 0, 0),
(8, 'Assam Market', 'assam-market', 'uploads/media/2025/Assam-2.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT 0,
  `title` mediumtext NOT NULL,
  `name` mediumtext NOT NULL,
  `extension` varchar(16) NOT NULL,
  `type` varchar(16) NOT NULL,
  `sub_directory` mediumtext NOT NULL,
  `size` mediumtext NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `seller_id`, `title`, `name`, `extension`, `type`, `sub_directory`, `size`, `date_created`) VALUES
(3, 0, 'MovingBazzarLogo', 'MovingBazzarLogo.jpg', 'jpg', 'image', 'uploads/media/2024/', '57.86', '2024-03-12 10:29:39'),
(4, 0, 'Coconut_Barfi_500_g', 'Coconut_Barfi_500_g.jpg', 'jpg', 'image', 'uploads/media/2024/', '270.58', '2024-03-12 10:49:03'),
(5, 0, 'Winter_Slider-min', 'Winter_Slider-min.jpg', 'jpg', 'image', 'uploads/media/2024/', '348.62', '2024-03-12 11:05:37'),
(6, 0, 'mac_offer', 'mac_offer.jpg', 'jpg', 'image', 'uploads/media/2024/', '128.79', '2024-03-12 11:06:06'),
(7, 0, 'Winter_Slider-min1', 'Winter_Slider-min1.jpg', 'jpg', 'image', 'uploads/media/2024/', '348.62', '2024-03-12 11:06:29'),
(8, 0, 'RICE', 'RICE.jpg', 'jpg', 'image', 'uploads/media/2024/', '79.79', '2024-03-21 11:56:59'),
(10, 0, 'BASMATI', 'BASMATI.jpg', 'jpg', 'image', 'uploads/media/2024/', '7.52', '2024-03-21 12:03:01'),
(11, 0, 'download', 'download.jpg', 'jpg', 'image', 'uploads/media/2024/', '10.77', '2024-03-25 05:20:42'),
(12, 0, 'download_(1)', 'download_(1).jpg', 'jpg', 'image', 'uploads/media/2024/', '6.16', '2024-03-25 05:21:32'),
(13, 0, 'download_(2)', 'download_(2).jpg', 'jpg', 'image', 'uploads/media/2024/', '2.35', '2024-03-25 05:22:30'),
(15, 0, 'savoury', 'savoury.jpg', 'jpg', 'image', 'uploads/media/2024/', '9.5', '2024-03-26 13:13:37'),
(16, 0, 'Coconut_Barfi_500_g_(1)', 'Coconut_Barfi_500_g_(1).jpeg', 'jpeg', 'image', 'uploads/media/2024/', '10.98', '2024-03-26 19:02:58'),
(17, 0, 'images', 'images.jpg', 'jpg', 'image', 'uploads/media/2024/', '23.12', '2024-03-27 05:22:54'),
(18, 0, '134551576_07548d14-2b9c-4029-9309-b9274b5cdef1', '134551576_07548d14-2b9c-4029-9309-b9274b5cdef1.jpg', 'jpg', 'image', 'uploads/media/2024/', '1636.12', '2024-03-27 05:49:56'),
(19, 0, '2148536721', '2148536721.jpg', 'jpg', 'image', 'uploads/media/2024/', '950.36', '2024-03-27 05:51:22'),
(20, 0, 'Chilly_powder', 'Chilly_powder.jpg', 'jpg', 'image', 'uploads/media/2024/', '230.05', '2024-03-27 08:00:54'),
(21, 0, 'Kashmiri_chilly_powder_', 'Kashmiri_chilly_powder_.jpg', 'jpg', 'image', 'uploads/media/2024/', '200.12', '2024-03-27 08:04:04'),
(22, 0, 'Chilly_powder1', 'Chilly_powder1.jpg', 'jpg', 'image', 'uploads/media/2024/', '230.05', '2024-03-27 08:06:54'),
(23, 0, 'Axe_oil_5_ml', 'Axe_oil_5_ml.jpg', 'jpg', 'image', 'uploads/media/2024/', '15.76', '2024-03-27 09:55:03'),
(24, 0, 'download_(1)1', 'download_(1)1.jpg', 'jpg', 'image', 'uploads/media/2024/', '7.74', '2024-03-27 10:06:06'),
(25, 0, 'kool_Milk_Shake_Badam_200_ml', 'kool_Milk_Shake_Badam_200_ml.jpg', 'jpg', 'image', 'uploads/media/2024/', '18.34', '2024-03-27 10:12:20'),
(26, 0, 'smart_watch_offer', 'smart_watch_offer.jpg', 'jpg', 'image', 'uploads/media/2024/', '891.66', '2024-03-27 10:29:41'),
(27, 0, 'BLKF_head_phone', 'BLKF_head_phone.jpg', 'jpg', 'image', 'uploads/media/2024/', '659.79', '2024-03-27 10:30:15'),
(28, 0, 'cloth_offer3', 'cloth_offer3.jpg', 'jpg', 'image', 'uploads/media/2024/', '105.2', '2024-03-27 11:20:50'),
(29, 0, 'Cheese_tin_400_gm', 'Cheese_tin_400_gm.jpg', 'jpg', 'image', 'uploads/media/2024/', '22.7', '2024-03-27 12:06:06'),
(30, 0, 'gulab_jamun', 'gulab_jamun.png', 'png', 'image', 'uploads/media/2024/', '56.62', '2024-03-29 12:17:45'),
(31, 0, 'jangiri_new', 'jangiri_new.png', 'png', 'image', 'uploads/media/2024/', '69204', '2024-03-30 07:45:55'),
(32, 0, '6607c4ef26888_download', '6607c4ef26888_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '6390', '2024-03-30 07:54:19'),
(33, 0, 'muruku', 'muruku.jpg', 'jpg', 'image', 'uploads/media/2024/', '12893', '2024-03-30 07:59:44'),
(34, 0, 'mysore_pak', 'mysore_pak.jpg', 'jpg', 'image', 'uploads/media/2024/', '9845', '2024-03-30 08:05:30'),
(35, 0, 'pakoda', 'pakoda.jpg', 'jpg', 'image', 'uploads/media/2024/', '12325', '2024-03-30 08:10:47'),
(36, 0, '6607cb935731b_download', '6607cb935731b_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '9135', '2024-03-30 08:41:23'),
(37, 0, '6607cbd3ec0b7_download', '6607cbd3ec0b7_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '6416', '2024-03-30 08:41:23'),
(38, 0, '6607cbeeef475_download', '6607cbeeef475_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '11006', '2024-03-30 08:41:23'),
(39, 0, '6607cc7bd0cc6_download', '6607cc7bd0cc6_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '8788', '2024-03-30 08:41:23'),
(40, 0, '6607cc29e1a95_download', '6607cc29e1a95_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '10200', '2024-03-30 08:41:23'),
(41, 0, '6607cc44195cf_download', '6607cc44195cf_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '10925', '2024-03-30 08:41:23'),
(42, 0, '6607cc0689621_download', '6607cc0689621_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '9006', '2024-03-30 08:41:23'),
(43, 0, '6607ccd3da658_download', '6607ccd3da658_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '8975', '2024-03-30 08:41:23'),
(44, 0, '6607ccf94a0d7_download', '6607ccf94a0d7_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '7735', '2024-03-30 08:41:23'),
(45, 0, '6607cd1a2b06f_download', '6607cd1a2b06f_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '9547', '2024-03-30 08:41:23'),
(46, 0, '6607cddc256b6_download', '6607cddc256b6_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '8631', '2024-03-30 08:41:23'),
(47, 0, '6607cdf99f4f7_download', '6607cdf99f4f7_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '11570', '2024-03-30 08:41:23'),
(48, 0, '6607cc990692e_download', '6607cc990692e_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '8837', '2024-03-30 08:41:38'),
(49, 0, '6607cc6038656_download', '6607cc6038656_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '8229', '2024-03-30 08:41:38'),
(50, 0, '6607ccb498885_download', '6607ccb498885_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '9167', '2024-03-30 08:41:38'),
(51, 0, '6607ce6416a15_download', '6607ce6416a15_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '10270', '2024-03-30 08:41:56'),
(52, 0, '6607ce135332a_download', '6607ce135332a_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '10684', '2024-03-30 08:41:56'),
(53, 0, '6607cea2d5926_download', '6607cea2d5926_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '7257', '2024-03-30 08:41:56'),
(54, 0, '6607cec461b4e_download', '6607cec461b4e_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '9513', '2024-03-30 08:41:56'),
(55, 0, '6607cede85d7a_download', '6607cede85d7a_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '8474', '2024-03-30 08:41:57'),
(56, 0, '6607cf0f5da2f_download', '6607cf0f5da2f_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '9040', '2024-03-30 08:41:57'),
(57, 0, '6607cf2d2dd71_download', '6607cf2d2dd71_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '7061', '2024-03-30 08:41:57'),
(58, 0, '6607cf91a4605_download', '6607cf91a4605_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '10194', '2024-03-30 08:41:57'),
(59, 0, '6607cf743e8c0_download', '6607cf743e8c0_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '9270', '2024-03-30 08:41:57'),
(60, 0, '6607cf5905d6c_download', '6607cf5905d6c_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '7219', '2024-03-30 08:41:57'),
(61, 0, '6607cfab951af_download', '6607cfab951af_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '12188', '2024-03-30 08:42:09'),
(62, 0, '6607cfc5458e6_download', '6607cfc5458e6_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '8565', '2024-03-30 08:42:09'),
(63, 0, '6607cfe2294e5_download', '6607cfe2294e5_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '6416', '2024-03-30 08:42:09'),
(64, 0, '6607ce3f953ae_download', '6607ce3f953ae_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '7405', '2024-03-30 09:46:20'),
(65, 0, 'pannaiyar_new', 'pannaiyar_new.jpg', 'jpg', 'image', 'uploads/media/2024/', '5415', '2024-03-30 11:25:56'),
(66, 0, '660a6a239152a_download', '660a6a239152a_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '9909', '2024-04-01 08:03:01'),
(67, 0, '660a6ad630817_download', '660a6ad630817_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '8154', '2024-04-01 08:07:02'),
(68, 0, '660a6bb20cded_download', '660a6bb20cded_download.jpg', 'jpg', 'image', 'uploads/media/2024/', '6818', '2024-04-01 08:10:30'),
(69, 0, 'fennel_powder', 'fennel_powder.png', 'png', 'image', 'uploads/media/2024/', '60803', '2024-04-01 08:16:12'),
(70, 0, 'pepper_powder', 'pepper_powder.png', 'png', 'image', 'uploads/media/2024/', '53769', '2024-04-01 08:20:06'),
(71, 0, 'Beef_Masala_250_gm', 'Beef_Masala_250_gm.png', 'png', 'image', 'uploads/media/2024/', '28159', '2024-04-01 08:49:06'),
(72, 0, 'biriyani_masala', 'biriyani_masala.png', 'png', 'image', 'uploads/media/2024/', '52158', '2024-04-01 08:49:06'),
(73, 0, 'chicken_fry_masala', 'chicken_fry_masala.jpg', 'jpg', 'image', 'uploads/media/2024/', '10224', '2024-04-01 08:49:06'),
(74, 0, 'chicken_masala', 'chicken_masala.png', 'png', 'image', 'uploads/media/2024/', '52158', '2024-04-01 08:49:06'),
(75, 0, 'fennel_powder1', 'fennel_powder1.png', 'png', 'image', 'uploads/media/2024/', '60803', '2024-04-01 08:49:06'),
(76, 0, 'fish_fry_masala', 'fish_fry_masala.png', 'png', 'image', 'uploads/media/2024/', '61379', '2024-04-01 08:49:25'),
(77, 0, 'fish_masala', 'fish_masala.png', 'png', 'image', 'uploads/media/2024/', '49695', '2024-04-01 08:49:25'),
(78, 0, 'garam_masala', 'garam_masala.png', 'png', 'image', 'uploads/media/2024/', '77089', '2024-04-01 08:49:25'),
(79, 0, 'kabza_masala', 'kabza_masala.png', 'png', 'image', 'uploads/media/2024/', '63547', '2024-04-01 08:49:39'),
(80, 0, 'karakulambu_masala', 'karakulambu_masala.png', 'png', 'image', 'uploads/media/2024/', '44455', '2024-04-01 08:49:39'),
(81, 0, 'kashmiri_chilli_powder', 'kashmiri_chilli_powder.png', 'png', 'image', 'uploads/media/2024/', '57904', '2024-04-01 08:49:39'),
(82, 0, 'Mandi_masala', 'Mandi_masala.png', 'png', 'image', 'uploads/media/2024/', '56333', '2024-04-01 08:49:39'),
(83, 0, 'Mazboos_Masala_250_gm', 'Mazboos_Masala_250_gm.png', 'png', 'image', 'uploads/media/2024/', '38297', '2024-04-01 08:50:27'),
(84, 0, 'Pulikulambu_Masala_250_gm', 'Pulikulambu_Masala_250_gm.png', 'png', 'image', 'uploads/media/2024/', '47444', '2024-04-01 08:50:56'),
(85, 0, 'Rasam_Powder_250_gm', 'Rasam_Powder_250_gm.png', 'png', 'image', 'uploads/media/2024/', '71128', '2024-04-01 08:50:56'),
(86, 0, 'sambar', 'sambar.png', 'png', 'image', 'uploads/media/2024/', '50894', '2024-04-01 08:51:04'),
(87, 0, 'turmeric', 'turmeric.png', 'png', 'image', 'uploads/media/2024/', '43547', '2024-04-01 08:51:22'),
(88, 0, 'mutton_masala', 'mutton_masala.png', 'png', 'image', 'uploads/media/2024/', '49695', '2024-04-01 08:52:48'),
(89, 0, 'white_pepper', 'white_pepper.jpg', 'jpg', 'image', 'uploads/media/2024/', '7089', '2024-04-01 09:15:17'),
(90, 0, 'Vathalkulambu_Masala_250_gm', 'Vathalkulambu_Masala_250_gm.png', 'png', 'image', 'uploads/media/2024/', '11145', '2024-04-01 09:53:08'),
(91, 0, 'Chicken', 'Chicken.png', 'png', 'image', 'uploads/media/2024/', '547571', '2024-04-02 07:34:45'),
(92, 0, 'anil_logo', 'anil_logo.jpg', 'jpg', 'image', 'uploads/media/2024/', '17364', '2024-04-02 08:40:59'),
(93, 0, 'Raw_Rice_20_kg', 'Raw_Rice_20_kg.jpg', 'jpg', 'image', 'uploads/media/2024/', '9408', '2024-04-02 08:44:08'),
(94, 0, 'Raw_Rice_5_kg', 'Raw_Rice_5_kg.jpg', 'jpg', 'image', 'uploads/media/2024/', '9772', '2024-04-02 08:44:08'),
(95, 0, 'Raw_Rice_1_Kg', 'Raw_Rice_1_Kg.jpg', 'jpg', 'image', 'uploads/media/2024/', '11225', '2024-04-02 08:44:08'),
(96, 0, 'InShot_20240402_125050869', 'InShot_20240402_125050869.jpg', 'jpg', 'image', 'uploads/media/2024/', '278878', '2024-04-02 08:55:07'),
(97, 0, 'InShot_20240402_125200683', 'InShot_20240402_125200683.jpg', 'jpg', 'image', 'uploads/media/2024/', '261092', '2024-04-02 08:55:08'),
(98, 0, 'InShot_20240402_125129801', 'InShot_20240402_125129801.jpg', 'jpg', 'image', 'uploads/media/2024/', '247232', '2024-04-02 08:55:09'),
(99, 0, 'InShot_20231205_002413660', 'InShot_20231205_002413660.jpg', 'jpg', 'image', 'uploads/media/2024/', '299371', '2024-04-02 09:02:54'),
(100, 0, 'InShot_20231229_105122945', 'InShot_20231229_105122945.jpg', 'jpg', 'image', 'uploads/media/2024/', '250349', '2024-04-02 09:10:41'),
(101, 0, 'InShot_20231229_105443782', 'InShot_20231229_105443782.jpg', 'jpg', 'image', 'uploads/media/2024/', '263183', '2024-04-02 09:10:42'),
(102, 0, 'InShot_20231205_002952974', 'InShot_20231205_002952974.jpg', 'jpg', 'image', 'uploads/media/2024/', '278508', '2024-04-02 09:10:43'),
(103, 0, 'InShot_20231229_105637090', 'InShot_20231229_105637090.jpg', 'jpg', 'image', 'uploads/media/2024/', '262630', '2024-04-02 11:06:00'),
(104, 0, 'InShot_20231229_104750924', 'InShot_20231229_104750924.jpg', 'jpg', 'image', 'uploads/media/2024/', '243239', '2024-04-02 11:06:01'),
(105, 0, 'InShot_20240118_005027141', 'InShot_20240118_005027141.jpg', 'jpg', 'image', 'uploads/media/2024/', '432803', '2024-04-02 11:06:02'),
(106, 0, 'InShot_20240118_010259460', 'InShot_20240118_010259460.jpg', 'jpg', 'image', 'uploads/media/2024/', '378552', '2024-04-02 11:37:55'),
(107, 0, 'InShot_20231229_105028405', 'InShot_20231229_105028405.jpg', 'jpg', 'image', 'uploads/media/2024/', '262991', '2024-04-02 11:37:56'),
(108, 0, 'InShot_20240117_173544022', 'InShot_20240117_173544022.jpg', 'jpg', 'image', 'uploads/media/2024/', '424502', '2024-04-02 11:46:19'),
(109, 0, 'InShot_20240117_173445440', 'InShot_20240117_173445440.jpg', 'jpg', 'image', 'uploads/media/2024/', '501138', '2024-04-02 11:46:21'),
(110, 0, 'InShot_20240117_173408755', 'InShot_20240117_173408755.jpg', 'jpg', 'image', 'uploads/media/2024/', '437655', '2024-04-02 11:46:23'),
(111, 0, 'InShot_20240117_173732864', 'InShot_20240117_173732864.jpg', 'jpg', 'image', 'uploads/media/2024/', '417745', '2024-04-02 11:46:25'),
(112, 0, 'InShot_20240117_173634694', 'InShot_20240117_173634694.jpg', 'jpg', 'image', 'uploads/media/2024/', '568509', '2024-04-02 11:46:26'),
(113, 0, 'InShot_20240402_154421771', 'InShot_20240402_154421771.jpg', 'jpg', 'image', 'uploads/media/2024/', '369068', '2024-04-02 11:46:28'),
(114, 0, 'InShot_20240117_170128801_(1)', 'InShot_20240117_170128801_(1).jpg', 'jpg', 'image', 'uploads/media/2024/', '220270', '2024-04-03 08:28:41'),
(115, 0, 'ready_to_cook', 'ready_to_cook.jpg', 'jpg', 'image', 'uploads/media/2024/', '48609', '2024-04-03 08:31:39'),
(116, 0, 'InShot_20231205_002831470', 'InShot_20231205_002831470.jpg', 'jpg', 'image', 'uploads/media/2024/', '314896', '2024-04-03 09:02:29'),
(117, 0, 'InShot_20231205_003115099', 'InShot_20231205_003115099.jpg', 'jpg', 'image', 'uploads/media/2024/', '330910', '2024-04-03 09:02:30'),
(118, 0, 'InShot_20231205_003139383', 'InShot_20231205_003139383.jpg', 'jpg', 'image', 'uploads/media/2024/', '335864', '2024-04-03 09:02:31'),
(119, 0, 'InShot_20231215_111933900', 'InShot_20231215_111933900.jpg', 'jpg', 'image', 'uploads/media/2024/', '321039', '2024-04-03 09:02:32'),
(120, 0, 'InShot_20231215_111832197', 'InShot_20231215_111832197.jpg', 'jpg', 'image', 'uploads/media/2024/', '339549', '2024-04-03 09:02:32'),
(121, 0, 'InShot_20231215_112027069', 'InShot_20231215_112027069.jpg', 'jpg', 'image', 'uploads/media/2024/', '348052', '2024-04-03 09:02:33'),
(122, 0, 'InShot_20231229_104650073', 'InShot_20231229_104650073.jpg', 'jpg', 'image', 'uploads/media/2024/', '498542', '2024-04-03 09:02:34'),
(123, 0, 'InShot_20231215_111607509', 'InShot_20231215_111607509.jpg', 'jpg', 'image', 'uploads/media/2024/', '291712', '2024-04-03 09:02:35'),
(124, 0, 'InShot_20231205_003027925', 'InShot_20231205_003027925.jpg', 'jpg', 'image', 'uploads/media/2024/', '303811', '2024-04-03 09:02:36'),
(125, 0, 'InShot_20240118_005557065', 'InShot_20240118_005557065.jpg', 'jpg', 'image', 'uploads/media/2024/', '436444', '2024-04-03 09:02:37'),
(126, 0, 'InShot_20231205_002915181', 'InShot_20231205_002915181.jpg', 'jpg', 'image', 'uploads/media/2024/', '304189', '2024-04-03 09:02:38'),
(127, 0, 'InShot_20240118_005530498', 'InShot_20240118_005530498.jpg', 'jpg', 'image', 'uploads/media/2024/', '252845', '2024-04-03 09:02:40'),
(128, 0, 'InShot_20240118_005654521', 'InShot_20240118_005654521.jpg', 'jpg', 'image', 'uploads/media/2024/', '472198', '2024-04-03 09:03:18'),
(129, 0, 'InShot_20240118_005623854', 'InShot_20240118_005623854.jpg', 'jpg', 'image', 'uploads/media/2024/', '483000', '2024-04-03 09:03:19'),
(130, 0, 'WHOLE_SPICE', 'WHOLE_SPICE.jpg', 'jpg', 'image', 'uploads/media/2024/', '58586', '2024-04-03 09:06:15'),
(131, 0, 'InShot_20231205_184859715', 'InShot_20231205_184859715.jpg', 'jpg', 'image', 'uploads/media/2024/', '227596', '2024-04-03 10:52:03'),
(132, 0, 'InShot_20231205_184700997', 'InShot_20231205_184700997.jpg', 'jpg', 'image', 'uploads/media/2024/', '315075', '2024-04-03 10:52:03'),
(133, 0, 'InShot_20240117_170358377', 'InShot_20240117_170358377.jpg', 'jpg', 'image', 'uploads/media/2024/', '224601', '2024-04-03 11:12:35'),
(134, 0, 'InShot_20240117_172008956', 'InShot_20240117_172008956.jpg', 'jpg', 'image', 'uploads/media/2024/', '264106', '2024-04-03 11:12:36'),
(135, 0, 'InShot_20231205_120103495', 'InShot_20231205_120103495.jpg', 'jpg', 'image', 'uploads/media/2024/', '261797', '2024-04-04 07:35:59'),
(136, 0, 'InShot_20231205_114731911', 'InShot_20231205_114731911.jpg', 'jpg', 'image', 'uploads/media/2024/', '189349', '2024-04-04 07:35:59'),
(137, 0, 'InShot_20231205_115913220', 'InShot_20231205_115913220.jpg', 'jpg', 'image', 'uploads/media/2024/', '268352', '2024-04-04 07:36:00'),
(138, 0, 'InShot_20231205_180943943', 'InShot_20231205_180943943.jpg', 'jpg', 'image', 'uploads/media/2024/', '268754', '2024-04-04 07:36:01'),
(139, 0, 'InShot_20231205_120423401', 'InShot_20231205_120423401.jpg', 'jpg', 'image', 'uploads/media/2024/', '257473', '2024-04-04 07:36:02'),
(140, 0, 'InShot_20231205_115630896', 'InShot_20231205_115630896.jpg', 'jpg', 'image', 'uploads/media/2024/', '240594', '2024-04-04 07:36:03'),
(141, 0, 'InShot_20231205_112609677', 'InShot_20231205_112609677.jpg', 'jpg', 'image', 'uploads/media/2024/', '288438', '2024-04-04 07:36:03'),
(142, 0, 'InShot_20231205_114344707', 'InShot_20231205_114344707.jpg', 'jpg', 'image', 'uploads/media/2024/', '192531', '2024-04-04 07:36:04'),
(143, 0, 'InShot_20240404_113001556', 'InShot_20240404_113001556.jpg', 'jpg', 'image', 'uploads/media/2024/', '268785', '2024-04-04 07:36:05'),
(144, 0, 'InShot_20240404_113233940', 'InShot_20240404_113233940.jpg', 'jpg', 'image', 'uploads/media/2024/', '249540', '2024-04-04 07:36:05'),
(145, 0, 'InShot_20240404_113101871', 'InShot_20240404_113101871.jpg', 'jpg', 'image', 'uploads/media/2024/', '259707', '2024-04-04 07:36:06'),
(146, 0, 'InShot_20240404_112908207', 'InShot_20240404_112908207.jpg', 'jpg', 'image', 'uploads/media/2024/', '198773', '2024-04-04 07:36:07'),
(147, 0, 'InShot_20231205_1147319111', 'InShot_20231205_1147319111.jpg', 'jpg', 'image', 'uploads/media/2024/', '189349', '2024-04-04 07:37:16'),
(148, 0, 'InShot_20231205_1809439431', 'InShot_20231205_1809439431.jpg', 'jpg', 'image', 'uploads/media/2024/', '268754', '2024-04-04 07:37:16'),
(149, 0, 'InShot_20231205_1204234011', 'InShot_20231205_1204234011.jpg', 'jpg', 'image', 'uploads/media/2024/', '257473', '2024-04-04 07:37:17'),
(150, 0, 'InShot_20231205_1156308961', 'InShot_20231205_1156308961.jpg', 'jpg', 'image', 'uploads/media/2024/', '240594', '2024-04-04 07:37:18'),
(151, 0, 'InShot_20231205_1126096771', 'InShot_20231205_1126096771.jpg', 'jpg', 'image', 'uploads/media/2024/', '288438', '2024-04-04 07:37:18'),
(152, 0, 'InShot_20231205_1143447071', 'InShot_20231205_1143447071.jpg', 'jpg', 'image', 'uploads/media/2024/', '192531', '2024-04-04 07:37:19'),
(153, 0, 'InShot_20240404_1130015561', 'InShot_20240404_1130015561.jpg', 'jpg', 'image', 'uploads/media/2024/', '268785', '2024-04-04 07:37:20'),
(154, 0, 'InShot_20240404_1132339401', 'InShot_20240404_1132339401.jpg', 'jpg', 'image', 'uploads/media/2024/', '249540', '2024-04-04 07:37:20'),
(155, 0, 'InShot_20240404_1131018711', 'InShot_20240404_1131018711.jpg', 'jpg', 'image', 'uploads/media/2024/', '259707', '2024-04-04 07:37:21'),
(156, 0, 'InShot_20240404_1129082071', 'InShot_20240404_1129082071.jpg', 'jpg', 'image', 'uploads/media/2024/', '198773', '2024-04-04 07:37:22'),
(157, 0, '21--7-', '21--7-.jpg', 'jpg', 'image', 'uploads/media/2024/', '132753', '2024-04-04 09:07:33'),
(158, 0, 'InShot_20231215_110504298', 'InShot_20231215_110504298.jpg', 'jpg', 'image', 'uploads/media/2024/', '211459', '2024-04-04 09:14:36'),
(159, 0, 'InShot_20231215_110312668', 'InShot_20231215_110312668.jpg', 'jpg', 'image', 'uploads/media/2024/', '251546', '2024-04-04 09:14:37'),
(160, 0, 'InShot_20231215_110410769', 'InShot_20231215_110410769.jpg', 'jpg', 'image', 'uploads/media/2024/', '208659', '2024-04-04 09:14:37'),
(161, 0, 'InShot_20231215_110549070', 'InShot_20231215_110549070.jpg', 'jpg', 'image', 'uploads/media/2024/', '213888', '2024-04-04 09:14:38'),
(162, 0, 'InShot_20231215_111355148', 'InShot_20231215_111355148.jpg', 'jpg', 'image', 'uploads/media/2024/', '233540', '2024-04-04 09:14:39'),
(163, 0, 'InShot_20231215_111511070', 'InShot_20231215_111511070.jpg', 'jpg', 'image', 'uploads/media/2024/', '220852', '2024-04-04 09:14:39'),
(164, 0, 'InShot_20231215_111239719', 'InShot_20231215_111239719.jpg', 'jpg', 'image', 'uploads/media/2024/', '251348', '2024-04-04 09:14:40'),
(165, 0, 'InShot_20231215_111717363', 'InShot_20231215_111717363.jpg', 'jpg', 'image', 'uploads/media/2024/', '231795', '2024-04-04 09:14:41'),
(166, 0, 'InShot_20240117_171705822', 'InShot_20240117_171705822.jpg', 'jpg', 'image', 'uploads/media/2024/', '116649', '2024-04-04 09:14:42'),
(167, 0, 'funW4uFbGLwSw5oBZ2QLZyIgDeIfXbXlEueknJhr', 'funW4uFbGLwSw5oBZ2QLZyIgDeIfXbXlEueknJhr.webp', 'webp', 'image', 'uploads/media/2024/', '84.83', '2024-04-04 09:41:31'),
(168, 0, 'InShot_20231205_164026076', 'InShot_20231205_164026076.jpg', 'jpg', 'image', 'uploads/media/2024/', '292821', '2024-04-04 09:42:59'),
(169, 0, 'InShot_20231229_102800400', 'InShot_20231229_102800400.jpg', 'jpg', 'image', 'uploads/media/2024/', '436411', '2024-04-04 09:43:01'),
(170, 0, 'InShot_20240118_010519261', 'InShot_20240118_010519261.jpg', 'jpg', 'image', 'uploads/media/2024/', '330276', '2024-04-04 09:43:03'),
(171, 0, 'InShot_20240118_005049405_(1)', 'InShot_20240118_005049405_(1).jpg', 'jpg', 'image', 'uploads/media/2024/', '313640', '2024-04-04 09:43:05'),
(172, 0, 'Cooking-Oil-0053', 'Cooking-Oil-0053.jpg', 'jpg', 'image', 'uploads/media/2024/', '149531', '2024-04-04 10:10:21'),
(173, 0, 'latte-americano-orange-juice-lime-600nw-2122885682', 'latte-americano-orange-juice-lime-600nw-2122885682.webp', 'webp', 'image', 'uploads/media/2024/', '49.04', '2024-04-04 10:10:21'),
(174, 0, 'InShot_20231205_181315102', 'InShot_20231205_181315102.jpg', 'jpg', 'image', 'uploads/media/2024/', '166437', '2024-04-04 10:10:21'),
(175, 0, 'InShot_20240118_005353067', 'InShot_20240118_005353067.jpg', 'jpg', 'image', 'uploads/media/2024/', '365571', '2024-04-04 10:10:23'),
(176, 0, 'InShot_20240118_010410650', 'InShot_20240118_010410650.jpg', 'jpg', 'image', 'uploads/media/2024/', '450257', '2024-04-04 10:10:25'),
(177, 0, 'InShot_20240113_190817640', 'InShot_20240113_190817640.jpg', 'jpg', 'image', 'uploads/media/2024/', '115965', '2024-04-04 10:10:27'),
(178, 0, 'InShot_20240113_190746157', 'InShot_20240113_190746157.jpg', 'jpg', 'image', 'uploads/media/2024/', '123736', '2024-04-04 10:10:28'),
(179, 0, 'InShot_20240113_190708056', 'InShot_20240113_190708056.jpg', 'jpg', 'image', 'uploads/media/2024/', '120266', '2024-04-04 10:10:29'),
(180, 0, 'InShot_20231205_185129972', 'InShot_20231205_185129972.jpg', 'jpg', 'image', 'uploads/media/2024/', '122250', '2024-04-04 10:10:30'),
(181, 0, 'InShot_20240118_005234083', 'InShot_20240118_005234083.jpg', 'jpg', 'image', 'uploads/media/2024/', '381839', '2024-04-04 10:10:32'),
(182, 0, 'InShot_20240404_140648235', 'InShot_20240404_140648235.jpg', 'jpg', 'image', 'uploads/media/2024/', '207375', '2024-04-04 10:10:33'),
(183, 0, 'MILLETS', 'MILLETS.webp', 'webp', 'image', 'uploads/media/2024/', '73.18', '2024-04-04 11:23:47'),
(184, 0, 'InShot_20231229_102043141', 'InShot_20231229_102043141.jpg', 'jpg', 'image', 'uploads/media/2024/', '539951', '2024-04-04 11:34:27'),
(185, 0, 'InShot_20231229_102958421', 'InShot_20231229_102958421.jpg', 'jpg', 'image', 'uploads/media/2024/', '518913', '2024-04-04 11:34:29'),
(186, 0, 'InShot_20231205_170349431', 'InShot_20231205_170349431.jpg', 'jpg', 'image', 'uploads/media/2024/', '281307', '2024-04-04 11:34:30'),
(187, 0, 'InShot_20231205_164620672', 'InShot_20231205_164620672.jpg', 'jpg', 'image', 'uploads/media/2024/', '309305', '2024-04-04 11:34:30'),
(188, 0, 'InShot_20231229_101710116', 'InShot_20231229_101710116.jpg', 'jpg', 'image', 'uploads/media/2024/', '509585', '2024-04-04 11:34:32'),
(189, 0, 'InShot_20231229_103307568', 'InShot_20231229_103307568.jpg', 'jpg', 'image', 'uploads/media/2024/', '506066', '2024-04-04 11:34:33'),
(190, 0, 'InShot_20240118_001025060', 'InShot_20240118_001025060.jpg', 'jpg', 'image', 'uploads/media/2024/', '289438', '2024-04-04 11:34:34'),
(191, 0, 'InShot_20240117_171849645', 'InShot_20240117_171849645.jpg', 'jpg', 'image', 'uploads/media/2024/', '279073', '2024-04-04 11:34:35'),
(192, 0, 'InShot_20231229_104424996', 'InShot_20231229_104424996.jpg', 'jpg', 'image', 'uploads/media/2024/', '546181', '2024-04-04 11:34:36'),
(193, 0, 'InShot_20240118_005929464', 'InShot_20240118_005929464.jpg', 'jpg', 'image', 'uploads/media/2024/', '329284', '2024-04-04 11:34:38'),
(194, 0, 'InShot_20240118_005731798', 'InShot_20240118_005731798.jpg', 'jpg', 'image', 'uploads/media/2024/', '455185', '2024-04-04 11:34:41'),
(195, 0, 'InShot_20240117_170432145', 'InShot_20240117_170432145.jpg', 'jpg', 'image', 'uploads/media/2024/', '281269', '2024-04-04 11:34:42'),
(196, 0, 'InShot_20240117_171811147', 'InShot_20240117_171811147.jpg', 'jpg', 'image', 'uploads/media/2024/', '310792', '2024-04-04 11:35:50'),
(197, 0, 'InShot_20240118_005818621', 'InShot_20240118_005818621.jpg', 'jpg', 'image', 'uploads/media/2024/', '306074', '2024-04-04 11:35:52'),
(198, 0, 'InShot_20240118_005852616', 'InShot_20240118_005852616.jpg', 'jpg', 'image', 'uploads/media/2024/', '450389', '2024-04-04 11:35:53'),
(199, 0, 'InShot_20240118_010544160', 'InShot_20240118_010544160.jpg', 'jpg', 'image', 'uploads/media/2024/', '456600', '2024-04-04 12:31:33'),
(200, 0, 'InShot_20240118_005324854', 'InShot_20240118_005324854.jpg', 'jpg', 'image', 'uploads/media/2024/', '377321', '2024-04-04 12:31:35'),
(201, 0, 'Whole_Pottukadalai_500_gm', 'Whole_Pottukadalai_500_gm.png', 'png', 'image', 'uploads/media/2024/', '47968', '2024-04-04 12:31:36'),
(202, 0, 'sakthimasala_welcome_1', 'sakthimasala_welcome_1.jpg', 'jpg', 'image', 'uploads/media/2024/', '26466', '2024-04-04 12:31:36'),
(203, 0, 'InShot_20240404_162602534', 'InShot_20240404_162602534.jpg', 'jpg', 'image', 'uploads/media/2024/', '259891', '2024-04-04 12:31:52'),
(204, 0, 'InShot_20231215_111145360', 'InShot_20231215_111145360.jpg', 'jpg', 'image', 'uploads/media/2024/', '234975', '2024-04-04 12:31:53'),
(205, 0, 'InShot_20231205_170549969', 'InShot_20231205_170549969.jpg', 'jpg', 'image', 'uploads/media/2024/', '254823', '2024-04-04 12:31:54'),
(206, 0, 'InShot_20231205_165812543', 'InShot_20231205_165812543.jpg', 'jpg', 'image', 'uploads/media/2024/', '300057', '2024-04-04 12:31:54'),
(207, 0, 'InShot_20240118_005420296', 'InShot_20240118_005420296.jpg', 'jpg', 'image', 'uploads/media/2024/', '452832', '2024-04-04 12:31:55'),
(208, 0, 'InShot_20231205_163422342', 'InShot_20231205_163422342.jpg', 'jpg', 'image', 'uploads/media/2024/', '276003', '2024-04-04 12:31:56'),
(209, 0, 'InShot_20231229_101539127', 'InShot_20231229_101539127.jpg', 'jpg', 'image', 'uploads/media/2024/', '211955', '2024-04-04 12:31:57'),
(210, 0, 'InShot_20231229_103800613', 'InShot_20231229_103800613.jpg', 'jpg', 'image', 'uploads/media/2024/', '662231', '2024-04-04 12:31:58'),
(211, 0, 'InShot_20231215_110915803', 'InShot_20231215_110915803.jpg', 'jpg', 'image', 'uploads/media/2024/', '226743', '2024-04-04 12:31:59'),
(212, 0, 'InShot_20231229_103614643', 'InShot_20231229_103614643.jpg', 'jpg', 'image', 'uploads/media/2024/', '402720', '2024-04-04 12:32:01'),
(213, 0, 'dal-and-pulses-250x250', 'dal-and-pulses-250x250.webp', 'webp', 'image', 'uploads/media/2024/', '28.68', '2024-04-05 08:47:28'),
(214, 0, 'InShot_20231205_164437538', 'InShot_20231205_164437538.jpg', 'jpg', 'image', 'uploads/media/2024/', '294089', '2024-04-05 08:48:42'),
(215, 0, 'InShot_20231205_164530596', 'InShot_20231205_164530596.jpg', 'jpg', 'image', 'uploads/media/2024/', '288020', '2024-04-05 08:48:43'),
(216, 0, 'InShot_20231205_164726604', 'InShot_20231205_164726604.jpg', 'jpg', 'image', 'uploads/media/2024/', '294446', '2024-04-05 08:48:44'),
(217, 0, 'InShot_20231205_164322793', 'InShot_20231205_164322793.jpg', 'jpg', 'image', 'uploads/media/2024/', '316216', '2024-04-05 08:48:45'),
(218, 0, 'InShot_20231205_165943672', 'InShot_20231205_165943672.jpg', 'jpg', 'image', 'uploads/media/2024/', '286260', '2024-04-05 08:48:46'),
(219, 0, 'InShot_20231205_170056179', 'InShot_20231205_170056179.jpg', 'jpg', 'image', 'uploads/media/2024/', '254406', '2024-04-05 08:48:47'),
(220, 0, 'InShot_20231229_102600660_(1)', 'InShot_20231229_102600660_(1).jpg', 'jpg', 'image', 'uploads/media/2024/', '520419', '2024-04-05 08:48:48'),
(221, 0, 'InShot_20231205_170250336', 'InShot_20231205_170250336.jpg', 'jpg', 'image', 'uploads/media/2024/', '283312', '2024-04-05 08:48:49'),
(222, 0, 'InShot_20231205_163928321', 'InShot_20231205_163928321.jpg', 'jpg', 'image', 'uploads/media/2024/', '295500', '2024-04-05 08:48:50'),
(223, 0, 'InShot_20231205_170453181', 'InShot_20231205_170453181.jpg', 'jpg', 'image', 'uploads/media/2024/', '284387', '2024-04-05 08:48:51'),
(224, 0, 'InShot_20231205_171031289', 'InShot_20231205_171031289.jpg', 'jpg', 'image', 'uploads/media/2024/', '272389', '2024-04-05 08:48:52'),
(225, 0, 'InShot_20231205_163837998', 'InShot_20231205_163837998.jpg', 'jpg', 'image', 'uploads/media/2024/', '315221', '2024-04-05 08:48:53'),
(226, 0, 'InShot_20240118_010057319', 'InShot_20240118_010057319.jpg', 'jpg', 'image', 'uploads/media/2024/', '375798', '2024-04-05 08:49:28'),
(227, 0, 'InShot_20240117_170240922', 'InShot_20240117_170240922.jpg', 'jpg', 'image', 'uploads/media/2024/', '271642', '2024-04-05 08:49:29'),
(228, 0, 'InShot_20231229_102222855', 'InShot_20231229_102222855.jpg', 'jpg', 'image', 'uploads/media/2024/', '501437', '2024-04-05 08:49:30'),
(229, 0, 'InShot_20240118_022218004', 'InShot_20240118_022218004.jpg', 'jpg', 'image', 'uploads/media/2024/', '329083', '2024-04-05 08:49:31'),
(230, 0, 'InShot_20240118_010231314', 'InShot_20240118_010231314.jpg', 'jpg', 'image', 'uploads/media/2024/', '440316', '2024-04-05 08:49:33'),
(231, 0, 'everestspices_logo', 'everestspices_logo.jpg', 'jpg', 'image', 'uploads/media/2024/', '4840', '2024-04-05 12:23:55'),
(232, 0, 'Frame-32-6', 'Frame-32-6.png', 'png', 'image', 'uploads/media/2024/', '45258', '2024-04-05 12:23:55'),
(233, 0, '82065684', '82065684.webp', 'webp', 'image', 'uploads/media/2024/', '131.08', '2024-04-06 06:56:30'),
(234, 0, 'InShot_20240120_134308911', 'InShot_20240120_134308911.jpg', 'jpg', 'image', 'uploads/media/2024/', '162709', '2024-04-06 07:11:27'),
(235, 0, 'InShot_20240120_134238836', 'InShot_20240120_134238836.jpg', 'jpg', 'image', 'uploads/media/2024/', '159243', '2024-04-06 07:11:27'),
(236, 0, 'InShot_20240120_134338304', 'InShot_20240120_134338304.jpg', 'jpg', 'image', 'uploads/media/2024/', '166431', '2024-04-06 07:11:28'),
(237, 0, 'InShot_20240120_134421834', 'InShot_20240120_134421834.jpg', 'jpg', 'image', 'uploads/media/2024/', '193156', '2024-04-06 07:11:29'),
(238, 0, 'InShot_20240120_134030055', 'InShot_20240120_134030055.jpg', 'jpg', 'image', 'uploads/media/2024/', '218842', '2024-04-06 07:19:12'),
(239, 0, 'InShot_20240120_133946507', 'InShot_20240120_133946507.jpg', 'jpg', 'image', 'uploads/media/2024/', '204483', '2024-04-06 07:19:13'),
(240, 0, 'InShot_20240120_133818582', 'InShot_20240120_133818582.jpg', 'jpg', 'image', 'uploads/media/2024/', '200533', '2024-04-06 07:19:13'),
(241, 0, 'InShot_20240120_133905401', 'InShot_20240120_133905401.jpg', 'jpg', 'image', 'uploads/media/2024/', '149116', '2024-04-06 07:19:14'),
(242, 0, 'InShot_20240120_134614284', 'InShot_20240120_134614284.jpg', 'jpg', 'image', 'uploads/media/2024/', '220863', '2024-04-06 07:26:20'),
(243, 0, 'InShot_20240120_134655243', 'InShot_20240120_134655243.jpg', 'jpg', 'image', 'uploads/media/2024/', '157945', '2024-04-06 07:26:21'),
(244, 0, 'InShot_20240120_134533471', 'InShot_20240120_134533471.jpg', 'jpg', 'image', 'uploads/media/2024/', '181360', '2024-04-06 07:26:21'),
(245, 0, 'InShot_20240120_134109370', 'InShot_20240120_134109370.jpg', 'jpg', 'image', 'uploads/media/2024/', '133754', '2024-04-06 07:26:22'),
(246, 0, 'InShot_20240120_134757667', 'InShot_20240120_134757667.jpg', 'jpg', 'image', 'uploads/media/2024/', '130250', '2024-04-06 07:35:53'),
(247, 0, 'InShot_20240120_134839184', 'InShot_20240120_134839184.jpg', 'jpg', 'image', 'uploads/media/2024/', '124238', '2024-04-06 07:35:54'),
(248, 0, 'InShot_20240120_134917176', 'InShot_20240120_134917176.jpg', 'jpg', 'image', 'uploads/media/2024/', '143150', '2024-04-06 07:35:55'),
(249, 0, 'download', 'download.png', 'png', 'image', 'uploads/media/2024/', '18153', '2024-04-06 07:49:53'),
(250, 0, 'InShot_20240116_004547721', 'InShot_20240116_004547721.jpg', 'jpg', 'image', 'uploads/media/2024/', '257471', '2024-04-06 07:56:00'),
(251, 0, 'InShot_20240116_004614413', 'InShot_20240116_004614413.jpg', 'jpg', 'image', 'uploads/media/2024/', '223467', '2024-04-06 07:56:01'),
(252, 0, 'InShot_20240116_004506372', 'InShot_20240116_004506372.jpg', 'jpg', 'image', 'uploads/media/2024/', '208627', '2024-04-06 07:56:02'),
(253, 0, 'InShot_20240116_004722154', 'InShot_20240116_004722154.jpg', 'jpg', 'image', 'uploads/media/2024/', '197975', '2024-04-06 07:56:03'),
(254, 0, 'InShot_20240116_004654085', 'InShot_20240116_004654085.jpg', 'jpg', 'image', 'uploads/media/2024/', '223891', '2024-04-06 07:56:04'),
(255, 0, 'InShot_20240116_004753131', 'InShot_20240116_004753131.jpg', 'jpg', 'image', 'uploads/media/2024/', '179803', '2024-04-06 07:56:04'),
(256, 0, 'InShot_20240116_004825951', 'InShot_20240116_004825951.jpg', 'jpg', 'image', 'uploads/media/2024/', '249293', '2024-04-06 09:22:58'),
(257, 0, 'InShot_20240116_001703711', 'InShot_20240116_001703711.jpg', 'jpg', 'image', 'uploads/media/2024/', '265201', '2024-04-06 09:27:57'),
(258, 0, 'InShot_20240116_001619901', 'InShot_20240116_001619901.jpg', 'jpg', 'image', 'uploads/media/2024/', '241285', '2024-04-06 09:27:58'),
(259, 0, 'InShot_20240116_004938805', 'InShot_20240116_004938805.jpg', 'jpg', 'image', 'uploads/media/2024/', '183854', '2024-04-06 09:36:17'),
(260, 0, 'InShot_20240116_004902614', 'InShot_20240116_004902614.jpg', 'jpg', 'image', 'uploads/media/2024/', '190512', '2024-04-06 09:36:18'),
(261, 0, 'InShot_20240116_005031791', 'InShot_20240116_005031791.jpg', 'jpg', 'image', 'uploads/media/2024/', '172888', '2024-04-06 09:36:18'),
(262, 0, 'InShot_20240116_005001677', 'InShot_20240116_005001677.jpg', 'jpg', 'image', 'uploads/media/2024/', '230966', '2024-04-06 09:36:19'),
(263, 0, 'InShot_20240116_005056071', 'InShot_20240116_005056071.jpg', 'jpg', 'image', 'uploads/media/2024/', '388243', '2024-04-06 09:36:20'),
(264, 0, 'InShot_20240116_005122068', 'InShot_20240116_005122068.jpg', 'jpg', 'image', 'uploads/media/2024/', '217536', '2024-04-06 09:36:21'),
(265, 0, 'InShot_20240116_005544106', 'InShot_20240116_005544106.jpg', 'jpg', 'image', 'uploads/media/2024/', '182039', '2024-04-06 09:36:21'),
(266, 0, 'InShot_20240116_005148582', 'InShot_20240116_005148582.jpg', 'jpg', 'image', 'uploads/media/2024/', '195914', '2024-04-06 09:36:22'),
(267, 0, 'InShot_20240116_235858499', 'InShot_20240116_235858499.jpg', 'jpg', 'image', 'uploads/media/2024/', '212356', '2024-04-06 09:36:23'),
(268, 0, 'InShot_20240116_005220380', 'InShot_20240116_005220380.jpg', 'jpg', 'image', 'uploads/media/2024/', '166728', '2024-04-06 09:36:23'),
(269, 0, 'download1', 'download1.jpg', 'jpg', 'image', 'uploads/media/2024/', '6479', '2024-04-06 09:36:24'),
(270, 0, 'download_(1)', 'download_(1).png', 'png', 'image', 'uploads/media/2024/', '16453', '2024-04-06 09:36:24'),
(271, 0, 'InShot_20240116_005347991', 'InShot_20240116_005347991.jpg', 'jpg', 'image', 'uploads/media/2024/', '179751', '2024-04-06 10:07:00'),
(272, 0, 'InShot_20240116_005310582', 'InShot_20240116_005310582.jpg', 'jpg', 'image', 'uploads/media/2024/', '205390', '2024-04-06 10:07:01'),
(273, 0, 'InShot_20240116_005425605', 'InShot_20240116_005425605.jpg', 'jpg', 'image', 'uploads/media/2024/', '223580', '2024-04-06 10:07:02'),
(274, 0, 'InShot_20240116_005631069', 'InShot_20240116_005631069.jpg', 'jpg', 'image', 'uploads/media/2024/', '351735', '2024-04-06 10:07:03'),
(275, 0, 'InShot_20240116_005501597', 'InShot_20240116_005501597.jpg', 'jpg', 'image', 'uploads/media/2024/', '252296', '2024-04-06 10:07:04'),
(276, 0, 'InShot_20240116_233616755', 'InShot_20240116_233616755.jpg', 'jpg', 'image', 'uploads/media/2024/', '175419', '2024-04-06 10:07:05'),
(277, 0, 'InShot_20240116_233444361', 'InShot_20240116_233444361.jpg', 'jpg', 'image', 'uploads/media/2024/', '241056', '2024-04-06 10:07:06'),
(278, 0, 'InShot_20240117_000105714', 'InShot_20240117_000105714.jpg', 'jpg', 'image', 'uploads/media/2024/', '301949', '2024-04-06 10:07:07'),
(279, 0, 'InShot_20240116_005808380', 'InShot_20240116_005808380.jpg', 'jpg', 'image', 'uploads/media/2024/', '221182', '2024-04-06 10:07:37'),
(280, 0, 'InShot_20240116_234245901', 'InShot_20240116_234245901.jpg', 'jpg', 'image', 'uploads/media/2024/', '201135', '2024-04-06 10:07:37'),
(281, 0, 'InShot_20240116_233408260', 'InShot_20240116_233408260.jpg', 'jpg', 'image', 'uploads/media/2024/', '318870', '2024-04-06 10:07:38'),
(282, 0, 'InShot_20240116_234308669', 'InShot_20240116_234308669.jpg', 'jpg', 'image', 'uploads/media/2024/', '224168', '2024-04-06 10:07:39'),
(283, 0, 'InShot_20240116_235828582', 'InShot_20240116_235828582.jpg', 'jpg', 'image', 'uploads/media/2024/', '151083', '2024-04-06 10:07:40'),
(284, 0, 'InShot_20240116_235801951', 'InShot_20240116_235801951.jpg', 'jpg', 'image', 'uploads/media/2024/', '110866', '2024-04-06 10:07:41'),
(285, 0, 'InShot_20240116_005729320', 'InShot_20240116_005729320.jpg', 'jpg', 'image', 'uploads/media/2024/', '318850', '2024-04-06 10:07:42'),
(286, 0, 'InShot_20240116_005656654', 'InShot_20240116_005656654.jpg', 'jpg', 'image', 'uploads/media/2024/', '355145', '2024-04-06 10:07:42'),
(287, 0, 'InShot_20240116_020047681', 'InShot_20240116_020047681.jpg', 'jpg', 'image', 'uploads/media/2024/', '194638', '2024-04-06 10:36:18'),
(288, 0, 'InShot_20240116_171141375', 'InShot_20240116_171141375.jpg', 'jpg', 'image', 'uploads/media/2024/', '129204', '2024-04-06 10:36:19'),
(289, 0, 'InShot_20240116_020423021', 'InShot_20240116_020423021.jpg', 'jpg', 'image', 'uploads/media/2024/', '260019', '2024-04-06 10:36:20'),
(290, 0, 'InShot_20240116_015954448', 'InShot_20240116_015954448.jpg', 'jpg', 'image', 'uploads/media/2024/', '177159', '2024-04-06 10:36:20'),
(291, 0, 'InShot_20240116_015917867', 'InShot_20240116_015917867.jpg', 'jpg', 'image', 'uploads/media/2024/', '249311', '2024-04-06 10:36:21'),
(292, 0, 'InShot_20240117_000335708', 'InShot_20240117_000335708.jpg', 'jpg', 'image', 'uploads/media/2024/', '226514', '2024-04-06 10:36:22'),
(293, 0, 'InShot_20240116_020348211', 'InShot_20240116_020348211.jpg', 'jpg', 'image', 'uploads/media/2024/', '177174', '2024-04-06 10:36:22'),
(294, 0, 'InShot_20240116_171511553', 'InShot_20240116_171511553.jpg', 'jpg', 'image', 'uploads/media/2024/', '124027', '2024-04-06 10:36:23'),
(295, 0, 'InShot_20240117_000253039', 'InShot_20240117_000253039.jpg', 'jpg', 'image', 'uploads/media/2024/', '283615', '2024-04-06 10:36:24'),
(296, 0, 'InShot_20240117_000212643', 'InShot_20240117_000212643.jpg', 'jpg', 'image', 'uploads/media/2024/', '163272', '2024-04-06 10:36:25'),
(297, 0, 'InShot_20240116_005843332', 'InShot_20240116_005843332.jpg', 'jpg', 'image', 'uploads/media/2024/', '148076', '2024-04-06 10:36:25'),
(298, 0, 'InShot_20240117_000141740', 'InShot_20240117_000141740.jpg', 'jpg', 'image', 'uploads/media/2024/', '158125', '2024-04-06 10:36:26'),
(299, 0, 'images_(1)', 'images_(1).png', 'png', 'image', 'uploads/media/2024/', '36691', '2024-04-06 10:54:56'),
(300, 0, 'images', 'images.png', 'png', 'image', 'uploads/media/2024/', '60004', '2024-04-06 10:54:56'),
(301, 0, 'InShot_20240116_020557140', 'InShot_20240116_020557140.jpg', 'jpg', 'image', 'uploads/media/2024/', '209780', '2024-04-06 11:00:46'),
(302, 0, 'InShot_20240116_020754733', 'InShot_20240116_020754733.jpg', 'jpg', 'image', 'uploads/media/2024/', '297370', '2024-04-06 11:00:47'),
(303, 0, 'InShot_20240116_113257558', 'InShot_20240116_113257558.jpg', 'jpg', 'image', 'uploads/media/2024/', '211765', '2024-04-06 11:00:48'),
(304, 0, 'InShot_20240116_020638612', 'InShot_20240116_020638612.jpg', 'jpg', 'image', 'uploads/media/2024/', '232513', '2024-04-06 11:00:49'),
(305, 0, 'InShot_20240116_020729372', 'InShot_20240116_020729372.jpg', 'jpg', 'image', 'uploads/media/2024/', '128224', '2024-04-06 11:00:49'),
(306, 0, 'InShot_20240116_113215671', 'InShot_20240116_113215671.jpg', 'jpg', 'image', 'uploads/media/2024/', '237891', '2024-04-06 11:01:10'),
(307, 0, 'InShot_20240116_113122726', 'InShot_20240116_113122726.jpg', 'jpg', 'image', 'uploads/media/2024/', '115534', '2024-04-06 11:01:11'),
(308, 0, 'InShot_20240116_232351071', 'InShot_20240116_232351071.jpg', 'jpg', 'image', 'uploads/media/2024/', '220149', '2024-04-06 11:01:12'),
(309, 0, 'InShot_20240116_113042399', 'InShot_20240116_113042399.jpg', 'jpg', 'image', 'uploads/media/2024/', '181620', '2024-04-06 11:01:12'),
(310, 0, 'InShot_20240116_232903882', 'InShot_20240116_232903882.jpg', 'jpg', 'image', 'uploads/media/2024/', '269200', '2024-04-06 11:01:14'),
(311, 0, 'InShot_20240116_232806132', 'InShot_20240116_232806132.jpg', 'jpg', 'image', 'uploads/media/2024/', '263509', '2024-04-06 11:01:15'),
(312, 0, 'InShot_20240116_232934940', 'InShot_20240116_232934940.jpg', 'jpg', 'image', 'uploads/media/2024/', '148747', '2024-04-06 11:01:16'),
(313, 0, 'InShot_20240116_231936902', 'InShot_20240116_231936902.jpg', 'jpg', 'image', 'uploads/media/2024/', '208390', '2024-04-06 11:01:16'),
(314, 0, 'InShot_20240116_232316977', 'InShot_20240116_232316977.jpg', 'jpg', 'image', 'uploads/media/2024/', '259964', '2024-04-06 11:01:17'),
(315, 0, 'InShot_20240116_231524603', 'InShot_20240116_231524603.jpg', 'jpg', 'image', 'uploads/media/2024/', '217500', '2024-04-06 11:01:18'),
(316, 0, 'InShot_20240116_235117074', 'InShot_20240116_235117074.jpg', 'jpg', 'image', 'uploads/media/2024/', '215571', '2024-04-06 11:24:53'),
(317, 0, 'InShot_20240116_235702035', 'InShot_20240116_235702035.jpg', 'jpg', 'image', 'uploads/media/2024/', '214081', '2024-04-06 11:24:54'),
(318, 0, 'InShot_20240116_235635504', 'InShot_20240116_235635504.jpg', 'jpg', 'image', 'uploads/media/2024/', '180399', '2024-04-06 11:24:54'),
(319, 0, 'InShot_20240116_235053784', 'InShot_20240116_235053784.jpg', 'jpg', 'image', 'uploads/media/2024/', '287333', '2024-04-06 11:24:55'),
(320, 0, 'InShot_20240116_235937456', 'InShot_20240116_235937456.jpg', 'jpg', 'image', 'uploads/media/2024/', '228577', '2024-04-06 11:24:56'),
(321, 0, 'InShot_20240117_000023358', 'InShot_20240117_000023358.jpg', 'jpg', 'image', 'uploads/media/2024/', '178270', '2024-04-06 11:24:57'),
(322, 0, 'InShot_20240120_032854031', 'InShot_20240120_032854031.jpg', 'jpg', 'image', 'uploads/media/2024/', '194392', '2024-04-06 11:35:21'),
(323, 0, 'InShot_20240120_032454811', 'InShot_20240120_032454811.jpg', 'jpg', 'image', 'uploads/media/2024/', '216079', '2024-04-06 11:35:22'),
(324, 0, 'InShot_20240120_032828011', 'InShot_20240120_032828011.jpg', 'jpg', 'image', 'uploads/media/2024/', '464623', '2024-04-06 11:35:23'),
(325, 0, 'InShot_20240120_032532846', 'InShot_20240120_032532846.jpg', 'jpg', 'image', 'uploads/media/2024/', '221426', '2024-04-06 11:35:24'),
(326, 0, 'InShot_20240120_032726017', 'InShot_20240120_032726017.jpg', 'jpg', 'image', 'uploads/media/2024/', '217207', '2024-04-06 11:35:25'),
(327, 0, 'InShot_20240120_032356821', 'InShot_20240120_032356821.jpg', 'jpg', 'image', 'uploads/media/2024/', '147379', '2024-04-06 11:35:26'),
(328, 0, 'InShot_20240120_032257950', 'InShot_20240120_032257950.jpg', 'jpg', 'image', 'uploads/media/2024/', '482891', '2024-04-06 11:35:27'),
(329, 0, 'InShot_20240120_032423574', 'InShot_20240120_032423574.jpg', 'jpg', 'image', 'uploads/media/2024/', '198804', '2024-04-06 11:35:28'),
(330, 0, 'InShot_20240120_032323909', 'InShot_20240120_032323909.jpg', 'jpg', 'image', 'uploads/media/2024/', '223172', '2024-04-06 11:35:29'),
(331, 0, 'InShot_20240120_032604295', 'InShot_20240120_032604295.jpg', 'jpg', 'image', 'uploads/media/2024/', '204949', '2024-04-06 11:35:29'),
(332, 0, 'InShot_20240120_032212186', 'InShot_20240120_032212186.jpg', 'jpg', 'image', 'uploads/media/2024/', '225704', '2024-04-06 12:21:41'),
(333, 0, 'InShot_20240120_032145475', 'InShot_20240120_032145475.jpg', 'jpg', 'image', 'uploads/media/2024/', '246599', '2024-04-06 12:21:41'),
(334, 0, 'InShot_20240120_032048540', 'InShot_20240120_032048540.jpg', 'jpg', 'image', 'uploads/media/2024/', '233657', '2024-04-06 12:21:42'),
(335, 0, 'InShot_20240120_031857728', 'InShot_20240120_031857728.jpg', 'jpg', 'image', 'uploads/media/2024/', '198209', '2024-04-06 12:21:43'),
(336, 0, 'InShot_20240120_032121429', 'InShot_20240120_032121429.jpg', 'jpg', 'image', 'uploads/media/2024/', '239183', '2024-04-06 12:21:43'),
(337, 0, 'InShot_20240120_150252320', 'InShot_20240120_150252320.jpg', 'jpg', 'image', 'uploads/media/2024/', '195318', '2024-04-06 12:34:57'),
(338, 0, 'InShot_20240120_150005567', 'InShot_20240120_150005567.jpg', 'jpg', 'image', 'uploads/media/2024/', '196988', '2024-04-06 12:34:57'),
(339, 0, 'InShot_20240120_150125263', 'InShot_20240120_150125263.jpg', 'jpg', 'image', 'uploads/media/2024/', '199119', '2024-04-06 12:34:58'),
(340, 0, 'InShot_20240120_150210709', 'InShot_20240120_150210709.jpg', 'jpg', 'image', 'uploads/media/2024/', '206303', '2024-04-06 12:34:59'),
(341, 0, 'InShot_20240120_030541245', 'InShot_20240120_030541245.jpg', 'jpg', 'image', 'uploads/media/2024/', '177104', '2024-04-06 12:34:59'),
(342, 0, 'InShot_20240120_150051378', 'InShot_20240120_150051378.jpg', 'jpg', 'image', 'uploads/media/2024/', '181902', '2024-04-06 12:35:00'),
(343, 0, 'InShot_20240120_133533703', 'InShot_20240120_133533703.jpg', 'jpg', 'image', 'uploads/media/2024/', '182598', '2024-04-06 12:35:01'),
(344, 0, 'InShot_20240120_133608562', 'InShot_20240120_133608562.jpg', 'jpg', 'image', 'uploads/media/2024/', '156921', '2024-04-06 12:35:02'),
(345, 0, 'InShot_20240120_030621582', 'InShot_20240120_030621582.jpg', 'jpg', 'image', 'uploads/media/2024/', '265812', '2024-04-06 12:35:03'),
(346, 0, 'InShot_20240120_030601932', 'InShot_20240120_030601932.jpg', 'jpg', 'image', 'uploads/media/2024/', '155711', '2024-04-06 12:35:04'),
(347, 0, 'InShot_20240120_030718741', 'InShot_20240120_030718741.jpg', 'jpg', 'image', 'uploads/media/2024/', '191859', '2024-04-06 12:35:05'),
(348, 0, 'InShot_20240120_030649694', 'InShot_20240120_030649694.jpg', 'jpg', 'image', 'uploads/media/2024/', '546168', '2024-04-06 12:35:06'),
(349, 0, 'InShot_20240120_034625939', 'InShot_20240120_034625939.jpg', 'jpg', 'image', 'uploads/media/2024/', '252448', '2024-04-06 12:35:16'),
(350, 0, 'InShot_20240123_134705483', 'InShot_20240123_134705483.jpg', 'jpg', 'image', 'uploads/media/2024/', '159994', '2024-04-06 13:01:23'),
(351, 0, 'InShot_20240123_134745368', 'InShot_20240123_134745368.jpg', 'jpg', 'image', 'uploads/media/2024/', '214903', '2024-04-06 13:01:24'),
(352, 0, 'InShot_20240123_135020092', 'InShot_20240123_135020092.jpg', 'jpg', 'image', 'uploads/media/2024/', '186987', '2024-04-06 13:01:25'),
(353, 0, 'InShot_20240125_134011901', 'InShot_20240125_134011901.jpg', 'jpg', 'image', 'uploads/media/2024/', '283984', '2024-04-06 13:01:25'),
(354, 0, 'InShot_20240125_134239878', 'InShot_20240125_134239878.jpg', 'jpg', 'image', 'uploads/media/2024/', '251368', '2024-04-06 13:01:26'),
(355, 0, 'InShot_20240123_135105208', 'InShot_20240123_135105208.jpg', 'jpg', 'image', 'uploads/media/2024/', '245428', '2024-04-06 13:01:27'),
(356, 0, 'InShot_20240123_134830254', 'InShot_20240123_134830254.jpg', 'jpg', 'image', 'uploads/media/2024/', '196174', '2024-04-06 13:01:27'),
(357, 0, 'InShot_20240123_135222212', 'InShot_20240123_135222212.jpg', 'jpg', 'image', 'uploads/media/2024/', '206682', '2024-04-06 13:01:28'),
(358, 0, 'InShot_20240123_135914204', 'InShot_20240123_135914204.jpg', 'jpg', 'image', 'uploads/media/2024/', '226881', '2024-04-06 13:01:29'),
(359, 0, 'InShot_20240123_135334538', 'InShot_20240123_135334538.jpg', 'jpg', 'image', 'uploads/media/2024/', '253857', '2024-04-06 13:01:30'),
(360, 0, 'InShot_20240123_140547840', 'InShot_20240123_140547840.jpg', 'jpg', 'image', 'uploads/media/2024/', '231507', '2024-04-06 13:01:30'),
(361, 0, 'InShot_20240123_135421139', 'InShot_20240123_135421139.jpg', 'jpg', 'image', 'uploads/media/2024/', '177868', '2024-04-06 13:01:31'),
(362, 0, 'InShot_20240123_135045409', 'InShot_20240123_135045409.jpg', 'jpg', 'image', 'uploads/media/2024/', '199615', '2024-04-06 13:02:35'),
(363, 0, 'InShot_20240123_135443126', 'InShot_20240123_135443126.jpg', 'jpg', 'image', 'uploads/media/2024/', '229699', '2024-04-06 13:02:36'),
(364, 0, 'InShot_20240125_134607332', 'InShot_20240125_134607332.jpg', 'jpg', 'image', 'uploads/media/2024/', '214387', '2024-04-06 13:02:37'),
(365, 0, 'InShot_20240123_135312885', 'InShot_20240123_135312885.jpg', 'jpg', 'image', 'uploads/media/2024/', '229142', '2024-04-06 13:02:37'),
(366, 0, 'InShot_20240125_134457919', 'InShot_20240125_134457919.jpg', 'jpg', 'image', 'uploads/media/2024/', '262776', '2024-04-06 13:02:38'),
(367, 0, 'InShot_20240125_134408640', 'InShot_20240125_134408640.jpg', 'jpg', 'image', 'uploads/media/2024/', '267426', '2024-04-06 13:02:39'),
(368, 0, 'InShot_20240123_135249723', 'InShot_20240123_135249723.jpg', 'jpg', 'image', 'uploads/media/2024/', '199696', '2024-04-06 13:02:40');
INSERT INTO `media` (`id`, `seller_id`, `title`, `name`, `extension`, `type`, `sub_directory`, `size`, `date_created`) VALUES
(369, 0, 'InShot_20240123_135820452', 'InShot_20240123_135820452.jpg', 'jpg', 'image', 'uploads/media/2024/', '175686', '2024-04-06 13:02:40'),
(370, 0, 'InShot_20240123_135356019', 'InShot_20240123_135356019.jpg', 'jpg', 'image', 'uploads/media/2024/', '198868', '2024-04-06 13:02:41'),
(371, 0, 'InShot_20240125_135203771', 'InShot_20240125_135203771.jpg', 'jpg', 'image', 'uploads/media/2024/', '159880', '2024-04-06 13:02:42'),
(372, 0, 'InShot_20240125_134521805', 'InShot_20240125_134521805.jpg', 'jpg', 'image', 'uploads/media/2024/', '179837', '2024-04-06 13:02:43'),
(373, 0, 'InShot_20240125_133901398', 'InShot_20240125_133901398.jpg', 'jpg', 'image', 'uploads/media/2024/', '245404', '2024-04-06 13:02:44'),
(374, 0, 'download_(1)2', 'download_(1)2.jpg', 'jpg', 'image', 'uploads/media/2024/', '13150', '2024-04-20 11:20:56'),
(375, 0, 'download_(1)2', 'download_(1)2.jpg', 'jpg', 'image', 'uploads/media/2024/', '13150', '2024-04-20 11:21:24'),
(376, 0, '360_F_281001895_usd6SIfy6zjBCf7hkVtFGKpG4B3zbwWM', '360_F_281001895_usd6SIfy6zjBCf7hkVtFGKpG4B3zbwWM.jpg', 'jpg', 'image', 'uploads/media/2024/', '28600', '2024-04-20 11:22:19'),
(377, 22, 'download_(1)', 'download_(1).jpeg', 'jpeg', 'image', 'uploads/media/2024/', '7450', '2024-04-21 09:42:56'),
(378, 0, 'InShot_20240123_140248449', 'InShot_20240123_140248449.jpg', 'jpg', 'image', 'uploads/media/2024/', '257899', '2024-04-23 07:40:45'),
(379, 0, 'InShot_20240125_135113739', 'InShot_20240125_135113739.jpg', 'jpg', 'image', 'uploads/media/2024/', '195622', '2024-04-23 07:40:46'),
(380, 0, 'InShot_20240125_135048371', 'InShot_20240125_135048371.jpg', 'jpg', 'image', 'uploads/media/2024/', '195661', '2024-04-23 07:40:46'),
(381, 0, 'InShot_20240125_134133142', 'InShot_20240125_134133142.jpg', 'jpg', 'image', 'uploads/media/2024/', '229196', '2024-04-23 07:40:47'),
(382, 0, 'InShot_20240125_134052964', 'InShot_20240125_134052964.jpg', 'jpg', 'image', 'uploads/media/2024/', '211383', '2024-04-23 07:40:48'),
(383, 0, 'InShot_20240125_134651320', 'InShot_20240125_134651320.jpg', 'jpg', 'image', 'uploads/media/2024/', '274441', '2024-04-23 07:40:48'),
(384, 0, 'InShot_20240123_140348013', 'InShot_20240123_140348013.jpg', 'jpg', 'image', 'uploads/media/2024/', '247023', '2024-04-23 07:40:49'),
(385, 0, 'InShot_20240123_140105031', 'InShot_20240123_140105031.jpg', 'jpg', 'image', 'uploads/media/2024/', '211576', '2024-04-23 07:40:50'),
(386, 0, 'InShot_20240125_134824457', 'InShot_20240125_134824457.jpg', 'jpg', 'image', 'uploads/media/2024/', '229561', '2024-04-23 07:40:51'),
(387, 0, 'InShot_20240123_135946438', 'InShot_20240123_135946438.jpg', 'jpg', 'image', 'uploads/media/2024/', '250405', '2024-04-23 07:40:52'),
(388, 0, 'InShot_20240125_134719986', 'InShot_20240125_134719986.jpg', 'jpg', 'image', 'uploads/media/2024/', '281764', '2024-04-23 07:40:52'),
(389, 0, 'InShot_20240123_140013179', 'InShot_20240123_140013179.jpg', 'jpg', 'image', 'uploads/media/2024/', '216592', '2024-04-23 07:40:53'),
(390, 0, 'InShot_20240125_134031333', 'InShot_20240125_134031333.jpg', 'jpg', 'image', 'uploads/media/2024/', '168290', '2024-04-23 08:08:06'),
(391, 0, 'InShot_20240125_134959834', 'InShot_20240125_134959834.jpg', 'jpg', 'image', 'uploads/media/2024/', '230879', '2024-04-23 08:08:07'),
(392, 0, 'InShot_20240123_141130069', 'InShot_20240123_141130069.jpg', 'jpg', 'image', 'uploads/media/2024/', '185290', '2024-04-23 08:08:07'),
(393, 0, 'InShot_20240123_140726367', 'InShot_20240123_140726367.jpg', 'jpg', 'image', 'uploads/media/2024/', '163428', '2024-04-23 08:08:08'),
(394, 0, 'InShot_20240125_133728398', 'InShot_20240125_133728398.jpg', 'jpg', 'image', 'uploads/media/2024/', '224712', '2024-04-23 08:08:09'),
(395, 0, 'InShot_20240125_135141941', 'InShot_20240125_135141941.jpg', 'jpg', 'image', 'uploads/media/2024/', '224273', '2024-04-23 08:08:10'),
(396, 0, 'InShot_20240123_141152379', 'InShot_20240123_141152379.jpg', 'jpg', 'image', 'uploads/media/2024/', '183470', '2024-04-23 08:08:11'),
(397, 0, 'InShot_20240125_133753464', 'InShot_20240125_133753464.jpg', 'jpg', 'image', 'uploads/media/2024/', '198543', '2024-04-23 08:08:12'),
(398, 0, 'InShot_20240123_140748708', 'InShot_20240123_140748708.jpg', 'jpg', 'image', 'uploads/media/2024/', '232698', '2024-04-23 08:08:12'),
(399, 0, 'InShot_20240123_140933477', 'InShot_20240123_140933477.jpg', 'jpg', 'image', 'uploads/media/2024/', '180953', '2024-04-23 08:08:13'),
(400, 0, 'InShot_20240125_134850996', 'InShot_20240125_134850996.jpg', 'jpg', 'image', 'uploads/media/2024/', '223140', '2024-04-23 08:08:39'),
(401, 0, 'InShot_20240123_141001601', 'InShot_20240123_141001601.jpg', 'jpg', 'image', 'uploads/media/2024/', '228664', '2024-04-23 08:08:40'),
(402, 0, 'InShot_20240123_141032403', 'InShot_20240123_141032403.jpg', 'jpg', 'image', 'uploads/media/2024/', '188392', '2024-04-23 08:08:41'),
(403, 0, 'InShot_20240123_140909846', 'InShot_20240123_140909846.jpg', 'jpg', 'image', 'uploads/media/2024/', '266749', '2024-04-23 08:08:42'),
(404, 0, 'InShot_20240123_140448782', 'InShot_20240123_140448782.jpg', 'jpg', 'image', 'uploads/media/2024/', '207873', '2024-04-23 08:08:43'),
(405, 0, 'InShot_20240123_140818891', 'InShot_20240123_140818891.jpg', 'jpg', 'image', 'uploads/media/2024/', '219926', '2024-04-23 08:08:43'),
(406, 0, 'InShot_20240125_134751406', 'InShot_20240125_134751406.jpg', 'jpg', 'image', 'uploads/media/2024/', '205418', '2024-04-23 08:08:44'),
(407, 0, 'InShot_20240123_140708586', 'InShot_20240123_140708586.jpg', 'jpg', 'image', 'uploads/media/2024/', '204630', '2024-04-23 08:08:45'),
(408, 0, 'InShot_20240125_133943153', 'InShot_20240125_133943153.jpg', 'jpg', 'image', 'uploads/media/2024/', '240927', '2024-04-23 08:08:46'),
(409, 0, 'InShot_20240125_134928093', 'InShot_20240125_134928093.jpg', 'jpg', 'image', 'uploads/media/2024/', '177906', '2024-04-23 08:08:47'),
(410, 0, 'InShot_20240123_140619387', 'InShot_20240123_140619387.jpg', 'jpg', 'image', 'uploads/media/2024/', '211053', '2024-04-23 08:08:48'),
(411, 0, 'InShot_20240125_134626822', 'InShot_20240125_134626822.jpg', 'jpg', 'image', 'uploads/media/2024/', '246945', '2024-04-23 08:08:48'),
(412, 0, 'shutterstock-436617280-toy-dealers-5-02u2p', 'shutterstock-436617280-toy-dealers-5-02u2p.webp', 'webp', 'image', 'uploads/media/2024/', '27.66', '2024-04-24 08:15:54'),
(413, 0, 'image', 'image.jpg', 'jpg', 'image', 'uploads/media/2024/', '2524', '2024-04-24 08:18:24'),
(414, 0, 'image_(1)', 'image_(1).jpg', 'jpg', 'image', 'uploads/media/2024/', '2779', '2024-04-24 08:20:05'),
(415, 0, 'image_(2)', 'image_(2).jpg', 'jpg', 'image', 'uploads/media/2024/', '2544', '2024-04-24 08:21:38'),
(416, 0, 'InShot_20231117_215217535', 'InShot_20231117_215217535.jpg', 'jpg', 'image', 'uploads/media/2024/', '290967', '2024-04-26 08:15:51'),
(417, 0, 'InShot_20231114_225517003', 'InShot_20231114_225517003.jpg', 'jpg', 'image', 'uploads/media/2024/', '206712', '2024-04-26 08:15:52'),
(418, 0, 'InShot_20231114_224113127', 'InShot_20231114_224113127.jpg', 'jpg', 'image', 'uploads/media/2024/', '226252', '2024-04-26 08:15:52'),
(419, 0, 'InShot_20231114_212052370', 'InShot_20231114_212052370.jpg', 'jpg', 'image', 'uploads/media/2024/', '241275', '2024-04-26 08:15:53'),
(420, 0, 'InShot_20231114_211847899', 'InShot_20231114_211847899.jpg', 'jpg', 'image', 'uploads/media/2024/', '190056', '2024-04-26 08:15:54'),
(421, 0, 'InShot_20231114_212143507', 'InShot_20231114_212143507.jpg', 'jpg', 'image', 'uploads/media/2024/', '387873', '2024-04-26 08:15:54'),
(422, 0, 'InShot_20231114_211944321', 'InShot_20231114_211944321.jpg', 'jpg', 'image', 'uploads/media/2024/', '361872', '2024-04-26 08:15:55'),
(423, 0, 'InShot_20231114_211758173', 'InShot_20231114_211758173.jpg', 'jpg', 'image', 'uploads/media/2024/', '346896', '2024-04-26 08:15:55'),
(424, 0, 'InShot_20231114_211729278', 'InShot_20231114_211729278.jpg', 'jpg', 'image', 'uploads/media/2024/', '290143', '2024-04-26 08:15:56'),
(425, 0, 'InShot_20231114_211917535', 'InShot_20231114_211917535.jpg', 'jpg', 'image', 'uploads/media/2024/', '209844', '2024-04-26 08:15:57'),
(426, 0, 'InShot_20231114_231049879', 'InShot_20231114_231049879.jpg', 'jpg', 'image', 'uploads/media/2024/', '331914', '2024-04-26 08:16:46'),
(427, 0, 'InShot_20231118_022400908', 'InShot_20231118_022400908.jpg', 'jpg', 'image', 'uploads/media/2024/', '222707', '2024-04-26 08:16:47'),
(428, 0, 'InShot_20231114_223235187', 'InShot_20231114_223235187.jpg', 'jpg', 'image', 'uploads/media/2024/', '209456', '2024-04-26 08:16:47'),
(429, 0, 'InShot_20231114_223840369', 'InShot_20231114_223840369.jpg', 'jpg', 'image', 'uploads/media/2024/', '378079', '2024-04-26 08:16:48'),
(430, 0, 'InShot_20231114_225552109', 'InShot_20231114_225552109.jpg', 'jpg', 'image', 'uploads/media/2024/', '189570', '2024-04-26 08:16:49'),
(431, 0, 'InShot_20231114_231724830', 'InShot_20231114_231724830.jpg', 'jpg', 'image', 'uploads/media/2024/', '399558', '2024-04-26 08:16:49'),
(432, 0, 'InShot_20231114_232551240', 'InShot_20231114_232551240.jpg', 'jpg', 'image', 'uploads/media/2024/', '191499', '2024-04-26 08:16:50'),
(433, 0, 'InShot_20231114_225635753', 'InShot_20231114_225635753.jpg', 'jpg', 'image', 'uploads/media/2024/', '180440', '2024-04-26 08:16:51'),
(434, 0, 'InShot_20231114_232511021', 'InShot_20231114_232511021.jpg', 'jpg', 'image', 'uploads/media/2024/', '213471', '2024-04-26 08:16:51'),
(435, 0, 'InShot_20231114_212455096', 'InShot_20231114_212455096.jpg', 'jpg', 'image', 'uploads/media/2024/', '286887', '2024-04-26 08:16:52'),
(436, 0, 'InShot_20231114_231747262', 'InShot_20231114_231747262.jpg', 'jpg', 'image', 'uploads/media/2024/', '484883', '2024-04-26 08:16:53'),
(437, 0, 'InShot_20231114_231005226', 'InShot_20231114_231005226.jpg', 'jpg', 'image', 'uploads/media/2024/', '507078', '2024-04-26 08:17:39'),
(438, 0, 'InShot_20231118_022533716', 'InShot_20231118_022533716.jpg', 'jpg', 'image', 'uploads/media/2024/', '482374', '2024-04-26 08:17:39'),
(439, 0, 'InShot_20231118_022626320', 'InShot_20231118_022626320.jpg', 'jpg', 'image', 'uploads/media/2024/', '420246', '2024-04-26 08:17:40'),
(440, 0, 'InShot_20231114_225712718', 'InShot_20231114_225712718.jpg', 'jpg', 'image', 'uploads/media/2024/', '170906', '2024-04-26 08:17:41'),
(441, 0, 'InShot_20231114_222816495', 'InShot_20231114_222816495.jpg', 'jpg', 'image', 'uploads/media/2024/', '217455', '2024-04-26 08:17:41'),
(442, 0, 'InShot_20231114_212330675', 'InShot_20231114_212330675.jpg', 'jpg', 'image', 'uploads/media/2024/', '328464', '2024-04-26 08:17:42'),
(443, 0, 'InShot_20231114_212226993', 'InShot_20231114_212226993.jpg', 'jpg', 'image', 'uploads/media/2024/', '340143', '2024-04-26 08:17:43'),
(444, 0, 'InShot_20231114_233115855', 'InShot_20231114_233115855.jpg', 'jpg', 'image', 'uploads/media/2024/', '273820', '2024-04-26 08:17:43'),
(445, 0, 'InShot_20231114_231126025', 'InShot_20231114_231126025.jpg', 'jpg', 'image', 'uploads/media/2024/', '325323', '2024-04-26 08:17:44'),
(446, 0, 'InShot_20231114_233049485', 'InShot_20231114_233049485.jpg', 'jpg', 'image', 'uploads/media/2024/', '307958', '2024-04-26 08:17:45'),
(447, 0, 'InShot_20231114_232420939', 'InShot_20231114_232420939.jpg', 'jpg', 'image', 'uploads/media/2024/', '270919', '2024-04-26 08:17:45'),
(448, 0, 'InShot_20231117_221413297', 'InShot_20231117_221413297.jpg', 'jpg', 'image', 'uploads/media/2024/', '273587', '2024-04-26 08:18:39'),
(449, 0, 'InShot_20231117_223248078', 'InShot_20231117_223248078.jpg', 'jpg', 'image', 'uploads/media/2024/', '398981', '2024-04-26 08:18:40'),
(450, 0, 'InShot_20231114_223730248', 'InShot_20231114_223730248.jpg', 'jpg', 'image', 'uploads/media/2024/', '362678', '2024-04-26 08:18:41'),
(451, 0, 'InShot_20231117_220818957', 'InShot_20231117_220818957.jpg', 'jpg', 'image', 'uploads/media/2024/', '338084', '2024-04-26 08:18:41'),
(452, 0, 'InShot_20231117_223323729', 'InShot_20231117_223323729.jpg', 'jpg', 'image', 'uploads/media/2024/', '222962', '2024-04-26 08:18:42'),
(453, 0, 'InShot_20231114_222223608', 'InShot_20231114_222223608.jpg', 'jpg', 'image', 'uploads/media/2024/', '258976', '2024-04-26 08:18:42'),
(454, 0, 'InShot_20231117_223353786', 'InShot_20231117_223353786.jpg', 'jpg', 'image', 'uploads/media/2024/', '256593', '2024-04-26 08:18:43'),
(455, 0, 'InShot_20231114_231807814', 'InShot_20231114_231807814.jpg', 'jpg', 'image', 'uploads/media/2024/', '455101', '2024-04-26 08:18:44'),
(456, 0, 'InShot_20231117_221949014', 'InShot_20231117_221949014.jpg', 'jpg', 'image', 'uploads/media/2024/', '232845', '2024-04-26 08:18:45'),
(457, 0, 'InShot_20231114_212416806', 'InShot_20231114_212416806.jpg', 'jpg', 'image', 'uploads/media/2024/', '454448', '2024-04-26 08:18:45'),
(458, 0, 'InShot_20231117_223440056', 'InShot_20231117_223440056.jpg', 'jpg', 'image', 'uploads/media/2024/', '248742', '2024-04-26 08:18:46'),
(459, 0, 'InShot_20231117_223513855', 'InShot_20231117_223513855.jpg', 'jpg', 'image', 'uploads/media/2024/', '257808', '2024-04-26 08:18:47'),
(460, 0, 'InShot_20231117_223107618', 'InShot_20231117_223107618.jpg', 'jpg', 'image', 'uploads/media/2024/', '293590', '2024-04-26 08:19:01'),
(461, 0, 'InShot_20231117_223558363', 'InShot_20231117_223558363.jpg', 'jpg', 'image', 'uploads/media/2024/', '356878', '2024-04-26 08:19:02'),
(462, 0, 'InShot_20231117_223155601', 'InShot_20231117_223155601.jpg', 'jpg', 'image', 'uploads/media/2024/', '340816', '2024-04-26 08:19:03'),
(463, 0, 'InShot_20231118_022444311', 'InShot_20231118_022444311.jpg', 'jpg', 'image', 'uploads/media/2024/', '334172', '2024-04-26 08:19:03'),
(464, 0, 'Tamil_Market2', 'Tamil_Market2.jpg', 'jpg', 'image', 'uploads/media/2024/', '36801', '2024-04-30 14:27:56'),
(465, 0, 'Kerala_Market2', 'Kerala_Market2.jpg', 'jpg', 'image', 'uploads/media/2024/', '81800', '2024-04-30 14:28:22'),
(466, 0, 'Tamil_Market', 'Tamil_Market.jpg', 'jpg', 'image', 'uploads/media/2024/', '36801', '2024-04-30 14:39:30'),
(467, 0, 'Kerala_Market', 'Kerala_Market.jpg', 'jpg', 'image', 'uploads/media/2024/', '81800', '2024-04-30 14:39:51'),
(468, 0, 'ecom_(1)', 'ecom_(1).jpg', 'jpg', 'image', 'uploads/media/2024/', '46149', '2024-04-30 15:40:54'),
(469, 0, 'Milka_Alpine_Milk_Chocolate_bar_100g_with_chunks_broken_off', 'Milka_Alpine_Milk_Chocolate_bar_100g_with_chunks_broken_off.jpg', 'jpg', 'image', 'uploads/media/2024/', '27719', '2024-05-01 08:42:25'),
(470, 0, 'InShot_20231220_115234369', 'InShot_20231220_115234369.jpg', 'jpg', 'image', 'uploads/media/2024/', '223093', '2024-05-02 13:53:27'),
(471, 0, 'InShot_20231220_114953245', 'InShot_20231220_114953245.jpg', 'jpg', 'image', 'uploads/media/2024/', '158469', '2024-05-02 13:53:28'),
(472, 0, 'InShot_20231220_115717595', 'InShot_20231220_115717595.jpg', 'jpg', 'image', 'uploads/media/2024/', '254505', '2024-05-02 13:53:29'),
(473, 0, 'InShot_20231220_122721301', 'InShot_20231220_122721301.jpg', 'jpg', 'image', 'uploads/media/2024/', '296171', '2024-05-02 13:53:29'),
(474, 0, 'InShot_20231220_115338718', 'InShot_20231220_115338718.jpg', 'jpg', 'image', 'uploads/media/2024/', '280106', '2024-05-02 13:53:31'),
(475, 0, 'InShot_20231220_122505769', 'InShot_20231220_122505769.jpg', 'jpg', 'image', 'uploads/media/2024/', '250686', '2024-05-02 13:53:33'),
(476, 0, 'InShot_20231220_115834696', 'InShot_20231220_115834696.jpg', 'jpg', 'image', 'uploads/media/2024/', '247044', '2024-05-02 13:53:34'),
(477, 0, 'InShot_20231220_115545683', 'InShot_20231220_115545683.jpg', 'jpg', 'image', 'uploads/media/2024/', '288317', '2024-05-02 13:53:35'),
(478, 0, 'InShot_20231220_120620380', 'InShot_20231220_120620380.jpg', 'jpg', 'image', 'uploads/media/2024/', '310376', '2024-05-02 13:53:36'),
(479, 0, 'InShot_20231220_122301187', 'InShot_20231220_122301187.jpg', 'jpg', 'image', 'uploads/media/2024/', '275384', '2024-05-02 13:53:36'),
(480, 0, 'InShot_20231220_122355901', 'InShot_20231220_122355901.jpg', 'jpg', 'image', 'uploads/media/2024/', '216856', '2024-05-02 13:53:37'),
(481, 0, 'InShot_20231220_122839435', 'InShot_20231220_122839435.jpg', 'jpg', 'image', 'uploads/media/2024/', '212521', '2024-05-02 13:53:38'),
(482, 0, 'InShot_20231220_122213632', 'InShot_20231220_122213632.jpg', 'jpg', 'image', 'uploads/media/2024/', '399992', '2024-05-02 13:53:46'),
(483, 0, '2', '2.jpg', 'jpg', 'image', 'uploads/media/2024/', '10076', '2024-10-25 13:38:35'),
(484, 0, 'download_(2)1', 'download_(2)1.jpg', 'jpg', 'image', 'uploads/media/2024/', '18520', '2024-12-04 09:39:58'),
(485, 0, 'soan_papdi', 'soan_papdi.jpg', 'jpg', 'image', 'uploads/media/2024/', '10927', '2024-12-19 09:44:40'),
(486, 0, 'IMG-20250210-WA0005', 'IMG-20250210-WA0005.jpg', 'jpg', 'image', 'uploads/media/2025/', '317609', '2025-02-12 15:54:47'),
(487, 0, '6YFHRLLFNM2FMEXX7SVCL2DQWI', '6YFHRLLFNM2FMEXX7SVCL2DQWI.jpg', 'jpg', 'image', 'uploads/media/2025/', '77519', '2025-02-13 06:02:09'),
(488, 0, 'annapurna-og-image', 'annapurna-og-image.jpg', 'jpg', 'image', 'uploads/media/2025/', '26751', '2025-02-22 15:20:34'),
(494, 0, '6607cb935731b_download', '6607cb935731b_download.jpg', 'jpg', 'image', 'uploads/media/2025/', '9135', '2025-03-19 14:09:25'),
(496, 15, 'Bangalore', 'Bangalore.jpg', 'jpg', 'image', 'uploads/media/2025/', '12640', '2025-03-20 06:10:26'),
(497, 15, 'Kunafa', 'Kunafa.jpg', 'jpg', 'image', 'uploads/media/2025/', '154329', '2025-03-20 06:17:49'),
(498, 0, 'China', 'China.jpg', 'jpg', 'image', 'uploads/media/2025/', '46846', '2025-03-22 06:20:50'),
(499, 0, 'real-estate-market-in-bangalore-2024', 'real-estate-market-in-bangalore-2024.jpg', 'jpg', 'image', 'uploads/media/2025/', '42859', '2025-03-22 06:29:51'),
(500, 0, 'Assam-2', 'Assam-2.jpg', 'jpg', 'image', 'uploads/media/2025/', '53269', '2025-03-22 06:43:59'),
(501, 0, 'IMG-20250322-WA0002', 'IMG-20250322-WA0002.jpg', 'jpg', 'image', 'uploads/media/2025/', '86679', '2025-03-22 14:17:09'),
(502, 0, 'WhatsApp_Image_2025-03-22_at_1_36_09_AM', 'WhatsApp_Image_2025-03-22_at_1_36_09_AM.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '59121', '2025-03-22 15:32:16'),
(503, 0, 'MOONG-DAL', 'MOONG-DAL.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '20393', '2025-03-22 16:21:54'),
(504, 0, 'Harshini', 'Harshini.jpg', 'jpg', 'image', 'uploads/media/2025/', '13282', '2025-03-24 07:13:32'),
(505, 0, 'Sesame_oil', 'Sesame_oil.png', 'png', 'image', 'uploads/media/2025/', '137740', '2025-03-24 07:19:58'),
(506, 0, 'Coconut_oil', 'Coconut_oil.png', 'png', 'image', 'uploads/media/2025/', '334363', '2025-03-24 07:24:37'),
(507, 0, 'groundnut_oil', 'groundnut_oil.png', 'png', 'image', 'uploads/media/2025/', '368660', '2025-03-24 07:31:37'),
(508, 0, 'Ghee', 'Ghee.png', 'png', 'image', 'uploads/media/2025/', '126189', '2025-03-24 07:37:58'),
(509, 0, '57-removebg-preview-min', '57-removebg-preview-min.png', 'png', 'image', 'uploads/media/2025/', '179088', '2025-03-24 07:38:14'),
(510, 0, 'KUDHIRAI-VAALI-BARNYARD-MILLETJPG', 'KUDHIRAI-VAALI-BARNYARD-MILLETJPG.jpg', 'jpg', 'image', 'uploads/media/2025/', '54625', '2025-03-24 07:43:35'),
(511, 0, 'Kudhirai', 'Kudhirai.jpg', 'jpg', 'image', 'uploads/media/2025/', '90673', '2025-03-24 07:43:50'),
(512, 0, 'Noodles-Foxtail-Millet', 'Noodles-Foxtail-Millet.jpg', 'jpg', 'image', 'uploads/media/2025/', '102918', '2025-03-24 07:47:38'),
(513, 0, 'Noodles-Foxtail', 'Noodles-Foxtail.jpg', 'jpg', 'image', 'uploads/media/2025/', '357846', '2025-03-24 07:48:00'),
(514, 0, 'Noodles-Kodo-Millet', 'Noodles-Kodo-Millet.jpg', 'jpg', 'image', 'uploads/media/2025/', '106178', '2025-03-24 07:51:20'),
(515, 0, 'Noodles-Little-Millet', 'Noodles-Little-Millet.jpg', 'jpg', 'image', 'uploads/media/2025/', '115728', '2025-03-24 07:56:58'),
(516, 0, 'Noodles-Moringa-Millet', 'Noodles-Moringa-Millet.jpg', 'jpg', 'image', 'uploads/media/2025/', '107568', '2025-03-24 08:00:53'),
(517, 0, 'Noodles-Finger-Millet', 'Noodles-Finger-Millet.jpg', 'jpg', 'image', 'uploads/media/2025/', '113801', '2025-03-24 08:04:31'),
(518, 0, 'Pasta-Foxtail-Millet', 'Pasta-Foxtail-Millet.jpg', 'jpg', 'image', 'uploads/media/2025/', '113032', '2025-03-24 08:08:43'),
(519, 0, '30', '30.jpg', 'jpg', 'image', 'uploads/media/2025/', '357846', '2025-03-24 08:08:59'),
(520, 0, 'Pasta-Kodo-Millet-1', 'Pasta-Kodo-Millet-1.jpg', 'jpg', 'image', 'uploads/media/2025/', '127396', '2025-03-24 08:12:28'),
(521, 0, 'Pasta-Little-Millet', 'Pasta-Little-Millet.jpg', 'jpg', 'image', 'uploads/media/2025/', '134063', '2025-03-24 08:16:39'),
(522, 0, 'Pasta-Moringajpg', 'Pasta-Moringajpg.jpg', 'jpg', 'image', 'uploads/media/2025/', '106129', '2025-03-24 08:19:29'),
(523, 0, 'Pasta-Finger-Millet', 'Pasta-Finger-Millet.jpg', 'jpg', 'image', 'uploads/media/2025/', '131795', '2025-03-24 08:22:52'),
(524, 0, '29-removebg-preview-min-1', '29-removebg-preview-min-1.png', 'png', 'image', 'uploads/media/2025/', '163167', '2025-03-24 08:27:26'),
(525, 0, 'Vermicelli-Foxtail-Millet', 'Vermicelli-Foxtail-Millet.jpg', 'jpg', 'image', 'uploads/media/2025/', '136729', '2025-03-24 08:31:10'),
(526, 0, 'Vermicelli-Kodo-Millet', 'Vermicelli-Kodo-Millet.jpg', 'jpg', 'image', 'uploads/media/2025/', '137685', '2025-03-24 08:34:16'),
(527, 0, 'Vermicelli-Little-Millet', 'Vermicelli-Little-Millet.jpg', 'jpg', 'image', 'uploads/media/2025/', '139981', '2025-03-24 08:37:13'),
(528, 0, 'Vermicelli-Moringa-Millet', 'Vermicelli-Moringa-Millet.jpg', 'jpg', 'image', 'uploads/media/2025/', '133660', '2025-03-24 08:40:42'),
(529, 0, 'Vermicelli-Finger-Millet', 'Vermicelli-Finger-Millet.jpg', 'jpg', 'image', 'uploads/media/2025/', '119922', '2025-03-24 09:12:39'),
(530, 0, 'Thinai_millet', 'Thinai_millet.png', 'png', 'image', 'uploads/media/2025/', '180963', '2025-03-24 09:16:47'),
(531, 0, 'Thinai', 'Thinai.jpg', 'jpg', 'image', 'uploads/media/2025/', '127329', '2025-03-24 09:17:08'),
(532, 0, 'Varaghu_millet', 'Varaghu_millet.png', 'png', 'image', 'uploads/media/2025/', '229579', '2025-03-24 09:20:22'),
(533, 0, 'Ragi_millet', 'Ragi_millet.png', 'png', 'image', 'uploads/media/2025/', '163079', '2025-03-24 09:23:14'),
(534, 0, 'Ragi', 'Ragi.jpg', 'jpg', 'image', 'uploads/media/2025/', '118980', '2025-03-24 09:23:30'),
(535, 0, 'woocommerce-placeholder', 'woocommerce-placeholder.png', 'png', 'image', 'uploads/media/2025/', '119394', '2025-03-24 09:26:19'),
(536, 0, 'Main-protein-powder', 'Main-protein-powder.jpg', 'jpg', 'image', 'uploads/media/2025/', '100504', '2025-03-24 09:33:09'),
(537, 0, 'FILTER-COFFEE', 'FILTER-COFFEE.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '27881', '2025-03-24 09:35:29'),
(538, 0, 'B_malt_health_drink', 'B_malt_health_drink.png', 'png', 'image', 'uploads/media/2025/', '142323', '2025-03-24 09:39:42'),
(539, 0, 'B_malt', 'B_malt.png', 'png', 'image', 'uploads/media/2025/', '138969', '2025-03-24 09:40:00'),
(540, 0, 'BADAM-MIX', 'BADAM-MIX.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '63413', '2025-03-24 09:42:48'),
(541, 0, 'ROSE-MILK-MIX', 'ROSE-MILK-MIX.jpg', 'jpg', 'image', 'uploads/media/2025/', '68269', '2025-03-24 09:46:29'),
(542, 0, 'ABC_malt_health_drink', 'ABC_malt_health_drink.png', 'png', 'image', 'uploads/media/2025/', '136907', '2025-03-24 09:51:50'),
(543, 0, 'ABC_malt', 'ABC_malt.png', 'png', 'image', 'uploads/media/2025/', '156032', '2025-03-24 09:52:10'),
(544, 0, 'Herbal-Tea-Immune-Booster', 'Herbal-Tea-Immune-Booster.jpg', 'jpg', 'image', 'uploads/media/2025/', '29159', '2025-03-24 09:56:28'),
(545, 0, 'Herbal_tea_health_drink', 'Herbal_tea_health_drink.png', 'png', 'image', 'uploads/media/2025/', '148933', '2025-03-24 09:59:59'),
(546, 0, 'Herbal_tea', 'Herbal_tea.png', 'png', 'image', 'uploads/media/2025/', '154762', '2025-03-24 10:00:22'),
(547, 0, 'Jujube_powder', 'Jujube_powder.png', 'png', 'image', 'uploads/media/2025/', '148933', '2025-03-24 10:04:06'),
(548, 0, 'Juju', 'Juju.png', 'png', 'image', 'uploads/media/2025/', '154762', '2025-03-24 10:04:33'),
(549, 0, 'Soup-Powder-Moringa-Leaf', 'Soup-Powder-Moringa-Leaf.jpg', 'jpg', 'image', 'uploads/media/2025/', '137032', '2025-03-24 10:08:00'),
(550, 0, 'coriander-powder-500x500-1', 'coriander-powder-500x500-1.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '22592', '2025-03-24 10:12:43'),
(551, 0, 'Sambar-Powder-Recipe', 'Sambar-Powder-Recipe.jpg', 'jpg', 'image', 'uploads/media/2025/', '31212', '2025-03-24 10:16:08'),
(552, 0, 'Andhra-Parupu-Podi', 'Andhra-Parupu-Podi.jpg', 'jpg', 'image', 'uploads/media/2025/', '56545', '2025-03-24 10:18:18'),
(553, 0, 'Curry-Leaves-Powder', 'Curry-Leaves-Powder.jpg', 'jpg', 'image', 'uploads/media/2025/', '61286', '2025-03-24 10:20:41'),
(554, 0, 'Idly-Podi-scaled', 'Idly-Podi-scaled.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '254493', '2025-03-24 10:24:34'),
(555, 0, 'Karakozhambu-Podi-scaled', 'Karakozhambu-Podi-scaled.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '276808', '2025-03-24 10:26:40'),
(556, 0, 'KASHMIRI-CHILLY-POWDER', 'KASHMIRI-CHILLY-POWDER.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '17178', '2025-03-24 10:29:52'),
(557, 0, 'Paruppu-Podi', 'Paruppu-Podi.jpg', 'jpg', 'image', 'uploads/media/2025/', '58751', '2025-03-24 10:32:22'),
(558, 0, 'PEPPER-PODI', 'PEPPER-PODI.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '15048', '2025-03-24 10:34:33'),
(559, 0, 'Pudina-Podi-scaled', 'Pudina-Podi-scaled.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '265735', '2025-03-24 10:36:45'),
(560, 0, 'Puliyodarai-Podi-scaled', 'Puliyodarai-Podi-scaled.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '299126', '2025-03-24 10:39:26'),
(561, 0, 'Rasa-Podi-scaled', 'Rasa-Podi-scaled.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '309659', '2025-03-24 10:42:06'),
(562, 0, 'Garam_masala_100GMS', 'Garam_masala_100GMS.png', 'png', 'image', 'uploads/media/2025/', '172429', '2025-03-24 10:48:00'),
(563, 0, 'Garam', 'Garam.jpg', 'jpg', 'image', 'uploads/media/2025/', '155698', '2025-03-24 10:48:17'),
(564, 0, 'DRY-GINGER-POWDER', 'DRY-GINGER-POWDER.jpg', 'jpg', 'image', 'uploads/media/2025/', '22709', '2025-03-24 10:50:33'),
(565, 0, 'Jeera', 'Jeera.png', 'png', 'image', 'uploads/media/2025/', '199684', '2025-03-24 10:53:33'),
(566, 0, 'JEERA-POWDER', 'JEERA-POWDER.jpg', 'jpg', 'image', 'uploads/media/2025/', '17093', '2025-03-24 10:58:01'),
(567, 0, 'Pepper_100GMS', 'Pepper_100GMS.png', 'png', 'image', 'uploads/media/2025/', '163137', '2025-03-24 11:01:05'),
(568, 0, '34-150x150', '34-150x150.jpg', 'jpg', 'image', 'uploads/media/2025/', '7672', '2025-03-24 11:01:18'),
(569, 0, 'BAY-LEAVES', 'BAY-LEAVES.jpg', 'jpg', 'image', 'uploads/media/2025/', '903139', '2025-03-24 11:04:14'),
(570, 0, 'CARDAMOM', 'CARDAMOM.webp', 'webp', 'image', 'uploads/media/2025/', '45.94', '2025-03-24 11:07:07'),
(571, 0, 'Red_chilli_curry_powder', 'Red_chilli_curry_powder.png', 'png', 'image', 'uploads/media/2025/', '164251', '2025-03-24 11:10:58'),
(572, 0, '12', '12.jpg', 'jpg', 'image', 'uploads/media/2025/', '716384', '2025-03-24 11:11:17'),
(573, 0, 'Curry', 'Curry.png', 'png', 'image', 'uploads/media/2025/', '119394', '2025-03-24 11:18:40'),
(574, 0, 'Pure_chilli_powder', 'Pure_chilli_powder.png', 'png', 'image', 'uploads/media/2025/', '164251', '2025-03-24 11:22:21'),
(575, 0, '121', '121.jpg', 'jpg', 'image', 'uploads/media/2025/', '716384', '2025-03-24 11:22:40'),
(576, 0, 'black-mustard-seed-500x500-min', 'black-mustard-seed-500x500-min.png', 'png', 'image', 'uploads/media/2025/', '232689', '2025-03-24 11:39:24'),
(577, 0, 'Fennel-Seeds', 'Fennel-Seeds.jpg', 'jpg', 'image', 'uploads/media/2025/', '57128', '2025-03-24 11:42:05'),
(578, 0, 'FENUGREEK_Seeds_600x-min', 'FENUGREEK_Seeds_600x-min.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '34876', '2025-03-24 11:46:23'),
(579, 0, 'Turmeric_powder', 'Turmeric_powder.png', 'png', 'image', 'uploads/media/2025/', '146037', '2025-03-24 11:49:39'),
(580, 0, 'PINK-SALT', 'PINK-SALT.jpg', 'jpg', 'image', 'uploads/media/2025/', '835418', '2025-03-24 11:53:02'),
(581, 0, 'Rock_salt', 'Rock_salt.png', 'png', 'image', 'uploads/media/2025/', '143524', '2025-03-24 12:04:43'),
(582, 0, 'MOONG-DAL1', 'MOONG-DAL1.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '20393', '2025-03-24 12:14:49'),
(583, 0, 'Gram_Dal', 'Gram_Dal.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '21082', '2025-03-24 12:19:51'),
(584, 0, 'Urad_dal_1KG', 'Urad_dal_1KG.png', 'png', 'image', 'uploads/media/2025/', '244442', '2025-03-24 12:22:29'),
(585, 0, '20-768x614', '20-768x614.jpg', 'jpg', 'image', 'uploads/media/2025/', '103465', '2025-03-24 12:22:47'),
(586, 0, 'Urad_Dal_split', 'Urad_Dal_split.png', 'png', 'image', 'uploads/media/2025/', '119394', '2025-03-24 12:25:09'),
(587, 0, 'Black_channa', 'Black_channa.png', 'png', 'image', 'uploads/media/2025/', '276033', '2025-03-24 12:27:39'),
(588, 0, '2-768x614', '2-768x614.jpg', 'jpg', 'image', 'uploads/media/2025/', '90561', '2025-03-24 12:27:53'),
(589, 0, 'Channa_dal', 'Channa_dal.png', 'png', 'image', 'uploads/media/2025/', '257757', '2025-03-24 12:30:48'),
(590, 0, '44-768x614', '44-768x614.jpg', 'jpg', 'image', 'uploads/media/2025/', '97037', '2025-03-24 12:31:27'),
(591, 0, 'Toor-Dal', 'Toor-Dal.jpg', 'jpg', 'image', 'uploads/media/2025/', '29945', '2025-03-24 12:37:02'),
(592, 0, 'Moon_Dal_1kg', 'Moon_Dal_1kg.png', 'png', 'image', 'uploads/media/2025/', '189676', '2025-03-24 12:40:05'),
(593, 0, 'Whitechanna', 'Whitechanna.png', 'png', 'image', 'uploads/media/2025/', '277686', '2025-03-24 12:42:48'),
(594, 0, '42-768x614', '42-768x614.jpg', 'jpg', 'image', 'uploads/media/2025/', '88429', '2025-03-24 12:43:00'),
(595, 0, 'BLACK-EYE-BEANSJPG', 'BLACK-EYE-BEANSJPG.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '15082', '2025-03-24 12:45:25'),
(596, 0, 'FIELD-BEANS', 'FIELD-BEANS.jpg', 'jpg', 'image', 'uploads/media/2025/', '30209', '2025-03-24 12:48:06'),
(597, 0, 'Masoor-Dal-jpg-2-768x576', 'Masoor-Dal-jpg-2-768x576.jpg', 'jpg', 'image', 'uploads/media/2025/', '67959', '2025-03-24 12:51:09'),
(598, 0, 'Rajma', 'Rajma.png', 'png', 'image', 'uploads/media/2025/', '227736', '2025-03-24 12:53:42'),
(599, 0, 'SOYA-CHUNKS', 'SOYA-CHUNKS.jpg', 'jpg', 'image', 'uploads/media/2025/', '125122', '2025-03-24 12:56:31'),
(600, 0, 'Basmati_rice', 'Basmati_rice.png', 'png', 'image', 'uploads/media/2025/', '179817', '2025-03-24 13:20:07'),
(601, 0, '22-768x614', '22-768x614.jpg', 'jpg', 'image', 'uploads/media/2025/', '73301', '2025-03-24 13:20:39'),
(602, 0, 'Ponni_boiled', 'Ponni_boiled.png', 'png', 'image', 'uploads/media/2025/', '149404', '2025-03-24 13:23:51'),
(603, 0, 'Ponni', 'Ponni.jpg', 'jpg', 'image', 'uploads/media/2025/', '68572', '2025-03-24 13:24:07'),
(604, 0, 'Idly_rice', 'Idly_rice.png', 'png', 'image', 'uploads/media/2025/', '169643', '2025-03-24 13:28:27'),
(605, 0, 'Idly', 'Idly.jpg', 'jpg', 'image', 'uploads/media/2025/', '75922', '2025-03-24 13:28:41'),
(606, 0, 'BLACK-KAVUNI-RICE', 'BLACK-KAVUNI-RICE.webp', 'webp', 'image', 'uploads/media/2025/', '61.03', '2025-03-24 13:31:11'),
(607, 0, 'HAND-POUND-RICE', 'HAND-POUND-RICE.jpg', 'jpg', 'image', 'uploads/media/2025/', '152623', '2025-03-24 13:34:12'),
(608, 0, 'KICHALI-SAMBA-RICE', 'KICHALI-SAMBA-RICE.jpg', 'jpg', 'image', 'uploads/media/2025/', '100552', '2025-03-24 13:36:34'),
(609, 0, 'Mapillai_Samba_Rice', 'Mapillai_Samba_Rice.webp', 'webp', 'image', 'uploads/media/2025/', '49.23', '2025-03-24 13:40:29'),
(610, 0, 'PALAKAD-MATTA-RICE', 'PALAKAD-MATTA-RICE.jpg', 'jpg', 'image', 'uploads/media/2025/', '83328', '2025-03-24 13:43:17'),
(611, 0, 'Ponni_raw_rice', 'Ponni_raw_rice.png', 'png', 'image', 'uploads/media/2025/', '149404', '2025-03-24 13:47:03'),
(612, 0, 'ponni_raw', 'ponni_raw.jpg', 'jpg', 'image', 'uploads/media/2025/', '279859', '2025-03-24 13:47:30'),
(613, 0, 'Red-Rice-1', 'Red-Rice-1.jpg', 'jpg', 'image', 'uploads/media/2025/', '25561', '2025-03-24 13:50:06'),
(614, 0, 'SEERAGA-SAMBA', 'SEERAGA-SAMBA.webp', 'webp', 'image', 'uploads/media/2025/', '15.4', '2025-03-24 13:55:15'),
(615, 0, 'SONA-MASOORI-RICE', 'SONA-MASOORI-RICE.png', 'png', 'image', 'uploads/media/2025/', '1217921', '2025-03-24 13:58:23'),
(616, 0, 'Sona_masoori', 'Sona_masoori.jpg', 'jpg', 'image', 'uploads/media/2025/', '130181', '2025-03-24 14:01:27'),
(617, 0, 'Sona-Masoori-Rice', 'Sona-Masoori-Rice.webp', 'webp', 'image', 'uploads/media/2025/', '570.11', '2025-03-24 14:06:40'),
(618, 0, 'SURTI-KOLLAM', 'SURTI-KOLLAM.jpg', 'jpg', 'image', 'uploads/media/2025/', '80159', '2025-03-24 14:09:16'),
(619, 0, 'Surti_kollam', 'Surti_kollam.png', 'png', 'image', 'uploads/media/2025/', '81004', '2025-03-24 14:12:42'),
(620, 0, 'THOOYAMALLI-RICE', 'THOOYAMALLI-RICE.jpg', 'jpg', 'image', 'uploads/media/2025/', '90136', '2025-03-24 14:15:18'),
(621, 0, 'ponni_rwa_7kgs', 'ponni_rwa_7kgs.png', 'png', 'image', 'uploads/media/2025/', '149404', '2025-03-24 14:19:00'),
(622, 0, 'PUFFED-RICE', 'PUFFED-RICE.jpg', 'jpg', 'image', 'uploads/media/2025/', '40294', '2025-03-24 14:21:38'),
(623, 0, 'Red_flake', 'Red_flake.png', 'png', 'image', 'uploads/media/2025/', '238450', '2025-03-24 14:24:53'),
(624, 0, 'nuts-banner-img', 'nuts-banner-img.webp', 'webp', 'image', 'uploads/media/2025/', '220.73', '2025-03-24 14:33:22'),
(625, 0, 'Nuts', 'Nuts.png', 'png', 'image', 'uploads/media/2025/', '292456', '2025-03-24 14:36:22'),
(626, 0, '38-768x614', '38-768x614.jpg', 'jpg', 'image', 'uploads/media/2025/', '80538', '2025-03-24 14:36:34'),
(627, 0, 'Spelt-Flour-Substitutes-1', 'Spelt-Flour-Substitutes-1.jpg', 'jpg', 'image', 'uploads/media/2025/', '171894', '2025-03-24 14:58:52'),
(628, 0, 'Appalam', 'Appalam.png', 'png', 'image', 'uploads/media/2025/', '119394', '2025-03-24 15:01:51'),
(629, 0, 'besan-loose-min', 'besan-loose-min.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '16383', '2025-03-24 15:04:07'),
(630, 0, 'IDLY-RAVA', 'IDLY-RAVA.jpg', 'jpg', 'image', 'uploads/media/2025/', '8379', '2025-03-24 15:07:40'),
(631, 0, 'idly-rava-1-', 'idly-rava-1-.webp', 'webp', 'image', 'uploads/media/2025/', '462.19', '2025-03-24 15:10:28'),
(632, 0, 'jowaratta1kg', 'jowaratta1kg.webp', 'webp', 'image', 'uploads/media/2025/', '57.03', '2025-03-24 15:12:57'),
(633, 0, 'rice-flour', 'rice-flour.webp', 'webp', 'image', 'uploads/media/2025/', '19.03', '2025-03-24 15:16:44'),
(634, 0, 'SABU-DHANA', 'SABU-DHANA.jpg', 'jpg', 'image', 'uploads/media/2025/', '43645', '2025-03-24 15:20:10'),
(635, 0, 'SAMBA-WHEAT-RAVA', 'SAMBA-WHEAT-RAVA.jpg', 'jpg', 'image', 'uploads/media/2025/', '7628', '2025-03-24 15:23:04'),
(636, 0, 'Wheat_flour', 'Wheat_flour.png', 'png', 'image', 'uploads/media/2025/', '149027', '2025-03-24 15:26:08'),
(637, 0, '50', '50.jpg', 'jpg', 'image', 'uploads/media/2025/', '380986', '2025-03-24 15:26:27'),
(638, 0, 'personal_things', 'personal_things.jpg', 'jpg', 'image', 'uploads/media/2025/', '33691', '2025-03-24 15:33:52'),
(639, 0, 'Sanitary-Napkin', 'Sanitary-Napkin.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '113807', '2025-03-24 15:39:39'),
(640, 0, 'Sanitary-Napkin_9_nos', 'Sanitary-Napkin_9_nos.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '113807', '2025-03-24 15:41:56'),
(641, 0, 'Organic-Herbal-Bath-Powder-100Gms', 'Organic-Herbal-Bath-Powder-100Gms.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '91923', '2025-03-24 15:47:25'),
(642, 0, 'Organic-Herbal-Hair-Wash-Powder-100Gms', 'Organic-Herbal-Hair-Wash-Powder-100Gms.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '96217', '2025-03-24 15:57:56'),
(643, 0, 'Goats-Milk-Herbal-Soap', 'Goats-Milk-Herbal-Soap.png', 'png', 'image', 'uploads/media/2025/', '477871', '2025-03-24 16:01:04'),
(644, 0, 'Untitled', 'Untitled.jpg', 'jpg', 'image', 'uploads/media/2025/', '72212', '2025-03-24 16:05:14'),
(645, 0, 'Choose_Natural_Skin_Care_Products', 'Choose_Natural_Skin_Care_Products.webp', 'webp', 'image', 'uploads/media/2025/', '22.53', '2025-03-24 16:06:16'),
(646, 0, 'Adirasam', 'Adirasam.jpg', 'jpg', 'image', 'uploads/media/2025/', '16962', '2025-03-24 16:13:06'),
(647, 0, 'BADAM-HALWA', 'BADAM-HALWA.jpg', 'jpg', 'image', 'uploads/media/2025/', '162476', '2025-03-24 16:25:26'),
(648, 0, 'badusha-1', 'badusha-1.jpg', 'jpg', 'image', 'uploads/media/2025/', '45003', '2025-03-24 16:29:16'),
(649, 0, 'Banana-Yellow-Chips-01-', 'Banana-Yellow-Chips-01-.jpg', 'jpg', 'image', 'uploads/media/2025/', '74860', '2025-03-24 16:32:06'),
(650, 0, 'Bitter-gourd-chips', 'Bitter-gourd-chips.png', 'png', 'image', 'uploads/media/2025/', '1239487', '2025-03-24 16:34:30'),
(651, 0, 'bitter-gourd-chips-img-1300-center-view-600x600', 'bitter-gourd-chips-img-1300-center-view-600x600.webp', 'webp', 'image', 'uploads/media/2025/', '359.21', '2025-03-24 16:36:44'),
(652, 0, '1666880405-abcd', '1666880405-abcd.webp', 'webp', 'image', 'uploads/media/2025/', '25.24', '2025-03-24 16:38:43'),
(653, 0, 'bombay-halwa', 'bombay-halwa.jpg', 'jpg', 'image', 'uploads/media/2025/', '59663', '2025-03-24 16:47:49'),
(654, 0, 'BUTTER-MURUKKU-180g', 'BUTTER-MURUKKU-180g.jpg', 'jpg', 'image', 'uploads/media/2025/', '26991', '2025-03-24 17:37:37'),
(655, 0, 'MASALA-CASHEW', 'MASALA-CASHEW.jpg', 'jpg', 'image', 'uploads/media/2025/', '43454', '2025-03-24 17:41:28'),
(656, 0, 'dry-fruit-halwa', 'dry-fruit-halwa.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '41161', '2025-03-24 17:45:35'),
(657, 0, 'Dry-fruit-laddu', 'Dry-fruit-laddu.jpg', 'jpg', 'image', 'uploads/media/2025/', '277935', '2025-03-24 17:50:59'),
(658, 0, 'GHEE-MYSORE-PA', 'GHEE-MYSORE-PA.webp', 'webp', 'image', 'uploads/media/2025/', '29.89', '2025-03-24 17:54:33'),
(659, 0, 'GulabJamun2', 'GulabJamun2.webp', 'webp', 'image', 'uploads/media/2025/', '32.74', '2025-03-24 17:57:50'),
(660, 0, 'JACK-FRUIT-CHIPS', 'JACK-FRUIT-CHIPS.webp', 'webp', 'image', 'uploads/media/2025/', '130.28', '2025-03-24 18:00:43'),
(661, 0, 'JANGIRI', 'JANGIRI.webp', 'webp', 'image', 'uploads/media/2025/', '78.72', '2025-03-24 18:03:12'),
(662, 0, 'Kaimurukku2-475x500', 'Kaimurukku2-475x500.jpg', 'jpg', 'image', 'uploads/media/2025/', '60273', '2025-03-24 18:07:39'),
(663, 0, 'images', 'images.jpg', 'jpg', 'image', 'uploads/media/2025/', '15481', '2025-03-24 18:14:19'),
(664, 0, 'kaju-pista-roll-189453', 'kaju-pista-roll-189453.jpg', 'jpg', 'image', 'uploads/media/2025/', '641187', '2025-03-24 18:17:19'),
(665, 0, 'Kara-Boondi-Recipe-500x375-1', 'Kara-Boondi-Recipe-500x375-1.jpg', 'jpg', 'image', 'uploads/media/2025/', '34134', '2025-03-24 18:20:00'),
(666, 0, 'KARA-SEV', 'KARA-SEV.webp', 'webp', 'image', 'uploads/media/2025/', '43.38', '2025-03-24 18:24:24'),
(667, 0, 'boondi-ladoo', 'boondi-ladoo.jpg', 'jpg', 'image', 'uploads/media/2025/', '83371', '2025-03-24 18:37:48'),
(668, 0, 'laddu', 'laddu.jpg', 'jpg', 'image', 'uploads/media/2025/', '13117', '2025-03-24 18:40:56'),
(669, 0, 'lal_laddu', 'lal_laddu.jpg', 'jpg', 'image', 'uploads/media/2025/', '9250', '2025-03-24 18:43:44'),
(670, 0, 'Masala-Kadalai-1200x900-1', 'Masala-Kadalai-1200x900-1.jpg', 'jpg', 'image', 'uploads/media/2025/', '129129', '2025-03-24 18:46:27'),
(671, 0, 'Masalakadalai1', 'Masalakadalai1.webp', 'webp', 'image', 'uploads/media/2025/', '175.89', '2025-03-24 18:48:39'),
(672, 0, 'Milk-Halwa', 'Milk-Halwa.webp', 'webp', 'image', 'uploads/media/2025/', '29.64', '2025-03-24 18:52:56'),
(673, 0, 'milk_mysorepak', 'milk_mysorepak.webp', 'webp', 'image', 'uploads/media/2025/', '25.77', '2025-03-24 18:58:35'),
(674, 0, 'Mixture', 'Mixture.webp', 'webp', 'image', 'uploads/media/2025/', '23.4', '2025-03-25 06:31:34'),
(675, 0, 'Mysore-Pa', 'Mysore-Pa.webp', 'webp', 'image', 'uploads/media/2025/', '70', '2025-03-25 06:34:41'),
(676, 0, 'OMA-PODI', 'OMA-PODI.webp', 'webp', 'image', 'uploads/media/2025/', '85.47', '2025-03-25 06:37:28'),
(677, 0, 'ribbon-pakoda-recipe-1', 'ribbon-pakoda-recipe-1.jpg', 'jpg', 'image', 'uploads/media/2025/', '103039', '2025-03-25 06:40:36'),
(678, 0, 'SALTED_POTATO_CHIPS_–_200GMS', 'SALTED_POTATO_CHIPS_–_200GMS.jpg', 'jpg', 'image', 'uploads/media/2025/', '48070', '2025-03-25 06:44:05'),
(679, 0, 'SOMAAS', 'SOMAAS.jpg', 'jpg', 'image', 'uploads/media/2025/', '27724', '2025-03-25 06:47:42'),
(680, 0, 'special-laddu', 'special-laddu.jpg', 'jpg', 'image', 'uploads/media/2025/', '55154', '2025-03-25 06:50:52'),
(681, 0, 'Tapioca-Chips-1', 'Tapioca-Chips-1.jpg', 'jpg', 'image', 'uploads/media/2025/', '26726', '2025-03-25 06:54:02'),
(682, 0, 'thattai', 'thattai.jpg', 'jpg', 'image', 'uploads/media/2025/', '103422', '2025-03-25 06:56:40'),
(683, 0, 'Thenkuzhal-Murukku', 'Thenkuzhal-Murukku.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '36054', '2025-03-25 06:58:21'),
(684, 0, 'THREADED-potato-snack1', 'THREADED-potato-snack1.jpg', 'jpg', 'image', 'uploads/media/2025/', '56626', '2025-03-25 06:59:58'),
(685, 0, 'WHEAT_HALWA_–_250GMS', 'WHEAT_HALWA_–_250GMS.jpg', 'jpg', 'image', 'uploads/media/2025/', '12950', '2025-03-25 07:02:04'),
(686, 0, 'Pooja_items', 'Pooja_items.webp', 'webp', 'image', 'uploads/media/2025/', '44.14', '2025-03-25 07:08:41'),
(687, 0, 'Pirandai', 'Pirandai.jpg', 'jpg', 'image', 'uploads/media/2025/', '13428', '2025-03-25 07:11:12'),
(688, 0, 'Alari', 'Alari.jpg', 'jpg', 'image', 'uploads/media/2025/', '57067', '2025-03-25 07:15:32'),
(689, 0, 'Amaranthus_–_Arai_Keerai_1_Bunch', 'Amaranthus_–_Arai_Keerai_1_Bunch.jpg', 'jpg', 'image', 'uploads/media/2025/', '5562', '2025-03-25 07:19:02'),
(690, 0, 'Areca-Plates', 'Areca-Plates.jpg', 'jpg', 'image', 'uploads/media/2025/', '157838', '2025-03-25 07:22:13'),
(691, 0, 'ARECA_NUT_LEAF_10_PLATES', 'ARECA_NUT_LEAF_10_PLATES.jpg', 'jpg', 'image', 'uploads/media/2025/', '5172', '2025-03-25 07:24:41'),
(692, 0, 'Mudakathan-Keerai', 'Mudakathan-Keerai.jpg', 'jpg', 'image', 'uploads/media/2025/', '54462', '2025-03-25 07:27:02'),
(693, 0, 'mudakathan', 'mudakathan.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '63280', '2025-03-25 07:29:07'),
(694, 0, 'Black_nightshade_–_Manathakkali_Keerai_1_Bunch', 'Black_nightshade_–_Manathakkali_Keerai_1_Bunch.webp', 'webp', 'image', 'uploads/media/2025/', '69.56', '2025-03-25 07:33:03'),
(695, 0, 'Vallarai-Keerai', 'Vallarai-Keerai.jpg', 'jpg', 'image', 'uploads/media/2025/', '25573', '2025-03-25 07:34:49'),
(696, 0, 'Button-Rose', 'Button-Rose.jpg', 'jpg', 'image', 'uploads/media/2025/', '45532', '2025-03-25 07:36:29'),
(697, 0, 'Divine-Lamp-Oil-1', 'Divine-Lamp-Oil-1.jpg', 'jpg', 'image', 'uploads/media/2025/', '66459', '2025-03-25 07:42:32'),
(698, 0, 'Drumstick_Tree_Leaves_–_Murungai_Keerai_1_Bunch', 'Drumstick_Tree_Leaves_–_Murungai_Keerai_1_Bunch.jpg', 'jpg', 'image', 'uploads/media/2025/', '8264', '2025-03-25 07:46:06'),
(699, 0, '4566122', '4566122.jpg', 'jpg', 'image', 'uploads/media/2025/', '16042', '2025-03-25 07:49:20'),
(700, 0, 'Fenugreek_Leaves_–_Vendhaya_Keerai_1_Bunch', 'Fenugreek_Leaves_–_Vendhaya_Keerai_1_Bunch.webp', 'webp', 'image', 'uploads/media/2025/', '363.8', '2025-03-25 07:51:45'),
(701, 0, 'kkkkk', 'kkkkk.jpg', 'jpg', 'image', 'uploads/media/2025/', '710346', '2025-03-25 07:55:45'),
(702, 0, 'Jasmine_1_Feet', 'Jasmine_1_Feet.jpg', 'jpg', 'image', 'uploads/media/2025/', '210870', '2025-03-25 07:58:17'),
(703, 0, 'Mullai', 'Mullai.jpg', 'jpg', 'image', 'uploads/media/2025/', '12989', '2025-03-25 07:59:58'),
(704, 0, 'Lotus_Flower', 'Lotus_Flower.webp', 'webp', 'image', 'uploads/media/2025/', '31.45', '2025-03-25 08:02:43'),
(705, 0, 'MANGO_LEAVES_(1_Bunch)', 'MANGO_LEAVES_(1_Bunch).webp', 'webp', 'image', 'uploads/media/2025/', '30.91', '2025-03-25 08:05:22'),
(706, 0, 'Marie-Gold', 'Marie-Gold.jpg', 'jpg', 'image', 'uploads/media/2025/', '52465', '2025-03-25 08:07:10'),
(707, 0, 'PANEER-ROSE', 'PANEER-ROSE.jpg', 'jpg', 'image', 'uploads/media/2025/', '59002', '2025-03-25 08:09:03'),
(708, 0, 'sree-madhava-sai-organics-dry-paneer-rose-petals-100-grams-product-images-orvl15hwp2y-p598474453-6-202302171450', 'sree-madhava-sai-organics-dry-paneer-rose-petals-100-grams-product-images-orvl15hwp2y-p598474453-6-202302171450.webp', 'webp', 'image', 'uploads/media/2025/', '41.67', '2025-03-25 08:10:42'),
(709, 0, 'Samandhi', 'Samandhi.jpg', 'jpg', 'image', 'uploads/media/2025/', '35666', '2025-03-25 08:12:24'),
(710, 0, 'Arai-keerai', 'Arai-keerai.jpg', 'jpg', 'image', 'uploads/media/2025/', '44549', '2025-03-25 08:15:07'),
(711, 0, 'tulsi-leaves-100grams', 'tulsi-leaves-100grams.jpg', 'jpg', 'image', 'uploads/media/2025/', '109329', '2025-03-25 08:17:29'),
(712, 0, 'Vilvam_Leaves', 'Vilvam_Leaves.webp', 'webp', 'image', 'uploads/media/2025/', '43.16', '2025-03-25 08:19:37'),
(713, 0, 'Whole-Coconut', 'Whole-Coconut.jpg', 'jpg', 'image', 'uploads/media/2025/', '54035', '2025-03-25 08:21:41'),
(714, 0, 'Confectionary', 'Confectionary.jpg', 'jpg', 'image', 'uploads/media/2025/', '14074', '2025-03-25 08:30:22'),
(715, 0, 'Special-Offers-Sweets-Combo-250Gms-AED-27-Only', 'Special-Offers-Sweets-Combo-250Gms-AED-27-Only.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '120211', '2025-03-25 08:33:24'),
(716, 0, '23-removebg-preview-min', '23-removebg-preview-min.png', 'png', 'image', 'uploads/media/2025/', '198623', '2025-03-25 08:36:40'),
(717, 0, '24-768x614', '24-768x614.jpg', 'jpg', 'image', 'uploads/media/2025/', '109336', '2025-03-25 08:36:51'),
(718, 0, '45-removebg-preview-min', '45-removebg-preview-min.png', 'png', 'image', 'uploads/media/2025/', '184749', '2025-03-25 08:40:16'),
(719, 0, '46', '46.jpg', 'jpg', 'image', 'uploads/media/2025/', '704302', '2025-03-25 08:40:30'),
(720, 0, 'ROCK-SUGAR-CANDY', 'ROCK-SUGAR-CANDY.jpg', 'jpg', 'image', 'uploads/media/2025/', '219919', '2025-03-25 08:42:17'),
(721, 0, 'bay-leaves-500x500', 'bay-leaves-500x500.webp', 'webp', 'image', 'uploads/media/2025/', '14.4', '2025-03-25 08:48:07'),
(722, 0, 'Rasa-Podi-scaled1', 'Rasa-Podi-scaled1.jpeg', 'jpeg', 'image', 'uploads/media/2025/', '253434', '2025-03-25 08:52:08'),
(725, 15, '633add938c15806e1255f41c-maggi-masala-2-minute-noodles-india', '633add938c15806e1255f41c-maggi-masala-2-minute-noodles-india.jpg', 'jpg', 'image', 'uploads/media/2025/', '202908', '2025-03-29 07:36:28'),
(726, 0, 'download_(3)', 'download_(3).jpg', 'jpg', 'image', 'uploads/media/2025/', '10387', '2025-04-09 15:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT 1,
  `message` text NOT NULL,
  `type` varchar(128) NOT NULL,
  `media` varchar(256) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(18);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `message` varchar(512) NOT NULL,
  `type` varchar(12) NOT NULL,
  `type_id` text NOT NULL,
  `send_to` varchar(64) DEFAULT NULL,
  `users_id` text DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `link` varchar(512) NOT NULL DEFAULT 'NULL',
  `date_sent` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `type`, `type_id`, `send_to`, `users_id`, `image`, `link`, `date_sent`) VALUES
(1, 'Wow! Congratulations..', 'This is Push notifications ????  test', 'default', '', 'specific_user', '[\"11\"]', NULL, 'NULL', '2024-03-23 11:45:23'),
(2, 'New Product Announcements', 'Sweets added', 'products', '2', 'all_users', '0', 'uploads/media/2024/BASMATI.jpg', 'NULL', '2024-03-23 11:47:39'),
(3, 'new', 'new', 'products', '271', 'all_users', '0', NULL, 'NULL', '2024-05-02 08:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `type` varchar(32) DEFAULT NULL,
  `type_id` int(11) DEFAULT 0,
  `link` varchar(512) NOT NULL DEFAULT 'NULL',
  `image` varchar(256) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `type`, `type_id`, `link`, `image`, `date_added`) VALUES
(1, 'default', 0, '', 'uploads/media/2024/smart_watch_offer.jpg', '2024-03-27 10:29:45'),
(2, 'categories', 5, '', 'uploads/media/2024/BLKF_head_phone.jpg', '2024-03-27 10:30:19'),
(3, 'products', 10, '', 'uploads/media/2024/cloth_offer3.jpg', '2024-03-27 10:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `mobile` varchar(12) NOT NULL,
  `total` double NOT NULL,
  `delivery_charge` double DEFAULT 0,
  `is_delivery_charge_returnable` tinyint(4) NOT NULL DEFAULT 0,
  `wallet_balance` double DEFAULT 0,
  `promo_code` varchar(28) DEFAULT NULL,
  `promo_discount` double DEFAULT NULL,
  `discount` double DEFAULT 0,
  `total_payable` double DEFAULT NULL,
  `final_total` double DEFAULT NULL,
  `payment_method` varchar(16) NOT NULL,
  `latitude` varchar(256) DEFAULT NULL,
  `longitude` varchar(256) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `delivery_time` varchar(128) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `otp` int(11) DEFAULT 0,
  `email` varchar(254) DEFAULT 'NULL',
  `notes` varchar(512) DEFAULT NULL,
  `attachments` varchar(2048) DEFAULT NULL,
  `is_pos_order` tinyint(4) NOT NULL DEFAULT 0,
  `payment_status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_bank_transfer`
--

DROP TABLE IF EXISTS `order_bank_transfer`;
CREATE TABLE `order_bank_transfer` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `attachments` varchar(512) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0 COMMENT '(0:pending|1:rejected|2:accepted)',
  `date_created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_charges`
--

DROP TABLE IF EXISTS `order_charges`;
CREATE TABLE `order_charges` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `product_variant_ids` varchar(1024) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_item_ids` varchar(1024) NOT NULL,
  `delivery_charge` double DEFAULT NULL,
  `promo_code` varchar(1024) DEFAULT 'NULL',
  `promo_discount` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `otp` int(11) NOT NULL DEFAULT 0,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `delivery_boy_id` int(11) DEFAULT NULL,
  `seller_id` int(11) NOT NULL,
  `is_credited` tinyint(4) NOT NULL DEFAULT 0,
  `otp` int(11) NOT NULL DEFAULT 0,
  `product_name` varchar(512) DEFAULT NULL,
  `variant_name` varchar(256) DEFAULT NULL,
  `product_variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `discounted_price` double DEFAULT NULL,
  `tax_percent` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT 0,
  `sub_total` double NOT NULL,
  `deliver_by` varchar(128) DEFAULT NULL,
  `updated_by` int(11) DEFAULT 0,
  `status` varchar(1024) NOT NULL,
  `admin_commission_amount` double NOT NULL DEFAULT 0,
  `seller_commission_amount` double NOT NULL DEFAULT 0,
  `active_status` varchar(1024) DEFAULT NULL,
  `hash_link` varchar(512) DEFAULT 'NULL',
  `is_sent` tinyint(4) DEFAULT 0,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_tracking`
--

DROP TABLE IF EXISTS `order_tracking`;
CREATE TABLE `order_tracking` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shiprocket_order_id` int(11) NOT NULL,
  `shipment_id` int(11) NOT NULL,
  `courier_company_id` int(11) NOT NULL DEFAULT 0,
  `awb_code` varchar(128) NOT NULL DEFAULT 'NULL',
  `pickup_status` int(11) NOT NULL,
  `pickup_scheduled_date` varchar(255) NOT NULL,
  `pickup_token_number` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `others` varchar(255) NOT NULL,
  `pickup_generated_date` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `is_canceled` int(11) NOT NULL DEFAULT 0,
  `manifest_url` varchar(512) NOT NULL,
  `label_url` varchar(512) NOT NULL,
  `invoice_url` varchar(512) NOT NULL,
  `order_item_id` mediumtext DEFAULT NULL,
  `courier_agency` varchar(20) DEFAULT NULL,
  `tracking_id` varchar(120) NOT NULL,
  `url` varchar(256) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

DROP TABLE IF EXISTS `otps`;
CREATE TABLE `otps` (
  `id` int(11) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `otp` varchar(256) NOT NULL,
  `varified` int(11) NOT NULL DEFAULT 0 COMMENT '1 : verify | 0: not verify	',
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

DROP TABLE IF EXISTS `payment_requests`;
CREATE TABLE `payment_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type` varchar(56) NOT NULL,
  `payment_address` varchar(1024) NOT NULL,
  `amount_requested` int(11) NOT NULL,
  `remarks` varchar(512) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_locations`
--

DROP TABLE IF EXISTS `pickup_locations`;
CREATE TABLE `pickup_locations` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `pickup_location` varchar(256) NOT NULL,
  `name` varchar(512) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(28) NOT NULL,
  `address` text NOT NULL,
  `address_2` text NOT NULL,
  `city` varchar(56) NOT NULL,
  `state` varchar(56) NOT NULL,
  `country` varchar(56) NOT NULL,
  `pin_code` varchar(56) NOT NULL,
  `latitude` varchar(128) DEFAULT 'NULL',
  `longitude` varchar(128) DEFAULT 'NULL',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pickup_locations`
--

INSERT INTO `pickup_locations` (`id`, `seller_id`, `pickup_location`, `name`, `email`, `phone`, `address`, `address_2`, `city`, `state`, `country`, `pin_code`, `latitude`, `longitude`, `status`, `date_added`) VALUES
(1, 12, 'Landamark', 'Aromaxx', 'a@gmail.com', '0526459861', 'Shining Tower, Abudhabi', 'Abudhabi', 'Abudhbai', 'AbuDhabi', 'UAE', '656235', '13.090337562972792', '80.1669269821765', 1, '2024-03-25 08:29:47'),
(2, 15, 'national paint', 'Shiraj', 'Nizarahamed5677@gmail.com', '6857444820', 'National paint,Muwailah,sharjah-500001', '', 'Sharjah', 'dubai', 'UAE', '500001', '', '', 0, '2025-03-20 08:33:16'),
(3, 15, 'hot building', 'asik', 'Asikraja56778@gmail.com', '9523856564', 'Near by Hot building,Sharjah-500001', '', 'Sharjah', 'dubai', 'UAE', '500001', '', '', 0, '2025-03-29 07:44:36');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_identity` varchar(50) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `tax` double DEFAULT NULL,
  `row_order` int(11) DEFAULT 0,
  `type` varchar(34) DEFAULT NULL,
  `stock_type` varchar(64) DEFAULT NULL COMMENT '0 =>''Simple_Product_Stock_Active'' 1 => "Product_Level" 1 => "Variable_Level"',
  `name` varchar(512) NOT NULL,
  `short_description` mediumtext DEFAULT NULL,
  `slug` varchar(512) NOT NULL,
  `indicator` tinyint(4) DEFAULT NULL COMMENT '0 - none | 1 - veg | 2 - non-veg',
  `cod_allowed` int(11) NOT NULL DEFAULT 1,
  `download_allowed` int(11) NOT NULL DEFAULT 0,
  `download_type` varchar(40) DEFAULT NULL,
  `download_link` varchar(512) DEFAULT NULL,
  `minimum_order_quantity` int(11) NOT NULL DEFAULT 1,
  `quantity_step_size` int(11) NOT NULL DEFAULT 1,
  `total_allowed_quantity` int(11) DEFAULT NULL,
  `is_prices_inclusive_tax` int(11) NOT NULL DEFAULT 0,
  `is_returnable` int(11) DEFAULT 0,
  `is_cancelable` int(11) DEFAULT 0,
  `cancelable_till` varchar(32) DEFAULT NULL,
  `is_attachment_required` tinyint(4) DEFAULT 0,
  `image` mediumtext NOT NULL,
  `other_images` mediumtext DEFAULT NULL,
  `video_type` varchar(32) DEFAULT NULL,
  `video` varchar(512) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `warranty_period` varchar(32) DEFAULT NULL,
  `guarantee_period` varchar(32) DEFAULT NULL,
  `made_in` varchar(128) DEFAULT NULL,
  `hsn_code` varchar(256) DEFAULT NULL,
  `brand` varchar(256) DEFAULT NULL,
  `sku` varchar(128) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `availability` tinyint(4) DEFAULT NULL,
  `rating` double DEFAULT 0,
  `no_of_ratings` int(11) DEFAULT 0,
  `description` mediumtext DEFAULT NULL,
  `extra_description` varchar(2048) NOT NULL DEFAULT 'NULL',
  `deliverable_type` int(11) DEFAULT 0 COMMENT '(0:none, 1:all, 2:include, 3:exclude)',
  `deliverable_zipcodes` varchar(512) DEFAULT NULL,
  `deliverable_city_type` int(11) NOT NULL DEFAULT 0,
  `deliverable_cities` varchar(256) DEFAULT NULL,
  `pickup_location` varchar(512) NOT NULL DEFAULT 'NULL',
  `status` int(11) DEFAULT 1,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_identity`, `category_id`, `seller_id`, `tax`, `row_order`, `type`, `stock_type`, `name`, `short_description`, `slug`, `indicator`, `cod_allowed`, `download_allowed`, `download_type`, `download_link`, `minimum_order_quantity`, `quantity_step_size`, `total_allowed_quantity`, `is_prices_inclusive_tax`, `is_returnable`, `is_cancelable`, `cancelable_till`, `is_attachment_required`, `image`, `other_images`, `video_type`, `video`, `tags`, `warranty_period`, `guarantee_period`, `made_in`, `hsn_code`, `brand`, `sku`, `stock`, `availability`, `rating`, `no_of_ratings`, `description`, `extra_description`, `deliverable_type`, `deliverable_zipcodes`, `deliverable_city_type`, `deliverable_cities`, `pickup_location`, `status`, `date_added`) VALUES
(7, NULL, 8, 15, 2, 0, 'variable_product', '1', 'Basmathi rice', 'Basmathi rice 1kg', 'basmathi-rice', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_002413660.jpg', '[]', '', '', 'Basmathi rice', '', '', 'India', '', 'PANNAIYAR', 'BR0987', 9, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-27 05:46:24'),
(288, NULL, 20, 46, 1, 0, 'simple_product', '0', 'NOODLES – LITTLE MILLET 175 GMS', 'High phosphorus in Saamai helps with fat metabolism, body tissue repair, and creating energy, especially good for people who have low body mass. It is rich in phytochemicals and has excellent antioxidant properties. Saamai reduces the chances of heart attacks.', 'noodles-little-millet-175-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'processed', 0, 'uploads/media/2025/Noodles-Little-Millet.jpg', '[\"uploads\\/media\\/2025\\/Noodles-Foxtail.jpg\"]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-3', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 07:58:06'),
(9, NULL, 11, 17, 1, 0, 'variable_product', '2', 'Axe Oil', 'Axe Oil', 'axe-oil', 1, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/Axe_oil_5_ml.jpg', '[]', '', '', 'Axe Oil', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '<p>Axe brand pain relief oil</p>', '<p>Axe brand pain relief oil</p>', 0, '', 1, NULL, ' ', 1, '2024-03-27 10:03:27'),
(6, NULL, 5, 14, 1, 0, 'simple_product', '0', 'Coconut barfi', 'Coconut barfi', 'coconut-barfi', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_212330675.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, 0, 0, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-26 19:17:02'),
(10, NULL, 12, 18, 1, 0, 'variable_product', '2', 'Kool Milk Shake', 'Kool Milk Shake', 'kool-milk-shake', 1, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/kool_Milk_Shake_Badam_200_ml.jpg', '[]', '', '', 'Milk Shake', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '<p>Kool Amul brand Milk Shake</p>', '<p>Kool Amul brand Milk Shake</p>', 0, '', 1, NULL, ' ', 1, '2024-03-27 10:17:56'),
(11, NULL, 5, 14, 1, 0, 'variable_product', NULL, 'GULAB JAMUN', 'gulab jamun', 'gulab-jamun', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_233115855.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-29 12:23:45'),
(12, NULL, 5, 14, 2, 0, 'variable_product', '2', 'JANGIRI', 'jangiri', 'jangiri', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_233049485.jpg', '[]', '', '', 'jangiri,sweets', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 07:48:24'),
(13, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'kaju katli', 'kaju katli', 'kaju-katli', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_232551240.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 07:56:16'),
(14, NULL, 5, 14, 1, 0, 'variable_product', '2', 'MYSORE PAK', 'mysore pak', 'mysore-pak', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'processed', 0, 'uploads/media/2024/InShot_20231114_231747262.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 08:07:35'),
(15, NULL, 6, 14, 2, 0, 'variable_product', NULL, 'PAKODA', 'pakoda', 'pakoda', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_231724830.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 08:12:17'),
(16, NULL, 6, 14, 2, 0, 'variable_product', NULL, 'THATTAI', 'thattai', 'thattai', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_231049879.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 08:46:41'),
(17, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'GHEE MYSORE PAK', 'ghee mysore pak', 'ghee-mysore-pak', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_212052370.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 08:48:58'),
(18, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'LADDU', 'laddu', 'laddu', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_211729278.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 08:51:39'),
(19, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'INIPPU SEV', 'inippu sev', 'inippu-sev', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_231005226.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 08:53:46'),
(20, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'BOONDHI', 'boondhi', 'boondhi', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_231126025.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 08:55:39'),
(21, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'KARUPATTI JILEBI', 'karupatti jilebi', 'karupatti-jilebi', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231118_022444311.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 08:57:45'),
(22, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'THOTHAL HALWA', 'thothal halwa', 'thothal-halwa', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_225552109.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 08:59:31'),
(23, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'PORIVILANGA URUNDAI', 'porivilanga urundai', 'porivilanga-urundai', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231118_022400908.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 09:01:28'),
(24, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'BHADUSHA', 'badhusha', 'bhadusha', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_211944321.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 09:03:20'),
(25, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'MUDICHOOR LADDU', 'mudichoor laddu', 'mudichoor-laddu', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_222223608.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 09:07:27'),
(26, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'PAAL LADDU', 'paal laddu', 'paal-laddu', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231118_022533716.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 09:09:18'),
(27, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'HALWA', 'halwa', 'halwa', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231114_223235187.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 09:40:01'),
(28, NULL, 6, 14, 2, 0, 'variable_product', NULL, 'NEI KADALAI', 'nei kadalai', 'nei-kadalai', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_223730248.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 09:43:11'),
(29, NULL, 6, 14, 2, 0, 'variable_product', NULL, 'MILAGU SEV', 'milagu sev', 'milagu-sev', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_224113127.jpg', '[]', '', '', 'snacks,tamil snacks,uae', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 09:47:50'),
(30, NULL, 6, 14, 2, 0, 'variable_product', NULL, 'MIXTURE', 'mixture', 'mixture', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_223840369.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 10:12:02'),
(31, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'SPECIAL NUTS LADDU', 'special nuts laddu', 'special-nuts-laddu', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231114_212416806.jpg', '[]', '', '', 'laddu,nuts,special laddu', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 10:14:51'),
(32, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'TIRUNELVELI HALWA', 'tirunelveli', 'tirunelveli-halwa', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231117_215217535.jpg', '[]', '', '', 'tirunelveli halwa', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 10:18:06'),
(33, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'BADAM HALWA', 'badam halwa', 'badam-halwa', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231117_220818957.jpg', '[]', '', '', 'badam,halwa,sweet', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 10:21:41'),
(34, NULL, 5, 14, 2, 0, 'variable_product', NULL, 'PALKOVA', 'palkova', 'palkova', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231117_221949014.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 10:24:28'),
(35, NULL, 5, 14, 2, 0, 'variable_product', '1', 'ADIRASAM', 'adirasam', 'adirasam', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231117_223558363.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 10:26:19'),
(36, NULL, 6, 14, 2, 0, 'variable_product', NULL, 'ANDHRA MURUKKU', 'andhra murukku', 'andhra-murukku', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231117_223513855.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 10:28:41'),
(37, NULL, 6, 14, 2, 0, 'variable_product', NULL, 'PEANUT FRY', 'peanut fry', 'peanut-fry', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231117_223440056.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 10:30:49'),
(38, NULL, 6, 14, 2, 0, 'variable_product', NULL, 'MASALA KADALAI', 'masala kadai', 'masala-kadalai', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231117_223353786.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 10:33:52'),
(39, NULL, 6, 14, 2, 0, 'variable_product', NULL, 'OLA PAKKODA', 'ola pakkoda', 'ola-pakkoda', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231117_223323729.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 10:36:12'),
(40, NULL, 6, 14, 2, 0, 'variable_product', NULL, 'OMAPODI SEV', 'omapodi sev', 'omapodi-sev', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231117_223248078.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 10:40:33'),
(41, NULL, 6, 14, 2, 0, 'variable_product', NULL, 'KAARA BOONDHI', 'kaara boondhi', 'kaara-boondhi', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231117_223155601.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 10:42:36'),
(42, NULL, 6, 14, 2, 0, 'variable_product', NULL, 'CASHEW PAKODA', 'cashew pakoda', 'cashew-pakoda', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231117_223107618.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 10:45:20'),
(43, NULL, 5, 14, 2, 0, 'variable_product', '2', 'DATES & NUTS BARFI', 'dates and nuts barfi', 'dates-nuts-barfi', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231118_022626320.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-03-30 10:47:31'),
(287, NULL, 20, 46, 1, 0, 'simple_product', '0', 'NOODLES – KODO MILLET 175 GMS', 'NOODLES – KODO MILLET 175 GMS', 'noodles-kodo-millet-175-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'processed', 0, 'uploads/media/2025/Noodles-Kodo-Millet.jpg', '[]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-3-1-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 07:52:31'),
(286, NULL, 20, 46, 1, 0, 'simple_product', '0', 'NOODLES – FOXTAIL MILLET 175 GMS', 'NOODLES – FOXTAIL MILLET 175 GMS', 'noodles-foxtail-millet-175-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'processed', 0, 'uploads/media/2025/Noodles-Foxtail-Millet.jpg', '[\"uploads\\/media\\/2025\\/Noodles-Foxtail.jpg\"]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-3-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 07:49:17'),
(285, NULL, 20, 46, 1, 0, 'simple_product', '0', 'KUDHIRAI VAALI BARNYARD MILLET – Premium 500 GMS', 'High phosphorus in Saamai helps with fat metabolism, body tissue repair, and creating energy, especially good for people who have low body mass. It is rich in phytochemicals and has excellent antioxidant properties. Saamai reduces the chances of heart attacks.', 'kudhirai-vaali-barnyard-millet-premium-500-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'processed', 0, 'uploads/media/2025/KUDHIRAI-VAALI-BARNYARD-MILLETJPG.jpg', '[\"uploads\\/media\\/2025\\/Kudhirai.jpg\"]', '', '', 'preminum millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 07:45:10'),
(284, NULL, 23, 46, 1, 0, 'simple_product', '0', 'Pure COW GHEE 500 GMS', 'It is prepared by gently heating butter until it becomes a clear golden liquid. It is light & pure. Cow ghee is sweet in taste, cold in nature, and has a sweet after-taste. Ghee is a variation of clarified butter that is popular in the culinary traditions of the Middle East and India. It is made from cow milk butter, which is treated with low heat until the water evaporates, leaving behind milk solids.', 'pure-cow-ghee-500-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Ghee.png', '[\"uploads\\/media\\/2025\\/57-removebg-preview-min.png\"]', '', '', 'cow ghee,pure ghee,premium ghee', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'E2022-H019', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 07:39:26'),
(283, NULL, 18, 46, 1, 0, 'simple_product', '0', 'GROUNDNUT OIL Cold Pressed – 1 LITRE', 'It is loaded with antioxidants. It promotes heart health. Groundnut oil is free from cholesterol, which makes it a healthy fat. It helps in fighting cancer, boosts skin health, and helps to improve insulin sensitivity.\\r\\nIt is 100% Pure, Chemical Free, and unrefined oil at the best price in the market.', 'groundnut-oil-cold-pressed-1-litre', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/groundnut_oil.png', '[]', '', '', 'cold,cooking oil,ground oil,peanut oil', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'A2022-H02', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 07:33:08'),
(282, NULL, 18, 46, 1, 0, 'simple_product', '0', 'COCONUT OIL Cold Pressed – 1 LITRE', 'Cold pressed coconut oil is excellent if you’re adding coconut oil to your diet for its antioxidants and anti-microbial benefits. Because it retains more natural constituents than refined coconut oil, you’ll get the maximum benefits. It’s ideal for high heat cooking, such as stir-frying and sauteing.', 'coconut-oil-cold-pressed-1-litre', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'processed', 0, 'uploads/media/2025/Coconut_oil.png', '[]', '', '', 'coconut oil,cold presses,organic oil', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'A2022-H03', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 07:25:49'),
(281, NULL, 18, 46, 1, 0, 'simple_product', '0', 'SESAME OIL Cold Pressed – 1 LITRE', 'Premium Cold Pressed oil 1 Litre\\r\\n\\r\\nSesame oil is completely free of toxic components. This oil contains more unsaturated fatty acids than many other vegetable oils. The high proportion of unsaturated fatty acids renders sesame oil an important source of essential fatty acids in the diet. Cold-pressed sesame oil is a good source of vitamin E, containing 11.8 mg of the vitamin for every 100 g of the oil. Vitamin E gives sesame oil its antioxidant property. It also has a high concentration of fatty acids, including polyunsaturated omega-6 fatty acids and monounsaturated omega-9 fatty acids.', 'sesame-oil-cold-pressed-1-litre', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'processed', 0, 'uploads/media/2025/Sesame_oil.png', '[]', '', '', 'oil,sesame oil', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'A2022-H01', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 07:21:49'),
(271, NULL, 5, 22, 2, 0, 'simple_product', '0', 'chocolate', '.', 'chocolate', 0, 1, 0, '', '', 1, 1, NULL, 1, 1, 1, 'received', 0, 'uploads/media/2024/Milka_Alpine_Milk_Chocolate_bar_100g_with_chunks_broken_off.jpg', '[]', '', '', '', '', '', NULL, '', NULL, '1231', 2, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-05-01 08:42:57'),
(68, NULL, 8, 15, 2, 0, 'variable_product', NULL, 'RAW RICE', 'raw rice from pannaiyar', 'raw-rice', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20240402_125050869.jpg', '[]', '', '', '', '', '', NULL, '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-02 08:46:20'),
(69, NULL, 8, 15, 2, 0, 'variable_product', NULL, 'PONNI BOILED RICE', 'TNANJAVUR PONNI BOILED RICE', 'ponni-boiled-rice', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_002952974.jpg', '[]', '', '', 'PONNI', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-02 09:17:18'),
(70, NULL, 8, 15, 2, 0, 'variable_product', NULL, 'IDLY RICE', 'IDLY RICE', 'idly-rice', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_005027141.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-02 11:09:18'),
(71, NULL, 8, 15, 2, 0, 'variable_product', NULL, 'SEERAGA SAMBA RICE', 'seeraga samba rice', 'seeraga-samba-rice', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231229_105028405.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-02 11:40:17'),
(72, NULL, 13, 15, 2, 0, 'simple_product', NULL, 'BARNYARD MILLET NOODLES(KUTHIRAIVALI)', 'MILLET NOODLES-175 GM', 'barnyard-millet-noodleskuthiraivali', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240117_173732864.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-02 11:51:47'),
(73, NULL, 13, 15, 2, 0, 'simple_product', NULL, 'FOXTAIL MILLET (THINAI) NOODLES', 'MILLET NOODLES-175 GM', 'foxtail-millet-thinai-noodles', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Vathalkulambu_Masala_250_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-02 11:54:56'),
(74, NULL, 13, 15, 2, 0, 'simple_product', NULL, 'KODO MILLET (VARAGU) NOODLES', 'MILLET NOODLES-175 GM', 'kodo-millet-varagu-noodles', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240117_173544022.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-02 11:59:02'),
(75, NULL, 13, 15, 2, 0, 'simple_product', NULL, 'PEARL MILLET(KAMBU) NOODLES', 'MILLET NOODLES-175 GM', 'pearl-milletkambu-noodles', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240117_173408755.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-02 12:13:43'),
(76, NULL, 13, 15, 2, 0, 'simple_product', NULL, 'LITTLE MILLET(SAMAI) NOODLES', 'MILLET NOODLES-175 GM', 'little-milletsamai-noodles', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240117_173634694.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-02 12:15:40'),
(77, NULL, 13, 15, 2, 0, 'simple_product', NULL, 'RICE MILLET NOODLES', 'MILLET NOODLES-175 GM', 'rice-millet-noodles', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240117_173445440.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-02 12:17:33'),
(78, NULL, 14, 15, 2, 0, 'simple_product', NULL, 'PONGAL RICE MIX', 'PONGAL-READY TO COOK', 'pongal-rice-mix', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Vathalkulambu_Masala_250_gm.png', '[]', '', '', '', '', '', 'India', '', 'ANIL', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 08:35:01'),
(79, NULL, 14, 15, 2, 0, 'simple_product', NULL, 'RAVA DOSA MIX', 'RAVA DOSA MIX', 'rava-dosa-mix', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Vathalkulambu_Masala_250_gm.png', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 08:38:13'),
(80, NULL, 14, 15, 2, 0, 'simple_product', NULL, 'ANIL SAMBAR RICE MIX', 'SAMBAR RICE MIX-READY TO COOK', 'anil-sambar-rice-mix', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Vathalkulambu_Masala_250_gm.png', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 08:40:56'),
(81, NULL, 14, 15, 2, 0, 'simple_product', NULL, 'HEALTH MIX(SIRUTHANIYAM)', 'HEALT MIX-READY TO COOK', 'health-mixsiruthaniyam', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Vathalkulambu_Masala_250_gm.png', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 08:42:52'),
(82, NULL, 14, 15, 2, 0, 'simple_product', NULL, 'BAJJI BONDA MIX', 'BAJJI BONDA MIX-READY TO COOK', 'bajji-bonda-mix', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Vathalkulambu_Masala_250_gm.png', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 08:44:24'),
(83, NULL, 14, 15, 2, 0, 'simple_product', NULL, 'KOLUKATTAI MAAVU', 'KOLUKATTAI MAAVU-READY TO COOK', 'kolukattai-maavu', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240117_170128801_(1).jpg', '[]', '', '', '', '', '', 'India', '', 'ANIL', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 08:46:23'),
(84, NULL, 15, 15, 2, 0, 'simple_product', NULL, 'CUMIN SEEDS', 'WHOLE SPICE', 'cumin-seeds', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231215_111933900.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 09:10:09'),
(85, NULL, 15, 15, 2, 0, 'simple_product', NULL, 'FENNEL SEED', 'WHOLE SPICE', 'fennel-seed', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231215_112027069.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 09:13:19'),
(86, NULL, 15, 15, 2, 0, 'simple_product', NULL, 'FENUGREEK(VENDHAYAM)', 'WHOLE SPICE', 'fenugreekvendhayam', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231215_111832197.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 09:16:11'),
(87, NULL, 15, 15, 2, 0, 'simple_product', NULL, 'MUSTARD SEEDS (KADUKU)', 'WHOLE SPICE', 'mustard-seeds-kaduku', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231215_111607509.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 09:18:13'),
(88, NULL, 15, 15, 2, 0, 'simple_product', NULL, 'BLACK PEPPER', 'WHOLE SPICE', 'black-pepper', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_005654521.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 09:20:16'),
(89, NULL, 15, 15, 2, 0, 'variable_product', NULL, 'TAMARIND', 'TAMARIND-WHOLE', 'tamarind', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_002915181.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 09:24:24'),
(90, NULL, 10, 15, 2, 0, 'simple_product', NULL, 'ASAFOETIDA POWDER', 'ASAFOETIDA', 'asafoetida-powder', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_005530498.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 09:26:16'),
(91, NULL, 15, 15, 2, 0, 'simple_product', NULL, 'CLOVE', 'CLOVE', 'clove', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_003115099.jpg', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 09:30:28'),
(92, NULL, 15, 15, 2, 0, 'simple_product', NULL, 'CARDAMON', 'WHOLE SPICE', 'cardamon', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_005557065.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 09:35:41'),
(93, NULL, 15, 15, 2, 0, 'simple_product', NULL, 'CHILLI LONG', 'CHILLI LONG', 'chilli-long', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_002831470.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 10:39:39'),
(94, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'BADAM PISIN', 'BADAM PISIN', 'badam-pisin', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_003139383.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 10:42:32'),
(95, NULL, 15, 15, 2, 0, 'simple_product', NULL, 'HILL GARLIC', 'HILL GARLIC', 'hill-garlic', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Vathalkulambu_Masala_250_gm.png', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 10:44:44'),
(96, NULL, 7, 15, 2, 0, 'variable_product', NULL, 'ANIL APPALAM', 'ANIL APPALAM', 'anil-appalam', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_184700997.jpg', '[]', '', '', '', '', '', 'India', '', 'ANIL', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 10:54:12'),
(97, NULL, 10, 15, 2, 0, 'simple_product', NULL, 'IDITHA KULAMBU MASALA', 'MASALA', 'iditha-kulambu-masala', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240117_170358377.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 11:13:50'),
(98, NULL, 10, 15, 2, 0, 'simple_product', NULL, 'IDITHA SAMBAR MASALA', 'SAMBAR MASALA', 'iditha-sambar-masala', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240117_172008956.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-03 11:24:51'),
(99, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'ANIL RAGI SEMIYA', 'RAGI SEMIYA', 'anil-ragi-semiya', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_112609677.jpg', '[]', '', '', '', '', '', 'India', '', 'ANIL', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 07:45:48'),
(100, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'ANIL THINAI SEMIYA', 'THINAI SEMIYA', 'anil-thinai-semiya', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_1143447071.jpg', '[]', '', '', '', '', '', 'India', '', 'ANIL', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 08:42:34'),
(101, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'ANIL VARAGU SEMIYA', 'VARAGU SEMIYA', 'anil-varagu-semiya', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240404_1129082071.jpg', '[]', '', '', '', '', '', 'India', '', 'ANIL', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 08:44:44'),
(102, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'ANIL KAMBU SEMIYA', 'KAMBU SEMIYA', 'anil-kambu-semiya', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_1147319111.jpg', '[]', '', '', '', '', '', 'India', '', 'ANIL', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 08:48:10'),
(103, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'ANIL ROASTED SEMIYA', 'ROASTED SEMIYA', 'anil-roasted-semiya', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240404_1130015561.jpg', '[]', '', '', '', '', '', 'India', '', 'ANIL', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 08:50:03'),
(104, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'ANIL ROASTED RAVA', 'ROASTED RAVA', 'anil-roasted-rava', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240404_1131018711.jpg', '[]', '', '', '', '', '', 'India', '', 'ANIL', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 08:52:33'),
(105, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'ANIL MAIDA', 'MAIDA', 'anil-maida', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_1156308961.jpg', '[]', '', '', '', '', '', 'India', '', 'ANIL', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 08:54:36'),
(106, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'ANIL MURUKKU MAVU', 'MURUKKU MAVU', 'anil-murukku-mavu', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_115913220.jpg', '[]', '', '', '', '', '', 'India', '', 'ANIL', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 08:57:01'),
(107, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'ANIL SAMBA WHEAT RAVA', 'WHEAT RAVA', 'anil-samba-wheat-rava', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_1204234011.jpg', '[]', '', '', '', '', '', 'India', '', 'ANIL', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 08:59:45'),
(108, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'ANIL IDIYAPPAM MAVU', 'IDIYAPPAM MAVU', 'anil-idiyappam-mavu', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240404_1132339401.jpg', '[]', '', '', '', '', '', 'India', '', 'ANIL', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 09:01:41'),
(109, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'VERMICELLI', 'VERMICELLI', 'vermicelli', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_1809439431.jpg', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 09:03:43'),
(110, NULL, 16, 15, 2, 0, 'variable_product', NULL, 'HOME MADE PICKLES', 'HOMEMADE PICKLES FROM PANNAIYAR', 'home-made-pickles', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231215_111239719.jpg', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 09:33:05'),
(111, NULL, 17, 15, 2, 0, 'simple_product', NULL, 'ROUND JAGGERY', 'Round jaggery', 'round-jaggery', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_164026076.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 09:44:12'),
(112, NULL, 17, 15, 2, 0, 'simple_product', NULL, 'PANAIKARKANDU', 'panaikarkandu', 'panaikarkandu', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Vathalkulambu_Masala_250_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 09:48:04'),
(113, NULL, 17, 15, 2, 0, 'simple_product', NULL, 'KARUPATTI', 'KARUPATTI', 'karupatti', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Vathalkulambu_Masala_250_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 09:50:21'),
(114, NULL, 17, 15, 2, 0, 'simple_product', NULL, 'JAGGERY(NAATUSARKARAI)', 'NAATUSARKARAI', 'jaggerynaatusarkarai', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_010519261.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 09:53:00'),
(115, NULL, 17, 15, 2, 0, 'simple_product', NULL, 'SUGAR', 'WHITE SUGAR', 'sugar', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231229_102800400.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 09:55:00'),
(116, NULL, 17, 15, 2, 0, 'simple_product', NULL, 'SILLU KARUPATTI', 'SILLU KARUPATTI', 'sillu-karupatti', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_005049405_(1).jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 09:57:45'),
(117, NULL, 23, 15, 2, 0, 'simple_product', NULL, 'GHEE (HOMEMADE)', 'GHEE', 'ghee-homemade', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240404_140648235.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 10:16:07'),
(118, NULL, 19, 15, 2, 0, 'simple_product', NULL, 'NARASU\\\'S PURE INSTANT COFFE', 'INSTANT COFFE', 'narasus-pure-instant-coffe', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_181315102.jpg', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 10:18:49'),
(119, NULL, 19, 15, 2, 0, 'simple_product', NULL, 'COTHAS COFFEE', 'COTHAS COFFEE POWDER', 'cothas-coffee', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_005353067.jpg', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 10:21:34'),
(120, NULL, 19, 15, 2, 0, 'simple_product', NULL, 'RAJAM SUKKU COFFEE POWDER', 'SUKKU COFFEE POWDER', 'rajam-sukku-coffee-powder', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_010410650.jpg', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 10:24:25'),
(121, NULL, 18, 15, 2, 0, 'simple_product', NULL, 'COCONUT OIL', 'PURE CHEKKU OIL', 'coconut-oil', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240113_190817640.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 10:38:46'),
(122, NULL, 18, 15, 2, 0, 'simple_product', NULL, 'GINGELLY OIL', 'PURE CHEKKU OIL', 'gingelly-oil', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240113_190746157.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 10:44:36'),
(123, NULL, 18, 15, 2, 0, 'simple_product', NULL, 'GROUND NUT OIL', 'PURE CHEKKU OIL', 'ground-nut-oil', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240113_190708056.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 11:16:08'),
(124, NULL, 18, 15, 2, 0, 'simple_product', NULL, 'DEEPAM OIL', 'OIL', 'deepam-oil', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_185129972.jpg', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 11:18:17'),
(125, NULL, 18, 15, 2, 0, 'simple_product', NULL, 'CASTOR OIL', 'CASTOR OIL', 'castor-oil', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_005234083.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 11:20:25'),
(126, NULL, 20, 15, 2, 0, 'simple_product', NULL, 'KARUPU KAVUNI RICE', 'MILLET RICE', 'karupu-kavuni-rice', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_005731798.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 11:40:09'),
(127, NULL, 20, 15, 2, 0, 'simple_product', NULL, 'BARNYARD MILLET RICE', 'KUTHIRAI VALI', 'barnyard-millet-rice', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240117_170432145.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 11:43:06'),
(128, NULL, 20, 15, 2, 0, 'simple_product', NULL, 'BAMBOO RICE', 'MOONGIL RICE', 'bamboo-rice', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231229_102958421.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 11:48:49'),
(129, NULL, 20, 15, 2, 0, 'simple_product', NULL, 'LITTLE MILLET RICE', 'SAMAI', 'little-millet-rice', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240117_171849645.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 11:52:47'),
(130, NULL, 20, 15, 2, 0, 'simple_product', NULL, 'FOXTAIL MILLET', 'THINAI', 'foxtail-millet', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_001025060.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 11:55:22'),
(131, NULL, 20, 15, 2, 0, 'simple_product', NULL, 'MAPILLAI SAMBA RICE', 'MAPILLAI SAMBA', 'mapillai-samba-rice', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231229_102043141.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 11:58:43'),
(132, NULL, 20, 15, 2, 0, 'simple_product', NULL, 'RAGI WHOLE', 'RAGI', 'ragi-whole', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_005852616.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 12:02:28'),
(133, NULL, 20, 15, 2, 0, 'simple_product', NULL, 'SAMBA WHEAT RAVA', 'WHEAT RAVA', 'samba-wheat-rava', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231229_103307568.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 12:04:59'),
(134, NULL, 20, 15, 2, 0, 'simple_product', NULL, 'PEARL MILLET', 'KAMBU', 'pearl-millet', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240117_171811147.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 12:07:34'),
(135, NULL, 20, 15, 2, 0, 'simple_product', NULL, 'PEARL MILLET POWDER', 'KAMBU POWDER', 'pearl-millet-powder', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_005818621.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 12:09:56'),
(136, NULL, 20, 15, 2, 0, 'simple_product', NULL, 'RAGI POWDER', 'RAGI POWDER', 'ragi-powder', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_005929464.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 12:12:18'),
(137, NULL, 20, 15, 2, 0, 'simple_product', NULL, 'WHEAT FLOUR', 'ATTA', 'wheat-flour', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231229_101710116.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 12:15:05'),
(138, NULL, 20, 15, 2, 0, 'simple_product', NULL, 'KODO MILLET', 'VARAGU', 'kodo-millet', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Vathalkulambu_Masala_250_gm.png', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 12:17:49'),
(139, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'IDLY PODI', 'IDLY PODI', 'idly-podi', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Whole_Pottukadalai_500_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 12:47:51'),
(140, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'ELLU PODI', 'ELLU PODI', 'ellu-podi', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Whole_Pottukadalai_500_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 12:51:30'),
(141, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'DAL PODI', 'DAL PODI', 'dal-podi', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231215_110915803.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 12:53:47'),
(142, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'CURRY LEAVES POWDER', 'CURRY LEAVES POWDER', 'curry-leaves-powder', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231229_103614643.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 12:56:59'),
(143, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'PIRANDAI PODI', 'PIRANDAI PODI', 'pirandai-podi', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231215_111145360.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 12:59:55'),
(144, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'HORSE GRAM POWDER', 'HORSE GRAM POWDER', 'horse-gram-powder', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Whole_Pottukadalai_500_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 13:02:37'),
(145, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'SABJEE SEED', 'SABJEE SEED', 'sabjee-seed', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_010544160.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 13:05:16'),
(146, NULL, 7, 15, 2, 0, 'variable_product', NULL, 'RAJAM SUKKU', 'RAJAM SUKKU WHOLE', 'rajam-sukku', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Whole_Pottukadalai_500_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 13:07:33'),
(147, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'POONGAR RICE', 'POONGAR RICE', 'poongar-rice', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_165812543.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 13:14:26'),
(148, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'THOOYA MALLI RICE', 'THOOYA MALLI RICE', 'thooya-malli-rice', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_170549969.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 13:16:58'),
(149, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'PORI', 'PORI', 'pori', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Whole_Pottukadalai_500_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 13:21:20'),
(150, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'OMAM', 'OMAM', 'omam', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231229_103800613.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 13:28:16'),
(151, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'BROWN SUGAR', 'BROWN SUGAR', 'brown-sugar', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_163422342.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-04 13:34:43'),
(152, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'DRY SUKKU', 'DRY GINGER', 'dry-sukku', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_005420296.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 08:09:46'),
(153, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'WHOLE POTTU KADALAI', 'POTTUKADALAI', 'whole-pottu-kadalai', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Whole_Pottukadalai_500_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 08:11:58'),
(154, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'BAY LEAF', 'BAY LEAF', 'bay-leaf', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231229_101539127.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 08:14:10'),
(155, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'STONE FLOWER', 'STONE FLOWER', 'stone-flower', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Whole_Pottukadalai_500_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 08:16:42'),
(156, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'SAKTHI IDLY PODI', 'IDLY PODI', 'sakthi-idly-podi', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_005324854.jpg', '[]', '', '', '', '', '', 'India', '', 'SAKTHI', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 08:19:33'),
(157, NULL, 7, 15, 2, 0, 'simple_product', NULL, 'SAKTHI BAJJI BONDA MIX', 'BAJJI BONDA MIX', 'sakthi-bajji-bonda-mix', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240404_162602534.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 08:22:06'),
(158, NULL, 21, 15, 2, 0, 'simple_product', NULL, 'TOOR DAL', 'THUVARAM PARUPPU', 'toor-dal', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_164322793.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 09:57:32'),
(159, NULL, 21, 15, 2, 0, 'simple_product', NULL, 'URAD DAL', 'ULUNTHAM PARUPPU', 'urad-dal', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_164437538.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 10:01:07');
INSERT INTO `products` (`id`, `product_identity`, `category_id`, `seller_id`, `tax`, `row_order`, `type`, `stock_type`, `name`, `short_description`, `slug`, `indicator`, `cod_allowed`, `download_allowed`, `download_type`, `download_link`, `minimum_order_quantity`, `quantity_step_size`, `total_allowed_quantity`, `is_prices_inclusive_tax`, `is_returnable`, `is_cancelable`, `cancelable_till`, `is_attachment_required`, `image`, `other_images`, `video_type`, `video`, `tags`, `warranty_period`, `guarantee_period`, `made_in`, `hsn_code`, `brand`, `sku`, `stock`, `availability`, `rating`, `no_of_ratings`, `description`, `extra_description`, `deliverable_type`, `deliverable_zipcodes`, `deliverable_city_type`, `deliverable_cities`, `pickup_location`, `status`, `date_added`) VALUES
(160, NULL, 21, 15, 2, 0, 'simple_product', NULL, 'MOONG DAL', 'PAASI PARUPPU', 'moong-dal', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_163928321.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 10:04:49'),
(161, NULL, 21, 15, 2, 0, 'simple_product', NULL, 'CHANA DAL', 'KADALAI PARUPPU', 'chana-dal', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_163837998.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 10:08:14'),
(162, NULL, 21, 15, 2, 0, 'simple_product', NULL, 'WHITE CHANNA', 'VELLAI KONDAI KADALAI', 'white-channa', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_171031289.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 10:10:53'),
(163, NULL, 21, 15, 2, 0, 'simple_product', NULL, 'BLACK CHANNA', 'KARUPU KONDAI KADALAI', 'black-channa', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_164530596.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 10:40:12'),
(164, NULL, 21, 15, 2, 0, 'simple_product', NULL, 'MOONG DAL WHOLE', 'MOONG DAL', 'moong-dal-whole', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Whole_Pottukadalai_500_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 10:43:53'),
(165, NULL, 21, 15, 2, 0, 'simple_product', NULL, 'BLACK URAD DAL SPLIT', 'URAL DAL', 'black-urad-dal-split', 1, 0, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/Whole_Pottukadalai_500_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 10:45:56'),
(166, NULL, 21, 15, 2, 0, 'variable_product', NULL, 'URAD DAL SPLIT', 'URAD DAL', 'urad-dal-split', 1, 1, 0, '', '', 1, 1, NULL, 0, 0, 1, 'received', 0, 'uploads/media/2024/Whole_Pottukadalai_500_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 10:47:21'),
(167, NULL, 21, 15, 2, 0, 'simple_product', NULL, 'BROWN MOCHAI', 'BROWN MOCHAI', 'brown-mochai', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Whole_Pottukadalai_500_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 10:55:14'),
(168, NULL, 21, 15, 2, 0, 'simple_product', NULL, 'WHITE MOCHAI', 'WHITE MOCHAI', 'white-mochai', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Whole_Pottukadalai_500_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 10:58:59'),
(169, NULL, 21, 15, 2, 0, 'simple_product', NULL, 'KAARAMANI PAYARU', 'KARAMANI PAYARU', 'kaaramani-payaru', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Whole_Pottukadalai_500_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 11:02:50'),
(170, NULL, 21, 15, 2, 0, 'simple_product', NULL, 'ROASTED PEANUT', 'PEANUT', 'roasted-peanut', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240117_170240922.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 11:06:13'),
(171, NULL, 21, 15, 2, 0, 'simple_product', NULL, 'RAW PEANUT', 'PEANUT', 'raw-peanut', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231229_102222855.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 11:07:56'),
(172, NULL, 21, 15, 2, 0, 'simple_product', NULL, 'GREEN PEAS', 'GREEN PEAS', 'green-peas', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/Whole_Pottukadalai_500_gm.png', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 11:09:40'),
(173, NULL, 21, 15, 2, 0, 'simple_product', NULL, 'HORSE GRAM', 'KOLLU', 'horse-gram', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_010057319.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 11:11:25'),
(174, NULL, 21, 15, 2, 0, 'variable_product', NULL, 'RICE FLAKES', 'AVAL', 'rice-flakes', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20231205_170056179.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 11:13:30'),
(175, NULL, 21, 15, 2, 0, 'variable_product', NULL, 'SEASAME SEED', 'ELLU', 'seasame-seed', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240118_022218004.jpg', '[]', '', '', '', '', '', 'India', '', 'PANNAIYAR', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-05 11:20:22'),
(176, NULL, 12, 18, 2, 0, 'variable_product', NULL, 'KOOL PET', 'AMUL KOOL PET', 'kool-pet', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_134238836.jpg', '[]', '', '', '', '', '', 'India', '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 07:14:59'),
(177, NULL, 12, 18, 2, 0, 'variable_product', NULL, 'KOOL MILK SHAKE', 'AMUL KOOL MILK SHAKE CAN', 'kool-milk-shake-1', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_133905401.jpg', '[]', '', '', '', '', '', 'India', '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 07:22:41'),
(178, NULL, 12, 18, 2, 0, 'simple_product', NULL, 'PINA COLADA', 'PINA COLADA COCKTAIL', 'pina-colada', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_134109370.jpg', '[]', '', '', '', '', '', 'India', '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 07:27:54'),
(179, NULL, 12, 18, 2, 0, 'variable_product', NULL, 'BUTTER MILK', 'BUTTER MILK', 'butter-milk', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_134614284.jpg', '[]', '', '', '', '', '', 'India', '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 07:31:03'),
(180, NULL, 12, 18, 2, 0, 'variable_product', NULL, 'LASSI', 'AMUL LASSI', 'lassi', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_134839184.jpg', '[]', '', '', '', '', '', 'India', '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 07:39:09'),
(181, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'AXE OIL', 'Axe Oil', 'axe-oil-1', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_004614413.jpg', '[]', '', '', '', '', '', NULL, '', 'Axe Brand', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 08:05:34'),
(182, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'Red flower Oil', 'Axe red Flower Oil', 'red-flower-oil', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_004825951.jpg', '[]', '', '', '', '', '', NULL, '', 'Axe Brand', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 09:24:00'),
(183, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'AGAR AGAR', 'AGAR AGAR', 'agar-agar', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_001703711.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 09:30:10'),
(184, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'VICKS VAPORUB', 'VICKS', 'vicks-vaporub', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_235858499.jpg', '[]', '', '', '', '', '', NULL, '', 'Vicks', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 09:39:17'),
(185, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'HAJEE MAKKAH OIL', 'hajee makkah oil', 'hajee-makkah-oil', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_005544106.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 09:42:09'),
(186, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'EAGLE MEDICATED OIL', 'Eagle Medicated Oil', 'eagle-medicated-oil', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_005122068.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 09:46:52'),
(187, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'EAGLE BALM', 'Balsem Balm', 'eagle-balm', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_005001677.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 09:49:32'),
(188, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'GELINA OIL', 'Gelina oil', 'gelina-oil', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_005220380.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 09:51:42'),
(189, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'GELINA BALM', 'Gelina balm', 'gelina-balm', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_005148582.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 09:52:46'),
(190, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'COUNTER PAIN BALM', 'COUNTER PAIN BALM', 'counter-pain-balm', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_004902614.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 09:56:07'),
(191, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'COUNTER PAIN COOL', 'COOL', 'counter-pain-cool', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_004938805.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 09:57:40'),
(192, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'GOLD MEDAL OIL', 'MEDICATED OIL', 'gold-medal-oil', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_005425605.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:11:51'),
(193, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'ICE COLOGNE', 'Ice Cologne', 'ice-cologne', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_005729320.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:14:55'),
(194, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'KWAN LOONG MEDICATED OIL', 'MEDICATED OIL', 'kwan-loong-medicated-oil', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_005808380.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:17:04'),
(195, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'SIDHALEPHA BALM', 'BALM', 'sidhalepha-balm', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_233408260.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:20:16'),
(196, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'SLOAN\\\'S LINIMENT OIL', 'OIL', 'sloans-liniment-oil', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_234308669.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:24:17'),
(197, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'VAPEX 2 IN 1', '2 IN 1', 'vapex-2-in-1', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_235801951.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:25:41'),
(198, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'VAPEX INHALANT', 'INHALANT', 'vapex-inhalant', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_235828582.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:27:15'),
(199, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'WHITE FLOWER OIL', 'OIL', 'white-flower-oil', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240117_000105714.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:28:40'),
(200, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'MOO TOONG LINIMENT', 'LINIMENT', 'moo-toong-liniment', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_020047681.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:39:20'),
(201, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'MOO TOONG CLOVE OIL', 'CLOVE OIL', 'moo-toong-clove-oil', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_005843332.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:40:43'),
(202, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'MOO TOONG INSECT REPELLENT', 'INSECT REPELLENT', 'moo-toong-insect-repellent', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_015917867.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:42:13'),
(203, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'MOO TOONG MEDICATED OIL', 'MEDICATED OIL', 'moo-toong-medicated-oil', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_171511553.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:44:16'),
(204, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'MOO TOONG MEDI BALM', 'Balm', 'moo-toong-medi-balm', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_171141375.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:45:43'),
(205, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'MOO TONG PLASTER PATCHES', 'PATCHES', 'moo-tong-plaster-patches', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_020348211.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:47:00'),
(206, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'YOKO YOKO OIL', 'OIL', 'yoko-yoko-oil', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240117_000212643.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:49:08'),
(207, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'YU YEE OIL', 'OIL', 'yu-yee-oil', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240117_000253039.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:51:25'),
(208, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'PIGEON OIL', 'OIL', 'pigeon-oil', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_020423021.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 10:52:41'),
(209, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'SIANG PURE BALM', 'BALM', 'siang-pure-balm', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_020638612.jpg', '[]', '', '', '', '', '', NULL, '', 'SIANG PURE', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 11:03:09'),
(210, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'SIANG PURE WHITE CREAM', 'WHITE CREAM', 'siang-pure-white-cream', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_020754733.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 11:09:10'),
(211, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'SIANG PURE INHALER', 'INHALER', 'siang-pure-inhaler', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_113122726.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 11:11:40'),
(212, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'SIANG PURE OIL', 'PURE OIL', 'siang-pure-oil', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_231936902.jpg', '[]', '', '', '', '', '', NULL, '', 'SIANG PURE', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 11:17:14'),
(213, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'SIANG PURE ROLL ON', '3 CC', 'siang-pure-roll-on', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_232934940.jpg', '[]', '', '', '', '', '', NULL, '', 'SIANG PURE', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 11:21:53'),
(214, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'TIGER BALM', 'BALM', 'tiger-balm', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_235053784.jpg', '[]', '', '', '', '', '', NULL, '', 'TIGER', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 11:26:42'),
(215, NULL, 11, 17, 2, 0, 'variable_product', NULL, 'TIGER OIL', 'LINIMENT', 'tiger-oil', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_235937456.jpg', '[]', '', '', '', '', '', NULL, '', 'TIGER', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 11:31:36'),
(216, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'TIGER MUSCLE RUB', 'OINMENT', 'tiger-muscle-rub', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_235635504.jpg', '[]', '', '', '', '', '', NULL, '', 'TIGER', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 11:32:52'),
(217, NULL, 11, 17, 2, 0, 'simple_product', NULL, 'TIGER NECK AND SHOULDER RUB', 'NECK AND SHOULDER RUB', 'tiger-neck-and-shoulder-rub', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240116_235702035.jpg', '[]', '', '', '', '', '', NULL, '', 'TIGER', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 11:34:13'),
(218, NULL, 22, 18, 2, 0, 'variable_product', NULL, 'AMUL CHEESE SPREAD', 'CHEESE SPREAD', 'amul-cheese-spread', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_032356821.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 12:08:32'),
(219, NULL, 12, 18, 2, 0, 'simple_product', '0', 'CHEESE TIN', 'cheese tin', 'cheese-tin', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_031857728.jpg', '[]', '', '', '', '', '', 'India', '', 'Amul', '1', 0, 0, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 12:22:47'),
(220, NULL, 22, 18, 2, 0, 'simple_product', NULL, 'CHEESE CHIPLET', 'CHIPLET', 'cheese-chiplet', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_032145475.jpg', '[]', '', '', '', '', '', NULL, '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 12:24:51'),
(221, NULL, 22, 18, 2, 0, 'simple_product', NULL, 'CHEESE SLICE', 'SLICE', 'cheese-slice', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_032121429.jpg', '[]', '', '', '', '', '', NULL, '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 12:25:59'),
(222, NULL, 22, 18, 2, 0, 'simple_product', NULL, 'PROCESSED CHEESE BLOCK', 'CHEESE BLOCK', 'processed-cheese-block', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_032048540.jpg', '[]', '', '', '', '', '', 'India', '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 12:27:23'),
(223, NULL, 22, 18, 2, 0, 'simple_product', NULL, 'EASY TO GRATE PROCESSED CHEESE BLOCK', 'CHEESE BLOCK', 'easy-to-grate-processed-cheese-block', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_032212186.jpg', '[]', '', '', '', '', '', 'India', '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 12:30:20'),
(224, NULL, 23, 18, 2, 0, 'variable_product', NULL, 'GHEE', 'GHEE', 'ghee', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_034625939.jpg', '[]', '', '', '', '', '', 'India', '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 12:39:00'),
(225, NULL, 23, 18, 2, 0, 'variable_product', NULL, 'COW GHEE', 'COW GHEE', 'cow-ghee', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_150051378.jpg', '[]', '', '', '', '', '', 'India', '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 12:41:51'),
(226, NULL, 24, 18, 2, 0, 'variable_product', NULL, 'FRESH CREAM', 'FRESH CREAM', 'fresh-cream', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_133533703.jpg', '[]', '', '', '', '', '', 'India', '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 12:44:14'),
(227, NULL, 5, 18, 2, 0, 'simple_product', NULL, 'BASUNTHI', 'BASUNTHI', 'basunthi', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_030601932.jpg', '[]', '', '', '', '', '', 'India', '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 12:45:53'),
(228, NULL, 5, 18, 2, 0, 'simple_product', NULL, 'GULAB JAMUN', 'GULAB JAMUN', 'gulab-jamun-1', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_030621582.jpg', '[]', '', '', '', '', '', 'India', '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 12:47:11'),
(229, NULL, 5, 18, 2, 0, 'simple_product', NULL, 'MITHAI MATE', 'MITHAI MATE', 'mithai-mate', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_030718741.jpg', '[]', '', '', '', '', '', 'India', '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 12:48:53'),
(230, NULL, 5, 18, 2, 0, 'simple_product', NULL, 'RASOGOLLA', 'RASOGOLLA', 'rasogolla', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240120_030541245.jpg', '[]', '', '', '', '', '', 'India', '', 'Amul', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 12:50:07'),
(231, NULL, 12, 18, 2, 0, 'simple_product', NULL, 'SAFFRON', 'SAFFRON', 'saffron', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_134705483.jpg', '[]', '', '', '', '', '', NULL, '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 13:04:44'),
(232, NULL, 12, 18, 2, 0, 'simple_product', NULL, 'EVEREST FISH CURRY MASALA', 'FISH MASALA', 'everest-fish-curry-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_134745368.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 13:08:36'),
(233, NULL, 10, 18, 2, 0, 'variable_product', NULL, 'SHAHI BIRIYANI MASALA', 'BIRIYANI MASALA', 'shahi-biriyani-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_134830254.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 13:11:47'),
(234, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'BLACK PEPPER', 'PEPPER POWDER', 'black-pepper-1', 0, 0, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_135020092.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 13:13:43'),
(235, NULL, 10, 18, 2, 0, 'variable_product', NULL, 'CHAAT MASALA', 'CHAAT MASALA POWDER', 'chaat-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240125_134607332.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 13:16:31'),
(236, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'CHHOLE MASALA', 'MASALA POWDER', 'chhole-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_135105208.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 13:18:36'),
(237, NULL, 10, 18, 2, 0, 'variable_product', NULL, 'CHICKEN MASALA', 'MASALA POWDER', 'chicken-masala-1', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_135222212.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 13:21:37'),
(238, NULL, 10, 18, 2, 0, 'variable_product', NULL, 'CORIANDER POWDER', 'POWDER', 'coriander-powder-1', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_135249723.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 13:25:38'),
(239, NULL, 10, 18, 2, 0, 'variable_product', NULL, 'CUMIN POWDER', 'POWDER MASALA', 'cumin-powder-1', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_135312885.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 13:28:21'),
(240, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'CURRY POWDER', 'POWDER', 'curry-powder', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_135334538.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-06 13:29:56'),
(241, NULL, 19, 22, 1, 0, 'simple_product', '0', 'HealthMix', 'Healthy mix for everyone&nbsp;', 'healthmix', 1, 1, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/download_(1).jpeg', '[]', '', '', 'healthy mix, ', '', '', '', '', 'Amul', 'jh3937', 86, 1, 0, 0, 'Healthy mixer for everyone&nbsp;', '', 0, '', 1, NULL, '', 1, '2024-04-21 09:44:02'),
(242, NULL, 24, 22, 1, 0, 'simple_product', '0', 'Milk Choco', 'Milk Choco', 'milk-choco', 0, 1, 0, '', '', 1, 1, NULL, 0, 0, 1, 'received', 0, 'uploads/media/2024/download_(1).jpeg', '[]', '', '', 'Milk Choco', '', '', NULL, '', NULL, 'dfsdf34', 0, 0, 0, 0, '', '', 0, '', 1, NULL, '', 1, '2024-04-21 09:56:19'),
(243, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'DRY GINGER POWDER', 'POWDER', 'dry-ginger-powder', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_135356019.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 07:17:57'),
(244, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'DRY MANGO POWDER', 'POWDER', 'dry-mango-powder', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_135421139.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 07:19:20'),
(245, NULL, 10, 18, 2, 0, 'variable_product', NULL, 'GARAM MASALA', 'MASALA', 'garam-masala-1', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_135443126.jpg', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 07:24:56'),
(246, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'HING RAJ POWDER', 'POWDER', 'hing-raj-powder', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_135820452.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 07:27:41'),
(247, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'JALJIRA POWDER', 'POWDER', 'jaljira-powder', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'processed', 0, 'uploads/media/2024/InShot_20240123_135914204.jpg', '[]', '', '', '', '', '', NULL, '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 07:33:31'),
(248, NULL, 10, 18, 2, 0, 'variable_product', NULL, 'KASURI METHI', 'KASURI METHI', 'kasuri-methi', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_135946438.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 07:44:06'),
(249, NULL, 10, 18, 2, 0, 'variable_product', NULL, 'KITCHEN KING MASALA', 'MASALA', 'kitchen-king-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_140013179.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 07:47:09'),
(250, NULL, 10, 18, 2, 0, 'variable_product', NULL, 'MEAT MASALA', 'MASALA', 'meat-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_140105031.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 07:50:46'),
(251, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'RAJMA MASALA', 'MASALA', 'rajma-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_140248449.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 07:52:39'),
(252, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'SHAHI PANEER MASALA', 'MASALA', 'shahi-paneer-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_140348013.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 07:54:21'),
(253, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'WHITE PEPPER POWDER', 'POWDER', 'white-pepper-powder-1', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_140547840.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 07:56:15'),
(254, NULL, 10, 18, 2, 0, 'variable_product', NULL, 'TURMERIC POWDER', 'POWDER', 'turmeric-powder-1', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240125_135113739.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 07:59:33'),
(255, NULL, 10, 18, 2, 0, 'variable_product', NULL, 'TANDOOR CHICKEN MASALA', 'MASALA', 'tandoor-chicken-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240125_134928093.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 08:22:25'),
(256, NULL, 10, 18, 2, 0, 'variable_product', NULL, 'KASHMIRI LAL CHILLI POWDER', 'POWDER', 'kashmiri-lal-chilli-powder', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_140619387.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 08:25:01'),
(257, NULL, 10, 18, 2, 0, 'variable_product', NULL, 'KUTILAL CHILLI POWDER', 'POWDER', 'kutilal-chilli-powder', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 0, '', 0, 'uploads/media/2024/InShot_20240123_140708586.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 08:28:32'),
(258, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'PANI PURI MASALA', 'MASALA', 'pani-puri-masala', 0, 0, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_140726367.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 08:30:23'),
(259, NULL, 10, 18, 2, 0, 'variable_product', NULL, 'PAV BHAJJI MASALA', 'MASALA', 'pav-bhajji-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240125_134850996.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 08:33:11'),
(260, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'RASAM MASALA', 'MASALA', 'rasam-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_140818891.jpg', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 08:34:42'),
(261, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'ROYAL GARAM MASALA', 'MASALA', 'royal-garam-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_140909846.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 08:36:38'),
(262, NULL, 10, 18, 2, 0, 'simple_product', '0', 'SABJI MASALA', 'MASALA', 'sabji-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_140933477.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, 1, 0, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 08:38:09'),
(263, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'SAMBAR MASALA', 'MASALA', 'sambar-masala-1', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_141001601.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 08:39:25'),
(264, NULL, 9, 18, 2, 0, 'simple_product', '0', 'TEA MASALA', 'MASALA', 'tea-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240123_141032403.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', '99', 1, 1, 0, 0, '', '', 0, '', 0, '', ' ', 1, '2024-04-23 08:41:01'),
(265, NULL, 10, 18, 2, 0, 'variable_product', NULL, 'TIKHALAL CHILLI POWDER', 'POWDER', 'tikhalal-chilli-powder', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240125_135141941.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 08:44:30'),
(266, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'KESARI MILK MASALA', 'MASALA', 'kesari-milk-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240125_133728398.jpg', '[]', '', '', '', '', '', 'India', '', 'Everest foods', NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 08:46:14'),
(267, NULL, 10, 18, 2, 0, 'simple_product', NULL, 'MOMO MASALA', 'MASALA', 'momo-masala', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/InShot_20240125_133753464.jpg', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-23 08:47:37'),
(268, NULL, 25, 24, 2, 0, 'simple_product', NULL, 'Arrma 1/10 SENTON 4WD V3 3S BLX Brushless Short Course Truck RTR-ARA4303V3', 'truck', 'arrma-110-senton-4wd-v3-3s-blx-brushless-short-course-truck-rtr-ara4303v3', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/image.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-24 08:18:58'),
(269, NULL, 25, 24, 2, 0, 'simple_product', NULL, 'Arrma 1/8 TYPHON 6S V5 4WD BLX Buggy – ARA8606V5', 'buggy', 'arrma-18-typhon-6s-v5-4wd-blx-buggy-ara8606v5', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/image_(1).jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-24 08:20:39'),
(270, NULL, 25, 24, 2, 0, 'simple_product', NULL, 'Losi Desert Buggy DB XL-E 2.0 8S 1/5 RTR 4WD Electric Buggy – LOS05020V2', 'buggy', 'losi-desert-buggy-db-xl-e-20-8s-15-rtr-4wd-electric-buggy-los05020v2', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2024/image_(2).jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-04-24 08:22:08'),
(272, NULL, 5, 14, 1, 0, 'variable_product', '2', 'new test', 'new test', 'new-test', 0, 0, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/2.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-10-25 13:39:07'),
(273, NULL, 5, 14, 1, 0, 'variable_product', '2', 'KADALAI MITTAI', 'PEANUT BARFI', 'kadalai-mittai', 1, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'processed', 0, 'uploads/media/2024/download_(2)1.jpg', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-12-04 09:42:59'),
(274, NULL, 5, 14, 1, 0, 'variable_product', '2', 'SOAN PAPDI', 'SOAN PAPDI - SWEET', 'soan-papdi', 1, 1, 0, '', '', 1, 1, NULL, 1, 0, 0, '', 0, 'uploads/media/2024/soan_papdi.jpg', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2024-12-19 09:45:49'),
(275, NULL, 5, 14, 1, 0, 'simple_product', NULL, 'Test', 'Test', 'test', 0, 0, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2025/6607cb935731b_download.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-02-12 15:55:16'),
(276, NULL, 9, 15, 1, 0, 'simple_product', NULL, 'white pepper', 'white pepper', 'white-pepper', 0, 0, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/InShot_20231220_122213632.jpg', '[]', '', '', '', '', '', 'India', '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-17 14:57:52'),
(277, NULL, 5, 14, 1, 0, 'simple_product', NULL, 'test', 'test', 'test-1', 0, 0, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2024/download_(2)1.jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-17 15:02:04'),
(289, NULL, 20, 46, 1, 0, 'simple_product', '0', 'NOODLES – MORINGA 175 GMS', 'NOODLES – MORINGA 175 GMS', 'noodles-moringa-175-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'processed', 0, 'uploads/media/2025/Noodles-Moringa-Millet.jpg', '[\"uploads\\/media\\/2025\\/Noodles-Foxtail.jpg\"]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-3-1-1-1-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 08:01:59'),
(290, NULL, 20, 46, 1, 0, 'simple_product', '0', 'NOODLES – RAGI MILLET 175 GMS', 'NOODLES – RAGI MILLET 175 GMS', 'noodles-ragi-millet-175-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'processed', 0, 'uploads/media/2025/Noodles-Finger-Millet.jpg', '[\"uploads\\/media\\/2025\\/Noodles-Foxtail.jpg\"]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-3-1-1-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 08:05:46'),
(291, NULL, 20, 46, 1, 0, 'simple_product', '0', 'PASTA – FOXTAIL MILLET 175 GMS', 'PASTA – FOXTAIL MILLET 175 GMS', 'pasta-foxtail-millet-175-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'processed', 0, 'uploads/media/2025/Pasta-Foxtail-Millet.jpg', '[\"uploads\\/media\\/2025\\/30.jpg\"]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-3-1-2', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 08:09:54'),
(292, NULL, 20, 46, 1, 0, 'simple_product', '0', 'PASTA – KODO MILLET 175 GMS', 'PASTA – KODO MILLET 175 GMS', 'pasta-kodo-millet-175-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'processed', 0, 'uploads/media/2025/Pasta-Kodo-Millet-1.jpg', '[\"uploads\\/media\\/2025\\/30.jpg\"]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-3-1-1-2', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 08:13:45'),
(293, NULL, 20, 46, 1, 0, 'simple_product', '0', 'PASTA – LITTLE MILLET 175 GMS', 'High phosphorus in Saamai helps with fat metabolism, body tissue repair, and creating energy, especially good for people who have low body mass. It is rich in phytochemicals and has excellent antioxidant properties. Saamai reduces the chances of heart attacks.', 'pasta-little-millet-175-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Pasta-Little-Millet.jpg', '[\"uploads\\/media\\/2025\\/30.jpg\"]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-3-2', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 08:17:37'),
(294, NULL, 20, 46, 1, 0, 'simple_product', '0', 'PASTA – MORINGA 175 GMS', 'PASTA – MORINGA 175 GMS', 'pasta-moringa-175-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Pasta-Moringajpg.jpg', '[\"uploads\\/media\\/2025\\/30.jpg\"]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-3-1-1-1-1-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 08:20:38'),
(295, NULL, 20, 46, 1, 0, 'simple_product', '0', 'PASTA- RAGI MILLET 175 GMS', 'PASTA- RAGI MILLET 175 GMS', 'pasta-ragi-millet-175-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Pasta-Finger-Millet.jpg', '[\"uploads\\/media\\/2025\\/30.jpg\"]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-3-1-1-1-2', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 08:24:10'),
(296, NULL, 20, 46, 1, 0, 'simple_product', '0', 'SAAMAI MILLET 500 GMS – Premium', 'High phosphorus in Saamai helps with fat metabolism, body tissue repair, and creating energy, especially good for people who have low body mass. It is rich in phytochemicals and has excellent antioxidant properties. Saamai reduces the chances of heart attacks.', 'saamai-millet-500-gms-premium', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/29-removebg-preview-min-1.png', '[\"uploads\\/media\\/2025\\/30.jpg\"]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 08:28:45'),
(297, NULL, 20, 46, 1, 0, 'simple_product', '0', 'VERMICELLI – FOXTAIL MILLET 200 GMS', 'VERMICELLI – FOXTAIL MILLET 200 GMS', 'vermicelli-foxtail-millet-200-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Vermicelli-Foxtail-Millet.jpg', '[\"uploads\\/media\\/2025\\/30.jpg\"]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-3-1-3', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 08:32:12'),
(298, NULL, 20, 46, 1, 0, 'simple_product', '0', 'VERMICELLI – KODO MILLET 200 GMS', 'VERMICELLI – KODO MILLET 200 GMS', 'vermicelli-kodo-millet-200-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Vermicelli-Kodo-Millet.jpg', '[\"uploads\\/media\\/2025\\/30.jpg\"]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-3-1-1-3', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 08:35:24'),
(299, NULL, 20, 46, 1, 0, 'simple_product', '0', 'VERMICELLI – LITTLE MILLET 200 GMS', 'High phosphorus in Saamai helps with fat metabolism, body tissue repair, and creating energy, especially good for people who have low body mass. It is rich in phytochemicals and has excellent antioxidant properties. Saamai reduces the chances of heart attacks.', 'vermicelli-little-millet-200-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Vermicelli-Little-Millet.jpg', '[\"uploads\\/media\\/2025\\/30.jpg\"]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-3-2-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 08:38:27'),
(300, NULL, 20, 46, 1, 0, 'simple_product', '0', 'VERMICELLI – MORINGA 200 GMS', 'VERMICELLI – MORINGA 200 GMS', 'vermicelli-moringa-200-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Vermicelli-Moringa-Millet.jpg', '[\"uploads\\/media\\/2025\\/30.jpg\"]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-3-1-1-1-1-1-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 08:41:46'),
(301, NULL, 20, 46, 1, 0, 'simple_product', '0', 'VERMICELLI – RAGI MILLET 200 GMS', 'VERMICELLI – RAGI MILLET 200 GMS', 'vermicelli-ragi-millet-200-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Vermicelli-Finger-Millet.jpg', '[\"uploads\\/media\\/2025\\/30.jpg\"]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-3-1-1-1-3', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 09:14:05'),
(302, NULL, 20, 46, 1, 0, 'simple_product', '0', 'THINAI MILLET 500 GMS – Premium', 'Thinai also known as Foxtail Millet, Locally Known as Kakum(Hindi), Navane(Kannada), Tenai(Tamil), Korra(Telugu). These millets are easy to cook and can be adapted to various Indian recipes. It is generally cooked as a porridge for breakfast. Thinai is incorporated into the batter to make Appam, Dosa, Idli, Pongal, Idiyappam, and Puttu. It can be used to make muffins, bread loaves, granola bars, and also to thicken the soup. This simple millet is not just highly nutritious but also savored in various forms.', 'thinai-millet-500-gms-premium', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Thinai_millet.png', '[\"uploads\\/media\\/2025\\/Thinai.jpg\"]', '', '', 'Foxtail Millet,Premium Millet,Thinai,Thinai Millet', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H18', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 09:18:08'),
(303, NULL, 20, 46, 1, 0, 'simple_product', '0', 'VARAGHU MILLET 500 GMS', 'It is rich in photo chemicals that help in the reduction of cancer risks. It helps to reduce body weight and is beneficial for postmenopausal women. It is good for those suffering from signs of cardiovascular disease, like high blood pressure and high cholesterol levels. Varaghu millet or Kodo is an annual tufted grass that was domesticated in India almost 3000 years ago. The grains vary in color from light red to dark grey, and like most millets, the fiber content is very high. Known as Varagu in Tamil, Haraka in Kannada, Kodra in Hindi, Arikelu in Telugu, Kodo millets are storehouses of nutrients.', 'varaghu-millet-500-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Varaghu_millet.png', '[]', '', '', 'Kodo Millet,Millet,Premium Millet,Varaghu Millet', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H16', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 09:21:07'),
(304, NULL, 20, 46, 1, 0, 'simple_product', '0', 'RAGI 500 GMS – Premium', 'Finger Millet, also known as Ragi is an important millet grown extensively in various regions of India and Africa. It ranks sixth in production after wheat, rice, maize, sorghum, and bajra in India.', 'ragi-500-gms-premium', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Ragi_millet.png', '[\"uploads\\/media\\/2025\\/Ragi.jpg\"]', '', '', 'Finger Millet,Premium Millet,Premium Ragi,Ragi', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H17', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 09:24:26');
INSERT INTO `products` (`id`, `product_identity`, `category_id`, `seller_id`, `tax`, `row_order`, `type`, `stock_type`, `name`, `short_description`, `slug`, `indicator`, `cod_allowed`, `download_allowed`, `download_type`, `download_link`, `minimum_order_quantity`, `quantity_step_size`, `total_allowed_quantity`, `is_prices_inclusive_tax`, `is_returnable`, `is_cancelable`, `cancelable_till`, `is_attachment_required`, `image`, `other_images`, `video_type`, `video`, `tags`, `warranty_period`, `guarantee_period`, `made_in`, `hsn_code`, `brand`, `sku`, `stock`, `availability`, `rating`, `no_of_ratings`, `description`, `extra_description`, `deliverable_type`, `deliverable_zipcodes`, `deliverable_city_type`, `deliverable_cities`, `pickup_location`, `status`, `date_added`) VALUES
(305, NULL, 20, 46, 1, 0, 'simple_product', '0', 'RAGI POWDER 500GMS – Premium', 'Finger Millet, also known as Ragi is an important millet grown extensively in various regions of India and Africa. It ranks sixth in production after wheat, rice, maize, sorghum, and bajra in India.', 'ragi-powder-500gms-premium', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/woocommerce-placeholder.png', '[]', '', '', 'Finger Millet,Premium Millet,Premium Ragi,Ragi', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H17-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 09:27:06'),
(306, NULL, 27, 46, 1, 0, 'simple_product', '0', 'FILTER COFFEE POWDER – 200 GMS', 'FILTER COFFEE POWDER – 200 GMS', 'filter-coffee-powder-200-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/FILTER-COFFEE.jpeg', '[]', '', '', 'Filter coffee,coffee powder', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 09:36:29'),
(307, NULL, 27, 46, 1, 0, 'simple_product', '0', 'B MALT 200GMS – Health Drink', 'A unique mixture of beetroot with the goodness of almond, cashew, and jaggery makes the perfect health drink. It helps with blood purification. Boosts up your immune system. Must try malt mixture for adults and kids.', 'b-malt-200gms-health-drink', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/B_malt_health_drink.png', '[\"uploads\\/media\\/2025\\/B_malt.png\"]', '', '', 'B Malt,Health Drink,Health Mix,Malt', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H28', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 09:40:58'),
(308, NULL, 27, 46, 1, 0, 'simple_product', '0', 'BADAM MIX 200 G', 'BADAM MIX 200 G', 'badam-mix-200-g', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/BADAM-MIX.jpeg', '[]', '', '', 'B Malt,Health Drink,Health Mix,Malt', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H28-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 09:44:41'),
(309, NULL, 27, 46, 1, 0, 'simple_product', '0', 'ROSE MILK MIX 200 G', 'ROSE MILK MIX 200 G', 'rose-milk-mix-200-g', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/ROSE-MILK-MIX.jpg', '[]', '', '', 'B Malt,Health Drink,Health Mix,Malt', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H28-1-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 09:47:23'),
(310, NULL, 27, 46, 1, 0, 'simple_product', '0', 'ABC MALT 200GMS – Health Drink', 'A unique mixture of carrots with the goodness of almond, cashew, and jaggery makes the perfect health drink. Boosts up your immune system. Must try malt mixture for adults and kids. Very tasty and healthy.', 'abc-malt-200gms-health-drink', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/ABC_malt_health_drink.png', '[\"uploads\\/media\\/2025\\/ABC_malt.png\"]', '', '', 'C Malt,Health Drink,Health Mix,Malt', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H29', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 09:53:14'),
(311, NULL, 27, 46, 1, 0, 'simple_product', '0', 'HERBAL TEA – Immune Booster (An alternate for Regular Tea & Coffee) 50Cups', 'A perfect mix of 14 herbal ingredients to help you boost your immune system. Alternate to your Tea or Coffee. Unique health drink to strengthen your immunity.', 'herbal-tea-immune-booster-an-alternate-for-regular-tea-coffee-50cups', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Herbal-Tea-Immune-Booster.jpg', '[]', '', '', 'Herbal Mix,Herbal Tea,Premium Tea,Tea', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H27-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 09:57:32'),
(312, NULL, 27, 46, 1, 0, 'simple_product', '0', 'HERBAL TEA 100GMS – 20 Herbs health drink', 'A perfect mix of 20 herbal ingredients to help you boost your immune system. Alternate to your Tea or Coffee. Unique health drink to strengthen your immunity.', 'herbal-tea-100gms-20-herbs-health-drink', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Herbal_tea_health_drink.png', '[]', '', '', 'Herbal Mix,Herbal Tea,Premium Tea,Tea', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H27', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:01:36'),
(313, NULL, 27, 46, 1, 0, 'simple_product', '0', 'JUJUBE POWDER (ELANDA TEA POWDER) 100GMS', 'A perfect mix of 20 herbal ingredients to help you boost your immune system. Alternate to your Tea or Coffee. Unique health drink to strengthen your immunity.', 'jujube-powder-elanda-tea-powder-100gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Jujube_powder.png', '[]', '', '', 'Herbal Mix,Herbal Tea,Premium Tea,Tea', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H27-2', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:05:27'),
(314, NULL, 27, 46, 1, 0, 'simple_product', '0', 'MORINGA SOUP POWDER 150GMS', 'MORINGA SOUP POWDER 150GMS', 'moringa-soup-powder-150gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Soup-Powder-Moringa-Leaf.jpg', '[]', '', '', 'Premium Millet,Saamai,Saamai Millet,Saamai Thinai', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'D2022-H15-2', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:08:59'),
(315, NULL, 10, 46, 1, 0, 'simple_product', '0', 'CORIANDER POWDER – 200 GMS', 'CORIANDER POWDER – 200 GMS', 'coriander-powder-200-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/coriander-powder-500x500-1.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:13:29'),
(316, NULL, 10, 46, 1, 0, 'simple_product', '0', 'SAMBAR POWDER – 100 GMS', 'SAMBAR POWDER – 100 GMS', 'sambar-powder-100-gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Sambar-Powder-Recipe.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:16:50'),
(317, NULL, 10, 46, 1, 0, 'simple_product', '0', 'ANDHRA PARUPPU PODI 200Gms', 'ANDHRA PARUPPU PODI 200Gms', 'andhra-paruppu-podi-200gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Andhra-Parupu-Podi.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H28-1-1-1-1-1-1-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:19:05'),
(318, NULL, 10, 46, 1, 0, 'simple_product', '0', 'CURRY LEAVES PODI (KARUVEPPILAI PODI) 200Gms', 'CURRY LEAVES PODI (KARUVEPPILAI PODI) 200Gms', 'curry-leaves-podi-karuveppilai-podi-200gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Curry-Leaves-Powder.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H28-1-1-1-2-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:20:57'),
(319, NULL, 10, 46, 1, 0, 'simple_product', '0', 'IDLY PODI 200Gms', 'IDLY PODI 200Gms', 'idly-podi-200gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Idly-Podi-scaled.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H28-1-1-1-2-3', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:25:08'),
(320, NULL, 10, 46, 1, 0, 'simple_product', '0', 'KARAKOZHAMBU PODI 200Gms د.إ17.20 Original price was: د.إ17.20.د.إ13.50', 'KARAKOZHAMBU PODI 200Gms\\r\\nد.إ17.20 Original price was: د.إ17.20.د.إ13.50', 'karakozhambu-podi-200gms-دإ1720-original-price-was-دإ1720دإ1350', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/Karakozhambu-Podi-scaled.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H28-1-1-1-1-1-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:28:09'),
(321, NULL, 10, 46, 1, 0, 'simple_product', '0', 'KASHMIRI CHILLY POWDER 100Gms', 'KASHMIRI CHILLY POWDER 100Gms', 'kashmiri-chilly-powder-100gms', 0, 1, 0, '', '', 1, 1, 15, 0, 1, 1, 'received', 0, 'uploads/media/2025/KASHMIRI-CHILLY-POWDER.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H28-1-1-1-2-2-1', 15, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:30:40'),
(322, NULL, 10, 46, 1, 0, 'simple_product', '0', 'PARUPPU PODI 200Gms', 'PARUPPU PODI 200Gms', 'paruppu-podi-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Paruppu-Podi.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H28-1-1-1-2', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:33:10'),
(323, NULL, 10, 46, 1, 0, 'simple_product', '0', 'PEPPER PODI 100Gms', 'PEPPER PODI 100Gms', 'pepper-podi-100gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/PEPPER-PODI.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H28-1-1-1-2-2', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:35:25'),
(324, NULL, 10, 46, 1, 0, 'simple_product', '0', 'PUDINA PODI 200Gms', 'PUDINA PODI 200Gms', 'pudina-podi-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Pudina-Podi-scaled.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H28-1-1-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:37:58'),
(325, NULL, 10, 46, 1, 0, 'simple_product', '0', 'PULIYODARAI PODI 200Gms', 'PULIYODARAI PODI 200Gms', 'puliyodarai-podi-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Puliyodarai-Podi-scaled.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H28-1-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:40:17'),
(326, NULL, 10, 46, 1, 0, 'simple_product', '0', 'RASA PODI 200Gms', 'RASA PODI 200Gms', 'rasa-podi-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Rasa-Podi-scaled1.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'J2022-H28-1-1-1-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:43:10'),
(327, NULL, 10, 46, 1, 0, 'simple_product', '0', 'GARAM MASALA 100GMS', 'Garam masala adds warmth, sweetness, floral notes, and a touch of heat from the black pepper. It is intended to be a fragrant spice as well as flavorful. While cumin, coriander, and turmeric may remind you of curry, garam masala is generally not firey hot. Garam masala is a warm, fragrant spice blend with lots of layers of flavor. Not every blend will taste the same, but you’ll likely get hints of cinnamon, cloves, or peppercorns. Try a pinch on roasted vegetables.', 'garam-masala-100gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Garam_masala_100GMS.png', '[\"uploads\\/media\\/2025\\/Garam.jpg\"]', '', '', 'Garam Masala,Premium Masala', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H033', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:49:11'),
(328, NULL, 10, 46, 1, 0, 'simple_product', '0', 'DRY GINGER POWDER 100GMS – Premium', 'DRY GINGER POWDER 100GMS – Premium', 'dry-ginger-powder-100gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/DRY-GINGER-POWDER.jpg', '[]', '', '', 'Jeera,Premium Jeera', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H22-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:51:26'),
(329, NULL, 9, 46, 1, 0, 'simple_product', '0', 'JEERA 100GMS – Premium', 'Jeera or cumin seed is an ancient Indian spice, which has been used since the Vedic times. Jeera is a very good source of potassium and iron which helps in building up your immunity system. It is also very rich in antioxidants and has anti-bacterial properties which assist in fighting off infection-causing bacteria. Jeera also contains a variety of minerals like magnesium, calcium, etc', 'jeera-100gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Jeera.png', '[]', '', '', 'Jeera,Premium Jeera', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H22', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:54:29'),
(330, NULL, 10, 46, 1, 0, 'simple_product', '0', 'JEERA POWDER 100GMS – Premium', 'JEERA POWDER 100GMS – Premium', 'jeera-powder-100gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/JEERA-POWDER.jpg', '[]', '', '', 'Jeera,Premium Jeera', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H22-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 10:58:45'),
(331, NULL, 9, 46, 1, 0, 'simple_product', '0', 'PEPPER 100GMS – Premium', 'Pepper or black pepper prevents any sort of cancer. Good for digestion and prevents constipation. It treats skin problems and is good for your hair. It also, aids in weight loss treats depression, and helps in treating respiratory diseases. Pepper is the dried unripe fruit grown in the plant called piper nigrum. Its pungent smell, peppery/hot taste and health-friendly properties make pepper a favorite spice all over the world and it is commonly used in all cuisines. If salt helps bring out flavors, black pepper makes foods bolder versions of themselves.', 'pepper-100gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Pepper_100GMS.png', '[\"uploads\\/media\\/2025\\/34-150x150.jpg\"]', '', '', 'Black Pepper,Pepper,Premium pepper', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H21', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 11:02:09'),
(332, NULL, 9, 46, 1, 0, 'simple_product', '0', 'BAY LEAVES 100GMS', 'BAY LEAVES 100GMS', 'bay-leaves-100gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/bay-leaves-500x500.webp', '[]', '', '', 'curry powder,Red Chilli Curry powder,Red curry powder', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H32-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 11:05:12'),
(333, NULL, 9, 46, 1, 0, 'simple_product', '0', 'CARDAMOM – PREMIUM 100GMS', 'CARDAMOM – PREMIUM 100GMS', 'cardamom-premium-100gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/CARDAMOM.webp', '[]', '', '', 'curry powder,Red Chilli Curry powder,Red curry powder', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H32-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 11:08:23'),
(334, NULL, 10, 46, 1, 0, 'simple_product', '0', 'RED CHILLI CURRY POWDER 100GMS', 'Red Chilli Curry powder has a unique flavor due to the combination of both savory and sweet spices. Savory spices like cumin, turmeric, and bay leaf give the curry a deep, earthy flavor while sweet spices, like cinnamon and clove, add brightness and pep. The level of heat is determined by the type and amount of pepper used.', 'red-chilli-curry-powder-100gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Red_chilli_curry_powder.png', '[\"uploads\\/media\\/2025\\/12.jpg\"]', '', '', 'curry powder,Red Chilli Curry powder,Red curry powder', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H32', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 11:12:16'),
(335, NULL, 10, 46, 1, 0, 'simple_product', '0', 'CURD CHILLY 100GMS Premium', 'CURD CHILLY 100GMS Premium', 'curd-chilly-100gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Curry.png', '[]', '', '', 'Chilli powder,Pure chilli powder,Red chilli powder', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H31-1-3', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 11:19:49'),
(336, NULL, 10, 46, 1, 0, 'simple_product', '0', 'PURE CHILLI POWDER 100 GMS', 'The red chilli powder can set the taste buds on fire. It is basically a spice blend consisting of one or two types of dried red chilies that are ground and pulverized into a fine powder. It is generally used to add spice to otherwise bland foods.', 'pure-chilli-powder-100-gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Pure_chilli_powder.png', '[\"uploads\\/media\\/2025\\/12.jpg\"]', '', '', 'Chilli powder,Pure chilli powder,Red chilli powder', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H31', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 11:23:42'),
(337, NULL, 10, 46, 1, 0, 'simple_product', '0', 'RED CHILLI LONG 200 GMS', 'RED CHILLI LONG 200 GMS', 'red-chilli-long-200-gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Curry.png', '[]', '', '', 'Chilli powder,Pure chilli powder,Red chilli powder', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H31-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 11:28:03'),
(338, NULL, 10, 46, 1, 0, 'simple_product', '0', 'RED CHILLI ROUND 200 GMS', 'RED CHILLI ROUND 200 GMS', 'red-chilli-round-200-gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Curry.png', '[]', '', '', 'Chilli powder,Pure chilli powder,Red chilli powder', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H31-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 11:32:45'),
(339, NULL, 10, 46, 2, 0, 'simple_product', '0', 'SESAME SEEDS BLACK 100GMS', 'SESAME SEEDS BLACK 100GMS', 'sesame-seeds-black-100gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Curry.png', '[]', '', '', 'Chilli powder,Pure chilli powder,Red chilli powder', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H31-1-2', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 11:36:54'),
(340, NULL, 9, 46, 2, 0, 'simple_product', '0', 'MUSTARD 100GMS – Premium', 'MUSTARD 100GMS – Premium', 'mustard-100gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/black-mustard-seed-500x500-min.png', '[]', '', '', 'fenugreek,mustard,mustard seeds,spices', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 11:40:23'),
(341, NULL, 9, 46, 2, 0, 'simple_product', '0', 'FENNEL SEEDS 100GMS – Premium', 'FENNEL SEEDS 100GMS – Premium', 'fennel-seeds-100gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Fennel-Seeds.jpg', '[]', '', '', 'Chilli powder,fenugreek,seeds,spices,TURMERIC POWDER', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 11:43:24'),
(342, NULL, 9, 46, 2, 0, 'simple_product', '0', 'FENUGREEK 100GMS – Premium', 'FENUGREEK 100GMS – Premium', 'fenugreek-100gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/FENUGREEK_Seeds_600x-min.jpeg', '[]', '', '', 'Chilli powder,fenugreek,seeds,spices,TURMERIC POWDER', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 11:47:21'),
(343, NULL, 10, 46, 2, 0, 'simple_product', '0', 'TURMERIC POWDER 100GMS – Premium', 'Turmeric powder is a bright yellow spice powder made from dried turmeric. While its slightly peppery and warm flavor, vibrant color, and preservative properties make it a great culinary ingredient, the presence of ‘curcumin’ makes it suitable for cosmetic and medicinal purposes too.', 'turmeric-powder-100gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Turmeric_powder.png', '[\"uploads\\/media\\/2025\\/121.jpg\"]', '', '', 'TURMERIC,TURMERIC POWDER', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H20', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 11:50:40'),
(344, NULL, 9, 46, 2, 0, 'simple_product', '0', 'HIMALAYAN PINK SALT 1KG – PREMIUM', 'HIMALAYAN PINK SALT 1KG – PREMIUM', 'himalayan-pink-salt-1kg-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/PINK-SALT.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H034-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 11:56:25'),
(345, NULL, 9, 46, 2, 0, 'simple_product', '0', 'ROCK SALT 1KG – PREMIUM', 'ROCK SALT 1KG – PREMIUM', 'rock-salt-1kg-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Rock_salt.png', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'F2022-H034', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 12:07:42'),
(346, NULL, 21, 46, 2, 0, 'simple_product', '0', 'GREEN MOONG – 500GMS PREMIUM', 'GREEN MOONG – 500GMS PREMIUM', 'green-moong-500gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/MOONG-DAL1.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 12:16:30'),
(347, NULL, 21, 46, 2, 0, 'simple_product', '0', 'ROASTED GRAM DAL – 250 GMS PREMIUM', 'ROASTED GRAM DAL – 250 GMS PREMIUM', 'roasted-gram-dal-250-gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Gram_Dal.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 12:20:42'),
(348, NULL, 21, 46, 2, 0, 'simple_product', '0', 'URAD DAL 1KG – Premium', 'Urid dal, also known as Split Black Gram, is one of the famous lentils used in the southern part of Asia, especially in Indian cuisine. Urid dal is easy to prepare and can be eaten as a side dish also. It is also extensively used in various culinary preparations such as dosa, papad, and vada.', 'urad-dal-1kg-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Urad_dal_1KG.png', '[\"uploads\\/media\\/2025\\/20-768x614.jpg\"]', '', '', 'Urad Dal,Urid Dal', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'B2022-H05', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 12:23:30'),
(349, NULL, 21, 46, 2, 0, 'simple_product', '0', 'URAD DAL SPLIT 500GMS – Premium', 'Urid dal, also known as Split Black Gram, is one of the famous lentils used in the southern part of Asia, especially in Indian cuisine. Urid dal is easy to prepare and can be eaten as a side dish also. It is also extensively used in various culinary preparations such as dosa, papad, and vada.', 'urad-dal-split-500gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Urad_Dal_split.png', '[]', '', '', 'Urad Dal,Urid Dal', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'B2022-H05-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 12:25:54'),
(350, NULL, 21, 46, 2, 0, 'simple_product', '0', 'BLACK CHANNA 500GMS – Premium', 'Black channa dal is a good source of protein and iron. It improves digestion and helps to keep the heart healthy. It helps in weight loss. Maintains cholesterol level and is great for hair. It is a great source of energy for adults and kids. It maintains blood sugar.', 'black-channa-500gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Black_channa.png', '[\"uploads\\/media\\/2025\\/2-768x614.jpg\"]', '', '', 'Black Channa Dal,Channa Dal,Premium Dal', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'B2022-H08', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 12:28:52'),
(351, NULL, 21, 46, 2, 0, 'simple_product', '0', 'CHANNA DAL 500GMS – Premium', 'Channa dal has innumerable health benefits, the most important being that it is a rich source of protein and is essential for vegetarians and vegans who do not consume meat. It is also essential for the heart as it is rich in antioxidants and reduces inflammation keeping the organ healthy.', 'channa-dal-500gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Channa_dal.png', '[\"uploads\\/media\\/2025\\/44-768x614.jpg\"]', '', '', 'Chana Dal,Channa Dal,Premium Dal', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'B2022-H06', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 12:35:11'),
(352, NULL, 21, 46, 2, 0, 'simple_product', '0', 'THOOR DAL 1KG – Premium', 'Thoor dal is an incredible source of proteins, carbs, and dietary fiber needed for growth and development. Adding thoor dal in your diet helps to meet your demands of iron and calcium while being a good source of folic acids promotes fetal growth and averts congenital birth defects of the fetus.', 'thoor-dal-1kg-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Toor-Dal.jpg', '[\"uploads\\/media\\/2025\\/44-768x614.jpg\"]', '', '', 'Premium Dal,Thoor dal', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'B2022-H04', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 12:38:00'),
(353, NULL, 21, 46, 2, 0, 'simple_product', '0', 'MOONG DAL 1KG – Premium', 'Moong dal is rich in Vitamin A, B, C, and E and also in many minerals including iron, calcium, and potassium. Not to forget it is a powerful source of vegetarian protein. It is considered a healthy weight loss food as it is a low-fat food rich in proteins and fiber. It curbs cravings and keeps us full for a long time. It detoxifies the body and benefits the metabolism as well as the immune system. It helps to lower the high cholesterol level in the blood system. Regular intake of Green Moong reduces bad cholesterol and improves the flexibility of arteries and veins. It also regulates blood pressure.', 'moong-dal-1kg-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Moon_Dal_1kg.png', '[]', '', '', 'Moong dal,Premium Dal', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'B2022-H07', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 12:40:55'),
(354, NULL, 21, 46, 2, 0, 'simple_product', '0', 'WHITE CHANNA 500GMS – Premium', 'White Chana dal is rich in B-complex vitamins that play an important role in glucose metabolism and are vital for your body to remain active and energetic. It is also essential for the heart as it is rich in antioxidants and reduces inflammation keeping the organ healthy. Chana dal is delicious, nutritious, and easily digested. Apart from being used in soups, salads, curries, dal preparations, savories, sweets, and rice dishes, the legumes are also roasted and powdered into chickpea flour (besan), another ingredient that is widely used in almost every province of India.', 'white-channa-500gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Whitechanna.png', '[\"uploads\\/media\\/2025\\/42-768x614.jpg\"]', '', '', 'Channa Dal,Premium Dal,White channa dal', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'B2022-H09', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 12:43:54'),
(355, NULL, 21, 46, 2, 0, 'simple_product', '0', 'BLACK EYE BEANS 500GMS – Premium', 'BLACK EYE BEANS 500GMS – Premium', 'black-eye-beans-500gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/BLACK-EYE-BEANSJPG.jpeg', '[]', '', '', 'Premium Beans,Rajma,Rajma Beans', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'K2022-H30-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 12:46:13'),
(356, NULL, 21, 46, 1, 0, 'simple_product', '0', 'FIELD BEANS (MOCHAI) 500GMS – Premium', 'FIELD BEANS (MOCHAI) 500GMS – Premium', 'field-beans-mochai-500gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/FIELD-BEANS.jpg', '[]', '', '', 'Premium Beans,Rajma,Rajma Beans', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'K2022-H30-1-2', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 12:48:52'),
(357, NULL, 21, 46, 1, 0, 'simple_product', '0', 'MASOOR DAL 1KG – Premium', 'MASOOR DAL 1KG – Premium', 'masoor-dal-1kg-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Masoor-Dal-jpg-2-768x576.jpg', '[]', '', '', 'Premium Beans,Rajma,Rajma Beans', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'K2022-H30-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 12:52:00'),
(358, NULL, 21, 46, 1, 0, 'simple_product', '0', 'RAJMA BEANS 500GMS – Premium', 'Rajma is a dark red kidney bean that is known for its rich red color even after being cooked. Rajma is known to be having a soft texture and a more delicate flavor. These are low in fat and cholesterol, rich in protein, and high in dietary fiber\\r\\nRajma is rich in molybdenum, iron, copper, folate, manganese, potassium, and Vitamin K1. Of these, iron aids in several important functions of the body, while Vitamin K1 is important for blood coagulation', 'rajma-beans-500gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Rajma.png', '[]', '', '', 'Premium Beans,Rajma,Rajma Beans', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'K2022-H30', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 12:54:33'),
(359, NULL, 21, 46, 1, 0, 'simple_product', '0', 'SOYA CHUNKS 500GMS – Premium', 'SOYA CHUNKS 500GMS – Premium', 'soya-chunks-500gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/SOYA-CHUNKS.jpg', '[]', '', '', 'Premium Beans,Rajma,Rajma Beans', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'K2022-H30-1-2-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 12:57:22'),
(360, NULL, 8, 46, 1, 0, 'simple_product', '0', 'BASMATI RICE 2KG – Premium', 'Basmati rice is a type of white rice commonly grown in the Himalayas, India, and Pakistan—with India producing about two-thirds of the world’s supply. It is a long-grain rice that is characterized by a light nutty flavor and floral aroma, and it’s popular in rice pilaf and as a side dish for the curry. Basmati is one of the most popular long-grain rice varieties due to its texture, nutty flavor.', 'basmati-rice-2kg-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Basmati_rice.png', '[\"uploads\\/media\\/2025\\/22-768x614.jpg\"]', '', '', 'Basmati,Basmati Rice,Premium Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H13', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 13:21:50'),
(361, NULL, 8, 46, 1, 0, 'simple_product', '0', 'PONNI BOILED RICE – 5KG', 'Ponni Boiled Rice is fresh, it is cleaned and packed at our hygienic facilities. It is relishing in flavor and provides a high nutrition value to anyone’s diet. They are parboiled by soaking, steaming, and drying.', 'ponni-boiled-rice-5kg', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Ponni_boiled.png', '[\"uploads\\/media\\/2025\\/Ponni.jpg\"]', '', '', 'Boiled Rice,Ponni Boiled Rice,Ponni Rice,Premium Rice,White Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H10', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 13:24:53'),
(362, NULL, 8, 46, 1, 0, 'simple_product', '0', 'IDLY RICE 3KG – Premium', 'Idli rice is parboiled rice and is used specifically for making idli and dosa. Premium Quality rice for tasty idly and dosa straight from the farmers in India.', 'idly-rice-3kg-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Idly_rice.png', '[\"uploads\\/media\\/2025\\/Idly.jpg\"]', '', '', 'Dosa Rice,Idly rice,Premium Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H12', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 13:29:37'),
(363, NULL, 8, 46, 1, 0, 'simple_product', '0', 'BLACK KAVUNI RICE – Premium 1 KG', 'BLACK KAVUNI RICE – Premium 1 KG', 'black-kavuni-rice-premium-1-kg', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/BLACK-KAVUNI-RICE.webp', '[]', '', '', 'Ponni Raw Rice,Ponni Rice,Raw Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H11-1-1-1-1-1-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 13:32:46'),
(364, NULL, 8, 46, 1, 0, 'simple_product', '0', 'HAND POUND RICE – Premium 1KG', 'HAND POUND RICE – Premium 1KG', 'hand-pound-rice-premium-1kg', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/HAND-POUND-RICE.jpg', '[]', '', '', 'Ponni Raw Rice,Ponni Rice,Raw Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H11-1-1-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 13:35:07'),
(365, NULL, 8, 46, 1, 0, 'simple_product', '0', 'KICHADI SAMBA RICE – Premium 1KG', 'KICHADI SAMBA RICE – Premium 1KG', 'kichadi-samba-rice-premium-1kg', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/KICHALI-SAMBA-RICE.jpg', '[]', '', '', 'Ponni Raw Rice,Ponni Rice,Raw Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H11-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 13:38:39'),
(366, NULL, 8, 46, 1, 0, 'simple_product', '0', 'MAAPILLAI SAMBA – Premium 1KG', 'MAAPILLAI SAMBA – Premium 1KG', 'maapillai-samba-premium-1kg', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Mapillai_Samba_Rice.webp', '[]', '', '', 'Ponni Raw Rice,Ponni Rice,Raw Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H11-1-1-1-1-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 13:41:28'),
(367, NULL, 8, 46, 1, 0, 'simple_product', '0', 'PALAKAD MATTA RICE – Premium 5KG', 'PALAKAD MATTA RICE – Premium 5KG', 'palakad-matta-rice-premium-5kg', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/PALAKAD-MATTA-RICE.jpg', '[]', '', '', 'Ponni Raw Rice,Ponni Rice,Raw Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H11-1-1-1-1-1-1-1-1-1-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 13:44:14'),
(368, NULL, 8, 46, 1, 0, 'simple_product', '0', 'PONNI RAW RICE – 2 Kgs', 'Ponni Rice is popular white rice that is popular in South India, especially in the Tamil Nadu region. Ponni Rice is very fluffy, soft, delicious and it’s perfect for rice bowls, thali (Indian style lunch or dinner served with rice and curries), etc. Ponni rice helps in body metabolism. It is raw rice and not parboiled. It is cultivated around the Kaveri delta region in south India.', 'ponni-raw-rice-2-kgs', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Ponni_raw_rice.png', '[\"uploads\\/media\\/2025\\/ponni_raw.jpg\"]', '', '', 'Ponni Raw Rice,Ponni Rice,Raw Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H11-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 13:48:32'),
(369, NULL, 8, 46, 1, 0, 'simple_product', '0', 'RED RICE – Premium 1KG', 'RED RICE – Premium 1KG', 'red-rice-premium-1kg', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Red-Rice-1.jpg', '[]', '', '', 'Ponni Raw Rice,Ponni Rice,Raw Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H11-1-1-1-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 13:50:52'),
(370, NULL, 8, 46, 1, 0, 'simple_product', '0', 'SEERAGA SAMBA – Premium 1KG', 'SEERAGA SAMBA – Premium 1KG', 'seeraga-samba-premium-1kg', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/SEERAGA-SAMBA.webp', '[]', '', '', 'Ponni Raw Rice,Ponni Rice,Raw Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H11-1-1-1-1-1-1-1-1-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 13:56:15'),
(371, NULL, 8, 46, 1, 0, 'simple_product', '0', 'SONA MASOORI RICE – Premium 5KG', 'SONA MASOORI RICE – Premium 5KG', 'sona-masoori-rice-premium-5kg', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Sona-Masoori-Rice.webp', '[]', '', '', 'Ponni Raw Rice,Ponni Rice,Raw Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H11-1-1-1-1-1-1-1-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 14:03:55'),
(372, NULL, 8, 46, 1, 0, 'simple_product', '0', 'SURTI KOLLAM – Premium 1KG', 'SURTI KOLLAM – Premium 1KG', 'surti-kollam-premium-1kg', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Surti_kollam.png', '[]', '', '', 'Ponni Raw Rice,Ponni Rice,Raw Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H11-1-1-1-1-1-1-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 14:10:21'),
(373, NULL, 8, 46, 1, 0, 'simple_product', '0', 'THOOYAMALLI BOILED RICE – Premium 1KG', 'THOOYAMALLI BOILED RICE – Premium 1KG', 'thooyamalli-boiled-rice-premium-1kg', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/THOOYAMALLI-RICE.jpg', '[]', '', '', 'Ponni Raw Rice,Ponni Rice,Raw Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H11-1-1-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 14:16:32'),
(374, NULL, 8, 46, 1, 0, 'simple_product', '0', 'PONNI RAW RICE – 7 Kgs', 'Ponni Rice is popular white rice that is popular in South India, especially in the Tamil Nadu region. Ponni Rice is very fluffy, soft, delicious and it’s perfect for rice bowls, thali (Indian style lunch or dinner served with rice and curries), etc. Ponni rice helps in body metabolism. It is raw rice and not parboiled. It is cultivated around the Kaveri delta region in south India.', 'ponni-raw-rice-7-kgs', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/ponni_rwa_7kgs.png', '[]', '', '', 'Ponni Raw Rice,Ponni Rice,Raw Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H11', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 14:20:06'),
(375, NULL, 8, 46, 1, 0, 'simple_product', '0', 'PUFFED RICE 500GMS', 'PUFFED RICE 500GMS', 'puffed-rice-500gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/PUFFED-RICE.jpg', '[]', '', '', 'Flake Rice,Premium Rice,Red Flake Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H14-1', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 14:22:36'),
(376, NULL, 8, 46, 1, 0, 'simple_product', '0', 'RED FLAKE RICE 500GMS', 'Red poha or red rice flakes are nothing but flattened rice made from red rice. Red flake rice nutrition value is high compared to white rice flakes. It has health benefits in terms of having more iron content and is also easy to digest. It is a dehusked rice that is flattened into dried flakes.', 'red-flake-rice-500gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Red_flake.png', '[]', '', '', 'Flake Rice,Premium Rice,Red Flake Rice', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'C2022-H14', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 14:25:49'),
(377, NULL, 28, 46, 1, 0, 'simple_product', '0', 'GROUNDNUTS 500GMS – Premium', 'Groundnuts or peanuts are an especially good source of healthful fats, protein, and fiber. They also contain plenty of potassium, phosphorous, magnesium, and B vitamins. Despite being high in calories, groundnuts are nutrient-rich and low in carbohydrates. Daily intake of groundnuts can help in reducing bad cholesterol (LDL) and improve heart health. According to studies, groundnuts are a great source of Omega 3 Fatty acids and vitamin E, which help in preventing the blockage in the arteries.', 'groundnuts-500gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Nuts.png', '[\"uploads\\/media\\/2025\\/38-768x614.jpg\"]', '', '', 'Groundnut,Peanut,Premium Groundnut,Premium peanut', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'H2022-H24', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 14:37:19'),
(378, NULL, 29, 46, 1, 0, 'simple_product', '0', 'APPALAM (URAD)- PREMIUM 200GMS', 'APPALAM (URAD)- PREMIUM 200GMS', 'appalam-urad-premium-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Appalam.png', '[]', '', '', 'besan,Besan flour,Flour,Premium Flour,Wheat Flour', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 15:02:32'),
(379, NULL, 29, 46, 1, 0, 'simple_product', '0', 'BESAN 500GMS – Premium', 'BESAN 500GMS – Premium', 'besan-500gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/besan-loose-min.jpeg', '[]', '', '', 'besan,Besan flour,Flour,Premium Flour,Wheat Flour', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 15:05:05'),
(380, NULL, 29, 46, 1, 0, 'simple_product', '0', 'IDLY RAVA – Premium 1KG', 'IDLY RAVA – Premium 1KG', 'idly-rava-premium-1kg', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2025/idly-rava-1-.webp', '[]', '', '', 'besan,Besan flour,Flour,Premium Flour,Wheat Flour', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 15:08:33'),
(381, NULL, 29, 46, 1, 0, 'simple_product', '0', 'JOWAR ATTA – Premium 1KG', 'JOWAR ATTA – Premium 1KG', 'jowar-atta-premium-1kg', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/jowaratta1kg.webp', '[]', '', '', 'besan,Besan flour,Flour,Premium Flour,Wheat Flour', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 15:13:55'),
(382, NULL, 29, 46, 1, 0, 'simple_product', '0', 'RICE POWDER 1KG – Premium', 'RICE POWDER 1KG – Premium', 'rice-powder-1kg-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/rice-flour.webp', '[]', '', '', 'besan,Besan flour,Flour,Premium Flour,Wheat Flour', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 15:18:29'),
(383, NULL, 29, 46, 1, 0, 'simple_product', '0', 'SABUDHANA / SAGO SEEDS – Premium', 'SABUDHANA / SAGO SEEDS – Premium', 'sabudhana-sago-seeds-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/SABU-DHANA.jpg', '[]', '', '', 'besan,Besan flour,Flour,Premium Flour,Wheat Flour', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 15:20:51'),
(384, NULL, 29, 46, 1, 0, 'simple_product', '0', 'SAMBA WHEAT RAVA – Premium 1KG', 'SAMBA WHEAT RAVA – Premium 1KG', 'samba-wheat-rava-premium-1kg', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/SAMBA-WHEAT-RAVA.jpg', '[]', '', '', 'besan,Besan flour,Flour,Premium Flour,Wheat Flour', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 15:23:54'),
(385, NULL, 29, 46, 1, 0, 'simple_product', '0', 'WHEAT FLOUR 2KGS – Premium', 'The premium wheat flour manufacturer in India follows a precise procedure consisting of five separate steps to bring the best quality food to your table. It is best recommended for making chapatis and phulkas as they turn out to be softer, tastier, and healthier. The premium flour is preferred more than the roller mill atta for the texture and taste of the Chapati/Roti (flatbread of India). Our premium flour is a very very finely milled wheat flour. It works wonderfully well for making Indian flatbreads and chakki is the most preferred milling process for Indian bread.', 'wheat-flour-2kgs-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Wheat_flour.png', '[\"uploads\\/media\\/2025\\/50.jpg\"]', '', '', 'Flour,Premium Flour,Wheat Flour', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'G2022-H23', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 15:27:53'),
(386, NULL, 30, 46, 1, 0, 'simple_product', '0', '“SANITARY COTTON NAPKINS PADS Anion XL ” 9 NOS', '“SANITARY COTTON NAPKINS PADS Anion XL ” 9 NOS', 'sanitary-cotton-napkins-pads-anion-xl-9-nos', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Sanitary-Napkin.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 15:40:21'),
(387, NULL, 30, 46, 1, 0, 'simple_product', '0', '“SANITARY COTTON NAPKINS PADS Premium Ultra Soft XL ” 9 NOS', '“SANITARY COTTON NAPKINS PADS Premium Ultra Soft XL ” 9 NOS', 'sanitary-cotton-napkins-pads-premium-ultra-soft-xl-9-nos', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Sanitary-Napkin_9_nos.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 15:42:32'),
(388, NULL, 30, 46, 1, 0, 'simple_product', '0', '“SANITARY COTTON NAPKINS PADS Premium Ultra Soft XXL ” 9 NOS', '“SANITARY COTTON NAPKINS PADS Premium Ultra Soft XXL ” 9 NOS', 'sanitary-cotton-napkins-pads-premium-ultra-soft-xxl-9-nos', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Sanitary-Napkin_9_nos.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 15:44:38'),
(389, NULL, 30, 46, 1, 0, 'simple_product', '0', 'Organic Herbal Bath Powder 100Gms', 'Organic Herbal Bath Powder Chemical Free and Home Made Natural Aroma', 'organic-herbal-bath-powder-100gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Organic-Herbal-Bath-Powder-100Gms.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 15:48:52'),
(390, NULL, 30, 46, 1, 0, 'simple_product', '0', 'Organic Herbal Hair Wash Powder 100Gms', 'Organic Herbal Hair Wash Powder Chemical Free and Home Made Natural Aroma', 'organic-herbal-hair-wash-powder-100gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Organic-Herbal-Hair-Wash-Powder-100Gms.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 15:58:32'),
(391, NULL, 30, 46, 1, 0, 'simple_product', '0', 'Organic Herbal Soap', 'Organic Herbal Soap Chemical Free and Home Made Natural Aroma', 'organic-herbal-soap', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Goats-Milk-Herbal-Soap.png', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 16:01:45'),
(392, NULL, 5, 46, 1, 0, 'simple_product', '0', 'ADHIRASAM – 270Gms 5 piece Combo Pack Now only 14.90 Before 19/-', 'ADHIRASAM – 270Gms 5 piece Combo Pack Now only 14.90 Before 19/-', 'adhirasam-270gms-5-piece-combo-pack-now-only-1490-before-19', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Adirasam.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 16:13:56'),
(393, NULL, 5, 46, 1, 0, 'simple_product', '0', 'BADAM HALWA – 250GMS', 'BADAM HALWA – 250GMS', 'badam-halwa-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/BADAM-HALWA.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 16:26:23'),
(394, NULL, 5, 46, 1, 0, 'simple_product', '0', 'BADUSHA – 250GMS', 'BADUSHA – 250GMS', 'badusha-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/badusha-1.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 16:29:58'),
(395, NULL, 6, 46, 1, 0, 'simple_product', '0', 'BANANA CHIPS – 200GMS', 'BANANA CHIPS – 200GMS', 'banana-chips-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Banana-Yellow-Chips-01-.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 16:32:52'),
(396, NULL, 6, 46, 1, 0, 'simple_product', '0', 'BITTER GUARD CHIPS – 200GMS', 'BITTER GUARD CHIPS – 200GMS', 'bitter-guard-chips-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/bitter-gourd-chips-img-1300-center-view-600x600.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 16:35:07'),
(397, NULL, 5, 46, 1, 0, 'simple_product', '0', 'BOMBAY HALWA – 250GMS', 'BOMBAY HALWA – 250GMS', 'bombay-halwa-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/bombay-halwa.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 16:48:25'),
(398, NULL, 6, 46, 1, 0, 'simple_product', '0', 'CASHEW PAKODA – 100GMS', 'CASHEW PAKODA – 100GMS', 'cashew-pakoda-100gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/MASALA-CASHEW.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 17:43:30');
INSERT INTO `products` (`id`, `product_identity`, `category_id`, `seller_id`, `tax`, `row_order`, `type`, `stock_type`, `name`, `short_description`, `slug`, `indicator`, `cod_allowed`, `download_allowed`, `download_type`, `download_link`, `minimum_order_quantity`, `quantity_step_size`, `total_allowed_quantity`, `is_prices_inclusive_tax`, `is_returnable`, `is_cancelable`, `cancelable_till`, `is_attachment_required`, `image`, `other_images`, `video_type`, `video`, `tags`, `warranty_period`, `guarantee_period`, `made_in`, `hsn_code`, `brand`, `sku`, `stock`, `availability`, `rating`, `no_of_ratings`, `description`, `extra_description`, `deliverable_type`, `deliverable_zipcodes`, `deliverable_city_type`, `deliverable_cities`, `pickup_location`, `status`, `date_added`) VALUES
(399, NULL, 5, 46, 1, 0, 'simple_product', '0', 'DRY FRUIT HALWA – 250GMS', 'DRY FRUIT HALWA – 250GMS', 'dry-fruit-halwa-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/dry-fruit-halwa.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 17:46:12'),
(400, NULL, 5, 46, 1, 0, 'simple_product', '0', 'DRY FRUIT LADDU – 250GMS', 'DRY FRUIT LADDU – 250GMS', 'dry-fruit-laddu-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Dry-fruit-laddu.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 17:52:15'),
(401, NULL, 5, 46, 1, 0, 'simple_product', '0', 'GHEE MYSORE PA – 250GMS', 'GHEE MYSORE PA – 250GMS', 'ghee-mysore-pa-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/GHEE-MYSORE-PA.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 17:55:58'),
(402, NULL, 5, 46, 1, 0, 'simple_product', '0', 'GULAB JAMUN – 250GMS', 'GULAB JAMUN – 250GMS', 'gulab-jamun-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/GulabJamun2.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 17:58:50'),
(403, NULL, 6, 46, 1, 0, 'simple_product', '0', 'JACKFRUIT CHIPS – 200GMS', 'JACKFRUIT CHIPS – 200GMS', 'jackfruit-chips-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/JACK-FRUIT-CHIPS.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 18:01:29'),
(404, NULL, 5, 46, 1, 0, 'simple_product', '0', 'JANGIRI – 250GMS', 'JANGIRI – 250GMS', 'jangiri-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/JANGIRI.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 18:03:58'),
(405, NULL, 6, 46, 1, 0, 'simple_product', '0', 'KAI MURUKKU – 200GMS', 'KAI MURUKKU – 200GMS', 'kai-murukku-200gms', 0, 1, 0, '', '', 1, 1, NULL, 0, 1, 1, 'received', 0, 'uploads/media/2025/Kaimurukku2-475x500.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', NULL, NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 18:10:56'),
(406, NULL, 5, 46, 1, 0, 'simple_product', '0', 'KAJU KATLI – 250GMS', 'KAJU KATLI – 250GMS', 'kaju-katli-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/images.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 18:15:35'),
(407, NULL, 5, 46, 1, 0, 'simple_product', '0', 'KAJU ROLL – 250GMS', 'KAJU ROLL – 250GMS', 'kaju-roll-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/kaju-pista-roll-189453.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 18:18:13'),
(408, NULL, 6, 46, 1, 0, 'simple_product', '0', 'KARA BOONDI – 200GMS', 'KARA BOONDI – 200GMS', 'kara-boondi-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Kara-Boondi-Recipe-500x375-1.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 18:21:12'),
(409, NULL, 6, 46, 1, 0, 'simple_product', '0', 'KARA SEV- 200GMS', 'KARA SEV- 200GMS', 'kara-sev-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/KARA-SEV.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 18:25:14'),
(410, NULL, 5, 46, 1, 0, 'simple_product', '0', 'LADDU- 250GMS', 'LADDU- 250GMS', 'laddu-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/laddu.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 18:38:30'),
(411, NULL, 5, 46, 1, 0, 'simple_product', '0', 'LAL LADDU – 250GMS', 'LAL LADDU – 250GMS', 'lal-laddu-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/lal_laddu.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 18:44:56'),
(412, NULL, 6, 46, 1, 0, 'simple_product', '0', 'MASALA KADALAI – 200GMS', 'MASALA KADALAI – 200GMS', 'masala-kadalai-200gms', 0, 0, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2025/Masalakadalai1.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 18:47:07'),
(413, NULL, 5, 46, 1, 0, 'simple_product', '0', 'MILK HALWA – 250GMS', 'MILK HALWA – 250GMS', 'milk-halwa-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Milk-Halwa.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 18:53:31'),
(414, NULL, 5, 46, 1, 0, 'simple_product', '0', 'MILK MYSORE PA – 250GMS', 'MILK MYSORE PA – 250GMS', 'milk-mysore-pa-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/milk_mysorepak.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-24 18:59:23'),
(415, NULL, 6, 46, 1, 0, 'simple_product', '0', 'MIXTURE – 200GMS', 'MIXTURE – 200GMS', 'mixture-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Mixture.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 06:32:19'),
(416, NULL, 5, 46, 1, 0, 'simple_product', '0', 'MYSORE PA – 250GMS', 'MYSORE PA – 250GMS', 'mysore-pa-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Mysore-Pa.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 06:35:13'),
(417, NULL, 6, 46, 1, 0, 'simple_product', '0', 'OMA PODI – 200GMS', 'OMA PODI – 200GMS', 'oma-podi-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/OMA-PODI.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 06:38:43'),
(418, NULL, 6, 46, 1, 0, 'simple_product', '0', 'RIBBON PAKODA – 200GMS', 'RIBBON PAKODA – 200GMS', 'ribbon-pakoda-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/ribbon-pakoda-recipe-1.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 06:41:12'),
(419, NULL, 6, 46, 1, 0, 'simple_product', '0', 'SALTED POTATO CHIPS – 200GMS', 'SALTED POTATO CHIPS – 200GMS', 'salted-potato-chips-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/SALTED_POTATO_CHIPS_–_200GMS.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 06:44:51'),
(420, NULL, 5, 46, 1, 0, 'simple_product', '0', 'SOMAAS – 5 PCS', 'SOMAAS – 5 PCS', 'somaas-5-pcs', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/SOMAAS.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 06:49:27'),
(421, NULL, 5, 46, 1, 0, 'simple_product', '0', 'SPECIAL LADDU- 250GMS', 'SPECIAL LADDU- 250GMS', 'special-laddu-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/special-laddu.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 06:52:41'),
(422, NULL, 6, 46, 1, 0, 'simple_product', '0', 'TAPIOCA STICK CHIPS – 200GMS', 'TAPIOCA STICK CHIPS – 200GMS', 'tapioca-stick-chips-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Tapioca-Chips-1.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 06:54:43'),
(423, NULL, 6, 46, 1, 0, 'simple_product', '0', 'THATTAI – 200GMS د.إ15.00 Original price was: د.إ15.00.د.إ12.60', 'THATTAI – 200GMS\\r\\nد.إ15.00 Original price was: د.إ15.00.د.إ12.60', 'thattai-200gms-دإ1500-original-price-was-دإ1500دإ1260', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/thattai.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 06:57:14'),
(424, NULL, 6, 46, 1, 0, 'simple_product', '0', 'THENKUZHAL MURUKKU – 200 GMS', 'THENKUZHAL MURUKKU – 200 GMS', 'thenkuzhal-murukku-200-gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Thenkuzhal-Murukku.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 06:58:59'),
(425, NULL, 6, 46, 1, 0, 'simple_product', '0', 'THREADED POTATO CHIPS – 200GMS', 'THREADED POTATO CHIPS – 200GMS', 'threaded-potato-chips-200gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/THREADED-potato-snack1.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:00:41'),
(426, NULL, 5, 46, 1, 0, 'simple_product', '0', 'WHEAT HALWA – 250GMS', 'WHEAT HALWA – 250GMS', 'wheat-halwa-250gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/WHEAT_HALWA_–_250GMS.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:02:35'),
(427, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Adamant Creeper – Pirandai 1 Bunch', 'Adamant Creeper – Pirandai 1 Bunch', 'adamant-creeper-pirandai-1-bunch', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Pirandai.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:13:11'),
(428, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Alari 100GMS', 'Alari 100GMS', 'alari-100gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Alari.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:16:47'),
(429, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Amaranthus – Arai Keerai 1 Bunch', 'Amaranthus – Arai Keerai 1 Bunch', 'amaranthus-arai-keerai-1-bunch', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Amaranthus_–_Arai_Keerai_1_Bunch.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:19:49'),
(430, NULL, 31, 46, 1, 0, 'simple_product', '0', 'ARECA NUT LEAF 10 PLATES 5/- AED', 'ARECA NUT LEAF 10 PLATES 5/- AED', 'areca-nut-leaf-10-plates-5-aed', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/ARECA_NUT_LEAF_10_PLATES.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:22:30'),
(431, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Balloon vine spinach / Mudakathan Keerai 1 Bunch', 'Balloon vine spinach / Mudakathan Keerai 1 Bunch', 'balloon-vine-spinach-mudakathan-keerai-1-bunch', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/mudakathan.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:27:33'),
(432, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Black nightshade – Manathakkali Keerai 1 Bunch', 'Black nightshade – Manathakkali Keerai 1 Bunch', 'black-nightshade-manathakkali-keerai-1-bunch', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Black_nightshade_–_Manathakkali_Keerai_1_Bunch.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:33:48'),
(433, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Brahmi Leaves / Vallarai Keerai 1 Bunch', 'Brahmi Leaves / Vallarai Keerai 1 Bunch', 'brahmi-leaves-vallarai-keerai-1-bunch', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Vallarai-Keerai.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:35:22'),
(434, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Button Rose 100GMS', 'Button Rose 100GMS', 'button-rose-100gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Button-Rose.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:37:03'),
(435, NULL, 31, 46, 1, 0, 'simple_product', '0', 'DIVINE LAMP POOJA OIL 1LITER', 'DIVINE LAMP POOJA OIL 1LITER', 'divine-lamp-pooja-oil-1liter', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Divine-Lamp-Oil-1.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:42:46'),
(436, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Drumstick Tree Leaves – Murungai Keerai 1 Bunch', 'Drumstick Tree Leaves – Murungai Keerai 1 Bunch', 'drumstick-tree-leaves-murungai-keerai-1-bunch', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Drumstick_Tree_Leaves_–_Murungai_Keerai_1_Bunch.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:46:41'),
(437, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Dwarf Copper Leaves / Ponnanganni keerai 1 Bunch', 'Dwarf Copper Leaves / Ponnanganni keerai 1 Bunch', 'dwarf-copper-leaves-ponnanganni-keerai-1-bunch', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/4566122.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:50:07'),
(438, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Fenugreek Leaves – Vendhaya Keerai 1 Bunch', 'Fenugreek Leaves – Vendhaya Keerai 1 Bunch', 'fenugreek-leaves-vendhaya-keerai-1-bunch', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Fenugreek_Leaves_–_Vendhaya_Keerai_1_Bunch.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:52:19'),
(439, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Gongura / Roselle / Pulicha Keerai 1 Bunch', 'Gongura / Roselle / Pulicha Keerai 1 Bunch', 'gongura-roselle-pulicha-keerai-1-bunch', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/kkkkk.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:56:27'),
(440, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Jasmine 1 Feet', 'Jasmine 1 Feet', 'jasmine-1-feet', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Jasmine_1_Feet.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 07:58:51'),
(441, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Lily / Mullai 1 Feet', 'Lily / Mullai 1 Feet', 'lily-mullai-1-feet', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Mullai.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 08:00:29'),
(442, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Lotus Flower', 'Lotus Flower', 'lotus-flower', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Lotus_Flower.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 08:03:17'),
(443, NULL, 31, 46, 1, 0, 'simple_product', '0', 'MANGO LEAVES (1 Bunch)', 'MANGO LEAVES (1 Bunch)', 'mango-leaves-1-bunch', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/MANGO_LEAVES_(1_Bunch).webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 08:06:00'),
(444, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Marie Gold 100GMS', 'Marie Gold 100GMS', 'marie-gold-100gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Marie-Gold.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 08:07:48'),
(445, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Paneer Rose 100GMS', 'Paneer Rose 100GMS', 'paneer-rose-100gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/sree-madhava-sai-organics-dry-paneer-rose-petals-100-grams-product-images-orvl15hwp2y-p598474453-6-202302171450.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 08:09:29'),
(446, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Samandhi / Chevandhi 100GMS', 'Samandhi / Chevandhi 100GMS', 'samandhi-chevandhi-100gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Samandhi.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 08:12:55'),
(447, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Small Amaranthus – Siru Keerai 1 Bunch', 'Small Amaranthus – Siru Keerai 1 Bunch', 'small-amaranthus-siru-keerai-1-bunch', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Arai-keerai.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 08:15:51'),
(448, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Thulasi Leaves 100gms', 'Thulasi Leaves 100gms', 'thulasi-leaves-100gms', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/tulsi-leaves-100grams.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 08:18:07'),
(449, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Vilvam Leaves', 'Vilvam Leaves', 'vilvam-leaves', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Vilvam_Leaves.webp', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 08:20:19'),
(450, NULL, 31, 46, 1, 0, 'simple_product', '0', 'Whole Coconut 1 Piece', 'Whole Coconut 1 Piece', 'whole-coconut-1-piece', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Whole-Coconut.jpg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 08:23:16'),
(451, NULL, 5, 46, 1, 0, 'simple_product', '0', 'Special Offers Sweets 250Gms & Snacks 400 Gms Combo AED 49 Only', 'Special Offers Sweets 250Gms & Snacks 400 Gms Combo AED 49 Only', 'special-offers-sweets-250gms-snacks-400-gms-combo-aed-49-only', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/Special-Offers-Sweets-Combo-250Gms-AED-27-Only.jpeg', '[]', '', '', '', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 08:34:10'),
(452, NULL, 17, 46, 1, 0, 'simple_product', '0', 'JAGGERY 500GMS – Premium', 'Jaggery is a traditional non-centrifugal cane sugar consumed in the Indian Subcontinent and Southeast Asia. It is a concentrated product of cane juice and often date or palm sap without separation of the molasses and crystals, and can vary from golden brown to dark brown in color. It helps with the prevention of respiratory problems and weight loss. It controls blood pressure. Jaggery is a great source of energy and can relieve menstrual pain.', 'jaggery-500gms-premium', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/23-removebg-preview-min.png', '[\"uploads\\/media\\/2025\\/24-768x614.jpg\"]', '', '', 'Jaggery,Premium Jaggery', '', '', 'United Arab Emirates', '', 'Harshini Groceries', 'I2022-H25', 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 08:37:36'),
(453, NULL, 17, 46, 1, 0, 'simple_product', '0', 'BROWN CANE SUGAR 1KG', 'Natural brown sugar, raw sugar, or whole cane sugar are sugars that retain a small to a large amount of the molasses from the mother liquor (the partially evaporated sugar cane juice). Brown sugar is granulated cane sugar with added molasses. It is coarser and moister than white sugar and imparts a unique flavor and dark color to food systems. Two main forms of brown sugar are available: Unrefined.', 'brown-cane-sugar-1kg', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/45-removebg-preview-min.png', '[\"uploads\\/media\\/2025\\/46.jpg\"]', '', '', 'Brown Cane Sugar,Cane sugar,Premium Sugar', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 08:41:01'),
(454, NULL, 32, 46, 1, 0, 'simple_product', '0', 'ROCK SUGAR CANDY 100 G', 'Natural brown sugar, raw sugar, or whole cane sugar are sugars that retain a small to a large amount of the molasses from the mother liquor (the partially evaporated sugar cane juice). Brown sugar is granulated cane sugar with added molasses. It is coarser and moister than white sugar and imparts a unique flavor and dark color to food systems. Two main forms of brown sugar are available: Unrefined.', 'rock-sugar-candy-100-g', 0, 1, 0, '', '', 1, 1, 30, 0, 1, 1, 'received', 0, 'uploads/media/2025/ROCK-SUGAR-CANDY.jpg', '[]', '', '', 'Brown Cane Sugar,Cane sugar,Premium Sugar', '', '', 'United Arab Emirates', '', 'Harshini Groceries', NULL, 30, 1, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-03-25 08:42:57'),
(456, NULL, 6, 14, 1, 0, 'simple_product', NULL, 'Babana chips', 'Banana chips', 'babana-chips', 0, 0, 0, '', '', 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2025/download_(3).jpg', '[]', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '', '', 0, '', 1, NULL, ' ', 1, '2025-04-09 15:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

DROP TABLE IF EXISTS `product_attributes`;
CREATE TABLE `product_attributes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_value_ids` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `attribute_value_ids`, `date_created`) VALUES
(1, 1, '', '2022-04-04 05:12:09'),
(6, 6, '4', '2024-03-26 19:17:02'),
(7, 7, '5', '2024-03-27 05:46:24'),
(9, 9, '6,7,8', '2024-03-27 10:03:27'),
(10, 10, '14,15,16,9,10,11,12,13', '2024-03-27 10:17:56'),
(11, 11, '17', '2024-03-29 12:23:45'),
(12, 12, '4,5', '2024-03-30 07:48:24'),
(13, 13, '4,5', '2024-03-30 07:56:16'),
(14, 14, '4,5', '2024-03-30 08:07:35'),
(15, 15, '4,5', '2024-03-30 08:12:17'),
(16, 16, '4,5', '2024-03-30 08:46:41'),
(17, 17, '4,5', '2024-03-30 08:48:58'),
(18, 18, '4,5', '2024-03-30 08:51:39'),
(19, 19, '4,5', '2024-03-30 08:53:46'),
(20, 20, '4,5', '2024-03-30 08:55:39'),
(21, 21, '4,5', '2024-03-30 08:57:45'),
(22, 22, '4,5', '2024-03-30 08:59:31'),
(23, 23, '4,5', '2024-03-30 09:01:28'),
(24, 24, '4,5', '2024-03-30 09:03:20'),
(25, 25, '4,5', '2024-03-30 09:07:27'),
(26, 26, '4,5', '2024-03-30 09:09:18'),
(27, 27, '4,5', '2024-03-30 09:40:01'),
(28, 28, '4,5', '2024-03-30 09:43:11'),
(29, 29, '4,5', '2024-03-30 09:47:50'),
(30, 30, '4,5', '2024-03-30 10:12:02'),
(31, 31, '4,5', '2024-03-30 10:14:51'),
(32, 32, '4,5', '2024-03-30 10:18:06'),
(33, 33, '4,5', '2024-03-30 10:21:41'),
(34, 34, '4,5', '2024-03-30 10:24:29'),
(35, 35, '17', '2024-03-30 10:26:19'),
(36, 36, '4,5', '2024-03-30 10:28:41'),
(37, 37, '4,5', '2024-03-30 10:30:49'),
(38, 38, '4,5', '2024-03-30 10:33:52'),
(39, 39, '4,5', '2024-03-30 10:36:12'),
(40, 40, '4,5', '2024-03-30 10:40:33'),
(41, 41, '4,5', '2024-03-30 10:42:36'),
(42, 42, '4,5', '2024-03-30 10:45:20'),
(43, 43, '4,5', '2024-03-30 10:47:31'),
(68, 68, '5,22,25', '2024-04-02 08:46:20'),
(69, 69, '5,22,25', '2024-04-02 09:17:18'),
(70, 70, '5,20,22', '2024-04-02 11:09:18'),
(71, 71, '5,20,22', '2024-04-02 11:40:17'),
(72, 72, '', '2024-04-02 11:51:47'),
(73, 73, '', '2024-04-02 11:54:56'),
(74, 74, '', '2024-04-02 11:59:02'),
(75, 75, '', '2024-04-02 12:13:43'),
(76, 76, '', '2024-04-02 12:15:40'),
(77, 77, '', '2024-04-02 12:17:33'),
(78, 78, '29', '2024-04-03 08:35:01'),
(79, 79, '29', '2024-04-03 08:38:13'),
(80, 80, '29', '2024-04-03 08:40:56'),
(81, 81, '29', '2024-04-03 08:42:52'),
(82, 82, '29', '2024-04-03 08:44:24'),
(83, 83, '29', '2024-04-03 08:46:23'),
(84, 84, '3', '2024-04-03 09:10:09'),
(85, 85, '3', '2024-04-03 09:13:19'),
(86, 86, '3', '2024-04-03 09:16:11'),
(87, 87, '3', '2024-04-03 09:18:13'),
(88, 88, '2', '2024-04-03 09:20:16'),
(89, 89, '4,5', '2024-04-03 09:24:24'),
(90, 90, '2', '2024-04-03 09:26:16'),
(91, 91, '1', '2024-04-03 09:30:28'),
(92, 92, '1', '2024-04-03 09:35:41'),
(93, 93, '4', '2024-04-03 10:39:39'),
(94, 94, '2', '2024-04-03 10:42:32'),
(95, 95, '29', '2024-04-03 10:44:44'),
(96, 96, '3,29', '2024-04-03 10:54:12'),
(97, 97, '29', '2024-04-03 11:13:50'),
(98, 98, '29', '2024-04-03 11:24:51'),
(99, 99, '30', '2024-04-04 07:45:48'),
(100, 100, '30', '2024-04-04 08:42:34'),
(101, 101, '30', '2024-04-04 08:44:44'),
(102, 102, '30', '2024-04-04 08:48:10'),
(103, 103, '30', '2024-04-04 08:50:03'),
(104, 104, '4', '2024-04-04 08:52:33'),
(105, 105, '4', '2024-04-04 08:54:36'),
(106, 106, '4', '2024-04-04 08:57:01'),
(107, 107, '4', '2024-04-04 08:59:45'),
(108, 108, '4', '2024-04-04 09:01:41'),
(109, 109, '42', '2024-04-04 09:03:43'),
(110, 110, '31,32,33,34,35,36,37,38,39,40', '2024-04-04 09:33:05'),
(111, 111, '5', '2024-04-04 09:44:12'),
(112, 112, '29', '2024-04-04 09:48:04'),
(113, 113, '4', '2024-04-04 09:50:21'),
(114, 114, '41', '2024-04-04 09:53:00'),
(115, 115, '5', '2024-04-04 09:55:00'),
(116, 116, '29', '2024-04-04 09:57:45'),
(117, 117, '12', '2024-04-04 10:16:07'),
(118, 118, '1', '2024-04-04 10:18:49'),
(119, 119, '4', '2024-04-04 10:21:34'),
(120, 120, '2', '2024-04-04 10:24:25'),
(121, 121, '12', '2024-04-04 10:38:46'),
(122, 122, '12', '2024-04-04 10:44:36'),
(123, 123, '12', '2024-04-04 11:16:08'),
(124, 124, '12', '2024-04-04 11:18:17'),
(125, 125, '9', '2024-04-04 11:20:25'),
(126, 126, '4', '2024-04-04 11:40:09'),
(127, 127, '4', '2024-04-04 11:43:06'),
(128, 128, '4', '2024-04-04 11:48:49'),
(129, 129, '4', '2024-04-04 11:52:47'),
(130, 130, '4', '2024-04-04 11:55:22'),
(131, 131, '4', '2024-04-04 11:58:43'),
(132, 132, '4', '2024-04-04 12:02:28'),
(133, 133, '4', '2024-04-04 12:04:59'),
(134, 134, '4', '2024-04-04 12:07:34'),
(135, 135, '4', '2024-04-04 12:09:56'),
(136, 136, '4', '2024-04-04 12:12:18'),
(137, 137, '4', '2024-04-04 12:15:05'),
(138, 138, '4', '2024-04-04 12:17:49'),
(139, 139, '29', '2024-04-04 12:47:51'),
(140, 140, '29', '2024-04-04 12:51:30'),
(141, 141, '29', '2024-04-04 12:53:47'),
(142, 142, '29', '2024-04-04 12:56:59'),
(143, 143, '29', '2024-04-04 12:59:55'),
(144, 144, '', '2024-04-04 13:02:37'),
(145, 145, '1', '2024-04-04 13:05:16'),
(146, 146, '2,29', '2024-04-04 13:07:33'),
(147, 147, '4', '2024-04-04 13:14:26'),
(148, 148, '4', '2024-04-04 13:16:58'),
(149, 149, '3', '2024-04-04 13:21:20'),
(150, 150, '1', '2024-04-04 13:28:16'),
(151, 151, '5', '2024-04-04 13:34:43'),
(152, 152, '1', '2024-04-05 08:09:46'),
(153, 153, '4', '2024-04-05 08:11:58'),
(154, 154, '2', '2024-04-05 08:14:10'),
(155, 155, '1', '2024-04-05 08:16:42'),
(156, 156, '2', '2024-04-05 08:19:33'),
(157, 157, '3', '2024-04-05 08:22:06'),
(158, 158, '5', '2024-04-05 09:57:32'),
(159, 159, '5', '2024-04-05 10:01:07'),
(160, 160, '5', '2024-04-05 10:04:49'),
(161, 161, '5', '2024-04-05 10:08:14'),
(162, 162, '4', '2024-04-05 10:10:53'),
(163, 163, '4', '2024-04-05 10:40:12'),
(164, 164, '', '2024-04-05 10:43:53'),
(165, 165, '29', '2024-04-05 10:45:56'),
(166, 166, '4,29', '2024-04-05 10:47:21'),
(167, 167, '4', '2024-04-05 10:55:14'),
(168, 168, '4', '2024-04-05 10:58:59'),
(169, 169, '29', '2024-04-05 11:02:50'),
(170, 170, '29', '2024-04-05 11:06:13'),
(171, 171, '4', '2024-04-05 11:07:56'),
(172, 172, '29', '2024-04-05 11:09:40'),
(173, 173, '29', '2024-04-05 11:11:25'),
(174, 174, '43,44,4', '2024-04-05 11:13:31'),
(175, 175, '43,45,29', '2024-04-05 11:20:22'),
(176, 176, '10,56,57,58,59', '2024-04-06 07:14:59'),
(177, 177, '10,15,57,58,60', '2024-04-06 07:22:41'),
(178, 178, '10', '2024-04-06 07:27:54'),
(179, 179, '10,12', '2024-04-06 07:31:03'),
(180, 180, '10,12,62,15,61', '2024-04-06 07:39:09'),
(181, 181, '6,7,8,64,65,68,69,70', '2024-04-06 08:05:34'),
(182, 182, '', '2024-04-06 09:24:00'),
(183, 183, '2,29', '2024-04-06 09:30:10'),
(184, 184, '', '2024-04-06 09:39:17'),
(185, 185, '', '2024-04-06 09:42:09'),
(186, 186, '6,72', '2024-04-06 09:46:52'),
(187, 187, '', '2024-04-06 09:49:32'),
(188, 188, '', '2024-04-06 09:51:42'),
(189, 189, '', '2024-04-06 09:52:46'),
(190, 190, '73,74', '2024-04-06 09:56:07'),
(191, 191, '73', '2024-04-06 09:57:40'),
(192, 192, '6,8,75,69,70', '2024-04-06 10:11:51'),
(193, 193, '9,10,11', '2024-04-06 10:14:55'),
(194, 194, '76', '2024-04-06 10:17:04'),
(195, 195, '71,77', '2024-04-06 10:20:16'),
(196, 196, '43,79,80', '2024-04-06 10:24:17'),
(197, 197, '', '2024-04-06 10:25:41'),
(198, 198, '64', '2024-04-06 10:27:15'),
(199, 199, '7', '2024-04-06 10:28:40'),
(200, 200, '73,81,44,87', '2024-04-06 10:39:20'),
(201, 201, '63', '2024-04-06 10:40:43'),
(202, 202, '8', '2024-04-06 10:42:13'),
(203, 203, '8', '2024-04-06 10:44:16'),
(204, 204, '82', '2024-04-06 10:45:43'),
(205, 205, '83', '2024-04-06 10:47:00'),
(206, 206, '84,85', '2024-04-06 10:49:08'),
(207, 207, '8,84', '2024-04-06 10:51:25'),
(208, 208, '', '2024-04-06 10:52:41'),
(209, 209, '43,44,88', '2024-04-06 11:03:09'),
(210, 210, '82,91', '2024-04-06 11:09:10'),
(211, 211, '', '2024-04-06 11:11:40'),
(212, 212, '6,75,89,78,86', '2024-04-06 11:17:14'),
(213, 213, '79,87,90', '2024-04-06 11:21:53'),
(214, 214, '43,44,92,93', '2024-04-06 11:26:42'),
(215, 215, '65,76', '2024-04-06 11:31:36'),
(216, 216, '', '2024-04-06 11:32:52'),
(217, 217, '', '2024-04-06 11:34:13'),
(218, 218, '32,47,48,49,50,51,52,53,54,3', '2024-04-06 12:08:32'),
(219, 219, '', '2024-04-06 12:22:47'),
(220, 220, '3', '2024-04-06 12:24:51'),
(221, 221, '3', '2024-04-06 12:25:59'),
(222, 222, '5', '2024-04-06 12:27:23'),
(223, 223, '5', '2024-04-06 12:30:20'),
(224, 224, '11,12,13,94', '2024-04-06 12:39:00'),
(225, 225, '11,12', '2024-04-06 12:41:51'),
(226, 226, '12,62', '2024-04-06 12:44:14'),
(227, 227, '12', '2024-04-06 12:45:53'),
(228, 228, '5', '2024-04-06 12:47:11'),
(229, 229, '', '2024-04-06 12:48:53'),
(230, 230, '5', '2024-04-06 12:50:07'),
(231, 231, '95', '2024-04-06 13:04:44'),
(232, 232, '1', '2024-04-06 13:08:36'),
(233, 233, '1,3', '2024-04-06 13:11:47'),
(234, 234, '2', '2024-04-06 13:13:43'),
(235, 235, '2,4', '2024-04-06 13:16:31'),
(236, 236, '2', '2024-04-06 13:18:36'),
(237, 237, '2,4', '2024-04-06 13:21:37'),
(238, 238, '2,3,4,5', '2024-04-06 13:25:38'),
(239, 239, '2,4', '2024-04-06 13:28:21'),
(240, 240, '2', '2024-04-06 13:29:56'),
(241, 241, '', '2024-04-21 09:44:02'),
(242, 242, '', '2024-04-21 09:56:19'),
(243, 243, '2', '2024-04-23 07:17:57'),
(244, 244, '2', '2024-04-23 07:19:20'),
(245, 245, '2,4', '2024-04-23 07:24:56'),
(246, 246, '2', '2024-04-23 07:27:41'),
(247, 247, '2', '2024-04-23 07:33:31'),
(248, 248, '2,4', '2024-04-23 07:44:06'),
(249, 249, '2,4', '2024-04-23 07:47:09'),
(250, 250, '2,4', '2024-04-23 07:50:46'),
(251, 251, '2', '2024-04-23 07:52:39'),
(252, 252, '2', '2024-04-23 07:54:21'),
(253, 253, '2', '2024-04-23 07:56:15'),
(254, 254, '2,3,4,5', '2024-04-23 07:59:33'),
(255, 255, '2,4', '2024-04-23 08:22:25'),
(256, 256, '2,4', '2024-04-23 08:25:01'),
(257, 257, '2,3,4', '2024-04-23 08:28:32'),
(258, 258, '', '2024-04-23 08:30:23'),
(259, 259, '2,4', '2024-04-23 08:33:11'),
(260, 260, '2', '2024-04-23 08:34:42'),
(261, 261, '2', '2024-04-23 08:36:38'),
(262, 262, '2', '2024-04-23 08:38:09'),
(263, 263, '', '2024-04-23 08:39:25'),
(264, 264, '', '2024-04-23 08:41:01'),
(265, 265, '2,3,4,5', '2024-04-23 08:44:30'),
(266, 266, '2', '2024-04-23 08:46:14'),
(267, 267, '2', '2024-04-23 08:47:37'),
(268, 268, '', '2024-04-24 08:18:58'),
(269, 269, '', '2024-04-24 08:20:39'),
(270, 270, '', '2024-04-24 08:22:08'),
(271, 271, '', '2024-05-01 08:42:57'),
(272, 272, '5,19', '2024-10-25 13:39:07'),
(273, 273, '2,3', '2024-12-04 09:42:59'),
(274, 274, '3,4', '2024-12-19 09:45:49'),
(275, 275, '', '2025-02-12 15:55:16'),
(276, 276, '', '2025-03-17 14:57:52'),
(277, 277, '', '2025-03-17 15:02:04'),
(281, 281, '', '2025-03-24 07:21:49'),
(282, 282, '', '2025-03-24 07:25:49'),
(283, 283, '', '2025-03-24 07:33:08'),
(284, 284, '', '2025-03-24 07:39:26'),
(285, 285, '', '2025-03-24 07:45:10'),
(286, 286, '', '2025-03-24 07:49:17'),
(287, 287, '', '2025-03-24 07:52:31'),
(288, 288, '', '2025-03-24 07:58:06'),
(289, 289, '', '2025-03-24 08:01:59'),
(290, 290, '', '2025-03-24 08:05:46'),
(291, 291, '', '2025-03-24 08:09:54'),
(292, 292, '', '2025-03-24 08:13:45'),
(293, 293, '', '2025-03-24 08:17:37'),
(294, 294, '', '2025-03-24 08:20:38'),
(295, 295, '', '2025-03-24 08:24:10'),
(296, 296, '', '2025-03-24 08:28:45'),
(297, 297, '', '2025-03-24 08:32:12'),
(298, 298, '', '2025-03-24 08:35:24'),
(299, 299, '', '2025-03-24 08:38:27'),
(300, 300, '', '2025-03-24 08:41:46'),
(301, 301, '', '2025-03-24 09:14:05'),
(302, 302, '', '2025-03-24 09:18:08'),
(303, 303, '', '2025-03-24 09:21:07'),
(304, 304, '', '2025-03-24 09:24:26'),
(305, 305, '', '2025-03-24 09:27:06'),
(306, 306, '', '2025-03-24 09:36:29'),
(307, 307, '', '2025-03-24 09:40:58'),
(308, 308, '', '2025-03-24 09:44:41'),
(309, 309, '', '2025-03-24 09:47:23'),
(310, 310, '', '2025-03-24 09:53:14'),
(311, 311, '', '2025-03-24 09:57:32'),
(312, 312, '', '2025-03-24 10:01:36'),
(313, 313, '', '2025-03-24 10:05:27'),
(314, 314, '', '2025-03-24 10:08:59'),
(315, 315, '', '2025-03-24 10:13:29'),
(316, 316, '', '2025-03-24 10:16:50'),
(317, 317, '', '2025-03-24 10:19:05'),
(318, 318, '', '2025-03-24 10:20:57'),
(319, 319, '', '2025-03-24 10:25:08'),
(320, 320, '', '2025-03-24 10:28:09'),
(321, 321, '', '2025-03-24 10:30:40'),
(322, 322, '', '2025-03-24 10:33:10'),
(323, 323, '', '2025-03-24 10:35:25'),
(324, 324, '', '2025-03-24 10:37:58'),
(325, 325, '', '2025-03-24 10:40:17'),
(326, 326, '', '2025-03-24 10:43:10'),
(327, 327, '', '2025-03-24 10:49:11'),
(328, 328, '', '2025-03-24 10:51:26'),
(329, 329, '', '2025-03-24 10:54:29'),
(330, 330, '', '2025-03-24 10:58:45'),
(331, 331, '', '2025-03-24 11:02:09'),
(332, 332, '', '2025-03-24 11:05:12'),
(333, 333, '', '2025-03-24 11:08:23'),
(334, 334, '', '2025-03-24 11:12:16'),
(335, 335, '', '2025-03-24 11:19:49'),
(336, 336, '', '2025-03-24 11:23:42'),
(337, 337, '', '2025-03-24 11:28:03'),
(338, 338, '', '2025-03-24 11:32:45'),
(339, 339, '', '2025-03-24 11:36:54'),
(340, 340, '', '2025-03-24 11:40:23'),
(341, 341, '', '2025-03-24 11:43:24'),
(342, 342, '', '2025-03-24 11:47:21'),
(343, 343, '', '2025-03-24 11:50:40'),
(344, 344, '', '2025-03-24 11:56:25'),
(345, 345, '', '2025-03-24 12:07:42'),
(346, 346, '', '2025-03-24 12:16:30'),
(347, 347, '', '2025-03-24 12:20:42'),
(348, 348, '', '2025-03-24 12:23:30'),
(349, 349, '', '2025-03-24 12:25:54'),
(350, 350, '', '2025-03-24 12:28:52'),
(351, 351, '', '2025-03-24 12:35:11'),
(352, 352, '', '2025-03-24 12:38:00'),
(353, 353, '', '2025-03-24 12:40:55'),
(354, 354, '', '2025-03-24 12:43:54'),
(355, 355, '', '2025-03-24 12:46:13'),
(356, 356, '', '2025-03-24 12:48:52'),
(357, 357, '', '2025-03-24 12:52:00'),
(358, 358, '', '2025-03-24 12:54:33'),
(359, 359, '', '2025-03-24 12:57:22'),
(360, 360, '', '2025-03-24 13:21:50'),
(361, 361, '', '2025-03-24 13:24:53'),
(362, 362, '', '2025-03-24 13:29:37'),
(363, 363, '', '2025-03-24 13:32:46'),
(364, 364, '', '2025-03-24 13:35:07'),
(365, 365, '', '2025-03-24 13:38:39'),
(366, 366, '', '2025-03-24 13:41:28'),
(367, 367, '', '2025-03-24 13:44:14'),
(368, 368, '', '2025-03-24 13:48:32'),
(369, 369, '', '2025-03-24 13:50:52'),
(370, 370, '', '2025-03-24 13:56:15'),
(371, 371, '', '2025-03-24 14:03:55'),
(372, 372, '', '2025-03-24 14:10:21'),
(373, 373, '', '2025-03-24 14:16:32'),
(374, 374, '', '2025-03-24 14:20:06'),
(375, 375, '', '2025-03-24 14:22:36'),
(376, 376, '', '2025-03-24 14:25:49'),
(377, 377, '', '2025-03-24 14:37:19'),
(378, 378, '', '2025-03-24 15:02:32'),
(379, 379, '', '2025-03-24 15:05:05'),
(380, 380, '', '2025-03-24 15:08:33'),
(381, 381, '', '2025-03-24 15:13:55'),
(382, 382, '', '2025-03-24 15:18:29'),
(383, 383, '', '2025-03-24 15:20:51'),
(384, 384, '', '2025-03-24 15:23:54'),
(385, 385, '', '2025-03-24 15:27:53'),
(386, 386, '', '2025-03-24 15:40:21'),
(387, 387, '', '2025-03-24 15:42:32'),
(388, 388, '', '2025-03-24 15:44:38'),
(389, 389, '', '2025-03-24 15:48:52'),
(390, 390, '', '2025-03-24 15:58:32'),
(391, 391, '', '2025-03-24 16:01:45'),
(392, 392, '', '2025-03-24 16:13:56'),
(393, 393, '', '2025-03-24 16:26:23'),
(394, 394, '', '2025-03-24 16:29:58'),
(395, 395, '', '2025-03-24 16:32:52'),
(396, 396, '', '2025-03-24 16:35:07'),
(397, 397, '', '2025-03-24 16:48:25'),
(398, 398, '', '2025-03-24 17:43:30'),
(399, 399, '', '2025-03-24 17:46:12'),
(400, 400, '', '2025-03-24 17:52:15'),
(401, 401, '', '2025-03-24 17:55:58'),
(402, 402, '', '2025-03-24 17:58:50'),
(403, 403, '', '2025-03-24 18:01:29'),
(404, 404, '', '2025-03-24 18:03:58'),
(405, 405, '', '2025-03-24 18:10:56'),
(406, 406, '', '2025-03-24 18:15:35'),
(407, 407, '', '2025-03-24 18:18:13'),
(408, 408, '', '2025-03-24 18:21:12'),
(409, 409, '', '2025-03-24 18:25:14'),
(410, 410, '', '2025-03-24 18:38:30'),
(411, 411, '', '2025-03-24 18:44:56'),
(412, 412, '', '2025-03-24 18:47:07'),
(413, 413, '', '2025-03-24 18:53:31'),
(414, 414, '', '2025-03-24 18:59:23'),
(415, 415, '', '2025-03-25 06:32:19'),
(416, 416, '', '2025-03-25 06:35:13'),
(417, 417, '', '2025-03-25 06:38:43'),
(418, 418, '', '2025-03-25 06:41:12'),
(419, 419, '', '2025-03-25 06:44:51'),
(420, 420, '', '2025-03-25 06:49:27'),
(421, 421, '', '2025-03-25 06:52:41'),
(422, 422, '', '2025-03-25 06:54:43'),
(423, 423, '', '2025-03-25 06:57:14'),
(424, 424, '', '2025-03-25 06:58:59'),
(425, 425, '', '2025-03-25 07:00:41'),
(426, 426, '', '2025-03-25 07:02:35'),
(427, 427, '', '2025-03-25 07:13:11'),
(428, 428, '', '2025-03-25 07:16:47'),
(429, 429, '', '2025-03-25 07:19:49'),
(430, 430, '', '2025-03-25 07:22:30'),
(431, 431, '', '2025-03-25 07:27:33'),
(432, 432, '', '2025-03-25 07:33:48'),
(433, 433, '', '2025-03-25 07:35:22'),
(434, 434, '', '2025-03-25 07:37:03'),
(435, 435, '', '2025-03-25 07:42:46'),
(436, 436, '', '2025-03-25 07:46:41'),
(437, 437, '', '2025-03-25 07:50:07'),
(438, 438, '', '2025-03-25 07:52:19'),
(439, 439, '', '2025-03-25 07:56:27'),
(440, 440, '', '2025-03-25 07:58:51'),
(441, 441, '', '2025-03-25 08:00:29'),
(442, 442, '', '2025-03-25 08:03:17'),
(443, 443, '', '2025-03-25 08:06:00'),
(444, 444, '', '2025-03-25 08:07:48'),
(445, 445, '', '2025-03-25 08:09:29'),
(446, 446, '', '2025-03-25 08:12:55'),
(447, 447, '', '2025-03-25 08:15:51'),
(448, 448, '', '2025-03-25 08:18:07'),
(449, 449, '', '2025-03-25 08:20:19'),
(450, 450, '', '2025-03-25 08:23:16'),
(451, 451, '', '2025-03-25 08:34:10'),
(452, 452, '', '2025-03-25 08:37:36'),
(453, 453, '', '2025-03-25 08:41:01'),
(454, 454, '', '2025-03-25 08:42:57'),
(456, 456, '', '2025-04-09 15:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_faqs`
--

DROP TABLE IF EXISTS `product_faqs`;
CREATE TABLE `product_faqs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `votes` int(11) NOT NULL DEFAULT 0,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `answered_by` int(11) NOT NULL DEFAULT 0,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_rating`
--

DROP TABLE IF EXISTS `product_rating`;
CREATE TABLE `product_rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `images` mediumtext DEFAULT NULL,
  `comment` varchar(1024) DEFAULT NULL,
  `data_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

DROP TABLE IF EXISTS `product_variants`;
CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_value_ids` text DEFAULT NULL,
  `attribute_set` varchar(1024) DEFAULT NULL,
  `price` double NOT NULL,
  `special_price` double DEFAULT 0,
  `sku` varchar(128) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `weight` float NOT NULL DEFAULT 0,
  `height` float NOT NULL DEFAULT 0,
  `breadth` float NOT NULL DEFAULT 0,
  `length` float NOT NULL DEFAULT 0,
  `images` text DEFAULT NULL,
  `availability` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `attribute_value_ids`, `attribute_set`, `price`, `special_price`, `sku`, `stock`, `weight`, `height`, `breadth`, `length`, `images`, `availability`, `status`, `date_added`) VALUES
(2, 2, NULL, NULL, 100, 79.99, NULL, NULL, 25, 45, 100, 25, NULL, NULL, 1, '2024-03-12 10:54:40'),
(3, 3, NULL, NULL, 10, 7.97, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2024-03-26 06:48:54'),
(4, 4, NULL, NULL, 20, 6, NULL, NULL, 0.08, 0, 0, 0, NULL, NULL, 1, '2024-03-26 06:51:38'),
(5, 5, NULL, NULL, 100, 97, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-03-26 07:36:21'),
(6, 6, NULL, NULL, 17, 15, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-03-26 19:17:02'),
(7, 7, NULL, NULL, 40, 38, NULL, 0, 5, 0, 0, 0, NULL, 0, 7, '2024-03-27 05:46:24'),
(13, 9, '6', NULL, 3, 2.25, 'Axe123456', 10, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:03:27'),
(14, 9, '7', NULL, 6, 5, 'Axe123456', 10, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:03:27'),
(15, 9, '8', NULL, 10, 8, 'Axe123456', 10, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:03:27'),
(16, 10, '14,9', NULL, 5, 4, 'AG109823', 9, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:17:56'),
(17, 10, '14,10', NULL, 10, 9, 'AG109823', 10, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:17:56'),
(18, 10, '14,11', NULL, 15, 14, 'AG109823', 10, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:17:56'),
(19, 10, '14,12', NULL, 20, 19, 'AG109823', 21, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:17:56'),
(20, 10, '14,13', NULL, 25, 24, 'AG109823', 10, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:17:56'),
(21, 10, '15,9', NULL, 5, 4, 'AG109823', 10, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:17:56'),
(22, 10, '15,10', NULL, 10, 9, 'AG109823', 10, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:17:56'),
(23, 10, '15,11', NULL, 15, 14, 'AG109823', 12, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:17:56'),
(24, 10, '15,12', NULL, 20, 19, 'AG109823', 10, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:17:56'),
(25, 10, '15,13', NULL, 25, 24, 'AG109823', 10, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:17:56'),
(26, 10, '16,9', NULL, 5, 4, 'AG109823', 10, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:17:56'),
(27, 10, '16,10', NULL, 15, 13, 'AG109823', 10, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:17:56'),
(28, 10, '16,11', NULL, 25, 23, 'AG109823', 10, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:17:56'),
(29, 10, '16,12', NULL, 35, 29.99, 'AG109823', 10, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:17:56'),
(30, 10, '16,13', NULL, 40, 35, 'AG109823', 12, 0, 0, 0, 0, '[]', 1, 1, '2024-03-27 10:17:56'),
(31, 11, '17', NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, '[]', NULL, 1, '2024-03-29 12:23:45'),
(32, 12, '4', NULL, 14, 12.5, '93883', 97, 0.5, 0, 0, 0, '[]', 1, 1, '2024-03-30 07:48:24'),
(33, 12, '5', NULL, 28, 25, '93884', 99, 1, 0, 0, 0, '[]', 1, 1, '2024-03-30 07:48:24'),
(34, 13, '4', NULL, 35, 30, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 07:56:16'),
(35, 13, '5', NULL, 70, 60, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 07:56:16'),
(36, 14, '4', NULL, 13, 12.5, '2', 2, 0.5, 0, 0, 0, '[]', 0, 1, '2024-03-30 08:07:35'),
(37, 14, '5', NULL, 30, 25, '1', 3, 1, 0, 0, 0, '[]', 1, 1, '2024-03-30 08:07:35'),
(38, 15, '4', NULL, 12, 10, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:12:17'),
(39, 15, '5', NULL, 24, 20, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:12:17'),
(40, 16, '4', NULL, 17, 15, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:46:41'),
(41, 16, '5', NULL, 34, 30, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:46:41'),
(42, 17, '4', NULL, 16, 15, NULL, NULL, 0.49, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:48:58'),
(43, 17, '5', NULL, 32, 30, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:48:58'),
(44, 18, '4', NULL, 13, 12.5, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:51:39'),
(45, 18, '5', NULL, 26, 25, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:51:39'),
(46, 19, '4', NULL, 11, 10, NULL, NULL, 0.49, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:53:46'),
(47, 19, '5', NULL, 22, 19.99, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:53:46'),
(48, 20, '4', NULL, 12.75, 12.5, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:55:39'),
(49, 20, '5', NULL, 25.5, 25, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:55:39'),
(50, 21, '4', NULL, 15, 15, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:57:45'),
(51, 21, '5', NULL, 30, 30, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:57:45'),
(52, 22, '4', NULL, 22, 20, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:59:31'),
(53, 22, '5', NULL, 44, 40, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 08:59:31'),
(54, 23, '4', NULL, 16, 15, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 09:01:28'),
(55, 23, '5', NULL, 32, 30, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 09:01:28'),
(56, 24, '4', NULL, 13, 12.5, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 09:03:20'),
(57, 24, '5', NULL, 26, 25, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 09:03:20'),
(58, 25, '4', NULL, 15, 15, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 09:07:27'),
(59, 25, '5', NULL, 30, 30, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 09:07:27'),
(60, 26, '4', NULL, 12.5, 12.5, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 09:09:18'),
(61, 26, '5', NULL, 25, 25, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 09:09:18'),
(62, 27, '4', NULL, 13, 12.5, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 09:40:01'),
(63, 27, '5', NULL, 26, 25, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 09:40:01'),
(64, 28, '4', NULL, 11, 10, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 09:43:11'),
(65, 28, '5', NULL, 22, 20, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 09:43:11'),
(66, 29, '4', NULL, 11, 10, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 09:47:50'),
(67, 29, '5', NULL, 22, 20, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 09:47:50'),
(68, 30, '4', NULL, 10, 10, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:12:02'),
(69, 30, '5', NULL, 21, 20, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:12:02'),
(70, 31, '4', NULL, 42, 40, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:14:51'),
(71, 31, '5', NULL, 84, 80, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:14:51'),
(72, 32, '4', NULL, 13, 12.5, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:18:06'),
(73, 32, '5', NULL, 26, 25, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:18:06'),
(74, 33, '4', NULL, 21, 20, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:21:41'),
(75, 33, '5', NULL, 42, 40, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:21:41'),
(76, 34, '4', NULL, 21, 20, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:24:29'),
(77, 34, '5', NULL, 42, 40, NULL, NULL, 0.99, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:24:29'),
(78, 35, '17', NULL, 0.75, 0.75, '', 40, 0.05, 0, 0, 0, '[]', 1, 1, '2024-03-30 10:26:19'),
(79, 36, '4', NULL, 11, 10, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:28:41'),
(80, 36, '5', NULL, 22, 20, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:28:41'),
(81, 37, '4', NULL, 11, 10, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:30:49'),
(82, 37, '5', NULL, 22, 20, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:30:49'),
(83, 38, '4', NULL, 11, 10, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:33:52'),
(84, 38, '5', NULL, 22, 20, NULL, NULL, 0.99, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:33:52'),
(85, 39, '4', NULL, 11, 10, NULL, NULL, 0.49, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:36:12'),
(86, 39, '5', NULL, 22, 20, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:36:12'),
(87, 40, '4', NULL, 10, 10, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:40:33'),
(88, 40, '5', NULL, 20, 20, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:40:33'),
(89, 41, '4', NULL, 10.5, 10, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:42:36'),
(90, 41, '5', NULL, 21, 20, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:42:36'),
(91, 42, '4', NULL, 26.02, 25, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:45:20'),
(92, 42, '5', NULL, 52, 50, NULL, NULL, 0.99, 0, 0, 0, '[]', NULL, 1, '2024-03-30 10:45:20'),
(93, 43, '4', NULL, 43, 39.99, '100', 1, 0.49, 0, 0, 0, '[]', 0, 1, '2024-03-30 10:47:31'),
(94, 43, '5', NULL, 86, 80, '100', 1, 1, 0, 0, 0, '[]', 0, 1, '2024-03-30 10:47:31'),
(95, 44, '4', NULL, 6, 5, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 08:04:48'),
(96, 44, '29', NULL, 3, 2.5, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 08:04:48'),
(97, 45, '4', NULL, 10, 9, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 08:08:27'),
(98, 45, '29', NULL, 5, 4.5, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 08:08:27'),
(99, 46, '4', NULL, 20, 18, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 08:11:51'),
(100, 46, '29', NULL, 10, 9, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 08:11:51'),
(101, 47, '4', NULL, 12.5, 12.5, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 08:17:55'),
(102, 47, '29', NULL, 6.25, 6.25, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 08:17:55'),
(103, 48, '4', NULL, 20, 20, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 08:21:36'),
(104, 48, '29', NULL, 10, 10, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 08:21:36'),
(105, 49, '4', NULL, 9, 8, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:02:58'),
(106, 49, '29', NULL, 5, 4, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:02:58'),
(107, 50, '4', NULL, 7.5, 7.5, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:13:32'),
(108, 50, '29', NULL, 15, 15, NULL, NULL, 0.24, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:13:32'),
(109, 51, '2', NULL, 23, 22.5, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:17:01'),
(110, 51, '29', NULL, 12, 11.25, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:17:01'),
(111, 52, '4', NULL, 24, 24, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:20:17'),
(112, 52, '29', NULL, 12, 12, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:20:17'),
(113, 53, '4', NULL, 12, 12, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:23:45'),
(114, 53, '29', NULL, 6, 6, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:23:45'),
(115, 54, '4', NULL, 12, 12, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:27:47'),
(116, 54, '29', NULL, 6, 6, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:27:47'),
(117, 55, '4', NULL, 12, 12, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:30:00'),
(118, 55, '29', NULL, 6, 6, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:30:00'),
(119, 56, '4', NULL, 12, 12, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:31:59'),
(120, 56, '29', NULL, 6, 6, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:31:59'),
(121, 57, '4', NULL, 12, 12, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:36:40'),
(122, 57, '29', NULL, 6, 6, NULL, NULL, 0.23, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:36:40'),
(123, 58, '4', NULL, 12, 12, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:38:42'),
(124, 58, '29', NULL, 6, 6, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:38:42'),
(125, 59, '4', NULL, 12, 12, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:46:41'),
(126, 59, '29', NULL, 6.04, 6, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:46:41'),
(127, 60, '4', NULL, 12, 12, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:51:00'),
(128, 60, '29', NULL, 6, 6, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:51:00'),
(129, 61, '4', NULL, 12, 12, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:54:21'),
(130, 61, '29', NULL, 6, 6, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 09:54:21'),
(131, 62, '4', NULL, 16, 16, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 10:03:57'),
(132, 62, '29', NULL, 8, 8, NULL, NULL, 0.24, 0, 0, 0, '[]', NULL, 1, '2024-04-01 10:03:57'),
(133, 63, '4', NULL, 16, 16, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 10:06:35'),
(134, 63, '29', NULL, 8, 8, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 10:06:35'),
(135, 64, '4', NULL, 18, 18, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 10:08:46'),
(136, 64, '29', NULL, 9, 9, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 10:08:46'),
(137, 65, '4', NULL, 25, 24, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 10:11:48'),
(138, 65, '29', NULL, 12, 11.99, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-01 10:11:48'),
(139, 66, '4', NULL, 24, 24, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 10:14:19'),
(140, 66, '29', NULL, 12, 12, NULL, NULL, 0.23, 0, 0, 0, '[]', NULL, 1, '2024-04-01 10:14:19'),
(141, 67, '4', NULL, 24, 24, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-01 10:16:01'),
(142, 67, '29', NULL, 12, 12, NULL, NULL, 0.24, 0, 0, 0, '[]', NULL, 1, '2024-04-01 10:16:01'),
(143, 68, '5', NULL, 7.5, 7.35, NULL, NULL, 1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240402_125050869.jpg\"]', NULL, 1, '2024-04-02 08:46:20'),
(144, 68, '22', NULL, 110, 105, NULL, NULL, 20, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240402_125129801.jpg\"]', NULL, 1, '2024-04-02 08:46:20'),
(145, 68, '25', NULL, 40, 34.13, NULL, NULL, 5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240402_125200683.jpg\"]', NULL, 1, '2024-04-02 08:46:20'),
(146, 7, '5', NULL, 8, 7.88, '', 0, 0, 0, 0, 0, '[]', 0, 1, '2024-04-02 09:04:21'),
(147, 69, '5', NULL, 17.5, 17.17, NULL, NULL, 1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231205_002952974.jpg\"]', NULL, 1, '2024-04-02 09:17:18'),
(148, 69, '22', NULL, 89.75, 89.5, NULL, NULL, 20, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231229_105443782.jpg\",\"uploads\\/media\\/2024\\/InShot_20231229_105122945.jpg\"]', NULL, 1, '2024-04-02 09:17:18'),
(149, 69, '25', NULL, 29, 28, NULL, NULL, 5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231229_105443782.jpg\"]', NULL, 1, '2024-04-02 09:17:18'),
(150, 70, '5', NULL, 6, 5.78, NULL, NULL, 1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240118_005027141.jpg\"]', NULL, 1, '2024-04-02 11:09:18'),
(151, 70, '20', NULL, 25, 24, NULL, NULL, 5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231229_104750924.jpg\"]', NULL, 1, '2024-04-02 11:09:18'),
(152, 70, '22', NULL, 91, 90, NULL, NULL, 20, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231229_105637090.jpg\"]', NULL, 1, '2024-04-02 11:09:18'),
(153, 71, '5', NULL, 9, 8.4, NULL, NULL, 1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240118_010259460.jpg\"]', NULL, 1, '2024-04-02 11:40:17'),
(154, 71, '20', NULL, 44, 42, NULL, NULL, 5, 0, 0, 0, '[]', NULL, 1, '2024-04-02 11:40:17'),
(155, 71, '22', NULL, 135, 131.25, NULL, NULL, 20, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231229_105028405.jpg\"]', NULL, 1, '2024-04-02 11:40:17'),
(156, 72, NULL, NULL, 3.15, 3.15, NULL, NULL, 0.18, 0, 0, 0, NULL, NULL, 1, '2024-04-02 11:51:47'),
(157, 73, NULL, NULL, 3.15, 3.15, NULL, NULL, 0.18, 0, 0, 0, NULL, NULL, 1, '2024-04-02 11:54:56'),
(158, 74, NULL, NULL, 3.15, 3.15, NULL, NULL, 0.18, 0, 0, 0, NULL, NULL, 1, '2024-04-02 11:59:02'),
(159, 75, NULL, NULL, 3.15, 3.15, NULL, NULL, 0.18, 0, 0, 0, NULL, NULL, 1, '2024-04-02 12:13:43'),
(160, 76, NULL, NULL, 3.15, 3.15, NULL, NULL, 0.18, 0, 0, 0, NULL, NULL, 1, '2024-04-02 12:15:40'),
(161, 77, NULL, NULL, 3.15, 3.15, NULL, NULL, 0.18, 0, 0, 0, NULL, NULL, 1, '2024-04-02 12:17:33'),
(162, 78, NULL, NULL, 7, 6.3, NULL, NULL, 250, 0, 0, 0, NULL, NULL, 1, '2024-04-03 08:35:01'),
(163, 79, NULL, NULL, 8, 7.88, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-03 08:38:13'),
(164, 80, NULL, NULL, 5.78, 5.78, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-03 08:40:56'),
(165, 81, NULL, NULL, 7.5, 7.35, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-03 08:42:52'),
(166, 82, NULL, NULL, 9, 8.92, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-03 08:44:24'),
(167, 83, NULL, NULL, 7, 6.3, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-03 08:46:23'),
(168, 84, NULL, NULL, 9, 8.93, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2024-04-03 09:10:09'),
(169, 85, NULL, NULL, 7.5, 7.09, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2024-04-03 09:13:19'),
(170, 86, NULL, NULL, 5.25, 5.25, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2024-04-03 09:16:11'),
(171, 87, NULL, NULL, 3.75, 3.68, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2024-04-03 09:18:13'),
(172, 88, NULL, NULL, 8, 7.86, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-03 09:20:16'),
(173, 89, '4', NULL, 9, 8.93, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231205_003027925.jpg\"]', NULL, 1, '2024-04-03 09:24:24'),
(174, 89, '5', NULL, 18, 17.85, NULL, NULL, 1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231205_003027925.jpg\"]', NULL, 1, '2024-04-03 09:24:24'),
(175, 90, NULL, NULL, 7.5, 7.35, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-03 09:26:16'),
(176, 91, NULL, NULL, 5.5, 5.25, NULL, NULL, 0.05, 0, 0, 0, NULL, NULL, 1, '2024-04-03 09:30:28'),
(177, 92, NULL, NULL, 7.5, 7.35, NULL, NULL, 0.05, 0, 0, 0, NULL, NULL, 1, '2024-04-03 09:35:41'),
(178, 93, NULL, NULL, 15, 14.7, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-03 10:39:39'),
(179, 94, NULL, NULL, 7, 6.83, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-03 10:42:32'),
(180, 95, NULL, NULL, 7, 6.83, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-03 10:44:44'),
(181, 96, '3', NULL, 4.5, 4.2, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231205_184700997.jpg\"]', NULL, 1, '2024-04-03 10:54:12'),
(182, 96, '29', NULL, 5.5, 5.25, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231205_184859715.jpg\"]', NULL, 1, '2024-04-03 10:54:12'),
(183, 97, NULL, NULL, 7.5, 7.35, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-03 11:13:50'),
(184, 98, NULL, NULL, 6.83, 6.83, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-03 11:24:51'),
(185, 99, NULL, NULL, 4.5, 4.2, NULL, NULL, 0.18, 0, 0, 0, NULL, NULL, 1, '2024-04-04 07:45:48'),
(186, 100, NULL, NULL, 4.2, 4.2, NULL, NULL, 0.18, 0, 0, 0, NULL, NULL, 1, '2024-04-04 08:42:34'),
(187, 101, NULL, NULL, 5.2, 4.2, NULL, NULL, 0.18, 0, 0, 0, NULL, NULL, 1, '2024-04-04 08:44:44'),
(188, 102, NULL, NULL, 4.5, 4.2, NULL, NULL, 0.18, 0, 0, 0, NULL, NULL, 1, '2024-04-04 08:48:10'),
(189, 103, NULL, NULL, 4.5, 4.2, NULL, NULL, 0.18, 0, 0, 0, NULL, NULL, 1, '2024-04-04 08:50:03'),
(190, 104, NULL, NULL, 4.5, 4.2, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 08:52:33'),
(191, 105, NULL, NULL, 5.25, 5.25, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 08:54:36'),
(192, 106, NULL, NULL, 6.5, 6.04, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 08:57:01'),
(193, 107, NULL, NULL, 5.25, 5.25, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 08:59:45'),
(194, 108, NULL, NULL, 6.04, 6.04, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 09:01:41'),
(195, 109, NULL, NULL, 2.65, 2.63, NULL, NULL, 0.19, 0, 0, 0, NULL, NULL, 1, '2024-04-04 09:03:43'),
(196, 110, '31', NULL, 7.35, 7.35, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231215_110410769.jpg\"]', NULL, 1, '2024-04-04 09:33:05'),
(197, 110, '32', NULL, 9, 8.93, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231215_110549070.jpg\"]', NULL, 1, '2024-04-04 09:33:05'),
(198, 110, '33', NULL, 8.95, 8.93, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/Vathalkulambu_Masala_250_gm.png\"]', NULL, 1, '2024-04-04 09:33:05'),
(199, 110, '34', NULL, 8.96, 8.93, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240117_171705822.jpg\"]', NULL, 1, '2024-04-04 09:33:05'),
(200, 110, '35', NULL, 7.5, 7.35, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/Vathalkulambu_Masala_250_gm.png\"]', NULL, 1, '2024-04-04 09:33:05'),
(201, 110, '36', NULL, 6.83, 6.83, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231215_110504298.jpg\"]', NULL, 1, '2024-04-04 09:33:05'),
(202, 110, '37', NULL, 10, 9.45, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231215_111239719.jpg\"]', NULL, 1, '2024-04-04 09:33:05'),
(203, 110, '38', NULL, 10.75, 10.5, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231215_111355148.jpg\"]', NULL, 1, '2024-04-04 09:33:05'),
(204, 110, '39', NULL, 10, 9.98, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231215_111717363.jpg\"]', NULL, 1, '2024-04-04 09:33:05'),
(205, 110, '40', NULL, 10, 9.98, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231215_110312668.jpg\"]', NULL, 1, '2024-04-04 09:33:05'),
(206, 111, NULL, NULL, 8.5, 8.4, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-04 09:44:12'),
(207, 112, NULL, NULL, 12.6, 12.6, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-04 09:48:04'),
(208, 113, NULL, NULL, 19, 18.9, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 09:50:21'),
(209, 114, NULL, NULL, 13.75, 13.65, NULL, NULL, 0.75, 0, 0, 0, NULL, NULL, 1, '2024-04-04 09:53:00'),
(210, 115, NULL, NULL, 4, 3.63, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-04 09:55:00'),
(211, 116, NULL, NULL, 8.45, 8.4, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-04 09:57:45'),
(212, 117, NULL, NULL, 40, 39.9, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-04 10:16:07'),
(213, 118, NULL, NULL, 7.15, 7.09, NULL, NULL, 0.05, 0, 0, 0, NULL, NULL, 1, '2024-04-04 10:18:49'),
(214, 119, NULL, NULL, 25.73, 25.73, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 10:21:34'),
(215, 120, NULL, NULL, 5.25, 5.25, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-04 10:24:25'),
(216, 121, NULL, NULL, 27, 26.25, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-04 10:38:46'),
(217, 122, NULL, NULL, 31, 30.45, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-04 10:44:36'),
(218, 123, NULL, NULL, 28, 27.3, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-04 11:16:08'),
(219, 124, NULL, NULL, 22, 21, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-04 11:18:17'),
(220, 125, NULL, NULL, 5.5, 5.25, NULL, NULL, 0.05, 0, 0, 0, NULL, NULL, 1, '2024-04-04 11:20:25'),
(221, 126, NULL, NULL, 13, 12.6, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 11:40:09'),
(222, 127, NULL, NULL, 9.45, 9.45, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 11:43:06'),
(223, 128, NULL, NULL, 12.75, 12.6, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 11:48:49'),
(224, 129, NULL, NULL, 9, 8.4, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 11:52:47'),
(225, 130, NULL, NULL, 8.5, 8.4, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 11:55:22'),
(226, 131, NULL, NULL, 8.6, 8.4, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 11:58:43'),
(227, 132, NULL, NULL, 7, 6.83, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 12:02:28'),
(228, 133, NULL, NULL, 10, 9.98, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 12:04:59'),
(229, 134, NULL, NULL, 7, 6.83, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 12:07:34'),
(230, 135, NULL, NULL, 8.5, 8.4, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 12:09:56'),
(231, 136, NULL, NULL, 8, 7.88, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 12:12:18'),
(232, 137, NULL, NULL, 4, 3.94, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 12:15:05'),
(233, 138, NULL, NULL, 8.4, 8.4, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 12:17:49'),
(234, 139, NULL, NULL, 9.45, 9.45, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-04 12:47:51'),
(235, 140, NULL, NULL, 10, 9.45, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-04 12:51:30'),
(236, 141, NULL, NULL, 10, 9.98, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-04 12:53:47'),
(237, 142, NULL, NULL, 9.45, 9.45, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-04 12:56:59'),
(238, 143, NULL, NULL, 9.98, 9.98, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-04 12:59:55'),
(239, 144, NULL, NULL, 9.45, 9.45, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-04 13:02:37'),
(240, 145, NULL, NULL, 3.15, 3.15, NULL, NULL, 0.05, 0, 0, 0, NULL, NULL, 1, '2024-04-04 13:05:16'),
(241, 146, NULL, NULL, 5.25, 5.25, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 7, '2024-04-04 13:07:33'),
(242, 146, '2', NULL, 5.5, 5.25, NULL, NULL, 0.1, 0, 0, 0, '[]', NULL, 1, '2024-04-04 13:10:48'),
(243, 146, '29', NULL, 12, 11.55, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-04 13:10:48'),
(244, 147, NULL, NULL, 15.75, 15.75, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 13:14:26'),
(245, 148, NULL, NULL, 13, 12.6, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-04 13:16:58'),
(246, 149, NULL, NULL, 1.58, 1.58, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2024-04-04 13:21:20'),
(247, 150, NULL, NULL, 2.1, 2.1, NULL, NULL, 0.05, 0, 0, 0, NULL, NULL, 1, '2024-04-04 13:28:16'),
(248, 151, NULL, NULL, 6.5, 6.3, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-04 13:34:43'),
(249, 152, NULL, NULL, 2.25, 2.1, NULL, NULL, 0.05, 0, 0, 0, NULL, NULL, 1, '2024-04-05 08:09:46'),
(250, 153, NULL, NULL, 7.9, 7.88, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-05 08:11:58'),
(251, 154, NULL, NULL, 3.15, 3.15, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-05 08:14:10'),
(252, 155, NULL, NULL, 6, 5.51, NULL, NULL, 0.05, 0, 0, 0, NULL, NULL, 1, '2024-04-05 08:16:42'),
(253, 156, NULL, NULL, 3.25, 3.15, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-05 08:19:33'),
(254, 157, NULL, NULL, 3.94, 3.94, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2024-04-05 08:22:06'),
(255, 158, NULL, NULL, 11.55, 11.55, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-05 09:57:32'),
(256, 159, NULL, NULL, 11, 10.5, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-05 10:01:07'),
(257, 160, NULL, NULL, 8.5, 8.4, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-05 10:04:49'),
(258, 161, NULL, NULL, 8, 7.5, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-05 10:08:14'),
(259, 162, NULL, NULL, 6, 5.78, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-05 10:10:53'),
(260, 163, NULL, NULL, 3.75, 3.68, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-05 10:40:12'),
(261, 164, NULL, NULL, 4.2, 4.2, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-05 10:43:53'),
(262, 165, NULL, NULL, 3.75, 3.67, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-05 10:45:56'),
(263, 166, NULL, NULL, 3.99, 3.93, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 7, '2024-04-05 10:47:21'),
(264, 166, '4', NULL, 6, 5.25, NULL, NULL, 0.5, 0, 0, 0, '[]', NULL, 1, '2024-04-05 10:49:31'),
(265, 166, '29', NULL, 4, 3.94, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-05 10:49:31'),
(266, 167, NULL, NULL, 11.03, 11.03, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-05 10:55:14'),
(267, 168, NULL, NULL, 10, 9.98, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-05 10:58:59'),
(268, 169, NULL, NULL, 4.2, 4.2, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-05 11:02:50'),
(269, 170, NULL, NULL, 4.75, 4.73, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-05 11:06:13'),
(270, 171, NULL, NULL, 6.99, 6.83, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2024-04-05 11:07:56'),
(271, 172, NULL, NULL, 5, 4.74, NULL, NULL, 0.24, 0, 0, 0, NULL, NULL, 1, '2024-04-05 11:09:40'),
(272, 173, NULL, NULL, 3.75, 3.68, NULL, NULL, 0.26, 0, 0, 0, NULL, NULL, 1, '2024-04-05 11:11:25'),
(273, 174, '5', NULL, 1, 1, NULL, NULL, 0, 0, 0, 0, '[]', NULL, 7, '2024-04-05 11:13:31'),
(274, 174, '19', NULL, 1, 1, NULL, NULL, 0, 0, 0, 0, '[]', NULL, 7, '2024-04-05 11:13:31'),
(275, 174, '43,4', NULL, 5.25, 5.25, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231205_170056179.jpg\"]', NULL, 1, '2024-04-05 11:17:06'),
(276, 174, '44,4', NULL, 6.5, 6.3, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20231205_165943672.jpg\"]', NULL, 1, '2024-04-05 11:17:06'),
(277, 175, '29,43', NULL, 3.75, 3.68, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240118_022218004.jpg\"]', NULL, 7, '2024-04-05 11:20:22'),
(278, 175, '29,44', NULL, 3.15, 3.15, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240118_010231314.jpg\"]', NULL, 7, '2024-04-05 11:20:22'),
(279, 175, '43,29', NULL, 3.75, 3.69, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240118_022218004.jpg\"]', NULL, 1, '2024-04-05 11:22:03'),
(280, 175, '45,29', NULL, 3.25, 3.15, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240118_010231314.jpg\"]', NULL, 1, '2024-04-05 11:22:03'),
(281, 176, '10,56', NULL, 2.25, 2, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_134238836.jpg\"]', NULL, 1, '2024-04-06 07:14:59'),
(282, 176, '10,57', NULL, 2.25, 2, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_134308911.jpg\"]', NULL, 1, '2024-04-06 07:14:59'),
(283, 176, '10,58', NULL, 2.25, 2, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_134338304.jpg\"]', NULL, 1, '2024-04-06 07:14:59'),
(284, 176, '10,59', NULL, 2.25, 2, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_134421834.jpg\"]', NULL, 1, '2024-04-06 07:14:59'),
(285, 177, '10,15', NULL, 4.25, 4, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_133905401.jpg\"]', NULL, 1, '2024-04-06 07:22:41'),
(286, 177, '10,57', NULL, 4, 4, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_133818582.jpg\"]', NULL, 1, '2024-04-06 07:22:41'),
(287, 177, '10,58', NULL, 4, 4, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_134030055.jpg\"]', NULL, 1, '2024-04-06 07:22:41'),
(288, 177, '10,60', NULL, 4, 4, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_133946507.jpg\"]', NULL, 1, '2024-04-06 07:22:41'),
(289, 178, NULL, NULL, 4, 4, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2024-04-06 07:27:54'),
(290, 179, '10', NULL, 2, 2, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_134533471.jpg\"]', NULL, 1, '2024-04-06 07:31:03'),
(291, 179, '12', NULL, 8, 7.5, NULL, NULL, 1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_134614284.jpg\"]', NULL, 1, '2024-04-06 07:31:03'),
(292, 180, '10,15', NULL, 2, 2, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_134917176.jpg\"]', NULL, 1, '2024-04-06 07:39:09'),
(293, 180, '12,61', NULL, 8, 7.5, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 1, '2024-04-06 07:39:09'),
(294, 180, '62,61', NULL, 3, 3, NULL, NULL, 0.25, 0, 0, 0, '[]', NULL, 1, '2024-04-06 07:39:09'),
(295, 181, '6,69', NULL, 24.5, 24.5, NULL, NULL, 0.4, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_004654085.jpg\",\"uploads\\/media\\/2024\\/InShot_20240116_004614413.jpg\"]', NULL, 1, '2024-04-06 08:05:34'),
(296, 181, '7,69', NULL, 36, 36, NULL, NULL, 0.6, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_004654085.jpg\",\"uploads\\/media\\/2024\\/InShot_20240116_004753131.jpg\"]', NULL, 1, '2024-04-06 08:05:34'),
(297, 181, '8', NULL, 4.75, 4.75, NULL, NULL, 0.01, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_004506372.jpg\"]', NULL, 7, '2024-04-06 08:05:34'),
(298, 181, '64', NULL, 5.75, 5.75, NULL, NULL, 0.01, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_004506372.jpg\"]', NULL, 7, '2024-04-06 08:05:34'),
(299, 181, '65', NULL, 9.25, 9.25, NULL, NULL, 0.03, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_004547721.jpg\"]', NULL, 7, '2024-04-06 08:05:34'),
(300, 181, '68', NULL, 12.2, 12.2, NULL, NULL, 0.05, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_004722154.jpg\"]', NULL, 7, '2024-04-06 08:05:34'),
(301, 181, '6,70', NULL, 2.25, 2.25, NULL, NULL, 0.03, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_004506372.jpg\"]', NULL, 1, '2024-04-06 08:17:11'),
(302, 181, '7,70', NULL, 3.25, 3.25, NULL, NULL, 0.05, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_004506372.jpg\"]', NULL, 1, '2024-04-06 08:17:11'),
(303, 181, '8,70', NULL, 4.75, 4.75, NULL, NULL, 0.01, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_004547721.jpg\"]', NULL, 1, '2024-04-06 08:17:11'),
(304, 181, '64,70', NULL, 5.75, 5.75, NULL, NULL, 0.14, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_004722154.jpg\"]', NULL, 1, '2024-04-06 08:17:11'),
(305, 181, '65,70', NULL, 10.5, 10.5, NULL, NULL, 0.03, 0, 0, 0, '[]', NULL, 1, '2024-04-06 08:17:11'),
(306, 181, '68,70', NULL, 12.2, 12.2, NULL, NULL, 0.05, 0, 0, 0, '[]', NULL, 1, '2024-04-06 08:17:11'),
(307, 182, NULL, NULL, 9, 8.75, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 09:24:00'),
(308, 183, '2', NULL, 10.5, 10.5, NULL, NULL, 0.01, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_001619901.jpg\"]', NULL, 1, '2024-04-06 09:30:10'),
(309, 183, '29', NULL, 26.25, 26.25, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_001703711.jpg\"]', NULL, 1, '2024-04-06 09:30:10'),
(310, 184, NULL, NULL, 4.25, 4.25, NULL, NULL, 0.25, 0, 0, 0, NULL, NULL, 1, '2024-04-06 09:39:17'),
(311, 185, NULL, NULL, 12, 12, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 09:42:09'),
(312, 186, '6', NULL, 4, 4, NULL, NULL, 0.03, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_005122068.jpg\"]', NULL, 1, '2024-04-06 09:46:52'),
(313, 186, '72', NULL, 18, 18, NULL, NULL, 0.02, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_005056071.jpg\"]', NULL, 1, '2024-04-06 09:46:52'),
(314, 187, NULL, NULL, 4.5, 4.5, NULL, NULL, 0.05, 0, 0, 0, NULL, NULL, 1, '2024-04-06 09:49:32'),
(315, 188, NULL, NULL, 13.5, 13.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 09:51:42'),
(316, 189, NULL, NULL, 5, 5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 09:52:46'),
(317, 190, '73', NULL, 13.99, 13.75, NULL, NULL, 0.06, 0, 0, 0, '[]', NULL, 1, '2024-04-06 09:56:07'),
(318, 190, '74', NULL, 19.5, 19.45, NULL, NULL, 0.21, 0, 0, 0, '[]', NULL, 1, '2024-04-06 09:56:07'),
(319, 191, NULL, NULL, 15, 15, NULL, NULL, 0.06, 0, 0, 0, NULL, NULL, 1, '2024-04-06 09:57:40'),
(320, 192, '6,69', NULL, 24.5, 24.5, NULL, NULL, 0.3, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_005501597.jpg\"]', NULL, 1, '2024-04-06 10:11:51'),
(321, 192, '6,70', NULL, 2.25, 2.25, NULL, NULL, 0.03, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_005425605.jpg\"]', NULL, 1, '2024-04-06 10:11:51'),
(322, 192, '8,70', NULL, 4.75, 4.75, NULL, NULL, 0.01, 0, 0, 0, '[]', NULL, 1, '2024-04-06 10:11:51'),
(323, 192, '75,70', NULL, 7.75, 7.74, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_005310582.jpg\"]', NULL, 1, '2024-04-06 10:11:51'),
(324, 193, '9', NULL, 50, 48, NULL, NULL, 0.09, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_005631069.jpg\"]', NULL, 1, '2024-04-06 10:14:55'),
(325, 193, '10', NULL, 72, 71, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_005729320.jpg\"]', NULL, 1, '2024-04-06 10:14:55'),
(326, 193, '11', NULL, 95.01, 94, NULL, NULL, 0.4, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_005656654.jpg\"]', NULL, 1, '2024-04-06 10:14:55'),
(327, 194, NULL, NULL, 22, 21, NULL, NULL, 0.06, 0, 0, 0, NULL, NULL, 1, '2024-04-06 10:17:04'),
(328, 195, '71', NULL, 9, 8.5, NULL, NULL, 0.01, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_233444361.jpg\"]', NULL, 1, '2024-04-06 10:20:16'),
(329, 195, '77', NULL, 14, 13.5, NULL, NULL, 0.05, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_233408260.jpg\"]', NULL, 1, '2024-04-06 10:20:16'),
(330, 196, '43', NULL, 5.5, 5.5, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_233616755.jpg\"]', NULL, 1, '2024-04-06 10:24:17'),
(331, 196, '79', NULL, 5.9, 5.9, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_234245901.jpg\"]', NULL, 1, '2024-04-06 10:24:17'),
(332, 196, '80', NULL, 10, 10, NULL, NULL, 0.12, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_234308669.jpg\"]', NULL, 1, '2024-04-06 10:24:17'),
(333, 197, NULL, NULL, 11.25, 11.25, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 10:25:41'),
(334, 198, NULL, NULL, 18.25, 18.24, NULL, NULL, 0.14, 0, 0, 0, NULL, NULL, 1, '2024-04-06 10:27:15'),
(335, 199, NULL, NULL, 10.5, 10.5, NULL, NULL, 0.05, 0, 0, 0, NULL, NULL, 1, '2024-04-06 10:28:40'),
(336, 200, '73,44', NULL, 20, 20, NULL, NULL, 0.06, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_020047681.jpg\"]', NULL, 1, '2024-04-06 10:39:20'),
(337, 200, '73,87', NULL, 20, 20, NULL, NULL, 0.06, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_015954448.jpg\"]', NULL, 1, '2024-04-06 10:39:20'),
(338, 200, '81,44', NULL, 12.25, 12.25, NULL, NULL, 0.02, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_020047681.jpg\"]', NULL, 1, '2024-04-06 10:39:20'),
(339, 200, '81,87', NULL, 12.25, 12.25, NULL, NULL, 0.03, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_015954448.jpg\"]', NULL, 1, '2024-04-06 10:39:20'),
(340, 201, NULL, NULL, 15.5, 15.5, NULL, NULL, 0.01, 0, 0, 0, NULL, NULL, 1, '2024-04-06 10:40:43'),
(341, 202, NULL, NULL, 15.5, 15.5, NULL, NULL, 0.01, 0, 0, 0, NULL, NULL, 1, '2024-04-06 10:42:13'),
(342, 203, NULL, NULL, 15.5, 15.5, NULL, NULL, 0.01, 0, 0, 0, NULL, NULL, 1, '2024-04-06 10:44:16'),
(343, 204, NULL, NULL, 17.25, 17.25, NULL, NULL, 0.03, 0, 0, 0, NULL, NULL, 1, '2024-04-06 10:45:43'),
(344, 205, NULL, NULL, 19.75, 19.75, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 10:47:00'),
(345, 206, '84', NULL, 20, 20, NULL, NULL, 0.05, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240117_000212643.jpg\"]', NULL, 1, '2024-04-06 10:49:08'),
(346, 206, '85', NULL, 24.25, 24.25, NULL, NULL, 0.08, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240117_000141740.jpg\"]', NULL, 1, '2024-04-06 10:49:08'),
(347, 207, '8', NULL, 12.5, 12.5, NULL, NULL, 0.01, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240117_000253039.jpg\"]', NULL, 1, '2024-04-06 10:51:25'),
(348, 207, '84', NULL, 28, 28, NULL, NULL, 0.05, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240117_000335708.jpg\"]', NULL, 1, '2024-04-06 10:51:25'),
(349, 208, NULL, NULL, 15, 14, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 10:52:41'),
(350, 209, '43,88', NULL, 7.25, 7.25, NULL, NULL, 0.01, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_020557140.jpg\"]', NULL, 1, '2024-04-06 11:03:09'),
(351, 209, '44,88', NULL, 7.25, 7.25, NULL, NULL, 0.01, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_020638612.jpg\"]', NULL, 1, '2024-04-06 11:03:09'),
(352, 210, '82', NULL, 9.5, 9.5, NULL, NULL, 0.03, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_020754733.jpg\"]', NULL, 1, '2024-04-06 11:09:10'),
(353, 210, '91', NULL, 14.75, 14.75, NULL, NULL, 0.06, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_113042399.jpg\"]', NULL, 1, '2024-04-06 11:09:10'),
(354, 211, NULL, NULL, 5.25, 5.25, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 11:11:40'),
(355, 212, '6,78', NULL, 5.75, 5.74, NULL, NULL, 0.03, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_113215671.jpg\"]', NULL, 1, '2024-04-06 11:17:14'),
(356, 212, '6,86', NULL, 5.75, 5.75, NULL, NULL, 0.03, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_113257558.jpg\"]', NULL, 1, '2024-04-06 11:17:14'),
(357, 212, '75,78', NULL, 9.5, 9.49, NULL, NULL, 0.07, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_232351071.jpg\"]', NULL, 1, '2024-04-06 11:17:14'),
(358, 212, '75,86', NULL, 9.25, 9.25, NULL, NULL, 0.07, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_231936902.jpg\"]', NULL, 1, '2024-04-06 11:17:14'),
(359, 212, '89,78', NULL, 17.75, 17.74, NULL, NULL, 0.03, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_232316977.jpg\"]', NULL, 1, '2024-04-06 11:17:14'),
(360, 212, '89,86', NULL, 17.75, 17.75, NULL, NULL, 0.03, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_231524603.jpg\"]', NULL, 1, '2024-04-06 11:17:14'),
(361, 213, '79', NULL, 8.5, 8.5, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_232903882.jpg\"]', NULL, 1, '2024-04-06 11:21:53'),
(362, 213, '87', NULL, 8.5, 8.49, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_232806132.jpg\"]', NULL, 1, '2024-04-06 11:21:53'),
(363, 213, '90', NULL, 8.5, 8.5, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_232934940.jpg\"]', NULL, 1, '2024-04-06 11:21:53'),
(364, 214, '43,82', NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 7, '2024-04-06 11:26:42'),
(365, 214, '43,88', NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, '[]', NULL, 7, '2024-04-06 11:26:42'),
(366, 214, '44,82', NULL, 1, 1, NULL, NULL, 0, 0, 0, 0, '[]', NULL, 7, '2024-04-06 11:26:42'),
(367, 214, '44,88', NULL, 1, 1, NULL, NULL, 0.99, 0, 0, 0, '[]', NULL, 7, '2024-04-06 11:26:42'),
(368, 214, '43,93', NULL, 5.5, 5.5, NULL, NULL, 0.01, 0, 0, 0, '[]', NULL, 1, '2024-04-06 11:29:18'),
(369, 214, '44,92', NULL, 5.5, 5.5, NULL, NULL, 0, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_235117074.jpg\"]', NULL, 1, '2024-04-06 11:29:18'),
(370, 215, '65', NULL, 7.5, 7.5, NULL, NULL, 0.03, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240116_235937456.jpg\"]', NULL, 1, '2024-04-06 11:31:36'),
(371, 215, '76', NULL, 13.75, 13.75, NULL, NULL, 0.05, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240117_000023358.jpg\"]', NULL, 1, '2024-04-06 11:31:36'),
(372, 216, NULL, NULL, 11.75, 11.75, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 11:32:52'),
(373, 217, NULL, NULL, 26.25, 26.24, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2024-04-06 11:34:13'),
(374, 218, '32', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[]', NULL, 7, '2024-04-06 12:08:32'),
(375, 218, '47', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[]', NULL, 7, '2024-04-06 12:08:32'),
(376, 218, '48', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[]', NULL, 7, '2024-04-06 12:08:32'),
(377, 218, '49', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[]', NULL, 7, '2024-04-06 12:08:32'),
(378, 218, '50', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[]', NULL, 7, '2024-04-06 12:08:32'),
(379, 218, '51', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[]', NULL, 7, '2024-04-06 12:08:32'),
(380, 218, '52', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[]', NULL, 7, '2024-04-06 12:08:32'),
(381, 218, '53', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[]', NULL, 7, '2024-04-06 12:08:32'),
(382, 218, '54', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[]', NULL, 7, '2024-04-06 12:08:32'),
(383, 218, '32,3', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_032454811.jpg\"]', NULL, 1, '2024-04-06 12:18:37'),
(384, 218, '47,3', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_032423574.jpg\"]', NULL, 1, '2024-04-06 12:18:37'),
(385, 218, '48,3', NULL, 10, 9.98, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_032356821.jpg\"]', NULL, 1, '2024-04-06 12:18:37'),
(386, 218, '49,3', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_032257950.jpg\"]', NULL, 1, '2024-04-06 12:18:37'),
(387, 218, '50,3', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_032323909.jpg\"]', NULL, 1, '2024-04-06 12:18:37'),
(388, 218, '51,3', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_032532846.jpg\"]', NULL, 1, '2024-04-06 12:18:37'),
(389, 218, '52,3', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_032604295.jpg\"]', NULL, 1, '2024-04-06 12:18:37'),
(390, 218, '53,3', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_032726017.jpg\"]', NULL, 1, '2024-04-06 12:18:37'),
(391, 218, '54,3', NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_032828011.jpg\"]', NULL, 1, '2024-04-06 12:18:37'),
(392, 219, NULL, NULL, 18, 18, NULL, NULL, 0.4, 0, 0, 0, NULL, NULL, 1, '2024-04-06 12:22:47'),
(393, 220, NULL, NULL, 10, 10, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2024-04-06 12:24:51'),
(394, 221, NULL, NULL, 11, 11, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2024-04-06 12:25:59'),
(395, 222, NULL, NULL, 36, 36, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 12:27:23'),
(396, 223, NULL, NULL, 38, 38, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 12:30:20'),
(397, 224, '11', NULL, 18.5, 18.5, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_034625939.jpg\",\"uploads\\/media\\/2024\\/InShot_20240120_150252320.jpg\"]', NULL, 1, '2024-04-06 12:39:00'),
(398, 224, '12', NULL, 35.5, 35.5, NULL, NULL, 1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_150125263.jpg\"]', NULL, 1, '2024-04-06 12:39:00'),
(399, 224, '13', NULL, 72, 72, NULL, NULL, 2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_150210709.jpg\"]', NULL, 1, '2024-04-06 12:39:00'),
(400, 224, '94', NULL, 182, 182, NULL, NULL, 5, 0, 0, 0, '[]', NULL, 1, '2024-04-06 12:39:48'),
(401, 225, '11', NULL, 20, 20, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_150005567.jpg\"]', NULL, 1, '2024-04-06 12:41:51'),
(402, 225, '12', NULL, 40, 40, NULL, NULL, 1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_150051378.jpg\"]', NULL, 1, '2024-04-06 12:41:51'),
(403, 226, '12', NULL, 21, 21, NULL, NULL, 1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_133608562.jpg\"]', NULL, 1, '2024-04-06 12:44:14'),
(404, 226, '62', NULL, 8, 8, NULL, NULL, 0.25, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240120_133533703.jpg\"]', NULL, 1, '2024-04-06 12:44:14'),
(405, 227, NULL, NULL, 18, 18, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 12:45:53'),
(406, 228, NULL, NULL, 17, 16.99, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 12:47:11'),
(407, 229, NULL, NULL, 8.5, 8.5, NULL, NULL, 0.4, 0, 0, 0, NULL, NULL, 1, '2024-04-06 12:48:53'),
(408, 230, NULL, NULL, 17, 17, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 12:50:07'),
(409, 231, NULL, NULL, 21.5, 21.5, NULL, NULL, 0.01, 0, 0, 0, NULL, NULL, 1, '2024-04-06 13:04:44'),
(410, 232, NULL, NULL, 3.75, 3.75, NULL, NULL, 0.05, 0, 0, 0, NULL, NULL, 1, '2024-04-06 13:08:36'),
(411, 233, '1', NULL, 5.75, 5.75, NULL, NULL, 0.05, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240123_134830254.jpg\"]', NULL, 1, '2024-04-06 13:11:47'),
(412, 233, '3', NULL, 19.75, 19.75, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134011901.jpg\"]', NULL, 1, '2024-04-06 13:11:47'),
(413, 234, NULL, NULL, 9.5, 9.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 13:13:43'),
(414, 235, '2', NULL, 5, 5, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134607332.jpg\"]', NULL, 1, '2024-04-06 13:16:31'),
(415, 235, '4', NULL, 23.5, 23.5, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240123_135443126.jpg\"]', NULL, 1, '2024-04-06 13:16:31'),
(416, 236, NULL, NULL, 5.25, 5.25, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 13:18:36'),
(417, 237, '2', NULL, 5.75, 5.75, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240123_135222212.jpg\"]', NULL, 1, '2024-04-06 13:21:37'),
(418, 237, '4', NULL, 25.5, 25.5, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134408640.jpg\"]', NULL, 1, '2024-04-06 13:21:37'),
(419, 238, '2', NULL, 3, 3, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240123_135249723.jpg\"]', NULL, 1, '2024-04-06 13:25:38'),
(420, 238, '3', NULL, 5.5, 5.5, NULL, NULL, 0.21, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_133901398.jpg\"]', NULL, 1, '2024-04-06 13:25:38'),
(421, 238, '4', NULL, 13, 13, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134457919.jpg\"]', NULL, 1, '2024-04-06 13:25:38'),
(422, 238, '5', NULL, 25, 25, NULL, NULL, 1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_135203771.jpg\"]', NULL, 1, '2024-04-06 13:25:38'),
(423, 239, '2', NULL, 5.75, 5.75, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240123_135312885.jpg\"]', NULL, 1, '2024-04-06 13:28:21'),
(424, 239, '4', NULL, 26.25, 26.25, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134521805.jpg\"]', NULL, 1, '2024-04-06 13:28:21'),
(425, 240, NULL, NULL, 5, 5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-06 13:29:56'),
(426, 241, NULL, NULL, 42, 36.75, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 1, '2024-04-21 09:44:02'),
(427, 242, NULL, NULL, 10, 8, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 1, '2024-04-21 09:56:19'),
(428, 243, NULL, NULL, 6, 5.75, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-23 07:17:57'),
(429, 244, NULL, NULL, 6, 6, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-23 07:19:20'),
(430, 245, '2', NULL, 6.25, 5.99, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240123_135443126.jpg\"]', NULL, 1, '2024-04-23 07:24:56'),
(431, 245, '4', NULL, 28, 27.75, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134607332.jpg\"]', NULL, 1, '2024-04-23 07:24:56'),
(432, 246, NULL, NULL, 17, 16.75, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-23 07:27:41'),
(433, 247, NULL, NULL, 4.5, 4.25, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-23 07:33:31'),
(434, 248, '2', NULL, 7, 6.75, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240123_135946438.jpg\"]', NULL, 1, '2024-04-23 07:44:06'),
(435, 248, '4', NULL, 29, 28.5, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134651320.jpg\"]', NULL, 1, '2024-04-23 07:44:06'),
(436, 249, '2', NULL, 6, 5.5, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240123_140013179.jpg\"]', NULL, 1, '2024-04-23 07:47:09'),
(437, 249, '4', NULL, 25.75, 25.75, NULL, NULL, 0.49, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134719986.jpg\"]', NULL, 1, '2024-04-23 07:47:09'),
(438, 250, '2', NULL, 5.75, 5.75, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240123_140105031.jpg\"]', NULL, 1, '2024-04-23 07:50:46'),
(439, 250, '4', NULL, 25.5, 25.25, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134824457.jpg\"]', NULL, 1, '2024-04-23 07:50:46'),
(440, 251, NULL, NULL, 6, 5.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-23 07:52:39'),
(441, 252, NULL, NULL, 6.5, 6.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-23 07:54:21'),
(442, 253, NULL, NULL, 13.75, 13.75, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-23 07:56:15'),
(443, 254, '2', NULL, 3, 3, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134133142.jpg\"]', NULL, 1, '2024-04-23 07:59:33'),
(444, 254, '3', NULL, 5, 5, NULL, NULL, 0.19, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134052964.jpg\"]', NULL, 1, '2024-04-23 07:59:33'),
(445, 254, '4', NULL, 11.5, 11.5, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_135048371.jpg\"]', NULL, 1, '2024-04-23 07:59:33'),
(446, 254, '5', NULL, 21.25, 21.25, NULL, NULL, 0.99, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_135113739.jpg\"]', NULL, 1, '2024-04-23 07:59:34');
INSERT INTO `product_variants` (`id`, `product_id`, `attribute_value_ids`, `attribute_set`, `price`, `special_price`, `sku`, `stock`, `weight`, `height`, `breadth`, `length`, `images`, `availability`, `status`, `date_added`) VALUES
(447, 255, '2', NULL, 5.75, 5.75, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134928093.jpg\"]', NULL, 1, '2024-04-23 08:22:25'),
(448, 255, '4', NULL, 25.5, 25.5, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240123_140448782.jpg\"]', NULL, 1, '2024-04-23 08:22:25'),
(449, 256, '2', NULL, 7.5, 7.5, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240123_140619387.jpg\"]', NULL, 1, '2024-04-23 08:25:01'),
(450, 256, '4', NULL, 36, 35.5, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134626822.jpg\"]', NULL, 1, '2024-04-23 08:25:01'),
(451, 257, '2', NULL, 3, 3, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240123_140708586.jpg\"]', NULL, 1, '2024-04-23 08:28:32'),
(452, 257, '3', NULL, 8.75, 8.75, NULL, NULL, 0.19, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_133943153.jpg\"]', NULL, 1, '2024-04-23 08:28:32'),
(453, 257, '4', NULL, 20.75, 20.75, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134751406.jpg\"]', NULL, 1, '2024-04-23 08:28:32'),
(454, 258, NULL, NULL, 5, 5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-23 08:30:23'),
(455, 259, '2', NULL, 5.5, 5.48, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240123_140748708.jpg\"]', NULL, 1, '2024-04-23 08:33:11'),
(456, 259, '4', NULL, 25.5, 25.49, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134850996.jpg\"]', NULL, 1, '2024-04-23 08:33:11'),
(457, 260, NULL, NULL, 5, 4.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-23 08:34:42'),
(458, 261, NULL, NULL, 6, 6, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-23 08:36:38'),
(459, 262, NULL, NULL, 5, 5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-23 08:38:09'),
(460, 263, NULL, NULL, 5, 5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-23 08:39:25'),
(461, 264, NULL, NULL, 8.25, 8, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-23 08:41:01'),
(462, 265, '2', NULL, 4.5, 4.5, NULL, NULL, 0.1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240123_141152379.jpg\"]', NULL, 1, '2024-04-23 08:44:30'),
(463, 265, '3', NULL, 8.75, 8.75, NULL, NULL, 0.2, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134031333.jpg\"]', NULL, 1, '2024-04-23 08:44:30'),
(464, 265, '4', NULL, 20.75, 20.75, NULL, NULL, 0.5, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240125_134959834.jpg\"]', NULL, 1, '2024-04-23 08:44:30'),
(465, 265, '5', NULL, 40, 40, NULL, NULL, 1, 0, 0, 0, '[\"uploads\\/media\\/2024\\/InShot_20240123_141130069.jpg\"]', NULL, 1, '2024-04-23 08:44:30'),
(466, 266, NULL, NULL, 32, 32, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-23 08:46:14'),
(467, 267, NULL, NULL, 5, 4.99, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2024-04-23 08:47:37'),
(468, 268, NULL, NULL, 1750, 1750, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-24 08:18:58'),
(469, 269, NULL, NULL, 2550, 2550, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-24 08:20:39'),
(470, 270, NULL, NULL, 4800, 4800, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2024-04-24 08:22:08'),
(471, 271, NULL, NULL, 22, 22, NULL, NULL, 100, 0, 0, 0, NULL, NULL, 1, '2024-05-01 08:42:57'),
(472, 272, NULL, NULL, 23, 22, NULL, NULL, 2, 2, 0, 0, NULL, NULL, 7, '2024-10-25 13:39:07'),
(473, 273, '2', NULL, 10, 9, '0', 4, 0.1, 0, 0, 0, '[]', 1, 1, '2024-12-04 09:42:59'),
(474, 273, '3', NULL, 20, 19, '0', 2, 0.2, 0, 0, 0, '[]', 1, 1, '2024-12-04 09:42:59'),
(475, 272, '5', NULL, 30, 28, '0', 4, 1, 0, 0, 0, '[]', 1, 1, '2024-12-19 07:39:19'),
(476, 272, '19', NULL, 90, 85, '0', 3, 3, 0, 0, 0, '[]', 1, 1, '2024-12-19 07:39:19'),
(477, 274, NULL, NULL, 14, 13.5, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 7, '2024-12-19 09:45:49'),
(478, 274, '3', NULL, 13.5, 13, '1', 0, 0.2, 0, 0, 0, '[]', 0, 1, '2024-12-19 09:49:37'),
(479, 274, '4', NULL, 28, 27, '1', 3, 0.5, 0, 0, 0, '[]', 1, 1, '2024-12-19 09:49:37'),
(480, 275, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2025-02-12 15:55:16'),
(481, 276, NULL, NULL, 50, 49, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 1, '2025-03-17 14:57:52'),
(482, 277, NULL, NULL, 6, 5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-17 15:02:04'),
(486, 281, NULL, NULL, 36, 28.8, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2025-03-24 07:21:49'),
(487, 282, NULL, NULL, 36, 28.8, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2025-03-24 07:25:49'),
(488, 283, NULL, NULL, 36, 28.8, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2025-03-24 07:33:08'),
(489, 284, NULL, NULL, 32, 28.8, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2025-03-24 07:39:26'),
(490, 285, NULL, NULL, 11.7, 8.1, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 07:45:10'),
(491, 286, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 07:49:17'),
(492, 287, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 07:52:31'),
(493, 288, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 07:58:06'),
(494, 289, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 08:01:59'),
(495, 290, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 08:05:46'),
(496, 291, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 08:09:54'),
(497, 292, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 08:13:45'),
(498, 293, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 08:17:37'),
(499, 294, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 08:20:38'),
(500, 295, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 08:24:10'),
(501, 296, NULL, NULL, 11.7, 8.1, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 08:28:45'),
(502, 297, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 08:32:12'),
(503, 298, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 08:35:24'),
(504, 299, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 08:38:27'),
(505, 300, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 08:41:46'),
(506, 301, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 09:14:05'),
(507, 302, NULL, NULL, 11.7, 8.1, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 09:18:08'),
(508, 303, NULL, NULL, 11.7, 8.1, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 09:21:07'),
(509, 304, NULL, NULL, 11.7, 8.1, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 09:24:26'),
(510, 305, NULL, NULL, 11.7, 8.1, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 09:27:06'),
(511, 306, NULL, NULL, 15, 12.6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 09:36:29'),
(512, 307, NULL, NULL, 16.2, 12.6, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 09:40:58'),
(513, 308, NULL, NULL, 16.2, 12.6, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 09:44:41'),
(514, 309, NULL, NULL, 16.2, 12.6, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 09:47:23'),
(515, 310, NULL, NULL, 16.2, 12.6, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 09:53:14'),
(516, 311, NULL, NULL, 125, 95.24, NULL, NULL, 0.2, 0, 0, 0, NULL, NULL, 1, '2025-03-24 09:57:32'),
(517, 312, NULL, NULL, 15.3, 12.6, NULL, NULL, 1.2, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:01:36'),
(518, 313, NULL, NULL, 15.3, 12.6, NULL, NULL, 1.2, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:05:28'),
(519, 314, NULL, NULL, 9.9, 7.92, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:08:59'),
(520, 315, NULL, NULL, 8.1, 7.2, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:13:29'),
(521, 316, NULL, NULL, 6.3, 4.5, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:16:50'),
(522, 317, NULL, NULL, 17.2, 13.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:19:05'),
(523, 318, NULL, NULL, 16.2, 12, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:20:57'),
(524, 319, NULL, NULL, 16.2, 12, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:25:08'),
(525, 320, NULL, NULL, 17.2, 13.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:28:09'),
(526, 321, NULL, NULL, 12, 8.1, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:30:40'),
(527, 322, NULL, NULL, 16.2, 12, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:33:10'),
(528, 323, NULL, NULL, 12, 8.1, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:35:25'),
(529, 324, NULL, NULL, 17.2, 13.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:37:58'),
(530, 325, NULL, NULL, 16.2, 12, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:40:17'),
(531, 326, NULL, NULL, 17.2, 13.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:43:10'),
(532, 327, NULL, NULL, 9.9, 7.2, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:49:11'),
(533, 328, NULL, NULL, 5.4, 4.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:51:26'),
(534, 329, NULL, NULL, 5.4, 4.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:54:29'),
(535, 330, NULL, NULL, 5.4, 4.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 10:58:45'),
(536, 331, NULL, NULL, 7.2, 6.3, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 11:02:09'),
(537, 332, NULL, NULL, 6.3, 5.4, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 11:05:12'),
(538, 333, NULL, NULL, 15.5, 14.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 11:08:23'),
(539, 334, NULL, NULL, 5.4, 4.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 11:12:16'),
(540, 335, NULL, NULL, 6.3, 5.4, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 11:19:49'),
(541, 336, NULL, NULL, 5.4, 4.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 11:23:42'),
(542, 337, NULL, NULL, 12, 9.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 11:28:03'),
(543, 338, NULL, NULL, 12, 9.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 11:32:45'),
(544, 339, NULL, NULL, 5.4, 4.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 11:36:54'),
(545, 340, NULL, NULL, 6.3, 4.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 11:40:23'),
(546, 341, NULL, NULL, 5.4, 4.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 11:43:24'),
(547, 342, NULL, NULL, 5.4, 4.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 11:47:21'),
(548, 343, NULL, NULL, 5.4, 4.5, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 11:50:40'),
(549, 344, NULL, NULL, 14.9, 12.9, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 11:56:25'),
(550, 345, NULL, NULL, 7.2, 6.3, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 12:07:42'),
(551, 346, NULL, NULL, 9, 5.4, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 12:16:30'),
(552, 347, NULL, NULL, 7.5, 5.4, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 12:20:42'),
(553, 348, NULL, NULL, 14.4, 12.6, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 12:23:30'),
(554, 349, NULL, NULL, 6.3, 5.4, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 12:25:54'),
(555, 350, NULL, NULL, 7.2, 5.4, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 12:28:52'),
(556, 351, NULL, NULL, 7.2, 5.4, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 12:35:11'),
(557, 352, NULL, NULL, 14.4, 12.6, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 12:38:00'),
(558, 353, NULL, NULL, 12.6, 11.7, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 12:40:55'),
(559, 354, NULL, NULL, 9, 6.3, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 12:43:54'),
(560, 355, NULL, NULL, 7.2, 5.4, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 12:46:13'),
(561, 356, NULL, NULL, 7.2, 6.3, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 12:48:52'),
(562, 357, NULL, NULL, 9.9, 8.1, NULL, NULL, 0.1, 0, 0, 0, NULL, NULL, 1, '2025-03-24 12:52:00'),
(563, 358, NULL, NULL, 9.9, 7.2, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 12:54:33'),
(564, 359, NULL, NULL, 9.9, 8.1, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 12:57:22'),
(565, 360, NULL, NULL, 20.7, 16.2, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 13:21:50'),
(566, 361, NULL, NULL, 36, 27, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 13:24:53'),
(567, 362, NULL, NULL, 17.1, 13.5, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 13:29:37'),
(568, 363, NULL, NULL, 25.9, 23.9, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 13:32:46'),
(569, 364, NULL, NULL, 14.4, 12.6, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 13:35:07'),
(570, 365, NULL, NULL, 18.5, 15.9, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 13:38:39'),
(571, 366, NULL, NULL, 21.5, 18.9, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 13:41:28'),
(572, 367, NULL, NULL, 36, 27, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 13:44:14'),
(573, 368, NULL, NULL, 14.6, 12.6, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 13:48:32'),
(574, 369, NULL, NULL, 15.5, 12.6, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 13:50:52'),
(575, 370, NULL, NULL, 11.7, 9.9, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 13:56:15'),
(576, 371, NULL, NULL, 36, 27, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 14:03:55'),
(577, 372, NULL, NULL, 10.8, 8.1, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 14:10:21'),
(578, 373, NULL, NULL, 18.4, 15.9, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 14:16:32'),
(579, 374, NULL, NULL, 54, 44.1, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 14:20:06'),
(580, 375, NULL, NULL, 6.3, 5.4, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 14:22:36'),
(581, 376, NULL, NULL, 7.2, 4.95, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 14:25:49'),
(582, 377, NULL, NULL, 10.8, 8.1, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 14:37:19'),
(583, 378, NULL, NULL, 11, 9, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 15:02:32'),
(584, 379, NULL, NULL, 6.3, 5.4, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 15:05:05'),
(585, 380, NULL, NULL, 6.3, 5.4, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 15:08:33'),
(586, 381, NULL, NULL, 6.3, 5.4, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 15:13:55'),
(587, 382, NULL, NULL, 7.2, 6.3, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 15:18:29'),
(588, 383, NULL, NULL, 8.1, 7.2, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 15:20:51'),
(589, 384, NULL, NULL, 14, 11.7, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 15:23:54'),
(590, 385, NULL, NULL, 13.5, 10.8, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 15:27:53'),
(591, 386, NULL, NULL, 24, 19, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2025-03-24 15:40:21'),
(592, 387, NULL, NULL, 22, 19, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2025-03-24 15:42:32'),
(593, 388, NULL, NULL, 23, 19, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 15:44:38'),
(594, 389, NULL, NULL, 18, 13.6, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2025-03-24 15:48:52'),
(595, 390, NULL, NULL, 18, 13.6, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2025-03-24 15:58:32'),
(596, 391, NULL, NULL, 15, 11.7, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 16:01:45'),
(597, 392, NULL, NULL, 19, 14.9, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 16:13:56'),
(598, 393, NULL, NULL, 32, 27, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 16:26:23'),
(599, 394, NULL, NULL, 32, 27, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 16:29:58'),
(600, 395, NULL, NULL, 14, 11.7, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 16:32:52'),
(601, 396, NULL, NULL, 14, 11.7, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 16:35:08'),
(602, 397, NULL, NULL, 32, 27, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 16:48:25'),
(603, 398, NULL, NULL, 16.3, 14.5, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 17:43:30'),
(604, 399, NULL, NULL, 32, 27, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 17:46:12'),
(605, 400, NULL, NULL, 32, 27, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 17:52:15'),
(606, 401, NULL, NULL, 32, 27, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 17:55:58'),
(607, 402, NULL, NULL, 32, 27, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 17:58:50'),
(608, 403, NULL, NULL, 14, 11.7, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 18:01:29'),
(609, 404, NULL, NULL, 32, 27, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 18:03:58'),
(610, 405, NULL, NULL, 15, 12.6, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 18:10:56'),
(611, 406, NULL, NULL, 32, 27, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-24 18:15:35'),
(612, 407, NULL, NULL, 32, 27, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 18:18:13'),
(613, 408, NULL, NULL, 15, 12.6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 18:21:12'),
(614, 409, NULL, NULL, 15, 12.6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 18:25:14'),
(615, 410, NULL, NULL, 32, 27, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 18:38:30'),
(616, 411, NULL, NULL, 32, 27, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 18:44:56'),
(617, 412, NULL, NULL, 15, 12.6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 18:47:07'),
(618, 413, NULL, NULL, 32, 27, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 18:53:31'),
(619, 414, NULL, NULL, 32, 27, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-24 18:59:23'),
(620, 415, NULL, NULL, 15, 12.6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 06:32:19'),
(621, 416, NULL, NULL, 32, 27, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-25 06:35:13'),
(622, 417, NULL, NULL, 15, 12.6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 06:38:43'),
(623, 418, NULL, NULL, 15, 12.6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 06:41:12'),
(624, 419, NULL, NULL, 14, 11.7, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 06:44:51'),
(625, 420, NULL, NULL, 15, 12.6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 06:49:27'),
(626, 421, NULL, NULL, 32, 27, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 06:52:41'),
(627, 422, NULL, NULL, 14, 11.7, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 06:54:43'),
(628, 423, NULL, NULL, 15, 12.6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 06:57:14'),
(629, 424, NULL, NULL, 15, 12.6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 06:58:59'),
(630, 425, NULL, NULL, 14, 11.7, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:00:41'),
(631, 426, NULL, NULL, 32, 27, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:02:35'),
(632, 427, NULL, NULL, 7, 6, NULL, NULL, 0.11, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:13:11'),
(633, 428, NULL, NULL, 7, 5, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:16:47'),
(634, 429, NULL, NULL, 7, 6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:19:49'),
(635, 430, NULL, NULL, 8, 5, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:22:30'),
(636, 431, NULL, NULL, 7, 6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:27:33'),
(637, 432, NULL, NULL, 7, 6, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:33:48'),
(638, 433, NULL, NULL, 7, 6, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:35:22'),
(639, 434, NULL, NULL, 7, 5, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:37:03'),
(640, 435, NULL, NULL, 28.8, 24.5, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:42:46'),
(641, 436, NULL, NULL, 7, 6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:46:41'),
(642, 437, NULL, NULL, 7, 6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:50:07'),
(643, 438, NULL, NULL, 7, 6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:52:19'),
(644, 439, NULL, NULL, 7, 6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:56:27'),
(645, 440, NULL, NULL, 7, 5, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 07:58:51'),
(646, 441, NULL, NULL, 7, 5, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 08:00:29'),
(647, 442, NULL, NULL, 4, 3, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 08:03:17'),
(648, 443, NULL, NULL, 7, 5, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2025-03-25 08:06:00'),
(649, 444, NULL, NULL, 7, 5, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 08:07:48'),
(650, 445, NULL, NULL, 7, 5, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 08:09:29'),
(651, 446, NULL, NULL, 7, 5, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 08:12:55'),
(652, 447, NULL, NULL, 7, 6, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 08:15:51'),
(653, 448, NULL, NULL, 7, 5, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 08:18:07'),
(654, 449, NULL, NULL, 3, 2, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2025-03-25 08:20:19'),
(655, 450, NULL, NULL, 4, 3, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 08:23:16'),
(656, 451, NULL, NULL, 60, 49, NULL, NULL, 0.21, 0, 0, 0, NULL, NULL, 1, '2025-03-25 08:34:10'),
(657, 452, NULL, NULL, 12.6, 8.1, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 08:37:36'),
(658, 453, NULL, NULL, 18, 14.4, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 08:41:01'),
(659, 454, NULL, NULL, 5.4, 4.1, NULL, NULL, 0.12, 0, 0, 0, NULL, NULL, 1, '2025-03-25 08:42:57'),
(661, 456, NULL, NULL, 10, 9.5, NULL, NULL, 0.5, 0, 0, 0, NULL, NULL, 1, '2025-04-09 15:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

DROP TABLE IF EXISTS `promo_codes`;
CREATE TABLE `promo_codes` (
  `id` int(11) NOT NULL,
  `promo_code` varchar(28) NOT NULL,
  `message` varchar(512) DEFAULT NULL,
  `start_date` varchar(28) DEFAULT NULL,
  `end_date` varchar(28) DEFAULT NULL,
  `no_of_users` int(11) DEFAULT NULL,
  `minimum_order_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discount_type` varchar(32) DEFAULT NULL,
  `max_discount_amount` double DEFAULT NULL,
  `repeat_usage` tinyint(4) NOT NULL,
  `no_of_repeat_usage` int(11) NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `is_cashback` tinyint(4) DEFAULT 0,
  `list_promocode` tinyint(4) DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `promo_code`, `message`, `start_date`, `end_date`, `no_of_users`, `minimum_order_amount`, `discount`, `discount_type`, `max_discount_amount`, `repeat_usage`, `no_of_repeat_usage`, `image`, `status`, `is_cashback`, `list_promocode`, `date_created`) VALUES
(1, 'MB_FIRST', 'Save 25% your First Order with Moving bazaar', '2024-03-23', '2024-03-24', 10, 50, 25, 'percentage', 25, 0, 0, 'uploads/media/2024/BASMATI.jpg', 1, 0, 1, '2024-03-23 11:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `return_requests`
--

DROP TABLE IF EXISTS `return_requests`;
CREATE TABLE `return_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remarks` varchar(1024) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `short_description` varchar(512) DEFAULT NULL,
  `style` varchar(16) NOT NULL,
  `product_ids` varchar(1024) DEFAULT NULL,
  `row_order` int(11) NOT NULL DEFAULT 0,
  `categories` mediumtext DEFAULT NULL,
  `product_type` varchar(1024) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `short_description`, `style`, `product_ids`, `row_order`, `categories`, `product_type`, `date_added`) VALUES
(4, 'Products On Sale', 'Top deals on All items', 'default', NULL, 0, '5,7,11,12', 'new_added_products', '2024-03-27 10:48:12'),
(2, 'Best Deals on Grocery Items', 'Save More then 20%', 'default', '7,10,9,6', 2, '5,7,8,9,10', 'custom_products', '2024-03-27 10:44:46'),
(3, 'Top Groceries On Sale', 'Up to 70% off', 'style_4', '8,10,7,6', 1, '5,7,8,9', 'custom_products', '2024-03-27 10:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `seller_commission`
--

DROP TABLE IF EXISTS `seller_commission`;
CREATE TABLE `seller_commission` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `commission` double(10,2) NOT NULL DEFAULT 0.00,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_commission`
--

INSERT INTO `seller_commission` (`id`, `seller_id`, `category_id`, `commission`, `date_created`) VALUES
(9, 14, 5, 0.00, '2024-03-26 18:51:35'),
(10, 14, 6, 0.00, '2024-03-26 18:51:35'),
(11, 15, 7, 0.00, '2024-03-27 05:28:08'),
(12, 15, 5, 0.00, '2024-03-27 05:28:08'),
(16, 17, 11, 0.00, '2024-03-27 09:57:24'),
(24, 22, 7, 0.00, '2024-04-21 09:41:06'),
(25, 22, 9, 0.00, '2024-04-21 09:41:06'),
(26, 22, 5, 0.00, '2024-04-21 09:41:06'),
(27, 18, 7, 0.00, '2024-04-23 06:41:12'),
(28, 18, 12, 0.00, '2024-04-23 06:41:12'),
(29, 18, 5, 0.00, '2024-04-23 06:41:12'),
(30, 18, 24, 0.00, '2024-04-23 06:41:12'),
(31, 18, 23, 0.00, '2024-04-23 06:41:12'),
(32, 18, 22, 0.00, '2024-04-23 06:41:12'),
(33, 18, 0, 0.00, '2024-04-23 06:41:12'),
(35, 24, 25, 0.00, '2024-04-24 08:16:34'),
(43, 46, 5, 0.00, '2025-03-25 07:09:22'),
(44, 46, 6, 0.00, '2025-03-25 07:09:22'),
(45, 46, 7, 0.00, '2025-03-25 07:09:22'),
(46, 46, 30, 0.00, '2025-03-25 07:09:22'),
(47, 46, 31, 0.00, '2025-03-25 07:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `seller_data`
--

DROP TABLE IF EXISTS `seller_data`;
CREATE TABLE `seller_data` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `slug` varchar(512) DEFAULT NULL,
  `category_ids` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `store_name` varchar(256) DEFAULT NULL,
  `store_description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `store_url` varchar(512) DEFAULT NULL,
  `market` varchar(256) DEFAULT NULL,
  `no_of_ratings` int(11) DEFAULT 0,
  `rating` double(8,2) DEFAULT 0.00,
  `bank_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_code` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  `national_identity_card` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address_proof` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `authorized_signature` mediumtext NOT NULL,
  `pan_number` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tax_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tax_number` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `commission` double(10,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT 'approved: 1 | not-approved: 2 | deactive:0 | removed :7',
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_data`
--

INSERT INTO `seller_data` (`id`, `user_id`, `slug`, `category_ids`, `store_name`, `store_description`, `logo`, `store_url`, `market`, `no_of_ratings`, `rating`, `bank_name`, `bank_code`, `account_name`, `account_number`, `national_identity_card`, `address_proof`, `authorized_signature`, `pan_number`, `tax_name`, `tax_number`, `permissions`, `commission`, `status`, `date_added`) VALUES
(6, 14, 'nellai-sweets-1', '5,6', 'NELLAI SWEETS', '', 'uploads/seller/istockphoto-523041362-612x612_(1).jpg', '', 'Tamil Market', 0, 0.00, '', '', '', '', 'uploads/seller/istockphoto-523041362-612x612.jpg', 'uploads/seller/IMG_20240225_0748351.jpg', 'uploads/seller/IMG_20240225_074835.jpg', '', 'nellai', '10001010101', '{\"require_products_approval\":\"0\",\"customer_privacy\":\"0\",\"view_order_otp\":\"0\",\"assign_delivery_boy\":\"0\"}', 0.00, 1, '2024-03-26 18:51:35'),
(7, 15, 'pannaiyar-traditional-1', '7,5', 'Pannaiyar Traditional', '', 'uploads/seller/download2.jpg', '', 'Tamil Market', 0, 0.00, '', '', '', '', '', '', '', '', 'VAT', '120237094209', '{\"require_products_approval\":\"0\",\"customer_privacy\":\"0\",\"view_order_otp\":\"1\",\"assign_delivery_boy\":\"0\"}', 0.00, 1, '2024-03-27 05:28:08'),
(9, 17, 'india-silk-house', '11', 'India Silk House', '', 'uploads/seller/download.png', '', 'CHINA MARKET', 0, 0.00, '', '', '', '', '', '', '', '', 'VAT', '120237094207', '{\"require_products_approval\":\"0\",\"customer_privacy\":\"0\",\"view_order_otp\":\"0\",\"assign_delivery_boy\":\"0\"}', 5.00, 1, '2024-03-27 09:57:24'),
(10, 18, 'agri-fresh', '7,12,5,24,23,22,', 'Agri Fresh', '', 'uploads/seller/download_(1).png', '', 'Tamil Market', 0, 0.00, '', '', '', '', '', '', '', '', 'VAT', '120237094209', '{\"require_products_approval\":\"0\",\"customer_privacy\":\"0\",\"view_order_otp\":\"0\",\"assign_delivery_boy\":\"0\"}', 5.00, 1, '2024-03-27 10:09:11'),
(11, 22, 'dubaiseller-1', '7,9,5', 'DubaiSeller', 'All house shopping ', 'uploads/seller/download_(1)4.jpeg', '', 'Kerala Market', 0, 0.00, 'DUBAIBANK ', 'DXBBK', 'DubaiSeller ', '48494315184994', 'uploads/seller/download_(1)6.jpeg', 'uploads/seller/download_(1)7.jpeg', 'uploads/seller/download_(1)5.jpeg', '29336923737383', 'VAT ldhdkdn', 'VAT19378229', '{\"require_products_approval\":\"0\",\"customer_privacy\":\"0\",\"view_order_otp\":\"1\",\"assign_delivery_boy\":\"1\"}', 0.00, 1, '2024-04-20 19:48:04'),
(12, 24, 'hobby-track', '25', 'HOBBY TRACK', '', 'uploads/seller/image2.png', '', 'Kerala Market', 0, 0.00, '', '', '', '', 'uploads/seller/image3.png', 'uploads/seller/InShot_20240125_1340313333.jpg', 'uploads/seller/InShot_20240125_1340313332.jpg', '', 'hobby track', '1234567890', '{\"require_products_approval\":\"0\",\"customer_privacy\":\"0\",\"view_order_otp\":\"0\",\"assign_delivery_boy\":\"0\"}', 0.00, 1, '2024-04-24 08:14:52'),
(15, 46, 'thaarwat-al-hayyaat-general-trading-llc-1', '5,6,7,30,31', 'THAARWAT AL HAYYAAT GENERAL TRADING L.L.C', '', 'uploads/seller/Harshini.jpg', '', 'Tamil Market', 0, 0.00, '', '', '', '', 'uploads/seller/SAVE_20250322_2413592.jpg', 'uploads/seller/signture7.png', 'uploads/seller/SAVE_20250322_2413591.jpg', '', 'THAARWAT AL HAYYAAT GENERAL TRADING L.L.C', '1234567890', '{\"require_products_approval\":\"0\",\"customer_privacy\":\"0\",\"view_order_otp\":\"0\",\"assign_delivery_boy\":\"0\"}', 0.00, 1, '2025-03-22 14:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `variable` varchar(128) NOT NULL,
  `value` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `variable`, `value`) VALUES
(1, 'logo', 'uploads/media/2024/MovingBazzarLogo.jpg'),
(2, 'privacy_policy', '<h4 class=\\\"heading\\\">Welcome to MovingBazaar</h4>\\r\\n<p class=\\\"policyDetails\\\">This Privacy Policy sets out the basis on which any personal data, including but not limited to payment details and other information we collect from you or other sources or that you provide to us (<strong>\\\"Information\\\"</strong>) will be handled by us in connection with your access and use of&nbsp;<a class=\\\"ppLink\\\" href=\\\"http://www.movingbazaar.in\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">www.MovingBazaar.in</a>, and/or the MovingBazaar mobile application (collectively, the&nbsp;<strong>\\\"Platform\\\"</strong>), services and applications (collectively, the&nbsp;<strong>\\\"Services\\\"</strong>). We understand the importance you place on the Information, and we are committed to protecting and respecting your privacy. Please read the following carefully to understand our practices regarding your Information. By using our Services, you agree to the handling of your Information in accordance with this Privacy Policy.</p>\\r\\n<p class=\\\"policyDetails\\\">References in this Privacy Policy to&nbsp;<strong>\\\"we\\\"</strong>,&nbsp;<strong>\\\"our\\\"</strong>&nbsp;or&nbsp;<strong>\\\"us\\\"</strong>&nbsp;(or similar) are references to MovingBazaar E Commerce Owned By MovingBazaar AD Holdings One Person Company LLC. References to&nbsp;<strong>\\\"user\\\"</strong>&nbsp;or&nbsp;<strong>\\\"you\\\"</strong>&nbsp;(or similar) are references to you as an individual or legal entity as the case may be.</p>\\r\\n<h4 class=\\\"subHeading\\\">WHAT INFORMATION WE MAY COLLECT FROM YOU</h4>\\r\\n<p class=\\\"policyDetails\\\">We may collect and process the following Information about you:</p>\\r\\n<ol class=\\\"policyListWrapper\\\">\\r\\n<li class=\\\"policyList\\\">Information that you provide by filling in forms on our Platform, including information provided at the time of registering to use our Platform and other co- registrations (e.g. social media logins), subscribing to our Services, posting material or requesting further services;</li>\\r\\n<li class=\\\"policyList\\\">the Information you provide when you enter a competition or promotion via our Platform, provide reviews, testimonials or feedback on our Platform;</li>\\r\\n<li class=\\\"policyList\\\">Information you provide us, or that we may collect from you, when you report a problem with our Platform;</li>\\r\\n<li class=\\\"policyList\\\">a record of correspondence if you contact us;</li>\\r\\n<li class=\\\"policyList\\\">general, aggregated, demographic and non-personal Information;</li>\\r\\n<li class=\\\"policyList\\\">if you download or use our mobile application, we may have access to details about your location and your mobile device, including a unique identifier for your device;</li>\\r\\n<li class=\\\"policyList\\\">details of transactions you carry out through our Platform and of the fulfilment of your orders;</li>\\r\\n<li class=\\\"policyList\\\">details about your computer, including but not limited to your IP address, operating system and browser type, as well as information about your general internet usage (e.g. by using technology that stores information on or gains access to your device, such as cookies, tracking pixels, web beacons, etc., (together, \\\"Cookies\\\"));</li>\\r\\n<li class=\\\"policyList\\\">your email address and/or mobile number from a third party if you indicate that you have consented to that third party sharing your Information with us; and</li>\\r\\n<li class=\\\"policyList\\\">any other Information we consider necessary to enhance your experience on the Platform.</li>\\r\\n</ol>\\r\\n<h4 class=\\\"subHeading\\\">HOW WE WILL USE YOUR INFORMATION</h4>\\r\\n<p class=\\\"policyDetails\\\">We may use Information held about you in the following ways:</p>\\r\\n<ol class=\\\"policyListWrapper\\\">\\r\\n<li class=\\\"policyList\\\">to provide you with information, products or services that you request from us or which we feel may interest you, where you have consented to be contacted for such purposes;</li>\\r\\n<li class=\\\"policyList\\\">to provide you with location-based services, such as advertising, search results and other personalised content;</li>\\r\\n<li class=\\\"policyList\\\">to carry out our obligations arising from any contracts entered into between you and another entity using our Platform or between you and us;</li>\\r\\n<li class=\\\"policyList\\\">to improve our Services and to deliver a better and more personalised service to you;</li>\\r\\n<li class=\\\"policyList\\\">to ensure that content from our Platform is presented in the most effective manner for you and the device you use to access our Platform;</li>\\r\\n<li class=\\\"policyList\\\">to notify you about changes to our Services;</li>\\r\\n<li class=\\\"policyList\\\">for any other reason which we deem necessary to enhance your experience of the Platform;</li>\\r\\n<li class=\\\"policyList\\\">to administer and manage our incentives programs and fulfil your requests for incentives,and/or to allow you to participate in sweepstakes and to notify you if you are a sweepstakes winner.</li>\\r\\n</ol>\\r\\n<h4 class=\\\"subHeading\\\">TO WHOM WE MAY DISCLOSE YOUR INFORMATION</h4>\\r\\n<p class=\\\"policyDetails\\\">Information about our customers is an important part of our business. We share your Information only as described below and with businesses that follow practices at least as protective as those described in this Privacy Policy:</p>\\r\\n<ol class=\\\"policyListWrapper\\\">\\r\\n<li class=\\\"policyList\\\"><strong>Other Businesses.</strong>&nbsp;To offer you our Services, we may engage with businesses who are affiliates of us and/or non-affiliated service providers (e.g. logistics businesses used to deliver products to you, marketing companies, payments processers to process online transactions, etc.). We may involve other businesses in your transactions, who may store your Information in a digital wallet to make your use of our Services more efficient.\\r\\n<p class=\\\"policyDetails\\\">You understand that it is important that such businesses have access to the relevant Information to perform their functions. We will ensure that these businesses do not use your Information for other purposes. We may also receive Information from these business (e.g. updated delivery and address information), which we may use (e.g. to correct our records and deliver your next purchase). By using our Platform, you hereby freely and specifically consent to the transfer, storage, use, and disclosure of your Information among businesses who are affiliates of us and/or non-affiliated service providers, wherever located. These businesses shall be contractually bound to respect the confidentiality of your Information.</p>\\r\\n</li>\\r\\n<li class=\\\"policyList\\\"><strong>Marketing and Promotional Offers.</strong>&nbsp;We may also use your Information to provide you with information about goods and services which may be of interest to you and enhance your Platform experience, service messages, new features, enhancements, special offers and events of interest. We may contact you via various channels, including without limitation emails, push notifications, web notifications, post, telephone, in-app messages, WhatsApp messages and news feed cards.\\r\\n<p class=\\\"policyDetails\\\">We may permit third parties to use your Information. For example, we may provide advertisers Information to help them reach the kind of audience they want to target and to enable us to comply with our commitments to our advertisers (e.g. by displaying their advertisements to a target audience).</p>\\r\\n<p class=\\\"policyDetails\\\">Additionally, you may be asked to provide additional Information to participate in some of our market research activities, including competitions and promotions. For example, if you win a competition, you may be asked to provide further personal data to establish your eligibility and provide you with the prize. This Information may be collected by us or our co-sponsors or vendors for the promotion. Note that you should review such third parties&rsquo; privacy policies to see how they may use any information that they collect.</p>\\r\\n</li>\\r\\n<li class=\\\"policyList\\\"><strong>Business Transfers.</strong>&nbsp;In the event that we or substantially all of our assets are acquired, customer information will be one of the transferred assets.</li>\\r\\n<li class=\\\"policyList\\\"><strong>Protection of Our Platform and Others.</strong>&nbsp;We release account and other Information when we believe such a release is appropriate to comply with the law and law enforcement investigations and to protect the rights, property or safety of our users or others. This includes exchanging information with other companies and organisations for various reasons, such as fraud protection and credit risk reduction.</li>\\r\\n</ol>\\r\\n<p class=\\\"policyDetails\\\">Note that our Platform may, from time to time, contain links to and from the websites of our partner networks, advertisers and affiliates. If you follow a link to any of these websites, please note that these websites have their own privacy policies and that we do not accept any responsibility or liability for these policies. Please check these policies before you submit any personal data or other information to these websites.</p>\\r\\n<h4 class=\\\"subHeading\\\">HOW WE STORE YOUR INFORMATION</h4>\\r\\n<p class=\\\"policyDetails\\\">The Information that we collect from you may be transferred to, stored processed by staff who work for us or for one of our suppliers. Such staff may be engaged in, among other things, the fulfilment of your order, the processing of your payment details and the provision of support services. We will store your Information for as long as necessary to fulfil the purposes indicated in this Privacy Policy or as otherwise permitted or required by law. Your Information may be transferred, stored, processed and used by our affiliated companies and/or non-affiliated service providers in one or more countries. Your payment details may be transferred to and stored with our affiliated companies in order to, among other things, process your payment details and provide support services to you.</p>\\r\\n<h4 class=\\\"subHeading\\\">WHAT SECURITY MEASURES WE APPLY</h4>\\r\\n<p class=\\\"policyDetails\\\">We maintain commercially reasonable technical, administrative, and physical safeguards to ensure your Information is treated securely and in accordance with this Privacy Policy, and to protect against unauthorized access or alteration to, disclosure, or destruction of your Information. We may, for example, use encryption technology to secure your Information during transmission to our Platform as well as external firewall and on-host firewall technology to prevent network level attacks. Only those authorized employees, contractors, and agents who need to know your Information in connection with the performance of their services are allowed to access this Information.</p>\\r\\n<p class=\\\"policyDetails\\\">It is important for you to protect yourself against unauthorised access to your password and to your devices used to access our Services. You are responsible for keeping your password confidential. For example, ensure that you sign off when you have finished using a shared device.</p>\\r\\n<p class=\\\"policyDetails\\\">Unfortunately, the transmission of information via the internet is not completely secure. Although we will do our best to protect your Information, we cannot guarantee the security of your Information transmitted to our Platform and any transmission is at your own risk.</p>\\r\\n<h4 class=\\\"subHeading\\\">HOW CAN YOU ACCESS AND AMEND YOUR INFORMATION?</h4>\\r\\n<p class=\\\"policyDetails\\\">You are able to access a broad range of information about your account and your interactions with the Platform for the purpose of viewing and, in certain cases, updating your Information.</p>\\r\\n<p class=\\\"policyDetails\\\">Examples of information you can access easily at the Platform include:</p>\\r\\n<ol class=\\\"policyListWrapper\\\">\\r\\n<li class=\\\"policyList\\\">up-to-date information regarding recent orders;</li>\\r\\n<li class=\\\"policyList\\\">personally identifiable information (including name, e-mail, password, communications and personalised advertising preferences);</li>\\r\\n<li class=\\\"policyList\\\">payment settings (including credit card information); and</li>\\r\\n<li class=\\\"policyList\\\">e-mail notification settings.</li>\\r\\n</ol>\\r\\n<p class=\\\"policyDetails\\\">You can opt-out of receiving future marketing communications from us at any time by adjusting your customer communication preferences, through the unsubscribe link within the email communication. For marketing via your mobile application, you will need to adjust your notifications settings in the general section of your mobile.</p>\\r\\n<p class=\\\"policyDetails\\\">Also, our system will place cookies when you log on to our Platform and this is to ensure you have an enjoyable user experience and are able to utilise all aspects of the Platform. You may disable Cookies by changing the settings on your browser. If you disable Cookies, it will affect how our Platform works and you may not be able to access or use certain areas of our Platform or full functionality. For example, performance cookies collect information about how you use the Site, for instance, which pages you visit most often, which allows us to provide you with targeted and relevant choices that enhance your Site experience.</p>\\r\\n<p class=\\\"policyDetails\\\">We may retain a copy of your Information for compliance reasons. When you update Information, we may retain a copy of the prior version for our records.</p>\\r\\n<h4 class=\\\"subHeading\\\">WHAT IF WE CHANGE OUR PRIVACY POLICY?</h4>\\r\\n<p class=\\\"policyDetails\\\">Our business changes constantly, and our Privacy Policy may therefore also need to change. We will post the current version of this Privacy Policy on the Platform and each such change will be effective upon posting on the Platform or upon the date designated by us as the \\\"effective date\\\".</p>\\r\\n<p class=\\\"policyDetails\\\">We may e-mail periodic reminders of our notices and conditions, but you should check our Platform frequently to see recent changes.</p>\\r\\n<p class=\\\"policyDetails\\\">It is your obligation to regularly check the Privacy Policy. Your continued use of the Platform following any such change constitutes your agreement to this Privacy Policy as so modified.</p>\\r\\n<h4 class=\\\"subHeading\\\">HOW YOU CAN CONTACT US</h4>\\r\\n<p class=\\\"policyDetails\\\">If you have any concerns about your Information on the Platform, please contact us at&nbsp;<a class=\\\"ppLink\\\">legal@MovingBazaar.com</a>&nbsp;with a thorough description, and we will try to resolve it.</p>'),
(3, 'terms_conditions', '<h3><strong>Terms and conditions</strong></h3>\\r\\n<p>&nbsp;movingbazaar.com is a sole proprietary firm , Juridical rights of movingbazaar.com are reserved with movingbazaar</p>\\r\\n<p>Personal Information movingbazaar.com and the website movingbazaar.com (&rdquo;The Site&rdquo;) . respects your privacy. This Privacy Policy succinctly provides the manner your data is collected and used by movingbazaar.com. on the Site. As a visitor to the Site/ Customer you are advised to please read the Privacy Policy carefully.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>Services Overview As part of the registration process on the Site, movingbazaar.com may collect the following personally identifiable information about you: Name including first and last name, alternate email address, mobile phone number and contact details, Postal code, GPS location, Demographic profile (like your age, gender, occupation, education, address etc.) and information about the pages on the site you visit/access, the links you click on the site, the number of times you access the page and any such browsing information.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>If you are a minor i.e. under the age of 18 years but at least 13 years of age you may use the Site only under the supervision of a parent or legal guardian who agrees to be bound by these Terms of Use. If your age is below 18 years, your parents or legal guardians can transact on behalf of you if they are registered users. You are prohibited from purchasing any material which is for adult consumption and the sale of which to minors is prohibited.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>License &amp; Site Access movingbazaar.com grants you a limited sub-license to access and make personal use of this site and not to download (other than page caching) or modify it, or any portion of it, except with express written consent of movingbazaar.com. This license does not include any resale or commercial use of this site or its contents; any collection and use of any product listings, descriptions, or prices; any derivative use of this site or its contents; any downloading or copying of account information for the benefit of another merchant; or any use of data mining, robots, or similar data gathering and extraction tools. This site or any portion of this site may not be reproduced, duplicated, copied, sold, resold, visited or otherwise exploited for any commercial purpose without express written consent of movingbazaar.com. You may not frame or utilize framing techniques to enclose any trademark, logo, or other proprietary information (including images, text, page layout, or form) of the Site or of movingbazaar.com and its affiliates without express written consent. You may not use any meta tags or any other \\\"hidden text\\\" utilizing the Site&rsquo;s or movingbazaar.com&rsquo;s name or movingbazaar.com&rsquo;s name or trademarks without the express written consent of movingbazaar.com. Any unauthorized use, terminates the permission or license granted by movingbazaar.com</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>Account &amp; Registration Obligations All shoppers have to register and login for placing orders on the Site. You have to keep your account and registration details current and correct for communications related to your purchases from the site. By agreeing to the terms and conditions, the shopper agrees to receive promotional communication and newsletters upon registration. The customer can opt out either by unsubscribing in \\\"My Account\\\" or by contacting the customer service.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>Pricing All the products listed on the Site will be sold at AED unless otherwise specified. The prices mentioned at the time of ordering will be the prices charged on the date of the delivery. Although prices of most of the products do not fluctuate on a daily basis but some of the commodities and fresh food prices do change on a daily basis. In case the prices are higher or lower on the date of delivery not additional charges will be collected or refunded as the case may be at the time of the delivery of the order.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>Cancellation by Site / Customer You as a customer can cancel your order anytime up to the cut-off time of the slot for which you have placed an order by calling our customer service. In such a case we will Credit your wallet against any payments already made by you for the order. If we suspect any fraudulent transaction by any customer or any transaction which defies the terms &amp; conditions of using the website, we at our sole discretion could cancel such orders. We will maintain a negative list of all fraudulent transactions and customers and would deny access to them or cancel any orders placed by them.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>Return &amp; Refunds We have a \\\"no questions asked return policy\\\" which entitles all our Delivery Ambassadors to return the product at the time of delivery if due to any reason they are not satisfied with the quality or freshness of the product. We will take the returned product back with us and issue a credit note for the value of the return products which will be credited to your account on the Site. This can be used to pay your subsequent shopping bills. Refund will be processed through same online mode within 7 working days.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>Delivery &amp; Shipping Charge</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>1.You can expect to receive your order depending on the delivery option you have chosen.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>2.You can order 24*7 in website &amp; mobile application , Our delivery timeings are between 06:00 AM - 11:00PM Same day delivery.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>3.You will get free shipping on order amount above AED 100.</p>\\r\\n<p>You Agree and Confirm</p>\\r\\n<p>1. That in the event that a non-delivery occurs on account of a mistake by you (i.e. wrong name or address or any other wrong information) any extra cost incurred by movingbazaar. for redelivery shall be claimed from you.</p>\\r\\n<p>2. That you will use the services provided by the Site, its affiliates, consultants and contracted companies, for lawful purposes only and comply with all applicable laws and regulations while using and transacting on the Site.</p>\\r\\n<p>3. You will provide authentic and true information in all instances where such information is requested you. movingbazaar reserves the right to confirm and validate the information and other details provided by you at any point of time. If upon confirmation your details are found not to be true (wholly or partly), it has the right in its sole discretion to reject the registration and debar you from using the Services and / or other affiliated websites without prior intimation whatsoever.</p>\\r\\n<p>4. That you are accessing the services available on this Site and transacting at your sole risk and are using your best and prudent judgment before entering into any transaction through this Site.</p>\\r\\n<p>5. That the address at which delivery of the product ordered by you is to be made will be correct and proper in all respects.</p>\\r\\n<p>6. That before placing an order you will check the product description carefully. By placing an order for a product you agree to be bound by the conditions of sale included in the item\\\'s description.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>You may not use the Site for any of the following purposes:</p>\\r\\n<p>1. Disseminating any unlawful, harassing, libelous, abusive, threatening, harmful, vulgar, obscene, or otherwise objectionable material.</p>\\r\\n<p>2. Transmitting material that encourages conduct that constitutes a criminal offence or results in civil liability or otherwise breaches any relevant laws, regulations or code of practice.</p>\\r\\n<p>3. Gaining unauthorized access to other computer systems.</p>\\r\\n<p>4. Interfering with any other person\\\'s use or enjoyment of the Site.</p>\\r\\n<p>5. Breaching any applicable laws;</p>\\r\\n<p>6. Interfering or disrupting networks or web sites connected to the Site.</p>\\r\\n<p>7. Making, transmitting or storing electronic copies of materials protected by copyright without the permission of the owner.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>Colors we have made every effort to display the colors of our products that appear on the Website as accurately as possible. However, as the actual colors you see will depend on your monitor, we cannot guarantee that your monitor\\\'s display of any color will be accurate.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>Modification of Terms &amp; Conditions of Service movingbazaar may at any time modify the Terms &amp; Conditions of Use of the Website without any prior notification to you. You can access the latest version of these Terms &amp; Conditions at any given time on the Site. You should regularly review the Terms &amp; Conditions on the Site. In the event the modified Terms &amp; Conditions is not acceptable to you, you should discontinue using the Service. However, if you continue to use the Service you shall be deemed to have agreed to accept and abide by the modified Terms &amp; Conditions of Use of this Site.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>Reviews, Feedback, Submissions All reviews, comments, feedback, postcards, suggestions, ideas, and other submissions disclosed, submitted or offered to the Site on or by this Site or otherwise disclosed, submitted or offered in connection with your use of this Site (collectively, the \\\"Comments\\\") shall be and remain the property of movingbazaar Such disclosure, submission or offer of any Comments shall constitute an assignment to movingbazaar of all worldwide rights, titles and interests in all copyrights and other intellectual properties in the Comments. Thus, movingbazaar owns exclusively all such rights, titles and interests and shall not be limited in any way in its use, commercial or otherwise, of any Comments. movingbazaarwill be entitled to use, reproduce, disclose, modify, adapt, create derivative works from, publish, display and distribute any Comments you submit for any purpose whatsoever, without restriction and without compensating you in any way. movingbazaar is and shall be under no obligation (1) to maintain any Comments in confidence; (2) to pay you any compensation for any Comments; or (3) to respond to any Comments. You agree that any Comments submitted by you to the Site will not violate this policy or any right of any third party, including copyright, trademark, privacy or other personal or proprietary right(s), and will not cause injury to any person or entity. You further agree that no Comments submitted by you to the Website will be or contain libelous or otherwise unlawful, threatening, abusive or obscene material, or contain software viruses, political campaigning, commercial solicitation, chain letters, mass mailings or any form of \\\"spam\\\". movingbazaar does not regularly review posted Comments, but does reserve the right (but not the obligation) to monitor and edit or remove any Comments submitted to the Site. You grant movingbazaarthe right to use the name that you submit in connection with any Comments. You agree not to use a false email address, impersonate any person or entity, or otherwise mislead as to the origin of any Comments you submit. You are and shall remain solely responsible for the content of any Comments you make and you agree to indemnify movingbazaar and its affiliates for all claims resulting from any Comments you submit. movingbazaar and its affiliates take no responsibility and assume no liability for any Comments submitted by you or any third party.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>Copyright &amp; Trademark movingbazaar.com and movingbazaar.com, its suppliers and licensors expressly reserve all intellectual property rights in all text, programs, products, processes, technology, content and other materials, which appear on this Site. Access to this Website does not confer and shall not be considered as conferring upon anyone any license under any of movingbazaar.com or any third party\\\'s intellectual property rights. All rights, including copyright, in this website are owned by or licensed to movingbazaar.com from movingbazaar.com. Any use of this website or its contents, including copying or storing it or them in whole or part, other than for your own personal, non-commercial use is prohibited without the permission of movingbazaar.com and/or movingbazaar.com. You may not modify, distribute or re-post anything on this website for any purpose.The names and logos and all related product and service names, design marks and slogans are the trademarks or service marks of movingbazaar.com, movingbazaar.com, its affiliates, its partners or its suppliers. All other marks are the property of their respective companies. No trademark or service mark license is granted in connection with the materials contained on this Site. Access to this Site does not authorize anyone to use any name, logo or mark in any manner.References on this Site to any names, marks, products or services of third parties or hypertext links to third party sites or information are provided solely as a convenience to you and do not in any way constitute or imply movingbazaar.com or movingbazaar.com\\\'s endorsement, sponsorship or recommendation of the third party, information, product or service. movingbazaar.com or movingbazaar.com is not responsible for the content of any third party sites and does not make any representations regarding the content or accuracy of material on such sites. If you decide to link to any such third party websites, you do so entirely at your own risk. All materials, including images, text, illustrations, designs, icons, photographs, programs, music clips or downloads, video clips and written and other materials that are part of this Website (collectively, the \\\"Contents\\\") are intended solely for personal, non-commercial use. You may download or copy the Contents and other downloadable materials displayed on the Website for your personal use only. No right, title or interest in any downloaded materials or software is transferred to you as a result of any such downloading or copying. You may not reproduce (except as noted above), publish, transmit, distribute, display, modify, create derivative works from, sell or participate in any sale of or exploit in any way, in whole or in part, any of the Contents, the Website or any related software. All software used on this Website is the property of movingbazaar.com or its licensees and suppliers and protected by Indian and international copyright laws. The Contents and software on this Website may be used only as a shopping resource. Any other use, including the reproduction, modification, distribution, transmission, republication, display, or performance, of the Contents on this Website is strictly prohibited. Unless otherwise noted, all Contents are copyrights, trademarks, trade dress and/or other intellectual property owned, controlled or licensed by movingbazaar.com, one of its affiliates or by third parties who have licensed their materials to movingbazaar.com and are protected by Indian and international copyright laws. The compilation (meaning the collection, arrangement, and assembly) of all Contents on this Website is the exclusive property of movingbazaar.com and movingbazaar.com and is also protected by Indian and international copyright laws.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>Objectionable Material You understand that by using this Site or any services provided on the Site, you may encounter Content that may be deemed by some to be offensive, indecent, or objectionable, which Content may or may not be identified as such. You agree to use the Site and any service at your sole risk and that to the fullest extent permitted under applicable law, movingbazaar.com and/or movingbazaar.com and its affiliates shall have no liability to you for Content that may be deemed offensive, indecent, or objectionable to you.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>Indemnity You agree to defend, indemnify and hold harmless movingbazaar.com, movingbazaar.com, its employees, directors, Coordinators, officers, agents, interns and their successors and assigns from and against any and all claims, liabilities, damages, losses, costs and expenses, including attorney\\\'s fees, caused by or arising out of claims based upon your actions or inactions, which may result in any loss or liability to movingbazaar.com or movingbazaar.com or any third party including but not limited to breach of any warranties, representations or undertakings or in relation to the non-fulfillment of any of your obligations under this User Agreement or arising out of the violation of any applicable laws, regulations including but not limited to Intellectual Property Rights, payment of statutory dues and taxes, claim of libel, defamation, violation of rights of privacy or publicity, loss of service by other subscribers and infringement of intellectual property or other rights. This clause shall survive the expiry or termination of this User Agreement.</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>Termination This User Agreement is effective unless and until terminated by either you or movingbazaar.com. You may terminate this User Agreement at any time, provided that you discontinue any further use of this Site. movingbazaar.com may terminate this User Agreement at any time and may do so immediately without notice, and accordingly deny you access to the Site, Such termination will be without any liability to movingbazaar.com. Upon any termination of the User Agreement by either you or movingbazaar.com, you must promptly destroy all materials downloaded or otherwise obtained from this Site, as well as all copies of such materials, whether made under the User Agreement or otherwise. movingbazaar.com\\\'s right to any Comments shall survive any termination of this User Agreement. Any such termination of the User Agreement shall not cancel your obligation to pay for the product already ordered from the Website or affect any liability that may have arisen under the User Agreement.</p>'),
(4, 'fcm_server_key', 'AAAAZWbvrCQ:APA91bFYz2Z3tYQ-jYCPbVfYY1t8AyheUiTXuLBhGsYSJN4EA2y8pSg8ynpOD-YLsCcQPEQM_myBpkgKt8P4lcqgtW9lVhczWh0baOu1a1q-4rgokNT4WEic5Tw3w17Q-PklimPZcS_v'),
(5, 'contact_us', '<h2><strong xss=removed>Contact Us</strong></h2>\\r\\n\\r\\n<p>For any kind of queries related to products, orders or services feel free to contact us on our official email address or phone number as given below :</p>\\r\\n\\r\\n<p> </p>\\r\\n\\r\\n<h3><strong>Areas we deliver : </strong></h3>\\r\\n\\r\\n<p> </p>\\r\\n\\r\\n<h3><strong>Delivery Timings :</strong></h3>\\r\\n\\r\\n<ol>\\r\\n <li><strong>  8:00 AM To 10:30 AM</strong></li>\\r\\n <li><strong>10:30 AM To 12:30 PM</strong></li>\\r\\n <li><strong>  4:00 PM To  7:00 PM</strong></li></ol><h3> <strong></strong>\\r\\n\\r\\n</h3><p><strong>Note : </strong>You can order for maximum 2days in advance. i.e., Today & Tomorrow only.  <br></p>'),
(6, 'system_settings', '{\"system_configurations\":\"1\",\"system_timezone_gmt\":\"+04:00\",\"system_configurations_id\":\"13\",\"copyright_details\":\"\",\"app_name\":\"movingbazaar\",\"support_number\":\"00971526459465\",\"support_email\":\"contact@movingbazaar.com\",\"current_version\":\"1.0.0\",\"current_version_ios\":\"1.0.0\",\"is_version_system_on\":\"1\",\"area_wise_delivery_charge\":\"0\",\"currency\":\"AED\",\"delivery_charge\":\"10\",\"min_amount\":\"1000000\",\"system_timezone\":\"Asia\\/Dubai\",\"is_refer_earn_on\":\"1\",\"min_refer_earn_order_amount\":\"100\",\"refer_earn_bonus\":\"10\",\"refer_earn_method\":\"percentage\",\"max_refer_earn_amount\":\"10\",\"refer_earn_bonus_times\":\"1\",\"welcome_wallet_balance_on\":\"1\",\"wallet_balance_amount\":\"0\",\"allow_order_attachments\":\"0\",\"local_pickup\":\"0\",\"upload_limit\":\"\",\"minimum_cart_amt\":\"10\",\"low_stock_limit\":\"2\",\"max_items_cart\":\"10\",\"delivery_boy_bonus_percentage\":\"2\",\"max_product_return_days\":\"1\",\"is_delivery_boy_otp_setting_on\":\"1\",\"is_single_seller_order\":\"0\",\"is_customer_app_under_maintenance\":\"0\",\"inspect_element\":\"0\",\"is_seller_app_under_maintenance\":\"0\",\"is_delivery_boy_app_under_maintenance\":\"0\",\"is_web_under_maintenance\":\"0\",\"message_for_customer_app\":\"\",\"message_for_seller_app\":\"\",\"message_for_delivery_boy_app\":\"\",\"message_for_web\":\"\",\"cart_btn_on_list\":\"1\",\"google_login\":\"1\",\"facebook_login\":\"1\",\"apple_login\":\"0\",\"whatsapp_status\":\"1\",\"whatsapp_number\":\"00971526459465\",\"expand_product_images\":\"0\",\"tax_name\":\"VAT Number\",\"tax_number\":\"24GSTIN1022520\",\"company_name\":\"movingbazaar\",\"company_url\":\"\",\"supported_locals\":\"AED\",\"decimal_point\":\"2\",\"pincode_wise_deliverability\":\"0\",\"city_wise_deliverability\":\"1\"}'),
(7, 'payment_method', '{\"telr_payment_method\":\"1\",\"telr_payment_mode\":\"live\",\"telr_store_id\":\"26781\",\"telr_store_authkey\":\"WzDC3~6pdbJ@J23z\",\"telr_currency_code\":\"AED\",\"paypal_payment_method\":\"0\",\"paypal_mode\":\"sandbox\",\"paypal_business_email\":\"paypal_business_email\",\"currency_code\":\"USD\",\"razorpay_payment_method\":\"0\",\"razorpay_key_id\":\"rzp_test_key\",\"razorpay_secret_key\":\"secret_key\",\"refund_webhook_secret_key\":\"\",\"paystack_payment_method\":\"0\",\"paystack_key_id\":\"paystack_public_key\",\"paystack_secret_key\":\"paystack_secret_key\",\"stripe_payment_method\":\"0\",\"stripe_payment_mode\":\"test\",\"stripe_publishable_key\":\"test_key\",\"stripe_secret_key\":\"test_key\",\"stripe_webhook_secret_key\":\"webhook_secret\",\"stripe_currency_code\":\"INR\",\"flutterwave_payment_method\":\"0\",\"flutterwave_public_key\":\"public_key\",\"flutterwave_secret_key\":\"secret_key\",\"flutterwave_encryption_key\":\"enc_key\",\"flutterwave_webhook_secret_key\":\"\",\"flutterwave_currency_code\":\"NGN\",\"paytm_payment_method\":\"0\",\"paytm_payment_mode\":\"sandbox\",\"paytm_merchant_key\":\"merchant_key\",\"paytm_merchant_id\":\"merchant_id\",\"paytm_website\":\"WEBSTAGING\",\"paytm_industry_type_id\":\"Retail\",\"midtrans_payment_mode\":\"sandbox\",\"midtrans_payment_method\":\"0\",\"midtrans_client_key\":\"\",\"midtrans_merchant_id\":\"\",\"midtrans_server_key\":\"\",\"direct_bank_transfer\":\"0\",\"account_name\":\"ssssssssss\",\"account_number\":\"020211022000001\",\"bank_name\":\"State Bank of India\",\"bank_code\":\"SBIIN0007\",\"notes\":\"<p>Please do not forget to upload the bank transfer receipt upon sending \\/ depositing money to the above-mentioned account. Once the amount deposit is confirmed the order will be processed further. To upload the receipt go to your order details page or screen and find a form to upload the receipt.<\\/p>\",\"myfaoorah_payment_method\":\"0\",\"myfatoorah_token\":\"0\",\"myfatoorah_payment_mode\":\"test\",\"myfatoorah__successUrl\":\"https:\\/\\/movingbazaar.com\\/admin\\/webhook\\/myfatoorah_success_url\",\"myfatoorah__errorUrl\":\"https:\\/\\/movingbazaar.com\\/admin\\/webhook\\/myfatoorah_error_url\",\"myfatoorah_language\":\"english\",\"myfatoorah_country\":\"UAE\",\"myfatoorah__secret_key\":\"\",\"instamojo_payment_method\":\"0\",\"instamojo_payment_mode\":\"sandbox\",\"instamojo_client_id\":\"\",\"instamojo_client_secret\":\"\",\"instamojo_webhook_url\":\"https:\\/\\/movingbazaar.com\\/admin\\/webhook\\/instamojo_webhook\",\"phonepe_payment_method\":\"1\",\"phonepe_payment_mode\":\"PRODUCTION\",\"phonepe_marchant_id\":\"wdwddw32\",\"phonepe_app_id\":\"qwdewqddw\",\"phonepe_salt_key\":\"dqwqwd\",\"phonepe_salt_index\":\"dwqqw\",\"phonepe_webhook_url\":\"https:\\/\\/movingbazaar.com\\/admin\\/webhook\\/phonepe_webhook\",\"cod_method\":\"1\"}'),
(8, 'about_us', '<p>About us <br></p>'),
(9, 'currency', 'AED'),
(11, 'email_settings', '{\"email\":\"aspro9977@gmail.com\",\"password\":\"vhde sfgv sbru pkcf\",\"smtp_host\":\"smtp.googlemail.com\",\"smtp_port\":\"465\",\"mail_content_type\":\"html\",\"smtp_encryption\":\"ssl\",\"ci_csrf_token\":\"\"}'),
(12, 'time_slot_config', '{\"time_slot_config\":\"1\",\"is_time_slots_enabled\":\"1\",\"delivery_starts_from\":\"2\",\"allowed_days\":\"7\"}'),
(13, 'favicon', 'uploads/media/2024/MovingBazzarLogo.jpg'),
(14, 'delivery_boy_privacy_policy', '<p><span xss=\\\"removed\\\"> delivery boy ACCESSING, </span>BROWSING OR OTHERWISE USING THE WEBSITE eShop.com, Missed Call Service or mobile application INDICATES user is in AGREEMENT with eShop vegetables & fruits Pvt Ltd for ALL THE TERMS AND CONDITIONS MENTIONED henceforth. User is requested to READ terms and conditions CAREFULLY BEFORE PROCEEDING FURTHER.<br>User is the person, group of person, company, trust, society, legal entity, legal personality or anyone who visits website, mobile app or gives missed call or places order with eShop via phone or website or mobile application or browse through website www.eShop.com.</p><p>eShop reserves the right to add, alter, change, modify or delete any of these terms and conditions at any time without prior information. The altered terms and conditions becomes binding on the user since the moment same are unloaded on the website www.eShop.com</p><p>eShop is in trade of fresh fruits and vegetables and delivers the order to home (user’s desired address) directly.</p><p>That any user who gives missed call/call for order on any number published/used by eShop.com, consents to receive, accept calls and messages or any after communication from eShop vegetables & fruits Pvt Ltd for Promotion and Telemarketing Purposes within a week.</p><p>If a customer do not wish to receive any communication from eShop, please SMS NO OFFERS to 9512512125.</p><p>eShop accept orders on all seven days and user will receive the delivery next day from date of order placement, as we at eShop procure the fresh produce from the procurement center and deliver it straight to user.</p><p>There is Minimum Order value of Rs. 200. There are no delivery charges on an order worth Rs. 200 or above. In special cases, if permitted, order value is less then Rs. 200/– , Rs. 40 as shipping charges shall be charged from user.</p><p>eShop updates the prices on daily basis and the price displayed at our website www.eShop.com, at the time of placement of order by user he/she/it will be charged as per the price listed at the website www.eShop.com.</p><p>In the event, though there are remote possibilities, of wrong invoice generation due to any reason, in case it happens eShop vegetables & fruits Pvt Ltd reserve its right to again raise the correct invoice at the revised amount and same shall be paid by user.</p><p>At times it is difficult to weigh certain vegetables or fruits exactly as per the order or desired quantity of user, hence the delivery might be with five percent variation on both higher or lower side of exact ordered quantity, user are hereby under takes to pay to eShop vegetables & fruits Pvt Ltd as per the final invoice. We at eShop understands and our endeavor is to always deliver in exact quantity in consonance with quantity ordered but every time it’s not possible but eShop guarantee the fair deal and weight to all its users. eShop further assures its users that at no instance delivery weights/quantity vary dramatically from what quantity ordered by user.</p><p>If some product is not available or is not of good quality, the same item will not be delivered and will be adjusted accordingly in the invoice; all rights in this regards are reserved with eShop. Images of Fruits & Vegetables present in the website are for demonstration purpose and may not resemble exactly in size, colour, weight, contrast etc; though we assure our best to maintain the best quality in product, which is being our foremost commitment to the customer.</p><p>All orders placed before 11 PM in the Night will be delivered next day or as per delivery date chosen.</p>'),
(15, 'delivery_boy_terms_conditions', '<p><span xss=\\\"removed\\\"> delivery boy ACCESSING,</span><span xss=\\\"removed\\\"> </span>BROWSING OR OTHERWISE USING THE WEBSITE eShop.com, Missed Call Service or mobile application INDICATES user is in AGREEMENT with eShop vegetables & fruits Pvt Ltd for ALL THE TERMS AND CONDITIONS MENTIONED henceforth. User is requested to READ terms and conditions CAREFULLY BEFORE PROCEEDING FURTHER.<br>User is the person, group of person, company, trust, society, legal entity, legal personality or anyone who visits website, mobile app or gives missed call or places order with eShop via phone or website or mobile application or browse through website www.eShop.com.</p><p>eShop reserves the right to add, alter, change, modify or delete any of these terms and conditions at any time without prior information. The altered terms and conditions becomes binding on the user since the moment same are unloaded on the website www.eShop.com</p><p>eShop is in trade of fresh fruits and vegetables and delivers the order to home (user’s desired address) directly.</p><p>That any user who gives missed call/call for order on any number published/used by eShop.com, consents to receive, accept calls and messages or any after communication from eShop vegetables & fruits Pvt Ltd for Promotion and Telemarketing Purposes within a week.</p><p>If a customer do not wish to receive any communication from eShop, please SMS NO OFFERS to 9512512125.</p><p>eShop accept orders on all seven days and user will receive the delivery next day from date of order placement, as we at eShop procure the fresh produce from the procurement center and deliver it straight to user.</p><p>There is Minimum Order value of Rs. 200. There are no delivery charges on an order worth Rs. 200 or above. In special cases, if permitted, order value is less then Rs. 200/– , Rs. 40 as shipping charges shall be charged from user.</p><p>eShop updates the prices on daily basis and the price displayed at our website www.eShop.com, at the time of placement of order by user he/she/it will be charged as per the price listed at the website www.eShop.com.</p><p>In the event, though there are remote possibilities, of wrong invoice generation due to any reason, in case it happens eShop vegetables & fruits Pvt Ltd reserve its right to again raise the correct invoice at the revised amount and same shall be paid by user.</p><p>At times it is difficult to weigh certain vegetables or fruits exactly as per the order or desired quantity of user, hence the delivery might be with five percent variation on both higher or lower side of exact ordered quantity, user are hereby under takes to pay to eShop vegetables & fruits Pvt Ltd as per the final invoice. We at eShop understands and our endeavor is to always deliver in exact quantity in consonance with quantity ordered but every time it’s not possible but eShop guarantee the fair deal and weight to all its users. eShop further assures its users that at no instance delivery weights/quantity vary dramatically from what quantity ordered by user.</p><p>If some product is not available or is not of good quality, the same item will not be delivered and will be adjusted accordingly in the invoice; all rights in this regards are reserved with eShop. Images of Fruits & Vegetables present in the website are for demonstration purpose and may not resemble exactly in size, colour, weight, contrast etc; though we assure our best to maintain the best quality in product, which is being our foremost commitment to the customer.</p><p>All orders placed before 11 PM in the Night will be delivered next day or as per delivery date chosen.</p>'),
(16, 'web_logo', 'uploads/media/2024/MovingBazzarLogo.jpg'),
(17, 'web_favicon', 'uploads/media/2024/MovingBazzarLogo.jpg'),
(18, 'web_settings', '{\"site_title\":\"MovingBazaar - Multipurpose Ecommerce Store\",\"support_number\":\"1234567890\",\"support_email\":\"dotlinx@gmail.com\",\"copyright_details\":\"Copyright \\u00a9 2024, All Rights Reserved dotlinx.com\",\"address\":\"P.O.Box 40450,  AbuDhabi,  United Arab Emirates.  info@dotlinx.com  +971508600250\",\"app_short_description\":\"MovingBazaar is a multipurpose e-commerce platform best suitable for all kinds of sectors like Electronics, Fashion, Groceries and Vegetables, Flowers, Gift articles, Medical, and more ..\",\"map_iframe\":\"\",\"logo\":\"uploads\\/media\\/2024\\/MovingBazzarLogo.jpg\",\"favicon\":\"uploads\\/media\\/2024\\/MovingBazzarLogo.jpg\",\"meta_keywords\":\"MovingBazaar , MbShop, Eshop , E-commerce\",\"meta_description\":\"MovingBazaar is a multipurpose e-commerce platform\",\"app_download_section\":true,\"app_download_section_title\":\"MovingBazaar Mobile App\",\"app_download_section_tagline\":\"MovingBazaar is a multipurpose  ecommerce platform\",\"app_download_section_short_description\":\"Shop with us at affordable prices and get exciting cashback & offers.\",\"app_download_section_playstore_url\":\"https:\\/\\/play.google.com\\/\",\"app_download_section_appstore_url\":\"https:\\/\\/www.apple.com\\/in\\/app-store\\/\",\"twitter_link\":\"https:\\/\\/twitter.com\\/\",\"facebook_link\":\"https:\\/\\/facebook.com\\/\",\"instagram_link\":\"https:\\/\\/instagram.com\\/\",\"youtube_link\":\"https:\\/\\/youtube.com\\/\",\"shipping_mode\":true,\"shipping_title\":\"Free Shipping\",\"shipping_description\":\"Free Shipping at your door step.\",\"return_mode\":true,\"return_title\":\"Free Returns\",\"return_description\":\"Free return if products are damaged.\",\"support_mode\":true,\"support_title\":\"Support 24\\/7\",\"support_description\":\"24\\/7 and 365 days support is available.\",\"safety_security_mode\":true,\"safety_security_title\":\"100% Safe & Secure\",\"safety_security_description\":\"100% safe & secure.\",\"primary_color\":\"\",\"secondary_color\":\"\",\"font_color\":\"\",\"modern_theme_color\":\"default\",\"ci_csrf_token\":\"\"}'),
(19, 'firebase_settings', '{\"apiKey\":\"AIzaSyBu27b_Jlo4VBT1-VYqYtqJdaKiUyYMb8k\",\"authDomain\":\"movingbazaar.firebaseapp.com\",\"databaseURL\":\"https:\\/\\/movingbazaar-default-rtdb.asia-southeast1.firebasedatabase.app\",\"projectId\":\"movingbazaar\",\"storageBucket\":\"movingbazaar.firebasestorage.app\",\"messagingSenderId\":\"435518680100\",\"appId\":\"1:435518680100:web:972896718893a741a5fcb1\",\"measurementId\":\"G-C09H7Y2732\",\"ci_csrf_token\":\"\"}');
INSERT INTO `settings` (`id`, `variable`, `value`) VALUES
(20, 'admin_privacy_policy', '<p>Admin ACCESSING, BROWSING</span> OR OTHERWISE USING THE WEBSITE eShop.com, Missed Call Service or mobile application INDICATES user is in AGREEMENT with eShop vegetables & fruits Pvt Ltd for ALL THE TERMS AND CONDITIONS MENTIONED henceforth. User is requested to READ terms and conditions CAREFULLY BEFORE PROCEEDING FURTHER.</span></p><p>User is the person, group of person, company, trust, society, legal entity, legal personality or anyone who visits website, mobile app or gives missed call or places order with eShop via phone or website or mobile application or browse through website www.eShop.com.</p><p>eShop reserves the right to add, alter, change, modify or delete any of these terms and conditions at any time without prior information. The altered terms and conditions becomes binding on the user since the moment same are unloaded on the website www.eShop.com</p><p>eShop is in trade of fresh fruits and vegetables and delivers the order to home (user’s desired address) directly.</p><p>That any user who gives missed call/call for order on any number published/used by eShop.com, consents to receive, accept calls and messages or any after communication from eShop vegetables & fruits Pvt Ltd for Promotion and Telemarketing Purposes within a week.</p><p>If a customer do not wish to receive any communication from eShop, please SMS NO OFFERS to 9512512125.</p><p>eShop accept orders on all seven days and user will receive the delivery next day from date of order placement, as we at eShop procure the fresh produce from the procurement center and deliver it straight to user.</p><p>There is Minimum Order value of Rs. 200. There are no delivery charges on an order worth Rs. 200 or above. In special cases, if permitted, order value is less then Rs. 200/– , Rs. 40 as shipping charges shall be charged from user.</p><p>eShop updates the prices on daily basis and the price displayed at our website www.eShop.com, at the time of placement of order by user he/she/it will be charged as per the price listed at the website www.eShop.com.</p><p>In the event, though there are remote possibilities, of wrong invoice generation due to any reason, in case it happens eShop vegetables & fruits Pvt Ltd reserve its right to again raise the correct invoice at the revised amount and same shall be paid by user.</p><p>At times it is difficult to weigh certain vegetables or fruits exactly as per the order or desired quantity of user, hence the delivery might be with five percent variation on both higher or lower side of exact ordered quantity, user are hereby under takes to pay to eShop vegetables & <span xss=\\\"removed\\\">ACCESSING </span><span xss=\\\"removed\\\">fruits Pvt Ltd as per the final invoice. We at eShop understands and our endeavor is to always deliver in exact quantity in consonance with quantity ordered but every time it’s not possible but eShop guarantee the fair deal and weight to all its users. eShop further assures its users that at no instance delivery weights/quantity vary dramatically from what quantity ordered by user.</span></p><p>If some product is not available or is not of good quality, the same item will not be delivered and will be adjusted accordingly in the invoice; all rights in this regards are reserved with eShop. Images of Fruits & Vegetables present in the website are for demonstration purpose and may not resemble exactly in size, colour, weight, contrast etc; though we assure our best to maintain the best quality in product, which is being our foremost commitment to the customer.</p><p>All orders placed before 11 PM in the Night will be delivered next day or as per delivery date chosen.</p>'),
(21, 'admin_terms_conditions', '<p><span xss=\\\"removed\\\"><span xss=\\\"removed\\\"> admin ACCESSING, BROWSING</span> OR OTHERWISE USING THE WEBSITE eShop.com, Missed Call Service or mobile application INDICATES user is in AGREEMENT with eShop vegetables & fruits Pvt Ltd for ALL THE TERMS AND CONDITIONS MENTIONED henceforth. User is requested to READ terms and conditions CAREFULLY BEFORE PROCEEDING FURTHER.</span></p><p>User is the person, group of person, company, trust, society, legal entity, legal personality or anyone who visits website, mobile app or gives missed call or places order with eShop via phone or website or mobile application or browse through website www.eShop.com.</p><p>eShop reserves the right to add, alter, change, modify or delete any of these terms and conditions at any time without prior information. The altered terms and conditions becomes binding on the user since the moment same are unloaded on the website www.eShop.com</p><p>eShop is in trade of fresh fruits and vegetables and delivers the order to home (user’s desired address) directly.</p><p>That any user who gives missed call/call for order on any number published/used by eShop.com, consents to receive, accept calls and messages or any after communication from eShop vegetables & fruits Pvt Ltd for Promotion and Telemarketing Purposes within a week.</p><p>If a customer do not wish to receive any communication from eShop, please SMS NO OFFERS to 9512512125.</p><p>eShop accept orders on all seven days and user will receive the delivery next day from date of order placement, as we at eShop procure the fresh produce from the procurement center and deliver it straight to user.</p><p>There is Minimum Order value of Rs. 200. There are no delivery charges on an order worth Rs. 200 or above. In special cases, if permitted, order value is less then Rs. 200/– , Rs. 40 as shipping charges shall be charged from user.</p><p>eShop updates the prices on daily basis and the price displayed at our website www.eShop.com, at the time of placement of order by user he/she/it will be charged as per the price listed at the website www.eShop.com.</p><p>In the event, though there are remote possibilities, of wrong invoice generation due to any reason, in case it happens eShop vegetables & fruits Pvt Ltd reserve its right to again raise the correct invoice at the revised amount and same shall be paid by user.</p><p>At times it is difficult to weigh certain vegetables or fruits exactly as per the order or desired quantity of user, hence the delivery might be with five percent variation on both higher or lower side of exact ordered quantity, user are hereby under takes to pay to eShop vegetables & fruits Pvt Ltd as per the final invoice. We at eShop understands and our endeavor is to always deliver in exact quantity in consonance with quantity ordered but every time it’s not possible but eShop guarantee the fair deal and weight to all its users. eShop further assures its users that at no instance delivery weights/quantity vary dramatically from what quantity ordered by user.</p><p>If some product is not available or is not of good quality, the same item will not be delivered and will be adjusted accordingly in the invoice; all rights in this regards are reserved with eShop. Images of Fruits & Vegetables present in the website are for demonstration purpose and may not resemble exactly in size, colour, weight, contrast etc; though we assure our best to maintain the best quality in product, which is being our foremost commitment to the customer.</p><p>All orders placed before 11 PM in the Night will be delivered next day or as per delivery date chosen.</p>'),
(22, 'seller_privacy_policy', '<p><span xss=\\\"removed\\\"><span xss=\\\"removed\\\" xss=removed><b>Privacy Policy</b></span><br></span></p><p><span xss=\\\"removed\\\">Seller ACCESSING, </span>BROWSING OR OTHERWISE USING THE WEBSITE eShop.com, Missed Call Service or mobile application INDICATES user is in AGREEMENT with eShop vegetables & fruits Pvt Ltd for ALL THE TERMS AND CONDITIONS MENTIONED henceforth. User is requested to READ terms and conditions CAREFULLY BEFORE PROCEEDING FURTHER.<br>User is the person, group of person, company, trust, society, legal entity, legal personality or anyone who visits website, mobile app or gives missed call or places order with eShop via phone or website or mobile application or browse through website www.eShop.com.</p><p>eShop reserves the right to add, alter, change, modify or delete any of these terms and conditions at any time without prior information. The altered terms and conditions becomes binding on the user since the moment same are unloaded on the website www.eShop.com</p><p>eShop is in trade of fresh fruits and vegetables and delivers the order to home (user’s desired address) directly.</p><p>That any user who gives missed call/call for order on any number published/used by eShop.com, consents to receive, accept calls and messages or any after communication from eShop vegetables & fruits Pvt Ltd for Promotion and Telemarketing Purposes within a week.</p><p>If a customer do not wish to receive any communication from eShop, please SMS NO OFFERS to 9512512125.</p><p>eShop accept orders on all seven days and user will receive the delivery next day from date of order placement, as we at eShop procure the fresh produce from the procurement center and deliver it straight to user.</p><p>There is Minimum Order value of Rs. 200. There are no delivery charges on an order worth Rs. 200 or above. In special cases, if permitted, order value is less then Rs. 200/– , Rs. 40 as shipping charges shall be charged from user.</p><p>eShop updates the prices on daily basis and the price displayed at our website www.eShop.com, at the time of placement of order by user he/she/it will be charged as per the price listed at the website www.eShop.com.</p><p>In the event, though there are remote possibilities, of wrong invoice generation due to any reason, in case it happens eShop vegetables & fruits Pvt Ltd reserve its right to again raise the correct invoice at the revised amount and same shall be paid by user.</p><p>At times it is difficult to weigh certain vegetables or fruits exactly as per the order or desired quantity of user, hence the delivery might be with five percent variation on both higher or lower side of exact ordered quantity, user are hereby under takes to pay to eShop vegetables & fruits Pvt Ltd as per the final invoice. We at eShop understands and our endeavor is to always deliver in exact quantity in consonance with quantity ordered but every time it’s not possible but eShop guarantee the fair deal and weight to all its users. eShop further assures its users that at no instance delivery weights/quantity vary dramatically from what quantity ordered by user.</p><p>If some product is not available or is not of good quality, the same item will not be delivered and will be adjusted accordingly in the invoice; all rights in this regards are reserved with eShop. Images of Fruits & Vegetables present in the website are for demonstration purpose and may not resemble exactly in size, colour, weight, contrast etc; though we assure our best to maintain the best quality in product, which is being our foremost commitment to the customer.</p><p>All orders placed before 11 PM in the Night will be delivered next day or as per delivery date chosen.</p>'),
(23, 'seller_terms_conditions', '<p><span xss=\\\"removed\\\"><span xss=\\\"removed\\\" xss=removed><b>Terms & Conditions</b></span></span><span xss=\\\"removed\\\">﻿</span><span xss=\\\"removed\\\"><br></span></p><p><span xss=\\\"removed\\\">Seller ACCESSING, </span>BROWSING OR OTHERWISE USING THE WEBSITE eShop.com, Missed Call Service or mobile application INDICATES user is in AGREEMENT with eShop vegetables & fruits Pvt Ltd for ALL THE TERMS AND CONDITIONS MENTIONED henceforth. User is requested to READ terms and conditions CAREFULLY BEFORE PROCEEDING FURTHER.<br>User is the person, group of person, company, trust, society, legal entity, legal personality or anyone who visits website, mobile app or gives missed call or places order with eShop via phone or website or mobile application or browse through website www.eShop.com.</p><p>eShop reserves the right to add, alter, change, modify or delete any of these terms and conditions at any time without prior information. The altered terms and conditions becomes binding on the user since the moment same are unloaded on the website www.eShop.com</p><p>eShop is in trade of fresh fruits and vegetables and delivers the order to home (user’s desired address) directly.</p><p>That any user who gives missed call/call for order on any number published/used by eShop.com, consents to receive, accept calls and messages or any after communication from eShop vegetables & fruits Pvt Ltd for Promotion and Telemarketing Purposes within a week.</p><p>If a customer do not wish to receive any communication from eShop, please SMS NO OFFERS to 9512512125.</p><p>eShop accept orders on all seven days and user will receive the delivery next day from date of order placement, as we at eShop procure the fresh produce from the procurement center and deliver it straight to user.</p><p>There is Minimum Order value of Rs. 200. There are no delivery charges on an order worth Rs. 200 or above. In special cases, if permitted, order value is less then Rs. 200/– , Rs. 40 as shipping charges shall be charged from user.</p><p>eShop updates the prices on daily basis and the price displayed at our website www.eShop.com, at the time of placement of order by user he/she/it will be charged as per the price listed at the website www.eShop.com.</p><p>In the event, though there are remote possibilities, of wrong invoice generation due to any reason, in case it happens eShop vegetables & fruits Pvt Ltd reserve its right to again raise the correct invoice at the revised amount and same shall be paid by user.</p><p>At times it is difficult to weigh certain vegetables or fruits exactly as per the order or desired quantity of user, hence the delivery might be with five percent variation on both higher or lower side of exact ordered quantity, user are hereby under takes to pay to eShop vegetables & fruits Pvt Ltd as per the final invoice. We at eShop understands and our endeavor is to always deliver in exact quantity in consonance with quantity ordered but every time it’s not possible but eShop guarantee the fair deal and weight to all its users. eShop further assures its users that at no instance delivery weights/quantity vary dramatically from what quantity ordered by user.</p><p>If some product is not available or is not of good quality, the same item will not be delivered and will be adjusted accordingly in the invoice; all rights in this regards are reserved with eShop. Images of Fruits & Vegetables present in the website are for demonstration purpose and may not resemble exactly in size, colour, weight, contrast etc; though we assure our best to maintain the best quality in product, which is being our foremost commitment to the customer.</p><p>All orders placed before 11 PM in the Night will be delivered next day or as per delivery date chosen.</p>'),
(26, 'sms_gateway_method', ''),
(27, 'authentication_settings', '{\"authentication_method\":\"firebase\"}'),
(28, 'vap_id_Key', 'BNX97rndOHbBz5TCIotsxaby_p7a7YHfliUd466epkfZZkrNmacyGmfnPtGr4OouPBpYf4VOvmpwPJ6WkC5GyU0'),
(29, 'sms_gateway_settings', '{}'),
(30, 'send_notification_settings', ''),
(32, 'web_doctor_brown', '{\"code_bravo\":\"aed3b7b7-080f-45e3-a405-99d775c41a8e\",\"time_check\":\"dcc139af5d46274f1bd1364228ab5e229e4712e0f6b0ea166287a23d7011a311\",\"code_adam\":\"saddam2290\",\"dr_firestone\":34380052}'),
(33, 'doctor_brown', '{\"code_bravo\":\"f5e46287-adf3-4770-ae5d-000506a6703b\",\"time_check\":\"93cc22099920d45deb46c878edcb8901f24d03c92ade426ee96fc09b50f65212\",\"code_adam\":\"saddam2290\",\"dr_firestone\":34108271}'),
(34, 'shipping_method', '{\"shiprocket_shipping_method\":\"0\",\"email\":\"\",\"password\":\"\",\"webhook_token\":\"\",\"local_shipping_method\":\"1\",\"standard_shipping_free_delivery\":\"0\",\"minimum_free_delivery_order_amount\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `type` varchar(16) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `link` varchar(512) NOT NULL DEFAULT 'NULL',
  `image` varchar(256) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `type`, `type_id`, `link`, `image`, `date_added`) VALUES
(5, 'categories', 11, '', 'uploads/media/2024/mac_offer.jpg', '2024-03-27 10:28:28'),
(4, 'categories', 5, '', 'uploads/media/2024/Winter_Slider-min.jpg', '2024-03-27 10:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `parent_state_id` int(11) NOT NULL DEFAULT 0,
  `delivery_charge` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `parent_state_id`, `delivery_charge`) VALUES
(1, 'Abudhabi', 0, 10),
(13, 'Dubai', 0, 15),
(14, 'SHARJAH', 0, 15),
(15, 'RAS AL KHAIMAH', 0, 16),
(16, 'UMM UL QUWAIN', 0, 10),
(17, 'FUJAIRAH', 0, 15),
(18, 'AJMAN', 0, 15),
(29, 'ruwais', 1, 10),
(30, 'ghayathi', 1, 15),
(31, 'Al-Ain', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `system_notification`
--

DROP TABLE IF EXISTS `system_notification`;
CREATE TABLE `system_notification` (
  `id` int(11) NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `message` varchar(20) DEFAULT NULL,
  `type` varchar(256) DEFAULT NULL,
  `type_id` int(11) DEFAULT 0,
  `read_by` tinyint(4) NOT NULL DEFAULT 0,
  `date_sent` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `title` mediumtext DEFAULT NULL,
  `percentage` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `percentage`, `status`) VALUES
(1, 'VAT', '5', 1),
(2, '0', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `slug` varchar(32) NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `slug`, `image`, `is_default`, `status`, `created_on`) VALUES
(1, 'Classic', 'classic', 'classic.jpg', 0, 0, '2021-02-11 05:18:42'),
(2, 'Modern', 'modern', 'modern.png', 1, 1, '2023-07-18 05:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `ticket_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

DROP TABLE IF EXISTS `ticket_messages`;
CREATE TABLE `ticket_messages` (
  `id` int(11) NOT NULL,
  `user_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_types`
--

DROP TABLE IF EXISTS `ticket_types`;
CREATE TABLE `ticket_types` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

DROP TABLE IF EXISTS `time_slots`;
CREATE TABLE `time_slots` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `last_order_time` time NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`id`, `title`, `from_time`, `to_time`, `last_order_time`, `status`) VALUES
(1, 'Morning 6 AM to 12 AM', '06:00:00', '00:00:00', '23:00:00', 1),
(2, 'Evening  4 PM to 11 PM', '16:00:00', '23:59:00', '23:59:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `transaction_type` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(128) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `txn_id` varchar(256) DEFAULT NULL,
  `payu_txn_id` varchar(512) DEFAULT NULL,
  `amount` double NOT NULL,
  `status` varchar(12) DEFAULT NULL,
  `currency_code` varchar(5) DEFAULT NULL,
  `payer_email` varchar(64) DEFAULT NULL,
  `message` varchar(128) NOT NULL,
  `transaction_date` timestamp NULL DEFAULT current_timestamp(),
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_refund` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

DROP TABLE IF EXISTS `updates`;
CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `version` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `version`) VALUES
(1, '1.0'),
(2, '1.0.1'),
(3, '1.0.2'),
(4, '1.0.3'),
(5, '2.0.0'),
(7, '2.0.1'),
(14, '2.0.2'),
(15, '2.0.3'),
(16, '2.0.4'),
(17, '2.0.5'),
(18, '2.0.6'),
(19, '2.0.7'),
(20, '2.0.8'),
(21, '2.0.9'),
(24, '2.1.0'),
(25, '2.2.0'),
(26, '2.3.0'),
(28, '2.4.0'),
(29, '2.5.0'),
(31, '2.6.0'),
(32, '2.6.1'),
(33, '2.6.2'),
(36, '2.7.0'),
(37, '2.7.1'),
(38, '2.8.1'),
(40, '2.8.2'),
(41, '2.8.2'),
(42, '2.9.0'),
(43, '2.9.0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `balance` double DEFAULT 0,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(10) UNSIGNED NOT NULL,
  `last_login` int(10) UNSIGNED DEFAULT NULL,
  `last_online` int(11) DEFAULT NULL,
  `active` tinyint(3) UNSIGNED DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bonus_type` varchar(30) DEFAULT 'percentage_per_order',
  `bonus` int(11) DEFAULT NULL,
  `cash_received` double(15,2) NOT NULL DEFAULT 0.00,
  `dob` varchar(16) DEFAULT NULL,
  `country_code` int(11) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `area` text DEFAULT NULL,
  `street` text DEFAULT NULL,
  `pincode` varchar(32) DEFAULT NULL,
  `serviceable_zipcodes` varchar(256) DEFAULT NULL,
  `serviceable_cities` varchar(256) DEFAULT NULL,
  `apikey` varchar(2048) DEFAULT NULL,
  `referral_code` varchar(32) DEFAULT NULL,
  `friends_code` varchar(28) DEFAULT NULL,
  `fcm_id` text DEFAULT NULL,
  `latitude` varchar(64) DEFAULT NULL,
  `longitude` varchar(64) DEFAULT NULL,
  `type` varchar(1024) NOT NULL DEFAULT 'phone',
  `driving_license` varchar(1024) DEFAULT 'NULL',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `web_fcm` varchar(1024) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `mobile`, `image`, `balance`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `last_online`, `active`, `company`, `address`, `bonus_type`, `bonus`, `cash_received`, `dob`, `country_code`, `city`, `area`, `street`, `pincode`, `serviceable_zipcodes`, `serviceable_cities`, `apikey`, `referral_code`, `friends_code`, `fcm_id`, `latitude`, `longitude`, `type`, `driving_license`, `status`, `web_fcm`, `created_at`) VALUES
(1, '41.176.193.214', 'Admin', '$2y$12$vLIn7RUMCynSXYOrRLfGa.6tFDDvdXA4PNiEPxfc2yDGts1MUKpj.', '', '9876543210', NULL, 21610473638.449993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1268889823, 1744868230, 1714714231, 1, 'ADMIN', NULL, 'percentage_per_order', NULL, 0.00, NULL, 91, '57', '157', NULL, NULL, NULL, NULL, NULL, 'vXaEvNuR', NULL, 'fFQa3MftQ6uliFS6T1IdGk:APA91bGNY-dntY4Yu0zTtjS9hB1ncLHnVmyDnnF4QCvRx3BOT57TfKAIIg036aBQ2tNt3SKFyLVGamBviZu0TjDluRdojAVJMdH40BwL3Hrpr6YNkYwQGYzwmKfpf42Ktp0AyITmT7R5', NULL, NULL, 'phone', 'NULL', 0, '', '2020-06-30 10:20:08'),
(8, '2.50.154.1', 'Arshad', '$2y$12$FEWuI.qZfYVQj3O2MrULHegUakR/AyHWG7.ujX9WovAwZuQIeb1XO', 'arshad@dotlinx.com', '9585465225', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1714636097, 1714640249, 1, NULL, NULL, 'percentage_per_order', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'phone', 'NULL', 0, '', '2024-03-21 07:28:17'),
(14, '31.215.98.40', 'Nellai sweets', '$2y$10$041SkNIXKo8iFruVecs2kuW08iCUVMMil7UbM.GeSsYPMtF.RvEc2', 'arshad.ayoob@dotlinxtech.com', '551529945', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1711479095, 1744213034, NULL, 1, NULL, 'Mussafah, auh', 'percentage_per_order', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'phone', 'NULL', 0, '', '2024-03-26 18:51:35'),
(15, '2.50.154.1', 'Pannaiyar Traditional', '$2y$10$mtBj3W9/sgWGpmJ/3XQpt.Qk6Pd60WYJa3LL4L2dBcP9BxuLmkEqu', 'indiaafrica25@gmail.com', '9585465221', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1711517288, 1743258896, 1743232841, 1, NULL, 'Pannaiyar Traditional ,\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\nTamilnadu, India', 'percentage_per_order', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'phone', 'NULL', 0, '', '2024-03-27 05:28:08'),
(17, '2.50.154.1', 'India Silk House', '$2y$10$T02ppmKp6RyF7FYiO.Ev0u1xxng.pqbAidNf0GXa/trfC4AJGrhVC', 'ish@gmail.com', '9585465223', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1711533444, NULL, NULL, 1, NULL, 'India Silk House,\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\nTamilnadu', 'percentage_per_order', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'phone', 'NULL', 0, '', '2024-03-27 09:57:24'),
(18, '2.50.154.1', 'Agri Fresh', '$2y$10$/pnhvXcMwbj3/pZxWNTPO.uzVtxmNIof5nObFmpGneuKHp6kaJx86', 'agri@gmail.com', '9585465229', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1711534151, NULL, NULL, 1, NULL, 'Agri Fresh Food stuff\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\nTamilnadu', 'percentage_per_order', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'phone', 'NULL', 0, '', '2024-03-27 10:09:11'),
(19, '92.99.61.74', 'Abdullah', '$2y$10$KTiRGMpUeXOrLBo/XemUHextAf7/e/6QaucJCdan1cbF4XRR01p/K', 'arimaatesting@gmail.com', '9876543216', NULL, 97.986875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1711787409, 1743243635, NULL, 1, NULL, 'sadfdaf', 'percentage_per_order_item', 5, 854.92, NULL, NULL, NULL, NULL, NULL, NULL, '', '5,14,20', NULL, NULL, NULL, NULL, NULL, NULL, 'phone', 'uploads/delivery_boy/FlutterRoadmap_copy.png,uploads/delivery_boy/FlutterRoadmap.png', 1, '', '2024-03-30 08:30:09'),
(22, '64.227.189.114', 'DubaiSeller', '$2y$10$7dtPMVJFefq95pvbzxpql.CvlMod533uXveJV4ozQBH3srXH9oHkO', 'dxb@gmail.com', '00971556231148', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1713642484, 1714851613, NULL, 1, NULL, 'Dubai', 'percentage_per_order', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MTM2NDI0ODQsImlzcyI6ImVzaG9wIiwiZXhwIjoxNzQ1MTc4NDg0LCJ1c2VyX2lkIjoiMjIifQ.zbMVtziPtxcaT3dlaH-H8TTP9Gtbwy1Tls2miHDq3gg', NULL, NULL, 'cskd4Xp8QFWz-8Qv2mSFM-:APA91bEyZIjuNYBPktpY3N8baWOBSJ3gxPdOW2-l_XtK0UKVK3B21-orYJ-oFpt0x9w7tU9JPcVvBK4XIf-wApxuGqxpzXbBpJDkqfFVs0_mcmnzcx01VLYVKp0KMiJVsqDIE7U0QES6', '', '', 'phone', 'NULL', 0, '', '2024-04-20 19:48:04'),
(23, '64.227.189.114', 'Saddam', '$2y$10$4wPPDni//Exkvyr1EHim4uuEQVua23ADzYL4P.Qf2u21qFFYfOe0q', 'sad@gmail.com', '0556231148', NULL, 14.997250000000001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1713694675, 1713975067, NULL, 1, NULL, 'AbuDhabi', 'percentage_per_order_item', 5, 224.41, NULL, NULL, NULL, NULL, NULL, NULL, '', '1', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MTM2OTYzNTYsImlzcyI6ImVzaG9wIiwiZXhwIjoxNzQ1MjMyMzU2LCJ1c2VyX2lkIjoiMjMifQ.9_jJE2zeSXV5IF7MDwLW9WNd4GTqlVUmLPZ-RY2tVB0', NULL, NULL, 'e2jvO284RLayVF0StqlN33:APA91bFayVI7a4hHVu2aiXKvzGiR_NQdU7EN8kNyqs-fOABz-hP0TpK_qSi8PYe32IJmnK2C3ZeSi03-phN3m2Z5jaLq107txl_Xr5rEAqsngNwaC8D-mQcv1H2yj5-9JswvT9xT-6B-', NULL, NULL, 'phone', 'uploads/delivery_boy/mblogo.jpeg,uploads/delivery_boy/Media.jpg', 1, '', '2024-04-21 10:17:55'),
(24, '64.227.189.114', 'HOOBY TRACK', '$2y$10$yM48l5Kam3Exq8Hm1qgYKu8QlpCXKpMmIm.Da0uoHJS6rcAZzpn46', 'arshadayoob28@gmail.com', '509841657', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1713946492, 1734612280, NULL, 1, NULL, 'AUH', 'percentage_per_order', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MTM5NDY5ODAsImlzcyI6ImVzaG9wIiwiZXhwIjoxNzQ1NDgyOTgwLCJ1c2VyX2lkIjoiMjQifQ.E09TCdcJf4fkroZNig0ZjqaNbVe9x0dZBGI-vzCHndE', NULL, NULL, 'dVbh3rnJSjiM7xyHUmWQgj:APA91bEGBTwr9IHU_iKrCBHRPmKsFYcbbPZZQHvEv0mHv0RhWvESBxg99JP1mUlsSwIbmfrceSRcfT1gbOvMWanujzhj2kV4Cag8fTBI0NL5Xg_k7iCsDz_8ocF1oXf5u0BMjUricOyo', '', '', 'phone', 'NULL', 0, '', '2024-04-24 08:14:52'),
(26, '64.227.189.114', 'Arshad', '$2y$10$.OR50hh2mX4jdjmNzDHxP.40cYi2pWuFKrf4i/TDKCtVtbC0oZKl.', 'addam.2290@gmail.com', '00971526459465', NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1713975159, 1714851846, NULL, 1, NULL, 'khaldhiya', 'fixed_amount_per_order_item', 12, 4466.84, NULL, NULL, NULL, NULL, NULL, NULL, '', '3', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MTM5NzU0MTYsImlzcyI6ImVzaG9wIiwiZXhwIjoxNzQ1NTExNDE2LCJ1c2VyX2lkIjoiMjYifQ.cHXjqGYOmYFSvIEsMOBEENhvOZG3agnmC53FfcqG_aI', NULL, NULL, 'dACgTLssSR2CJNzBzBtJwF:APA91bEcMrkoZAukODsqAHxmSB4IgSWuHgKmtVsQhSejMkll9-KNLhp_qlytxZR3uJ204PEjSZk2eXC7xKHZFEPpRuCzLuf81jyF76zX9goSS1hZjZ-9IwWAKBHp_bwWlToylbomjsaA', NULL, NULL, 'phone', 'uploads/delivery_boy/scaled_1000110813.jpg,uploads/delivery_boy/scaled_1000110800.jpg', 1, '', '2024-04-24 16:12:39'),
(33, '86.96.43.191', 'nizar', '$2y$10$XToAsat9ngFaD.b6DSDBr.AN6VFAn2DK5Fjc9HEagfV4Tgj5fz.XK', 'ahamednizar336@gmail.com', '0509871561', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1740480257, NULL, NULL, 1, NULL, 'National pain near by,Muwahila,sharjha,dubai', 'fixed_amount_per_order_item', 25, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 'phone', 'uploads/delivery_boy/Front_and_back2.png,uploads/delivery_boy/uae-driving-licence-hack-12.png', 1, '', '2025-02-25 10:44:17'),
(46, '2.49.1.158', 'Harshini groceries', '$2y$10$UDFe/Urk4xUIp.2HqmGcAuvNXJ9Mhu3EHywhM0Unyk8ubKY/3jnEe', 'harshini@gmail.com', '0551529946', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1742652954, NULL, NULL, 1, NULL, 'Dubai', 'percentage_per_order', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'phone', 'NULL', 0, '', '2025-03-22 14:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(8, 8, 1),
(14, 14, 4),
(15, 15, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 3),
(22, 22, 4),
(23, 23, 3),
(24, 24, 4),
(26, 26, 3),
(33, 33, 3),
(46, 46, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_fcm`
--

DROP TABLE IF EXISTS `user_fcm`;
CREATE TABLE `user_fcm` (
  `id` int(11) NOT NULL,
  `fcm_id` varchar(1024) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

DROP TABLE IF EXISTS `user_permissions`;
CREATE TABLE `user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `permissions` mediumtext DEFAULT NULL,
  `created_by` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `user_id`, `role`, `permissions`, `created_by`) VALUES
(1, 1, 0, NULL, '2021-05-06 04:24:52'),
(2, 8, 1, '{\"orders\":{\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"profile\":{\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"categories\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"brands\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"category_order\":{\"read\":\"on\",\"update\":\"on\"},\"product\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"media\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"product_order\":{\"read\":\"on\",\"update\":\"on\"},\"tax\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"attribute\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"attribute_set\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"attribute_value\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"home_slider_images\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"new_offer_images\":{\"create\":\"on\",\"read\":\"on\",\"delete\":\"on\"},\"promo_code\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"featured_section\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"customers\":{\"read\":\"on\",\"update\":\"on\"},\"return_request\":{\"read\":\"on\",\"update\":\"on\"},\"delivery_boy\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"fund_transfer\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"send_notification\":{\"create\":\"on\",\"read\":\"on\",\"delete\":\"on\"},\"notification_setting\":{\"read\":\"on\",\"update\":\"on\"},\"area\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"city\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"faq\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"zipcodes\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"support_tickets\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"seller\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"shipping_settings\":{\"read\":\"on\",\"update\":\"on\"},\"pickup_location\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"chat\":{\"create\":\"on\",\"read\":\"on\",\"delete\":\"on\"}}', '2024-03-21 07:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

DROP TABLE IF EXISTS `wallet_transactions`;
CREATE TABLE `wallet_transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(8) NOT NULL COMMENT 'credit | debit',
  `amount` double NOT NULL,
  `message` varchar(512) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zipcodes`
--

DROP TABLE IF EXISTS `zipcodes`;
CREATE TABLE `zipcodes` (
  `id` int(11) NOT NULL,
  `zipcode` varchar(512) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `minimum_free_delivery_order_amount` double NOT NULL DEFAULT 0,
  `delivery_charges` double DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zipcodes`
--

INSERT INTO `zipcodes` (`id`, `zipcode`, `city_id`, `minimum_free_delivery_order_amount`, `delivery_charges`, `date_created`) VALUES
(2, '450451', 2, 100, 4, '2024-03-30 11:26:42'),
(3, '629001', 1, 1000, 10, '2024-08-13 15:55:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_set_id` (`attribute_set_id`);

--
-- Indexes for table `attribute_set`
--
ALTER TABLE `attribute_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_variant_id` (`product_variant_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `chat_media`
--
ALTER TABLE `chat_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_api_keys`
--
ALTER TABLE `client_api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_notifications`
--
ALTER TABLE `custom_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_sms`
--
ALTER TABLE `custom_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy_notifications`
--
ALTER TABLE `delivery_boy_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_boy_id` (`delivery_boy_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `digital_orders_mails`
--
ALTER TABLE `digital_orders_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `fund_transfers`
--
ALTER TABLE `fund_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_boy_id` (`delivery_boy_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_bank_transfer`
--
ALTER TABLE `order_bank_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_charges`
--
ALTER TABLE `order_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_variant_id` (`product_variant_id`);

--
-- Indexes for table `order_tracking`
--
ALTER TABLE `order_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_requests`
--
ALTER TABLE `payment_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pickup_locations`
--
ALTER TABLE `pickup_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_faqs`
--
ALTER TABLE `product_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_rating`
--
ALTER TABLE `product_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_requests`
--
ALTER TABLE `return_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_commission`
--
ALTER TABLE `seller_commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_data`
--
ALTER TABLE `seller_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variable` (`variable`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_notification`
--
ALTER TABLE `system_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_types`
--
ALTER TABLE `ticket_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobile` (`mobile`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `user_fcm`
--
ALTER TABLE `user_fcm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `zipcodes`
--
ALTER TABLE `zipcodes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `attribute_set`
--
ALTER TABLE `attribute_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `chat_media`
--
ALTER TABLE `chat_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `client_api_keys`
--
ALTER TABLE `client_api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `custom_notifications`
--
ALTER TABLE `custom_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_sms`
--
ALTER TABLE `custom_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `delivery_boy_notifications`
--
ALTER TABLE `delivery_boy_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `digital_orders_mails`
--
ALTER TABLE `digital_orders_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fund_transfers`
--
ALTER TABLE `fund_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=727;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_bank_transfer`
--
ALTER TABLE `order_bank_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_charges`
--
ALTER TABLE `order_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_tracking`
--
ALTER TABLE `order_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_requests`
--
ALTER TABLE `payment_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_locations`
--
ALTER TABLE `pickup_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `product_faqs`
--
ALTER TABLE `product_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_rating`
--
ALTER TABLE `product_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=662;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `return_requests`
--
ALTER TABLE `return_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seller_commission`
--
ALTER TABLE `seller_commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `seller_data`
--
ALTER TABLE `seller_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `system_notification`
--
ALTER TABLE `system_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_types`
--
ALTER TABLE `ticket_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user_fcm`
--
ALTER TABLE `user_fcm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zipcodes`
--
ALTER TABLE `zipcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
