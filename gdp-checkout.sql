-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2017 at 04:02 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gdp-checkout`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `contact`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Alice', 'alice@gmail.com', '0123456999', 'A-1655, Jalan Haji Ahmad 22, 25300 Kuantan, Pahang', '2017-06-19 01:01:25', '2017-06-19 01:01:25'),
(2, 'Unilever', 'unilever@gmail.com', '0123456888', 'Level 34, Menara Telekom, Jalan Pantai Baru, 59200 Kuala Lumpur', '2017-06-19 01:01:25', '2017-06-19 01:01:25'),
(3, 'Apple', 'apple@gmail.com', '0123456777', 'Level 16, Block B, Northpoint Office, Medan Syed Putra Utara  59200, Kuala Lumpur', '2017-06-19 01:01:25', '2017-06-19 01:01:25'),
(4, 'Nike', 'nike@gmail.com', '0123456666', 'Unit 10-1 & 10-2, Level 10 Menara OBYU, No 4, Jalan PJU 8/8, Damansara Perdana, 47820 Petaling Jaya, Selangor', '2017-06-19 01:01:25', '2017-06-19 01:01:25'),
(5, 'Ford', 'ford@gmail.com', '0123456555', '1, Jalan Sesiku, Section 15/2, Shah Alam, 40000, Shah Alam, Selangor, Malaysia, 40000 Shah Alam', '2017-06-19 01:01:25', '2017-06-19 01:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_ID` int(10) UNSIGNED NOT NULL,
  `customer` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SKU` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `order_ID`, `customer`, `customer_name`, `SKU`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Alice', '1', '2017-06-20 23:13:09', '2017-06-20 23:13:09'),
(2, 2, 1, 'Alice', '2', '2017-06-20 23:13:09', '2017-06-20 23:13:09'),
(3, 2, 1, 'Alice', '3', '2017-06-20 23:13:09', '2017-06-20 23:13:09'),
(4, 3, 2, 'Unilever', '1', '2017-06-20 23:14:51', '2017-06-20 23:14:51'),
(5, 3, 2, 'Unilever', '1', '2017-06-20 23:14:51', '2017-06-20 23:14:51'),
(6, 3, 2, 'Unilever', '1', '2017-06-20 23:14:51', '2017-06-20 23:14:51'),
(7, 3, 2, 'Unilever', '3', '2017-06-20 23:14:51', '2017-06-20 23:14:51'),
(8, 4, 3, 'Apple', '2', '2017-06-20 23:15:28', '2017-06-20 23:15:28'),
(9, 4, 3, 'Apple', '2', '2017-06-20 23:15:28', '2017-06-20 23:15:28'),
(10, 4, 3, 'Apple', '2', '2017-06-20 23:15:28', '2017-06-20 23:15:28'),
(11, 4, 3, 'Apple', '3', '2017-06-20 23:15:28', '2017-06-20 23:15:28'),
(12, 5, 4, 'Nike', '3', '2017-06-20 23:15:48', '2017-06-20 23:15:48'),
(13, 5, 4, 'Nike', '3', '2017-06-20 23:15:48', '2017-06-20 23:15:48'),
(14, 5, 4, 'Nike', '3', '2017-06-20 23:15:48', '2017-06-20 23:15:48'),
(15, 5, 4, 'Nike', '3', '2017-06-20 23:15:48', '2017-06-20 23:15:48'),
(16, 6, 5, 'Ford', '1', '2017-06-20 23:16:21', '2017-06-20 23:16:21'),
(17, 6, 5, 'Ford', '1', '2017-06-20 23:16:21', '2017-06-20 23:16:21'),
(18, 6, 5, 'Ford', '1', '2017-06-20 23:16:21', '2017-06-20 23:16:21'),
(19, 6, 5, 'Ford', '1', '2017-06-20 23:16:21', '2017-06-20 23:16:21'),
(20, 6, 5, 'Ford', '1', '2017-06-20 23:16:21', '2017-06-20 23:16:21'),
(21, 6, 5, 'Ford', '2', '2017-06-20 23:16:21', '2017-06-20 23:16:21'),
(22, 6, 5, 'Ford', '3', '2017-06-20 23:16:21', '2017-06-20 23:16:21'),
(23, 6, 5, 'Ford', '3', '2017-06-20 23:16:21', '2017-06-20 23:16:21'),
(24, 6, 5, 'Ford', '3', '2017-06-20 23:16:21', '2017-06-20 23:16:21'),
(42, 14, 3, 'Apple', '2', '2017-06-21 02:16:34', '2017-06-21 02:16:34'),
(43, 14, 3, 'Apple', '2', '2017-06-21 02:16:34', '2017-06-21 02:16:34'),
(44, 14, 3, 'Apple', '2', '2017-06-21 02:16:34', '2017-06-21 02:16:34'),
(45, 14, 3, 'Apple', '3', '2017-06-21 02:16:34', '2017-06-21 02:16:34'),
(46, 15, 2, 'Unilever', '1', '2017-06-21 02:19:42', '2017-06-21 02:19:42'),
(47, 15, 2, 'Unilever', '1', '2017-06-21 02:19:42', '2017-06-21 02:19:42'),
(48, 15, 2, 'Unilever', '1', '2017-06-21 02:19:42', '2017-06-21 02:19:42'),
(49, 15, 2, 'Unilever', '3', '2017-06-21 02:19:42', '2017-06-21 02:19:42'),
(50, 16, 1, 'Alice', '1', '2017-06-21 08:47:44', '2017-06-21 08:47:44'),
(51, 16, 1, 'Alice', '2', '2017-06-21 08:47:44', '2017-06-21 08:47:44'),
(52, 16, 1, 'Alice', '3', '2017-06-21 08:47:44', '2017-06-21 08:47:44'),
(53, 17, 4, 'Nike', '3', '2017-06-21 08:52:14', '2017-06-21 08:52:14'),
(54, 17, 4, 'Nike', '3', '2017-06-21 08:52:15', '2017-06-21 08:52:15'),
(55, 17, 4, 'Nike', '3', '2017-06-21 08:52:15', '2017-06-21 08:52:15'),
(56, 17, 4, 'Nike', '3', '2017-06-21 08:52:15', '2017-06-21 08:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2017_06_19_084055_create_customer_table', 1),
('2017_06_19_090658_create_order_table', 2),
('2017_06_19_091559_create_product_table', 2),
('2017_06_20_060715_create_customer_order_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `customer`, `customer_name`, `total`, `created_at`, `updated_at`) VALUES
(2, 1, 'Alice', '987.97', '2017-06-20 23:13:09', '2017-06-20 23:13:09'),
(3, 2, 'Unilever', '934.97', '2017-06-20 23:14:51', '2017-06-20 23:14:51'),
(4, 3, 'Apple', '1294.96', '2017-06-20 23:15:28', '2017-06-20 23:15:28'),
(5, 4, 'Nike', '1519.96', '2017-06-20 23:15:48', '2017-06-20 23:15:48'),
(6, 5, 'Ford', '2559.92', '2017-06-20 23:16:21', '2017-06-20 23:16:21'),
(14, 3, 'Apple', '1294.96', '2017-06-21 02:16:33', '2017-06-21 02:16:33'),
(15, 2, 'Unilever', '934.97', '2017-06-21 02:19:42', '2017-06-21 02:19:42'),
(16, 1, 'Alice', '987.97', '2017-06-21 08:47:44', '2017-06-21 08:47:44'),
(17, 4, 'Nike', '1519.96', '2017-06-21 08:52:14', '2017-06-21 08:52:14');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_price` decimal(5,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pro_ID`, `pro_name`, `pro_price`, `created_at`, `updated_at`) VALUES
(1, 'classic', 'Classic Ad', '269.99', '2017-06-19 22:15:12', '2017-06-19 22:15:12'),
(2, 'standout', 'Standout Ad', '322.99', '2017-06-19 22:15:12', '2017-06-19 22:15:12'),
(3, 'premium', 'Premium Ad', '394.99', '2017-06-19 22:15:12', '2017-06-19 22:15:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_name_unique` (`name`),
  ADD UNIQUE KEY `customer_email_unique` (`email`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_order_order_id_index` (`order_ID`),
  ADD KEY `customer_order_customer_index` (`customer`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_customer_index` (`customer`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `customer_order_customer_foreign` FOREIGN KEY (`customer`) REFERENCES `customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_order_order_id_foreign` FOREIGN KEY (`order_ID`) REFERENCES `order` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_customer_foreign` FOREIGN KEY (`customer`) REFERENCES `customer` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
