-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2025 at 04:00 PM
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
-- Database: `piggeryfarm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2023-06-17 03:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `breeder_records`
--

CREATE TABLE `breeder_records` (
  `id` int(32) NOT NULL,
  `breeder_id` int(32) NOT NULL,
  `date_farrowed` date NOT NULL,
  `weaned_date` date NOT NULL,
  `total_piglets` int(32) NOT NULL,
  `survived` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `breeder_records`
--

INSERT INTO `breeder_records` (`id`, `breeder_id`, `date_farrowed`, `weaned_date`, `total_piglets`, `survived`) VALUES
(1, 37, '2023-10-01', '2023-11-10', 3, 8),
(5, 44, '2023-08-06', '2023-09-15', 10, 2),
(19, 36, '2023-12-13', '2024-01-13', 2, -3),
(21, 36, '2023-12-10', '2024-01-10', 3, -3),
(24, 43, '2023-10-08', '2023-11-17', 10, 3),
(25, 37, '2023-10-01', '2023-11-10', 13, 8),
(26, 36, '2023-10-01', '2023-11-10', 10, -3),
(27, 36, '2024-03-17', '0000-00-00', 14, -3),
(28, 37, '2023-10-03', '0000-00-00', 13, 8),
(29, 37, '2023-10-01', '0000-00-00', 13, 8),
(30, 46, '2024-03-22', '0000-00-00', 8, 3),
(31, 46, '2023-12-01', '0000-00-00', 12, 3),
(32, 46, '2023-10-01', '2023-11-02', 8, 3),
(33, 43, '2024-01-12', '0000-00-00', 10, 3),
(34, 43, '2023-11-19', '2023-12-29', 11, 3),
(35, 37, '2024-01-12', '0000-00-00', 15, 8),
(36, 47, '2023-08-24', '2023-10-03', 9, 2),
(37, 37, '2024-01-29', '2024-03-09', 7, 8),
(38, 37, '2024-04-12', '2024-05-22', 7, 8),
(39, 49, '2025-05-08', '2025-05-09', 12, 0),
(40, 49, '2025-09-07', '0000-00-00', 2, 0),
(41, 51, '2025-08-16', '2025-06-07', 2, 6),
(42, 51, '2025-03-25', '2025-05-10', 6, 6),
(43, 52, '2025-03-01', '2025-03-07', 12, 12),
(44, 55, '2025-04-01', '2025-05-17', 11, 3),
(45, 54, '2025-10-05', '0000-00-00', 8, 2),
(46, 54, '2025-03-01', '2025-04-10', 9, 2),
(47, 51, '2025-01-28', '2025-03-09', 10, 20),
(48, 52, '2025-04-07', '2025-05-17', 12, 13),
(49, 50, '2024-12-16', '2025-01-25', 10, 11),
(50, 54, '2025-02-03', '2025-03-15', 9, 2),
(51, 55, '2025-07-07', '2025-08-16', 3, 3),
(52, 1, '2025-07-11', '2025-08-20', 6, 5),
(53, 1, '2025-07-11', '2025-08-20', 6, 5),
(54, 1, '2025-07-11', '2025-08-20', 6, 5),
(55, 1, '2025-07-11', '2025-08-20', 6, 5),
(56, 1, '2025-04-09', '2025-05-19', 6, 5),
(57, 1, '2025-11-09', '0000-00-00', 6, 5),
(58, 1, '2025-05-01', '2025-06-10', 6, 5),
(59, 1, '2025-05-15', '2025-06-24', 3, 5),
(60, 1, '2025-09-01', '0000-00-00', 3, 5),
(61, 1, '2025-09-02', '0000-00-00', 3, 5),
(62, 1, '2025-09-17', '0000-00-00', 3, 5),
(63, 1, '2025-09-05', '0000-00-00', 3, 5),
(64, 1, '2025-12-13', '0000-00-00', 3, 5),
(65, 1, '2025-09-02', '0000-00-00', 3, 5),
(66, 1, '2025-09-18', '0000-00-00', 3, 5),
(67, 13, '2025-04-10', '0000-00-00', 7, 2),
(68, 13, '2025-07-07', '0000-00-00', 7, 2),
(69, 13, '2025-05-13', '0000-00-00', 7, 2),
(70, 13, '2025-05-12', '0000-00-00', 7, 2),
(71, 13, '2025-06-11', '2025-07-21', 7, 2),
(72, 13, '2025-06-08', '2025-07-18', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `piglets`
--

CREATE TABLE `piglets` (
  `id` int(32) NOT NULL,
  `growinphase_id` int(32) NOT NULL,
  `name` varchar(122) NOT NULL,
  `gender` varchar(122) NOT NULL,
  `breed` varchar(122) NOT NULL,
  `status` varchar(122) NOT NULL,
  `move` int(32) NOT NULL DEFAULT 0,
  `posted` int(11) NOT NULL DEFAULT 0,
  `img` varchar(122) NOT NULL,
  `timesstampt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `piglets`
--

INSERT INTO `piglets` (`id`, `growinphase_id`, `name`, `gender`, `breed`, `status`, `move`, `posted`, `img`, `timesstampt`) VALUES
(1, 1, 'wqq', 'Male', 'Duroc', 'Healthy', 0, 0, 'diagram.png', '2025-08-28'),
(2, 2, '2323', 'Male', 'Landrace', 'Posted', 1, 0, 'diagram.png', '2025-08-29'),
(3, 2, '223', 'Female', 'Landrace', 'Sold', 1, 0, 'AI-XX3.jpg', '2025-08-30'),
(4, 2, '2323', 'Female', 'Duroc', 'Cull', 1, 0, 'AI-XX3.jpg', '2025-09-01'),
(7, 3, '2-3', 'Male', 'Landrace', 'Posted', 1, 0, 'diagram.png', '2025-09-04'),
(8, 3, '2-1', 'Male', 'Landrace', 'Posted', 1, 1, 'AI-XX3.jpg', '2025-09-13'),
(9, 3, '2-2', 'Female', 'Landrace', 'Posted', 1, 1, 'diagram.png', '2025-09-13'),
(10, 4, '1-1', 'Male', 'Landrace', 'Healthy', 0, 1, 'diagram.png', '2025-09-13'),
(11, 4, '1-2', 'Male', 'Landrace', 'Healthy', 0, 1, 'AI-XX3.jpg', '2025-09-13'),
(12, 4, '1-3', 'Male', 'Landrace', 'Healthy', 0, 0, 'diagram.png', '2025-09-13'),
(13, 3, '4', 'Female', 'Landrace', 'Posted', 1, 0, 'AI-XX3.jpg', '2025-09-20'),
(14, 2, '33', 'Female', 'Landrace', 'Cull', 1, 0, 'diagram.png', '2025-09-21'),
(15, 5, '1', 'Female', 'Landrace', 'Breeder', 1, 0, 'AI-XX3.jpg', '2025-09-23'),
(16, 5, '3', 'Female', 'Landrace', 'Breeder', 1, 0, 'diagram.png', '2025-09-23'),
(17, 6, '1', 'Male', 'Landrace', 'Cull', 1, 0, 'AI-XX3.jpg', '2025-09-23'),
(18, 5, '12', 'Female', 'Landrace', 'Breeder', 1, 0, 'diagram.png', '2025-09-23'),
(19, 5, '23', 'Female', 'Landrace', 'Breeder', 1, 0, 'diagram.png', '2025-09-23'),
(20, 6, '1', 'Female', 'Landrace', 'Healthy', 0, 1, 'diagram.png', '2025-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `piglets_qr`
--

CREATE TABLE `piglets_qr` (
  `id` int(32) NOT NULL,
  `piglet_id` int(32) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `piglets_qr`
--

INSERT INTO `piglets_qr` (`id`, `piglet_id`, `img`) VALUES
(1, 1, 'img/qr_piglets/piglet_1.png'),
(2, 2, 'img/qr_piglets/piglet_2.png'),
(3, 3, 'img/qr_piglets/piglet_3.png'),
(4, 4, 'img/qr_piglets/piglet_4.png'),
(7, 7, 'img/qr_piglets/piglet_7.png'),
(8, 8, 'img/qr_piglets/piglet_8.png'),
(9, 9, 'img/qr_piglets/piglet_9.png'),
(10, 10, 'img/qr_piglets/piglet_10.png'),
(11, 11, 'img/qr_piglets/piglet_11.png'),
(12, 12, 'img/qr_piglets/piglet_12.png'),
(13, 13, 'img/qr_piglets/piglet_13.png'),
(14, 14, 'img/qr_piglets/piglet_14.png'),
(15, 15, 'img/qr_piglets/piglet_15.png'),
(16, 16, 'img/qr_piglets/piglet_16.png'),
(17, 17, 'img/qr_piglets/piglet_17.png'),
(18, 18, 'img/qr_piglets/piglet_18.png'),
(19, 19, 'img/qr_piglets/piglet_19.png'),
(20, 20, 'img/qr_piglets/piglet_20.png');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(32) NOT NULL,
  `username` varchar(122) NOT NULL,
  `password_hash` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `username`, `password_hash`) VALUES
(1, 'staff', '$2y$10$jfMKJuQsJWpXALwbr9lSreEr9dpAMqjtQcX.o1m/z3tQmyTwSNFES');

-- --------------------------------------------------------

--
-- Table structure for table `tblculling`
--

CREATE TABLE `tblculling` (
  `id` int(32) NOT NULL,
  `name` varchar(122) NOT NULL,
  `age` varchar(123) NOT NULL,
  `status` varchar(122) NOT NULL,
  `amount` int(32) NOT NULL,
  `img` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblculling`
--

INSERT INTO `tblculling` (`id`, `name`, `age`, `status`, `amount`, `img`) VALUES
(1, '2323', '23 Months', 'Sold', 20000, 'AI-XX3.jpg'),
(2, '1', '3 Months', 'Sold', 50000, 'diagram.png'),
(3, '1', '3 Months', 'Sold', 30000, 'diagram.png'),
(4, '2', '2 Months', 'Sold', 2333, 'AI-XX3.jpg'),
(5, 'e', '23 Months', 'Sold', 2333, 'diagram.png'),
(6, '23', '23 Months', 'Sold', 2333, 'diagram.png'),
(7, '23', '23 Months', 'Sold', 2344, 'diagram.png'),
(8, '4', '23 Months', 'Sold', 23232, 'diagram.png'),
(9, '5', '23 Months', 'Sold', 2323, 'diagram.png'),
(10, '6', '23 Months', 'Sold', 232, 'diagram.png'),
(11, '3', '23 Months', 'Culling', 23, 'diagram.png'),
(12, '4', '23 Months', 'Purchased', 22, 'diagram.png'),
(13, '1', '23 Months', 'Purchased', 12, 'diagram.png'),
(14, '33', '4 Months', 'Purchased', 0, 'diagram.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblfeeds`
--

CREATE TABLE `tblfeeds` (
  `id` int(32) NOT NULL,
  `feedsname` varchar(255) NOT NULL,
  `quantity` int(32) NOT NULL,
  `price` int(32) NOT NULL,
  `datepurchased` date NOT NULL,
  `consumedate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblgestatingguide`
--

CREATE TABLE `tblgestatingguide` (
  `id` int(32) NOT NULL,
  `sow_id` int(32) NOT NULL,
  `details` varchar(122) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblgrowingphase`
--

CREATE TABLE `tblgrowingphase` (
  `id` int(32) NOT NULL,
  `sow_id` int(32) NOT NULL,
  `sacks` int(32) NOT NULL,
  `sowname` varchar(255) NOT NULL,
  `pigs` int(32) NOT NULL,
  `male` int(32) NOT NULL,
  `female` int(32) NOT NULL,
  `mortality` int(32) NOT NULL,
  `weaneddate` date NOT NULL,
  `img` varchar(30) NOT NULL,
  `status` varchar(32) NOT NULL,
  `piggybloom` date NOT NULL,
  `prestarter` date NOT NULL,
  `starter` date NOT NULL,
  `grower` date NOT NULL,
  `finisher` date NOT NULL,
  `posted` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblgrowingphase`
--

INSERT INTO `tblgrowingphase` (`id`, `sow_id`, `sacks`, `sowname`, `pigs`, `male`, `female`, `mortality`, `weaneddate`, `img`, `status`, `piggybloom`, `prestarter`, `starter`, `grower`, `finisher`, `posted`) VALUES
(2, 1, 0, 'we Piglets', 6, 3, 5, 0, '2025-05-19', 'AI-XX3.jpg', 'Finisher', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2025-10-06', '1'),
(3, 1, 0, '2 Piglets', 5, 2, 3, 0, '2025-06-10', 'AI-XX3.jpg', 'Finisher', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2025-10-06', '1'),
(4, 1, 0, '1 Piglets', 4, 3, 2, 0, '2025-06-24', 'AI-XX3.jpg', 'PiggyBloom', '2025-10-14', '2025-11-03', '2025-12-03', '2026-01-22', '2026-02-06', '1'),
(5, 13, 0, '1 Piglets', 4, 2, 2, 0, '2025-07-21', 'diagram.png', 'Finisher', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2025-10-08', ''),
(6, 13, 0, '1 Piglets', 2, 1, 1, 0, '2025-07-18', 'diagram.png', 'PiggyBloom', '2025-10-24', '2025-11-13', '2025-12-13', '2026-02-01', '2026-02-16', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblmanage`
--

CREATE TABLE `tblmanage` (
  `id` int(32) NOT NULL,
  `about` varchar(500) NOT NULL,
  `products` varchar(500) NOT NULL,
  `map` varchar(50) NOT NULL,
  `mobilenumber` varchar(32) NOT NULL,
  `phonenumber` varchar(32) NOT NULL,
  `emailaddress` varchar(32) NOT NULL,
  `img` varchar(32) NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblmanage`
--

INSERT INTO `tblmanage` (`id`, `about`, `products`, `map`, `mobilenumber`, `phonenumber`, `emailaddress`, `img`, `tag`) VALUES
(1, 'Ronalds Baboyan is a family-owned pig farming business with a passion for providing high-quality, sustainable, and ethically-raised pork products. Our journey began with a vision to deliver exceptional pork while prioritizing the well-being of our pigs. We take pride in creating a stress-free environment for our pigs and feeding them natural, nutritious feed. Our commitment to transparency and integrity sets us apart, as we believe in building lasting relationships with our customers.', 'Ronalds Piggery specializes in breeding and selling live pigs. Our focus is on providing healthy and genetically superior pig breeds to farmers and livestock enthusiasts. With years of experience and expertise in pig husbandry, we ensure that our pigs are well-cared for and raised in optimal conditions. By offering live pigs, we aim to support and contribute to the agricultural industry by supplying high-quality breeding stock and helping farmers establish successful pig farming operations.', 'aboutus.jpg', '9135432243', '1231312', 'ronaldsbaboyan@gmail.com', 'banner-image.jpg', 'We have more pigs for you to choose');

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `id` int(11) NOT NULL,
  `fullname` varchar(122) NOT NULL,
  `emailaddress` varchar(122) NOT NULL,
  `message` varchar(122) NOT NULL,
  `tbldate` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblorderdetails`
--

CREATE TABLE `tblorderdetails` (
  `id` int(32) NOT NULL,
  `sow_id` int(32) NOT NULL,
  `order_id` int(32) NOT NULL,
  `pig_id` int(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(244) NOT NULL DEFAULT 'Female',
  `age` varchar(244) NOT NULL,
  `price` varchar(32) NOT NULL,
  `quantity` int(32) NOT NULL,
  `weight_class` varchar(255) NOT NULL,
  `weight` int(32) NOT NULL,
  `piglet` int(32) NOT NULL DEFAULT 0,
  `cull` int(32) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblorderdetails`
--

INSERT INTO `tblorderdetails` (`id`, `sow_id`, `order_id`, `pig_id`, `name`, `sex`, `age`, `price`, `quantity`, `weight_class`, `weight`, `piglet`, `cull`) VALUES
(2, 1, 2, 2, '2', 'Male', '86', '2333', 1, '23', 23, 1, 0),
(3, 2, 3, 1, '22323', 'Female', '23 Months', '123', 1, '30-40kg', 50, 0, 0),
(5, 4, 5, 8, '8', 'Male', '81', '3500', 1, '35', 35, 1, 0),
(6, 2, 6, 2, '2323', 'Male', '3 Months', '255', 1, '40-50kg', 45, 0, 0),
(15, 0, 15, 7, '23', 'Female', '23 Months', '2344', 1, '23 Months', 0, 0, 1),
(16, 0, 16, 8, '4', 'Female', '23 Months', '23232', 1, '23 Months', 0, 0, 1),
(17, 0, 17, 9, '5', 'Female', '23 Months', '2323', 1, '23 Months', 0, 0, 1),
(18, 0, 18, 10, '6', 'Female', '23 Months', '232', 1, '23 Months', 0, 0, 1),
(19, 3, 19, 9, '9', 'Female', '103', '3500', 1, '13', 0, 1, 0),
(20, 13, 20, 0, '1', 'Female', '', '12', 0, '', 0, 0, 1),
(21, 12, 21, 0, '4', 'Female', '', '22', 0, '', 0, 0, 1),
(22, 14, 22, 0, '33', 'Female', '', '1222222', 0, '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `cust_id` int(32) NOT NULL,
  `walkin_customer` varchar(122) DEFAULT NULL,
  `orderdate` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `mop` varchar(20) NOT NULL,
  `total_amount` int(32) NOT NULL,
  `orderstatus` varchar(122) NOT NULL,
  `deliverydate` date NOT NULL,
  `canceltime` datetime(6) NOT NULL,
  `deleted` int(32) NOT NULL,
  `piglets` int(32) NOT NULL DEFAULT 0,
  `cull` int(32) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `cust_id`, `walkin_customer`, `orderdate`, `mop`, `total_amount`, `orderstatus`, `deliverydate`, `canceltime`, `deleted`, `piglets`, `cull`) VALUES
(1, 62, '', '2025-09-04 23:28:09.430088', 'Cash', 23, 'Pending', '0000-00-00', '2025-09-01 09:42:53.586242', 1, 1, 0),
(2, 62, '', '2025-09-04 23:29:10.985771', 'Cash', 53659, 'Completed', '2025-09-04', '2025-09-05 07:28:34.349849', 0, 1, 0),
(3, 62, '', '2025-09-04 23:29:01.613581', 'Cash', 6150, 'Completed', '2025-09-04', '2025-09-05 07:28:44.566745', 0, 0, 0),
(5, 62, '', '2025-09-15 23:11:53.088912', 'Cash', 3500, 'Completed', '2025-09-15', '2025-09-13 23:26:38.558390', 0, 1, 0),
(6, 62, '', '2025-09-15 23:29:10.047036', 'Cash', 11475, 'Completed', '2025-09-15', '2025-09-14 00:00:44.444115', 0, 0, 0),
(15, 62, '', '2025-09-15 23:28:20.165457', 'Cash', 2344, 'Completed', '2025-09-15', '2025-09-16 07:27:40.735659', 0, 0, 1),
(16, 62, '', '2025-09-15 23:41:35.112504', 'Cash', 23232, 'Completed', '2025-09-15', '2025-09-16 07:41:24.735113', 0, 0, 1),
(17, 62, '', '2025-09-15 23:43:28.032598', 'Cash', 2323, 'Completed', '2025-09-15', '2025-09-16 07:43:17.964405', 0, 0, 1),
(18, 62, '', '2025-09-15 23:46:52.138920', 'Cash', 232, 'Completed', '2025-09-15', '2025-09-16 07:45:04.736905', 0, 0, 1),
(19, 62, '', '2025-09-21 00:00:00.000000', 'Cash', 3500, 'Pending', '0000-00-00', '2025-09-21 16:38:27.254016', 0, 1, 0),
(20, 0, 'qweqq', '2025-09-27 00:00:00.000000', 'Cash', 12, 'Completed', '2025-09-27', '0000-00-00 00:00:00.000000', 0, 0, 1),
(21, 0, '123', '2025-10-04 00:00:00.000000', 'Cash', 22, 'Completed', '2025-10-04', '0000-00-00 00:00:00.000000', 0, 0, 1),
(22, 0, 'qweq', '2025-09-24 00:00:00.000000', 'Cash', 1222222, 'Completed', '2025-09-24', '0000-00-00 00:00:00.000000', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpigbreeders`
--

CREATE TABLE `tblpigbreeders` (
  `id` int(11) NOT NULL,
  `name` varchar(244) NOT NULL,
  `age` varchar(100) NOT NULL,
  `status` varchar(255) NOT NULL,
  `total_farrowed` int(32) NOT NULL,
  `breedingstart` date NOT NULL,
  `forrowingdate` date NOT NULL,
  `gestateends` date NOT NULL,
  `piglets` int(20) NOT NULL,
  `male` int(32) NOT NULL,
  `female` int(32) NOT NULL,
  `mortality` int(32) NOT NULL,
  `img` varchar(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpigbreeders`
--

INSERT INTO `tblpigbreeders` (`id`, `name`, `age`, `status`, `total_farrowed`, `breedingstart`, `forrowingdate`, `gestateends`, `piglets`, `male`, `female`, `mortality`, `img`, `date`) VALUES
(1, 'we5', '23 Months', 'Lactating', 14, '2025-09-15', '2025-07-24', '2025-09-02', 3, 2, 1, 0, 'AI-XX3.jpg', '2025-08-28 14:00:38.552591'),
(13, '1', '3 Months', 'Breeding', 7, '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, 1, 0, 'diagram.png', '2025-09-21 16:02:27.968885'),
(14, '3', '23 Months', 'Farrowing', 0, '2025-09-23', '2026-01-01', '0000-00-00', 0, 0, 0, 0, 'diagram.png', '2025-09-23 14:32:01.902403'),
(17, '23', '2 Months', 'Breeding', 0, '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, 0, 0, 'diagram.png', '2025-09-23 14:56:01.036393'),
(18, '23', '2323 Months', 'Farrowing', 23, '2025-09-03', '2025-12-28', '0000-00-00', 0, 0, 0, 0, 'diagram.png', '2025-09-23 15:31:22.431467'),
(19, 'qweq', '23 Months', 'Lactating', 0, '0000-00-00', '2025-09-19', '2025-10-29', 23, 0, 0, 0, 'diagram.png', '2025-09-23 15:31:41.445391');

-- --------------------------------------------------------

--
-- Table structure for table `tblpigforsale`
--

CREATE TABLE `tblpigforsale` (
  `id` int(11) NOT NULL,
  `piglet_id` int(32) NOT NULL,
  `name` varchar(120) NOT NULL,
  `sow_id` int(32) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `weight_class` varchar(255) NOT NULL,
  `price` int(32) NOT NULL,
  `img` varchar(32) NOT NULL,
  `back` varchar(32) NOT NULL,
  `side` varchar(32) NOT NULL,
  `front` varchar(32) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `status` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpigforsale`
--

INSERT INTO `tblpigforsale` (`id`, `piglet_id`, `name`, `sow_id`, `sex`, `age`, `weight_class`, `price`, `img`, `back`, `side`, `front`, `CreationDate`, `UpdationDate`, `status`) VALUES
(3, 7, '2-3', 3, 'Male', ' Months', '30-40kg', 233, 'AI-XX3.jpg', 'AI-XX3.jpg', 'diagram.png', 'diagram.png', '2025-09-22 15:07:15', NULL, ''),
(4, 8, '2-1', 3, 'Male', ' Months', '40-50kg', 90, 'diagram.png', 'diagram.png', 'diagram.png', 'diagram.png', '2025-09-22 15:09:30', NULL, ''),
(5, 9, '2-2', 3, 'Female', '3 Months', '30-40kg', 23, 'diagram.png', 'AI-XX3.jpg', 'diagram.png', 'diagram.png', '2025-09-22 15:16:16', NULL, ''),
(6, 13, '4', 3, 'Female', '3 Months', '40-50kg', 233, 'AI-XX3.jpg', 'AI-XX3.jpg', 'diagram.png', 'diagram.png', '2025-09-22 15:19:50', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblpiglet_for_sale`
--

CREATE TABLE `tblpiglet_for_sale` (
  `id` int(32) NOT NULL,
  `growingphase_id` int(32) NOT NULL,
  `name` varchar(122) NOT NULL,
  `farrowed_Date` date NOT NULL,
  `available` int(32) NOT NULL,
  `sold` int(32) NOT NULL,
  `price` int(32) NOT NULL,
  `status` varchar(122) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpiglet_for_sale`
--

INSERT INTO `tblpiglet_for_sale` (`id`, `growingphase_id`, `name`, `farrowed_Date`, `available`, `sold`, `price`, `status`, `created`) VALUES
(7, 2, '3', '2025-05-19', 0, 0, 23, 'AVAILABLE', '2025-09-01'),
(8, 3, '5', '2025-06-10', 0, 0, 4666, 'AVAILABLE', '2025-09-04'),
(9, 3, '3', '2025-06-10', 0, 0, 23, 'AVAILABLE', '2025-09-04'),
(10, 3, '3', '2025-06-10', 0, 0, 2333, 'AVAILABLE', '2025-09-13'),
(11, 4, '10', '2025-06-24', 0, 0, 4000, 'AVAILABLE', '2025-09-13'),
(12, 3, '8', '2025-06-10', 0, 0, 4000, 'AVAILABLE', '2025-09-13'),
(13, 3, '3', '2025-06-10', 0, 0, 7000, 'AVAILABLE', '2025-09-13'),
(14, 6, '20', '2025-07-18', 0, 0, 233, 'AVAILABLE', '2025-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `tblpiglet_for_sale_details`
--

CREATE TABLE `tblpiglet_for_sale_details` (
  `id` int(32) NOT NULL,
  `tblpiglet_for_sale_id` int(32) NOT NULL,
  `piglet_id` int(32) NOT NULL,
  `name` varchar(122) NOT NULL,
  `price` int(32) NOT NULL,
  `piglet_weight` int(32) NOT NULL,
  `gender` varchar(122) NOT NULL,
  `img` varchar(122) NOT NULL,
  `status` varchar(122) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpiglet_for_sale_details`
--

INSERT INTO `tblpiglet_for_sale_details` (`id`, `tblpiglet_for_sale_id`, `piglet_id`, `name`, `price`, `piglet_weight`, `gender`, `img`, `status`, `created`) VALUES
(6, 11, 10, '1-1(1)', 4000, 15, 'Male', 'diagram.png', 'AVAILABLE', '2025-09-13'),
(7, 12, 8, '2-1(1)', 4000, 14, 'Male', 'diagram.png', 'AVAILABLE', '2025-09-13'),
(8, 13, 11, '1-2', 3500, 35, 'Male', 'AI-XX3.jpg', 'ordered', '2025-09-13'),
(9, 13, 9, '2-2', 3500, 13, 'Female', 'diagram.png', 'ordered', '2025-09-13'),
(10, 14, 20, '1(1)', 233, 23, 'Female', 'AI-XX3.jpg', 'AVAILABLE', '2025-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `tblsales`
--

CREATE TABLE `tblsales` (
  `id` int(32) NOT NULL,
  `total_sales` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsales`
--

INSERT INTO `tblsales` (`id`, `total_sales`) VALUES
(1, 1222488);

-- --------------------------------------------------------

--
-- Table structure for table `tblsoworder`
--

CREATE TABLE `tblsoworder` (
  `id` int(32) NOT NULL,
  `sow_id` int(32) NOT NULL,
  `custname` varchar(122) NOT NULL,
  `date` date NOT NULL,
  `totalamount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsoworder`
--

INSERT INTO `tblsoworder` (`id`, `sow_id`, `custname`, `date`, `totalamount`) VALUES
(10, 13, '123', '2025-09-26', 12),
(13, 13, 'qweq', '2025-09-27', 12),
(14, 13, 'qweqq', '2025-09-27', 12),
(15, 12, '123', '2025-10-04', 22),
(16, 14, 'qweq', '2025-09-24', 1222222);

-- --------------------------------------------------------

--
-- Table structure for table `tbltodo`
--

CREATE TABLE `tbltodo` (
  `id` int(11) NOT NULL,
  `sow_id` int(32) NOT NULL,
  `piglet_id` int(32) NOT NULL,
  `details` varchar(255) NOT NULL,
  `time` date NOT NULL,
  `emailed` int(32) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltodo`
--

INSERT INTO `tbltodo` (`id`, `sow_id`, `piglet_id`, `details`, `time`, `emailed`) VALUES
(45, 0, 3, '1', '2025-09-18', 0),
(47, 0, 1, '3', '2025-09-17', 0),
(48, 1, 0, 'Farrowing', '2025-12-24', 1),
(49, 1, 0, 'Weaning', '2025-09-02', 0),
(50, 1, 0, 'Vitamins', '2025-07-25', 0),
(51, 1, 0, 'Injecting Iron', '2025-07-26', 0),
(52, 1, 0, 'Kapon', '2025-08-13', 0),
(78, 14, 0, 'Farrowing', '2026-01-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(32) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `RegDate`, `UpdationDate`) VALUES
(61, 'alfreddd', 'cornesioalfred80@gmail.com', '$2y$10$c7OoDqYq/IMJ5uWTqXkADubYp9tk6GqccSWmrq/QQhwjiBW/e9k9K', '09262026959', '2025-05-08', 'Panadtaran San Fernando Cebu', '2025-05-08 01:51:00', NULL),
(62, 'Joven', 'jovenalejandro98@gmail.com', '$2y$10$SWjYgHZv92GjMvWtY7Qq9.JZ6yf8oZQjqPe.Oo0k1aWY4.gYA7qiq', '09912147772', '2019-06-12', 'bas', '2025-05-16 13:43:39', NULL),
(65, 'ven', 'ven@gmail.com', '$2y$10$kq2/GfX52eQMIZ.U/RVg4eB9rQBk.Tx0XVnxpFPxLFDNOs85PugtS', '09912147772', '2025-08-06', 'qweqwe', '2025-09-01 14:53:02', NULL),
(66, 'ven', 've2323@gmail.com', '$2y$10$OmFqUu4QGfE51XZES9YoA.jfH1Emi6R1LYKVhTsOFgW6vA8E3htgW', '09912147772', '2025-07-16', 'qweqwe', '2025-09-01 14:54:09', NULL),
(67, 'ven', 'ven21@gmail.com', '$2y$10$XimyDm9sEwpCqopTTUYUeeejEgInE2.a6VtnCVib3zLvVRfSb2Kou', '09912147772', '2002-01-01', 'qweqwe', '2025-09-01 14:57:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unhealthy_piglets`
--

CREATE TABLE `unhealthy_piglets` (
  `id` int(32) NOT NULL,
  `piglet_id` int(32) NOT NULL,
  `details` varchar(255) NOT NULL,
  `status` varchar(32) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unhealthy_piglets`
--

INSERT INTO `unhealthy_piglets` (`id`, `piglet_id`, `details`, `status`, `date`) VALUES
(1, 7, 'sip on', 'Recovered', '2025-09-24'),
(2, 7, '23', 'Recovered', '2025-09-24'),
(3, 7, 'sd', 'Recovered', '2025-09-17'),
(4, 13, 'sS', 'Recovered', '2025-09-06'),
(5, 12, 'adada', 'Deceased', '2025-09-13');

-- --------------------------------------------------------

--
-- Table structure for table `vaccines_guide`
--

CREATE TABLE `vaccines_guide` (
  `id` int(32) NOT NULL,
  `piglet_id` int(32) NOT NULL,
  `vaccine_name` varchar(122) NOT NULL,
  `details` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vaccines_guide`
--

INSERT INTO `vaccines_guide` (`id`, `piglet_id`, `vaccine_name`, `details`, `date`) VALUES
(1, 1, '1', 'asadas', '2025-09-01'),
(2, 1, '2', '3', '2025-09-20'),
(3, 1, '3', '3', '2025-09-25'),
(4, 1, '4', '3', '2025-10-01'),
(5, 3, '1', '1213', '2025-09-18'),
(6, 4, '1', '2323', '2025-09-20'),
(7, 1, '3', '2323', '2025-09-17');

-- --------------------------------------------------------

--
-- Table structure for table `vaccines_shot`
--

CREATE TABLE `vaccines_shot` (
  `id` int(32) NOT NULL,
  `piglets_id` int(32) NOT NULL,
  `vaccined_by` varchar(122) NOT NULL DEFAULT 'Admin',
  `vaccine_name` varchar(122) NOT NULL,
  `date_vaccinated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vaccines_shot`
--

INSERT INTO `vaccines_shot` (`id`, `piglets_id`, `vaccined_by`, `vaccine_name`, `date_vaccinated`) VALUES
(1, 1, 'Admin', 'wew', 2025);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breeder_records`
--
ALTER TABLE `breeder_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `piglets`
--
ALTER TABLE `piglets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `piglets_qr`
--
ALTER TABLE `piglets_qr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblculling`
--
ALTER TABLE `tblculling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfeeds`
--
ALTER TABLE `tblfeeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgrowingphase`
--
ALTER TABLE `tblgrowingphase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmanage`
--
ALTER TABLE `tblmanage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorderdetails`
--
ALTER TABLE `tblorderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test` (`order_id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpigbreeders`
--
ALTER TABLE `tblpigbreeders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpigforsale`
--
ALTER TABLE `tblpigforsale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpiglet_for_sale`
--
ALTER TABLE `tblpiglet_for_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpiglet_for_sale_details`
--
ALTER TABLE `tblpiglet_for_sale_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsales`
--
ALTER TABLE `tblsales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsoworder`
--
ALTER TABLE `tblsoworder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltodo`
--
ALTER TABLE `tbltodo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unhealthy_piglets`
--
ALTER TABLE `unhealthy_piglets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaccines_guide`
--
ALTER TABLE `vaccines_guide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaccines_shot`
--
ALTER TABLE `vaccines_shot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `breeder_records`
--
ALTER TABLE `breeder_records`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `piglets`
--
ALTER TABLE `piglets`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `piglets_qr`
--
ALTER TABLE `piglets_qr`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblculling`
--
ALTER TABLE `tblculling`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblfeeds`
--
ALTER TABLE `tblfeeds`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblgrowingphase`
--
ALTER TABLE `tblgrowingphase`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblmanage`
--
ALTER TABLE `tblmanage`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblorderdetails`
--
ALTER TABLE `tblorderdetails`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblpigbreeders`
--
ALTER TABLE `tblpigbreeders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblpigforsale`
--
ALTER TABLE `tblpigforsale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpiglet_for_sale`
--
ALTER TABLE `tblpiglet_for_sale`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblpiglet_for_sale_details`
--
ALTER TABLE `tblpiglet_for_sale_details`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblsales`
--
ALTER TABLE `tblsales`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblsoworder`
--
ALTER TABLE `tblsoworder`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbltodo`
--
ALTER TABLE `tbltodo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `unhealthy_piglets`
--
ALTER TABLE `unhealthy_piglets`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vaccines_guide`
--
ALTER TABLE `vaccines_guide`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vaccines_shot`
--
ALTER TABLE `vaccines_shot`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
