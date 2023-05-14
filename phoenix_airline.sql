-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 04:54 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phoenix_airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `lat_login_time` datetime DEFAULT NULL,
  `u_id` int(10) NOT NULL,
  `functionfunction_id` int(10) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `u_id` int(10) NOT NULL,
  `total_price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `u_id`, `total_price`) VALUES
(111, 4, '$70');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_no` int(255) NOT NULL,
  `departure` date DEFAULT NULL,
  `returnd` date DEFAULT NULL,
  `airport` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `eco_seat_no` int(11) DEFAULT NULL,
  `bclass_seat_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_no`, `departure`, `returnd`, `airport`, `destination`, `eco_seat_no`, `bclass_seat_no`) VALUES
(1, '2022-04-27', '2022-04-29', 'Katunayake', 'Istambul', 10, 200),
(2, '2022-04-28', '2022-04-29', 'russia', 'mosko', 10, 200),
(3, '2022-05-03', '2022-04-30', 'russia', 'cairo', NULL, 200),
(5, '2022-05-01', '2022-04-28', 'turkey', 'istambul', NULL, 12),
(102, '2022-04-30', '2022-04-27', 'turkey', 'cairo', 300, 10),
(104, '2022-04-30', '2022-04-27', 'russia', 'cairo', 300, 10);

-- --------------------------------------------------------

--
-- Table structure for table `function`
--

CREATE TABLE `function` (
  `function_id` int(10) NOT NULL,
  `function_desc` varchar(255) DEFAULT NULL,
  `u_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(10) NOT NULL,
  `grade_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `grade_desc`) VALUES
(3, 'client'),
(4, 'staff_01'),
(5, 'staff_02'),
(6, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `grade_function`
--

CREATE TABLE `grade_function` (
  `grade_id` int(10) NOT NULL,
  `function_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seat_no` int(10) NOT NULL,
  `flight_no` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `class_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`seat_no`, `flight_no`, `class_id`, `class_name`) VALUES
(54, 104, 2, 'Economy class');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(10) NOT NULL,
  `seat_no` int(11) NOT NULL,
  `flight_no` int(10) NOT NULL,
  `booking_id` int(10) NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `seat_no`, `flight_no`, `booking_id`, `price`, `date`) VALUES
(123, 54, 104, 111, '$70', '2022-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `U_id` int(10) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `grade_id` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`U_id`, `first_name`, `last_name`, `password`, `grade_id`, `email`, `user_type`) VALUES
(1, 'Wathsala', 'Gamarachchi', '1234', 'C01', 'wathsalagamarachchi@gmail.com', NULL),
(2, 'Sasanka', 'Bandara', 'sb123', 'C01', 'sasanka@gmail.com', NULL),
(3, 'Malinga', 'Saroj', '1234', 'C01', 'malinga@gmail.com', NULL),
(4, 'Vikum', 'Dineth', '1999', 'C01', 'nvdamarananda@gmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`U_id`),
  ADD KEY `FKUser313312` (`grade_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `U_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
