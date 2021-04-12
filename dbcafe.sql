-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2021 at 05:58 AM
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
(8, 6, 'siswa', '13', '2020-10-01 09:14:38');

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
(3, 'User', 1, 'Hak akses diatas admin', NULL, NULL),
(6, 'siswa', 1, 'hak akses siswa', '2020-10-01 09:13:43', NULL);

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
(85, 1, 'Admin', '12'),
(86, 1, 'Admin', '80'),
(87, 1, 'Admin', '81');

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
(1, 'OCafe', 'Cafe', 'Ocafe', 'Jalan', 'ocafe@gmail.com', '0813-3378-2544', '1file_12042021101644.png');

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
(3, 'Camilan'),
(4, 'Dessert');

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
(1, 'Nasi Ayam Sambal Matah', '13000', 1, 'Nasi dengan ayam crispy ditaburi sambal matah. Sambal tradisional dari Bali yang terdiri dari irisan bawang merah, cabai, sereh, dan daun jeruk.', '806file_26042020061734.jpg', 'ready'),
(2, 'Nasi Ayam Saus Salted Egg', '13000', 1, 'Nasi dengan ayam crispy dilumuri saus salted egg (telur asin), dengan tekstur yang creamy dan rasa yang gurih.', '569file_26042020061705.jpg', 'habis'),
(3, 'Nasi Ayam Saus Asam Manis', '13000', 1, 'Nasi dengan ayam crispy dilumuri saus asam manis, yang terdiri dari saus, bawang bombay, nanas, dan wortel.', '602file_26042020061634.jpg', 'ready'),
(4, 'Banana Coffee', '10000', 2, 'Kopi dengan cita rasa yang unik dan legit dari ekstrak buah pisang.', '895file_26042020061606.jpg', 'habis'),
(5, 'Tarlet', '10000', 2, 'Minuman unik dari Pickupme, dengan menggabungkan dua varian rasa yaitu Taro dan Redvelvet menjadi satu.', '528file_26042020061518.jpg', 'habis'),
(7, 'kentang', '10000', 3, 'kentang goreng istimewa', '959file_23042020054033.jpg', 'ready'),
(8, 'Tiramissu', '25000', 4, 'Kue keju khas Italia dengan taburan bubuk kakao di atasnya, dessert yang lembut manis.', '367file_08072020031921.jpg', 'ready'),
(9, 'gfhfgh', '7665', 1, 'jgj', '15file_12042021105206.jpg', 'ready'),
(10, 'tes', '90000', 1, 'jhgkg', 'default.png', 'ready'),
(11, 'fvgfddf', '90000', 1, 'fgjfj', 'default.png', 'ready'),
(12, 'kas', '9789', 1, 'jiojoji', '182file_12042021104931.png', 'ready');

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
(81, 'listmenu', 'admin/listmenu', 'hak akses', 'fa fa-laptop', 1, 40, 'link');

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
(1, 'Online', '0', '13000', '13000', '2020-07-15', '12:21:02', 'diterima', 1, 'admin1', 'tunai', 'lunas'),
(2, 'Online', '10', '20700', '13000', '2020-07-15', '12:28:05', 'diterima', 1, 'admin1', 'tunai', 'lunas'),
(3, 'Online', '0', '13000', '13000', '2020-07-15', '13:01:24', 'diterima', 1, 'admin1', 'tunai', 'lunas'),
(4, 'Online', '0', '13000', '13000', '2020-07-15', '13:02:08', 'diterima', 1, 'admin1', 'tunai', 'lunas'),
(5, 'Online', '10', '11700', '20000', '2020-07-15', '13:03:01', 'diterima', 1, 'admin1', 'debit', 'lunas'),
(6, 'Online', '5', '34200', '35000', '2020-07-15', '14:27:02', 'diterima', 1, 'admin1', 'tunai', 'lunas'),
(8, 'udib', '10', '11700', '13000', '2020-07-15', '16:52:00', 'diterima', 1, 'admin1', 'tunai', 'lunas'),
(9, 'Online', '2', '12740', '20000', '2020-07-15', '17:02:43', 'diterima', 1, 'admin1', 'debit', 'lunas'),
(10, 'Online', '10', '23400', '50000', '2020-07-18', '19:33:11', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(11, 'madun', '', '46000', '46000', '2020-07-18', '19:33:54', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(12, 'Online', '', '26000', '26000', '2020-07-19', '21:18:38', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(13, 'Online', '12', '11440', '13000', '2020-07-27', '01:03:51', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(14, 'rizal', '', '13000', '13000', '2020-07-27', '01:04:56', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(15, 'Online', '', '13000', '13000', '2020-07-31', '00:49:19', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(16, 'Online', '', '13000', '13000', '2020-07-31', '00:49:50', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(17, 'Online', '0', '33000', '33000', '2020-07-31', '01:11:16', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(18, 'Online', '', '20000', '20000', '2020-07-31', '04:02:28', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(19, 'Online', '', '69000', '70000', '2020-07-31', '04:08:44', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(20, 'Online', '', '13000', '13000', '2020-07-31', '04:17:22', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(21, 'Online', '', '26000', '30000', '2020-07-31', '04:19:31', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(22, 'Online', '', '13000', '13000', '2020-07-31', '04:21:09', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(23, 'Online', '', '23000', '23000', '2020-07-31', '04:22:18', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(24, 'Online', '', '26000', '26000', '2020-07-31', '04:23:51', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(25, 'Online', '10', '134100', '150000', '2020-07-31', '04:25:51', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(26, 'Online', '5', '124450', '130000', '2020-07-31', '04:27:19', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(27, 'Online', '', '13000', '13000', '2020-07-31', '04:36:10', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(28, 'Online', '', '13000', '13000', '2020-07-31', '04:36:36', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(29, 'Online', '', '13000', '13000', '2020-07-31', '04:38:49', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(30, 'Online', '', '13000', '13000', '2020-07-31', '04:39:19', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(31, 'Online', '', '13000', '13000', '2020-07-31', '04:41:05', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(32, 'Online', '', '26000', '26000', '2020-07-31', '04:42:11', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(33, 'Online', '', '13000', '13000', '2020-07-31', '04:43:11', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(34, 'Online', '', '13000', '13000', '2020-07-31', '04:45:17', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(35, 'Online', '', '13000', '13000', '2020-07-31', '04:47:17', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(36, 'Online', '', '13000', '13000', '2020-07-31', '04:48:30', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(37, 'Online', '', '39000', '39000', '2020-07-31', '04:49:21', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(38, 'Online', '', '13000', '13000', '2020-07-31', '13:27:14', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(39, 'Online', '', '13000', '13000', '2020-07-31', '13:31:21', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(40, 'udib', '', '39000', '39000', '2020-07-31', '13:41:46', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(41, 'Online', '', '13000', '13000', '2020-07-31', '13:46:57', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(42, 'Online', '', '13000', '15000', '2020-07-31', '14:12:57', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(43, 'Online', '10', '62100', '65000', '2020-08-07', '19:21:44', 'diterima', 4, 'kasir42', 'tunai', 'lunas'),
(44, 'fds', '1', '0', '10000', '2021-04-07', '02:22:15', 'diterima', 1, 'admin1', 'tunai', 'lunas');

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
(1, 1, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 1, 13000, 13000, '806file_26042020061734.jpg'),
(2, 2, 2, 'Nasi Ayam Saus Salted Egg', 1, 'Makanan', 1, 13000, 13000, '569file_26042020061705.jpg'),
(3, 2, 5, 'Tarlet', 2, 'Minuman', 1, 10000, 10000, '528file_26042020061518.jpg'),
(4, 3, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 1, 13000, 13000, '806file_26042020061734.jpg'),
(5, 4, 3, 'Nasi Ayam Saus Asam Manis', 1, 'Makanan', 1, 13000, 13000, '602file_26042020061634.jpg'),
(6, 5, 2, 'Nasi Ayam Saus Salted Egg', 1, 'Makanan', 1, 13000, 13000, '569file_26042020061705.jpg'),
(7, 6, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 2, 13000, 26000, '806file_26042020061734.jpg'),
(8, 6, 7, 'kentang', 3, 'Camilan', 1, 10000, 10000, '959file_23042020054033.jpg'),
(10, 8, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 1, 13000, 13000, '806file_26042020061734.jpg'),
(11, 9, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 1, 13000, 13000, '806file_26042020061734.jpg'),
(12, 10, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 2, 13000, 26000, '806file_26042020061734.jpg'),
(13, 11, 2, 'Nasi Ayam Saus Salted Egg', 1, 'Makanan', 2, 13000, 26000, '569file_26042020061705.jpg'),
(14, 11, 5, 'Tarlet', 2, 'Minuman', 2, 10000, 20000, '528file_26042020061518.jpg'),
(15, 12, 2, 'Nasi Ayam Saus Salted Egg', 1, 'Makanan', 2, 13000, 26000, '569file_26042020061705.jpg'),
(16, 13, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 1, 13000, 13000, '806file_26042020061734.jpg'),
(17, 14, 2, 'Nasi Ayam Saus Salted Egg', 1, 'Makanan', 1, 13000, 13000, '569file_26042020061705.jpg'),
(18, 15, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 1, 13000, 13000, '806file_26042020061734.jpg'),
(19, 16, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 1, 13000, 13000, '806file_26042020061734.jpg'),
(20, 17, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 1, 13000, 13000, '806file_26042020061734.jpg'),
(21, 17, 4, 'Banana Coffee', 2, 'Minuman', 1, 10000, 10000, '895file_26042020061606.jpg'),
(22, 17, 5, 'Tarlet', 2, 'Minuman', 1, 10000, 10000, '528file_26042020061518.jpg'),
(23, 18, 4, 'Banana Coffee', 2, 'Minuman', 2, 10000, 20000, '895file_26042020061606.jpg'),
(24, 19, 2, 'Nasi Ayam Saus Salted Egg', 1, 'Makanan', 3, 13000, 39000, '569file_26042020061705.jpg'),
(25, 19, 4, 'Banana Coffee', 2, 'Minuman', 3, 10000, 30000, '895file_26042020061606.jpg'),
(26, 20, 3, 'Nasi Ayam Saus Asam Manis', 1, 'Makanan', 1, 13000, 13000, '602file_26042020061634.jpg'),
(27, 21, 3, 'Nasi Ayam Saus Asam Manis', 1, 'Makanan', 2, 13000, 26000, '602file_26042020061634.jpg'),
(28, 22, 3, 'Nasi Ayam Saus Asam Manis', 1, 'Makanan', 1, 13000, 13000, '602file_26042020061634.jpg'),
(29, 23, 4, 'Banana Coffee', 2, 'Minuman', 1, 10000, 10000, '895file_26042020061606.jpg'),
(30, 23, 3, 'Nasi Ayam Saus Asam Manis', 1, 'Makanan', 1, 13000, 13000, '602file_26042020061634.jpg'),
(31, 24, 3, 'Nasi Ayam Saus Asam Manis', 1, 'Makanan', 2, 13000, 26000, '602file_26042020061634.jpg'),
(32, 25, 3, 'Nasi Ayam Saus Asam Manis', 1, 'Makanan', 3, 13000, 39000, '602file_26042020061634.jpg'),
(33, 25, 4, 'Banana Coffee', 2, 'Minuman', 3, 10000, 30000, '895file_26042020061606.jpg'),
(34, 25, 5, 'Tarlet', 2, 'Minuman', 2, 10000, 20000, '528file_26042020061518.jpg'),
(35, 25, 7, 'kentang', 3, 'Camilan', 1, 10000, 10000, '959file_23042020054033.jpg'),
(36, 25, 8, 'Tiramissu', 4, 'Dessert', 2, 25000, 50000, '367file_08072020031921.jpg'),
(37, 26, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 3, 13000, 39000, '806file_26042020061734.jpg'),
(38, 26, 3, 'Nasi Ayam Saus Asam Manis', 1, 'Makanan', 3, 13000, 39000, '602file_26042020061634.jpg'),
(39, 26, 7, 'kentang', 3, 'Camilan', 2, 10000, 20000, '959file_23042020054033.jpg'),
(40, 26, 4, 'Banana Coffee', 2, 'Minuman', 2, 10000, 20000, '895file_26042020061606.jpg'),
(41, 26, 2, 'Nasi Ayam Saus Salted Egg', 1, 'Makanan', 1, 13000, 13000, '569file_26042020061705.jpg'),
(42, 27, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 1, 13000, 13000, '806file_26042020061734.jpg'),
(43, 28, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 1, 13000, 13000, '806file_26042020061734.jpg'),
(44, 29, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 1, 13000, 13000, '806file_26042020061734.jpg'),
(45, 30, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 1, 13000, 13000, '806file_26042020061734.jpg'),
(46, 31, 3, 'Nasi Ayam Saus Asam Manis', 1, 'Makanan', 1, 13000, 13000, '602file_26042020061634.jpg'),
(47, 32, 2, 'Nasi Ayam Saus Salted Egg', 1, 'Makanan', 1, 13000, 13000, '569file_26042020061705.jpg'),
(48, 32, 3, 'Nasi Ayam Saus Asam Manis', 1, 'Makanan', 1, 13000, 13000, '602file_26042020061634.jpg'),
(49, 33, 3, 'Nasi Ayam Saus Asam Manis', 1, 'Makanan', 1, 13000, 13000, '602file_26042020061634.jpg'),
(50, 34, 3, 'Nasi Ayam Saus Asam Manis', 1, 'Makanan', 1, 13000, 13000, '602file_26042020061634.jpg'),
(51, 35, 2, 'Nasi Ayam Saus Salted Egg', 1, 'Makanan', 1, 13000, 13000, '569file_26042020061705.jpg'),
(52, 36, 3, 'Nasi Ayam Saus Asam Manis', 1, 'Makanan', 1, 13000, 13000, '602file_26042020061634.jpg'),
(53, 37, 3, 'Nasi Ayam Saus Asam Manis', 1, 'Makanan', 3, 13000, 39000, '602file_26042020061634.jpg'),
(54, 38, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 1, 13000, 13000, '806file_26042020061734.jpg'),
(55, 39, 3, 'Nasi Ayam Saus Asam Manis', 1, 'Makanan', 1, 13000, 13000, '602file_26042020061634.jpg'),
(56, 40, 2, 'Nasi Ayam Saus Salted Egg', 1, 'Makanan', 3, 13000, 39000, '569file_26042020061705.jpg'),
(57, 41, 1, 'Nasi Ayam Sambal Matah', 1, 'Makanan', 1, 13000, 13000, '806file_26042020061734.jpg'),
(58, 42, 2, 'Nasi Ayam Saus Salted Egg', 1, 'Makanan', 1, 13000, 13000, '569file_26042020061705.jpg'),
(59, 43, 2, 'Nasi Ayam Saus Salted Egg', 1, 'Makanan', 3, 13000, 39000, '569file_26042020061705.jpg'),
(60, 43, 4, 'Banana Coffee', 2, 'Minuman', 3, 10000, 30000, '895file_26042020061606.jpg');

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
(1, 'blue', 'dark', 'light', 'blue');

-- --------------------------------------------------------

--
-- Table structure for table `tes`
--

CREATE TABLE `tes` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` date NOT NULL,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tes`
--

INSERT INTO `tes` (`id`, `judul`, `deskripsi`, `images`) VALUES
(3, 'Amazing Ta', '2020-08-04', 'fgdhdfhd');

-- --------------------------------------------------------

--
-- Table structure for table `tes2`
--

CREATE TABLE `tes2` (
  `id` int(11) NOT NULL,
  `nama_ketua` varchar(100) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tes2`
--

INSERT INTO `tes2` (`id`, `nama_ketua`, `time`) VALUES
(3, 'fgdg', 34),
(4, 'fdsfsd 4t3ter', 343244543);

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
(2, 'kasir1', 'e10adc3949ba59abbe56e057f20f883e', 'kasir1@gmail.com', '', 'raka', NULL, NULL, '082122314141', 'default.png', 1),
(3, 'kasir2', 'e10adc3949ba59abbe56e057f20f883e', 'kasir2@gmail.com', '', 'andi', NULL, NULL, '08888', 'default.png', 0),
(4, 'kasir42', 'e10adc3949ba59abbe56e057f20f883e', 'kasir42@mail.com', '', 'kasir 1', NULL, 'ewfrew', '08942141241', 'default.png', 1),
(9, 'joni2', 'e10adc3949ba59abbe56e057f20f883e', 'joni@gmail.com', NULL, 'joni', NULL, NULL, '08942141241', '9file_09092020122100.png', 1),
(10, 'kasir43', 'e10adc3949ba59abbe56e057f20f883e', 'khodirotulu@gmail.com', NULL, 'kasir widodo', NULL, 'ngojel from hell', '08942141242', '10file_09092020122005.png', 0),
(12, 'rffanani97', 'e10adc3949ba59abbe56e057f20f883e', 'rffanani97@mail.com', NULL, 'joni', NULL, 'ngojel from hell', '08942141241', '12file_09092020121929.jpg', 0),
(13, 'yayan123', 'e10adc3949ba59abbe56e057f20f883e', 'yayan123@mail.com', NULL, 'yayan', NULL, 'gh', '08942141241', 'default.png', 1);

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
(2, '::1', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(3, '::1', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(4, '::1', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(9, '::1', NULL, NULL, '2020-08-23 21:51:43', NULL),
(10, '::1', NULL, NULL, '2020-08-23 22:13:02', NULL),
(12, '::1', NULL, NULL, '2020-09-09 11:20:29', NULL),
(13, '::1', NULL, NULL, '2020-10-01 09:14:38', NULL);

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
-- Indexes for table `tes`
--
ALTER TABLE `tes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tes2`
--
ALTER TABLE `tes2`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id_assignment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_item`
--
ALTER TABLE `auth_item`
  MODIFY `id_aunt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `listmenu`
--
ALTER TABLE `listmenu`
  MODIFY `id_menu` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id_order_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tema`
--
ALTER TABLE `tema`
  MODIFY `id_tema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tes`
--
ALTER TABLE `tes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tes2`
--
ALTER TABLE `tes2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
