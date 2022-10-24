-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 02:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gambar`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `account` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `birth` date NOT NULL,
  `pw` varchar(100) DEFAULT NULL,
  `tipe` varchar(10) DEFAULT NULL,
  `photo` varchar(100) DEFAULT 'akun.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `username`, `account`, `name`, `birth`, `pw`, `tipe`, `photo`) VALUES
(1, 'admin1', 'admin@gmail.com', 'admin1', '2000-07-04', '1234', 'admin', 'akun.png'),
(2, 'UserBayu', 'user@gmail.com', 'Bayu Abdurrosyid', '2003-03-29', '1234', 'user', 'images (20)-picsay.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `url` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `url`, `date`, `title`, `image`) VALUES
(9, 'https://factsofindonesia.com/native-animals-in-indonesia-2', '2022-10-20', 'Meet These 9 Native Animals in Indonesia', 'n5.jpg'),
(10, 'https://authentic-indonesia.com/blog/10-top-family-holiday-destinations-in-indonesia', '2022-10-20', '10 Top Family Holiday Destinations in Indonesia', 'n4.jpg'),
(11, 'https://www.narcity.com/16-bucket-list-thing-to-do-in-bali-for-the-most-epic-trip-ever', '2022-10-20', '16 Bucket List Things To Do In Bali For The Most Epic Trip Ever', 'n3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
