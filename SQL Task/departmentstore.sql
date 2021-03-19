-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2021 at 11:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `departmentstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerName` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customerID`, `customerName`) VALUES
(1, 1, 'Alfreds Futterkiste'),
(2, 2, 'Ana Trujillo'),
(3, 3, 'Antonio Moreno'),
(4, 4, 'Ernst Handel'),
(5, 5, 'Thomas Hardy'),
(6, 6, 'Victoria Ashworth');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `categoryID` varchar(6) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `productID`, `productName`, `categoryID`, `price`) VALUES
(1, 1, 'kaos DEUS', 'male', '280000'),
(2, 2, 'belt Quicksilver', 'male', '120000'),
(3, 3, 'sandal CARVIL', 'male', '127000'),
(4, 4, 'Slip On Cotton On', 'female', '147500'),
(5, 5, 'Bag Moschino', 'female', '348000');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `orderDate` datetime NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `orderID`, `customerID`, `orderDate`, `productID`, `qty`) VALUES
(1, 13121, 6, '2021-03-01 04:12:05', 4, 2),
(3, 13122, 4, '2021-03-01 17:52:00', 5, 1),
(5, 13132, 1, '2021-03-19 10:30:00', 1, 1),
(6, 13133, 1, '2021-03-12 10:40:00', 2, 1),
(7, 13134, 2, '2021-03-09 13:00:00', 2, 2),
(8, 13135, 2, '2021-03-09 12:14:00', 3, 1),
(9, 13135, 1, '2021-03-19 10:10:00', 3, 1),
(10, 13136, 1, '2021-03-19 10:20:00', 2, 1),
(11, 13137, 3, '2021-03-10 20:06:00', 1, 2),
(13, 13138, 4, '2021-03-07 16:15:00', 4, 3),
(14, 13139, 5, '2021-03-02 23:07:00', 5, 1),
(15, 13139, 6, '2021-03-01 18:07:00', 5, 3),
(16, 13140, 5, '2021-03-09 09:08:00', 4, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
