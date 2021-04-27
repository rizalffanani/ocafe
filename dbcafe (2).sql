-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 09:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `id_assignment` int(11) NOT NULL,
  `id_aunt` int(11) NOT NULL,
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`id_assignment`, `id_aunt`, `item_name`, `user_id`, `created_at`) VALUES
(1, 1, 'Admin', '1', '0000-00-00 00:00:00'),
(2, 2, 'Kasir', '2', NULL),
(3, 2, 'Kasir', '3', NULL),
(4, 2, 'Kasir', '4', NULL),
(5, 3, 'User', '9', '2020-08-23 21:51:43'),
(6, 2, 'Kasir', '10', '2020-08-23 22:13:02'),
(7, 2, 'Kasir', '12', '2020-09-09 11:20:29'),
(8, 6, 'siswa', '13', '2020-10-01 09:14:38'),
(9, 3, 'User', '14', '2021-04-22 15:26:32'),
(10, 3, 'User', '2', '2021-04-27 12:51:34');

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `id_aunt` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `tipe` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`id_aunt`, `name`, `tipe`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, 'hak akses admin', NULL, NULL),
(2, 'Kasir', 1, 'hak akses kasir', NULL, NULL),
(3, 'User', 1, 'Hak akses diatas admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `idc` int(11) NOT NULL,
  `id_aunt` int(11) NOT NULL,
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`idc`, `id_aunt`, `parent`, `child`) VALUES
(1, 1, 'Admin', '15'),
(2, 1, 'Admin', '22'),
(3, 1, 'Admin', '33'),
(4, 1, 'Admin', '13'),
(16, 1, 'Admin', '48'),
(28, 1, 'Admin', '40'),
(42, 1, 'Admin', '41'),
(43, 2, 'Kasir', '12'),
(45, 1, 'Admin', '49'),
(46, 1, 'Admin', '50'),
(47, 1, 'Admin', '51'),
(48, 1, 'Admin', '52'),
(50, 1, 'Admin', '54'),
(51, 1, 'Admin', '56'),
(52, 1, 'Admin', '55'),
(53, 1, 'Admin', '57'),
(58, 1, 'Admin', '70'),
(68, 2, 'Kasir', '61'),
(69, 2, 'Kasir', '62'),
(70, 2, 'Kasir', '63'),
(77, 1, 'Admin', '78'),
(79, 1, 'Admin', '79'),
(80, 6, 'siswa', '12'),
(86, 1, 'Admin', '80'),
(87, 1, 'Admin', '81'),
(88, 1, 'Admin', '47'),
(90, 3, 'User', '61'),
(91, 3, 'User', '62'),
(92, 3, 'User', '63'),
(93, 1, 'Admin', '74'),
(95, 3, 'User', '82'),
(96, 1, 'Admin', '83'),
(97, 1, 'Admin', '84');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id_info` int(11) NOT NULL,
  `nama_web` varchar(100) NOT NULL,
  `tentang` text NOT NULL,
  `slogan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `wa` varchar(18) NOT NULL,
  `logo_web` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id_info`, `nama_web`, `tentang`, `slogan`, `alamat`, `email`, `wa`, `logo_web`) VALUES
(1, 'Cafe Warna', 'Cafe', 'Ocafe', 'Jalan', 'ocafe@gmail.com', '0813-3378-2544', '1file_25042021153149.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(20) NOT NULL,
  `nama_kategori` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Makanan'),
(2, 'Minuman'),
(3, 'Sepinggan'),
(4, 'Snack'),
(5, 'Lain - Lain');

-- --------------------------------------------------------

--
-- Table structure for table `listmenu`
--

CREATE TABLE `listmenu` (
  `id_menu` int(20) NOT NULL,
  `nama_menu` varchar(200) NOT NULL,
  `harga` varchar(200) NOT NULL,
  `id_kategori` int(20) NOT NULL,
  `deskripsi_menu` text NOT NULL,
  `foto_menu` varchar(200) NOT NULL,
  `status` enum('ready','habis') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listmenu`
--

INSERT INTO `listmenu` (`id_menu`, `nama_menu`, `harga`, `id_kategori`, `deskripsi_menu`, `foto_menu`, `status`) VALUES
(1, 'I\'am Penyet / Ayam Penyet', '12000', 1, '', '338file_25042021152817.jpg', 'ready'),
(2, 'Lele Penyet', '10000', 1, '', '158file_25042021152725.jpg', 'habis'),
(3, 'Nasi Goreng DJ ( Daun Jeruk)', '10000', 1, '', '774file_25042021152640.jpg', 'ready'),
(4, 'Nasi Goreng Teman (Teri Medan)', '11000', 1, '', '638file_25042021152544.jpg', 'habis'),
(5, 'Nasi Goreng Millenial (Sambal Matah)', '11000', 1, '', '354file_25042021152432.jpg', 'habis'),
(7, 'Nasi Goreng Jawa', '10000', 1, '', '509file_25042021152300.jpg', 'ready'),
(8, 'Bakmi Gak Basah / Dibasahin', '11000', 1, '', '612file_25042021152157.jpg', 'ready'),
(9, 'Bihun Gak Basah', '7000', 1, '', '48file_25042021152109.jpg', 'ready'),
(10, 'Cap Cay', '9000', 1, '', '795file_25042021152008.jpg', 'ready'),
(11, 'Cakung (Cah Kangkung)', '8000', 1, '', '717file_25042021151933.jpg', 'ready'),
(12, 'Plengkung (Plecing Kangkung)', '8000', 1, '', '529file_25042021151859.jpg', 'ready'),
(13, 'Cahto (Cah Tauge)', '8000', 1, '', '752file_25042021151818.jpg', 'ready'),
(14, 'Teh (Hangat/Dingin)', '3000', 2, '', '833file_25042021151513.jpg', 'ready'),
(15, 'Jeruk (Hangat/Dingin)', '4000', 2, '', '524file_25042021151411.jpg', 'ready'),
(16, 'Jeruk Nipis (Hangat/Dingin)', '4000', 2, '', '809file_25042021151215.png', 'ready'),
(17, 'Lemon Tea (Hangat/Dingin)', '5000', 2, '', '811file_25042021151629.jpeg', 'ready'),
(18, 'Milo', '5000', 2, '', '327file_25042021150756.png', 'ready'),
(19, 'Kopi Susu (Hangat/Dingin)', '5000', 2, '', '721file_25042021150706.jpg', 'ready'),
(20, 'Cappucino (Hangat/Dingin)', '5000', 2, '', '881file_25042021150500.jpg', 'ready'),
(21, 'Jus Tomat', '6000', 2, '', '294file_25042021150347.jpg', 'ready'),
(22, 'Jus Melon', '7000', 2, '', '559file_25042021150322.jpg', 'ready'),
(23, 'Jus Semangka', '7000', 2, '', '618file_25042021150247.jpg', 'ready'),
(24, 'Jus Nanas', '7000', 2, '', '691file_25042021150121.jpg', 'ready'),
(25, 'Jus Wortel', '7000', 2, '', '965file_25042021150019.jpg', 'ready'),
(26, 'Mix Juice (Min. 3 Macam Buah)', '9000', 2, '', '60file_25042021145909.jpg', 'ready'),
(27, 'Es Kopyor', '5000', 2, '', '398file_25042021145833.jpg', 'ready'),
(28, 'Air Meniral', '2500', 2, '', '35file_25042021145731.png', 'ready'),
(29, 'Fruit Tea Pouch', '2500', 2, '', '962file_25042021145648.jpg', 'ready'),
(30, 'Teh Sosro Pouch', '2500', 2, '', '153file_25042021145554.jpg', 'ready'),
(31, 'Tebs', '5000', 2, '', '724file_25042021145424.jpg', 'ready'),
(32, 'Roojak So To (Rujak Soto)', '12000', 3, '', '106file_25042021145317.jpg', 'ready'),
(33, 'Soto I am (Soto Ayam)', '10000', 3, '', '821file_25042021145229.jpg', 'ready'),
(34, 'Fancy Tofu (Tahu Telur)', '10000', 3, '', '834file_25042021145200.jpg', 'ready'),
(35, 'Javanesse Salad (Gado-Gado)', '10000', 3, '', '264file_25042021145054.jpg', 'ready'),
(36, 'See Black', '10000', 3, '', '929file_25042021145012.jpg', 'ready'),
(37, 'Ceker', '1000', 3, '', '582file_25042021144621.jpg', 'ready'),
(38, 'Pilus', '1000', 3, '', '355file_25042021144539.jpg', 'ready'),
(39, 'French Fries', '8000', 4, '', '134file_25042021144444.jpeg', 'ready'),
(40, 'Cireng', '6000', 4, '', '271file_25042021144415.jpg', 'ready'),
(41, 'Pisang Goreng', '1000', 4, '', '449file_25042021144209.jpg', 'ready'),
(42, 'Ote - Ote/ Weci', '1000', 4, '', '596file_25042021144135.jpg', 'ready'),
(43, 'Sambil Ijo', '2500', 5, '', '495file_25042021144045.jpg', 'ready'),
(44, 'Sambel Tomat', '2500', 5, '', '637file_25042021144017.jpg', 'ready'),
(45, 'Sambel Matah', '2500', 5, '', '401file_25042021143948.jpg', 'ready'),
(46, 'Sambal Bawang', '2500', 5, '', '108file_25042021143846.jpg', 'ready'),
(47, 'Telur', '3000', 5, '', '787file_25042021143819.jpg', 'ready'),
(48, 'Nasi Putih', '3000', 5, '', '664file_25042021143758.jpeg', 'ready'),
(49, 'Lontong', '2000', 5, '', '118file_25042021143704.jpg', 'ready');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `deskrip` text NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_active` int(1) NOT NULL,
  `is_parent` int(1) NOT NULL,
  `tipe` enum('menu','link','pager') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `deskrip`, `icon`, `is_active`, `is_parent`, `tipe`) VALUES
(12, 'Dashboard', 'admin/dashboard', 'hak akses info desa', 'fa fa-laptop', 1, 0, 'link'),
(13, 'Admin', '#', '', 'fa fa-laptop', 1, 0, 'menu'),
(15, 'menu management', 'admin/menu', 'hak akses penuh Controler menu/*', 'fa fa-list-alt', 1, 13, 'menu'),
(22, 'GENERATOR', 'harviacode', 'hak akses penuh Controler harviacode/*', 'fa fa-laptop', 1, 13, 'menu'),
(40, 'data', '#', '', 'fa fa-laptop', 1, 0, 'menu'),
(41, 'Setting', '#', '', 'fa fa-laptop', 1, 0, 'menu'),
(47, 'Auth item', 'admin/auth_item', 'hak akses penuh Controler Auth_item/*', 'fa fa-laptop', 1, 13, 'menu'),
(48, 'Auth detail', 'admin/auth_item_child', 'hak akses penuh Controler Auth_item_child/*', 'fa fa-laptop', 1, 13, 'menu'),
(52, 'Info Web', 'admin/info', 'hak akses Info', 'fa fa-list-alt', 1, 41, 'menu'),
(61, 'users/update', 'admin/users/update', 'hak akses aksi users/update/', 'fa fa-laptop', 1, 0, 'pager'),
(62, 'users/update_pass', 'admin/users/update_pass', 'hak akses aksi users/read/', 'fa fa-laptop', 1, 0, 'pager'),
(63, 'users/read', 'admin/users/read', 'hak akses aksi users/read/', 'fa fa-laptop', 1, 0, 'pager'),
(70, 'data user', 'admin/users', 'Data users', 'fa fa-laptop', 1, 40, 'menu'),
(73, 'admin', 'admin', 'routing', '1', 1, 0, 'pager'),
(74, 'Dashboard', 'admin/dashboard', 'hak akses info desa', 'fa fa-laptop', 1, 0, 'link'),
(78, 'tema', 'admin/tema', 'hak akses', 'fa fa-list-alt', 1, 41, 'link'),
(80, 'kategori', 'admin/kategori', 'hak akses', 'fa fa-laptop', 1, 40, 'link'),
(81, 'listmenu', 'admin/listmenu', 'hak akses', 'fa fa-laptop', 1, 40, 'link'),
(82, 'checkout', 'web/checkout', 'hak akses', 'fa fa-laptop', 1, 0, 'link'),
(83, 'Pesanan Tamu', 'admin/pesanantamu', 'fungsi data Pesanan Tamu', 'fa fa-pencil', 1, 0, 'menu'),
(84, 'Laporan', 'admin/kas', 'Laporan Transaksi', 'fa fa-pencil', 1, 0, 'menu');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id_order` int(20) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `diskon` varchar(100) NOT NULL DEFAULT '0',
  `total_harga` varchar(200) NOT NULL,
  `bayar` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `waktu` time NOT NULL,
  `transaksi` enum('diterima','selesai') NOT NULL,
  `id_kasir` int(20) DEFAULT NULL,
  `nama_kasir` varchar(200) DEFAULT NULL,
  `metode` enum('tunai','debit') NOT NULL,
  `status` enum('belum bayar','lunas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id_order`, `id_user`, `diskon`, `total_harga`, `bayar`, `date`, `waktu`, `transaksi`, `id_kasir`, `nama_kasir`, `metode`, `status`) VALUES
(4, '2', '', '11000', '11000', '2021-04-27', '12:51:48', 'diterima', 1, 'admin1', 'tunai', 'lunas'),
(5, '2', '', '10000', '10000', '2021-04-27', '12:52:49', 'diterima', 1, 'admin1', 'tunai', 'lunas'),
(6, '2', '', '0', '0', '2021-04-27', '12:59:02', 'diterima', 1, 'admin1', 'tunai', 'lunas'),
(7, '2', '', '10000', '10000', '2021-04-27', '12:59:20', 'diterima', 1, 'admin1', 'tunai', 'lunas'),
(8, '2', '', '11000', '11000', '2021-04-27', '13:06:36', 'diterima', 1, 'admin1', 'tunai', 'lunas');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id_order_detail` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id_order_detail`, `id_order`, `id_menu`, `nama_menu`, `id_kategori`, `nama_kategori`, `qty`, `harga`, `total_harga`, `gambar`) VALUES
(3, 4, 8, 'Bakmi Gak Basah / Dibasahin', 1, 'Makanan', 1, 11000, 11000, '612file_25042021152157.jpg'),
(4, 5, 3, 'Nasi Goreng DJ ( Daun Jeruk)', 1, 'Makanan', 1, 10000, 10000, '774file_25042021152640.jpg'),
(5, 7, 2, 'Lele Penyet', 1, 'Makanan', 1, 10000, 10000, '158file_25042021152725.jpg'),
(6, 8, 5, 'Nasi Goreng Millenial (Sambal Matah)', 1, 'Makanan', 1, 11000, 11000, '354file_25042021152432.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tema`
--

CREATE TABLE `tema` (
  `id_tema` int(11) NOT NULL,
  `navbar_bg_color` varchar(100) NOT NULL,
  `navbar_font_color` varchar(100) NOT NULL,
  `sidebar_bg_color` varchar(50) NOT NULL,
  `sidebar_font_color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tema`
--

INSERT INTO `tema` (`id_tema`, `navbar_bg_color`, `navbar_font_color`, `sidebar_bg_color`, `sidebar_font_color`) VALUES
(1, 'maroon', 'dark', 'dark', 'maroon');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nokartuidentitas` varchar(30) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `nokartuidentitas`, `first_name`, `last_name`, `alamat`, `phone`, `foto`, `active`) VALUES
(1, 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 'admin@gmail.com', '', 'admin1', NULL, NULL, '083834558876', '1file_09092020122247.png', 1),
(2, 'joni2', 'e10adc3949ba59abbe56e057f20f883e', 'joni@gmail.com', NULL, 'joni', NULL, NULL, '082139121467', 'default.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_detail`
--

CREATE TABLE `users_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` datetime DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_detail`
--

INSERT INTO `users_detail` (`id`, `ip_address`, `activation_code`, `forgotten_password_time`, `created_on`, `last_login`) VALUES
(1, '109.109.109.109', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, '::1', NULL, NULL, '2021-04-27 12:51:34', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_akses`
-- (See below for the actual view)
--
CREATE TABLE `view_akses` (
`id` int(11) unsigned
,`username` varchar(100)
,`first_name` varchar(50)
,`name_level` varchar(64)
,`id_aunt` int(11)
,`id_child` int(11)
,`name` varchar(50)
,`link` varchar(50)
,`deskrip` text
,`icon` varchar(30)
,`is_active` int(1)
,`is_parent` int(1)
,`tipe` enum('menu','link','pager')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_auth_child`
-- (See below for the actual view)
--
CREATE TABLE `view_auth_child` (
`idc` int(11)
,`parent` varchar(64)
,`child` varchar(64)
,`name` varchar(50)
,`link` varchar(50)
,`deskrip` text
,`icon` varchar(30)
,`is_parent` int(1)
,`is_active` int(1)
,`tipe` enum('menu','link','pager')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_hk`
-- (See below for the actual view)
--
CREATE TABLE `view_hk` (
`id` int(11) unsigned
,`username` varchar(100)
,`id_assignment` int(11)
,`id_aunt` int(11)
,`item_name` varchar(64)
,`created_at` datetime
,`idc` int(11)
,`child` varchar(64)
);

-- --------------------------------------------------------

--
-- Structure for view `view_akses`
--
DROP TABLE IF EXISTS `view_akses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_akses`  AS  select `users`.`id` AS `id`,`users`.`username` AS `username`,`users`.`first_name` AS `first_name`,`auth_item`.`name` AS `name_level`,`auth_item`.`id_aunt` AS `id_aunt`,`menu`.`id` AS `id_child`,`menu`.`name` AS `name`,`menu`.`link` AS `link`,`menu`.`deskrip` AS `deskrip`,`menu`.`icon` AS `icon`,`menu`.`is_active` AS `is_active`,`menu`.`is_parent` AS `is_parent`,`menu`.`tipe` AS `tipe` from ((((`users` join `auth_assignment` on(`users`.`id` = `auth_assignment`.`user_id`)) join `auth_item` on(`auth_item`.`id_aunt` = `auth_assignment`.`id_aunt`)) join `auth_item_child` on(`auth_item`.`id_aunt` = `auth_item_child`.`id_aunt`)) join `menu` on(`menu`.`id` = `auth_item_child`.`child`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_auth_child`
--
DROP TABLE IF EXISTS `view_auth_child`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_auth_child`  AS  select `auth_item_child`.`idc` AS `idc`,`auth_item_child`.`parent` AS `parent`,`auth_item_child`.`child` AS `child`,`menu`.`name` AS `name`,`menu`.`link` AS `link`,`menu`.`deskrip` AS `deskrip`,`menu`.`icon` AS `icon`,`menu`.`is_parent` AS `is_parent`,`menu`.`is_active` AS `is_active`,`menu`.`tipe` AS `tipe` from (`auth_item_child` join `menu` on(`menu`.`id` = `auth_item_child`.`child`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_hk`
--
DROP TABLE IF EXISTS `view_hk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hk`  AS  select `users`.`id` AS `id`,`users`.`username` AS `username`,`auth_assignment`.`id_assignment` AS `id_assignment`,`auth_assignment`.`id_aunt` AS `id_aunt`,`auth_assignment`.`item_name` AS `item_name`,`auth_assignment`.`created_at` AS `created_at`,`auth_item_child`.`idc` AS `idc`,`auth_item_child`.`child` AS `child` from ((`auth_assignment` join `users` on(`users`.`id` = `auth_assignment`.`user_id`)) join `auth_item_child` on(`auth_item_child`.`id_aunt` = `auth_assignment`.`id_aunt`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`id_assignment`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`id_aunt`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`idc`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `listmenu`
--
ALTER TABLE `listmenu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_order_detail`);

--
-- Indexes for table `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id_tema`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_detail`
--
ALTER TABLE `users_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  MODIFY `id_assignment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `auth_item`
--
ALTER TABLE `auth_item`
  MODIFY `id_aunt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `listmenu`
--
ALTER TABLE `listmenu`
  MODIFY `id_menu` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id_order_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tema`
--
ALTER TABLE `tema`
  MODIFY `id_tema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;