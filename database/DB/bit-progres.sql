-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2021 at 05:06 AM
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
(5, 'Yoga Arimbawa', 'CUS7847370', '$2y$10$c0VZgTOrcI10uYTWGTIPju/PYSq7yagB5.FcZMwS37hfMaZz6mW52', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-13 12:42:50', '2021-10-13 12:42:50'),
(6, 'Yoga Arimbawa', 'CUS170887193', '$2y$10$9CGO9n0dHHuNp7UfQpD4RONafQosavzmpqaUZ6NoWFnDtUTmB.jyW', '085847801933', 'yogade9595.yd@gmail.com', 1, '2021-10-13 13:03:54', '2021-10-13 13:04:44'),
(7, 'Yoga Ar', 'CUS1638268362', '$2y$10$GAbZ/rRTT2butplndvIbtO.eBsUI/8NiHZlIaENoDp6mlojGr/gL2', '085847801933', 'yogade9595.yd@gmail.com', 1, '2021-10-13 13:05:55', '2021-10-13 13:06:31'),
(8, 'ff', 'CUS1130471905', '$2y$10$Ylc5.zGHh4RjSQm6OV9U5umCmTpHz0Z9fe415WWiU5rluJ6iOzPW2', '085847801933', 'yogade9595.yd@gmail.com', 1, '2021-10-13 13:09:55', '2021-10-13 13:10:26'),
(9, 'Yoga Arimbawa', 'CUS1268688656', '$2y$10$bzfdvhlcCeTPAyguvvcJi.shySBxmMAIf/rZb3fnq5A3rXKx0uZ0q', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-15 07:14:59', '2021-10-15 07:14:59'),
(10, 'sd', 'CUS1421199382', '$2y$10$GMqCaPkgvvFXRQTwxAxkuONF3P2lPjjEbKAqAyhYh4uCgp2hrVtZG', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-27 12:08:59', '2021-10-27 12:08:59');

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
(3, 'Yogax', 'CS999107830', '$2y$10$DmvSIiyE.r78oElDEM9eUOs.Qw.Y6njNXiIAbhabDKgA1Im9YJDIG', '085847801933', 'yogade9595.yd@gmail.com', 1, '2021-10-13 13:28:48', '2021-10-13 13:35:06'),
(4, 'Dekga', 'CS926141364', '$2y$10$oV9Vd.nFNgoGPK3vPTp5Ce0JH35rbnXNyo7aZ9UnoT2YjMzCC2U9e', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-15 13:58:42', '2021-10-15 13:58:42');

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
(1, 1, '2021-10-01', 'Menambah Presentase', 'DEV1592363217 - Yoga - Menambah Presentase 50%', 'Setengah pembuatan', '2021-10-01 12:45:48', '2021-10-01 12:45:48'),
(2, 1, '2021-10-01', 'Mengurangi Presentase', 'CUS1901525609 - Yoga Arimbawa - Mengurangi Presentase 5%', 'wah tadi ada bug dibagian.....', '2021-10-01 12:58:55', '2021-10-01 12:58:55'),
(3, 1, '2021-10-01', 'Update Lainnya', 'CUS1901525609 - Yoga Arimbawa - Update Lainnya', 'Mengubah nama Item', '2021-10-01 13:00:02', '2021-10-01 13:00:02'),
(4, 1, '2021-10-01', 'Menambah Presentase', 'DEV1592363217 - Yoga - Menambah Presentase 55%', 'selesai item ini', '2021-10-01 13:01:42', '2021-10-01 13:01:42'),
(5, 3, '2021-10-01', 'Menambah Presentase', 'DEV1592363217 - Yoga - Menambah Presentase 100%', 'selesai item ini', '2021-10-01 13:03:21', '2021-10-01 13:03:21'),
(6, 2, '2021-10-01', 'Menambah Presentase', 'DEV1592363217 - Yoga - Menambah Presentase 100%', 'selesai item ini', '2021-10-01 13:03:45', '2021-10-01 13:03:45'),
(7, 1, '2021-10-14', 'Mengurangi Presentase', 'CUS1901525609 - Yoga Arimbawax - Mengurangi Presentase 10%', 'kurang pada...', '2021-10-14 05:55:53', '2021-10-14 05:55:53'),
(8, 7, '2021-10-16', 'Menambah Presentase', 'DEV1981481994 - Yoga Arimbawa - Menambah Presentase 100%', 'zazaz', '2021-10-16 08:29:42', '2021-10-16 08:29:42'),
(9, 1, '2021-10-16', 'Mengurangi Presentase', 'CUS1901525609 - Yoga Arimbawax - Mengurangi Presentase 40%', 'asdn', '2021-10-16 08:31:50', '2021-10-16 08:31:50'),
(10, 3, '2021-10-16', 'Mengurangi Presentase', 'CUS1901525609 - Yoga Arimbawax - Mengurangi Presentase 90%', 'asdac', '2021-10-16 08:32:19', '2021-10-16 08:32:19'),
(11, 1, '2021-10-16', 'Mengurangi Presentase', 'CUS1901525609 - Yoga Arimbawax - Mengurangi Presentase 10%', 'masih kurang pada ini....', '2021-10-16 12:15:11', '2021-10-16 12:15:11'),
(12, 1, '2021-10-19', 'Menambah Presentase', 'DEV1592363217 - Yogax - Menambah Presentase 5%', 'new', '2021-10-19 06:46:28', '2021-10-19 06:46:28');

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
(1, 1, 'Halaman Login User', 'Pembuatan halaman login dengan 3 role user: customer, cs, programmer', 45, '2021-10-01', '2021-10-08', '2021-10-01', '2021-10-01 12:13:17', '2021-10-19 06:46:19'),
(2, 1, 'Halaman Dashboard CS', 'Pembuatan halaman dashboard customer service yang berisi data informasi jumlah user dengan 3 jenis user, yaitu customer, cs, dan programmer', 100, '2021-10-01', '2021-10-15', '2021-10-01', '2021-10-01 12:15:12', '2021-10-01 13:03:41'),
(3, 1, 'Notifikasi Email Data Login User', 'Pembuatan notifikasi data login user setiap masing-masing user baru ditambahkan via email', 10, '2021-10-01', '2021-10-12', '2021-10-01', '2021-10-01 12:17:41', '2021-10-16 08:32:16'),
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
(4, 'Yoga', 'DEV30487144', '$2y$10$YtQERGZy7qyFTA.aGLqmIegF7Yry10xipHWNhqbiSajtyI71yY.Ym', '085847801933', 'yogade9595.yd@gmail.com', 0, '2021-10-13 13:22:14', '2021-10-13 13:22:14'),
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
(1, 'PG11', 1, 1, 1, '2021-10-01', 1, '2021-10-01', 'Halaman Login', 50, 'On Progress', '2021-10-01 12:46:12', '2021-10-01 12:46:12'),
(2, 'PG11', 1, 1, 1, '2021-10-01', 1, '2021-10-01', 'Halaman Dashboard CS', 0, 'On Progress', '2021-10-01 12:46:12', '2021-10-01 12:46:12'),
(3, 'PG11', 1, 1, 1, '2021-10-01', 1, '2021-10-01', 'Notifikasi Email Data Login User', 0, 'On Progress', '2021-10-01 12:46:12', '2021-10-01 12:46:12'),
(4, 'PG12', 1, 1, 1, '2021-10-01', 2, '2021-10-01', 'Halaman Login User', 100, '2021-10-01', '2021-10-01 13:01:59', '2021-10-01 13:01:59'),
(5, 'PG12', 1, 1, 1, '2021-10-01', 2, '2021-10-01', 'Halaman Dashboard CS', 0, 'On Progress', '2021-10-01 13:01:59', '2021-10-01 13:01:59'),
(6, 'PG12', 1, 1, 1, '2021-10-01', 2, '2021-10-01', 'Notifikasi Email Data Login User', 0, 'On Progress', '2021-10-01 13:01:59', '2021-10-01 13:01:59'),
(7, 'PG13', 1, 1, 1, '2021-10-01', 3, '2021-10-01', 'Halaman Login User', 100, '2021-10-01', '2021-10-01 13:03:58', '2021-10-01 13:03:58'),
(8, 'PG13', 1, 1, 1, '2021-10-01', 3, '2021-10-01', 'Halaman Dashboard CS', 100, '2021-10-01', '2021-10-01 13:03:58', '2021-10-01 13:03:58'),
(9, 'PG13', 1, 1, 1, '2021-10-01', 3, '2021-10-01', 'Notifikasi Email Data Login User', 100, '2021-10-01', '2021-10-01 13:03:58', '2021-10-01 13:03:58'),
(10, 'PG51', 5, 1, 5, '2021-10-16', 1, '2021-10-16', 'test', 100, '2021-10-16', '2021-10-16 08:30:13', '2021-10-16 08:30:13'),
(11, 'PG14', 1, 1, 1, '2021-10-19', 4, '2021-10-19', 'Halaman Login User', 40, '2021-10-01', '2021-10-19 06:22:01', '2021-10-19 06:22:01'),
(12, 'PG14', 1, 1, 1, '2021-10-19', 4, '2021-10-19', 'Halaman Dashboard CS', 100, '2021-10-01', '2021-10-19 06:22:01', '2021-10-19 06:22:01'),
(13, 'PG14', 1, 1, 1, '2021-10-19', 4, '2021-10-19', 'Notifikasi Email Data Login User', 10, '2021-10-01', '2021-10-19 06:22:01', '2021-10-19 06:22:01'),
(14, 'PG15', 1, 1, 1, '2021-10-20', 5, '2021-10-20', 'Halaman Login User', 45, '2021-10-01', '2021-10-20 05:32:45', '2021-10-20 05:32:45'),
(15, 'PG15', 1, 1, 1, '2021-10-20', 5, '2021-10-20', 'Halaman Dashboard CS', 100, '2021-10-01', '2021-10-20 05:32:45', '2021-10-20 05:32:45'),
(16, 'PG15', 1, 1, 1, '2021-10-20', 5, '2021-10-20', 'Notifikasi Email Data Login User', 10, '2021-10-01', '2021-10-20 05:32:45', '2021-10-20 05:32:45'),
(17, 'PG16', 1, 1, 1, '2021-10-20', 6, '2021-10-20', 'Halaman Login User', 45, '2021-10-01', '2021-10-20 06:04:20', '2021-10-20 06:04:20'),
(18, 'PG16', 1, 1, 1, '2021-10-20', 6, '2021-10-20', 'Halaman Dashboard CS', 100, '2021-10-01', '2021-10-20 06:04:20', '2021-10-20 06:04:20'),
(19, 'PG16', 1, 1, 1, '2021-10-20', 6, '2021-10-20', 'Notifikasi Email Data Login User', 10, '2021-10-01', '2021-10-20 06:04:20', '2021-10-20 06:04:20');

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
(1, 1, 1, 'Sistem Informasi Pemantauan Progres Pengerjaan Aplikasi', 'On Progress', 52, '2021-10-01', '2021-10-31', NULL, NULL, '2021-10-01 12:11:37', '2021-10-19 06:46:28'),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
