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
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(14) NOT NULL,
  `user_id` int(14) NOT NULL,
  `activity` varchar(50) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `activity`, `create_at`) VALUES
(1, 2, 'Has Successfully sign in ', '2024-09-06 12:22:43'),
(2, 3, 'Has Successfully sign in ', '2024-09-06 12:26:00'),
(3, 4, 'Has Successfully sign in ', '2024-09-10 01:10:31'),
(4, 5, 'Has Successfully sign in ', '2024-09-10 01:19:11'),
(5, 5, 'Has Successfully sign in ', '2024-09-10 01:24:56'),
(6, 5, 'Has Successfully sign in ', '2024-09-10 01:27:03'),
(7, 5, 'Has Successfully sign in ', '2024-09-10 01:27:41'),
(8, 5, 'Has Successfully Sign In ', '2024-09-10 01:28:55'),
(9, 6, 'Has Successfully Sign In ', '2024-09-10 01:30:44'),
(10, 7, 'Has Successfully Sign In ', '2024-09-10 01:37:18'),
(11, 8, 'Has Successfully Sign In ', '2024-09-25 07:26:42'),
(12, 8, 'Has Successfully Sign In ', '2024-09-25 08:10:25'),
(13, 9, 'Has Successfully Sign In ', '2024-09-25 08:20:40'),
(14, 8, 'Has Successfully Sign In ', '2024-10-06 23:09:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
