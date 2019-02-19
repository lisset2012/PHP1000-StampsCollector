-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2019 at 10:44 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stamps2`
--

-- --------------------------------------------------------

--
-- Table structure for table `stamp`
--

CREATE TABLE `stamp` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `album` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `collection` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stamp`
--

INSERT INTO `stamp` (`id`, `name`, `album`, `year`, `description`, `collection`, `size`, `quantity`, `register_date`) VALUES
(18, '', 'Noruega', 1502, 'Stamp de Noruega', 'Lisset', '25 x 12 mm', 1, '2019-02-18 23:54:09'),
(19, '', 'stamp5', 0, '1589', 'Stamp de Corea', 'Yosako', 25, '2019-02-19 00:05:04'),
(20, '', 'stamp6', 0, '1699', 'Stamp de China', 'Chi Chung', 54, '2019-02-19 00:10:48'),
(21, '', 'stamp7', 0, '1987', 'Stamp de Nigeria', 'Ngango', 21, '2019-02-19 01:56:33'),
(22, '', 'Cuba', 1524, 'La mas hermosa de Cuba', 'Lisset', '25 x 12 mm', 1, '2019-02-19 18:56:03'),
(23, '', 'Cuba', 1569, 'Stamp de Noruega', 'Yosako', '21 x 36 mm', 1, '2019-02-19 19:43:21'),
(24, '', 'Mexico', 1694, 'De Francia', 'Yosako', '54 x 21 mm', 6, '2019-02-19 20:29:28'),
(25, 'name', 'Cuba', 1234, 'La mas hermosa de Cuba', 'Lisset', '25 x 12 mm', 1, '2019-02-19 20:46:04'),
(27, 'stamp777', 'Cuba', 1236, 'La mas hermosa de Cuba', 'Lisset', '25 x 12 mm', 1, '2019-02-19 21:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'salvi', 'b4af804009cb036a4ccdc33431ef9ac9', 'salvi@techlaunch.io');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stamp`
--
ALTER TABLE `stamp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stamp`
--
ALTER TABLE `stamp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
