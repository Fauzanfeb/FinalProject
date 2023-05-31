-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2022 at 08:38 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpenjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode` varchar(7) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `terjual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode`, `nama`, `satuan`, `harga`, `stok`, `terjual`) VALUES
('11111', '11', '11', 11, 11, 0),
('BRG0001', 'Pisang Bakar Enak', 'Lirang', 45000, 98, 0),
('BRG0002', 'Nasi Goreng', 'Porsi', 24000, 50, 4),
('BRG0003', 'Ayam Geprek', 'Porsi', 25000, 101, 0),
('BRG0004', 'Kentang Panggang', 'Box', 19000, 67, 0),
('BRG0005', 'Humberger', 'Porsi', 55000, 10, 2),
('BRG011', 'Koplo', 'kilo', 291000, 10, 0),
('BRGBRG1', 'Coba 1', 'Porsi', 19000, 19, 0),
('BRGBRG2', 'Poedias', '982', 100000, 1000, 0),
('BRGGG01', 'A', '10', 189, 19, 0),
('BRGPOP2', 'Coba B', 'porsi', 20000, 921, 0),
('BRGPOP3', 'Coba B', 'kilo', 20000, 129, 0),
('HBR0002', 'Wedang Teh', 'Gelas', 12000, 89, 0),
('KODE001', 'Pisang Bakar', 'Lirang', 100000, 100, 0),
('LOPIOO', 'Lumpia', '10992', 9000, 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(7) NOT NULL,
  `nama_pelanggan` varchar(20) NOT NULL,
  `alamat_pelanggan` varchar(20) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `total_beli` int(11) NOT NULL,
  `harga_awal` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `kode_barang`, `nama_pelanggan`, `alamat_pelanggan`, `nama_barang`, `total_beli`, `harga_awal`, `total_bayar`) VALUES
(5, 'BRG0005', 'Febri Harianto', 'Jl. Makasan', 'Martabak Manis', 4, 1000000, 4000000),
(6, 'BRG0001', 'Beline', 'Jl. Kampung', 'Pizza', 2, 10000, 20000),
(7, 'BRG0111', 'Arif Saputra', 'Jl. Magersari', 'Nasi Goreng', 5, 23000, 115000),
(8, 'BRG0117', 'Egi Maulana', 'Jl. Merdeka', 'Es Teh', 11, 6000, 66000),
(9, 'BRG0116', 'Febri', 'Jl. Kudus', 'Es Jeruk', 2, 10000, 20000),
(10, 'BRG0114', 'Arif Saputra', 'Tondomulyo', 'Ikan Bakar', 2, 28000, 56000),
(11, '8888888', 'arif', 'pop', '8888888', 2, 88, 176),
(12, 'BRG0004', 'Arif', 'Tondomulyo', 'Udang Besar', 2, 35000, 70000),
(13, 'BRG0007', 'arif', 'pois', 'Bebek Bakar', 2, 90000, 180000),
(14, 'BRG0005', 'saputra', 'pati', 'Ayam Goreng', 2, 5900, 11800),
(15, 'BRG0001', 'Arif', 'tondo', 'Ayam Panggang', 4, 12000, 48000),
(16, 'BRG0007', 'Arif', 'jakenan', 'Bebek Bakar', 6, 90000, 540000),
(17, 'BRG0002', 'Arif Saputra', 'pencil', 'Nasi Goreng', 4, 24000, 96000),
(18, 'BRG0005', 'Arif', 'prncil', 'Humberger', 2, 55000, 110000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Arif Saputra', 'arifsptra', '12345678'),
(5, 'Admin', 'admin', 'admin'),
(6, '1', '1', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
