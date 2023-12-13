-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2022 at 04:53 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `honda`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_harga`
--

CREATE TABLE `master_harga` (
  `harga_motor` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_harga`
--

INSERT INTO `master_harga` (`harga_motor`) VALUES
(21000000);

-- --------------------------------------------------------

--
-- Table structure for table `master_motor`
--

CREATE TABLE `master_motor` (
  `id_motor` int(3) NOT NULL,
  `nama_motor` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_motor`
--

INSERT INTO `master_motor` (`id_motor`, `nama_motor`) VALUES
(1, 'Scoopy');

-- --------------------------------------------------------

--
-- Table structure for table `master_product`
--

CREATE TABLE `master_product` (
  `id_motor` int(3) NOT NULL,
  `harga_motor` int(60) NOT NULL,
  `stock` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_product`
--

INSERT INTO `master_product` (`id_motor`, `harga_motor`, `stock`) VALUES
(1, 21000000, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_harga`
--
ALTER TABLE `master_harga`
  ADD PRIMARY KEY (`harga_motor`),
  ADD KEY `harga_motor` (`harga_motor`);

--
-- Indexes for table `master_motor`
--
ALTER TABLE `master_motor`
  ADD PRIMARY KEY (`id_motor`),
  ADD KEY `nama_motor` (`nama_motor`);

--
-- Indexes for table `master_product`
--
ALTER TABLE `master_product`
  ADD PRIMARY KEY (`id_motor`),
  ADD KEY `harga_motor` (`harga_motor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_harga`
--
ALTER TABLE `master_harga`
  MODIFY `harga_motor` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21000001;

--
-- AUTO_INCREMENT for table `master_motor`
--
ALTER TABLE `master_motor`
  MODIFY `id_motor` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_product`
--
ALTER TABLE `master_product`
  MODIFY `id_motor` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `master_motor`
--
ALTER TABLE `master_motor`
  ADD CONSTRAINT `master_motor_ibfk_1` FOREIGN KEY (`id_motor`) REFERENCES `master_product` (`id_motor`);

--
-- Constraints for table `master_product`
--
ALTER TABLE `master_product`
  ADD CONSTRAINT `master_product_ibfk_1` FOREIGN KEY (`harga_motor`) REFERENCES `master_harga` (`harga_motor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
