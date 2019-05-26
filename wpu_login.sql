-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2019 at 04:33 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `aturan`
--

CREATE TABLE `aturan` (
  `id` int(11) NOT NULL,
  `kode_rule` varchar(11) NOT NULL,
  `gejala_id` int(11) NOT NULL,
  `kerusakan_id` int(11) NOT NULL,
  `mb` double NOT NULL,
  `md` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aturan`
--

INSERT INTO `aturan` (`id`, `kode_rule`, `gejala_id`, `kerusakan_id`, `mb`, `md`) VALUES
(1, 'R001', 1, 1, 1, 0),
(2, 'R002', 2, 2, 0.8, 0.2),
(3, 'R003', 3, 3, 0.6, 0),
(4, 'R004', 4, 4, 0.8, 0),
(5, 'R005', 5, 5, 0.6, 0.2),
(6, 'R006', 6, 6, 0.6, 0.2),
(7, 'R007', 7, 7, 1, 0),
(8, 'R008', 8, 7, 0.8, 0),
(9, 'R009', 9, 8, 1, 0),
(10, 'R010', 10, 4, 0.8, 0.2),
(11, 'R011', 11, 9, 1, 0),
(12, 'R012', 12, 10, 0.8, 0),
(13, 'R013', 13, 10, 0.8, 0.2),
(14, 'R014', 14, 11, 1, 0),
(15, 'R015', 15, 11, 0.6, 0.2),
(16, 'R016', 16, 14, 0.4, 0.2),
(17, 'R017', 17, 13, 1, 0),
(18, 'R018', 18, 15, 0.8, 0),
(19, 'R019', 19, 14, 0.8, 0.2),
(20, 'R020', 20, 11, 1, 0),
(21, 'R021', 21, 14, 0.8, 0.2),
(22, 'R022', 22, 12, 1, 0),
(23, 'R023', 23, 11, 1, 0),
(24, 'R024', 24, 14, 0.8, 0.2),
(25, 'R025', 25, 13, 0.8, 0.2),
(26, 'R026', 26, 11, 0.8, 0.2),
(27, 'R027', 27, 8, 0.4, 0.2),
(28, 'R028', 28, 17, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aturan_rule`
--

CREATE TABLE `aturan_rule` (
  `id` int(11) NOT NULL,
  `kode_rule` varchar(6) NOT NULL,
  `kode_gejala` varchar(6) NOT NULL,
  `kode_kerusakan` varchar(6) NOT NULL,
  `mb` double NOT NULL,
  `md` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aturan_rule`
--

INSERT INTO `aturan_rule` (`id`, `kode_rule`, `kode_gejala`, `kode_kerusakan`, `mb`, `md`) VALUES
(1, 'R001', 'G001', 'D001', 1, 0),
(2, 'R002', 'G002', 'D002', 0.8, 0.2),
(3, 'R003', 'G003', 'D003', 0.6, 0.2),
(4, 'R004', 'G004', 'D004', 0.8, 0),
(5, 'R005', 'G005', 'D005', 0.6, 0.2),
(6, 'R006', 'G006', 'D006', 0.6, 0.2),
(7, 'R007', 'G007', 'D007', 1, 0),
(8, 'R008', 'G008', 'D007', 0.8, 0),
(9, 'R009', 'G009', 'D008', 1, 0),
(10, 'R010', 'G010', 'D004', 0.8, 0.2),
(11, 'R011', 'G011', 'D009', 1, 0),
(12, 'R012', 'G012', 'D010', 0.8, 0),
(13, 'R013', 'G013', 'D010', 0.8, 0.2),
(14, 'R014', 'G014', 'D011', 1, 0),
(15, 'R015', 'G015', 'D011', 0.6, 0.2),
(16, 'R016', 'G016', 'D014', 0.4, 0.2),
(17, 'R017', 'G017', 'D013', 1, 0),
(18, 'R018', 'G018', 'D015', 0.8, 0),
(19, 'R019', 'G019', 'D014', 0.8, 0.2),
(20, 'R020', 'G020', 'D011', 1, 0),
(21, 'R021', 'G021', 'D014', 0.8, 0.2),
(22, 'R022', 'G022', 'D012', 1, 0),
(23, 'R023', 'G023', 'D011', 1, 0),
(24, 'R024', 'G024', 'D014', 0.8, 0.2),
(25, 'R025', 'G025', 'D013', 0.8, 0.2),
(26, 'R026', 'G026', 'D011', 0.8, 0.2),
(27, 'R027', 'G027', 'D008', 0.4, 0.2),
(28, 'R028', 'G028', 'D016', 1, 0),
(29, 'R031', '1', '15', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `kode_gejala` varchar(10) NOT NULL,
  `nama_gejala` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `kode_gejala`, `nama_gejala`) VALUES
(1, 'G001', 'Feed dan LNB C-Band bermasalah/terbakar'),
(2, 'G002', 'Posisi arah kemiringan Feed dan LNB C-Band  berubah'),
(3, 'G003', 'Posisi azimuth dan elevasi antena berubah '),
(4, 'G004', 'Antena terhalang obyek'),
(5, 'G005', 'Konektor Kabel koaksial 75 ohm bermasalah/terbakar'),
(6, 'G006', 'Konektor Kabel F type 75 ohm bermasalah/terbakar'),
(7, 'G007', 'Status LED power pada DVB-S2 receiver mati'),
(8, 'G008', 'Status LED lock pada DVB-S2 receiver mati'),
(9, 'G009', 'Koneksi internet server disconnect'),
(10, 'G010', 'Status signal strength dan C/N berubah'),
(11, 'G011', 'Konektor kabel LAN bermasalah/terbakar'),
(12, 'G012', 'Status Cisco router disconnect'),
(13, 'G013', 'Konfigurasi Cisco router salah'),
(14, 'G014', 'Software SATAID pada server belum upgrade'),
(15, 'G015', 'Data Himawaricast HRIT/LRIT server tidak terupdate '),
(16, 'G016', 'Berkas old file server belum dihapus'),
(17, 'G017', 'Status UPS server bermasalah'),
(18, 'G018', 'Konektor UPS server bermasalah'),
(19, 'G019', 'Kapasitas memori server penuh '),
(20, 'G020', 'Software SATAID pada client belum upgrade'),
(21, 'G021', 'Kapasitas memori client penuh '),
(22, 'G022', 'Kapasitas hard disk client penuh'),
(23, 'G023', 'Data Himawaricast HRIT/LRIT client tidak terupdate'),
(24, 'G024', 'Berkas old file client belum dihapus'),
(25, 'G025', 'Status UPS client bermasalah '),
(26, 'G026', 'Tampilan image/citra pada SATAID bermasalah'),
(27, 'G027', 'Koneksi internet client connect'),
(28, 'G028', 'Status HUB bermasalah');

-- --------------------------------------------------------

--
-- Table structure for table `gejala_kerusakan`
--

CREATE TABLE `gejala_kerusakan` (
  `id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL,
  `kerusakan_id` int(11) NOT NULL,
  `md` float NOT NULL,
  `mb` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hasil_konsul`
--

CREATE TABLE `hasil_konsul` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `kode_kerusakan` varchar(10) NOT NULL,
  `nama_kerusakan` varchar(255) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `kepercayaan` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_konsul`
--

INSERT INTO `hasil_konsul` (`id`, `user_id`, `kode_kerusakan`, `nama_kerusakan`, `keterangan`, `kepercayaan`, `created_at`) VALUES
(41, 3, 'D002', 'Posisi Feed dan LNB tidak sesuai', 'Terjadi karena', 60, '2019-05-18 17:33:57'),
(42, 14, 'D004', 'Ada halangan sinyal', 'Terjadi karena', 80, '2019-05-18 17:34:25'),
(43, 3, 'D009', 'Kabel LAN rusak', 'Periksa sambungan kabel antara Cisco Router dengan HUB terpasang dengan pas. Pastikan tidak melintir/rusak. Jika rusak lakukan penggantian. Apabila lampu off tandanya tidak terjadi transfer data. Ethernet tidak terkoneksi, periksa koneksi ethernet. Kemudian periksa konfigurasi router apabila konfigurasi router bermasalah', 100, '2019-05-22 08:01:29'),
(44, 4, 'D011', 'Versi Software SATAID salah', 'Silahkan upgrade software SATAID versi terbaru 3.2.0.4 sesuai dengan panduan.', 100, '2019-05-22 08:23:00'),
(45, 3, 'D001', 'Kerusakan Feed dan LNB', 'Periksa feed dalam keadaan baik. Pastikan tidak ada kotoran yang menyumbat. Karena, sumbatan tersebut dapat mempengaruhi kekuatan signal yang akan diterima. Apabila pada receiver menunjukkan kuantitas dan kualitas sinyal nol maka kemungkinan jalur kabel koaksial dari LNB menuju receiver terputus. LNB harus ganti jika mengalami hubung pendek/terbakar.', 100, '2019-05-24 01:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `user_id`, `gejala_id`, `created_at`) VALUES
(99, 3, 2, '2019-05-18 17:33:57'),
(100, 3, 3, '2019-05-18 17:33:57'),
(101, 14, 4, '2019-05-18 17:34:25'),
(102, 14, 5, '2019-05-18 17:34:25'),
(103, 3, 11, '2019-05-22 08:01:29'),
(104, 3, 12, '2019-05-22 08:01:29'),
(105, 3, 13, '2019-05-22 08:01:29'),
(106, 4, 21, '2019-05-22 08:23:00'),
(107, 4, 23, '2019-05-22 08:23:00'),
(108, 4, 25, '2019-05-22 08:23:00'),
(109, 3, 1, '2019-05-24 01:50:30'),
(110, 3, 3, '2019-05-24 01:50:30'),
(111, 3, 4, '2019-05-24 01:50:30'),
(112, 3, 5, '2019-05-24 01:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `kerusakan`
--

CREATE TABLE `kerusakan` (
  `id` int(11) NOT NULL,
  `kode_kerusakan` varchar(10) NOT NULL,
  `nama_kerusakan` varchar(255) NOT NULL,
  `keterangan` varchar(625) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kerusakan`
--

INSERT INTO `kerusakan` (`id`, `kode_kerusakan`, `nama_kerusakan`, `keterangan`) VALUES
(1, 'D001', 'Kerusakan Feed dan LNB', 'Periksa feed dalam keadaan baik. Pastikan tidak ada kotoran yang menyumbat. Karena, sumbatan tersebut dapat mempengaruhi kekuatan signal yang akan diterima. Apabila pada receiver menunjukkan kuantitas dan kualitas sinyal nol maka kemungkinan jalur kabel koaksial dari LNB menuju receiver terputus. LNB harus ganti jika mengalami hubung pendek/terbakar.'),
(2, 'D002', 'Posisi Feed dan LNB tidak sesuai', 'Lakukan setting posisi arah feed dan LNB agar sesuai dengan standar operasional peralatan.'),
(3, 'D003', 'Posisi Antena tidak sesuai', 'Periksa posisi dan arah dish antena dengan menggunakan alat ukur slant meter , letakan slant meter pada sambungan antara reflektor dengan pedestal. Pastikan besar sudut elevasi antena berkisar 35.3 derajat dan besar sudut azimuth berkisar 83.6 derajat terhadap arah utara sebenarnya. Kemudian, bersihkan reflektor antena dan apabila diperlukan lakukan pengecatan.'),
(4, 'D004', 'Ada halangan sinyal', 'Pastikan  area disekitar antena tidak terhalang pohon, gedung atau tower. '),
(5, 'D005', 'Kabel koaksial rusak', 'Periksa sambungan kabel antara LNB dengan receiver terpasang dengan pas. Pastikan tidak melintir/rusak. Jika rusak lakukan penggantian dengan jenis kabel yang sama.'),
(6, 'D006', 'Kabel type F rusak', 'Periksa sambungan kabel suplai daya dari UPS menuju LNB Pastikan terpasang dengan sempurna dan periksa kondisi UPS bekerja dengan baik dan normal.'),
(7, 'D007', 'DVB-S2 bermasalah', 'Periksa sambungan kabel antara Receiver DVB-S2 dan UPS (suplai daya). Pastikan terpasang dengan pas dan periksa kondisi UPS bekerja dengan baik dan normal. Kemudian, silahkan cek azimuth dan elevasi antena. Kemudian periksa sambungan kabel koaksial antara receiver dan LNB. Pastikan kabel tidak melintir/rusak . jika rusak lakukan penggantian dengan kabel dengan jenis yang sama.'),
(8, 'D008', 'Konfigurasi internet salah', 'Pastikan koneksi internet ON pada PC server dan koneksi internet OFF pada PC client.'),
(9, 'D009', 'Kabel LAN rusak', 'Periksa sambungan kabel antara Cisco Router dengan HUB terpasang dengan pas. Pastikan tidak melintir/rusak. Jika rusak lakukan penggantian. Apabila lampu off tandanya tidak terjadi transfer data. Ethernet tidak terkoneksi, periksa koneksi ethernet. Kemudian periksa konfigurasi router apabila konfigurasi router bermasalah'),
(10, 'D010', 'Cisco router bermasalah ', 'Lampu off, periksa power switch pada router lalu cek kabel power dan pastikan suplai daya berkerja dengan baik dan normal. Apabila file corupted, periksa konfigurasi register dengan perintah “show version” -> restart router. Saat 60 detik pertama saat booting tekan tombol “break” dari ROM -> ketik “o/r 0x1” di ROM monitor -> masuk setup mode. Siapkan image file yang baru -> lakukan perintah “copy tftp flash” untuk copy image file baru dari tftp server ke flash memory. Periksa konfigurasi register ->”show version”->setting konfigurasi register supaya booting dari flash memordy. Periksa konfigurasi “show running-config”'),
(11, 'D011', 'Versi Software SATAID salah', 'Silahkan upgrade software SATAID versi terbaru 3.2.0.4 sesuai dengan panduan.'),
(12, 'D012', 'Hard disk penuh', 'Upgrade kapasitas hardisk dan lakukan backup data secara berkala.'),
(13, 'D013', 'Gagal catu daya', 'Periksa tegangan listrik AC 220 Volt, Pastikan daya berjalan dengan baik.'),
(14, 'D014', 'Kapasitas memori tidak memadai', 'Silahkan, CleanUp file-file dan registry yang tidak diperlukan karena file-file tersebut memakan ruang memory PC sehingga sistem berjalan lambat . Periksa kembali PC jika terlalu banyak program aplikasi maka lakukan unistall.'),
(15, 'D015', 'Kabel transmisi bermasalah', 'Pastikan kabel terpasang dengan pas apabila kondisi kabel rusak/kebakar, untuk mengatasinya lakukan penggantian sesuai dengan jenisnya.  '),
(17, 'D016', 'Hub Rusak', 'Lakukan perbaikan bila masih bisa ataupun diperbaiki ditempat service khusus. Namun, disarankan lebih baik diganti karena kualitasnya akan lebih bagus dibandingkan HUB yang telah dilakukan perbaikan.');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `nama_kondisi` varchar(55) NOT NULL,
  `bobot` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kondisi`
--

INSERT INTO `kondisi` (`id`, `nama_kondisi`, `bobot`) VALUES
(1, 'Pasti ya', 1),
(2, 'Hampir pasti ya', 0.8),
(3, 'Kemungkinan besar ya', 0.6),
(4, 'Mungkin ya', 0.4),
(5, 'Tidak tahu', 0.2),
(6, 'Pasti tidak', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(3, 'Dwi Rizky A', 'dwirizky04@gmail.com', 'weather-icon-png-2.png', '$2y$10$3PIaIxlhBx8axJY.hdSUjOniqTe42SQNc.MT9PBqOGkJ32nMdYOoq', 1, 1, 1554274038),
(4, 'Wanda Hara', 'wanda_hara@yahoo.com', 'default.jpg', '$2y$10$lP6GfokJ16BdsgKdyGgxj.ctZaBAzVu3DFVBU/LpQN2VAxe6.gT8W', 2, 1, 1554300251),
(14, 'Fajar Pratama', 'blancoblood8@gmail.com', 'default.jpg', '$2y$10$d2tj3af8ulCJSMVMzucCROV/.QmavPAazdxv0l/gingbEWW0s/XRS', 2, 1, 1555471379);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(5, 'Menu');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'Home', 'user', 'fas fa-fw fa-home', 1),
(3, 1, 'Data Kerusakan ', 'kerusakan', 'fas fa-fw fa-tools', 1),
(4, 1, 'Data Gejala', 'gejala', 'fas fa-fw fa-cogs', 1),
(5, 1, 'Data Aturan', 'aturan', 'fas fa-fw fa-toolbox', 1),
(6, 1, 'Data Pengguna', 'pengguna', 'fas fa-fw fa-users', 1),
(7, 2, 'Konsultasi', 'konsul', 'fab fa-fw fa-korvue', 1),
(8, 2, 'Hasil Konsultasi', 'user/hslkonsul', 'fas fa-fw fa-file-alt', 0),
(9, 1, 'Manajemen Menu', 'admin/manajemen', 'fas fa-fw fa-folder-plus', 0),
(11, 1, 'Role', 'admin/role', 'fas fa-fw fa-chalkboard-teacher', 1),
(12, 5, 'Menu Manajemen', 'menu', 'fas fa-fw fa-folder-plus', 1),
(13, 5, 'Submenu Manajemen', 'submenu', 'fas fa-fw fa-folder-open', 1),
(14, 2, 'My Profile', 'user/profile', 'fas fa-fw fa-user', 1),
(15, 2, 'Riwayat', 'konsul/riwayat', 'fas fa-fw fa-share-square', 1),
(16, 1, 'Daftar Riwayat', 'riwayat', 'fas fa-fw fa-clipboard-list', 1),
(17, 2, 'Informasi', 'user/info', 'fas fa-fw fa-satellite-dish', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aturan`
--
ALTER TABLE `aturan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gejala_id` (`gejala_id`),
  ADD KEY `kerusakan_id` (`kerusakan_id`);

--
-- Indexes for table `aturan_rule`
--
ALTER TABLE `aturan_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gejala_kerusakan`
--
ALTER TABLE `gejala_kerusakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_konsul`
--
ALTER TABLE `hasil_konsul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gejala_id` (`gejala_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `kerusakan`
--
ALTER TABLE `kerusakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aturan`
--
ALTER TABLE `aturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `aturan_rule`
--
ALTER TABLE `aturan_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `gejala_kerusakan`
--
ALTER TABLE `gejala_kerusakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hasil_konsul`
--
ALTER TABLE `hasil_konsul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `kerusakan`
--
ALTER TABLE `kerusakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aturan`
--
ALTER TABLE `aturan`
  ADD CONSTRAINT `aturan_ibfk_1` FOREIGN KEY (`gejala_id`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aturan_ibfk_2` FOREIGN KEY (`kerusakan_id`) REFERENCES `kerusakan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
