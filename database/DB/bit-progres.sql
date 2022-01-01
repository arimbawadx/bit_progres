-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 01, 2022 at 02:58 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bit-progres`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `username`, `password`, `phone_number`, `email`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Yoga Arimbawa', 'CUS1901525609', '$2y$10$oOhsEeNgRSdsdlS6129ogOgZIxOr9G/SE12zLUDzNoiwGhFbyBAkO', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-01 11:53:41', '2021-12-29 13:35:46'),
(2, 'Kadek', 'CUS972363255', '$2y$10$Fpe8Tz8AsIFxj2YunDaHDubp8w.1BQcP4l8dB3ahmLDCCHMVwMMS2', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-13 11:26:11', '2021-10-13 11:26:11'),
(3, 'Ketut', 'CUS1005373033', '$2y$10$lqBHfG9Od/2a/sbKFgV.k.U6Ru/HLAph9J7NQgsdqsw82wOynBsya', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-13 11:27:38', '2021-10-13 11:27:38'),
(4, 'Nengah', 'CUS1545886543', '$2y$10$FHuO6Iaz8SmhyAO/7x3kTOdBe7rwDuvo/4NASU6xlPwab2jILUxy6', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-13 11:30:59', '2021-10-13 11:30:59'),
(29, 'Customer A', 'CUS1494333410', '$2y$10$6jZsLd5JgRSgvdVZdmwuBehWP6yZEw9TU3CcsAIFD5ZyN0ihPvuDW', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-12-24 02:05:54', '2021-12-28 07:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `customer_services`
--

CREATE TABLE `customer_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_services`
--

INSERT INTO `customer_services` (`id`, `name`, `username`, `password`, `phone_number`, `email`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Dekga', 'CS294617857', '$2y$10$hY4fFnSRcet3cAEg8kyMaOcJrZi9ImnbDaoQHFeuy6fEY0JulF/ga', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-01 11:52:02', '2021-12-28 07:06:48'),
(2, 'Komang', 'CS1742602455', '$2y$10$T7xpjjfA6DXq1Wa6IBjq6.Jdk7HXiJI8Dtu6/Wd8FnvvPgf05D7/6', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-13 11:30:05', '2021-12-28 07:04:02'),
(3, 'Yogax', 'CS999107830', '$2y$10$DmvSIiyE.r78oElDEM9eUOs.Qw.Y6njNXiIAbhabDKgA1Im9YJDIG', '085847801933', 'yogade9595.yd@gmail.com', 1, '2021-10-13 13:28:48', '2021-10-13 13:35:06'),
(5, 'Anuu', 'CS642801514', '$2y$10$k8BJbv4EqGJ4UAAWaLtxkuibPQtUDT1z7WzkvkwX4/zFqdNbmfXoy', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-12-24 02:24:11', '2021-12-29 13:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `history_update_items`
--

CREATE TABLE `history_update_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `items_id` bigint(20) UNSIGNED NOT NULL,
  `update_date` date NOT NULL,
  `update_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_image` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_update_items`
--

INSERT INTO `history_update_items` (`id`, `items_id`, `update_date`, `update_title`, `update_info`, `update_description`, `update_image`, `created_at`, `updated_at`) VALUES
(19, 13, '2021-12-24', 'Menambah Presentase', 'DEV436391013 - Programmaer A - Menambah Presentase 20%', 'selesaipada pengerjaan user Customer', NULL, '2021-12-24 02:12:08', '2021-12-24 02:12:08'),
(20, 16, '2021-12-29', 'Menambah Presentase', 'DEV436391013 - Programmaer A - Menambah Presentase 100%', 'Bsn', NULL, '2021-12-29 06:49:09', '2021-12-29 06:49:09'),
(21, 18, '2021-12-29', 'Menambah Presentase', 'DEV1200090679 - Nyoman - Menambah Presentase 100%', 'Nsj', NULL, '2021-12-29 07:14:39', '2021-12-29 07:14:39'),
(22, 17, '2021-12-30', 'Menambah Presentase', 'DEV1592363217 - Yoga - Menambah Presentase 20%', 'dscfas', NULL, '2021-12-30 03:47:03', '2021-12-30 03:47:03'),
(23, 17, '2021-12-30', 'Menambah Presentase', 'DEV1592363217 - Yoga - Menambah Presentase 2%', 'safca', NULL, '2021-12-30 03:50:34', '2021-12-30 03:50:34'),
(24, 17, '2021-12-30', 'Update Lainnya', 'CUS972363255 - Kadek - Update Lainnya', 'sad', NULL, '2021-12-30 13:33:16', '2021-12-30 13:33:16'),
(25, 17, '2021-12-30', 'Menambah Presentase', 'DEV1592363217 - Yoga - Menambah Presentase 3%', 'fgdbf', NULL, '2021-12-30 13:34:59', '2021-12-30 13:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `projects_id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_progress` int(11) NOT NULL,
  `item_start` date DEFAULT NULL,
  `item_deadline` date NOT NULL,
  `item_finished` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `projects_id`, `item_name`, `item_description`, `item_progress`, `item_start`, `item_deadline`, `item_finished`, `created_at`, `updated_at`) VALUES
(13, 7, 'Mengelola Data User', 'Mengelola master Master user.', 20, '2021-12-29', '2021-12-31', NULL, '2021-12-24 02:08:21', '2021-12-29 08:46:35'),
(14, 7, 'Login', 'login ini terdiri dari 3 hak akses login yaitu customer service, customer dan programmer', 0, '2021-12-29', '2021-12-31', NULL, '2021-12-24 02:08:45', '2021-12-29 08:46:35'),
(15, 7, 'Notifikasi Email', 'Notifikasi yang dikirimkan ke Email', 0, '2021-12-29', '2021-12-31', NULL, '2021-12-24 02:09:06', '2021-12-29 08:46:35'),
(16, 8, 'A', 'Ahaj', 100, '2021-12-29', '2021-12-31', '2021-12-29', '2021-12-29 06:47:38', '2021-12-29 06:49:05'),
(17, 9, 'Bsh', 'Snns', 25, '2021-12-29', '2021-12-31', NULL, '2021-12-29 07:09:03', '2021-12-30 13:34:51'),
(18, 10, 'Js', 'Ns', 100, '2021-12-29', '2021-12-31', '2021-12-29', '2021-12-29 07:13:21', '2021-12-29 07:14:35');

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
(1, '12021_08_01_170759_create_customers_table', 1),
(2, '22021_08_01_170759_create_programmers_table', 1),
(3, '32021_08_01_170759_create_projects_table', 1),
(4, '42021_08_01_170759_create_items_table', 1),
(5, '52021_08_01_170759_create_progress_reports_table', 1),
(6, '62021_08_01_170759_create_history_update_items_table', 1),
(7, '72021_08_01_170759_create_customer_services_table', 1),
(8, '2021_10_21_161933_create_customer_services_table', 0),
(9, '2021_10_21_161933_create_customers_table', 0),
(10, '2021_10_21_161933_create_history_update_items_table', 0),
(11, '2021_10_21_161933_create_items_table', 0),
(12, '2021_10_21_161933_create_programmers_table', 0),
(13, '2021_10_21_161933_create_progress_reports_table', 0),
(14, '2021_10_21_161933_create_projects_table', 0),
(15, '2021_10_21_161935_add_foreign_keys_to_history_update_items_table', 0),
(16, '2021_10_21_161935_add_foreign_keys_to_items_table', 0),
(17, '2021_10_21_161935_add_foreign_keys_to_progress_reports_table', 0),
(18, '2021_10_21_161935_add_foreign_keys_to_projects_table', 0),
(19, '2022_01_01_215716_create_customer_services_table', 0),
(20, '2022_01_01_215716_create_customers_table', 0),
(21, '2022_01_01_215716_create_history_update_items_table', 0),
(22, '2022_01_01_215716_create_items_table', 0),
(23, '2022_01_01_215716_create_programmers_table', 0),
(24, '2022_01_01_215716_create_progress_reports_table', 0),
(25, '2022_01_01_215716_create_projects_table', 0),
(26, '2022_01_01_215718_add_foreign_keys_to_history_update_items_table', 0),
(27, '2022_01_01_215718_add_foreign_keys_to_items_table', 0),
(28, '2022_01_01_215718_add_foreign_keys_to_progress_reports_table', 0),
(29, '2022_01_01_215718_add_foreign_keys_to_projects_table', 0);

-- --------------------------------------------------------

--
-- Table structure for table `programmers`
--

CREATE TABLE `programmers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programmers`
--

INSERT INTO `programmers` (`id`, `name`, `username`, `password`, `phone_number`, `email`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Yoga', 'DEV1592363217', '$2y$10$IXe1aXU0Dp1kN4rJMCKQje1129rwuadm6iOr.q6StyhY8hclcz9lq', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-01 11:54:17', '2021-12-29 10:08:33'),
(2, 'Made', 'DEV1978321460', '$2y$10$sgFL8/vgAxaURG3a.UjeT.KRd1aWKLdnB669xrqgUsGUbaIcovwFa', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-13 11:28:54', '2021-10-13 11:28:54'),
(3, 'Nyoman', 'DEV1200090679', '$2y$10$N1TIqOa7aDebMLGGIdsOIOU4ouzZxWMoNJwtHLAnJm.xyTnx7UFkC', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-13 11:29:29', '2021-10-13 11:29:29'),
(5, 'Yoga Arimbawa', 'DEV1981481994', '$2y$10$TnVtAz79ejo2RnSNdvNivOuDnQdBjXgV6ZO53t9wWnbEzgdauHaUi', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-15 10:09:11', '2021-10-15 10:09:11'),
(6, 'Programmaer A', 'DEV436391013', '$2y$10$mFkIXeIYMgdA4wCPRL.0XeXUEJLeUQGBnTwS27km3/Dcqo7PGmS6i', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-12-24 02:10:08', '2021-12-24 02:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `progress_reports`
--

CREATE TABLE `progress_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `report_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `projects_id` bigint(20) UNSIGNED NOT NULL,
  `customers_id` bigint(20) UNSIGNED NOT NULL,
  `programmers_id` bigint(20) UNSIGNED NOT NULL,
  `report_period` date NOT NULL,
  `report_to` int(11) NOT NULL,
  `report_date` date NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_progress` int(11) NOT NULL,
  `finishing_timeline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `progress_reports`
--

INSERT INTO `progress_reports` (`id`, `report_code`, `projects_id`, `customers_id`, `programmers_id`, `report_period`, `report_to`, `report_date`, `item_name`, `item_progress`, `finishing_timeline`, `created_at`, `updated_at`) VALUES
(25, 'PG71', 7, 29, 6, '2021-12-24', 1, '2021-12-24', 'Mengelola Data User', 20, 'On Progress', '2021-12-24 02:14:36', '2021-12-24 02:14:36'),
(26, 'PG71', 7, 29, 6, '2021-12-24', 1, '2021-12-24', 'Login', 0, 'On Progress', '2021-12-24 02:14:36', '2021-12-24 02:14:36'),
(27, 'PG71', 7, 29, 6, '2021-12-24', 1, '2021-12-24', 'Notifikasi Email', 0, 'On Progress', '2021-12-24 02:14:36', '2021-12-24 02:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customers_id` bigint(20) UNSIGNED NOT NULL,
  `programmers_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `progress_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_progress` int(11) NOT NULL,
  `project_start` date DEFAULT NULL,
  `project_deadline` date NOT NULL,
  `project_finished` date DEFAULT NULL,
  `project_URL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `customers_id`, `programmers_id`, `project_name`, `progress_status`, `project_progress`, `project_start`, `project_deadline`, `project_finished`, `project_URL`, `created_at`, `updated_at`) VALUES
(7, 29, 1, 'Sistem Informasi Pemantauan Progres Aplikasi', 'On Progress', 7, '2021-12-29', '2022-01-15', NULL, 'http://www.bit-progress.com', '2021-12-24 02:07:41', '2022-01-01 11:44:49'),
(8, 2, 6, 'A', 'Selesai', 100, '2022-01-08', '2021-12-31', '2021-12-29', NULL, '2021-12-29 06:47:19', '2021-12-29 06:49:09'),
(9, 2, 1, 'B', 'On Progress', 25, '2022-01-08', '2022-01-31', NULL, NULL, '2021-12-29 07:08:35', '2021-12-30 13:34:59'),
(10, 2, 3, 'C', 'Selesai', 100, '2021-12-29', '2021-12-31', '2021-12-29', NULL, '2021-12-29 07:12:55', '2021-12-29 07:14:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_services`
--
ALTER TABLE `customer_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_update_items`
--
ALTER TABLE `history_update_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_update_items_items_id_foreign` (`items_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_projects_id_foreign` (`projects_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programmers`
--
ALTER TABLE `programmers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `progress_reports`
--
ALTER TABLE `progress_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `progress_reports_projects_id_foreign` (`projects_id`),
  ADD KEY `progress_reports_customers_id_foreign` (`customers_id`),
  ADD KEY `progress_reports_programmers_id_foreign` (`programmers_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_customers_id_foreign` (`customers_id`),
  ADD KEY `projects_programmers_id_foreign` (`programmers_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customer_services`
--
ALTER TABLE `customer_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `history_update_items`
--
ALTER TABLE `history_update_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `programmers`
--
ALTER TABLE `programmers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `progress_reports`
--
ALTER TABLE `progress_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `history_update_items`
--
ALTER TABLE `history_update_items`
  ADD CONSTRAINT `history_update_items_items_id_foreign` FOREIGN KEY (`items_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_projects_id_foreign` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`);

--
-- Constraints for table `progress_reports`
--
ALTER TABLE `progress_reports`
  ADD CONSTRAINT `progress_reports_customers_id_foreign` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `progress_reports_programmers_id_foreign` FOREIGN KEY (`programmers_id`) REFERENCES `programmers` (`id`),
  ADD CONSTRAINT `progress_reports_projects_id_foreign` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_customers_id_foreign` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `projects_programmers_id_foreign` FOREIGN KEY (`programmers_id`) REFERENCES `programmers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
