-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2024 at 01:46 AM
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
-- Database: `itelec2`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` enum('not_active','active') NOT NULL DEFAULT 'active',
  `tokencode` varchar(400) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `status`, `tokencode`, `create_at`) VALUES
(2, 'jomarii20', 'jomarii@gmail.com', '20d85d9470c42145d60d74ea35a2f6bf', 'not_active', NULL, '2024-09-06 12:22:01'),
(3, 'jomari20', 'jomari20@gmail.com', '202cb962ac59075b964b07152d234b70', 'not_active', NULL, '2024-09-06 12:25:32'),
(4, 'jomari', 'jomari@gmail.com', '202cb962ac59075b964b07152d234b70', 'not_active', NULL, '2024-09-10 01:10:24'),
(5, 'jomari123', 'jomari123@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'not_active', NULL, '2024-09-10 01:18:59'),
(6, 'jomari1234', 'jomari1234@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'not_active', NULL, '2024-09-10 01:30:17'),
(7, 'dabu', 'dabu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'not_active', NULL, '2024-09-10 01:36:47'),
(8, 'dabu', 'jomss0098@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'active', NULL, '2024-09-25 07:26:29'),
(9, 'jomss', 'jomss098@gmail.com', '202cb962ac59075b964b07152d234b70', 'active', NULL, '2024-09-25 08:11:27'),
(10, 'qwerty', 'testarossa1098@gmail.com', '202cb962ac59075b964b07152d234b70', 'active', NULL, '2024-09-25 08:42:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
