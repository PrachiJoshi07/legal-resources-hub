-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2023 at 09:30 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_consultation`
--

INSERT INTO `book_consultation` (`id`, `client_name`, `email`, `state`, `city`, `pincode`, `address`, `day`, `datetime`, `legal_domain`, `problem_description`, `user_id`, `timestamp`) VALUES
(1, 'Om Aditya Jain', 'omadityajain@gmail.com', 'MP', 'Indore', 452009, 'indore', 'Friday', '2023-10-20 12:59:00', 'civil', 'asdfasdf', 1, '2023-10-20 07:29:44'),
(2, 'Om Aditya Jain', 'omadityajain@gmail.com', 'MP', 'Indore', 452009, 'indore', 'Friday', '2023-10-20 12:59:00', 'civil', 'asdfasdf', 1, '2023-10-20 07:29:47'),
(3, 'Om Aditya Jain', 'omadityajain@gmail.com', 'MP', 'Indore', 452009, 'indore', 'Friday', '2023-10-20 12:59:00', 'civil', 'asdfasdf', 1, '2023-10-20 07:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_login`
--

CREATE TABLE `lawyer_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lawyer_login`
--

INSERT INTO `lawyer_login` (`id`, `username`, `password`) VALUES
(1, 'prachiji07@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'prachiji07@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_registration`
--

CREATE TABLE `lawyer_registration` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Year_of_graduation` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Bar_association` varchar(255) NOT NULL,
  `Practice_areas` varchar(255) NOT NULL,
  `Language_spoken` varchar(255) NOT NULL,
  `Bar_license_number` varchar(255) NOT NULL,
  `Avaibility` varchar(255) NOT NULL,
  `Experience_and_qualifications` varchar(255) NOT NULL,
  `Experience_in_years` varchar(255) NOT NULL,
  `Legal_fees` tinyint(4) NOT NULL,
  `Law_firm_name` varchar(255) NOT NULL,
  `About_me` text NOT NULL,
  `Create_password` varchar(255) NOT NULL,
  `Confirm_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `new_lawyer_registration_form`
--

CREATE TABLE `new_lawyer_registration_form` (
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `phone_number` tinyint(255) NOT NULL,
  `experience_in_areas` varchar(255) NOT NULL,
  `practice_areas` varchar(255) NOT NULL,
  `organisation` varchar(255) NOT NULL,
  `create_password` varchar(18) NOT NULL,
  `confirm_password` varchar(18) NOT NULL,
  `id` int(11) NOT NULL,
  `profile_image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_lawyer_registration_form`
--

INSERT INTO `new_lawyer_registration_form` (`full_name`, `email`, `Location`, `phone_number`, `experience_in_areas`, `practice_areas`, `organisation`, `create_password`, `confirm_password`, `id`, `profile_image`) VALUES
('Advocate Shubham Borkar', 'prachiji07@gmail.com', 'Pune, Maharashtra', 127, '5', 'Civil', 'High Court', '202cb962ac59075b96', '456', 1, '1-37 advocate.png'),
('Kushal Mor', 'prachiji07@gmail.com', 'Delhi, India', 127, '3', 'Insurance Claim', 'District Court', '202cb962ac59075b96', '123', 2, '2-Ellipse 18kushal.png');

-- --------------------------------------------------------

--
-- Table structure for table `reply_to_experiences`
--

CREATE TABLE `reply_to_experiences` (
  `id` int(11) NOT NULL,
  `case_id` int(255) NOT NULL,
  `reply` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `share_experiences`
--

CREATE TABLE `share_experiences` (
  `id` int(11) NOT NULL,
  `case_title` varchar(255) NOT NULL,
  `case_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_consultation`
--
ALTER TABLE `book_consultation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lawyer_login`
--
ALTER TABLE `lawyer_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lawyer_registration`
--
ALTER TABLE `lawyer_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_lawyer_registration_form`
--
ALTER TABLE `new_lawyer_registration_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply_to_experiences`
--
ALTER TABLE `reply_to_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_experiences`
--
ALTER TABLE `share_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_consultation`
--
ALTER TABLE `book_consultation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lawyer_login`
--
ALTER TABLE `lawyer_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lawyer_registration`
--
ALTER TABLE `lawyer_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_lawyer_registration_form`
--
ALTER TABLE `new_lawyer_registration_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reply_to_experiences`
--
ALTER TABLE `reply_to_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `share_experiences`
--
ALTER TABLE `share_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
