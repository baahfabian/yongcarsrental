-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2020 at 11:13 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yongcars_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_tb`
--

CREATE TABLE `booking_tb` (
  `id` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `carType` varchar(70) NOT NULL,
  `pickupDate` varchar(30) NOT NULL,
  `dropoffDate` varchar(30) NOT NULL,
  `pickupTime` varchar(30) NOT NULL,
  `status` set('issued','in process','booked','cancelled') NOT NULL DEFAULT 'issued',
  `date_added` varchar(30) NOT NULL DEFAULT current_timestamp(),
  `mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_tb`
--

INSERT INTO `booking_tb` (`id`, `location`, `carType`, `pickupDate`, `dropoffDate`, `pickupTime`, `status`, `date_added`, `mobile`) VALUES
(1, '$location', '$carType', '$pickupDate', '$dropoffDate', '$pickupTime', 'issued', 'current_timestamp()', '$mobile');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_tb`
--
ALTER TABLE `booking_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_tb`
--
ALTER TABLE `booking_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
