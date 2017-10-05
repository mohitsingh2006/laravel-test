-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2017 at 03:53 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_09_29_055736_create_note_table', 2),
('2017_09_29_091429_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `company`, `age`, `productId`, `address`, `mobile`, `email`, `height`, `weight`, `created_at`, `updated_at`) VALUES
(1, 'Mark', '', 0, 0, '', '', 'mark@gmail.com', 0, 0, '2017-09-29 04:41:59', '2017-09-29 04:41:59'),
(3, 'Kevin', '', 0, 0, '', '', 'kevin@gmail.com', 0, 0, '2017-09-29 04:45:47', '2017-09-29 04:45:47'),
(4, 'Jack', '', 0, 0, '', '', 'jack@gmail.com', 0, 0, '2017-09-29 04:48:46', '2017-09-29 04:48:46'),
(5, 'Rock', '', 0, 0, '', '', 'rock@gmail.com', 0, 0, '2017-09-29 04:49:49', '2017-09-29 04:49:49'),
(6, 'Charls', '', 0, 0, '', '', 'charls@gmail.com', 0, 0, '2017-09-29 04:50:01', '2017-09-29 04:50:01'),
(7, 'Test', '', 0, 0, '', '', 'test@test.com', 0, 0, '2017-09-29 07:56:02', '2017-09-29 07:56:02'),
(8, 'Test', '', 0, 0, '', '', 'test@test.com', 0, 0, '2017-09-29 07:57:44', '2017-09-29 07:57:44'),
(9, 'Test', '', 0, 0, '', '', 'test@test.com', 0, 0, '2017-09-29 07:57:50', '2017-09-29 07:57:50'),
(10, 'Test', '', 0, 0, '', '', 'test@test.com', 0, 0, '2017-09-29 08:04:25', '2017-09-29 08:04:25'),
(11, 'Test', '', 0, 0, '', '', 'test@test.com', 0, 0, '2017-09-29 08:05:16', '2017-09-29 08:05:16'),
(12, '2Test', '', 0, 0, '', '', 'test@test.com', 0, 0, '2017-09-29 08:06:34', '2017-09-29 08:06:34'),
(13, '2Test', '', 0, 0, '', '', 'test@test.com', 0, 0, '2017-09-29 08:07:41', '2017-09-29 08:07:41'),
(14, '2Test', '', 0, 0, '', '', 'test@test.com', 0, 0, '2017-09-29 08:07:58', '2017-09-29 08:07:58'),
(15, '2Test', '', 0, 0, '', '', 'test@test.com', 0, 0, '2017-09-29 08:08:06', '2017-09-29 08:08:06'),
(16, '2Test', '', 0, 0, '', '', 'test@test.com', 0, 0, '2017-09-29 08:10:14', '2017-09-29 08:10:14'),
(17, '2Test', NULL, NULL, 45, 'dummy address', NULL, 'test@test.com', 123.2, 123.22, '2017-09-29 08:16:25', '2017-09-29 08:16:25'),
(18, '2Test', NULL, NULL, 45, 'dummy address', NULL, 'test@test.com', 123.2, 123.22, '2017-09-29 08:16:44', '2017-09-29 08:16:44'),
(19, '2Test', 'HCL', NULL, 45, 'dummy address', NULL, 'test@test.com', 123.2, 123.22, '2017-09-29 08:17:36', '2017-09-29 08:17:36'),
(20, '2Test', 'HCL', 22, 45, 'dummy address', NULL, 'test@test.com', 123.2, 123.22, '2017-09-29 08:17:57', '2017-09-29 08:17:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `api_token` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohit Singh', 'mohitsingh2006@gmail.com', '$2y$10$5kmo6JzFWLD4FAB9Y/TKTerNw8F.2XGzg1enLvqt3ny0yp4HlSxUa', 'Htp94U1uB6tZoXJ5OKPDT9xJIs2noDYXug1Utr3joUS30Oh3TD5ndJqLF6Fl', 'LIEfLC0jVBlv4BmaK6lxTbWBlTFLeRGRb6Ji97U3fLIqx7RBrE2z6GpSbxye', '2017-09-29 00:22:51', '2017-09-29 01:06:29');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
