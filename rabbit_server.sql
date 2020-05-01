-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2020 at 09:32 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rabbit_server`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_05_01_092606_create_upload_files', 1);

-- --------------------------------------------------------

--
-- Table structure for table `upload_files`
--

CREATE TABLE `upload_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesrc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upload_files`
--

INSERT INTO `upload_files` (`id`, `name`, `filesrc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Test File Name', 'testdoc.pdf', '2020-05-01 10:36:57', '2020-05-01 10:52:12', '2020-05-01 10:52:12'),
(3, 'Test File Name', 'doc_1588329725pdf', '2020-05-01 10:42:06', '2020-05-01 15:46:09', '2020-05-01 15:46:09'),
(4, 'Test File Name', 'doc_1588331303pdf', '2020-05-01 11:08:23', '2020-05-01 15:46:09', '2020-05-01 15:46:09'),
(5, 'Test File Name', 'doc_1588331305pdf', '2020-05-01 11:08:25', '2020-05-01 15:46:08', '2020-05-01 15:46:08'),
(6, 'Test File Name', 'doc_1588331306pdf', '2020-05-01 11:08:26', '2020-05-01 15:46:08', '2020-05-01 15:46:08'),
(7, 'Test File Name', 'doc_1588331308pdf', '2020-05-01 11:08:28', '2020-05-01 15:46:08', '2020-05-01 15:46:08'),
(8, 'Test File Name', 'doc_1588331309pdf', '2020-05-01 11:08:29', '2020-05-01 15:46:08', '2020-05-01 15:46:08'),
(9, 'Test File Name', 'doc_1588331310pdf', '2020-05-01 11:08:30', '2020-05-01 15:46:07', '2020-05-01 15:46:07'),
(10, 'Test File Name', 'doc_1588331312pdf', '2020-05-01 11:08:32', '2020-05-01 15:46:06', '2020-05-01 15:46:06'),
(11, 'Test File Name', 'doc_1588331313pdf', '2020-05-01 11:08:33', '2020-05-01 15:46:04', '2020-05-01 15:46:04'),
(12, 'Test File Name', 'doc_1588331314pdf', '2020-05-01 11:08:34', '2020-05-01 15:46:04', '2020-05-01 15:46:04'),
(13, 'Test File Name', 'doc_1588331315pdf', '2020-05-01 11:08:35', '2020-05-01 15:46:04', '2020-05-01 15:46:04'),
(14, 'Test File Name', 'doc_1588332544.pdf', '2020-05-01 11:29:04', '2020-05-01 15:46:03', '2020-05-01 15:46:03'),
(15, 'Set net ondfon  pdfdf', 'doc_1588340138.pdf', '2020-05-01 13:35:39', '2020-05-01 15:46:03', '2020-05-01 15:46:03'),
(16, 'Set net ondfon  pdfdf', 'doc_1588340139.pdf', '2020-05-01 13:35:39', '2020-05-01 15:46:03', '2020-05-01 15:46:03'),
(17, 'Set net ondfon  pdfdf', 'doc_1588340140.pdf', '2020-05-01 13:35:40', '2020-05-01 15:46:02', '2020-05-01 15:46:02'),
(18, 'sdfsdfsdfdsfsd', 'doc_1588340362.pdf', '2020-05-01 13:39:22', '2020-05-01 15:46:02', '2020-05-01 15:46:02'),
(19, 'sdsdsdsdsd', 'doc_1588340383.pdf', '2020-05-01 13:39:43', '2020-05-01 14:29:56', '2020-05-01 14:29:56'),
(20, 'Set net ondfon  pdfdf', 'doc_1588342761.png', '2020-05-01 14:19:21', '2020-05-01 14:30:07', '2020-05-01 14:30:07'),
(21, 'Set net ondfon  pdfdf', 'doc_1588342894.pdf', '2020-05-01 14:21:34', '2020-05-01 15:46:01', '2020-05-01 15:46:01'),
(22, 'Set net ondfon  pdfdf', 'doc_1588342944.pdf', '2020-05-01 14:22:24', '2020-05-01 14:29:50', '2020-05-01 14:29:50'),
(23, 'HERERE', 'doc_1588342987.pdf', '2020-05-01 14:23:07', '2020-05-01 14:29:46', '2020-05-01 14:29:46'),
(24, 'Testing New File', 'doc_1588348322.pdf', '2020-05-01 15:52:02', '2020-05-01 15:52:02', NULL),
(25, 'TTERERERE', 'doc_1588348334.pdf', '2020-05-01 15:52:14', '2020-05-01 15:52:14', NULL),
(26, 'YYYYYYYY', 'doc_1588348350.pdf', '2020-05-01 15:52:30', '2020-05-01 15:52:30', NULL),
(27, 'ererererer', 'doc_1588348360.pdf', '2020-05-01 15:52:40', '2020-05-01 15:52:40', NULL),
(28, 'esfferere', 'doc_1588348369.pdf', '2020-05-01 15:52:49', '2020-05-01 15:52:49', NULL),
(29, 'dwrwerewrew', 'doc_1588348377.pdf', '2020-05-01 15:52:57', '2020-05-01 15:52:57', NULL),
(30, 'sdsdsdsd', 'doc_1588348384.pdf', '2020-05-01 15:53:04', '2020-05-01 15:53:04', NULL),
(31, 'sdfdsfsf', 'doc_1588348394.pdf', '2020-05-01 15:53:14', '2020-05-01 15:53:14', NULL),
(32, 'wewewewewe', 'doc_1588348429.pdf', '2020-05-01 15:53:49', '2020-05-01 15:53:49', NULL),
(33, 'fesfdsfsfsdfds', 'doc_1588348581.pdf', '2020-05-01 15:56:21', '2020-05-01 15:56:21', NULL),
(34, 'erewrewrerewrwer', 'doc_1588348592.pdf', '2020-05-01 15:56:32', '2020-05-01 15:56:32', NULL),
(35, 'Set net ondfon  pdfdf', 'doc_1588348602.pdf', '2020-05-01 15:56:42', '2020-05-01 15:56:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_files`
--
ALTER TABLE `upload_files`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `upload_files`
--
ALTER TABLE `upload_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
