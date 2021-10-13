-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Agu 2021 pada 10.52
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

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
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `name`, `username`, `password`, `phone_number`, `email`, `created_at`, `updated_at`) VALUES
(2, 'Yoga', 'CUS1760562478', '$2y$10$M8xl7Eln0JafJtBwgh4YduAyuZ495CIA32kiDG3vsA.taWj11IPa6', '085847801933', 'yogade9595.ydd@gmail.com', '2021-07-22 17:39:13', '2021-07-22 19:33:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_services`
--

CREATE TABLE `customer_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customer_services`
--

INSERT INTO `customer_services` (`id`, `name`, `username`, `password`, `phone_number`, `email`, `created_at`, `updated_at`) VALUES
(1, 'cs dekga', 'CS183112438', '$2y$10$PkaK5fFnbMZC5RNm/n54nO049manxqhYOWiF0387QeeRUz6mmK0mq', '085847801933', 'yogade9595.yd@gmail.com', '2021-07-23 23:47:02', '2021-07-23 23:47:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_update_items`
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
-- Dumping data untuk tabel `history_update_items`
--

INSERT INTO `history_update_items` (`id`, `items_id`, `update_date`, `update_title`, `update_info`, `update_description`, `created_at`, `updated_at`) VALUES
(3, 2, '2021-08-01', 'Menambah Presentase', 'CUS1760562478 - Yoga - Menambah Presentase 32%', 'selesai pembuatan role login programmer', '2021-08-01 08:12:07', '2021-08-01 08:12:07'),
(4, 3, '2021-08-01', 'Update Lainnya', 'CUS1760562478 - Yoga - Update Lainnya', 'mengubah judul item', '2021-08-01 08:15:29', '2021-08-01 08:15:29'),
(5, 2, '2021-08-01', 'Mengurangi Presentase', 'CUS1760562478 - Yoga - Mengurangi Presentase 6%', 'ada yang eror role login programmer', '2021-08-01 08:22:57', '2021-08-01 08:22:57'),
(6, 2, '2021-08-01', 'Menambah Presentase', 'CUS1760562478 - Yoga - Menambah Presentase 74%', 'selesai semua', '2021-08-01 08:31:04', '2021-08-01 08:31:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `items`
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
-- Dumping data untuk tabel `items`
--

INSERT INTO `items` (`id`, `projects_id`, `item_name`, `item_description`, `item_progress`, `item_start`, `item_deadline`, `item_finished`, `created_at`, `updated_at`) VALUES
(2, 1, 'Login', 'Login untuk user dengan kriteria 3 role login  yaitu programmmer, cs, customer', 100, '2021-08-01', '2021-07-30', '2021-08-01', '2021-07-26 11:25:57', '2021-08-01 08:31:04'),
(3, 1, 'halaman laporan', '-', 0, '2021-08-01', '2021-07-31', NULL, '2021-07-27 07:08:12', '2021-08-01 08:15:29'),
(5, 3, 'a', 'aa', 0, NULL, '2021-07-30', NULL, '2021-07-28 01:04:04', '2021-07-28 01:04:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_22_062559_create_projects_table', 1),
(2, '2021_03_22_062755_create_items_table', 1),
(3, '2021_03_22_063135_create_history_update_items_table', 1),
(4, '2021_03_22_063233_create_customer_services_table', 1),
(5, '2021_03_22_063305_create_customers_table', 1),
(6, '2021_03_22_063340_create_programmers_table', 1),
(7, '2021_03_22_063416_create_progress_reports_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `programmers`
--

CREATE TABLE `programmers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `programmers`
--

INSERT INTO `programmers` (`id`, `name`, `username`, `password`, `phone_number`, `email`, `created_at`, `updated_at`) VALUES
(1, 'yoga', 'DEV97567590', '$2y$10$nT82SPzJawSmB5MMJLuGV.7fVOkAcL7kaMFgbaekLyDQoSWON4If2', '085847801933', 'yogade9595.yd@gmail.com', '2021-07-23 17:46:56', '2021-07-23 17:46:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `progress_reports`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
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
-- Dumping data untuk tabel `projects`
--

INSERT INTO `projects` (`id`, `customers_id`, `programmers_id`, `project_name`, `progress_status`, `project_progress`, `project_start`, `project_deadline`, `project_finished`, `project_URL`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Sistem Informasi Pemantauan Progress PT. BIT', 'On Progress', 50, '2021-08-01', '2021-08-27', NULL, NULL, '2021-07-26 02:07:36', '2021-08-01 08:31:04'),
(3, 2, NULL, 'test', 'Menunggu', 0, NULL, '2021-07-31', NULL, NULL, '2021-07-28 01:03:32', '2021-07-28 01:03:32');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer_services`
--
ALTER TABLE `customer_services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `history_update_items`
--
ALTER TABLE `history_update_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `programmers`
--
ALTER TABLE `programmers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `progress_reports`
--
ALTER TABLE `progress_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `customer_services`
--
ALTER TABLE `customer_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `history_update_items`
--
ALTER TABLE `history_update_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `programmers`
--
ALTER TABLE `programmers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `progress_reports`
--
ALTER TABLE `progress_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
