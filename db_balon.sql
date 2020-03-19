-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2020 at 01:52 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_balon`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `no_hp` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tanggal_lahir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member_vip`
--

CREATE TABLE `member_vip` (
  `member_id` int(20) NOT NULL,
  `nama_member` varchar(25) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(20) NOT NULL,
  `nama_produk` varchar(15) NOT NULL,
  `harga_produk` varchar(23) NOT NULL,
  `deskripsi_produk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE `t_admin` (
  `username` int(15) NOT NULL,
  `pasword` int(15) NOT NULL,
  `nama` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_deskripsi_pemesanan`
--

CREATE TABLE `t_deskripsi_pemesanan` (
  `id_pemesanan` int(15) NOT NULL,
  `id_produk` int(20) NOT NULL,
  `jumlah_beli` int(25) NOT NULL,
  `jumlah_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_konsumen`
--

CREATE TABLE `t_konsumen` (
  `id_konsumen` int(15) NOT NULL,
  `nama_konsumen` varchar(20) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `tlp` int(15) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_pemesanan`
--

CREATE TABLE `t_pemesanan` (
  `id_pemesan` int(15) NOT NULL,
  `id_konsumen` int(20) NOT NULL,
  `total` int(25) NOT NULL,
  `status` varchar(21) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `member_vip`
--
ALTER TABLE `member_vip`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `t_deskripsi_pemesanan`
--
ALTER TABLE `t_deskripsi_pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`,`id_produk`);

--
-- Indexes for table `t_konsumen`
--
ALTER TABLE `t_konsumen`
  ADD PRIMARY KEY (`id_konsumen`);

--
-- Indexes for table `t_pemesanan`
--
ALTER TABLE `t_pemesanan`
  ADD PRIMARY KEY (`id_pemesan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
