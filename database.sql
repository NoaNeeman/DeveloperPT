-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2021 at 02:30 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `cnt_id` smallint(6) NOT NULL,
  `cnt_code` int(11) DEFAULT NULL,
  `cnt_title` varchar(100) DEFAULT NULL,
  `cnt_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`cnt_id`, `cnt_code`, `cnt_title`, `cnt_created`) VALUES
(1, 61, 'Australia', '2021-09-13 14:02:37'),
(2, 55, 'Brazil', '2021-09-13 14:02:37'),
(3, 1, 'Canada', '2021-09-13 14:02:37'),
(4, 86, 'China', '2021-09-13 14:02:37'),
(5, 45, 'Denmark', '2021-09-13 14:02:37'),
(6, 358, 'Finland', '2021-09-13 14:02:37'),
(7, 33, 'France', '2021-09-13 14:02:37'),
(8, 30, 'Greece', '2021-09-13 14:02:37'),
(9, 36, 'Hungary', '2021-09-13 14:02:37'),
(10, 972, 'Israel', '2021-09-13 14:02:38'),
(11, 39, 'Italy', '2021-09-13 14:02:38'),
(12, 81, 'Japan', '2021-09-13 14:02:38'),
(13, 7, 'Russia', '2021-09-13 14:02:38'),
(14, 82, 'South Korea', '2021-09-13 14:02:38'),
(15, 1, 'United States', '2021-09-13 14:02:38'),
(16, 84, 'Vietnam', '2021-09-13 14:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `numbers`
--

CREATE TABLE `numbers` (
  `num_id` smallint(6) NOT NULL,
  `cnt_id` smallint(6) DEFAULT NULL,
  `num_number` int(11) DEFAULT NULL,
  `num_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `numbers`
--

INSERT INTO `numbers` (`num_id`, `cnt_id`, `num_number`, `num_created`) VALUES
(1, 10, 546832435, '2021-01-14 22:42:59'),
(2, 1, 512212432, '2021-02-17 22:42:59'),
(3, 6, 534534441, '2021-02-12 22:42:59'),
(4, 3, 538881237, '2021-03-15 22:42:59'),
(5, 5, 524653111, '2021-03-18 22:42:59'),
(6, 8, 599138865, '2021-03-24 22:42:59'),
(7, 8, 501479931, '2021-04-11 22:42:59'),
(8, 9, 546832435, '2021-04-12 22:42:59'),
(9, 13, 52135997, '2021-04-19 22:42:59'),
(10, 12, 522162929, '2021-05-25 22:42:59'),
(11, 12, 587469631, '2021-05-26 22:42:59'),
(12, 15, 524853332, '2021-05-28 22:42:59'),
(13, 16, 576935779, '2021-06-02 22:42:59'),
(14, 14, 502222930, '2021-06-04 22:42:59'),
(15, 14, 587902930, '2021-07-07 22:42:59'),
(16, 7, 542882932, '2021-07-13 22:42:59'),
(17, 2, 548836735, '2021-07-16 22:42:59'),
(18, 7, 521689660, '2021-07-19 22:42:59'),
(19, 5, 596732424, '2021-08-24 22:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `send_log`
--

CREATE TABLE `send_log` (
  `log_id` smallint(6) NOT NULL,
  `usr_id` smallint(6) DEFAULT NULL,
  `num_id` smallint(6) DEFAULT NULL,
  `log_message` varchar(500) DEFAULT NULL,
  `log_success` bit(1) DEFAULT NULL,
  `log_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `send_log`
--

INSERT INTO `send_log` (`log_id`, `usr_id`, `num_id`, `log_message`, `log_success`, `log_created`) VALUES
(1, 1, 10, 'Command-line option was invalid', b'1', '2021-04-03 12:40:19'),
(2, 1, 16, 'Command-line option was invalid', b'0', '2021-04-03 15:42:18'),
(3, 2, 17, 'Request failed because assembly ID was unknown', b'1', '2021-04-07 12:11:51'),
(5, 3, 2, 'Request failed because assembly ID was unknown', b'0', '2021-04-07 12:42:59'),
(6, 4, 2, 'Error occurred during file processing', b'1', '2021-04-18 15:32:19'),
(7, 4, 1, 'Could not create child process', b'1', '2021-04-23 12:46:56'),
(8, 5, 3, 'File transfer failed', b'1', '2021-05-13 19:12:59'),
(9, 6, 4, 'Filter profile used undefined counter name', b'0', '2021-05-13 13:12:19'),
(10, 6, 4, 'Could not create child process', b'0', '2021-05-13 22:22:52'),
(11, 5, 8, 'Error occurred during file processing', b'1', '2021-05-20 20:12:12'),
(12, 4, 5, 'Could not create child process because of limit', b'0', '2021-05-25 11:12:19'),
(13, 3, 6, 'Could not create child process because of limit', b'0', '2021-05-27 21:55:59'),
(14, 6, 7, 'Filter profile used undefined counter name', b'1', '2021-06-01 04:12:55'),
(15, 7, 9, 'Error occurred during file processing', b'1', '2021-06-04 12:12:19'),
(16, 8, 12, 'Memory allocation failed', b'1', '2021-06-10 11:11:19'),
(17, 8, 13, 'System log tag or regular expression', b'1', '2021-06-16 03:42:59'),
(18, 1, 16, 'Memory allocation failed', b'0', '2021-06-18 22:42:59'),
(19, 2, 15, 'Record format does not match accounting profile', b'1', '2021-06-20 12:42:59'),
(20, 2, 14, 'Record format does not match accounting profile', b'0', '2021-06-22 11:12:19'),
(21, 6, 12, 'Memory allocation failed', b'1', '2021-06-24 12:40:19'),
(22, 4, 12, 'Could not create child process', b'0', '2021-06-25 12:41:32'),
(23, 3, 13, 'Request failed because assembly ID was unknown', b'1', '2021-06-26 22:42:59'),
(24, 3, 10, 'Command-line option was invalid', b'0', '2021-07-06 12:11:51'),
(25, 7, 4, 'Request failed because assembly ID was unknown', b'1', '2021-07-17 12:46:56'),
(26, 8, 8, 'Memory allocation failed', b'0', '2021-08-02 11:12:19'),
(27, 5, 14, 'Error occurred during file processing', b'0', '2021-08-05 12:40:19'),
(28, 2, 17, 'Error occurred during file processing', b'0', '2021-08-05 13:10:56'),
(29, 6, 18, 'Could not create child process because of limit', b'1', '2021-08-05 14:12:58'),
(30, 8, 19, 'File transfer failed', b'1', '2021-09-01 03:42:59'),
(31, 2, 16, 'File transfer failed', b'1', '2021-09-01 23:10:56'),
(32, 1, 10, 'Attempt to transfer file failed', b'0', '2021-09-05 12:11:51'),
(33, 7, 11, 'Memory allocation failed', b'1', '2021-09-07 04:12:55'),
(34, 7, 6, 'Attempt to transfer file failed', b'1', '2021-09-09 22:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usr_id` smallint(6) NOT NULL,
  `usr_name` varchar(50) DEFAULT NULL,
  `usr_active` bit(1) DEFAULT NULL,
  `usr_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usr_id`, `usr_name`, `usr_active`, `usr_created`) VALUES
(1, 'Noa', b'1', '2020-06-11 02:16:15'),
(2, 'Shir', b'1', '2020-06-15 10:10:11'),
(3, 'Linor', b'1', '2020-07-21 21:12:12'),
(4, 'Koral', b'0', '2020-08-04 09:11:11'),
(5, 'Tomer', b'0', '2020-08-16 17:18:03'),
(6, 'Maya', b'1', '2020-09-02 08:15:12'),
(7, 'Rose', b'1', '2020-09-07 15:10:03'),
(8, 'Neta', b'0', '2020-09-12 22:18:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`cnt_id`);

--
-- Indexes for table `numbers`
--
ALTER TABLE `numbers`
  ADD PRIMARY KEY (`num_id`),
  ADD KEY `fk_cnt_id` (`cnt_id`);

--
-- Indexes for table `send_log`
--
ALTER TABLE `send_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `fk_usr_id` (`usr_id`),
  ADD KEY `fk_num_id` (`num_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `cnt_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `numbers`
--
ALTER TABLE `numbers`
  MODIFY `num_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `send_log`
--
ALTER TABLE `send_log`
  MODIFY `log_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usr_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `numbers`
--
ALTER TABLE `numbers`
  ADD CONSTRAINT `fk_cnt_id` FOREIGN KEY (`cnt_id`) REFERENCES `countries` (`cnt_id`);

--
-- Constraints for table `send_log`
--
ALTER TABLE `send_log`
  ADD CONSTRAINT `fk_num_id` FOREIGN KEY (`num_id`) REFERENCES `numbers` (`num_id`),
  ADD CONSTRAINT `fk_usr_id` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
