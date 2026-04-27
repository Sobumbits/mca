-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2026 at 03:26 PM
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
-- Database: `managemart`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) DEFAULT 'India',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `type` enum('home','office','other') DEFAULT 'home',
  `is_default` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `pincode`, `district`, `state`, `country`, `created_at`, `updated_at`, `name`, `phone`, `type`, `is_default`) VALUES
(4, 1, 'nellimattom gh', '686692', 'Plakkad', 'Keralam', 'India', '2026-04-25 05:36:05', '2026-04-25 05:36:05', NULL, NULL, 'home', 0),
(5, 1, 'Vellamkandathil House', '686696', 'Palakkad', 'Kerala', 'India', '2026-04-25 05:50:34', '2026-04-25 05:50:34', NULL, NULL, 'home', 0),
(6, 1, 'Tharappil House', '686693', 'Ernakulam', 'Kerala', 'India', '2026-04-25 05:52:06', '2026-04-25 06:41:39', NULL, NULL, 'home', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', '12345', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `created_at`, `updated_at`) VALUES
(3, 'banners/TjQiSvLHJ4vPhXHJNqDNfyM8cNowNVJ5XjKuMhF1.avif', '2026-03-16 03:45:02', '2026-03-16 03:45:02'),
(4, 'banners/pe5Aro3c5MiQsJI7z5hXVB2AO646jewIIghK4cGO.webp', '2026-03-16 03:45:02', '2026-03-16 03:45:02');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(150) NOT NULL,
  `logo` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'uploads/brand/6a410aL7YgbwSdIb7RRtTsVn4VDKNipDmC9iYw49.webp', '2026-01-03 22:49:43', '2026-03-15 04:54:46'),
(2, 'Lenovo', 'uploads/brand/4HtTt44hpGKsJLZV6OOwn0GSJqRA7Xnr1ym8hr9u.jpg', '2026-03-15 05:01:15', '2026-03-15 05:01:15'),
(3, 'Dell', 'uploads/brand/aVSZsN5SOzINk7sfUcd99iHl33WvJ4eM4df9kBVe.png', '2026-03-15 05:01:34', '2026-03-15 05:01:34'),
(4, 'LG', 'uploads/brand/8KnG0S3A0UhZwOuWAqRf1zu5xhkpDWGOhvRBho7P.svg', '2026-03-15 05:01:46', '2026-03-15 05:01:46'),
(5, 'Boat', 'uploads/brand/F5lo8pjPWv07eHLYvvYWbbKwzrNZpHEYCIVQEE60.webp', '2026-03-15 05:02:19', '2026-03-15 05:02:19'),
(6, 'Asus', 'uploads/brand/HaKlYnfqNDdGnvCQTW0Z0ydSyP0qFYkMqrFTcoQ1.png', '2026-03-15 05:02:31', '2026-03-15 05:02:31'),
(7, 'Usha', 'uploads/brand/5l4zFsDOyQDbIdCQpf2Wa4Hm3Sw8bv9FmXSqcZ3c.png', '2026-03-15 05:02:48', '2026-03-15 05:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Entertainment & Media', '2026-01-03 22:42:32', '2026-03-15 04:50:37'),
(2, 'Cooling & Heating', '2026-01-03 22:42:45', '2026-01-03 22:42:45'),
(5, 'Kitchen', '2026-01-03 22:43:48', '2026-01-03 22:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `discount_type` enum('percentage','fixed') NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `min_order_amount` decimal(10,2) DEFAULT 0.00,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `discount_type`, `discount_value`, `min_order_amount`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '123456', 'percentage', 5.00, 2300.00, '2026-03-25', 0, '2026-03-16 03:54:59', '2026-03-26 05:00:08'),
(2, 'OUSDHFZDLK', 'fixed', 200.00, 2500.00, '2026-03-16', 0, '2026-03-16 06:11:43', '2026-03-17 10:44:04'),
(3, '14568', 'percentage', 10.00, 1200.00, '2026-03-27', 1, '2026-03-26 05:00:53', '2026-03-26 05:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `status` int(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `phone`, `created_at`, `updated_at`, `status`) VALUES
(1, 'sobu yohannan shaji', 'sobu.mbits@gmail.com', 'sobu', '9656428823', '2026-03-15 05:17:58', '2026-03-15 05:17:58', 1),
(2, 'john babu', 'john@gmail.com', 'john', '9638520741', '2026-03-26 04:46:49', '2026-03-26 04:46:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) DEFAULT 0.00,
  `shipping` decimal(10,2) DEFAULT 0.00,
  `grand_total` decimal(10,2) NOT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `address` text DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `delivery_staff_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `assigned_staff_id` bigint(20) DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `payment_status` enum('pending','paid','cancelled','failed','refunded') DEFAULT 'pending',
  `delivery_assign_at` datetime DEFAULT NULL,
  `delivered_time` datetime DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `discount`, `shipping`, `grand_total`, `status`, `address`, `pincode`, `district`, `state`, `country`, `payment_method`, `delivery_staff_id`, `created_at`, `updated_at`, `assigned_staff_id`, `assigned_at`, `payment_status`, `delivery_assign_at`, `delivered_time`, `address_id`) VALUES
(3, 1, 850.00, 0.00, 0.00, 850.00, 'pending', 'nellimattom gh', '686692', 'Plakkad', 'Keralam', 'India', 'online', NULL, '2026-04-25 05:36:05', '2026-04-25 05:36:05', NULL, NULL, 'paid', NULL, NULL, 4),
(4, 1, 850.00, 0.00, 0.00, 850.00, 'pending', 'nellimattom gh', '686692', 'Plakkad', 'Keralam', 'India', 'cod', NULL, '2026-04-25 05:43:52', '2026-04-25 05:43:52', NULL, NULL, 'pending', NULL, NULL, 4),
(5, 1, 29999.00, 0.00, 0.00, 29999.00, 'pending', 'nellimattom gh', '686692', 'Plakkad', 'Keralam', 'India', 'cod', NULL, '2026-04-25 05:44:51', '2026-04-25 05:44:51', NULL, NULL, 'pending', NULL, NULL, 4),
(6, 1, 2400.00, 0.00, 0.00, 2400.00, 'pending', 'Vellamkandathil House', '686696', 'Palakkad', 'Kerala', 'India', 'cod', NULL, '2026-04-25 05:50:34', '2026-04-25 05:50:34', NULL, NULL, 'pending', NULL, NULL, 5),
(7, 1, 980.00, 0.00, 0.00, 980.00, 'pending', 'vewoiidshdzx.', '963852', 'dcgshjk', 'dxjn', 'India', 'cod', NULL, '2026-04-25 05:52:06', '2026-04-25 05:52:06', NULL, NULL, 'pending', NULL, NULL, 6),
(8, 1, 850.00, 0.00, 0.00, 850.00, 'pending', 'Vellamkandathil House', '686696', 'Palakkad', 'Kerala', 'India', 'cod', NULL, '2026-04-25 06:40:52', '2026-04-25 06:40:52', NULL, NULL, 'pending', NULL, NULL, 5),
(9, 1, 980.00, 0.00, 0.00, 980.00, 'pending', 'Tharappil House', '686693', 'Ernakulam', 'Kerala', 'India', 'cod', NULL, '2026-04-25 06:41:39', '2026-04-25 06:41:39', NULL, NULL, 'pending', NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `variant_id`, `name`, `price`, `qty`, `subtotal`, `color`, `size`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, 'Boat 322 Airdopes', 850.00, 1, 850.00, NULL, NULL, '2026-03-24 16:54:19', '2026-03-24 16:54:19'),
(2, 2, 6, NULL, 'Samsung A76', 29999.00, 1, 29999.00, NULL, NULL, '2026-03-26 04:48:12', '2026-03-26 04:48:12'),
(3, 3, 4, NULL, 'Boat 322 Airdopes', 850.00, 1, 850.00, NULL, NULL, '2026-04-25 05:36:05', '2026-04-25 05:36:05'),
(4, 4, 4, NULL, 'Boat 322 Airdopes', 850.00, 1, 850.00, NULL, NULL, '2026-04-25 05:43:52', '2026-04-25 05:43:52'),
(5, 5, 6, NULL, 'Samsung A76', 29999.00, 1, 29999.00, NULL, NULL, '2026-04-25 05:44:51', '2026-04-25 05:44:51'),
(6, 6, 2, NULL, 'Lenovo 32 inch TV', 2400.00, 1, 2400.00, NULL, NULL, '2026-04-25 05:50:34', '2026-04-25 05:50:34'),
(7, 7, 3, NULL, 'S24 headphone', 980.00, 1, 980.00, NULL, NULL, '2026-04-25 05:52:06', '2026-04-25 05:52:06'),
(8, 8, 4, NULL, 'Boat 322 Airdopes', 850.00, 1, 850.00, NULL, NULL, '2026-04-25 06:40:52', '2026-04-25 06:40:52'),
(9, 9, 3, NULL, 'S24 headphone', 980.00, 1, 980.00, NULL, NULL, '2026-04-25 06:41:39', '2026-04-25 06:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `images` text DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `price` decimal(10,2) NOT NULL,
  `offer_price` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `return_opt` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `brand_id`, `category_id`, `subcategory_id`, `images`, `qty`, `price`, `offer_price`, `status`, `return_opt`, `created_at`, `updated_at`) VALUES
(1, 'Samsung 32 inch TV', 'A Samsung TV is a range of high-quality television sets made by Samsung, one of the world’s leading TV makers. Samsung offers models across various technologies — from HD LED TVs to 4K and 8K QLED and OLED TVs — suitable for every budget and use case.', 1, 1, 9, 'products/9fDF5SpyR7wCPO0UO3SuRMxOcpCdcFPn1yBdeTPH.jpg|products/e92pPA6SW5TEZPN9pzFrBX99EiZmtGRR16sndR7z.jpg|products/EtM0qdVYQZECincXAy5ZZGj6VHY8E9dn0iDyp6vU.jpg', 17, 20000.00, 18900.00, 1, 1, '2026-01-03 22:52:01', '2026-03-23 10:01:00'),
(2, 'Lenovo 32 inch TV', 'Upgrade your home entertainment with this high-quality television designed to deliver stunning visuals and immersive sound. With a crystal-clear display and vibrant colors, this TV provides an exceptional viewing experience for movies, sports, and your favorite shows.\r\n\r\nThe sleek and modern design fits perfectly in any living room or bedroom, adding a stylish touch to your space. Equipped with advanced display technology, the TV offers sharp picture quality, enhanced brightness, and smooth motion for a more realistic viewing experience.\r\n\r\nEnjoy easy connectivity with multiple ports that allow you to connect gaming consoles, streaming devices, sound systems, and USB drives. The powerful built-in speakers provide clear and balanced audio, making every scene more engaging.\r\n\r\nWhether you\'re watching movies, streaming content, or gaming, this TV delivers reliable performance and entertainment for the whole family.\r\n\r\nKey Features\r\n\r\nHigh-definition display for clear and vibrant visuals\r\n\r\nWide viewing angle for better screen visibility\r\n\r\nPowerful built-in speakers for immersive sound\r\n\r\nMultiple connectivity options (HDMI, USB, etc.)\r\n\r\nSleek and modern design\r\n\r\nEnergy-efficient performance\r\n\r\nIdeal for home entertainment, gaming, and streaming', 2, 1, 9, 'products/PnguvdpeZKTkcd2nD0kh4MrKM5kUMaWLyAYyGL1t.jpg', 16, 2500.00, 2400.00, 1, 1, '2026-02-06 01:33:28', '2026-04-25 05:50:34'),
(3, 'S24 headphone', 'Enjoy crystal-clear sound and deep bass with these premium headphones designed for music lovers. Built with advanced audio technology, they deliver immersive sound quality whether you are listening to music, watching movies, or taking calls.\r\n\r\nThe lightweight and ergonomic design ensures long-lasting comfort, making them perfect for daily use, travel, gaming, and work. With soft cushioned ear pads and an adjustable headband, you can enjoy hours of listening without discomfort.\r\n\r\nThese headphones feature powerful drivers that provide rich bass, balanced mids, and clear highs for a superior audio experience. The durable build and stylish design make them both reliable and fashionable.\r\n\r\nKey Features\r\n\r\n🎵 High-definition sound with deep bass\r\n\r\n🔊 Noise isolation for better listening experience\r\n\r\n🎧 Soft cushioned ear pads for all-day comfort\r\n\r\n🔋 Long battery life (for wireless models)\r\n\r\n📱 Compatible with smartphones, laptops, tablets, and more\r\n\r\n🎮 Ideal for music, gaming, movies, and calls\r\n\r\nUpgrade your listening experience with headphones that combine comfort, style, and powerful sound performance.', 1, 1, 14, 'products/eKjFgEmh5qlajGIyVLmJPvD1WoW4EPHZ2HdgKd2a.jpg', 15, 1000.00, 980.00, 1, 1, '2026-03-15 04:57:12', '2026-04-25 06:41:39'),
(4, 'Boat 322 Airdopes', 'Experience crystal-clear sound and ultimate comfort with our premium EarPods. Designed for everyday use, these lightweight earphones deliver high-quality audio with deep bass and clear treble, making them perfect for music, calls, and entertainment.\r\n\r\nThe ergonomic design ensures a secure and comfortable fit, even during long listening sessions. Equipped with a built-in microphone and easy-to-use controls, you can take calls, adjust volume, and control music effortlessly.\r\n\r\nWhether you\'re working, traveling, or relaxing, these EarPods provide a seamless audio experience with reliable performance and stylish design.', 5, 1, 16, 'products/fl9V8GMlHz3ROwnbMaXksAb86V0fcLesr2UD4de7.webp', 1, 1000.00, 850.00, 1, 1, '2026-03-21 13:58:59', '2026-04-25 06:40:52'),
(5, 'Dell A56 Laptop', 'Experience crystal-clear sound and ultimate comfort with our premium EarPods. Designed for everyday use, these lightweight earphones deliver high-quality audio with deep bass and clear treble, making them perfect for music, calls, and entertainment.\r\n\r\nThe ergonomic design ensures a secure and comfortable fit, even during long listening sessions. Equipped with a built-in microphone and easy-to-use controls, you can take calls, adjust volume, and control music effortlessly.\r\n\r\nWhether you\'re working, traveling, or relaxing, these EarPods provide a seamless audio experience with reliable performance and stylish design.', 3, 1, 19, 'products/cJ2ksAWmiV2KyosyGzMqIErI7k23RNOojEGbEDv5.avif', 0, 60000.00, 59000.00, 0, 1, '2026-03-21 14:01:12', '2026-03-23 04:05:41'),
(6, 'Samsung A76', 'Experience powerful performance and seamless multitasking with this high-quality laptop, designed for both work and entertainment. Equipped with a fast processor, ample storage, and a vibrant display, this laptop ensures smooth operation whether you\'re browsing, streaming, coding, or working on demanding tasks.\r\n\r\nThe sleek and lightweight design makes it easy to carry, while the long-lasting battery keeps you productive throughout the day. With advanced connectivity options and enhanced security features, this laptop delivers reliability, speed, and convenience in one device.\r\n\r\nPerfect for students, professionals, and everyday users, it combines performance and portability to meet all your computing needs.', 1, 1, 21, 'products/JcMTqijuSk2XNLaBWhXLhpUUzbYMN25Cejcex8QG.avif', 17, 30000.00, 29999.00, 1, 1, '2026-03-21 14:03:33', '2026-04-25 05:44:51'),
(7, 'Usha Water Heater', 'A water heater is a domestic or commercial appliance that heats water for bathing, cleaning, and cooking, utilizing electricity, natural gas, propane, or solar energy. They are typically categorized into storage tanks (which keep water hot in a reservoir) or tankless (on-demand) models. These units include safety features like temperature/pressure relief valves and thermostats to maintain water temperature.', 7, 5, 5, 'products/jsSsHtEa7SGrypMfKWy2P8p7mgy7PTY28FQWSG78.webp', 10, 15000.00, 14000.00, 1, 1, '2026-03-21 14:16:09', '2026-03-21 14:16:09'),
(8, 'Samsung Water Heater', 'A water heater is a domestic or commercial appliance that heats water for bathing, cleaning, and cooking, utilizing electricity, natural gas, propane, or solar energy. They are typically categorized into storage tanks (which keep water hot in a reservoir) or tankless (on-demand) models. These units include safety features like temperature/pressure relief valves and thermostats to maintain water temperature', 1, 5, 5, 'products/M2qTEO3LVnee23iL4GruO9PvFCxDIEfcFVdSAJzg.jpg', 3, 16000.00, 15600.00, 1, 1, '2026-03-21 14:16:48', '2026-03-21 14:16:48'),
(9, 'Samsung Oven', 'An oven is an enclosed, heated compartment used for cooking, baking, or roasting food, often forming part of a stove or built into a kitchen wall. It acts as a chamber that uses dry heat to cook food. Synonyms for oven include cooker, kiln, furnace, and stove, with various types including conventional, convection, and microwave ovens.', 1, 5, 3, 'products/nFn3ecJTv9G5y5fWNq8wYwrfywvxk5LboJ0tDimZ.avif', 5, 5000.00, 4999.00, 1, 1, '2026-03-21 14:18:03', '2026-03-21 14:18:03'),
(10, 'Samsung', 'A dishwasher is a household appliance that automates the cleaning and sanitizing of dishes, utensils, and glassware using high-pressure hot water, detergent, and spray arms. It sanitizes better than handwashing by operating at high temperatures, often with specialized cycles for heavy cleaning or drying, saving time and energy compared to manual cleaning.', 1, 5, 4, 'products/sEPKxyG0W7Mn5yq9JCKO6NjboE5SOPU2NGOVfkfi.jpg|products/onTsZOVjMgIVm8WGLvia2M3pHjCVk8chPtuU4MGC.jpg', 5, 20000.00, 19900.00, 1, 1, '2026-03-21 14:19:43', '2026-03-21 14:19:43'),
(11, 'Usha Oven', 'An oven is an enclosed, heated compartment used for cooking, baking, or roasting food, often forming part of a stove or built into a kitchen wall. It acts as a chamber that uses dry heat to cook food. Synonyms for oven include cooker, kiln, furnace, and stove, with various types including conventional, convection, and microwave ovens.', 7, 5, 3, 'products/atb1aNyjaNt5P81IuK57j00PXm6pd6gjqgd9O9Cg.jpg', 5, 4000.00, 3999.00, 1, 1, '2026-03-21 14:23:27', '2026-03-21 14:23:27'),
(12, 'Usha Wall Fan', 'A fan is a machine that creates airflow by rotating blades or paddles driven by an electric motor, used for cooling, ventilation, or conveying gases. It works by drawing in air on the suction side and discharging it on the pressure side, with key types including axial fans (high airflow) and centrifugal blowers (high pressure).', 7, 2, 8, 'products/UnnrnG263VKUEwOWtet6wppaPSeyD3aTz41ZkNyS.jpg', 3, 1500.00, 1499.00, 1, 1, '2026-03-21 14:36:28', '2026-03-21 14:36:28'),
(13, 'Usha Ceiling Fan', 'A fan is a machine that creates airflow by rotating blades or paddles driven by an electric motor, used for cooling, ventilation, or conveying gases. It works by drawing in air on the suction side and discharging it on the pressure side, with key types including axial fans (high airflow) and centrifugal blowers (high pressure).', 7, 2, 8, 'products/8qyC49T0UAJ4zwdVaJwj0OEui9ilBGgM6Q38CUWY.webp', 10, 2000.00, 1900.00, 1, 1, '2026-03-21 14:37:04', '2026-03-21 14:37:04'),
(14, 'Usha Table Fan', 'A fan is a machine that creates airflow by rotating blades or paddles driven by an electric motor, used for cooling, ventilation, or conveying gases. It works by drawing in air on the suction side and discharging it on the pressure side, with key types including axial fans (high airflow) and centrifugal blowers (high pressure).', 7, 2, 8, 'products/r241Z2PXXzGGRfywCcf2SG0ZQ7Wi2oVrlYXyjcRE.webp', 15, 1500.00, 1399.00, 1, 1, '2026-03-21 14:37:39', '2026-03-21 14:37:39'),
(15, 'Samsung AC', 'An air conditioner is a system designed to improve indoor comfort by controlling air temperature, humidity, and purity, primarily through cooling. Using a vapor-compression cycle, it removes indoor heat and transfers it outdoors, simultaneously reducing moisture. Modern units often feature heating modes (heat pumps) and enhanced efficiency.', 1, 2, 7, 'products/QQFBi3S46371goTyT1ek9yuLy6jRRfTVc9jFvsAS.jpg', 10, 35000.00, 34000.00, 1, 1, '2026-03-21 14:38:36', '2026-03-21 14:38:36'),
(16, 'LG AC', 'An air conditioner is a system designed to improve indoor comfort by controlling air temperature, humidity, and purity, primarily through cooling. Using a vapor-compression cycle, it removes indoor heat and transfers it outdoors, simultaneously reducing moisture. Modern units often feature heating modes (heat pumps) and enhanced efficiency.', 4, 2, 7, 'products/uFZsU8AC14l9HTq3OqTSHnS9OxbuYnSSS7EXlvOi.avif', 10, 30000.00, 29000.00, 1, 1, '2026-03-21 14:39:09', '2026-03-23 04:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `return_requests`
--

CREATE TABLE `return_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `reason` text NOT NULL,
  `resolution` varchar(50) DEFAULT 'replacement',
  `image` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','pickup_scheduled','picked_up','replacement_delivered','rejected','delivered_to_manager') DEFAULT 'pending',
  `pickup_date` date DEFAULT NULL,
  `assigned_staff_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL CHECK (`rating` between 1 and 5),
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(2, 3, 1, 4, 'super', '2026-03-16 09:08:57', '2026-03-17 18:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `created_at`, `updated_at`) VALUES
(3, 'Order  & Product Manager', '2026-01-03 22:54:59', '2026-03-16 17:35:42'),
(4, 'Technician', '2026-01-03 22:55:07', '2026-01-03 22:55:07'),
(5, 'Delivery', '2026-03-14 06:34:45', '2026-03-14 06:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `technician_id` bigint(20) UNSIGNED DEFAULT NULL,
  `equipment` varchar(150) NOT NULL,
  `issue` text NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pickup_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  `repair_notes` text DEFAULT NULL,
  `repair_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `inspection_result` varchar(50) DEFAULT NULL,
  `repair_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `technician_id`, `equipment`, `issue`, `address`, `phone`, `pickup_date`, `status`, `repair_notes`, `repair_price`, `created_at`, `updated_at`, `inspection_result`, `repair_type`) VALUES
(1, 1, 5, 'Laptop', 'Display', 'Vellamkandathil House\r\nNellimattom p.O', '9656428823', '2026-03-26', 'cancelled', NULL, NULL, '2026-03-26 04:19:23', '2026-03-26 04:21:35', NULL, NULL),
(2, 1, NULL, 'Washing Machine', 'Not working', 'vellamkandathil house', '9656428223', '2026-03-27', 'pending', NULL, NULL, '2026-03-26 04:54:51', '2026-03-26 04:54:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('LKPB8VkGvwhzk02a4guqTLUtWZ2rn5yTIoy0wjfd', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQm1ocGdlZXlvZk9PNFRnMHhTeElDR1Q5VTlBcElYbUVrcXluZlhxaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvbWFuYWdlbWFydC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJjYXJ0IjthOjE6e2k6MTthOjU6e3M6MjoiaWQiO3M6MToiMSI7czo0OiJuYW1lIjtzOjE4OiJTYW1zdW5nIDMyIGluY2ggVFYiO3M6NToicHJpY2UiO3M6ODoiMTg5MDAuMDAiO3M6NToiaW1hZ2UiO3M6MTAwOiJodHRwOi8vbG9jYWxob3N0L21hbmFnZW1hcnQvc3RvcmFnZS9hcHAvcHVibGljL3Byb2R1Y3RzLzlmREY1U3B5Ujd3Q1BPMFVPM1N1Uk14T2NwQ2RjRlBuMXlCZGVUUEguanBnIjtzOjM6InF0eSI7aToxO319fQ==', 1777099421);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `role` varchar(100) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `state` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(50) DEFAULT NULL,
  `ifsc` varchar(20) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `aadhaar` varchar(20) DEFAULT NULL,
  `id_proof` varchar(255) DEFAULT NULL,
  `bank_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `email`, `phone`, `role`, `salary`, `state`, `district`, `place`, `password`, `created_at`, `updated_at`, `account_name`, `account_number`, `ifsc`, `profile_image`, `aadhaar`, `id_proof`, `bank_name`) VALUES
(1, 'Sobu Yohannan Shaji', 'sobu003@gmail.com', '9656428823', '3', 20000.00, 'Kerala', 'Ernakulam', 'Nellimattom', '1234', '2026-01-03 23:11:19', '2026-03-17 12:26:13', 'sobu yohannan shaji', '32145698720', 'SBID0008656', 'staff/profile/BvRH2R1lWjiVFGr18tOZc38meNqrDgu80DRT1HUK.png', '442466758817', 'staff/id/dpRYk4IkZXlMeg1C7EdutFmXuyA4iipZp7ZIvRbp.jpg', 'SBI'),
(2, 'Ajin Biju', 'ajin@gmail.com', '9685207410', '5', 20000.00, 'kerala', 'Ernakulm', 'Kadavanthra', '123', '2026-02-22 22:21:36', '2026-03-17 12:04:35', 'Sobu', '33158367668', 'SBIN0008656', 'staff/profile/52BmhV1SecRPoP5NrOs4XOF3z5KMsROntZJsewFO.jpg', '442466758814', 'staff/id/rhSSQ2ndlYO1KKGlu8b6ggfXn1QVajniKVE0kF04.png', 'FBI'),
(5, 'Ignatious Alias', 'ig@gmail.com', '9637418520', '4', 20000.00, 'Kerala', 'Ernakulam', 'Muvattupuzha', '12345', '2026-03-14 07:24:03', '2026-03-17 12:10:42', 'Sobu', '33158366667', 'SBIN0008656', NULL, '442466758820', NULL, 'SBI');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `subcategory` varchar(150) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategory`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'Microwave Oven', 5, '2026-01-03 22:45:54', '2026-01-03 22:45:54'),
(4, 'Dishwasher', 5, '2026-01-03 22:46:08', '2026-01-03 22:46:08'),
(5, 'Water Heater', 5, '2026-01-03 22:46:23', '2026-01-03 22:46:23'),
(6, 'Vaccum Cleaner', 4, '2026-01-03 22:46:43', '2026-01-03 22:46:43'),
(7, 'AC', 2, '2026-01-03 22:46:56', '2026-01-03 22:46:56'),
(8, 'Fan', 2, '2026-01-03 22:47:08', '2026-03-21 14:25:56'),
(9, 'TV', 1, '2026-01-03 22:47:17', '2026-01-03 22:47:17'),
(14, 'Headphones', 1, '2026-03-15 04:50:13', '2026-03-15 04:50:27'),
(16, 'Airdopes', 1, '2026-03-15 05:05:50', '2026-03-21 13:59:27'),
(19, 'Laptop', 1, '2026-03-15 05:07:38', '2026-03-15 05:07:38'),
(21, 'Mobile', 1, '2026-03-15 05:07:38', '2026-03-15 05:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_wishlist`
--

CREATE TABLE `user_wishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_wishlist`
--

INSERT INTO `user_wishlist` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(4, 1, 6, '2026-03-26 04:58:27', '2026-03-26 04:58:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_requests`
--
ALTER TABLE `return_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wishlist`
--
ALTER TABLE `user_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `return_requests`
--
ALTER TABLE `return_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_wishlist`
--
ALTER TABLE `user_wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
