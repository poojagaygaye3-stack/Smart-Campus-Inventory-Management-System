-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2026 at 06:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `college_inventory_archive`
--

CREATE TABLE `college_inventory_archive` (
  `Sr No` int(11) DEFAULT NULL,
  `DSR No` varchar(50) DEFAULT NULL,
  `Floor` varchar(50) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Item/Commodity Description` varchar(255) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Serial No` varchar(100) DEFAULT NULL,
  `Vendor details` varchar(255) DEFAULT NULL,
  `Date of Purchase` date DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `college_inventory_archive`
--

INSERT INTO `college_inventory_archive` (`Sr No`, `DSR No`, `Floor`, `Location`, `Item/Commodity Description`, `Category`, `Serial No`, `Vendor details`, `Date of Purchase`, `Remark`, `Status`) VALUES
(306, 'SVIMS/22-23/10/COMP/10/103', '6th', 'Faculty', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90A4EC1', 'INSAT DIGITAL', '2022-12-22', 'Not Working', 'Not OK'),
(307, 'SVIMS/22-23/10/COMP/10/103', '6th', 'Faculty', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90A4EC1', 'INSAT DIGITAL', '2022-12-22', 'Not Working', 'Not OK'),
(308, 'SVIMS/22-23/10/COMP/10/103', '6th', 'Faculty', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90A4EC1', 'INSAT DIGITAL', '2022-12-22', 'Not Working', 'Not OK'),
(309, 'SVIMS/22-23/10/COMP/10/103', '6th', 'Faculty', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90A4EC1', 'INSAT DIGITAL', '2022-12-22', 'Not Working', 'Not OK'),
(NULL, 'SVIMS/22-23/10/COMP/10/103', '6th', 'Faculty', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90A4EC1', 'INSAT DIGITAL', '2022-12-22', 'Not Working', 'Not OK'),
(NULL, 'SVIMS/22-23/10/COMP/10/103', '6th', 'Faculty', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90A4EC1', 'INSAT DIGITAL', '2022-12-22', 'Not Working', 'Not OK');

-- --------------------------------------------------------

--
-- Table structure for table `college_inventory_new`
--

CREATE TABLE `college_inventory_new` (
  `Sr No` int(11) DEFAULT NULL,
  `DSR No` varchar(50) DEFAULT NULL,
  `Floor` varchar(50) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Item/Commodity Description` varchar(255) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Serial No` varchar(100) DEFAULT NULL,
  `Vendor details` varchar(255) DEFAULT NULL,
  `Date of Purchase` date DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `college_inventory_new`
--

INSERT INTO `college_inventory_new` (`Sr No`, `DSR No`, `Floor`, `Location`, `Item/Commodity Description`, `Category`, `Serial No`, `Vendor details`, `Date of Purchase`, `Remark`, `Status`) VALUES
(2, 'SVIMS/22-23/35/COMP/03/134', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMRAA', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(3, 'SVIMS/22-23/35/COMP/03/134', '3RD', 'Computer LAB', 'Logitech Keyoard', 'Computer-Desktop', '2217M1E3768', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(4, 'SVIMS/22-23/35/COMP/03/134', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2228HS02QDQ8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(5, 'SVIMS/22-23/35/COMP/03/134', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(7, 'SVIMS/22-23/10/COMP/01/94', '3RD', 'Computer LAB', 'Logitech Keyoard', 'Computer-Desktop', '220MR196548', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(8, 'SVIMS/22-23/35/COMP/03/97', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2228HS02QMV8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(9, 'SVIMS/22-23/10/COMP/08/101', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(10, 'SVIMS/22-23/10/COMP/02/95', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '1S66D2KAC6WWURHK3VL0', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(11, 'SVIMS/22-23/35/COMP/35/138', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '2217MR1EC1E8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(12, 'SVIMS/22-23/35/COMP/35/138', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2228HS01nGK8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(13, 'SVIMS/22-23/35/COMP/35/138', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(15, 'SVIMS/22-23/35/COMP/01/104', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '2223MR1D7008', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(16, 'SVIMS/22-23/35/COMP/01/104', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '44X7247060', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(17, 'SVIMS/22-23/35/COMP/34/182', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(19, 'SVIMS/22-23/10/COMP/02/95', '3RD', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR196E8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(20, 'SVIMS/22-23/10/COMP/02/95', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2210HS05E0U8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(21, 'SVIMS/22-23/35/COMP/03/106', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90A4D6L', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(22, 'SVIMS/22-23/35/COMP/03/106', '3RD', 'Computer LAB', 'Logitech Keyoard', 'Computer-Desktop', '2223MR1D6278', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(23, 'SVIMS/22-23/35/COMP/03/106', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2211HS05ASX8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(24, 'SVIMS/22-23/35/COMP/03/106', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(25, 'SVIMS/22-23/35/COMP/04/107', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV909T860', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(26, 'SVIMS/22-23/35/COMP/04/107', '3RD', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2223MR2030B8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(27, 'SVIMS/22-23/35/COMP/04/107', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2211HS071Y58', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(28, 'SVIMS/22-23/35/COMP/04/107', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(29, 'SVIMS/22-23/35/COMP/05/108', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV909T860', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(30, 'SVIMS/22-23/35/COMP/05/108', '3RD', 'Computer LAB', 'Logitech Keyoard', 'Computer-Desktop', '2223MR1AF628', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(31, 'SVIMS/22-23/35/COMP/05/108', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2211HS03BVAB', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(32, 'SVIMS/22-23/35/COMP/05/108', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(33, 'SVIMS/22-23/35/COMP/06/109', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV909TA4R', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(34, 'SVIMS/22-23/35/COMP/06/109', '3RD', 'Computer LAB', 'Logitech Keyoard', 'Computer-Desktop', '2223MR1AFDF8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(35, 'SVIMS/22-23/35/COMP/06/109', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2211HS03BQD8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(36, 'SVIMS/22-23/35/COMP/06/109', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(37, 'SVIMS/22-23/35/COMP/07/110', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV909TB49', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(38, 'SVIMS/22-23/35/COMP/07/110', '3RD', 'Computer LAB', 'Logitech keyboard ', 'Computer-Desktop', '2224MR1D5CE8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(39, 'SVIMS/22-23/35/COMP/07/110', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2211HS03BNB8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(40, 'SVIMS/22-23/35/COMP/07/110', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(41, 'SVIMS/22-23/35/COMP/08/111', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV909TB42', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(42, 'SVIMS/22-23/35/COMP/08/111', '3RD', 'Computer LAB', 'Logitech keyboard ', 'Computer-Desktop', '2224MR1D5968', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(43, 'SVIMS/22-23/35/COMP/08/111', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2211HS09NZZ8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(44, 'SVIMS/22-23/35/COMP/08/111', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(45, 'SVIMS/22-23/35/COMP/09/112', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV909TB51', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(46, 'SVIMS/22-23/35/COMP/09/112', '3RD', 'Computer LAB', 'Logitech keyboard ', 'Computer-Desktop', '2224MR1D5958', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(47, 'SVIMS/22-23/35/COMP/09/112', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2212HS012HB8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(48, 'SVIMS/22-23/35/COMP/09/112', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(49, 'SVIMS/22-23/35/COMP/10/113', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV909TBBM', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(50, 'SVIMS/22-23/35/COMP/10/113', '3RD', 'Computer LAB', 'Logitech keyboard ', 'Computer-Desktop', '2224MR1D5938', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(51, 'SVIMS/22-23/35/COMP/10/113', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2228HS02QMM8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(52, 'SVIMS/22-23/35/COMP/10/113', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(53, 'SVIMS/22-23/35/COMP/11/114', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV909TB3Z', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(54, 'SVIMS/22-23/35/COMP/11/114', '3RD', 'Computer LAB', 'Logitech keyboard ', 'Computer-Desktop', '2223MR1AFE28', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(55, 'SVIMS/22-23/35/COMP/11/114', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2206HS01SES8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(56, 'SVIMS/22-23/35/COMP/11/114', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(59, 'SVIMS/22-23/35/COMP/19/122', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90A4DZ6', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(60, 'SVIMS/22-23/35/COMP/19/122', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '2223MR1D6B68', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(61, 'SVIMS/22-23/35/COMP/19/122', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2210Hs05E0Q8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(62, 'SVIMS/22-23/35/COMP/19/122', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(63, 'SVIMS/22-23/35/COMP/20/123', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV909TA3E', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(64, 'SVIMS/22-23/35/COMP/20/123', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '2223MR22C588', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(65, 'SVIMS/22-23/35/COMP/20/123', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2207HS01RTY8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(66, 'SVIMS/22-23/35/COMP/20/123', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(67, 'SVIMS/22-23/35/COMP/21/124', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90A4DZR', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(68, 'SVIMS/22-23/35/COMP/21/124', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '2223MR1E8408', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(69, 'SVIMS/22-23/35/COMP/21/124', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2231HS01WFT8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(70, 'SVIMS/22-23/35/COMP/21/124', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(71, 'SVIMS/22-23/35/COMP/23/126', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV909TA5P', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(72, 'SVIMS/22-23/35/COMP/23/126', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '2223MR2030E8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(73, 'SVIMS/22-23/35/COMP/23/126', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2211HS039N78', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(74, 'SVIMS/22-23/35/COMP/23/126', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(75, 'SVIMS/22-23/35/COMP/24/127', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV909TA56', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(76, 'SVIMS/22-23/35/COMP/24/127', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '2223MR20B028', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(77, 'SVIMS/22-23/35/COMP/24/127', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2211HS03C5P8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(78, 'SVIMS/22-23/35/COMP/24/127', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(79, 'SVIMS/22-23/35/COMP/29/132', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWWV909TB5A', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(80, 'SVIMS/22-23/35/COMP/02/105', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '2223MR1D6258', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(81, 'SVIMS/22-23/35/COMP/29/133', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2211HS05AYK8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(82, 'SVIMS/22-23/35/COMP/29/132', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(83, 'SVIMS/22-23/35/COMP/32/135', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWWV90A4E09', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(84, 'SVIMS/22-23/35/COMP/32/135', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '2223MR1D6208', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(85, 'SVIMS/22-23/35/COMP/32/135', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2211HS05F5W8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(86, 'SVIMS/22-23/35/COMP/32/135', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(87, 'SVIMS/22-23/35/COMP/34/137', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90A4E0D', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(88, 'SVIMS/22-23/35/COMP/34/137', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '2223MR1F6248', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(89, 'SVIMS/22-23/35/COMP/34/137', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2211HS0682D8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(90, 'SVIMS/22-23/35/COMP/34/137', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(91, 'SVIMS/22-23/35/COMP/13/116', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90A4D4N', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(92, 'SVIMS/22-23/35/COMP/13/116', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '2223MR1D7018', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(93, 'SVIMS/22-23/35/COMP/13/116', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', 'L903747', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(94, 'SVIMS/22-23/35/COMP/13/116', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(95, 'SVIMS/22-23/10/COMP/03/96', '3rd', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '1S66D2KAC6WWURHK3VK8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(96, 'SVIMS/22-23/10/COMP/03/96', '3rd', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1E09C8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(97, 'SVIMS/22-23/35/COMP/13/104', '3rd', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2212HS012H48', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(98, 'SVIMS/22-23/20/COMP/03/96', '3rd', 'Computer LAB', 'CPU', 'Computer-Desktop', 'V1CW874', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(99, 'SVIMS/MBA/11-12/64/4/COMP/64', '3rd', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', 'V1W8938', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(100, 'SVIMS/MBA/11-12/64/4/COMP/64', '3rd', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '4469336', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(101, 'SVIMS/MBA/11-12/64/4/COMP/64', '3rd', 'Computer LAB', 'logirech keyboard', 'Computer-Desktop', '1S45J48840005339B', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(102, 'SVIMS/MBA/11-12/64/4/COMP/64', '3rd', 'Computer LAB', 'CPU', 'Computer-Desktop', 'L903747', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(103, 'SVIMS/MBA/11-12/60/4/COMP/60', '3rd', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', 'L903747', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(104, 'SVIMS/MBA/11-12/60/4/COMP/60', '3rd', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '4470903', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(105, 'SVIMS/1-12/60/4/COMP/83', '3rd', 'Computer LAB', 'logitech Keyboard', 'Computer-Desktop', 'comp83', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(106, 'SVIMS/MBA/11-12/60/4/COMP/60', '3rd', 'Computer LAB', 'CPU', 'Computer-Desktop', '1S0864G4QL903560', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(107, 'SVIMS/MBA/11-12/48/3/COMP/48', '3rd', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', 'V1CW816', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(108, 'SVIMS/MBA/11-12/48/3/COMP/48', '3rd', 'Computer LAB', 'logitech keyboard', 'Computer-Desktop', '1737SC504268', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(109, 'SVIMS/MBA/11-12/48/3/COMP/48', '3rd', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '4469674', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(110, 'SVIMS/MBA/11-12/78/4/COMP/78', '3rd', 'Computer LAB', 'CPU', 'Computer-Desktop', '1S0864G4QL903619', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(111, 'SVIMS/MBA/11-12/78/4/COMP/78', '3rd', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', 'V1DL872', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(112, 'SVIMS/MBA/11-12/78/4/COMP/78', '3rd', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '1829SY05QUU8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(113, 'SVIMS/22-23/35/COMP/14/117', '3rd', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B1VRY', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(114, 'SVIMS/22-23/35/COMP/14/117', '3rd', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '1829SY05QUU8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(115, 'SVIMS/22-23/35/COMP/14/117', '3rd', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2211HS05F5W8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(116, 'SVIMS/MBA/11-12/48/1/COMP/48', '3rd', 'Computer LAB', 'CPU', 'Computer-Desktop', '1S0864G4QL903489', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(117, 'SVIMS/MBA/11-12/73/4/COMP/73', '3rd', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', 'V1DL221', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(118, 'SVIMS/MBA/11-12/73/4/COMP/73', '3rd', 'Computer LAB', 'logitech keyboard', 'Computer-Desktop', '1545J48840005099B', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(119, 'SVIMS/MBA/11-12/73/4/COMP/73', '3rd', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '4470863', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(120, 'SVIMS/MBA/11-12/73/4/COMP/73', '3rd', 'Computer LAB', 'CPU', 'Computer-Desktop', '1S0864G4QL903405', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(121, 'SVIMS/2016-17/86/5/COMP-86', '3rd', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', 'UEM163100385', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(122, 'SVIMS/2016-17/86/5/COMP-86', '3rd', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '65804230641', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(123, 'SVIMS/2016-17/86/5/COMP-86', '3rd', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '810002181', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(124, 'SVIMS/2016-17/86/5/COMP-86', '3rd', 'Computer LAB', 'CPU', 'Computer-Desktop', '65804230641', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(125, 'SVIMS/2016-17/86/5/COMP-85', '3rd', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', 'UEM163505327', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(126, 'SVIMS/2016-17/86/5/COMP-85', '3rd', 'Computer LAB', 'ogitech keyboard', 'Computer-Desktop', '1769767', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(127, 'SVIMS/2016-17/86/5/COMP-85', '3rd', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '184cc34f2fs', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(128, 'SVIMS/2016-17/86/5/COMP-85', '3rd', 'Computer LAB', 'CPU', 'Computer-Desktop', '2211HS05F5W8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(129, 'SVIMS/MBA/11-12/72/4/COMP/72', '3rd', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', 'V1DP673', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(130, 'SVIMS/MBA/11-12/72/4/COMP/72', '3rd', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '(21)00080108093602581', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(131, 'SVIMS/MBA/11-12/72/4/COMP/72', '3rd', 'Computer LAB', 'CPU', 'Computer-Desktop', '1S0864G4QL903787', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(132, 'SVIMS/MBA/11-12/72/4/COMP/102', '3rd', 'Computer LAB', 'Monitor', 'Computer-Desktop', 'UEN172022744', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(133, 'SVIMS/MBA/11-12/72/4/COMP/102', '3rd', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '5177', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(134, 'SVIMS/MBA/11-12/72/4/COMP/102', '3rd', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', 'KS22087-001', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(135, 'SVIMS/MBA/11-12/72/4/COMP/102', '3rd', 'Computer LAB', 'CPU', 'Computer-Desktop', '2211HS05F5W8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(136, 'SVIMS/22-23/35/COMP/16/119', '3rd', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90A4D4', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(137, 'SVIMS/22-23/35/COMP/16/119', '3rd', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2224MR1CDB38', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(138, 'SVIMS/22-23/35/COMP/16/119', '3rd', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2212HS03BVJ8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(139, 'SVIMS/22-23/35/COMP/16/119', '3rd', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(140, 'SVIMS/22-23/35/COMP/15/118', '3rd', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90A4D2G', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(141, 'SVIMS/22-23/35/COMP/15/118', '3rd', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2224MR1CD548', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(142, 'SVIMS/22-23/35/COMP/15/118', '3rd', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2210HS05DV18', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(143, 'SVIMS/22-23/35/COMP/15/118', '3rd', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(144, 'SVIMS/22-23/35/COMP/01/104', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV909TA5D', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(145, 'SVIMS/22-23/35/COMP/01/104', '3RD', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '223MR20A6D8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(147, 'SVIMS/22-23/35/COMP/01/104', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(148, 'SVIMS/22-23/35/COMP/17/120', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B2M1P', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(149, 'SVIMS/22-23/35/COMP/17/120', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '2230MR1DFFA8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(150, 'SVIMS/22-23/35/COMP/17/120', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2211HS0692K8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(151, 'SVIMS/22-23/35/COMP/17/120', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(152, 'SVIMS/22-23/35/COMP/18/121', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90A4D58', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(153, 'SVIMS/22-23/35/COMP/18/121', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '2223MR1A6488', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(154, 'SVIMS/22-23/35/COMP/18/121', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2211HS05ECY8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(155, 'SVIMS/22-23/35/COMP/18/121', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(156, 'SVIMS/22-23/35/COMP/14/117', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B1VRY', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(158, 'SVIMS/22-23/35/COMP/14/117', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '221HS05GVW8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(159, 'SVIMS/22-23/35/COMP/14/117', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(160, 'SVIMS/MBA/11-12/74/4/COMP/74', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', 'V1AG373', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(161, 'SVIMS/MBA/11-12/74/4/COMP/74', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '17394', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(162, 'SVIMS/MBA/11-12/74/4/COMP/74', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', 'HS827HA', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(163, 'SVIMS/MBA/11-12/74/4/COMP/74', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'C2D/1GB/HDD/LENEVO', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(164, 'SVIMS/MBA/11-12/45/3/COMP/45', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', 'V1DP675', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(165, 'SVIMS/MBA/11-12/45/3/COMP/45', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '5400', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(166, 'SVIMS/MBA/11-12/45/3/COMP/45', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '44X7247060', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(167, 'SVIMS/MBA/11-12/45/3/COMP/45', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'C2D/1GB/HDD/LENEVO', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(168, 'SVIMS/MBA/11-12/77/3/COMP/77', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', 'V1CW869', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(169, 'SVIMS/MBA/11-12/77/3/COMP/77', '3RD', 'Computer LAB', 'Logitech Keyboard', 'Computer-Desktop', '5213', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(170, 'SVIMS/MBA/11-12/77/3/COMP/77', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '2208HS01CLS8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(171, 'SVIMS/MBA/11-12/77/3/COMP/77', '3RD', 'Computer LAB', 'CPU', 'Computer-Desktop', 'C2D/1GB/HDD/LENEVO', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(174, 'SVIMS/MBA/11-12/55/3/COMP/84', '3RD', 'Computer LAB', 'Logitech Mouse', 'Computer-Desktop', '0X9DCG-71616-593M-1AVD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(176, 'SVIMS/MBA/10-11/31/2/COMP/31', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '003LPKW011885', 'INSAT DIGITAL', '2022-12-22', 'Working', 'OK'),
(177, 'SVIMS/MBA/10-11/31/2/COMP/31', '3RD', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2.11E+18', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(178, 'SVIMS/22-23/35/COMP/28/176', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMR9H', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(179, 'SVIMS/22-23/35/COMP/28/176', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR19D5C8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(180, 'SVIMS/22-23/35/COMP/28/176', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2206HS01CHH8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(181, 'SVIMS/22-23/35/COMP/28/176', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(182, 'SVIMS/22-23/35/COMP/29/177', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMR7V', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(183, 'SVIMS/22-23/35/COMP/29/177', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1CA788', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(184, 'SVIMS/22-23/35/COMP/29/177', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2227HS03U138', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(185, 'SVIMS/22-23/35/COMP/29/177', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(186, 'SVIMS/22-23/35/COMP/30/178', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B21XY', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(187, 'SVIMS/22-23/35/COMP/30/178', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1B2D58', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(188, 'SVIMS/22-23/35/COMP/30/178', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS01UGR8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(189, 'SVIMS/22-23/35/COMP/30/178', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(190, 'SVIMS/22-23/35/COMP/01/149', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMR9W', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(191, 'SVIMS/22-23/35/COMP/01/149', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1A49C8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(192, 'SVIMS/22-23/35/COMP/01/149', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS003MJ8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(193, 'SVIMS/22-23/35/COMP/01/149', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(194, 'SVIMS/22-23/35/COMP/02/150', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B21Y2', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(195, 'SVIMS/22-23/35/COMP/02/150', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1DFFC8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(196, 'SVIMS/22-23/35/COMP/02/150', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '228HS004DN8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(197, 'SVIMS/22-23/35/COMP/02/150', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(198, 'SVIMS/22-23/35/COMP/03/179', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B0V3B', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(199, 'SVIMS/22-23/35/COMP/03/179', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1DF538', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(200, 'SVIMS/22-23/35/COMP/03/179', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS01V378', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(201, 'SVIMS/22-23/35/COMP/03/179', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(202, 'SVIMS/22-23/35/COMP/25/173', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMP79', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(203, 'SVIMS/22-23/35/COMP/25/173', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1B6778', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(204, 'SVIMS/22-23/35/COMP/25/173', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2227HS02ARY8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(205, 'SVIMS/22-23/35/COMP/25/173', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(206, 'SVIMS/22-23/35/COMP/26/174', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMRAH', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(207, 'SVIMS/22-23/35/COMP/26/174', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1B6778', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(208, 'SVIMS/22-23/35/COMP/26/174', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS00B0G8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(209, 'SVIMS/22-23/35/COMP/26/174', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(210, 'SVIMS/22-23/35/COMP/27/175', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMRB6', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(211, 'SVIMS/22-23/35/COMP/27/175', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1B6758', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(212, 'SVIMS/22-23/35/COMP/27/175', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2227HS02AUE8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(213, 'SVIMS/22-23/35/COMP/27/175', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(214, 'SVIMS/22-23/35/COMP/03/151', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMPBN', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(215, 'SVIMS/22-23/35/COMP/03/151', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1A2478', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(216, 'SVIMS/22-23/35/COMP/03/151', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2226HS035DB8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(217, 'SVIMS/22-23/35/COMP/03/151', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(218, 'SVIMS/22-23/35/COMP/04/152', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B1W2X', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(219, 'SVIMS/22-23/35/COMP/04/152', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1AC0C8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(220, 'SVIMS/22-23/35/COMP/04/152', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS02Q8C8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(221, 'SVIMS/22-23/35/COMP/04/152', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(222, 'SVIMS/22-23/35/COMP/05/153', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMRA7', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(223, 'SVIMS/22-23/35/COMP/05/153', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR19C9A8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(224, 'SVIMS/22-23/35/COMP/05/153', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS006608', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(225, 'SVIMS/22-23/35/COMP/05/153', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(226, 'SVIMS/22-23/35/COMP/06/154', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B0VF6', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(227, 'SVIMS/22-23/35/COMP/06/154', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1C1F78', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(228, 'SVIMS/22-23/35/COMP/06/154', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS02QSA8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(229, 'SVIMS/22-23/35/COMP/06/154', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(230, 'SVIMS/22-23/35/COMP/07/155', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMR82', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(231, 'SVIMS/22-23/35/COMP/07/155', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR19C9C8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(232, 'SVIMS/22-23/35/COMP/07/155', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2225HS040H38', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(233, 'SVIMS/22-23/35/COMP/07/155', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(234, 'SVIMS/22-23/35/COMP/08/156', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B1G8E', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(235, 'SVIMS/22-23/35/COMP/08/156', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR19C9B8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(236, 'SVIMS/22-23/35/COMP/08/156', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS005GQ8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(237, 'SVIMS/22-23/35/COMP/08/156', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(238, 'SVIMS/22-23/35/COMP/09/157', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B2LG0', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(239, 'SVIMS/22-23/35/COMP/09/157', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1BE718', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(240, 'SVIMS/22-23/35/COMP/09/157', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS02QEF8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(241, 'SVIMS/22-23/35/COMP/09/157', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(242, 'SVIMS/22-23/35/COMP/10/158', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMRB2', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(243, 'SVIMS/22-23/35/COMP/10/158', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1E0E48', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(244, 'SVIMS/22-23/35/COMP/10/158', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS01US48', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(245, 'SVIMS/22-23/35/COMP/10/158', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(246, 'SVIMS/22-23/35/COMP/22/170', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMPCV', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(247, 'SVIMS/22-23/35/COMP/22/170', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1B62E8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(248, 'SVIMS/22-23/35/COMP/22/170', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS007A88', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(249, 'SVIMS/22-23/35/COMP/22/170', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(250, 'SVIMS/22-23/35/COMP/23/171', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMPDF', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(251, 'SVIMS/22-23/35/COMP/23/171', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1A4980', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(252, 'SVIMS/22-23/35/COMP/23/171', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2227HS03TC48', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(253, 'SVIMS/22-23/35/COMP/23/171', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(254, 'SVIMS/22-23/35/COMP/24/172', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMRAD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(255, 'SVIMS/22-23/35/COMP/24/172', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1B0608', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(256, 'SVIMS/22-23/35/COMP/24/172', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS01NZ98', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(257, 'SVIMS/22-23/35/COMP/24/172', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(258, 'SVIMS/22-23/35/COMP/19/167', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV909TXG1', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(259, 'SVIMS/22-23/35/COMP/19/167', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1E12C8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(260, 'SVIMS/22-23/35/COMP/19/167', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS02QSH8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(261, 'SVIMS/22-23/35/COMP/19/167', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(262, 'SVIMS/22-23/35/COMP/20/168', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B2M1X', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(263, 'SVIMS/22-23/35/COMP/20/168', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1E12B8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(264, 'SVIMS/22-23/35/COMP/20/168', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS004DV8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(265, 'SVIMS/22-23/35/COMP/20/168', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(266, 'SVIMS/22-23/35/COMP/21/169', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B2M1M', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(267, 'SVIMS/22-23/35/COMP/21/169', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1DCA38', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(268, 'SVIMS/22-23/35/COMP/21/169', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS008738', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(269, 'SVIMS/22-23/35/COMP/21/169', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(270, 'SVIMS/22-23/35/COMP/15/163', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMRAT', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(271, 'SVIMS/22-23/35/COMP/15/163', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1E1778', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(272, 'SVIMS/22-23/35/COMP/15/163', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2226HS034XP8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(273, 'SVIMS/22-23/35/COMP/15/163', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(274, 'SVIMS/22-23/35/COMP/16/164', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B2M1F', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(275, 'SVIMS/22-23/35/COMP/16/164', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1E1788', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(276, 'SVIMS/22-23/35/COMP/16/164', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS0078M8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(277, 'SVIMS/22-23/35/COMP/16/164', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(278, 'SVIMS/22-23/35/COMP/17/165', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B0V4H', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(279, 'SVIMS/22-23/35/COMP/17/165', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1E1768', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(280, 'SVIMS/22-23/35/COMP/17/165', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS02QDX8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(281, 'SVIMS/22-23/35/COMP/17/165', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(282, 'SVIMS/22-23/35/COMP/18/166', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B2L8M', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(283, 'SVIMS/22-23/35/COMP/18/166', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1E1758', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(284, 'SVIMS/22-23/35/COMP/18/166', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS02QDR8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(285, 'SVIMS/22-23/35/COMP/18/166', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(286, 'SVIMS/22-23/35/COMP/11/159', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMPB3', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(287, 'SVIMS/22-23/35/COMP/11/159', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1DF028', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(288, 'SVIMS/22-23/35/COMP/11/159', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS01UGS8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(289, 'SVIMS/22-23/35/COMP/11/159', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(290, 'SVIMS/22-23/35/COMP/12/160', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B2MO8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(291, 'SVIMS/22-23/35/COMP/12/160', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1E08A8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(292, 'SVIMS/22-23/35/COMP/12/160', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS02Q8L8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(293, 'SVIMS/22-23/35/COMP/12/160', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(294, 'SVIMS/22-23/35/COMP/13/161', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90AMRA9', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(295, 'SVIMS/22-23/35/COMP/13/161', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1A4F48', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(296, 'SVIMS/22-23/35/COMP/13/161', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2228HS02QEH8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(297, 'SVIMS/22-23/35/COMP/13/161', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(298, 'SVIMS/22-23/35/COMP/14/162', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90B0V2T', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(299, 'SVIMS/22-23/35/COMP/14/162', '5th', 'Computer LAB', 'Logitech keyboard', 'Computer-Desktop', '2230MR1E1798', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(300, 'SVIMS/22-23/35/COMP/14/162', '5th', 'Computer LAB', 'Logical mouse', 'Computer-Desktop', '2231HS01WFX8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(301, 'SVIMS/22-23/35/COMP/14/162', '5th', 'Computer LAB', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(302, 'SVIMS/22-23/35/COMP/33/136', '1ST ', 'Faculty', 'Lenovo Monitor', 'Computer-Desktop', '61E0KAR6WWV90A4E07', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(303, 'SVIMS/22-23/35/COMP/33/136', '1ST ', 'Faculty', 'Logitech keyboard', 'Computer-Desktop', '2223MR2030D8', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(304, 'SVIMS/22-23/35/COMP/33/136', '1ST ', 'Faculty', 'Logitech Mouse', 'Computer-Desktop', 'HS827HA', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(305, 'SVIMS/22-23/35/COMP/33/136', '1ST ', 'Faculty', 'CPU', 'Computer-Desktop', 'Win11/ci9/Asus/ci9/16GB/512SSD', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(NULL, 'SVIMS/MBA/14-15/89/5/COMP/44', '3RD', 'Computer LAB', 'lenova monitor', 'Computer-Desktop', 'CN0657PN641804184XWU', 'insat digital Enterprises', '2022-02-12', 'Working', 'ok'),
(172, 'SVIMS/MBA/11-12/55/3/COMP/55', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', 'V1DP620', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(173, 'SVIMS/MBA/11-12/55/3/COMP/55', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', 'V1DP620', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(175, 'SVIMS/MBA/11-12/55/3/COMP/55', '5th', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', 'V1DP620', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok'),
(1, 'SVIMS/22-23/10/COMP/04/142', '3RD', 'Computer LAB', 'Lenovo Monitor', 'Computer-Desktop', '1566D2KAC6WWURHGBT1F', 'INSAT DIGITAL', '2022-12-22', 'Working', 'Ok');

-- --------------------------------------------------------

--
-- Table structure for table `superusers`
--

CREATE TABLE `superusers` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `superusers`
--

INSERT INTO `superusers` (`id`, `email`, `password`) VALUES
(1, 'superuser@gmail.com', '123'),
(2, 'faculty@gmail.com', 'faculty123');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`) VALUES
(4, 'student@gmail.com', 'student123', 'student'),
(5, 'faculty@gmail.com', 'faculty123', 'faculty'),
(6, 'hod@gmail.com', 'hod123', 'hod'),
(7, 'coordinator@gmail.com', 'coord123', 'coordinator'),
(8, 'ceo@gmail.com', 'ceo123', 'ceo'),
(9, 'it@gmail.com', 'it123', 'it');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `superusers`
--
ALTER TABLE `superusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `superusers`
--
ALTER TABLE `superusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
