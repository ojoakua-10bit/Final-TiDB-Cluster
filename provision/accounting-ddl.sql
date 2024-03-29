-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2019 at 10:10 AM
-- Server version: 10.3.14-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accounting_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `pendapatan`
--

CREATE TABLE `pendapatan` (
  `pend_id` int(11) NOT NULL,
  `resto_id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pend_tgl` date NOT NULL,
  `pend_desc` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pend_jumlah` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `peng_id` int(11) NOT NULL,
  `resto_id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peng_tgl` date NOT NULL,
  `peng_desc` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peng_jumlah` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pendapatan`
--
--ALTER TABLE `pendapatan`
--  ADD PRIMARY KEY (`pend_id`);

--
-- Indexes for table `pengeluaran`
--
--ALTER TABLE `pengeluaran`
--  ADD PRIMARY KEY (`peng_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pendapatan`
--
--ALTER TABLE `pendapatan`
--  MODIFY `pend_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
--ALTER TABLE `pengeluaran`
--  MODIFY `peng_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
