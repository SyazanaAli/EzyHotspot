-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2019 at 09:45 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezyhotspot`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `secret_key` varchar(100) NOT NULL,
  `pass_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `secret_key`, `pass_key`) VALUES
(1, 'admin', 'admin123'),
(2, 'zana', 'zana123');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `mac` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `block_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`mac`, `host`, `joined`, `block_status`) VALUES
('1C2-4F91-8D0A-0FAE4F', 'Aliff-pc', '2019-02-24 00:48:17', 'B'),
('48-a9-1c-21-5c-20', ' iPhone\n', '2019-05-21 16:50:28', 'A'),
('4c-dd-31-3f-48-b0', 'Akmal-pc', '2019-02-25 01:04:23', 'A'),
('51C2-4F91-8D0A-0FAE4F57CFCB', 'Hacker-pc', '2019-02-24 00:48:17', 'B'),
('54-27-1e-a3-39-49', ' Delz\n', '2019-03-14 08:58:25', 'B'),
('8c-bf-a6-a3-6c-69', ' android-8af2be28ac79118\n', '2019-05-21 16:59:34', 'B'),
('F91-4F91-8D0A-0FAE4F', 'Samad-pc', '2019-05-21 16:38:00', 'A'),
('GDF-4F91-8D0A-0FAE4F', 'Siti-pc', '2019-05-21 16:38:00', 'A'),
('stat', ' iPhone\n', '2019-05-21 16:50:29', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `client_note`
--

CREATE TABLE `client_note` (
  `id` int(11) NOT NULL,
  `client` varchar(255) NOT NULL,
  `session` int(11) NOT NULL,
  `ipaddress` varchar(100) NOT NULL,
  `usage_limit` time DEFAULT NULL,
  `duration_limit` varchar(100) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_note`
--

INSERT INTO `client_note` (`id`, `client`, `session`, `ipaddress`, `usage_limit`, `duration_limit`, `date`) VALUES
(13, '1C2-4F91-8D0A-0FAE4F', 31, '192.168.137.8', '14:50:00', '0', '2019-03-15 01:38:40'),
(23, '51C2-4F91-8D0A-0FAE4F57CFCB', 31, '192.168.137.85', '00:00:00', '0', '2019-03-16 11:27:33'),
(24, '54-27-1e-a3-39-49', 31, '192.168.137.164', '21:12:20', '10', '2019-03-16 12:54:15'),
(31, '4c-dd-31-3f-48-b0', 31, '192.168.137.118', '00:00:00', '0', '2019-05-15 05:23:33'),
(32, 'GDF-4F91-8D0A-0FAE4F', 36, '192.168.50.190', '00:00:00', '0', '2019-05-21 16:40:40'),
(33, 'F91-4F91-8D0A-0FAE4F', 36, '192.168.50.130', '00:00:00', '0', '2019-05-21 16:40:40'),
(36, '48-a9-1c-21-5c-20', 37, '192.168.137.149', '00:00:00', '0', '2019-05-21 16:50:30'),
(37, 'stat', 37, '192.168.137.149', '00:00:00', '0', '2019-05-21 16:50:31'),
(38, '8c-bf-a6-a3-6c-69', 37, '192.168.137.244', '00:00:00', '0', '2019-05-21 16:59:36'),
(39, '8c-bf-a6-a3-6c-69', 38, '192.168.137.158', '00:00:00', '0', '2019-05-24 01:59:42'),
(40, 'stat', 38, '192.168.137.158', '00:00:00', '0', '2019-05-24 01:59:43'),
(43, '8c-bf-a6-a3-6c-69', 40, '192.168.137.104', '00:00:00', '0', '2019-05-24 02:12:10'),
(44, 'stat', 40, '192.168.137.104', '00:00:00', '0', '2019-05-24 02:12:10'),
(45, '8c-bf-a6-a3-6c-69', 41, '192.168.137.154', '10:31:35', '10', '2019-05-24 02:21:06'),
(46, 'stat', 41, '192.168.137.154', '00:00:00', '0', '2019-05-24 02:21:06'),
(47, '8c-bf-a6-a3-6c-69', 44, '192.168.137.9', '00:00:00', '0', '2019-05-24 03:37:45'),
(48, 'stat', 44, '192.168.137.9', '00:00:00', '0', '2019-05-24 03:37:45'),
(52, '48-a9-1c-21-5c-20', 52, '192.168.137.96', '00:00:00', '0', '2019-05-26 17:16:55'),
(53, 'stat', 52, '192.168.137.96', '00:00:00', '0', '2019-05-26 17:16:55'),
(54, '8c-bf-a6-a3-6c-69', 52, '192.168.137.236', '00:00:00', '0', '2019-05-26 17:17:00'),
(55, '48-a9-1c-21-5c-20', 53, '192.168.137.48', '02:58:30', '0', '2019-05-26 18:55:05'),
(56, 'stat', 53, '192.168.137.48', '00:00:00', '0', '2019-05-26 18:55:05'),
(57, '48-a9-1c-21-5c-20', 54, '192.168.137.40', '00:00:00', '0', '2019-05-27 00:27:13'),
(58, 'stat', 54, '192.168.137.40', '00:00:00', '0', '2019-05-27 00:27:16'),
(59, '8c-bf-a6-a3-6c-69', 56, '192.168.137.168', '11:07:15', '0', '2019-05-27 03:04:17'),
(60, 'stat', 56, '192.168.137.168', '00:00:00', '0', '2019-05-27 03:04:17'),
(61, '48-a9-1c-21-5c-20', 57, '192.168.137.253', '00:00:00', '0', '2019-06-23 12:27:52'),
(62, 'stat', 57, '192.168.137.253', '00:00:00', '0', '2019-06-23 12:27:52'),
(63, '48-a9-1c-21-5c-20', 60, '192.168.137.164', '02:53:52', '0', '2019-06-23 18:49:50'),
(64, 'stat', 60, '192.168.137.164', '00:00:00', '0', '2019-06-23 18:49:50'),
(65, '48-a9-1c-21-5c-20', 61, '192.168.137.35', '00:00:00', '0', '2019-06-24 01:00:52'),
(66, 'stat', 61, '192.168.137.35', '00:00:00', '0', '2019-06-24 01:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `proxy`
--

CREATE TABLE `proxy` (
  `id` int(11) NOT NULL,
  `DNS` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proxy`
--

INSERT INTO `proxy` (`id`, `DNS`, `date`) VALUES
(1, 'www.utem.edu.my', '2019-05-21 16:41:30'),
(3, 'www.twitter.com', '2019-05-27 00:28:53');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_id` int(11) NOT NULL,
  `ssid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `sharing_type` varchar(100) NOT NULL,
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`session_id`, `ssid`, `password`, `sharing_type`, `start`, `end`) VALUES
(31, 'Syazana-wifi', '12345678', 'Wi-Fi', '2019-06-18 21:12:00', '2019-06-18 23:17:00'),
(36, 'TestPresent', 'abcd1234', 'Wi-Fi', '2019-04-29 03:00:00', '2019-04-30 05:00:00'),
(37, 'Dr Robi', '43214321', 'Wi-Fi', '2019-05-21 16:44:32', '2019-05-21 17:01:55'),
(38, 'syazana ali', '12341234', 'Wi-Fi', '2019-05-24 01:57:46', '2019-05-24 02:01:50'),
(39, 'puasa', '12341234', 'Wi-Fi', '2019-05-24 02:03:46', '2019-05-24 02:10:45'),
(40, 'puasa', '1234512345', 'Wi-Fi', '2019-05-24 02:11:35', '2019-05-24 02:17:31'),
(41, 'syazana ali', 'abc12345', 'Wi-Fi', '2019-05-24 02:18:35', '2019-05-24 02:23:21'),
(42, 'syazana ali', '12341234', 'Wi-Fi', '2019-05-24 02:23:52', '2019-05-24 02:27:39'),
(43, 'syazana ali', '12341234', 'Wi-Fi', '2019-05-24 02:28:21', '2019-05-24 02:32:18'),
(44, 'Dr Robi', '12341234', 'Wi-Fi', '2019-05-24 03:36:13', '2019-05-24 03:42:49'),
(45, 'jamil hensem', '12341234', 'Wi-Fi', '2019-05-26 15:45:35', '2019-05-26 16:19:41'),
(46, 'Dr Robi', '1234`1234', 'Wi-Fi', '2019-05-26 16:20:24', '2019-05-26 16:22:18'),
(47, 'last try', '12341234', 'Wi-Fi', '2019-05-26 16:22:46', '2019-05-26 16:25:39'),
(48, 'last try', '12341234', 'Wi-Fi', '2019-05-26 16:26:21', NULL),
(49, 'last try', 'abc12345', 'Wi-Fi', '2019-05-26 16:40:35', '2019-05-26 16:41:57'),
(50, 'syazana', '12341234', 'Wi-Fi', '2019-05-26 16:44:05', NULL),
(51, 'jamil', '12341234', 'Wi-Fi', '2019-05-26 17:04:02', NULL),
(52, 'last try', '12341234', 'Wi-Fi', '2019-06-16 17:31:46', '2019-06-16 20:24:36'),
(53, 'jennie masam', '12345678', 'Wi-Fi', '2019-05-26 18:54:29', '2019-05-26 19:07:18'),
(54, 'good morning', '12345678', 'Wi-Fi', '2019-06-09 00:26:12', '2019-06-09 00:28:21'),
(55, 'hello world', 'try12345678', 'Wi-Fi', '2019-06-08 00:32:15', '2019-06-08 00:38:42'),
(56, 'DR FAIZAL', '12345678', 'Wi-Fi', '2019-06-10 20:08:17', '2019-06-11 03:08:21'),
(57, 'syazana ali', '12345678', 'Wi-Fi', '2019-06-23 12:26:00', NULL),
(58, 'jamil', '12345678', 'Wi-Fi', '2019-06-23 16:41:51', '2019-06-23 16:51:31'),
(59, 'raya', '12345678', 'Wi-Fi', '2019-06-23 16:52:20', '2019-06-23 17:09:44'),
(60, 'yun seong', '12345678', 'Wi-Fi', '2019-06-23 18:48:53', NULL),
(61, 'syazana ali', '12345678', 'Wi-Fi', '2019-06-24 01:00:20', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`mac`);

--
-- Indexes for table `client_note`
--
ALTER TABLE `client_note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client` (`client`),
  ADD KEY `session` (`session`);

--
-- Indexes for table `proxy`
--
ALTER TABLE `proxy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client_note`
--
ALTER TABLE `client_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `proxy`
--
ALTER TABLE `proxy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_note`
--
ALTER TABLE `client_note`
  ADD CONSTRAINT `client_note_ibfk_1` FOREIGN KEY (`client`) REFERENCES `client` (`mac`),
  ADD CONSTRAINT `client_note_ibfk_2` FOREIGN KEY (`session`) REFERENCES `session` (`session_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
