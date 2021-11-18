-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2021 at 08:47 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(1, 'Yoga Arimbawax', 'CUS1901525609', '$2y$10$oOhsEeNgRSdsdlS6129ogOgZIxOr9G/SE12zLUDzNoiwGhFbyBAkO', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-01 11:53:41', '2021-10-13 13:02:48'),
(2, 'Kadek', 'CUS972363255', '$2y$10$Fpe8Tz8AsIFxj2YunDaHDubp8w.1BQcP4l8dB3ahmLDCCHMVwMMS2', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-13 11:26:11', '2021-10-13 11:26:11'),
(3, 'Ketut', 'CUS1005373033', '$2y$10$lqBHfG9Od/2a/sbKFgV.k.U6Ru/HLAph9J7NQgsdqsw82wOynBsya', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-13 11:27:38', '2021-10-13 11:27:38'),
(4, 'Nengah', 'CUS1545886543', '$2y$10$FHuO6Iaz8SmhyAO/7x3kTOdBe7rwDuvo/4NASU6xlPwab2jILUxy6', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-13 11:30:59', '2021-10-13 11:30:59'),
(27, 'sunarya', 'CUS599773717', '$2y$10$XdX24wqRoKlgJv5h.zHy/epF1d1tIPKROkviF/VCmsaPdN0lOGj6y', '085847801933', 'sunarya@yahoo.com', 0, '2021-11-18 07:44:19', '2021-11-18 07:44:19');

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
(1, 'Dekga', 'CS294617857', '$2y$10$hY4fFnSRcet3cAEg8kyMaOcJrZi9ImnbDaoQHFeuy6fEY0JulF/ga', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-01 11:52:02', '2021-10-01 11:52:02'),
(2, 'Komang', 'CS1742602455', '$2y$10$T7xpjjfA6DXq1Wa6IBjq6.Jdk7HXiJI8Dtu6/Wd8FnvvPgf05D7/6', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-13 11:30:05', '2021-10-13 11:30:05'),
(3, 'Yogax', 'CS999107830', '$2y$10$DmvSIiyE.r78oElDEM9eUOs.Qw.Y6njNXiIAbhabDKgA1Im9YJDIG', '085847801933', 'yogade9595.yd@gmail.com', 1, '2021-10-13 13:28:48', '2021-10-13 13:35:06');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_update_items`
--

INSERT INTO `history_update_items` (`id`, `items_id`, `update_date`, `update_title`, `update_info`, `update_description`, `created_at`, `updated_at`) VALUES
(8, 7, '2021-10-16', 'Menambah Presentase', 'DEV1981481994 - Yoga Arimbawa - Menambah Presentase 100%', 'zazaz', '2021-10-16 08:29:42', '2021-10-16 08:29:42');

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
(5, 3, 'Halaman Login', 'pembuatan halaman login pengguna dengan role user blablabla', 0, '2021-10-19', '2021-10-25', NULL, '2021-10-16 08:19:29', '2021-10-19 06:11:28'),
(6, 3, 'Laporan laba rugi', 'pembuatan halaman laporan laba rugi pada menu blablabla', 0, '2021-10-19', '2021-10-22', NULL, '2021-10-16 08:20:25', '2021-10-19 06:11:28'),
(7, 5, 'test', 'tes', 100, '2021-10-16', '2021-10-27', '2021-10-16', '2021-10-16 08:26:53', '2021-10-16 08:29:38');

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
(18, '2021_10_21_161935_add_foreign_keys_to_projects_table', 0);

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
(1, 'Yogax', 'DEV1592363217', '$2y$10$IXe1aXU0Dp1kN4rJMCKQje1129rwuadm6iOr.q6StyhY8hclcz9lq', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-01 11:54:17', '2021-10-13 13:25:49'),
(2, 'Made', 'DEV1978321460', '$2y$10$sgFL8/vgAxaURG3a.UjeT.KRd1aWKLdnB669xrqgUsGUbaIcovwFa', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-13 11:28:54', '2021-10-13 11:28:54'),
(3, 'Nyoman', 'DEV1200090679', '$2y$10$N1TIqOa7aDebMLGGIdsOIOU4ouzZxWMoNJwtHLAnJm.xyTnx7UFkC', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-13 11:29:29', '2021-10-13 11:29:29'),
(5, 'Yoga Arimbawa', 'DEV1981481994', '$2y$10$TnVtAz79ejo2RnSNdvNivOuDnQdBjXgV6ZO53t9wWnbEzgdauHaUi', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-15 10:09:11', '2021-10-15 10:09:11');

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
(10, 'PG51', 5, 1, 5, '2021-10-16', 1, '2021-10-16', 'test', 100, '2021-10-16', '2021-10-16 08:30:13', '2021-10-16 08:30:13');

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
(3, 1, 1, 'Sistem Informasi Akuntansi', 'On Progress', 0, '2021-10-19', '2021-10-31', NULL, NULL, '2021-10-16 08:18:18', '2021-10-19 06:11:28'),
(5, 1, 5, 'Sistem Pendukung Keputusan Metode blabla', 'Selesai', 100, '2021-10-16', '2021-11-26', '2021-10-16', NULL, '2021-10-16 08:25:32', '2021-10-16 08:29:42');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customer_services`
--
ALTER TABLE `customer_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `history_update_items`
--
ALTER TABLE `history_update_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `programmers`
--
ALTER TABLE `programmers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `progress_reports`
--
ALTER TABLE `progress_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
