-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 25, 2017 at 09:33 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DEMO_IOT`
--

-- --------------------------------------------------------

--
-- Table structure for table `BIN_FULL_TBL`
--

CREATE TABLE `BIN_FULL_TBL` (
  `bf_id` int(10) UNSIGNED NOT NULL,
  `bp_id` int(10) UNSIGNED NOT NULL,
  `bf_level` int(10) UNSIGNED NOT NULL,
  `bf_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bf_resolved` enum('YES','NO') NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `BIN_FULL_TBL`
--

INSERT INTO `BIN_FULL_TBL` (`bf_id`, `bp_id`, `bf_level`, `bf_timestamp`, `bf_resolved`) VALUES
(3, 7, 100, '2017-06-07 09:43:48', 'YES'),
(4, 9, 100, '2017-06-07 09:47:30', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `BIN_PROCES_TBL`
--

CREATE TABLE `BIN_PROCES_TBL` (
  `bp_id` int(10) UNSIGNED NOT NULL,
  `b_id` int(10) UNSIGNED NOT NULL,
  `bp_level` int(10) UNSIGNED NOT NULL,
  `bp_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `BIN_PROCES_TBL`
--

INSERT INTO `BIN_PROCES_TBL` (`bp_id`, `b_id`, `bp_level`, `bp_timestamp`) VALUES
(1, 1, 20, '2017-03-31 05:41:38'),
(2, 2, 35, '2017-03-31 05:41:56'),
(3, 1, 40, '2017-03-31 05:42:56'),
(7, 3, 100, '2017-06-07 02:22:19'),
(9, 3, 100, '2017-06-07 09:42:09');

--
-- Triggers `BIN_PROCES_TBL`
--
DELIMITER $$
CREATE TRIGGER `BIN_ALERT` AFTER INSERT ON `BIN_PROCES_TBL` FOR EACH ROW IF NEW.bp_level=100 THEN INSERT INTO BIN_FULL_TBL (bp_id, bf_level, bf_timestamp, bf_resolved) VALUES (NEW.bp_id, NEW.bp_level,NEW.bp_timestamp,'NO'); END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `BIN_TBL`
--

CREATE TABLE `BIN_TBL` (
  `b_id` int(11) UNSIGNED NOT NULL,
  `b_capacity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `b_locality` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `BIN_TBL`
--

INSERT INTO `BIN_TBL` (`b_id`, `b_capacity`, `b_locality`) VALUES
(1, 100, 411040),
(2, 60, 411048),
(3, 80, 411046);

-- --------------------------------------------------------

--
-- Table structure for table `CITIZEN_TBL`
--

CREATE TABLE `CITIZEN_TBL` (
  `c_id` int(11) UNSIGNED NOT NULL,
  `c_fname` varchar(25) NOT NULL,
  `c_lname` varchar(25) DEFAULT NULL,
  `c_dob` varchar(10) NOT NULL,
  `c_address` varchar(50) DEFAULT NULL,
  `c_zip` int(6) NOT NULL,
  `c_email` varchar(40) NOT NULL,
  `c_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `CITIZEN_TBL`
--

INSERT INTO `CITIZEN_TBL` (`c_id`, `c_fname`, `c_lname`, `c_dob`, `c_address`, `c_zip`, `c_email`, `c_password`) VALUES
(1, 'Arthurs', 'Almighty', '1995-07-27', 'Katraj', 411046, 'abhi@gmail.com', '123'),
(3, 'Roshan', 'Kumar', '1995-07-17', 'Katraj', 411046, 'roshan@gmail.com', '123'),
(4, 'manny', 'jassy', '1995/11/25', 'kpo anjer', 411040, 'mannyjassy95@gmail.com', '12345'),
(5, 'Arindam', 'Dev', '2000-01-06', 'Pune City', 411040, 'arindam@gmail.com', '234rintu');

-- --------------------------------------------------------

--
-- Table structure for table `COMPLAINT_PROCESS_TBL`
--

CREATE TABLE `COMPLAINT_PROCESS_TBL` (
  `cp_id` int(10) UNSIGNED NOT NULL,
  `ct_id` int(10) UNSIGNED NOT NULL,
  `cp_resolved` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `cp_note` text,
  `cp_timestamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `COMPLAINT_PROCESS_TBL`
--

INSERT INTO `COMPLAINT_PROCESS_TBL` (`cp_id`, `ct_id`, `cp_resolved`, `cp_note`, `cp_timestamp`) VALUES
(1, 1, 'YES', NULL, '2017-03-31 05:36:37'),
(2, 2, 'YES', NULL, '2017-05-08 12:17:23'),
(3, 3, 'YES', NULL, '2017-05-27 06:27:42'),
(4, 4, 'YES', NULL, '2017-06-07 00:13:17'),
(5, 5, 'NO', NULL, '2017-06-07 02:23:23'),
(6, 6, 'NO', NULL, '2017-06-07 02:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `COMPLAINT_TBL`
--

CREATE TABLE `COMPLAINT_TBL` (
  `ct_id` int(10) UNSIGNED NOT NULL,
  `c_id` int(10) UNSIGNED NOT NULL,
  `ct_type` int(10) UNSIGNED NOT NULL,
  `ct_content` text NOT NULL,
  `ct_image` blob,
  `ct_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `COMPLAINT_TBL`
--

INSERT INTO `COMPLAINT_TBL` (`ct_id`, `c_id`, `ct_type`, `ct_content`, `ct_image`, `ct_timestamp`) VALUES
(1, 3, 3, 'Extend this even to others cities.', NULL, '2017-03-31 05:36:37'),
(2, 5, 1, 'Our locality is in complete mess.', NULL, '2017-05-08 12:17:23'),
(3, 3, 3, 'Need improve', NULL, '2017-05-27 06:27:42'),
(4, 3, 2, 'I witnessed the sensors short-circuiting.', NULL, '2017-06-07 00:13:17'),
(5, 3, 1, 'The service in my area is not proper.', NULL, '2017-06-07 02:23:23'),
(6, 5, 2, 'The sensors short-circuited due to rain.', NULL, '2017-06-07 02:25:23');

--
-- Triggers `COMPLAINT_TBL`
--
DELIMITER $$
CREATE TRIGGER `INSERT_COMPLAINT` AFTER INSERT ON `COMPLAINT_TBL` FOR EACH ROW INSERT INTO COMPLAINT_PROCESS_TBL(ct_id, cp_resolved, cp_note, cp_timestamp) VALUES (NEW.ct_id, 'NO', NULL, NEW.ct_timestamp)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `OFFICER_TBL`
--

CREATE TABLE `OFFICER_TBL` (
  `o_id` int(11) NOT NULL,
  `o_fname` varchar(25) NOT NULL,
  `o_lname` varchar(25) DEFAULT NULL,
  `o_rank` varchar(25) NOT NULL,
  `o_email` varchar(40) NOT NULL,
  `o_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `OFFICER_TBL`
--

INSERT INTO `OFFICER_TBL` (`o_id`, `o_fname`, `o_lname`, `o_rank`, `o_email`, `o_password`) VALUES
(1, 'Vikram', 'Batra', 'High', 'vikram@outlook.com', 'office123');

-- --------------------------------------------------------

--
-- Table structure for table `VEHICLE_PROCESS_TBL`
--

CREATE TABLE `VEHICLE_PROCESS_TBL` (
  `vp_id` int(10) UNSIGNED NOT NULL,
  `v_id` int(10) UNSIGNED NOT NULL,
  `vp_towards_bin` int(10) UNSIGNED NOT NULL,
  `vp_start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vp_return_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- --------------------------------------------------------

--
-- Table structure for table `VEHICLE_TBL`
--

CREATE TABLE `VEHICLE_TBL` (
  `v_id` int(11) UNSIGNED NOT NULL,
  `v_regno` varchar(12) NOT NULL,
  `v_type` enum('SMALL','MEDIUM','BIG') NOT NULL,
  `v_idle` enum('YES','NO') NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `VEHICLE_TBL`
--

INSERT INTO `VEHICLE_TBL` (`v_id`, `v_regno`, `v_type`, `v_idle`) VALUES
(1, 'MH12-KJ-2679', 'MEDIUM', 'YES'),
(2, 'MH12-AD-9740', 'SMALL', 'YES'),
(3, 'MH12-ND-3308', 'BIG', 'YES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BIN_FULL_TBL`
--
ALTER TABLE `BIN_FULL_TBL`
  ADD PRIMARY KEY (`bf_id`),
  ADD KEY `bp_id` (`bp_id`);

--
-- Indexes for table `BIN_PROCES_TBL`
--
ALTER TABLE `BIN_PROCES_TBL`
  ADD PRIMARY KEY (`bp_id`),
  ADD KEY `b_id` (`b_id`);

--
-- Indexes for table `BIN_TBL`
--
ALTER TABLE `BIN_TBL`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `CITIZEN_TBL`
--
ALTER TABLE `CITIZEN_TBL`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `c_email` (`c_email`);

--
-- Indexes for table `COMPLAINT_PROCESS_TBL`
--
ALTER TABLE `COMPLAINT_PROCESS_TBL`
  ADD PRIMARY KEY (`cp_id`),
  ADD KEY `ct_id` (`ct_id`);

--
-- Indexes for table `COMPLAINT_TBL`
--
ALTER TABLE `COMPLAINT_TBL`
  ADD PRIMARY KEY (`ct_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `OFFICER_TBL`
--
ALTER TABLE `OFFICER_TBL`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `VEHICLE_PROCESS_TBL`
--
ALTER TABLE `VEHICLE_PROCESS_TBL`
  ADD PRIMARY KEY (`vp_id`),
  ADD KEY `v_id` (`v_id`),
  ADD KEY `vp_towards_bin` (`vp_towards_bin`);

--
-- Indexes for table `VEHICLE_TBL`
--
ALTER TABLE `VEHICLE_TBL`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BIN_FULL_TBL`
--
ALTER TABLE `BIN_FULL_TBL`
  MODIFY `bf_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `BIN_PROCES_TBL`
--
ALTER TABLE `BIN_PROCES_TBL`
  MODIFY `bp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `BIN_TBL`
--
ALTER TABLE `BIN_TBL`
  MODIFY `b_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `CITIZEN_TBL`
--
ALTER TABLE `CITIZEN_TBL`
  MODIFY `c_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `COMPLAINT_PROCESS_TBL`
--
ALTER TABLE `COMPLAINT_PROCESS_TBL`
  MODIFY `cp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `COMPLAINT_TBL`
--
ALTER TABLE `COMPLAINT_TBL`
  MODIFY `ct_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `OFFICER_TBL`
--
ALTER TABLE `OFFICER_TBL`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `VEHICLE_PROCESS_TBL`
--
ALTER TABLE `VEHICLE_PROCESS_TBL`
  MODIFY `vp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VEHICLE_TBL`
--
ALTER TABLE `VEHICLE_TBL`
  MODIFY `v_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `BIN_FULL_TBL`
--
ALTER TABLE `BIN_FULL_TBL`
  ADD CONSTRAINT `BIN_FULL_TBL_ibfk_1` FOREIGN KEY (`bp_id`) REFERENCES `BIN_PROCES_TBL` (`bp_id`) ON UPDATE CASCADE;

--
-- Constraints for table `BIN_PROCES_TBL`
--
ALTER TABLE `BIN_PROCES_TBL`
  ADD CONSTRAINT `BIN_PROCES_TBL_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `BIN_TBL` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `COMPLAINT_PROCESS_TBL`
--
ALTER TABLE `COMPLAINT_PROCESS_TBL`
  ADD CONSTRAINT `COMPLAINT_PROCESS_TBL_ibfk_1` FOREIGN KEY (`ct_id`) REFERENCES `COMPLAINT_TBL` (`ct_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `COMPLAINT_TBL`
--
ALTER TABLE `COMPLAINT_TBL`
  ADD CONSTRAINT `COMPLAINT_TBL_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `CITIZEN_TBL` (`c_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `VEHICLE_PROCESS_TBL`
--
ALTER TABLE `VEHICLE_PROCESS_TBL`
  ADD CONSTRAINT `VEHICLE_PROCESS_TBL_ibfk_1` FOREIGN KEY (`v_id`) REFERENCES `VEHICLE_TBL` (`v_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `VEHICLE_PROCESS_TBL_ibfk_2` FOREIGN KEY (`vp_towards_bin`) REFERENCES `BIN_TBL` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
