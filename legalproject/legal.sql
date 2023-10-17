-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 09:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `legal`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_consultation`
--

CREATE TABLE `book_consultation` (
  `id` int(11) NOT NULL,
  `client_name` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `state` varchar(1000) NOT NULL,
  `city` varchar(1000) NOT NULL,
  `pincode` int(10) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `day` varchar(20) NOT NULL,
  `datetime` datetime NOT NULL,
  `legal_domain` varchar(1000) NOT NULL,
  `problem_description` mediumtext NOT NULL,
  `user_id` int(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_consultation`
--

INSERT INTO `book_consultation` (`id`, `client_name`, `email`, `state`, `city`, `pincode`, `address`, `day`, `datetime`, `legal_domain`, `problem_description`, `user_id`, `timestamp`) VALUES
(1, 'Om Aditya Jain', 'omadityajain@gmail.com', 'MP', 'Indore', 6598526, 'Dwarkapuri', 'Tuesday', '2023-10-17 12:29:00', 'Insurance Claim', 'This is a testing description', 1, '2023-10-17 06:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_consultation`
--
ALTER TABLE `book_consultation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_consultation`
--
ALTER TABLE `book_consultation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
