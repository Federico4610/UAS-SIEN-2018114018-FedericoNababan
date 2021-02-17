-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Feb 2021 pada 23.18
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensimahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absens`
--

CREATE TABLE `absens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `waktu_absen` time DEFAULT NULL,
  `mahasiswa_id` int(25) DEFAULT NULL,
  `matkul_id` int(25) NOT NULL,
  `keterangan` enum('HADIR','TIDAK HADIR') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `absens`
--

INSERT INTO `absens` (`id`, `waktu_absen`, `mahasiswa_id`, `matkul_id`, `keterangan`, `created_at`, `updated_at`) VALUES
(8, '07:30:00', 2018114018, 2, 'HADIR', '2021-02-17 14:14:03', '2021-02-17 14:14:03'),
(9, '07:15:00', 201811439, 2, 'HADIR', '2021-02-17 14:15:52', '2021-02-17 14:15:52'),
(10, '10:30:00', 2018114025, 2, 'TIDAK HADIR', '2021-02-17 14:16:24', '2021-02-17 14:16:24'),
(11, '12:20:00', 2018114022, 2, 'TIDAK HADIR', '2021-02-17 14:16:56', '2021-02-17 14:16:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwals`
--

CREATE TABLE `jadwals` (
  `id` int(40) NOT NULL,
  `jadwal` datetime DEFAULT NULL,
  `matakuliah_id` int(35) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwals`
--

INSERT INTO `jadwals` (`id`, `jadwal`, `matakuliah_id`, `created_at`, `updated_at`) VALUES
(1, '2021-02-15 08:30:00', 1, '2021-02-16 02:37:07', '2021-02-16 02:37:07'),
(2, '2021-02-16 09:00:00', 2, '2021-02-16 05:47:19', '2021-02-16 05:47:19'),
(3, '2021-02-17 07:00:00', 3, '2021-02-16 05:47:48', '2021-02-16 05:47:48'),
(4, '0000-00-00 00:00:00', 4, '2021-02-16 05:48:08', '2021-02-16 05:48:08'),
(5, '0000-00-00 00:00:00', 5, '2021-02-16 05:48:21', '2021-02-16 05:48:21'),
(6, '0000-00-00 00:00:00', 6, '2021-02-16 05:48:32', '2021-02-16 05:48:32'),
(7, '0000-00-00 00:00:00', 7, '2021-02-16 05:49:04', '2021-02-16 05:49:04'),
(8, '0000-00-00 00:00:00', 8, '2021-02-16 05:49:29', '2021-02-16 05:49:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontrak_matakuliahs`
--

CREATE TABLE `kontrak_matakuliahs` (
  `id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `semester_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kontrak_matakuliahs`
--

INSERT INTO `kontrak_matakuliahs` (`id`, `mahasiswa_id`, `semester_id`, `created_at`, `updated_at`) VALUES
(1, 2018114018, '005', '2021-02-17 17:12:34', '2021-02-17 17:12:34'),
(2, 2018114039, '005', '2021-02-17 10:14:07', '2021-02-17 10:14:07'),
(3, 2018114025, '005', '2021-02-17 20:30:10', '2021-02-17 20:30:10'),
(4, 2018114022, '005', '2021-02-17 20:30:21', '2021-02-17 20:30:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `nama_mahasiswa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `mahasiswa_id`, `nama_mahasiswa`, `alamat`, `no_tlp`, `email`, `created_at`, `updated_at`) VALUES
(1, 2018114018, 'Federico N', 'Cirebon', '0811', 'federico@gmail.com', '2021-02-16 05:28:38', '2021-02-16 05:28:38'),
(25, 2018114039, 'Jody Ariel Permana', 'Cirebon', '0812', 'jody@gmail.com', '2021-02-17 10:56:32', '2021-02-17 10:56:32'),
(26, 2018114025, 'Andy Setiawan Purnomo', 'Cirebon', '0813', 'andy@gmail.com', '2021-02-17 10:57:28', '2021-02-17 10:57:28'),
(27, 2018114022, 'Geofani Harvey', 'Cirebon', '0814', 'geofani@gmail.com', '2021-02-17 10:58:27', '2021-02-17 10:58:27'),
(28, 2018114005, 'Indah Ali', 'Cirebon', '0815', 'indahali@gmail.com', '2021-02-17 13:16:53', '2021-02-17 13:16:53'),
(29, 2018114011, 'Priscilya Christiana', 'Cirebon', '0816', 'priscilya@gmail.com', '2021-02-17 13:17:52', '2021-02-17 13:17:52'),
(30, 2018114017, 'Ricky P Hutagalung', 'Cirebon', '0817', 'ricky@gmail.com', '2021-02-17 13:19:13', '2021-02-17 13:19:13'),
(31, 2018114041, 'Hany Dwi', 'Cirebon', '0818', 'hany@gmail.com', '2021-02-17 13:19:54', '2021-02-17 13:19:54'),
(32, 2018114004, 'Regia Marcellina', 'Cirebon', '0819', 'regia@gmail.com', '2021-02-17 13:20:46', '2021-02-17 13:20:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkuls`
--

CREATE TABLE `matkuls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_matakuliah` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` int(2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `matkuls`
--

INSERT INTO `matkuls` (`id`, `nama_matakuliah`, `sks`, `created_at`, `updated_at`) VALUES
(1, 'Integrasi SI Enterprise', 3, '2021-02-16 05:43:18', '2021-02-16 05:43:18'),
(2, 'ERP Terapan 1', 3, '2021-02-16 05:43:40', '2021-02-16 05:43:40'),
(3, 'Pemrograman Internet Lanjut', 4, '2021-02-16 05:44:03', '2021-02-16 05:44:03'),
(4, 'Jaringan Komputer', 3, '2021-02-16 05:45:24', '2021-02-16 05:45:24'),
(5, 'Rekayasa Perangkat Lunak', 2, '2021-02-16 05:45:51', '2021-02-16 05:45:51'),
(6, 'Manajeman Keamanan Sistem Informasi', 2, '2021-02-16 05:46:17', '2021-02-16 05:46:17'),
(7, 'Study Exchange - A', 3, '2021-02-16 05:46:37', '2021-02-16 05:46:37'),
(8, 'Sudy Exchange - B', 2, '2021-02-16 05:46:55', '2021-02-16 05:46:55');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_30_060206_create_mahasiswa', 1),
(5, '2021_01_30_061112_create_absen', 1),
(6, '2021_01_30_061556_create_matkul', 1),
(7, '2021_01_30_074059_create_mahasiswas', 2),
(8, '2021_02_16_092054_jadwals', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `semesters`
--

CREATE TABLE `semesters` (
  `id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `semesters`
--

INSERT INTO `semesters` (`id`, `mahasiswa_id`, `semester`, `created_at`, `updated_at`) VALUES
(1, 2018114018, 5, '2021-02-17 12:18:53', '2021-02-17 12:18:53'),
(2, 2018114039, 5, '2021-02-17 13:32:31', '2021-02-17 13:32:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absens`
--
ALTER TABLE `absens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jadwals`
--
ALTER TABLE `jadwals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontrak_matakuliahs`
--
ALTER TABLE `kontrak_matakuliahs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `matkuls`
--
ALTER TABLE `matkuls`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absens`
--
ALTER TABLE `absens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwals`
--
ALTER TABLE `jadwals`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kontrak_matakuliahs`
--
ALTER TABLE `kontrak_matakuliahs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `matkuls`
--
ALTER TABLE `matkuls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
