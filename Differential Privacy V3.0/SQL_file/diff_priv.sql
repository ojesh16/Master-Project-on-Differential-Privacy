-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 19, 2017 at 03:26 PM
-- Server version: 5.7.15-log
-- PHP Version: 7.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `diff_priv`
--

CREATE TABLE `diff_priv` (
  `countries` varchar(15) NOT NULL,
  `age` varchar(15) NOT NULL,
  `course` int(10) NOT NULL,
  `course_lang` int(10) NOT NULL,
  `daad` int(10) NOT NULL,
  `daadrate` int(10) NOT NULL,
  `daadsearch` int(10) NOT NULL,
  `Universityrate` int(10) NOT NULL,
  `RD_Entry` int(10) NOT NULL,
  `app_proc` int(10) NOT NULL,
  `Uni_assist` int(10) NOT NULL,
  `Uni_assist_app_r` int(10) NOT NULL,
  `Uni_assist_info` int(10) NOT NULL,
  `Uni_assist_webinar` int(10) NOT NULL,
  `Visa_Process_r` int(10) NOT NULL,
  `Visa_Process_Consulate` int(10) NOT NULL,
  `Visa_Process_Response` int(10) NOT NULL,
  `Tuition_Fee` int(10) NOT NULL,
  `Funding_Opp` int(10) NOT NULL,
  `Accommodation` int(10) NOT NULL,
  `Accommodation_info` int(10) NOT NULL,
  `Accommodation_sugg` int(10) NOT NULL,
  `Studentenwerk` int(10) NOT NULL,
  `Studentenwerk_app` int(10) NOT NULL,
  `Studentenwerk_resp` int(10) NOT NULL,
  `Studentenwerk_info` int(10) NOT NULL,
  `Enrollment_process` int(10) NOT NULL,
  `International_guide` int(10) NOT NULL,
  `International_resp` int(10) NOT NULL,
  `International_assis` int(10) NOT NULL,
  `University_reg` int(10) NOT NULL,
  `Arrival_assis` int(10) NOT NULL,
  `Language_Pro` int(10) NOT NULL,
  `German_language` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diff_priv`
--

INSERT INTO `diff_priv` (`countries`, `age`, `course`, `course_lang`, `daad`, `daadrate`, `daadsearch`, `Universityrate`, `RD_Entry`, `app_proc`, `Uni_assist`, `Uni_assist_app_r`, `Uni_assist_info`, `Uni_assist_webinar`, `Visa_Process_r`, `Visa_Process_Consulate`, `Visa_Process_Response`, `Tuition_Fee`, `Funding_Opp`, `Accommodation`, `Accommodation_info`, `Accommodation_sugg`, `Studentenwerk`, `Studentenwerk_app`, `Studentenwerk_resp`, `Studentenwerk_info`, `Enrollment_process`, `International_guide`, `International_resp`, `International_assis`, `University_reg`, `Arrival_assis`, `Language_Pro`, `German_language`) VALUES
('Botswana', '35-50', 3, 4, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 3, 5, 3, 4, 4, 4, 5, 4, 0, 0, 0, 0, 4, 2, 1, 2, 2, 3, 3, 2),
('Aruba', '25-34', 3, 4, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 3, 4, 2, 4, 5, 3, 4, 4, 0, 0, 0, 0, 4, 5, 3, 4, 5, 5, 4, 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
