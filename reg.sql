-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2024 at 06:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reg`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_stu`
--

CREATE TABLE `add_stu` (
  `sno` int(100) NOT NULL,
  `name` varchar(30) NOT NULL,
  `roll` int(100) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT '655b1f3230d3eprofile.png',
  `stu_eml` varchar(30) NOT NULL,
  `tea_eml` varchar(30) NOT NULL,
  `2024-07-28` varchar(100) NOT NULL,
  `2024-07-29` varchar(100) NOT NULL,
  `2024-07-22` varchar(100) NOT NULL,
  `2024-07-30` varchar(100) NOT NULL,
  `2024-07-24` varchar(100) NOT NULL,
  `2024-07-31` varchar(100) NOT NULL,
  `2024-07-25` varchar(100) NOT NULL,
  `2024-08-27` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_stu`
--

INSERT INTO `add_stu` (`sno`, `name`, `roll`, `img`, `stu_eml`, `tea_eml`, `2024-07-28`, `2024-07-29`, `2024-07-22`, `2024-07-30`, `2024-07-24`, `2024-07-31`, `2024-07-25`, `2024-08-27`) VALUES
(50, 'Tushar Mal', 32, '655b1f3230d3eprofile.png', 'tusharmal711@gmail.com', 'uttammal@gmail.com', '', '', '', '', '', '', '', ''),
(53, 'Tushar Mal', 32, '655b1f3230d3eprofile.png', 'tusharmal711@gmail.com', 'sau446715@gmail.com', '', '', '', '', '', '', '', ''),
(58, 'Tula Bhukta', 31, '655b1f3230d3eprofile.png', 'tulabhukta@gmail.com', 'tusharmal711@gmail.com', 'present', 'present', '', '', '', '', '', 'present'),
(59, 'Arijit Adhikari', 6, '655b1f3230d3eprofile.png', 'adhikariarij@gmail.com', 'tusharmal711@gmail.com', 'present', 'absent', '', '', '', '', '', 'absent'),
(64, 'Tushar Mal', 32, '655b1f3230d3eprofile.png', 'tusharmal711@gmail.com', 'adhikariarij@gmail.com', '', '', '', 'present', '', 'present', '', ''),
(65, 'Tula Bhukta', 31, '655b1f3230d3eprofile.png', 'tulabhukta@gmail.com', 'adhikariarij@gmail.com', '', 'present', '', 'absent', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `date`
--

CREATE TABLE `date` (
  `sno` int(100) NOT NULL,
  `tea_eml` varchar(30) NOT NULL,
  `adate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `date`
--

INSERT INTO `date` (`sno`, `tea_eml`, `adate`) VALUES
(39, 'tusharmal711@gmail.com', '2024-07-28'),
(40, 'tusharmal711@gmail.com', '2024-07-29'),
(41, 'adhikariarij@gmail.com', '2024-07-31'),
(42, 'adhikariarij@gmail.com', '2024-07-29'),
(43, 'adhikariarij@gmail.com', '2024-07-30'),
(44, 'tusharmal711@gmail.com', '2024-08-27');

-- --------------------------------------------------------

--
-- Table structure for table `mob`
--

CREATE TABLE `mob` (
  `sno` int(100) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mob`
--

INSERT INTO `mob` (`sno`, `mobile`, `date`) VALUES
(1, 9641539525, '2024-07-24'),
(8, 9641539527, '2024-07-24'),
(9, 9641539527, '2024-07-24');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `sno` int(100) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `college_name` varchar(50) NOT NULL,
  `attendence_class` varchar(20) NOT NULL,
  `department` varchar(60) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `session` int(4) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT '655b1f3230d3eprofile.png',
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`sno`, `first_name`, `last_name`, `email`, `mobile`, `college_name`, `attendence_class`, `department`, `subject`, `session`, `password`, `image`, `date`) VALUES
(65, 'TUSHAR', 'MAL', 'tusharmal711@gmail.com', 9641539527, 'TARAKESWAR DEGREE COLLEGE', 'Sem-6', 'computer science', 'Artificial Intelligence', 2024, '$2y$10$xr0UYF.NI36.0WO6JjQVf.tw87MWgv0fv2lHT5FLq6VljFQDEo/AK', '66a5ab8c18914istockphoto-1065068246-170667a.jpg', '2024-07-28'),
(66, 'ARIJIT', 'ADHIKARI', 'adhikariarij@gmail.com', 9641539527, 'TARAKESWAR DEGREE COLLEGE', 'Sem-6', 'computer science', 'AI', 2024, '$2y$10$zsXYQoQBDDE9YZJkoQNF5OfVkVkrt.GRTXYzRhJ2Tgs30uhZW0sUW', '66a78ba5cbb2fWhatsApp Image 2022-04-14 at 11.03.49.jpeg', '2024-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `stu_login`
--

CREATE TABLE `stu_login` (
  `sno` int(100) NOT NULL,
  `tea_eml` varchar(30) NOT NULL,
  `stu_eml` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stu_login`
--

INSERT INTO `stu_login` (`sno`, `tea_eml`, `stu_eml`, `password`) VALUES
(50, 'uttammal@gmail.com', 'tusharmal711@gmail.com', 'AE@@sU'),
(53, 'sau446715@gmail.com', 'tusharmal711@gmail.com', '#q@@sc'),
(58, 'tusharmal711@gmail.com', 'tulabhukta@gmail.com', '#Y34R@'),
(59, 'tusharmal711@gmail.com', 'adhikariarij@gmail.com', 'p@LF#i'),
(64, 'adhikariarij@gmail.com', 'tusharmal711@gmail.com', '0#v@3#'),
(65, 'adhikariarij@gmail.com', 'tulabhukta@gmail.com', '1DlJ#z');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_login`
--

CREATE TABLE `teacher_login` (
  `sno` int(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_stu`
--
ALTER TABLE `add_stu`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `mob`
--
ALTER TABLE `mob`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `stu_login`
--
ALTER TABLE `stu_login`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_stu`
--
ALTER TABLE `add_stu`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `date`
--
ALTER TABLE `date`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `mob`
--
ALTER TABLE `mob`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `stu_login`
--
ALTER TABLE `stu_login`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
