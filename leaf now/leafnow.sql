-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2022 at 01:59 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leafnow`
--

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

CREATE TABLE `donate` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `did` int(11) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `productdesc` text NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`username`, `email`, `did`, `productname`, `productdesc`, `price`) VALUES
('Latheesh', 'latheesh@gmail.com', 11100, 'Tropical Hibiscus Plant', 'Type- Flowering Plant(orange).\r\nPlant Placement- Outdoors.\r\nPlant Height- Upto 9 inches.\r\nOrigin- Asia and the Pacific islands.', 1),
('Pavan', 'pavan@gmail.com', 11101, 'Brinjal Seeds', 'Type Of Seed Is Vegetable. Organic Is No. Quantity Is 20 Per Packet. Suitable For Is Outdoor.', 1),
('Rakshith', 'rakshith@gmail.com', 11102, 'mango Plant', 'Type: Fruit\r\nSuitable Location: Outdoor\r\nContainer Type: Plastic Bag\r\nHeight: 150 mm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `productdesc` text NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`username`, `email`, `pid`, `productname`, `productdesc`, `price`) VALUES
('Latheesh', 'latheesh@gmail.com', 100, 'Chillies Seeds', 'Type Of Seed Is Vegitable. \r\nOrganic Is No. Quantity Is 30 Per Packet.\r\nSuitable For Is Outdoor.', 80),
('Pavan', 'pavan@gmail.com', 101, 'Basil Plant', 'Plant Type- Herbal Plant. \r\n Plant Placement- Both Indoors and Outdoors. Plant Height- Upto 8 inches Origin- India.', 200),
('Rakshith', 'rakshith@gmail.com', 102, 'Jackfruit Plant', 'Plant height: 14 - 26-inches.\r\nLight requirements: sun. Soil / water: average', 100);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `User` (`id`, `username`, `email`, `password`) VALUES
(1, 'Latheesh', 'latheesh@gmail.com', 'pbkdf2:sha256:260000$DWLA99GvHBGxLVxw$c1a341ef6ec8eabcc930898c8b6c71e82cbc46b61472c841e59bb841c6fb8317'),
(2, 'Pavan', 'pavan@gmail.com', 'pbkdf2:sha256:260000$IIwTSpWotqiC4mkY$656d0d244d4a5d83f5eff40e8b2a061cb83c463fde6e005647c8363115958ec6'),
(3, 'Rakshith', 'rakshith@gmail.com', 'pbkdf2:sha256:260000$fp8oIL5lfzCyYbBh$edfb2a3284bd101cd88b51d94c73f90d3a966fa6a18179875df8e11454fd1fb6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donate`
--
ALTER TABLE `donate`
  ADD PRIMARY KEY (`did`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donate`
--
ALTER TABLE `donate`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11103;

--
-- AUTO_INCREMENT for table `sell`
--
ALTER TABLE `sell`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
