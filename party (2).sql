-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2018 at 03:31 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `party`
--

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `party_given` tinyint(1) DEFAULT '1',
  `reason` varchar(20) DEFAULT 'Late',
  `date_of_late` date DEFAULT NULL,
  `faulttype` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`id`, `users_id`, `party_given`, `reason`, `date_of_late`, `faulttype`) VALUES
(1, 1, 0, 'late', '2018-09-04', 'Late'),
(2, 1, 0, 'late', '2018-09-04', 'Late'),
(3, 1, 0, 'late', '2018-09-06', 'Late'),
(4, 3, 1, 'Absent at 01:0pm mee', '2018-09-04', 'Absent'),
(5, 4, 1, 'Absent at 1::00pm me', '2018-09-04', 'Absent'),
(6, 2, 1, 'Late at 10:30am meet', '2018-09-05', 'Late'),
(7, 5, 1, 'Late for gaurav meet', '2018-09-07', 'Late');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `working_status` tinyint(1) NOT NULL DEFAULT '1',
  `email_id` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `user_type` tinyint(1) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `working_status`, `email_id`, `pwd`, `user_type`) VALUES
(1, 'Prabhakar', 1, 'a', 'a', 1),
(2, 'Rahul', 1, 'b', 'b', NULL),
(3, 'Mukul', 1, 'mukul@gmail.com', '123', 2),
(4, 'Rajeev', 1, 'rajeev', '123', 2),
(5, 'Swapnil', 1, 'swapnil', '123', 2),
(6, 'Rinisha', 1, 'rinisha', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `track_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
