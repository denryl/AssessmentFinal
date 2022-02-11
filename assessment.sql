-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2022 at 07:52 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `appform`
--

CREATE TABLE `appform` (
  `id` int(11) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `number` int(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `quantity` int(50) NOT NULL,
  `price` int(50) NOT NULL,
  `total` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `payments` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `pprice` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `itemcode` varchar(30) NOT NULL,
  `itemcategory` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pname`, `pprice`, `quantity`, `itemcode`, `itemcategory`) VALUES
(11, 'V', 1999, 200, '62903ad7-145f-4603-a855-c7847a', 'T-shirts'),
(12, 'Jungkook', 1999, 1000, 'd6c6af00-1225-4375-9840-449b3a', 'Key Chain'),
(13, 'Park Ji-min', 1999, 1000, '5de5103e-fca0-423e-85f0-44d878', 'T-shirt'),
(14, 'Suga', 1999, 30, '73b27f54-437a-4f79-8637-adb659', 'Bag'),
(15, 'Jin ', 300, 100, 'badfede2-d7cc-4d66-848c-5d8453', 'Mugs'),
(16, 'RM', 350, 0, '6b9e2244-7fee-40d5-9c1e-78f4da', 'Cap'),
(17, 'J-Hope', 200, 500, '12510f65-c653-4481-a5ac-0328d8', 'Tote Bag'),
(18, 'Jungkook', 350, 22, '2dc6b5c3-7a7d-404d-89b9-377b44', 'Tote Bag'),
(19, 'Jungkook', 250, 0, 'b1970499-45c0-4d1a-a3c8-495c18', 'Tumbler');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `transactionid` varchar(100) NOT NULL,
  `pid` varchar(100) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `date` varchar(100) NOT NULL,
  `mop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `transactionid`, `pid`, `uid`, `quantity`, `status`, `date`, `mop`) VALUES
(1, '6edaa366-2959-4fb2-884e-fce4c8c54104', '1', '2', 1, 'delivered', 'undefined', 'undefined'),
(2, '6edaa366-2959-4fb2-884e-fce4c8c54104', '2', '2', 1, 'delivered', 'undefined', 'undefined'),
(3, '6edaa366-2959-4fb2-884e-fce4c8c54104', '3', '2', 1, 'delivered', 'undefined', 'undefined'),
(4, '6edaa366-2959-4fb2-884e-fce4c8c54104', '4', '2', 1, 'delivered', 'undefined', 'undefined');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `contactno` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fname`, `lname`, `contactno`, `email`, `role`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 909123321, 'admin@gmail.com', 'admin'),
(2, 'denryl', '321', 'denryl', 'brina', 90909123, 'denryl@gmail.com', 'guest'),
(3, 'april', '123', 'april', 'april', 2147483647, 'paul@gmail.com', 'guest'),
(4, 'may', '123', 'may', 'may', 909090909, 'grem@gmail.com', 'guest'),
(5, 'buot', '123', 'buot', 'buot', 36541654, 'buot@gmail.com', 'guest');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appform`
--
ALTER TABLE `appform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
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
-- AUTO_INCREMENT for table `appform`
--
ALTER TABLE `appform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
