-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2023 at 04:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mhcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient_records`
--

CREATE TABLE `patient_records` (
  `unique_patient_id` int(15) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` date NOT NULL,
  `Address` text NOT NULL,
  `City` text NOT NULL,
  `Province` text NOT NULL,
  `postal_code` text NOT NULL,
  `Phone` text NOT NULL,
  `Email` text NOT NULL,
  `list_of_current_medications` text NOT NULL,
  `list_of_allergies` text NOT NULL,
  `referring_doctor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_records`
--

INSERT INTO `patient_records` (`unique_patient_id`, `first_name`, `last_name`, `gender`, `DOB`, `Address`, `City`, `Province`, `postal_code`, `Phone`, `Email`, `list_of_current_medications`, `list_of_allergies`, `referring_doctor`) VALUES
(12356, 'Sam', 'Appleseed', 'Male', '1960-01-10', '32 Edmonton street', 'Edmonton', 'Quebec', 'S1A 0E7', '+1 204 229 2345', 'samappleseed@outlook.com', 'Advil, Folic Acid, Vit A, Vit D', 'Nut', 'Dr Clarke'),
(54123, 'Dami', 'Oliwaya', 'Female', '2012-07-11', '324 Hill Street', 'London', 'Ontario', 'H6F 4D6', '+1 265 232 5455', 'achdgb@gbamx.com', 'Xynelol', 'peanuts', 'Dr. Ellie Johnson'),
(122678, 'Angel', 'Ricardo', 'Female', '1998-02-21', '123 William Street', 'Shelburne', 'Prince Edward Island', 'W6L 2F1', '+1 312 445 3267', 'angelric@hotmail.com', 'Amoxillin, Loratidine, Lexapro', 'none', 'Dr Mellisa');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `staff_id` int(128) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `staff_id`, `password`) VALUES
(1, '', 102227, '$2y$10$8gWcOVM0PidNOZ4ENEkiT.4pp3IrgBy2D0tcFdHZKPQL3qzy7tWLC'),
(2, '', 102220314, '$2y$10$2UHEyyXwOaESyeNNkpMes.3Mndwnkm0G3Xd/XQq8OVt1GkjBOeN2e'),
(7, '', 102227, '$2y$10$nbo6cKUIGk5xDyExwJoYyuzs/V6W0QjIZ9ebTTurVZByaukn0EkAq'),
(8, '', 102227, '$2y$10$W6c0CCnS9fEejB8.0HDlwu7aX4dOlEpRdEi5NavcW7DuqBIfEQKna'),
(9, '', 102227, '$2y$10$.4ir5JvWNk2QPr9/VgCD1.W9goAqjAW3rbdn3rG/0cBVv4tp9gW0K'),
(10, '', 100021541, '$2y$10$VUwuvyFNLIe3dZeY4VHG6uBSXOVgS8E.qxfeat46hN6KjdnG8eK9u'),
(11, '', 1001214, '$2y$10$x5wC4zD2zIwDvP6JIJcLw.igSyOGHP/.4ibpaKjpP92QcOQsTzPNq'),
(12, '', 10045412, '$2y$10$pcgpYoFbep4x3VYtf7pLIu9T4fCGx1YHbb40vnE8ZtbN9Ut8aNL1i'),
(13, 'John Doe', 123456, '$2y$10$iJ8MwNC/FJLxghxM/M5zk.fRS2Ccflhu0oP5QwA0ck4igTZr/qd5S');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient_records`
--
ALTER TABLE `patient_records`
  ADD PRIMARY KEY (`unique_patient_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient_records`
--
ALTER TABLE `patient_records`
  MODIFY `unique_patient_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122679;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
