-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 09, 2024 at 07:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sicantiknada`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`, `aktif`) VALUES
(8, 'Rizmah', 'Rizmah', '$2y$10$2JTpYPFXhFm6utEp.pNFW.WqPYZ.kV94UmsEX7PhCs8uUzDGbxNS.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `aturan_pakai`
--

CREATE TABLE `aturan_pakai` (
  `id` int(11) NOT NULL,
  `nama_aturan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `aturan_pakai`
--

INSERT INTO `aturan_pakai` (`id`, `nama_aturan`) VALUES
(1, 'Oles'),
(2, 'Spray'),
(3, 'Tetes');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_bayar`
--

CREATE TABLE `detail_bayar` (
  `id_detail` int(11) NOT NULL,
  `kd_bayar` varchar(20) NOT NULL,
  `total` double NOT NULL,
  `id_tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `detail_bayar`
--

INSERT INTO `detail_bayar` (`id_detail`, `kd_bayar`, `total`, `id_tarif`) VALUES
(30, 'TRS190009', 30000, 5),
(31, 'TRS190009', 25000, 2),
(32, 'TRS190009', 30000, 1),
(33, 'TRS190009', 115000, 3),
(34, 'TRS190009', 115000, 3),
(35, 'TRS190009', 105000, 4),
(36, 'TRS190009', 30000, 5),
(37, 'TRS190009', 25000, 2),
(39, 'TRS190010', 30000, 1),
(40, 'TRS190010', 25000, 2),
(43, 'TRS190011', 30000, 1),
(44, 'TRS190011', 25000, 2),
(46, 'TRS190012', 30000, 1),
(47, 'TRS190013', 30000, 1),
(48, 'TRS190013', 25000, 2),
(49, 'TRS230014', 30000, 1),
(50, 'TRS230014', 115000, 3),
(51, 'TRS230014', 0, 1),
(52, 'TRS230014', 0, 0),
(53, 'TRS230014', 0, 0),
(54, 'TRS230014', 0, 0),
(55, 'TRS230014', 50000, 1),
(56, 'TRS230015', 30000, 5),
(57, 'TRS230016', 25000, 2),
(58, 'TRS240001', 150000, 9),
(59, 'TRS240002', 150000, 10),
(60, 'TRS240003', 150000, 9);

-- --------------------------------------------------------

--
-- Table structure for table `detail_masuk`
--

CREATE TABLE `detail_masuk` (
  `id_masuk` int(11) NOT NULL,
  `kd_masuk` varchar(20) NOT NULL,
  `kd_obat` int(11) NOT NULL,
  `stok_in` int(11) NOT NULL,
  `stok_tot` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `detail_masuk`
--

INSERT INTO `detail_masuk` (`id_masuk`, `kd_masuk`, `kd_obat`, `stok_in`, `stok_tot`, `total`) VALUES
(1, 'TRIN190001', 17, 20, 70, 29560),
(2, 'TRIN190002', 38, 100, 100, 45700),
(3, 'TRIN190003', 40, 50, 50, 1015000),
(4, 'TRIN190003', 41, 50, 50, 1750000),
(5, 'TRIN190003', 39, 50, 50, 33400),
(6, 'TRIN190004', 44, 50, 50, 359650),
(7, 'TRIN190004', 45, 50, 50, 205000),
(8, 'TRIN190005', 37, 50, 50, 20350),
(9, 'TRIN190006', 11, 2, 51, 2800),
(10, 'TRIN190007', 15, 5, 55, 75000),
(11, 'TRIN190008', 18, 9, 50, 19530),
(16, 'TRIN190009', 38, 3, 103, 1371),
(17, 'TRIN190010', 20, 100, 100, 60000),
(18, 'TRIN190010', 22, 100, 100, 50000),
(19, 'TRIN190011', 47, 100, 100, 450000),
(20, 'TRIN190012', 10, 5, 19, 2500),
(21, 'TRIN230013', 10, 6, 25, 2400),
(22, 'TRIN240013', 49, 5, 5, 1800000),
(23, 'TRIN240014', 50, 5, 5, 900000),
(24, 'TRIN240015', 51, 5, 5, 750000),
(26, 'TRIN240016', 52, 5, 5, 445000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_resep`
--

CREATE TABLE `detail_resep` (
  `id_detail` int(11) NOT NULL,
  `kd_resep` varchar(20) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `aturan_pakai` varchar(128) NOT NULL,
  `stok_out` int(11) NOT NULL,
  `stok_tot` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `detail_resep`
--

INSERT INTO `detail_resep` (`id_detail`, `kd_resep`, `id_obat`, `aturan_pakai`, `stok_out`, `stok_tot`, `total`) VALUES
(31, 'RSP240001', 49, 'a.c', 1, 4, 360000),
(32, 'RSP240002', 49, 'C', 1, 3, 360000),
(33, 'RSP240014', 63, '2x sehari', 2, 2, 175000),
(34, 'RSP240003', 50, 'C,c.th', 1, 4, 180000),
(35, 'RSP240004', 49, 'Caps', 2, 1, 720000),
(37, 'RSP240005', 50, 'C', 1, 3, 180000),
(40, 'RSP240006', 51, '2x sehari dioles', 1, 4, 150000),
(41, 'RSP240007', 51, '2x sehari spray', 1, 3, 150000),
(42, 'RSP240008', 50, 'Oles', 1, 2, 180000),
(43, 'RSP240009', 51, 'Oles', 1, 2, 150000),
(45, 'RSP240010', 49, 'Tetes', 1, 0, 36000);

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama`, `username`, `password`, `aktif`) VALUES
(11, 'Rizmah', 'Rizmah', '$2y$10$yKl01ggZlkERsXEQcsyvIObCnHlxKx4Yx/dA1I/b1YuCQvbHoIIcC', 1),
(12, 'Zakiah', 'Zakiah', '$2y$10$RTfkmnEHYchECzRjoltHw.3KlP24CUSZGzAhzAEX31bxLMGercfJe', 1),
(13, 'Ichsan', 'ichsan', '$2y$10$3jSAJbqwAkgDq6LG/7M81ulWnF1u8APSJEi1UjAzuaMRkiiXjvoAO', 1),
(14, 'Robby Junaidi', 'Junaidi', '$2y$10$LXvQgvM6ebLDVGSqRljAZuYeD1xEsS6cOsBfPsLf6.M1EJoYMw7cu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-28-223112', 'CodeIgniter\\Shield\\Database\\Migrations\\CreateAuthTables', 'default', 'CodeIgniter\\Shield', 1700419096, 1),
(2, '2021-07-04-041948', 'CodeIgniter\\Settings\\Database\\Migrations\\CreateSettingsTable', 'default', 'CodeIgniter\\Settings', 1700419096, 1),
(3, '2021-11-14-143905', 'CodeIgniter\\Settings\\Database\\Migrations\\AddContextColumn', 'default', 'CodeIgniter\\Settings', 1700419096, 1);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(128) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `stok`, `harga`) VALUES
(49, 'Serum Acne', 0, 360000),
(50, 'Serum Whitening', 2, 180000),
(51, 'Ampoule', 2, 150000),
(52, 'Sunscreen Niacinamide', 5, 89000);

-- --------------------------------------------------------

--
-- Table structure for table `obat_masuk`
--

CREATE TABLE `obat_masuk` (
  `kd_masuk` varchar(20) NOT NULL,
  `subtotal` double NOT NULL,
  `id_petugas_obat` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `obat_masuk`
--

INSERT INTO `obat_masuk` (`kd_masuk`, `subtotal`, `id_petugas_obat`, `tanggal`) VALUES
('TRIN190001', 29560, 8, '2019-07-24'),
('TRIN190002', 45700, 8, '2019-07-30'),
('TRIN190003', 2798400, 8, '2019-07-30'),
('TRIN190004', 564650, 8, '2019-07-30'),
('TRIN190005', 20350, 8, '2019-07-30'),
('TRIN190006', 2800, 8, '2019-07-30'),
('TRIN190007', 75000, 8, '2019-07-30'),
('TRIN190008', 19530, 8, '2019-07-25'),
('TRIN190009', 1371, 8, '2019-08-15'),
('TRIN190010', 110000, 8, '2019-08-16'),
('TRIN190011', 450000, 8, '2019-08-16'),
('TRIN190012', 2500, 8, '2019-08-16'),
('TRIN240013', 1800000, 10, '2024-01-07'),
('TRIN240014', 900000, 10, '2024-01-07'),
('TRIN240015', 750000, 10, '2024-01-08'),
('TRIN240016', 445000, 10, '2024-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `kd_rm` varchar(11) NOT NULL,
  `nama_pasien` varchar(128) NOT NULL,
  `jenkel` varchar(15) NOT NULL,
  `tempat_lahir` varchar(128) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`kd_rm`, `nama_pasien`, `jenkel`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`) VALUES
('RM2300001', 'Aulia', 'Perempuan', 'Pekanbaru', '2002-08-08', '		Pekanbaru			', '081278953819'),
('RM2300002', 'Laila Nurul Fauziyyah', 'Perempuan', 'Pekanbaru', '2003-09-08', '		Pekanbaru			', '081278953819'),
('RM2400003', 'Robby Azhar', 'Laki-Laki', 'Bangkinang', '2004-12-08', 'Kampar', '081371217705'),
('RM2400004', 'Bubu', 'Perempuan', 'Bangkinang', '2003-08-08', 'Pekanbaru', '081278953819'),
('RM2400005', 'Silvi', 'Perempuan', 'Pekanbaru', '2002-08-08', 'Pekanbaru', '081278953820'),
('RM2400006', 'Rizmah', 'Perempuan', 'Bangkinang', '2002-08-19', 'Pekanbaru', '081278953819'),
('RM2400007', 'Mulky', 'Laki-Laki', 'Bangkinang', '2000-08-08', 'Pekanbaru', '081371217705'),
('RM2400008', 'Sherly', 'Perempuan', 'Pekanbaru', '2002-10-10', 'Jalan Bangau', '081278953820');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `kd_bayar` varchar(20) NOT NULL,
  `id_pemeriksaan` varchar(20) NOT NULL,
  `kd_resep` varchar(20) NOT NULL,
  `totalbayar` double NOT NULL,
  `id_admin` int(11) NOT NULL,
  `tanggal_bayar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`kd_bayar`, `id_pemeriksaan`, `kd_resep`, `totalbayar`, `id_admin`, `tanggal_bayar`) VALUES
('TRS240001', 'PRS240001', 'RSP240002', 510000, 8, '2024-01-07'),
('TRS240002', 'PRS240003', 'RSP240004', 870000, 8, '2024-01-08'),
('TRS240003', 'PRS240008', 'RSP240010', 186000, 8, '2024-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `pemeriksaan`
--

CREATE TABLE `pemeriksaan` (
  `id_periksa` varchar(11) NOT NULL,
  `kd_rm` varchar(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `keluhan` varchar(256) NOT NULL,
  `diagnosa` varchar(256) NOT NULL,
  `tindakan` varchar(256) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pemeriksaan`
--

INSERT INTO `pemeriksaan` (`id_periksa`, `kd_rm`, `id_dokter`, `keluhan`, `diagnosa`, `tindakan`, `tanggal`) VALUES
('PRS240001', 'RM2300002', 11, 'Jerawat', 'Kurang cuci muka', 'Acne Peeling', '2024-01-07'),
('PRS240002', 'RM2400003', 11, 'Komedoan', 'Kurang cuci muka', 'Melano Peeling', '2024-01-07'),
('PRS240003', 'RM2400004', 11, 'Flek Hitam', 'Kurang menggunakan sunscreen', 'Melano Peeling', '2024-01-08'),
('PRS240004', 'RM2400005', 11, 'Flek Hitam ', 'Melasma', 'Melano Peeling', '2024-01-08'),
('PRS240005', 'RM2400006', 11, 'Kulit kusam', 'Kurang menggunakan pelembab', 'Melano Peeling', '2024-01-08'),
('PRS240006', 'RM2400006', 11, 'Jerawat', 'Kurang cuci wajah', 'Acne Peeling', '2024-01-08'),
('PRS240007', 'RM2400007', 11, 'Jerawat', 'Kurang cuci muka', 'Acne Peeling', '2024-01-08'),
('PRS240008', 'RM2400008', 11, 'jerawat meradang', 'inflasi', 'Acne Peeling', '2024-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `petugas_obat`
--

CREATE TABLE `petugas_obat` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `petugas_obat`
--

INSERT INTO `petugas_obat` (`id`, `nama`, `username`, `password`, `aktif`) VALUES
(9, 'Rizmah', 'Rizmah', '$2y$10$tnuYDu8oen.B6zL0nax/QuhqNcsSpk9r1RyvRIleZO2zsG5l9igNq', 1),
(10, 'Zakiah', 'Zakiah', '$2y$10$Ors8W/gR.WXkNg2t2FmpouPsW1XYVNZnzlH94Nzyi4d5.BKG3Osri', 1);

-- --------------------------------------------------------

--
-- Table structure for table `resep`
--

CREATE TABLE `resep` (
  `kd_resep` varchar(20) NOT NULL,
  `subtotal` double NOT NULL,
  `id_pemeriksaan` varchar(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `tanggal_resep` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `resep`
--

INSERT INTO `resep` (`kd_resep`, `subtotal`, `id_pemeriksaan`, `id_dokter`, `tanggal_resep`) VALUES
('RSP240001', 360000, 'PRS240001', 11, '2024-01-07'),
('RSP240002', 360000, 'PRS240001', 11, '2024-01-07'),
('RSP240003', 180000, 'PRS240002', 11, '2024-01-07'),
('RSP240004', 720000, 'PRS240003', 11, '2024-01-08'),
('RSP240005', 180000, 'PRS240004', 11, '2024-01-08'),
('RSP240006', 150000, 'PRS240005', 11, '2024-01-08'),
('RSP240007', 150000, 'PRS240006', 11, '2024-01-08'),
('RSP240008', 180000, 'PRS240007', 11, '2024-01-08'),
('RSP240009', 150000, 'PRS240001', 11, '2024-01-08'),
('RSP240010', 36000, 'PRS240008', 11, '2024-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tarif`
--

CREATE TABLE `tarif` (
  `id_tarif` int(11) NOT NULL,
  `nama_tarif` varchar(128) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tarif`
--

INSERT INTO `tarif` (`id_tarif`, `nama_tarif`, `harga`) VALUES
(9, 'Acne Peeling', 150000),
(10, 'Melano Peeling', 150000),
(11, 'Meso Acne', 360000),
(12, 'Meso Anti-Aging', 90000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `aturan_pakai`
--
ALTER TABLE `aturan_pakai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_secret` (`type`,`secret`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permissions_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `auth_remember_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `detail_bayar`
--
ALTER TABLE `detail_bayar`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `detail_masuk`
--
ALTER TABLE `detail_masuk`
  ADD PRIMARY KEY (`id_masuk`);

--
-- Indexes for table `detail_resep`
--
ALTER TABLE `detail_resep`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `obat_masuk`
--
ALTER TABLE `obat_masuk`
  ADD PRIMARY KEY (`kd_masuk`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`kd_rm`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`kd_bayar`);

--
-- Indexes for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`id_periksa`),
  ADD KEY `kd_pasien` (`kd_rm`);

--
-- Indexes for table `petugas_obat`
--
ALTER TABLE `petugas_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`kd_resep`),
  ADD KEY `kd_periksa` (`id_pemeriksaan`),
  ADD KEY `kd_periksa_2` (`id_pemeriksaan`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tarif`
--
ALTER TABLE `tarif`
  ADD PRIMARY KEY (`id_tarif`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `aturan_pakai`
--
ALTER TABLE `aturan_pakai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_bayar`
--
ALTER TABLE `detail_bayar`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `detail_masuk`
--
ALTER TABLE `detail_masuk`
  MODIFY `id_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `detail_resep`
--
ALTER TABLE `detail_resep`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `petugas_obat`
--
ALTER TABLE `petugas_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tarif`
--
ALTER TABLE `tarif`
  MODIFY `id_tarif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD CONSTRAINT `auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD CONSTRAINT `auth_permissions_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD CONSTRAINT `auth_remember_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD CONSTRAINT `pemeriksaan_ibfk_1` FOREIGN KEY (`kd_rm`) REFERENCES `pasien` (`kd_rm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
