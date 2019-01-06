-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2018 at 08:42 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `idberita` bigint(20) NOT NULL,
  `tanggal` datetime NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `isi` text NOT NULL,
  `aktif` tinyint(1) NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `noinvoice` varchar(6) NOT NULL,
  `tanggal` datetime NOT NULL,
  `idpelanggan` int(11) NOT NULL,
  `totalbayar` float NOT NULL,
  `transfer` tinyint(1) NOT NULL,
  `tglkirim` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`noinvoice`, `tanggal`, `idpelanggan`, `totalbayar`, `transfer`, `tglkirim`) VALUES
('T00010', '2018-11-19 13:13:22', 10, 600000, 1, '2018-11-19 13:41:32'),
('T00012', '2018-11-19 14:12:47', 10, 8400000, 0, '2018-12-12 01:35:24'),
('T00013', '2018-12-12 01:45:18', 10, 1620000, 1, '2018-12-12 01:58:05'),
('T00014', '2018-12-12 01:59:22', 10, 4400000, 1, '2018-12-12 02:04:28'),
('T00015', '2018-12-12 02:04:17', 10, 1620000, 1, '2018-12-12 02:04:31'),
('T00016', '2018-12-12 22:18:22', 12, 1110000, 1, NULL),
('T00017', '2018-12-12 22:21:21', 12, 1620000, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `nama_kategori` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `nama_kategori`) VALUES
(4, 'Executive Room'),
(5, 'Suite Room'),
(6, 'Presidential Suite');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idpelanggan` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `kelamin` set('L','P') NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kodepos` varchar(6) NOT NULL,
  `kota` varchar(25) NOT NULL,
  `telp` varchar(200) NOT NULL,
  `tanggal_daftar` date DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`idpelanggan`, `nama`, `kelamin`, `email`, `alamat`, `kodepos`, `kota`, `telp`, `tanggal_daftar`, `password`, `status`) VALUES
(8, 'naufal', 'L', 'mursyidnaufal@gmail.com', '					\r\n		b		', '3', 'bandung', '0898989898', '2015-11-24', '9b10fff33476b792f79cdcce22598a48', 0),
(9, 'Ridwan', 'L', 'ridwan@gmail.com', 'thb u4/14					\r\n				', '14125', 'Bekasi', '085776335003', '2015-11-25', 'aa7b2038f04af0e4e62858a8f805aa64', 1),
(10, 'hafiz', 'L', 'hafiz.zhafran03@gmail.com', 'jl akordion utara					\r\n				', '65111', 'malang', '08989989899', '2018-11-19', '839a54bf20626e4942bc8f11873f0654', 0),
(11, 'rizky', 'P', 'rizky.harda@hafiz.com', 'jl. ki ageng gribig			\r\n				', '65211', 'malang', '081234233234', '2018-11-19', '49d8712dd6ac9c3745d53cd4be48284c', 0),
(12, 'Pangestu Nur Mirzha', 'L', 'pangestunurmirzha@gmail.com', 'Jalan Simpang Piranha Atas No 3B					\r\n				', '62342', 'Malang', '085755214080', '2018-12-12', '6de292074548ff03d8a2f7a9a750a953', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengelola`
--

CREATE TABLE `pengelola` (
  `idpengelola` int(11) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengelola`
--

INSERT INTO `pengelola` (`idpengelola`, `nama`, `username`, `password`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'hafiz', 'hafiz', '839a54bf20626e4942bc8f11873f0654');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(10) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `idkategori` int(255) NOT NULL,
  `deskripsi` text,
  `foto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `nama_produk`, `idkategori`, `deskripsi`, `foto`) VALUES
(6, 'Superior Room', 4, 'A modern hotel room in Royal Hotel. \r\nPerfectly formed, our luxurious Superior rooms offer comfort and tranquillity as well as all the luxuries you would expect from a five-star hotel. ', 'thumbnail-superior.jpg'),
(7, 'Deluxe Room', 4, 'A modern hotel room in Royal Hotel\r\nWith intimate and welcoming atmosphere, our Executive Rooms have been designed to favor your well-being.', 'thumbnail-deluxe.jpg'),
(8, 'Executive Room', 4, 'A modern hotel room in Royal Hotel\r\nWith intimate and welcoming atmosphere, our Executive Rooms have been designed to favor your well-being.', 'thumbnail-executive.jpg'),
(11, 'Junior Suite Room', 5, 'Arranged over a minimum of 72 square meters Junior Suite are distinguished by very generous living space with large sofas and beautiful views.', 'ijen-suites-malang-junior-suite-room.jpg'),
(12, 'Royal Suite Room', 5, 'Unrivalled space, stylish dÃ©cor and stunning views from its private balcony combine to make our dramatic 72m square Royal Suite a magnificent accomodation at Ijen Suites.', 'ijen-suites-malang-royal-suite-room.jpg'),
(13, 'Presidential Suite Room', 6, 'Revel in abundance of sunlight streaming through floor to ceiling windows on two sides of these luxurious corner suites, our president suite, features a living room and dining area', 'ijen-suites-malang-president-suite-room.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vote` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `vote`) VALUES
(1, 1, 3.7),
(2, 2, 3.8),
(3, 1, 4.5),
(4, 1, 2.8),
(5, 1, 4.6),
(6, 1, 3.8),
(7, 1, 0.6),
(8, 2, 1.9),
(9, 1, 3.7),
(10, 1, 3.8),
(11, 1, 3.6),
(12, 1, 4.3),
(13, 1, 4.4),
(14, 1, 4.9);

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `idstok` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `harga_beli` double NOT NULL,
  `harga_jual` double NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`idstok`, `idproduk`, `harga_beli`, `harga_jual`, `jumlah`) VALUES
(1, 1, 530000, 606375, 20),
(2, 2, 480000, 551250, 20),
(3, 3, 580000, 661500, 15),
(4, 4, 520000, 595350, 10),
(5, 5, 580000, 661500, 18),
(6, 6, 1110000, 1223775, 11),
(7, 7, 1620000, 1786050, 10),
(8, 8, 2220000, 2447550, 12),
(9, 9, 770000, 870975, 5),
(10, 10, 6700000, 7827750, 10),
(11, 11, 3900000, 4299750, 12),
(12, 12, 4400000, 4851000, 11),
(13, 13, 20000000, 22050000, 12);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `idtransaksi` int(11) NOT NULL,
  `noinvoice` varchar(6) NOT NULL,
  `idproduk` int(10) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`idtransaksi`, `noinvoice`, `idproduk`, `jumlah`) VALUES
(15, 'T00010', 5, 1),
(18, 'T00012', 1, 1),
(19, 'T00012', 6, 1),
(20, 'T00012', 10, 1),
(21, 'T00013', 7, 1),
(23, 'T00014', 12, 1),
(24, 'T00015', 7, 1),
(25, 'T00016', 6, 1),
(26, 'T00017', 7, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`idberita`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`noinvoice`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indexes for table `pengelola`
--
ALTER TABLE `pengelola`
  ADD PRIMARY KEY (`idpengelola`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`idstok`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idtransaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `idberita` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `idpelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pengelola`
--
ALTER TABLE `pengelola`
  MODIFY `idpengelola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `idstok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `idtransaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
