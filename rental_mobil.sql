-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2017 at 03:20 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rental_mobil`
--
CREATE DATABASE IF NOT EXISTS `rental_mobil` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rental_mobil`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_mobil`
--

CREATE TABLE IF NOT EXISTS `tb_mobil` (
  `id_mobil` int(20) NOT NULL AUTO_INCREMENT,
  `merek` varchar(20) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `tahun` varchar(20) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `harga` int(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id_mobil`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tb_mobil`
--

INSERT INTO `tb_mobil` (`id_mobil`, `merek`, `tipe`, `tahun`, `nopol`, `harga`, `status`) VALUES
(20, 'VW', 'Ex', '2005', 'B 6', 400000, 'Tersedia'),
(19, 'Daihatsu', 'Vios', '2008', 'B 4', 300000, 'Tersedia'),
(27, '1', '1', '2012', '1', 1, 'Tersedia'),
(21, 'Nwew', 'Sedan', '2012', 'B 3', 60000, 'Tersedia'),
(17, 'Suzuki', 'Eskudo', '2008', 'B 2', 400000, 'Keluar'),
(16, 'Toyota', 'Avanza', '2012', 'B 1 ', 300000, 'Tersedia'),
(22, 'masuk+dari client', 'test', '2012', 'b2', 4000, 'Tersedia'),
(23, 'tes', 'as', '2008', 'B6', 699000, 'Tersedia'),
(24, 'Test Client', 'Client', '2012', 'B 400', 500000, 'Tersedia'),
(25, 'Oke', 'Oke', '2012', 'B 23', 400000, 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjam`
--

CREATE TABLE IF NOT EXISTS `tb_peminjam` (
  `id_peminjam` int(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`id_peminjam`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tb_peminjam`
--

INSERT INTO `tb_peminjam` (`id_peminjam`, `nama`, `alamat`, `telp`, `email`) VALUES
(14, 'Qori', 'Bekasi', '07519400390', 'Qori@gmail.com'),
(13, 'Glenn', 'Cicalengka', '085289388949', 'jksolslopdm'),
(10, 'Ismail', 'Tasik', '081353666345', 'mail.com'),
(17, 'Sidiq', 'Padang	', '085276878499', 'Shidiq.com'),
(18, 'Qoriah Indah Susilow', 'Jl AH Nasution, Cibiru, Bandung', '081317812207', 'Qoriahindah@gmail'),
(20, 'ihsan miftahul huda', 'bandung', '089232033927', 'mask@gmail.com'),
(21, 'ihsan miftahul huda', 'Cibiru', '089232033927', 'mask@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
  `id_transaksi` int(20) NOT NULL AUTO_INCREMENT,
  `peminjam` varchar(20) NOT NULL,
  `nopol` varchar(20) DEFAULT NULL,
  `harga` varchar(20) NOT NULL,
  `tgl_pinjaman` date DEFAULT NULL,
  `tgl_kembali` varchar(20) DEFAULT NULL,
  `lama` varchar(10) DEFAULT NULL,
  `total` varchar(20) DEFAULT NULL,
  `denda` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `peminjam`, `nopol`, `harga`, `tgl_pinjaman`, `tgl_kembali`, `lama`, `total`, `denda`) VALUES
(25, 'ihsan miftahul huda', 'B 2', '400000', '2017-12-16', '2017-12-29', '13', '5200000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `type`) VALUES
(6, 'admin', 'admin', 'admin', 'Admin'),
(3, 'isan', 'isan', 'isan', 'Admin'),
(7, 'staff', 'staff', 'staff', 'Staff'),
(5, 'ihsan', 'ihsan', 'admin', 'Admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
