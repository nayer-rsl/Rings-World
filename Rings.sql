-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql200.byetcluster.com
-- Generation Time: Feb 21, 2022 at 10:28 PM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_29719926_OnlineShop`
--

-- --------------------------------------------------------

--
-- Table structure for table `Rings`
--

CREATE TABLE `Rings` (
  `id` int(11) NOT NULL,
  `name` varchar(4) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `size` varchar(30) NOT NULL,
  `price` int(5) NOT NULL,
  `sale` char(1) DEFAULT NULL,
  `material` varchar(50) NOT NULL,
  `outStock` char(1) DEFAULT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Rings`
--

INSERT INTO `Rings` (`id`, `name`, `description`, `image`, `size`, `price`, `sale`, `material`, `outStock`, `url`) VALUES
(1, 'V101', 'Valentine Collection three heart ring', 'jesus-eca-q3XlqdHb-fg-unsplash.jpg', 'XXS - XS - S - M - L', 160, 'Y', '18K Yellow Gold', NULL, '#'),
(2, 'V102', 'Valentine Collection Poesia eres tu ring', 'laurissi-4RkSsYzxTps-unsplash.jpg', 'XXS - XS - S - M - L', 160, NULL, '18K Yellow Gold', 'Y', '#'),
(3, 'B101', 'Braided Collection diamond ring', 'sabrianna-Fux05TApirY-unsplash.jpg', 'XXS - XS - S - M', 200, 'Y', 'Sterling Silver', 'Y', '#'),
(4, 'V103', 'Valentine Collection Black heart ring', 'valeriia-miller-M3ff0pvbQoU-unsplash.jpg', 'XXS - XS - S - M - L', 150, NULL, '18K White Gold', NULL, '#'),
(5, 'B102', 'Braided Collection diamond ring', 'sabrianna-3jReOOzIQPI-unsplash.jpg', 'XS - S - M -L', 200, 'Y', '18K Rose Gold', NULL, '#'),
(11, 'W101', 'Wedding Collection diamond ring', 'sabrianna-JXiLc_hp9kI-unsplash.jpg', 'XXS - XS - S - M - L - XL', 300, 'Y', '18K White Gold', NULL, '#'),
(12, 'N101', 'Nature Collection ring', 'nixir-SbkdDjysoVQ-unsplash.jpg', 'XS - S - M - L - XL - XXL', 180, 'Y', 'Sterling Silver', NULL, '#'),
(16, 'N102', 'Nature Collection ring', 'amy-lewis-x-6KMcRNfCA-unsplash.jpg', 'XS-S-M-L', 200, 'Y', '18K Yellow Gold', 'Y', '#');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Rings`
--
ALTER TABLE `Rings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Rings`
--
ALTER TABLE `Rings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
