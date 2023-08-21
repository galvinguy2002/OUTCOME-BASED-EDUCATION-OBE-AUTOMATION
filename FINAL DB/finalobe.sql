-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 12:45 AM
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
-- Database: `finalobe`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `user_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `user_type_id`) VALUES
(1, 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `assigned_course`
--

CREATE TABLE `assigned_course` (
  `assigned_course_id` int(11) NOT NULL,
  `offered_course_id` varchar(255) NOT NULL,
  `sec_no` varchar(255) NOT NULL,
  `semester_id` varchar(255) NOT NULL,
  `faculty_id` varchar(255) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assigned_course`
--

INSERT INTO `assigned_course` (`assigned_course_id`, `offered_course_id`, `sec_no`, `semester_id`, `faculty_id`, `semester`, `year`, `course_code`, `username`) VALUES
(1, '999', '1', '12', '6', 'Summer', '2023', 'MBA101', 'lakhan'),
(2, 'MA101', '1', '13', '1', 'Summer', '2023', 'MBA102', 'lakhan'),
(3, 'MBA102', '1', '14', '7', 'Summer', '2023', 'MBA103', 'mohan'),
(4, 'MBA101', '1', '', '7', 'Summer', '2023', 'btech101', 'mohan'),
(6, 'mscit101', '1', '12', '1', 'Summer', '2023', '10', ''),
(7, 'mscit102', '1', '12', '1', 'Summer', '2023', '10', ''),
(8, 'mscit103', '1', '12', '1', 'Summer', '2023', '10', ''),
(10, 'mscit104', '1', '12', '1', 'Summer', '2023', '10', ''),
(13, 'a', '1', '12', '1', 'Summer', '2023', '', ''),
(15, 'MBA103', '1', 'Summer', '6', 'Summer', '2023', '5', '');

-- --------------------------------------------------------

--
-- Table structure for table `assign_course`
--

CREATE TABLE `assign_course` (
  `id` int(11) NOT NULL,
  `offered_course_code` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `semester` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `sec_no` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assign_course`
--

INSERT INTO `assign_course` (`id`, `offered_course_code`, `username`, `semester`, `year`, `sec_no`) VALUES
(1, 'btech101', 'admin', '', '2023', ''),
(2, 'MBA104', 'admin', '', '2023', '');

-- --------------------------------------------------------

--
-- Table structure for table `co`
--

CREATE TABLE `co` (
  `id` int(11) NOT NULL,
  `assigned_course_id` varchar(200) NOT NULL,
  `co_code` varchar(200) NOT NULL,
  `co_text` varchar(200) NOT NULL,
  `co_marks` varchar(200) NOT NULL,
  `rest_co_marks` varchar(200) NOT NULL,
  `co_tr` varchar(100) NOT NULL,
  `co_id` int(11) NOT NULL,
  `co1` varchar(50) NOT NULL,
  `facultyId` varchar(100) NOT NULL,
  `co2` varchar(50) NOT NULL,
  `co3` varchar(50) NOT NULL,
  `co4` varchar(50) NOT NULL,
  `co5` varchar(50) NOT NULL,
  `studentname` varchar(100) NOT NULL,
  `srollno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `co`
--

INSERT INTO `co` (`id`, `assigned_course_id`, `co_code`, `co_text`, `co_marks`, `rest_co_marks`, `co_tr`, `co_id`, `co1`, `facultyId`, `co2`, `co3`, `co4`, `co5`, `studentname`, `srollno`) VALUES
(22, '6', '', '20', '', '', '', 0, '2', '1', '2', '2', '2', '2', 'Ajay Dwivedi', 'fe36'),
(23, '8', '', '10', '', '', '', 0, '1', '1', '1', '1', '1', '1', 'Ajay Dwivedi', 'fe36'),
(24, '6', '', '10', '', '', '', 0, '1', '1', '1', '1', '1', '1', 'Sonam Singh', ''),
(25, '6', '', '20', '', '', '', 0, '2', '1', '2', '2', '2', '2', 'Ashish Singh', ''),
(26, '6', '', '10', '', '', '', 0, '1', '1', '1', '1', '1', '1', 'Ajay Dwivedi', 'fe34'),
(27, '7', '', '20', '', '', '', 0, '1', '1', '1', '1', '1', '1', 'Pawan Raghuvanshi', 'ef35'),
(28, '', '', '', '', '', '', 0, '', '', '', '', '', '', '', ''),
(29, '', '', '', '', '', '', 0, '', '', '', '', '', '', '', ''),
(30, '8', '', '100', '', '', '', 0, '10', '1', '10', '', '', '', 'Pawan Raghuvanshi', 'ef35'),
(31, '7', '', '100', '', '', '', 0, '10', '1', '10', '10', '10', '10', 'Ashish Singh', ''),
(32, '6', '', '10', '', '', '', 0, '5', '1', '5', '5', '', '', 'Sonam Singh', ''),
(33, '6', '', '10', '', '', '', 0, '5', '1', '5', '5', '2', '2', 'Sonam Singh', ''),
(34, '6', '', '10', '', '', '', 0, '2', '1', '2', '4', '0', '0', 'Sonam Singh', '');

-- --------------------------------------------------------

--
-- Table structure for table `comp`
--

CREATE TABLE `comp` (
  `id` int(255) NOT NULL,
  `component` varchar(255) NOT NULL,
  `comp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comp`
--

INSERT INTO `comp` (`id`, `component`, `comp_id`) VALUES
(1, 'java', 1),
(3, 'math', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `dept_id` int(255) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `credit` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `dept_id`, `course_code`, `title`, `credit`) VALUES
(2, 5, '102', 'CSE SUB', 2),
(8, 4, '999', 'testing', 1),
(18, 5, 'btech101', 'Digital Communication', 10),
(19, 9, 'btech101', 'java', 2),
(20, 2, 'MBA104', 'test', 1),
(21, 2, 'MA101', 'science', 1),
(22, 5, 'MBA103', 'science', 0),
(23, 2, 'MBA102', 'science', 0),
(24, 10, 'mscit101', 'Java', 1),
(25, 10, 'mscit102', 'php', 1),
(26, 10, 'mscit103', 'c', 1),
(27, 10, 'mscit104', 'mysql', 1),
(28, 1, 'a', 'a', 1),
(29, 1, 'test', 'test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_outcome`
--

CREATE TABLE `course_outcome` (
  `assigned_course_id` int(255) NOT NULL,
  `co_code` varchar(255) NOT NULL,
  `co_marks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_outcome`
--

INSERT INTO `course_outcome` (`assigned_course_id`, `co_code`, `co_marks`) VALUES
(2, '', ''),
(2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `co_attainment`
--

CREATE TABLE `co_attainment` (
  `id` int(11) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `sec_no` int(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `year` int(4) NOT NULL,
  `co` varchar(15) DEFAULT NULL,
  `co_per` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_attainment_individual`
--

CREATE TABLE `co_attainment_individual` (
  `id` int(11) NOT NULL,
  `s_id` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `sec_no` int(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `year` int(4) NOT NULL,
  `co` varchar(10) NOT NULL,
  `co_per` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` int(255) NOT NULL,
  `dept` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept`) VALUES
(1, 'CS'),
(2, 'MBA'),
(4, 'Civil'),
(5, 'CSE'),
(9, 'Btech'),
(10, 'mscit'),
(11, 'MA');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `name` varchar(255) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `con_pass` varchar(255) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`name`, `faculty_id`, `dept`, `username`, `email`, `password`, `con_pass`, `user_type_id`, `dept_id`) VALUES
('rashmi', 1, 'EX', 'rashmi', 'rashmi@gmail.com', '150410', 'R@m480110', 5, 5),
('Lakhan', 6, 'Mca', 'lakhan', 'lk@gmail.com', '12', '12', 5, 4),
('mohan', 7, '', 'mohan', 'mohan@gmail.com', '13', '13', 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `grade` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `grade`) VALUES
(1, '12');

-- --------------------------------------------------------

--
-- Table structure for table `grade_distribution`
--

CREATE TABLE `grade_distribution` (
  `id` int(11) NOT NULL,
  `assigned_course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade_distribution`
--

INSERT INTO `grade_distribution` (`id`, `assigned_course_id`) VALUES
(1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `marks_component`
--

CREATE TABLE `marks_component` (
  `id` int(11) NOT NULL,
  `assigned_course_id` int(11) NOT NULL,
  `cc_marks` varchar(200) NOT NULL,
  `comp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks_component`
--

INSERT INTO `marks_component` (`id`, `assigned_course_id`, `cc_marks`, `comp_id`) VALUES
(1, 8, '10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offered_course`
--

CREATE TABLE `offered_course` (
  `id` int(11) NOT NULL,
  `offered_course_id` varchar(255) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `tot_sec` int(255) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offered_course`
--

INSERT INTO `offered_course` (`id`, `offered_course_id`, `semester_id`, `year`, `tot_sec`, `faculty_id`, `course_id`, `dept_id`) VALUES
(1, '1', 12, '2023', 1, 0, 20, 0),
(2, '2', 13, '2023', 2, 1, 2, 5),
(10, 'MBA102', 12, '2023', 1, 0, 18, 0),
(11, 'MBA101', 12, '2023', 12, 0, 19, 0),
(12, 'MA101', 12, '2023', 1, 0, 22, 0),
(13, 'mscit101', 12, '2023', 1, 0, 24, 0),
(14, 'mscit102', 12, '2023', 1, 0, 25, 0),
(15, 'mscit103', 12, '2023', 1, 0, 26, 0),
(16, 'mscit104', 12, '2023', 1, 0, 27, 0),
(17, 'MA101', 12, '2023', 1, 0, 21, 0),
(18, 'a', 12, '2023', 1, 0, 28, 0),
(19, 'test', 12, '2023', 1, 0, 29, 0);

-- --------------------------------------------------------

--
-- Table structure for table `offer_course`
--

CREATE TABLE `offer_course` (
  `id` int(11) NOT NULL,
  `offered_course_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offer_course`
--

INSERT INTO `offer_course` (`id`, `offered_course_code`) VALUES
(1, 'btech101'),
(2, 'MBA104');

-- --------------------------------------------------------

--
-- Table structure for table `percent_of_co`
--

CREATE TABLE `percent_of_co` (
  `id` int(111) NOT NULL,
  `s_id` varchar(111) NOT NULL,
  `course_code` varchar(111) NOT NULL,
  `sec_no` int(111) NOT NULL,
  `semester` varchar(111) NOT NULL,
  `year` year(4) NOT NULL,
  `co` varchar(111) NOT NULL,
  `total_marks_co` float DEFAULT NULL,
  `percent_co` float DEFAULT NULL,
  `po` varchar(111) DEFAULT NULL,
  `accepted_po` varchar(111) DEFAULT NULL,
  `rejected_po` varchar(111) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `percent_of_co`
--

INSERT INTO `percent_of_co` (`id`, `s_id`, `course_code`, `sec_no`, `semester`, `year`, `co`, `total_marks_co`, `percent_co`, `po`, `accepted_po`, `rejected_po`) VALUES
(22207, '2014-1-60-001', 'CSE435', 2, 'Spring', '2018', 'CO2', 10, 34.78, 'PO12', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22208, '2014-1-60-001', 'CSE435', 2, 'Spring', '2018', 'CO2', 10, 34.78, 'PO5', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22209, '2014-1-60-001', 'CSE435', 2, 'Spring', '2018', 'CO2', 10, 34.78, 'PO2', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22210, '2014-1-60-001', 'CSE435', 2, 'Spring', '2018', 'CO1', 23, 80, 'PO12', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22211, '2014-1-60-001', 'CSE435', 2, 'Spring', '2018', 'CO3', 19, 66.09, 'PO2', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22212, '2014-1-60-001', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO2', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22213, '2014-1-60-001', 'CSE435', 2, 'Spring', '2018', 'CO3', 19, 66.09, 'PO3', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22214, '2014-1-60-001', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO5', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22215, '2014-1-60-001', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO9', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22216, '2014-1-60-001', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO10', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22217, '2014-1-60-001', 'CSE447', 2, 'Spring', '2018', 'CO2', 0, 0, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22218, '2014-1-60-001', 'CSE447', 2, 'Spring', '2018', 'CO2', 0, 0, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22219, '2014-1-60-001', 'CSE447', 2, 'Spring', '2018', 'CO2', 0, 0, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22220, '2014-1-60-001', 'CSE447', 2, 'Spring', '2018', 'CO1', 0, 0, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22221, '2014-1-60-001', 'CSE447', 2, 'Spring', '2018', 'CO3', 0, 0, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22222, '2014-1-60-001', 'CSE447', 2, 'Spring', '2018', 'CO4', 0, 0, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22223, '2014-1-60-001', 'CSE447', 2, 'Spring', '2018', 'CO3', 0, 0, 'PO3', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22224, '2014-1-60-001', 'CSE447', 2, 'Spring', '2018', 'CO4', 0, 0, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22225, '2014-1-60-001', 'CSE447', 2, 'Spring', '2018', 'CO4', 0, 0, 'PO9', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22226, '2014-1-60-001', 'CSE447', 2, 'Spring', '2018', 'CO4', 0, 0, 'PO10', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22227, '2014-1-60-003', 'CSE435', 2, 'Spring', '2018', 'CO2', 14, 48.7, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22228, '2014-1-60-003', 'CSE435', 2, 'Spring', '2018', 'CO2', 14, 48.7, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22229, '2014-1-60-003', 'CSE435', 2, 'Spring', '2018', 'CO2', 14, 48.7, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22230, '2014-1-60-003', 'CSE435', 2, 'Spring', '2018', 'CO1', 16, 55.65, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22231, '2014-1-60-003', 'CSE435', 2, 'Spring', '2018', 'CO3', 9, 31.3, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22232, '2014-1-60-003', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22233, '2014-1-60-003', 'CSE435', 2, 'Spring', '2018', 'CO3', 9, 31.3, 'PO3', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22234, '2014-1-60-003', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22235, '2014-1-60-003', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22236, '2014-1-60-003', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22237, '2014-1-60-004', 'CSE435', 2, 'Spring', '2018', 'CO2', 15, 52.17, 'PO12', NULL, NULL),
(22238, '2014-1-60-004', 'CSE435', 2, 'Spring', '2018', 'CO2', 15, 52.17, 'PO5', NULL, NULL),
(22239, '2014-1-60-004', 'CSE435', 2, 'Spring', '2018', 'CO2', 15, 52.17, 'PO2', NULL, NULL),
(22240, '2014-1-60-004', 'CSE435', 2, 'Spring', '2018', 'CO1', 21, 73.04, 'PO12', NULL, NULL),
(22241, '2014-1-60-004', 'CSE435', 2, 'Spring', '2018', 'CO3', 12, 41.74, 'PO2', NULL, NULL),
(22242, '2014-1-60-004', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22243, '2014-1-60-004', 'CSE435', 2, 'Spring', '2018', 'CO3', 12, 41.74, 'PO3', NULL, NULL),
(22244, '2014-1-60-004', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22245, '2014-1-60-004', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22246, '2014-1-60-004', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22247, '2014-1-60-005', 'CSE435', 2, 'Spring', '2018', 'CO2', 18, 62.61, 'PO12', NULL, NULL),
(22248, '2014-1-60-005', 'CSE435', 2, 'Spring', '2018', 'CO2', 18, 62.61, 'PO5', NULL, NULL),
(22249, '2014-1-60-005', 'CSE435', 2, 'Spring', '2018', 'CO2', 18, 62.61, 'PO2', NULL, NULL),
(22250, '2014-1-60-005', 'CSE435', 2, 'Spring', '2018', 'CO1', 26, 90.43, 'PO12', NULL, NULL),
(22251, '2014-1-60-005', 'CSE435', 2, 'Spring', '2018', 'CO3', 15, 52.17, 'PO2', NULL, NULL),
(22252, '2014-1-60-005', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22253, '2014-1-60-005', 'CSE435', 2, 'Spring', '2018', 'CO3', 15, 52.17, 'PO3', NULL, NULL),
(22254, '2014-1-60-005', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22255, '2014-1-60-005', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22256, '2014-1-60-005', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22257, '2014-1-60-006', 'CSE435', 2, 'Spring', '2018', 'CO2', 3, 12.63, 'PO12', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22258, '2014-1-60-006', 'CSE435', 2, 'Spring', '2018', 'CO2', 3, 12.63, 'PO5', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22259, '2014-1-60-006', 'CSE435', 2, 'Spring', '2018', 'CO2', 3, 12.63, 'PO2', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22260, '2014-1-60-006', 'CSE435', 2, 'Spring', '2018', 'CO1', 28, 117.89, 'PO12', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22261, '2014-1-60-006', 'CSE435', 2, 'Spring', '2018', 'CO3', 3, 12.63, 'PO2', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22262, '2014-1-60-006', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22263, '2014-1-60-006', 'CSE435', 2, 'Spring', '2018', 'CO3', 3, 12.63, 'PO3', 'PO12', 'PO5, PO2, PO3, PO9, PO10'),
(22264, '2014-1-60-006', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22265, '2014-1-60-006', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22266, '2014-1-60-006', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22267, '2014-1-60-007', 'CSE435', 2, 'Spring', '2018', 'CO2', 20, 69.57, 'PO12', NULL, NULL),
(22268, '2014-1-60-007', 'CSE435', 2, 'Spring', '2018', 'CO2', 20, 69.57, 'PO5', NULL, NULL),
(22269, '2014-1-60-007', 'CSE435', 2, 'Spring', '2018', 'CO2', 20, 69.57, 'PO2', NULL, NULL),
(22270, '2014-1-60-007', 'CSE435', 2, 'Spring', '2018', 'CO1', 27, 93.91, 'PO12', NULL, NULL),
(22271, '2014-1-60-007', 'CSE435', 2, 'Spring', '2018', 'CO3', 17, 59.13, 'PO2', NULL, NULL),
(22272, '2014-1-60-007', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22273, '2014-1-60-007', 'CSE435', 2, 'Spring', '2018', 'CO3', 17, 59.13, 'PO3', NULL, NULL),
(22274, '2014-1-60-007', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22275, '2014-1-60-007', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22276, '2014-1-60-007', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22277, '2014-1-60-008', 'CSE435', 2, 'Spring', '2018', 'CO2', 0, 0, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22278, '2014-1-60-008', 'CSE435', 2, 'Spring', '2018', 'CO2', 0, 0, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22279, '2014-1-60-008', 'CSE435', 2, 'Spring', '2018', 'CO2', 0, 0, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22280, '2014-1-60-008', 'CSE435', 2, 'Spring', '2018', 'CO1', 0, 0, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22281, '2014-1-60-008', 'CSE435', 2, 'Spring', '2018', 'CO3', 0, 0, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22282, '2014-1-60-008', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22283, '2014-1-60-008', 'CSE435', 2, 'Spring', '2018', 'CO3', 0, 0, 'PO3', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22284, '2014-1-60-008', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22285, '2014-1-60-008', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22286, '2014-1-60-008', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22287, '2014-1-60-009', 'CSE435', 2, 'Spring', '2018', 'CO2', 10, 34.78, 'PO12', NULL, NULL),
(22288, '2014-1-60-009', 'CSE435', 2, 'Spring', '2018', 'CO2', 10, 34.78, 'PO5', NULL, NULL),
(22289, '2014-1-60-009', 'CSE435', 2, 'Spring', '2018', 'CO2', 10, 34.78, 'PO2', NULL, NULL),
(22290, '2014-1-60-009', 'CSE435', 2, 'Spring', '2018', 'CO1', 28, 97.39, 'PO12', NULL, NULL),
(22291, '2014-1-60-009', 'CSE435', 2, 'Spring', '2018', 'CO3', 21, 73.04, 'PO2', NULL, NULL),
(22292, '2014-1-60-009', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22293, '2014-1-60-009', 'CSE435', 2, 'Spring', '2018', 'CO3', 21, 73.04, 'PO3', NULL, NULL),
(22294, '2014-1-60-009', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22295, '2014-1-60-009', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22296, '2014-1-60-009', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22297, '2014-1-60-010', 'CSE435', 2, 'Spring', '2018', 'CO2', 11, 38.26, 'PO12', NULL, NULL),
(22298, '2014-1-60-010', 'CSE435', 2, 'Spring', '2018', 'CO2', 11, 38.26, 'PO5', NULL, NULL),
(22299, '2014-1-60-010', 'CSE435', 2, 'Spring', '2018', 'CO2', 11, 38.26, 'PO2', NULL, NULL),
(22300, '2014-1-60-010', 'CSE435', 2, 'Spring', '2018', 'CO1', 22, 76.52, 'PO12', NULL, NULL),
(22301, '2014-1-60-010', 'CSE435', 2, 'Spring', '2018', 'CO3', 13, 45.22, 'PO2', NULL, NULL),
(22302, '2014-1-60-010', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22303, '2014-1-60-010', 'CSE435', 2, 'Spring', '2018', 'CO3', 13, 45.22, 'PO3', NULL, NULL),
(22304, '2014-1-60-010', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22305, '2014-1-60-010', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22306, '2014-1-60-010', 'CSE435', 2, 'Spring', '2018', 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22307, '2014-1-60-011', 'CSE435', 2, 'spring', '2018', 'CO2', 14, 48.7, 'PO12', NULL, NULL),
(22308, '2014-1-60-011', 'CSE435', 2, 'spring', '2018', 'CO2', 14, 48.7, 'PO5', NULL, NULL),
(22309, '2014-1-60-011', 'CSE435', 2, 'spring', '2018', 'CO2', 14, 48.7, 'PO2', NULL, NULL),
(22310, '2014-1-60-011', 'CSE435', 2, 'spring', '2018', 'CO1', 22, 76.52, 'PO12', NULL, NULL),
(22311, '2014-1-60-011', 'CSE435', 2, 'spring', '2018', 'CO3', 16, 55.65, 'PO2', NULL, NULL),
(22312, '2014-1-60-011', 'CSE435', 2, 'spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22313, '2014-1-60-011', 'CSE435', 2, 'spring', '2018', 'CO3', 16, 55.65, 'PO3', NULL, NULL),
(22314, '2014-1-60-011', 'CSE435', 2, 'spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22315, '2014-1-60-011', 'CSE435', 2, 'spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22316, '2014-1-60-011', 'CSE435', 2, 'spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22317, '2014-1-60-012', 'CSE435', 2, 'Spring', '2018', 'CO2', 11, 38.26, 'PO12', NULL, NULL),
(22318, '2014-1-60-012', 'CSE435', 2, 'Spring', '2018', 'CO2', 11, 38.26, 'PO5', NULL, NULL),
(22319, '2014-1-60-012', 'CSE435', 2, 'Spring', '2018', 'CO2', 11, 38.26, 'PO2', NULL, NULL),
(22320, '2014-1-60-012', 'CSE435', 2, 'Spring', '2018', 'CO1', 26, 90.43, 'PO12', NULL, NULL),
(22321, '2014-1-60-012', 'CSE435', 2, 'Spring', '2018', 'CO3', 18, 62.61, 'PO2', NULL, NULL),
(22322, '2014-1-60-012', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22323, '2014-1-60-012', 'CSE435', 2, 'Spring', '2018', 'CO3', 18, 62.61, 'PO3', NULL, NULL),
(22324, '2014-1-60-012', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22325, '2014-1-60-012', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22326, '2014-1-60-012', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22327, '2014-1-60-013', 'CSE435', 2, 'spring', '2018', 'CO2', 12, 41.74, 'PO12', NULL, NULL),
(22328, '2014-1-60-013', 'CSE435', 2, 'spring', '2018', 'CO2', 12, 41.74, 'PO5', NULL, NULL),
(22329, '2014-1-60-013', 'CSE435', 2, 'spring', '2018', 'CO2', 12, 41.74, 'PO2', NULL, NULL),
(22330, '2014-1-60-013', 'CSE435', 2, 'spring', '2018', 'CO1', 29, 100.87, 'PO12', NULL, NULL),
(22331, '2014-1-60-013', 'CSE435', 2, 'spring', '2018', 'CO3', 19, 66.09, 'PO2', NULL, NULL),
(22332, '2014-1-60-013', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22333, '2014-1-60-013', 'CSE435', 2, 'spring', '2018', 'CO3', 19, 66.09, 'PO3', NULL, NULL),
(22334, '2014-1-60-013', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22335, '2014-1-60-013', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22336, '2014-1-60-013', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22337, '2014-1-60-014', 'CSE435', 2, 'Spring', '2018', 'CO2', 15, 52.17, 'PO12', NULL, NULL),
(22338, '2014-1-60-014', 'CSE435', 2, 'Spring', '2018', 'CO2', 15, 52.17, 'PO5', NULL, NULL),
(22339, '2014-1-60-014', 'CSE435', 2, 'Spring', '2018', 'CO2', 15, 52.17, 'PO2', NULL, NULL),
(22340, '2014-1-60-014', 'CSE435', 2, 'Spring', '2018', 'CO1', 22, 76.52, 'PO12', NULL, NULL),
(22341, '2014-1-60-014', 'CSE435', 2, 'Spring', '2018', 'CO3', 10, 34.78, 'PO2', NULL, NULL),
(22342, '2014-1-60-014', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22343, '2014-1-60-014', 'CSE435', 2, 'Spring', '2018', 'CO3', 10, 34.78, 'PO3', NULL, NULL),
(22344, '2014-1-60-014', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22345, '2014-1-60-014', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22346, '2014-1-60-014', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22347, '2014-1-60-015', 'CSE435', 2, 'spring', '2018', 'CO2', 16, 55.65, 'PO12', NULL, NULL),
(22348, '2014-1-60-015', 'CSE435', 2, 'spring', '2018', 'CO2', 16, 55.65, 'PO5', NULL, NULL),
(22349, '2014-1-60-015', 'CSE435', 2, 'spring', '2018', 'CO2', 16, 55.65, 'PO2', NULL, NULL),
(22350, '2014-1-60-015', 'CSE435', 2, 'spring', '2018', 'CO1', 25, 86.96, 'PO12', NULL, NULL),
(22351, '2014-1-60-015', 'CSE435', 2, 'spring', '2018', 'CO3', 11, 38.26, 'PO2', NULL, NULL),
(22352, '2014-1-60-015', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22353, '2014-1-60-015', 'CSE435', 2, 'spring', '2018', 'CO3', 11, 38.26, 'PO3', NULL, NULL),
(22354, '2014-1-60-015', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22355, '2014-1-60-015', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22356, '2014-1-60-015', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22357, '2014-1-60-016', 'CSE435', 2, 'Spring', '2018', 'CO2', 13, 45.22, 'PO12', NULL, NULL),
(22358, '2014-1-60-016', 'CSE435', 2, 'Spring', '2018', 'CO2', 13, 45.22, 'PO5', NULL, NULL),
(22359, '2014-1-60-016', 'CSE435', 2, 'Spring', '2018', 'CO2', 13, 45.22, 'PO2', NULL, NULL),
(22360, '2014-1-60-016', 'CSE435', 2, 'Spring', '2018', 'CO1', 18, 62.61, 'PO12', NULL, NULL),
(22361, '2014-1-60-016', 'CSE435', 2, 'Spring', '2018', 'CO3', 14, 48.7, 'PO2', NULL, NULL),
(22362, '2014-1-60-016', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22363, '2014-1-60-016', 'CSE435', 2, 'Spring', '2018', 'CO3', 14, 48.7, 'PO3', NULL, NULL),
(22364, '2014-1-60-016', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22365, '2014-1-60-016', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22366, '2014-1-60-016', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22367, '2014-1-60-017', 'CSE435', 2, 'spring', '2018', 'CO2', 13, 45.22, 'PO12', NULL, NULL),
(22368, '2014-1-60-017', 'CSE435', 2, 'spring', '2018', 'CO2', 13, 45.22, 'PO5', NULL, NULL),
(22369, '2014-1-60-017', 'CSE435', 2, 'spring', '2018', 'CO2', 13, 45.22, 'PO2', NULL, NULL),
(22370, '2014-1-60-017', 'CSE435', 2, 'spring', '2018', 'CO1', 21, 73.04, 'PO12', NULL, NULL),
(22371, '2014-1-60-017', 'CSE435', 2, 'spring', '2018', 'CO3', 15, 52.17, 'PO2', NULL, NULL),
(22372, '2014-1-60-017', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22373, '2014-1-60-017', 'CSE435', 2, 'spring', '2018', 'CO3', 15, 52.17, 'PO3', NULL, NULL),
(22374, '2014-1-60-017', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22375, '2014-1-60-017', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22376, '2014-1-60-017', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22377, '2014-1-60-018', 'CSE435', 2, 'Spring', '2018', 'CO2', 16, 55.65, 'PO12', NULL, NULL),
(22378, '2014-1-60-018', 'CSE435', 2, 'Spring', '2018', 'CO2', 16, 55.65, 'PO5', NULL, NULL),
(22379, '2014-1-60-018', 'CSE435', 2, 'Spring', '2018', 'CO2', 16, 55.65, 'PO2', NULL, NULL),
(22380, '2014-1-60-018', 'CSE435', 2, 'Spring', '2018', 'CO1', 26, 90.43, 'PO12', NULL, NULL),
(22381, '2014-1-60-018', 'CSE435', 2, 'Spring', '2018', 'CO3', 18, 62.61, 'PO2', NULL, NULL),
(22382, '2014-1-60-018', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22383, '2014-1-60-018', 'CSE435', 2, 'Spring', '2018', 'CO3', 18, 62.61, 'PO3', NULL, NULL),
(22384, '2014-1-60-018', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22385, '2014-1-60-018', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22386, '2014-1-60-018', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22387, '2014-1-60-019', 'CSE435', 2, 'spring', '2018', 'CO2', 17, 59.13, 'PO12', NULL, NULL),
(22388, '2014-1-60-019', 'CSE435', 2, 'spring', '2018', 'CO2', 17, 59.13, 'PO5', NULL, NULL),
(22389, '2014-1-60-019', 'CSE435', 2, 'spring', '2018', 'CO2', 17, 59.13, 'PO2', NULL, NULL),
(22390, '2014-1-60-019', 'CSE435', 2, 'spring', '2018', 'CO1', 29, 100.87, 'PO12', NULL, NULL),
(22391, '2014-1-60-019', 'CSE435', 2, 'spring', '2018', 'CO3', 19, 66.09, 'PO2', NULL, NULL),
(22392, '2014-1-60-019', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22393, '2014-1-60-019', 'CSE435', 2, 'spring', '2018', 'CO3', 19, 66.09, 'PO3', NULL, NULL),
(22394, '2014-1-60-019', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22395, '2014-1-60-019', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22396, '2014-1-60-019', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22397, '2014-1-60-020', 'CSE435', 2, 'Spring', '2018', 'CO2', 20, 69.57, 'PO12', NULL, NULL),
(22398, '2014-1-60-020', 'CSE435', 2, 'Spring', '2018', 'CO2', 20, 69.57, 'PO5', NULL, NULL),
(22399, '2014-1-60-020', 'CSE435', 2, 'Spring', '2018', 'CO2', 20, 69.57, 'PO2', NULL, NULL),
(22400, '2014-1-60-020', 'CSE435', 2, 'Spring', '2018', 'CO1', 33, 114.78, 'PO12', NULL, NULL),
(22401, '2014-1-60-020', 'CSE435', 2, 'Spring', '2018', 'CO3', 21, 73.04, 'PO2', NULL, NULL),
(22402, '2014-1-60-020', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22403, '2014-1-60-020', 'CSE435', 2, 'Spring', '2018', 'CO3', 21, 73.04, 'PO3', NULL, NULL),
(22404, '2014-1-60-020', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22405, '2014-1-60-020', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22406, '2014-1-60-020', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22407, '2014-1-60-021', 'CSE435', 2, 'spring', '2018', 'CO2', 12, 41.74, 'PO12', NULL, NULL),
(22408, '2014-1-60-021', 'CSE435', 2, 'spring', '2018', 'CO2', 12, 41.74, 'PO5', NULL, NULL),
(22409, '2014-1-60-021', 'CSE435', 2, 'spring', '2018', 'CO2', 12, 41.74, 'PO2', NULL, NULL),
(22410, '2014-1-60-021', 'CSE435', 2, 'spring', '2018', 'CO1', 23, 80, 'PO12', NULL, NULL),
(22411, '2014-1-60-021', 'CSE435', 2, 'spring', '2018', 'CO3', 14, 48.7, 'PO2', NULL, NULL),
(22412, '2014-1-60-021', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22413, '2014-1-60-021', 'CSE435', 2, 'spring', '2018', 'CO3', 14, 48.7, 'PO3', NULL, NULL),
(22414, '2014-1-60-021', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22415, '2014-1-60-021', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22416, '2014-1-60-021', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22417, '2014-1-60-022', 'CSE435', 2, 'Spring', '2018', 'CO2', 15, 52.17, 'PO12', NULL, NULL),
(22418, '2014-1-60-022', 'CSE435', 2, 'Spring', '2018', 'CO2', 15, 52.17, 'PO5', NULL, NULL),
(22419, '2014-1-60-022', 'CSE435', 2, 'Spring', '2018', 'CO2', 15, 52.17, 'PO2', NULL, NULL),
(22420, '2014-1-60-022', 'CSE435', 2, 'Spring', '2018', 'CO1', 28, 97.39, 'PO12', NULL, NULL),
(22421, '2014-1-60-022', 'CSE435', 2, 'Spring', '2018', 'CO3', 17, 59.13, 'PO2', NULL, NULL),
(22422, '2014-1-60-022', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22423, '2014-1-60-022', 'CSE435', 2, 'Spring', '2018', 'CO3', 17, 59.13, 'PO3', NULL, NULL),
(22424, '2014-1-60-022', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22425, '2014-1-60-022', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22426, '2014-1-60-022', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22427, '2014-1-60-023', 'CSE435', 2, 'spring', '2018', 'CO2', 9, 31.3, 'PO12', NULL, NULL),
(22428, '2014-1-60-023', 'CSE435', 2, 'spring', '2018', 'CO2', 9, 31.3, 'PO5', NULL, NULL),
(22429, '2014-1-60-023', 'CSE435', 2, 'spring', '2018', 'CO2', 9, 31.3, 'PO2', NULL, NULL),
(22430, '2014-1-60-023', 'CSE435', 2, 'spring', '2018', 'CO1', 16, 55.65, 'PO12', NULL, NULL),
(22431, '2014-1-60-023', 'CSE435', 2, 'spring', '2018', 'CO3', 10, 34.78, 'PO2', NULL, NULL),
(22432, '2014-1-60-023', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO2', NULL, NULL),
(22433, '2014-1-60-023', 'CSE435', 2, 'spring', '2018', 'CO3', 10, 34.78, 'PO3', NULL, NULL),
(22434, '2014-1-60-023', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO5', NULL, NULL),
(22435, '2014-1-60-023', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO9', NULL, NULL),
(22436, '2014-1-60-023', 'CSE435', 2, 'spring', '2018', 'CO4', 2, 6.96, 'PO10', NULL, NULL),
(22437, '2014-1-60-024', 'CSE435', 2, 'Spring', '2018', 'CO2', 12, 41.74, 'PO12', NULL, NULL),
(22438, '2014-1-60-024', 'CSE435', 2, 'Spring', '2018', 'CO2', 12, 41.74, 'PO5', NULL, NULL),
(22439, '2014-1-60-024', 'CSE435', 2, 'Spring', '2018', 'CO2', 12, 41.74, 'PO2', NULL, NULL),
(22440, '2014-1-60-024', 'CSE435', 2, 'Spring', '2018', 'CO1', 21, 73.04, 'PO12', NULL, NULL),
(22441, '2014-1-60-024', 'CSE435', 2, 'Spring', '2018', 'CO3', 13, 45.22, 'PO2', NULL, NULL),
(22442, '2014-1-60-024', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22443, '2014-1-60-024', 'CSE435', 2, 'Spring', '2018', 'CO3', 13, 45.22, 'PO3', NULL, NULL),
(22444, '2014-1-60-024', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22445, '2014-1-60-024', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22446, '2014-1-60-024', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22447, '2014-1-60-025', 'CSE435', 2, 'spring', '2018', 'CO2', 13, 45.22, 'PO12', NULL, NULL),
(22448, '2014-1-60-025', 'CSE435', 2, 'spring', '2018', 'CO2', 13, 45.22, 'PO5', NULL, NULL),
(22449, '2014-1-60-025', 'CSE435', 2, 'spring', '2018', 'CO2', 13, 45.22, 'PO2', NULL, NULL),
(22450, '2014-1-60-025', 'CSE435', 2, 'spring', '2018', 'CO1', 25, 86.96, 'PO12', NULL, NULL),
(22451, '2014-1-60-025', 'CSE435', 2, 'spring', '2018', 'CO3', 15, 52.17, 'PO2', NULL, NULL),
(22452, '2014-1-60-025', 'CSE435', 2, 'spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22453, '2014-1-60-025', 'CSE435', 2, 'spring', '2018', 'CO3', 15, 52.17, 'PO3', NULL, NULL),
(22454, '2014-1-60-025', 'CSE435', 2, 'spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22455, '2014-1-60-025', 'CSE435', 2, 'spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22456, '2014-1-60-025', 'CSE435', 2, 'spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22457, '2014-1-60-026', 'CSE435', 2, 'Spring', '2018', 'CO2', 16, 55.65, 'PO12', NULL, NULL),
(22458, '2014-1-60-026', 'CSE435', 2, 'Spring', '2018', 'CO2', 16, 55.65, 'PO5', NULL, NULL),
(22459, '2014-1-60-026', 'CSE435', 2, 'Spring', '2018', 'CO2', 16, 55.65, 'PO2', NULL, NULL),
(22460, '2014-1-60-026', 'CSE435', 2, 'Spring', '2018', 'CO1', 24, 83.48, 'PO12', NULL, NULL),
(22461, '2014-1-60-026', 'CSE435', 2, 'Spring', '2018', 'CO3', 17, 59.13, 'PO2', NULL, NULL),
(22462, '2014-1-60-026', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22463, '2014-1-60-026', 'CSE435', 2, 'Spring', '2018', 'CO3', 17, 59.13, 'PO3', NULL, NULL),
(22464, '2014-1-60-026', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22465, '2014-1-60-026', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22466, '2014-1-60-026', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22467, '2014-1-60-027', 'CSE435', 2, 'spring', '2018', 'CO2', 18, 62.61, 'PO12', NULL, NULL),
(22468, '2014-1-60-027', 'CSE435', 2, 'spring', '2018', 'CO2', 18, 62.61, 'PO5', NULL, NULL),
(22469, '2014-1-60-027', 'CSE435', 2, 'spring', '2018', 'CO2', 18, 62.61, 'PO2', NULL, NULL),
(22470, '2014-1-60-027', 'CSE435', 2, 'spring', '2018', 'CO1', 28, 97.39, 'PO12', NULL, NULL),
(22471, '2014-1-60-027', 'CSE435', 2, 'spring', '2018', 'CO3', 19, 66.09, 'PO2', NULL, NULL),
(22472, '2014-1-60-027', 'CSE435', 2, 'spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22473, '2014-1-60-027', 'CSE435', 2, 'spring', '2018', 'CO3', 19, 66.09, 'PO3', NULL, NULL),
(22474, '2014-1-60-027', 'CSE435', 2, 'spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22475, '2014-1-60-027', 'CSE435', 2, 'spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22476, '2014-1-60-027', 'CSE435', 2, 'spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22477, '2014-1-60-028', 'CSE435', 2, 'Spring', '2018', 'CO2', 19, 66.09, 'PO12', NULL, NULL),
(22478, '2014-1-60-028', 'CSE435', 2, 'Spring', '2018', 'CO2', 19, 66.09, 'PO5', NULL, NULL),
(22479, '2014-1-60-028', 'CSE435', 2, 'Spring', '2018', 'CO2', 19, 66.09, 'PO2', NULL, NULL),
(22480, '2014-1-60-028', 'CSE435', 2, 'Spring', '2018', 'CO1', 24, 83.48, 'PO12', NULL, NULL),
(22481, '2014-1-60-028', 'CSE435', 2, 'Spring', '2018', 'CO3', 14, 48.7, 'PO2', NULL, NULL),
(22482, '2014-1-60-028', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO2', NULL, NULL),
(22483, '2014-1-60-028', 'CSE435', 2, 'Spring', '2018', 'CO3', 14, 48.7, 'PO3', NULL, NULL),
(22484, '2014-1-60-028', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO5', NULL, NULL),
(22485, '2014-1-60-028', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO9', NULL, NULL),
(22486, '2014-1-60-028', 'CSE435', 2, 'Spring', '2018', 'CO4', 3, 10.43, 'PO10', NULL, NULL),
(22487, '2014-1-60-029', 'CSE435', 2, 'spring', '2018', 'CO2', NULL, NULL, 'PO12', NULL, NULL),
(22488, '2014-1-60-029', 'CSE435', 2, 'spring', '2018', 'CO2', NULL, NULL, 'PO5', NULL, NULL),
(22489, '2014-1-60-029', 'CSE435', 2, 'spring', '2018', 'CO2', NULL, NULL, 'PO2', NULL, NULL),
(22490, '2014-1-60-029', 'CSE435', 2, 'spring', '2018', 'CO1', NULL, NULL, 'PO12', NULL, NULL),
(22491, '2014-1-60-029', 'CSE435', 2, 'spring', '2018', 'CO3', NULL, NULL, 'PO2', NULL, NULL),
(22492, '2014-1-60-029', 'CSE435', 2, 'spring', '2018', 'CO4', NULL, NULL, 'PO2', NULL, NULL),
(22493, '2014-1-60-029', 'CSE435', 2, 'spring', '2018', 'CO3', NULL, NULL, 'PO3', NULL, NULL),
(22494, '2014-1-60-029', 'CSE435', 2, 'spring', '2018', 'CO4', NULL, NULL, 'PO5', NULL, NULL),
(22495, '2014-1-60-029', 'CSE435', 2, 'spring', '2018', 'CO4', NULL, NULL, 'PO9', NULL, NULL),
(22496, '2014-1-60-029', 'CSE435', 2, 'spring', '2018', 'CO4', NULL, NULL, 'PO10', NULL, NULL),
(22497, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO2', NULL, NULL, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22498, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO2', NULL, NULL, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22499, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO2', NULL, NULL, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22500, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO1', NULL, NULL, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22501, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO3', NULL, NULL, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22502, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO4', NULL, NULL, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22503, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO4', NULL, NULL, 'PO3', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22504, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO4', NULL, NULL, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22505, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO4', NULL, NULL, 'PO9', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22506, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO4', NULL, NULL, 'PO10', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22507, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO4', NULL, NULL, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22508, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO4', NULL, NULL, 'PO6', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22509, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO4', NULL, NULL, 'PO12', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22510, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO3', NULL, NULL, 'PO3', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22511, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO3', NULL, NULL, 'PO6', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22512, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO3', NULL, NULL, 'PO9', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22513, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO1', NULL, NULL, 'PO1', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22514, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO1', NULL, NULL, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22515, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO1', NULL, NULL, 'PO9', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22516, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO2', NULL, NULL, 'PO2', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22517, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO2', NULL, NULL, 'PO5', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10'),
(22518, '2014-1-60-003', 'CSE435', 1, 'Spring', '2018', 'CO2', NULL, NULL, 'PO11', NULL, 'PO12, PO5, PO2, PO3, PO9, PO10');

-- --------------------------------------------------------

--
-- Table structure for table `po`
--

CREATE TABLE `po` (
  `id` int(11) NOT NULL,
  `assigned_course_id` varchar(200) NOT NULL,
  `co_code` varchar(200) NOT NULL,
  `co_text` varchar(200) NOT NULL,
  `co_marks` varchar(200) NOT NULL,
  `rest_co_marks` varchar(200) NOT NULL,
  `co_tr` varchar(100) NOT NULL,
  `co_id` int(11) NOT NULL,
  `co1` varchar(50) NOT NULL,
  `facultyId` varchar(100) NOT NULL,
  `co2` varchar(50) NOT NULL,
  `co3` varchar(50) NOT NULL,
  `co4` varchar(50) NOT NULL,
  `co5` varchar(50) NOT NULL,
  `studentname` varchar(100) NOT NULL,
  `srollno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `po_according_to_co`
--

CREATE TABLE `po_according_to_co` (
  `id` int(11) NOT NULL,
  `s_id` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `sec_no` int(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `year` int(4) NOT NULL,
  `po` varchar(10) NOT NULL,
  `co` varchar(15) NOT NULL,
  `po_per` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `po_attainment`
--

CREATE TABLE `po_attainment` (
  `id` int(11) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `sec_no` int(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `year` int(4) NOT NULL,
  `po` varchar(15) DEFAULT NULL,
  `po_per` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `po_attainment_individual`
--

CREATE TABLE `po_attainment_individual` (
  `id` int(11) NOT NULL,
  `s_id` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `sec_no` int(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `year` int(4) NOT NULL,
  `po` varchar(10) NOT NULL,
  `po_per` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `po_attainment_individual`
--

INSERT INTO `po_attainment_individual` (`id`, `s_id`, `course_code`, `sec_no`, `semester`, `year`, `po`, `po_per`) VALUES
(4045, '1', '', 0, '', 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `result_processing`
--

CREATE TABLE `result_processing` (
  `id` int(11) NOT NULL,
  `assigned_course_id` int(11) NOT NULL,
  `marks` varchar(200) NOT NULL,
  `student_enrollment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result_processing`
--

INSERT INTO `result_processing` (`id`, `assigned_course_id`, `marks`, `student_enrollment_id`) VALUES
(1, 12, '10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester_id` int(11) NOT NULL,
  `faculty_id` varchar(200) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `dept` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semester_id`, `faculty_id`, `semester`, `year`, `dept`) VALUES
(12, '1', 'Summer', '2023', '1'),
(13, '6', 'Summer', '2023', '4'),
(14, '6', 'Summer', '2023', '11'),
(15, '6', 'Summer', '2023', '11'),
(16, '7', 'Summer', '2023', '2'),
(17, '6', 'Summer', '2023', '5'),
(18, '6', 'Summer', '2023', '2');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `course_code` varchar(200) NOT NULL,
  `s_id` varchar(100) NOT NULL,
  `year` varchar(200) NOT NULL,
  `sec_no` varchar(200) NOT NULL,
  `semester` varchar(200) NOT NULL,
  `grade` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `course_code`, `s_id`, `year`, `sec_no`, `semester`, `grade`) VALUES
(1, 'btech101', '1', '2023', '1', 'Summer', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_enrollment`
--

CREATE TABLE `student_enrollment` (
  `id` int(11) NOT NULL,
  `assigned_course_id` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `s_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_enrollment`
--

INSERT INTO `student_enrollment` (`id`, `assigned_course_id`, `grade`, `name`, `total_marks`, `s_id`) VALUES
(1, 23, 12, 'st01', 10, '1'),
(2, 23, 0, 'st02', 0, '2'),
(3, 23, 0, 'st03', 0, '3'),
(4, 23, 0, 'st04', 0, '4'),
(5, 23, 0, 'st05', 0, '5'),
(6, 23, 0, 'st06', 0, '6'),
(7, 23, 0, 'st07', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `st_en`
--

CREATE TABLE `st_en` (
  `s_id` int(11) NOT NULL,
  `assigned_course_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `rollno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `st_en`
--

INSERT INTO `st_en` (`s_id`, `assigned_course_id`, `name`, `rollno`) VALUES
(1, 11, 'st01', '123'),
(2, 11, 'st02', 'er'),
(3, 11, 'st03', 'fe'),
(4, 23, 'st04', 'ef4654'),
(5, 23, 'st05', 'ef6'),
(6, 23, 'st06', 'ef6435'),
(7, 23, 'st07', 'ef35'),
(8, 23, 'st08', 'ef35'),
(9, 23, 'st09', 'f3e5'),
(10, 23, 'st10', 'fe3'),
(11, 23, 'st11', 'f354'),
(24, 10, 'Sonam Singh', 'ef36'),
(25, 10, 'Pawan Raghuvanshi', 'ef35'),
(26, 10, 'Ajay Dwivedi', 'fe34'),
(27, 10, ' Ashish Singh', 'fe3'),
(32, 11, 'Sonam Singh', ''),
(33, 11, 'Sonam Singh', ''),
(34, 11, 'Pawan Raghuvanshi', ''),
(35, 11, 'Ajay Dwivedi', ''),
(36, 11, ' Ashish Singh', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `user_type_id` int(255) NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `user_type`) VALUES
(1, '1'),
(5, 'faculty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_course`
--
ALTER TABLE `assigned_course`
  ADD PRIMARY KEY (`assigned_course_id`);

--
-- Indexes for table `assign_course`
--
ALTER TABLE `assign_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `co`
--
ALTER TABLE `co`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comp`
--
ALTER TABLE `comp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `co_attainment`
--
ALTER TABLE `co_attainment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `co_attainment_individual`
--
ALTER TABLE `co_attainment_individual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade_distribution`
--
ALTER TABLE `grade_distribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks_component`
--
ALTER TABLE `marks_component`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offered_course`
--
ALTER TABLE `offered_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_course`
--
ALTER TABLE `offer_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `percent_of_co`
--
ALTER TABLE `percent_of_co`
  ADD PRIMARY KEY (`id`,`s_id`);

--
-- Indexes for table `po`
--
ALTER TABLE `po`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_according_to_co`
--
ALTER TABLE `po_according_to_co`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_attainment`
--
ALTER TABLE `po_attainment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_attainment_individual`
--
ALTER TABLE `po_attainment_individual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_processing`
--
ALTER TABLE `result_processing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_enrollment`
--
ALTER TABLE `student_enrollment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `st_en`
--
ALTER TABLE `st_en`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_course`
--
ALTER TABLE `assigned_course`
  MODIFY `assigned_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `assign_course`
--
ALTER TABLE `assign_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `co`
--
ALTER TABLE `co`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `comp`
--
ALTER TABLE `comp`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `co_attainment`
--
ALTER TABLE `co_attainment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `co_attainment_individual`
--
ALTER TABLE `co_attainment_individual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1194519;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `dept_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grade_distribution`
--
ALTER TABLE `grade_distribution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marks_component`
--
ALTER TABLE `marks_component`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offered_course`
--
ALTER TABLE `offered_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `offer_course`
--
ALTER TABLE `offer_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `percent_of_co`
--
ALTER TABLE `percent_of_co`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22519;

--
-- AUTO_INCREMENT for table `po`
--
ALTER TABLE `po`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `po_according_to_co`
--
ALTER TABLE `po_according_to_co`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7622;

--
-- AUTO_INCREMENT for table `po_attainment`
--
ALTER TABLE `po_attainment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `po_attainment_individual`
--
ALTER TABLE `po_attainment_individual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4046;

--
-- AUTO_INCREMENT for table `result_processing`
--
ALTER TABLE `result_processing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_enrollment`
--
ALTER TABLE `student_enrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `st_en`
--
ALTER TABLE `st_en`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
