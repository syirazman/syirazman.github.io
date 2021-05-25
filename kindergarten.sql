-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 06:24 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kindergarten`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `class_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class_name`) VALUES
(1, 'Aman'),
(2, 'Cerdas');

-- --------------------------------------------------------

--
-- Table structure for table `class_activity`
--

CREATE TABLE `class_activity` (
  `id` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `remarks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_activity`
--

INSERT INTO `class_activity` (`id`, `class`, `topic`, `date`, `remarks`) VALUES
(2, 'Aman', 'Testing 1', '2021-06-05', 'dwa');

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran_cikgu`
--

CREATE TABLE `kehadiran_cikgu` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `checkin` varchar(50) DEFAULT NULL,
  `checkout` varchar(50) DEFAULT NULL,
  `total_hours` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kehadiran_cikgu`
--

INSERT INTO `kehadiran_cikgu` (`id`, `users_id`, `date`, `checkin`, `checkout`, `total_hours`) VALUES
(3, 1, '15-05-2021', '07:38:50 AM', '08:02:36 AM', '0 hours, 23 minutes and 46 seconds'),
(4, 2, '15-05-2021', '07:40:08 AM', '08:01:51 AM', '0 hours, 21 minutes and 43 seconds');

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran_pelajar`
--

CREATE TABLE `kehadiran_pelajar` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date_time` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `id` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `no_telefon` varchar(50) DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `ic` varchar(50) DEFAULT NULL,
  `relation_student` varchar(50) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `phone` int(11) NOT NULL,
  `nama_tadika` varchar(50) DEFAULT NULL,
  `no_tadika` varchar(50) DEFAULT NULL,
  `jawatan` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `users_id`, `name`, `email`, `phone`, `nama_tadika`, `no_tadika`, `jawatan`, `alamat`) VALUES
(1, 1, 'Testing', 'testing@gmail.com', 123456789, 'dwa', 'dwaawa', 'Guru', 'Shah Alam'),
(5, 2, 'Testing', 'testing@gmail.com', 123456789, NULL, NULL, 'Guru', 'Shah Alam');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(111) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mykid` varchar(50) DEFAULT NULL,
  `idNo` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `birth` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `guardian` varchar(255) DEFAULT NULL,
  `noic` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `work` varchar(255) DEFAULT NULL,
  `relate` varchar(255) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `date_register` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'processing',
  `kelas` varchar(50) DEFAULT NULL,
  `is_new` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `mykid`, `idNo`, `age`, `dob`, `birth`, `gender`, `nationality`, `religion`, `address`, `city`, `state`, `postal_code`, `guardian`, `noic`, `phone`, `work`, `relate`, `email`, `date_register`, `status`, `kelas`, `is_new`) VALUES
(11, 'ali bin abu', '0100101010', 'asds34465', '5', '13/07/2010', NULL, 'lelaki', 'warganegara', 'Islam', 'jalan ampang', 'ampang', 'Kuala Lumpur', '32100', 'abu bin aman', '661001-10-2032', '013-3456395', 'bersara', NULL, NULL, '17/05/2021', 'processing', NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_level` varchar(1) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_level`) VALUES
(1, 'admin', 'admin', '1'),
(2, 'user', 'user', '2'),
(3, 'test', 'test', '2'),
(14, 'abu', 'abu', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_activity`
--
ALTER TABLE `class_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kehadiran_cikgu`
--
ALTER TABLE `kehadiran_cikgu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kehadiran_pelajar`
--
ALTER TABLE `kehadiran_pelajar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class_activity`
--
ALTER TABLE `class_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kehadiran_cikgu`
--
ALTER TABLE `kehadiran_cikgu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kehadiran_pelajar`
--
ALTER TABLE `kehadiran_pelajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
