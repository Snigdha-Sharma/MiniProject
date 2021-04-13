-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2021 at 08:41 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `counselling`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `UserName` varchar(25) NOT NULL,
  `Password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`UserName`, `Password`) VALUES
('admin1', 'asd'),
('admin1', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `allbranches`
--

CREATE TABLE `allbranches` (
  `bid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allbranches`
--

INSERT INTO `allbranches` (`bid`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(12),
(17),
(18),
(22);

-- --------------------------------------------------------

--
-- Table structure for table `alliiits`
--

CREATE TABLE `alliiits` (
  `ind1` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alliiits`
--

INSERT INTO `alliiits` (`ind1`) VALUES
(11),
(12),
(13),
(14),
(15);

-- --------------------------------------------------------

--
-- Table structure for table `alliits`
--

CREATE TABLE `alliits` (
  `ind` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alliits`
--

INSERT INTO `alliits` (`ind`) VALUES
(6),
(7),
(8),
(9),
(10);

-- --------------------------------------------------------

--
-- Table structure for table `allnits`
--

CREATE TABLE `allnits` (
  `inds` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allnits`
--

INSERT INTO `allnits` (`inds`) VALUES
(1),
(2),
(3),
(4),
(5),
(21);

-- --------------------------------------------------------

--
-- Table structure for table `allprograms`
--

CREATE TABLE `allprograms` (
  `SNo` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allprograms`
--

INSERT INTO `allprograms` (`SNo`) VALUES
(2),
(3),
(4),
(5),
(6),
(7);

-- --------------------------------------------------------

--
-- Table structure for table `allstates`
--

CREATE TABLE `allstates` (
  `state_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allstates`
--

INSERT INTO `allstates` (`state_id`) VALUES
(5),
(13),
(27);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branch_id` int(11) NOT NULL,
  `Name` varchar(10000) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branch_id`, `Name`, `program_id`) VALUES
(1, 'Aerospace Engineering', 1),
(2, 'Agricultural and Food Engineering', 1),
(3, 'Biological Sciences and Bioengineering', 1),
(4, 'Bio Technology', 1),
(5, 'Biotechnology and Biochemical Engineering', 1),
(6, 'Ceramic Engineering', 1),
(7, 'Chemical Engineering', 1),
(8, 'Chemical Science and Technology', 1),
(9, 'Production Engineering', 1),
(10, 'Computer Science and Engineering', 1),
(11, 'Exploration Geophysics', 6),
(12, 'Civil Engineering', 1),
(13, 'Civil Engineering and M. Tech. in Structural Engineering', 2),
(14, 'Civil Engineering and M.Tech in Transportation Engineering', 2),
(15, 'Computer Science and Engineering', 2),
(16, 'Electrical Engineering and M.Tech Power Electronics and Drives', 2),
(17, 'Electrical Engineering', 1),
(18, 'Electronics and Communication Engineering', 1),
(19, 'Mechanical Engineering and M. Tech. in Mechanical System Design', 2),
(20, 'Mechanical Engineering and M. Tech. in Thermal Science & Engineering', 2),
(21, 'Mechanical Engineering with M.Tech. in Manufacturing Engineering', 2),
(22, 'Metallurgical and Materials Engineering', 1),
(23, 'Metallurgical and Materials Engineering', 2),
(24, 'Civil Engineering and M. Tech. in Structural Engineering', 2),
(25, 'Architecture', 7);

-- --------------------------------------------------------

--
-- Table structure for table `filter1`
--

CREATE TABLE `filter1` (
  `SNo` int(11) NOT NULL,
  `opening_rank` int(11) DEFAULT NULL,
  `closing_rank` int(11) DEFAULT NULL,
  `institute_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `seat_type_id` int(11) DEFAULT NULL,
  `gender_type_id` int(11) DEFAULT NULL,
  `region_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filter1`
--

INSERT INTO `filter1` (`SNo`, `opening_rank`, `closing_rank`, `institute_id`, `branch_id`, `quota_id`, `seat_type_id`, `gender_type_id`, `region_id`) VALUES
(1, 24332, 37006, 16, 4, 1, 1, 1, 3),
(2, 807, 2070, 7, 1, 1, 1, 1, 4),
(3, 832, 1922, 7, 7, 1, 1, 1, 4),
(4, 6836, 8816, 6, 12, 1, 1, 1, 3),
(5, 13184, 14366, 6, 12, 1, 1, 2, 3),
(7, 9317, 9751, 6, 24, 1, 1, 1, 3),
(8, 15881, 15881, 6, 24, 1, 1, 2, 3),
(10, 357, 941, 16, 25, 1, 1, 1, 3),
(15, 1227, 2725, 16, 25, 3, 1, 1, 3),
(19, 24332, 37006, 16, 4, 1, 1, 1, 3),
(25, 37552, 50331, 16, 4, 3, 1, 1, 3),
(29, 1490, 3770, 2, 10, 3, 1, 1, 5),
(30, 5356, 8841, 2, 10, 3, 1, 2, 5),
(44, 783, 2613, 2, 10, 2, 1, 1, 5),
(45, 4613, 5844, 2, 10, 2, 1, 2, 5),
(59, 693, 2021, 4, 25, 3, 1, 1, 5),
(60, 574, 901, 4, 25, 3, 1, 2, 5),
(63, 2237, 3114, 10, 17, 1, 1, 1, 5),
(64, 3993, 7147, 10, 17, 1, 1, 2, 5),
(67, 3812, 7136, 11, 10, 1, 1, 1, 5),
(68, 7551, 11475, 11, 10, 1, 1, 2, 5),
(71, 12743, 15267, 4, 18, 3, 1, 2, 5),
(72, 14019, 18539, 2, 17, 2, 1, 2, 5),
(73, 13543, 15267, 10, 2, 2, 1, 2, 5),
(74, 13543, 15167, 14, 6, 2, 1, 2, 5),
(75, 13543, 15167, 10, 9, 2, 1, 2, 5),
(76, 13590, 15167, 21, 13, 2, 1, 2, 5),
(77, 13926, 14697, 19, 11, 2, 1, 2, 6),
(78, 13996, 14597, 17, 13, 1, 1, 2, 1),
(79, 13826, 14197, 12, 19, 1, 1, 2, 1),
(80, 13001, 15999, 11, 25, 1, 1, 2, 5),
(81, 13002, 15399, 15, 6, 1, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `filter2`
--

CREATE TABLE `filter2` (
  `SNo` int(11) NOT NULL,
  `opening_rank` int(11) DEFAULT NULL,
  `closing_rank` int(11) DEFAULT NULL,
  `institute_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `seat_type_id` int(11) DEFAULT NULL,
  `gender_type_id` int(11) DEFAULT NULL,
  `region_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filter2`
--

INSERT INTO `filter2` (`SNo`, `opening_rank`, `closing_rank`, `institute_id`, `branch_id`, `quota_id`, `seat_type_id`, `gender_type_id`, `region_id`) VALUES
(5, 13184, 14366, 6, 12, 1, 1, 2, 3),
(8, 15881, 15881, 6, 24, 1, 1, 2, 3),
(30, 5356, 8841, 2, 10, 3, 1, 2, 5),
(45, 4613, 5844, 2, 10, 2, 1, 2, 5),
(60, 574, 901, 4, 25, 3, 1, 2, 5),
(64, 3993, 7147, 10, 17, 1, 1, 2, 5),
(68, 7551, 11475, 11, 10, 1, 1, 2, 5),
(71, 12743, 15267, 4, 18, 3, 1, 2, 5),
(72, 14019, 18539, 2, 17, 2, 1, 2, 5),
(73, 13543, 15267, 10, 2, 2, 1, 2, 5),
(74, 13543, 15167, 14, 6, 2, 1, 2, 5),
(75, 13543, 15167, 10, 9, 2, 1, 2, 5),
(76, 13590, 15167, 21, 13, 2, 1, 2, 5),
(77, 13926, 14697, 19, 11, 2, 1, 2, 6),
(78, 13996, 14597, 17, 13, 1, 1, 2, 1),
(79, 13826, 14197, 12, 19, 1, 1, 2, 1),
(80, 13001, 15999, 11, 25, 1, 1, 2, 5),
(81, 13002, 15399, 15, 6, 1, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `filter3`
--

CREATE TABLE `filter3` (
  `SNo` int(11) NOT NULL,
  `opening_rank` int(11) DEFAULT NULL,
  `closing_rank` int(11) DEFAULT NULL,
  `institute_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `seat_type_id` int(11) DEFAULT NULL,
  `gender_type_id` int(11) DEFAULT NULL,
  `region_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filter3`
--

INSERT INTO `filter3` (`SNo`, `opening_rank`, `closing_rank`, `institute_id`, `branch_id`, `quota_id`, `seat_type_id`, `gender_type_id`, `region_id`) VALUES
(5, 13184, 14366, 6, 12, 1, 1, 2, 3),
(8, 15881, 15881, 6, 24, 1, 1, 2, 3),
(71, 12743, 15267, 4, 18, 3, 1, 2, 5),
(73, 13543, 15267, 10, 2, 2, 1, 2, 5),
(74, 13543, 15167, 14, 6, 2, 1, 2, 5),
(75, 13543, 15167, 10, 9, 2, 1, 2, 5),
(76, 13590, 15167, 21, 13, 2, 1, 2, 5),
(77, 13926, 14697, 19, 11, 2, 1, 2, 6),
(78, 13996, 14597, 17, 13, 1, 1, 2, 1),
(79, 13826, 14197, 12, 19, 1, 1, 2, 1),
(80, 13001, 15999, 11, 25, 1, 1, 2, 5),
(81, 13002, 15399, 15, 6, 1, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `filter4`
--

CREATE TABLE `filter4` (
  `SNo` int(11) NOT NULL,
  `opening_rank` int(11) DEFAULT NULL,
  `closing_rank` int(11) DEFAULT NULL,
  `institute_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `seat_type_id` int(11) DEFAULT NULL,
  `gender_type_id` int(11) DEFAULT NULL,
  `region_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filter4`
--

INSERT INTO `filter4` (`SNo`, `opening_rank`, `closing_rank`, `institute_id`, `branch_id`, `quota_id`, `seat_type_id`, `gender_type_id`, `region_id`) VALUES
(5, 13184, 14366, 6, 12, 1, 1, 2, 3),
(8, 15881, 15881, 6, 24, 1, 1, 2, 3),
(71, 12743, 15267, 4, 18, 3, 1, 2, 5),
(73, 13543, 15267, 10, 2, 2, 1, 2, 5),
(74, 13543, 15167, 14, 6, 2, 1, 2, 5),
(75, 13543, 15167, 10, 9, 2, 1, 2, 5),
(76, 13590, 15167, 21, 13, 2, 1, 2, 5),
(77, 13926, 14697, 19, 11, 2, 1, 2, 6),
(78, 13996, 14597, 17, 13, 1, 1, 2, 1),
(79, 13826, 14197, 12, 19, 1, 1, 2, 1),
(80, 13001, 15999, 11, 25, 1, 1, 2, 5),
(81, 13002, 15399, 15, 6, 1, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `filter5`
--

CREATE TABLE `filter5` (
  `SNo` int(11) NOT NULL,
  `opening_rank` int(11) DEFAULT NULL,
  `closing_rank` int(11) DEFAULT NULL,
  `institute_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `seat_type_id` int(11) DEFAULT NULL,
  `gender_type_id` int(11) DEFAULT NULL,
  `region_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filter5`
--

INSERT INTO `filter5` (`SNo`, `opening_rank`, `closing_rank`, `institute_id`, `branch_id`, `quota_id`, `seat_type_id`, `gender_type_id`, `region_id`) VALUES
(5, 13184, 14366, 6, 12, 1, 1, 2, 3),
(8, 15881, 15881, 6, 24, 1, 1, 2, 3),
(71, 12743, 15267, 4, 18, 3, 1, 2, 5),
(73, 13543, 15267, 10, 2, 2, 1, 2, 5),
(74, 13543, 15167, 14, 6, 2, 1, 2, 5),
(75, 13543, 15167, 10, 9, 2, 1, 2, 5),
(76, 13590, 15167, 21, 13, 2, 1, 2, 5),
(77, 13926, 14697, 19, 11, 2, 1, 2, 6),
(78, 13996, 14597, 17, 13, 1, 1, 2, 1),
(79, 13826, 14197, 12, 19, 1, 1, 2, 1),
(80, 13001, 15999, 11, 25, 1, 1, 2, 5),
(81, 13002, 15399, 15, 6, 1, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `filter6`
--

CREATE TABLE `filter6` (
  `SNo` int(11) NOT NULL,
  `opening_rank` int(11) DEFAULT NULL,
  `closing_rank` int(11) DEFAULT NULL,
  `institute_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `seat_type_id` int(11) DEFAULT NULL,
  `gender_type_id` int(11) DEFAULT NULL,
  `region_id` int(10) DEFAULT NULL,
  `bid` int(11) NOT NULL,
  `branchp` int(10) DEFAULT NULL,
  `regionsp` int(10) DEFAULT NULL,
  `yoestd` int(10) DEFAULT NULL,
  `placerank` int(10) DEFAULT NULL,
  `camprat` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filter6`
--

INSERT INTO `filter6` (`SNo`, `opening_rank`, `closing_rank`, `institute_id`, `branch_id`, `quota_id`, `seat_type_id`, `gender_type_id`, `region_id`, `bid`, `branchp`, `regionsp`, `yoestd`, `placerank`, `camprat`) VALUES
(73, 13543, 15267, 10, 2, 2, 1, 2, 5, 2, 0, 2, 2009, 7, 7),
(74, 13543, 15167, 14, 6, 2, 1, 2, 5, 6, 0, 2, 1999, 6, 6),
(81, 13002, 15399, 15, 6, 1, 1, 2, 2, 6, 0, 5, 2007, 17, 18),
(75, 13543, 15167, 10, 9, 2, 1, 2, 5, 9, 0, 2, 2009, 7, 7),
(5, 13184, 14366, 6, 12, 1, 1, 2, 3, 12, 4, 4, 2008, 8, 9),
(71, 12743, 15267, 4, 18, 3, 1, 2, 5, 18, 0, 2, 1960, 9, 11);

-- --------------------------------------------------------

--
-- Table structure for table `gender_type`
--

CREATE TABLE `gender_type` (
  `gender_type_id` int(100) NOT NULL,
  `Name` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gender_type`
--

INSERT INTO `gender_type` (`gender_type_id`, `Name`) VALUES
(1, 'Gender-Neutral'),
(2, 'Female-only (including Supernumerary)');

-- --------------------------------------------------------

--
-- Table structure for table `iiitsonly`
--

CREATE TABLE `iiitsonly` (
  `SNo` int(11) NOT NULL,
  `opening_rank` int(11) DEFAULT NULL,
  `closing_rank` int(11) DEFAULT NULL,
  `institute_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `seat_type_id` int(11) DEFAULT NULL,
  `gender_type_id` int(11) DEFAULT NULL,
  `region_id` int(10) DEFAULT NULL,
  `bid` int(11) NOT NULL,
  `ind1` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iiitsonly`
--

INSERT INTO `iiitsonly` (`SNo`, `opening_rank`, `closing_rank`, `institute_id`, `branch_id`, `quota_id`, `seat_type_id`, `gender_type_id`, `region_id`, `bid`, `ind1`) VALUES
(74, 13543, 15167, 14, 6, 2, 1, 2, 5, 6, 14),
(81, 13002, 15399, 15, 6, 1, 1, 2, 2, 6, 15);

-- --------------------------------------------------------

--
-- Table structure for table `iitsonly`
--

CREATE TABLE `iitsonly` (
  `SNo` int(11) NOT NULL,
  `opening_rank` int(11) DEFAULT NULL,
  `closing_rank` int(11) DEFAULT NULL,
  `institute_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `seat_type_id` int(11) DEFAULT NULL,
  `gender_type_id` int(11) DEFAULT NULL,
  `region_id` int(10) DEFAULT NULL,
  `bid` int(11) NOT NULL,
  `ind` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iitsonly`
--

INSERT INTO `iitsonly` (`SNo`, `opening_rank`, `closing_rank`, `institute_id`, `branch_id`, `quota_id`, `seat_type_id`, `gender_type_id`, `region_id`, `bid`, `ind`) VALUES
(73, 13543, 15267, 10, 2, 2, 1, 2, 5, 2, 10),
(75, 13543, 15167, 10, 9, 2, 1, 2, 5, 9, 10),
(5, 13184, 14366, 6, 12, 1, 1, 2, 3, 12, 6);

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `institute_id` int(255) NOT NULL,
  `Name` varchar(10000) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `state_id` int(255) DEFAULT NULL,
  `placement_ranking` int(100) DEFAULT NULL,
  `year_of_establishment` year(4) DEFAULT NULL,
  `campus_ratings` int(255) DEFAULT NULL,
  `name_of_contact` varchar(255) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`institute_id`, `Name`, `Type`, `state_id`, `placement_ranking`, `year_of_establishment`, `campus_ratings`, `name_of_contact`, `contact_no`) VALUES
(1, 'Dr. B R Ambedkar National Institute of Technology, Jalandhar', 'NIT', 20, 10, 1987, 3, 'Snigdha Sharma', '4529633456'),
(2, 'Motilal Nehru National Institute of Technology Allahabad', 'NIT', 27, 4, 1961, 4, 'Purva Gautam', '4529633456'),
(3, 'Malaviya National Institute of Technology Jaipur', 'NIT', 21, 5, 1963, 5, 'Purva Gautam', '4529633456'),
(4, 'Maulana Azad National Institute of Technology Bhopal', 'NIT', 13, 9, 1960, 11, 'Purva Gautam', '4529633456'),
(5, 'National Institute of Technology Agartala', 'NIT', 25, 11, 1965, 10, 'Purva Gautam', '4529633456'),
(6, 'Indian Institute of Technology Bhubaneswar', 'IIT', 19, 8, 2008, 9, 'Purva Gautam', '4529633456'),
(7, 'Indian Institute of Technology Bombay', 'IIT', 14, 1, 1958, 2, 'Purva Gautam', '4529633456'),
(8, 'Indian Institute of Technology Mandi', 'IIT', 9, 3, 2009, 8, 'Purva Gautam', '4529633456'),
(9, 'Indian Institute of Technology Delhi', 'IIT', 32, 2, 1961, 1, 'Purva Gautam', '4529633456'),
(10, 'Indian Institute of Technology Indore', 'IIT', 13, 7, 2009, 7, 'Purva Gautam', '4529633456'),
(11, 'Atal Bihari Vajpayee Indian Institute of Information Technology & Management Gwalior', 'IIIT', 13, 14, 1997, 21, 'Purva Gautam', '4529633456'),
(12, 'Indian Institute of Information Technology(IIIT) Una, Himachal Pradesh', 'IIIT', 9, 13, 2014, 20, 'Purva Gautam', '4529633456'),
(13, 'Indian Institute of Information Technology(IIIT), Vadodara, Gujrat', 'IIIT', 7, 15, 2013, 19, 'Purva Gautam', '4529633456'),
(14, 'Indian Institute of Information Technology, Allahabad', 'IIIT', 27, 6, 1999, 6, 'Purva Gautam', '4529633456'),
(15, 'Indian Institute of Information Technology, Design & Manufacturing, Kancheepuram', 'IIIT', 23, 17, 2007, 18, 'Purva Gautam', '4529633456'),
(16, 'Birla Institute of Technology, Mesra, Ranchi', 'GFTI', 10, 16, 1955, 17, 'Purva Gautam', '4529633456'),
(17, 'Punjab Engineering College, Chandigarh', 'GFTI', 20, 18, 1921, 16, 'Purva Gautam', '4529633456'),
(18, 'Institute of Infrastructure, Technology, Research and Management-Ahmedabad', 'GFTI', 7, 19, 2013, 15, 'Purva Gautam', '4529633456'),
(19, 'Mizoram University, Aizawl', 'GFTI', 17, 20, 2001, 14, 'Purva Gautam', '4529633456'),
(20, 'School of Engineering, Tezpur University, Napaam, Tezpur', 'GFTI', 3, 21, 2006, 13, 'Purva Gautam', '4529633456'),
(21, 'National Institute of Technology Raipur', 'NIT', 5, 12, 1956, 12, 'Purva Gautam', '4529633456');

-- --------------------------------------------------------

--
-- Table structure for table `nitsonly`
--

CREATE TABLE `nitsonly` (
  `SNo` int(11) NOT NULL,
  `opening_rank` int(11) DEFAULT NULL,
  `closing_rank` int(11) DEFAULT NULL,
  `institute_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `seat_type_id` int(11) DEFAULT NULL,
  `gender_type_id` int(11) DEFAULT NULL,
  `region_id` int(10) DEFAULT NULL,
  `bid` int(11) NOT NULL,
  `inds` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nitsonly`
--

INSERT INTO `nitsonly` (`SNo`, `opening_rank`, `closing_rank`, `institute_id`, `branch_id`, `quota_id`, `seat_type_id`, `gender_type_id`, `region_id`, `bid`, `inds`) VALUES
(71, 12743, 15267, 4, 18, 3, 1, 2, 5, 18, 4);

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `SNo` int(100) NOT NULL,
  `NameOfCourse` varchar(1000) NOT NULL,
  `DurationOfCourse` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`SNo`, `NameOfCourse`, `DurationOfCourse`) VALUES
(1, 'Bachelor of Technology', 4),
(2, 'Bachelor and Master of Technology (Dual Degree)', 5),
(3, 'B.Tech. + M.Tech./MS (Dual Degree)', 5),
(4, 'Integrated B. Tech. and M. Tech. /MBA', 5),
(5, 'Bachelor of Science and Master of Science (Dual Degree)', 5),
(6, 'Integrated Master of Science', 5),
(7, 'Bachelor of Architecture', 5);

-- --------------------------------------------------------

--
-- Table structure for table `quota`
--

CREATE TABLE `quota` (
  `quota_id` int(100) NOT NULL,
  `Name` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quota`
--

INSERT INTO `quota` (`quota_id`, `Name`) VALUES
(1, 'All India'),
(2, 'Other State'),
(3, 'Home State');

-- --------------------------------------------------------

--
-- Table structure for table `rankings`
--

CREATE TABLE `rankings` (
  `SNo` int(11) NOT NULL,
  `opening_rank` int(11) DEFAULT NULL,
  `closing_rank` int(11) DEFAULT NULL,
  `institute_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `seat_type_id` int(11) DEFAULT NULL,
  `gender_type_id` int(11) DEFAULT NULL,
  `region_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rankings`
--

INSERT INTO `rankings` (`SNo`, `opening_rank`, `closing_rank`, `institute_id`, `branch_id`, `quota_id`, `seat_type_id`, `gender_type_id`, `region_id`) VALUES
(1, 24332, 37006, 16, 4, 1, 1, 1, 3),
(2, 807, 2070, 7, 1, 1, 1, 1, 4),
(3, 832, 1922, 7, 7, 1, 1, 1, 4),
(4, 6836, 8816, 6, 12, 1, 1, 1, 3),
(5, 13184, 14366, 6, 12, 1, 1, 2, 3),
(6, 1297, 1532, 6, 12, 1, 9, 1, 3),
(7, 9317, 9751, 6, 24, 1, 1, 1, 3),
(8, 15881, 15881, 6, 24, 1, 1, 2, 3),
(9, 242, 242, 6, 24, 1, 2, 1, 3),
(10, 357, 941, 16, 25, 1, 1, 1, 3),
(11, 373, 373, 16, 25, 1, 2, 1, 3),
(12, 159, 172, 16, 25, 1, 9, 1, 3),
(13, 195, 255, 16, 25, 1, 5, 1, 3),
(14, 59, 59, 16, 25, 1, 7, 1, 3),
(15, 1227, 2725, 16, 25, 3, 1, 1, 3),
(16, 290, 354, 16, 25, 3, 9, 1, 3),
(17, 284, 420, 16, 25, 3, 5, 1, 3),
(18, 150, 283, 16, 25, 3, 7, 1, 3),
(19, 24332, 37006, 16, 4, 1, 1, 1, 3),
(20, 742, 742, 16, 4, 1, 2, 1, 3),
(21, 6115, 6244, 16, 4, 1, 9, 1, 3),
(22, 237, 237, 16, 4, 1, 10, 1, 3),
(23, 6635, 7401, 16, 4, 1, 5, 1, 3),
(24, 2996, 3051, 16, 4, 1, 7, 1, 3),
(25, 37552, 50331, 16, 4, 3, 1, 1, 3),
(26, 8755, 9090, 16, 4, 3, 9, 1, 3),
(27, 9862, 11516, 16, 4, 3, 5, 1, 3),
(28, 6901, 13419, 16, 4, 3, 7, 1, 3),
(29, 1490, 3770, 2, 10, 3, 1, 1, 5),
(30, 5356, 8841, 2, 10, 3, 1, 2, 5),
(31, 19, 54, 2, 10, 3, 2, 1, 5),
(32, 253, 253, 2, 10, 3, 2, 2, 5),
(33, 604, 721, 2, 10, 3, 9, 1, 5),
(34, 1437, 1745, 2, 10, 3, 9, 2, 5),
(35, 671, 1551, 2, 10, 3, 3, 1, 5),
(36, 2114, 4548, 2, 10, 3, 3, 2, 5),
(37, 36, 36, 2, 10, 3, 4, 1, 5),
(38, 283, 283, 2, 10, 3, 4, 2, 5),
(39, 60, 881, 2, 10, 3, 5, 2, 5),
(40, 1093, 1526, 2, 10, 3, 5, 2, 5),
(41, 36, 36, 2, 10, 3, 6, 1, 5),
(42, 256, 1263, 2, 10, 3, 7, 1, 5),
(43, 1430, 1430, 2, 10, 3, 7, 2, 5),
(44, 783, 2613, 2, 10, 2, 1, 1, 5),
(45, 4613, 5844, 2, 10, 2, 1, 2, 5),
(46, 59, 59, 2, 10, 2, 2, 1, 5),
(47, 358, 463, 2, 10, 2, 9, 1, 5),
(48, 1076, 1076, 2, 10, 2, 9, 2, 5),
(49, 68, 68, 2, 10, 2, 10, 2, 5),
(50, 575, 1064, 2, 10, 2, 3, 1, 5),
(51, 1556, 3159, 2, 10, 2, 3, 2, 5),
(52, 75, 75, 2, 10, 2, 4, 1, 5),
(53, 372, 720, 2, 10, 2, 5, 1, 5),
(54, 1275, 1318, 2, 10, 2, 5, 2, 5),
(55, 86, 86, 2, 10, 2, 6, 2, 5),
(56, 233, 346, 2, 10, 2, 7, 1, 5),
(57, 496, 496, 2, 10, 2, 7, 2, 5),
(58, 10, 10, 2, 10, 2, 8, 1, 5),
(59, 693, 2021, 4, 25, 3, 1, 1, 5),
(60, 574, 901, 4, 25, 3, 1, 2, 5),
(61, 216, 344, 4, 25, 3, 9, 1, 5),
(62, 249, 249, 4, 25, 3, 9, 2, 5),
(63, 2237, 3114, 10, 17, 1, 1, 1, 5),
(64, 3993, 7147, 10, 17, 1, 1, 2, 5),
(65, 145, 151, 10, 17, 1, 2, 1, 5),
(66, 324, 493, 10, 17, 1, 9, 1, 5),
(67, 3812, 7136, 11, 10, 1, 1, 1, 5),
(68, 7551, 11475, 11, 10, 1, 1, 2, 5),
(69, 397, 397, 11, 10, 1, 2, 1, 5),
(70, 1179, 1303, 11, 10, 1, 9, 1, 5),
(71, 12743, 15267, 4, 18, 3, 1, 2, 5),
(72, 14019, 18539, 2, 17, 2, 1, 2, 5),
(73, 13543, 15267, 10, 2, 2, 1, 2, 5),
(74, 13543, 15167, 14, 6, 2, 1, 2, 5),
(75, 13543, 15167, 10, 9, 2, 1, 2, 5),
(76, 13590, 15167, 21, 13, 2, 1, 2, 5),
(77, 13926, 14697, 19, 11, 2, 1, 2, 6),
(78, 13996, 14597, 17, 13, 1, 1, 2, 1),
(79, 13826, 14197, 12, 19, 1, 1, 2, 1),
(80, 13001, 15999, 11, 25, 1, 1, 2, 5),
(81, 13002, 15399, 15, 6, 1, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `region_id` int(11) NOT NULL,
  `Region_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`region_id`, `Region_Name`) VALUES
(1, 'North India'),
(2, 'South India'),
(3, 'East India'),
(4, 'West India'),
(5, 'Central India'),
(6, 'North Eastern India');

-- --------------------------------------------------------

--
-- Table structure for table `seat_type`
--

CREATE TABLE `seat_type` (
  `seat_type_id` int(100) NOT NULL,
  `Name` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seat_type`
--

INSERT INTO `seat_type` (`seat_type_id`, `Name`) VALUES
(1, 'OPEN'),
(2, 'OPEN (PwD)'),
(3, 'OBC-NCL'),
(4, 'OBC-NCL (PwD)'),
(5, 'SC'),
(6, 'SC (PwD)'),
(7, 'ST'),
(8, 'ST (PwD)'),
(9, 'EWS'),
(10, 'EWS (PwD)');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `region_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `Name`, `region_id`) VALUES
(1, 'Andhra Pradesh', 2),
(2, 'Arunachal Pradesh', 6),
(3, 'Assam', 6),
(4, 'Bihar', 3),
(5, 'Chattisgarh', 5),
(6, 'Goa', 4),
(7, 'Gujarat', 4),
(8, 'Haryana', 1),
(9, 'Himachal Pradesh', 1),
(10, 'Jharkhand', 3),
(11, 'Karnataka', 2),
(12, 'Kerala', 2),
(13, 'Madhya Pradesh', 5),
(14, 'Maharashtra', 4),
(15, 'Manipur', 6),
(16, 'Meghalaya', 6),
(17, 'Mizoram', 6),
(18, 'Nagaland', 6),
(19, 'Odisha', 3),
(20, 'Punjab', 1),
(21, 'Rajasthan', 1),
(22, 'Sikkim', 6),
(23, 'Tamil Nadu', 2),
(24, 'Telangana', 2),
(25, 'Tripura', 6),
(26, 'Uttarakhand', 1),
(27, 'Uttar Pradesh', 5),
(28, 'West Bengal', 3),
(29, 'Andaman and Nicobar Islands', 2),
(30, 'Chandigarh', 1),
(31, 'Dadra and Nagar Haveli and Daman and Diu', 4),
(32, 'Delhi', 1),
(33, 'Ladakh', 1),
(34, 'Puducherry', 2),
(35, 'Lakshadweep', 2),
(36, 'Jammu and Kashmir', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `username` varchar(100) NOT NULL,
  `Name` varchar(10000) NOT NULL,
  `Quota` varchar(100) NOT NULL,
  `HomeState` int(11) NOT NULL,
  `MainsRank` bigint(20) NOT NULL,
  `AdvancedRank` bigint(20) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`username`, `Name`, `Quota`, `HomeState`, `MainsRank`, `AdvancedRank`, `Gender`, `Category`, `email`) VALUES
('234ew', 'asd', '', 2, 23, 0, 'Gender Neutral', 'Open', 'aas@aas.asas'),
('abcd', 'Purva Gautam', '', 13, 12220, 0, 'Female-only (including Supernumerary)', 'OPEN', 'gautam.purva@gmail.com'),
('purva', 'Purva Gautam', '', 13, 14500, 0, 'Female-only (including Supernumerary)', 'Open', ''),
('purvaaa', 'asas', '', 1, 23, 0, 'Female Only (Supernumerary)', 'Open', 'asaaa@das.jg'),
('purvads', 'Purva Gautam', '', 7, 987, 998, 'Female Only (Supernumerary)', 'Open', 'gautam.purvaa@gmail.com'),
('purvag', 'Purva Gautam', '', 13, 14500, 15000, 'Female-only (including Supernumerary)', 'OPEN', 'gautam.purva@gmail.com'),
('snigdhaass', 'East Horizon', '', 1, 12222, 0, 'Female Only (Supernumerary)', 'ST (PwD)', ''),
('snigdhass', 'Purva Gautam', '', 13, 14000, 0, 'Female-only (including Supernumerary)', 'OPEN', 'gautam.purva@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `Username` varchar(25) NOT NULL,
  `Password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`Username`, `Password`) VALUES
('234ew', 'asd'),
('abcd', 'abcd'),
('asd', 'asd'),
('ass', 'ass'),
('purva', 'add'),
('purvaaa', 'aaa'),
('purvads', 'zqq'),
('purvag', '$2y$10$zswRuDqA1Uh9yhbqKk4LPe3RnMGRlViBG8XtEuoFSmt2w28Zqy0yO'),
('snigdha', 'saa'),
('snigdhaass', '123'),
('snigdhass', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `gender_type`
--
ALTER TABLE `gender_type`
  ADD PRIMARY KEY (`gender_type_id`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`institute_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `quota`
--
ALTER TABLE `quota`
  ADD PRIMARY KEY (`quota_id`);

--
-- Indexes for table `rankings`
--
ALTER TABLE `rankings`
  ADD PRIMARY KEY (`SNo`),
  ADD KEY `institute_id` (`institute_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `quota_id` (`quota_id`),
  ADD KEY `seat_type_id` (`seat_type_id`),
  ADD KEY `gender_type_id` (`gender_type_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `seat_type`
--
ALTER TABLE `seat_type`
  ADD PRIMARY KEY (`seat_type_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `region_id` (`region_id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`username`),
  ADD KEY `HomeState` (`HomeState`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gender_type`
--
ALTER TABLE `gender_type`
  MODIFY `gender_type_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `institute_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `SNo` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quota`
--
ALTER TABLE `quota`
  MODIFY `quota_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seat_type`
--
ALTER TABLE `seat_type`
  MODIFY `seat_type_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`SNo`);

--
-- Constraints for table `institutes`
--
ALTER TABLE `institutes`
  ADD CONSTRAINT `state_id` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_id`);

--
-- Constraints for table `rankings`
--
ALTER TABLE `rankings`
  ADD CONSTRAINT `rankings_ibfk_1` FOREIGN KEY (`institute_id`) REFERENCES `institutes` (`institute_id`),
  ADD CONSTRAINT `rankings_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branch_id`),
  ADD CONSTRAINT `rankings_ibfk_3` FOREIGN KEY (`quota_id`) REFERENCES `quota` (`quota_id`),
  ADD CONSTRAINT `rankings_ibfk_4` FOREIGN KEY (`seat_type_id`) REFERENCES `seat_type` (`seat_type_id`),
  ADD CONSTRAINT `rankings_ibfk_5` FOREIGN KEY (`gender_type_id`) REFERENCES `gender_type` (`gender_type_id`);

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `region_id` FOREIGN KEY (`region_id`) REFERENCES `regions` (`region_id`);

--
-- Constraints for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD CONSTRAINT `HomeState` FOREIGN KEY (`HomeState`) REFERENCES `states` (`state_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
