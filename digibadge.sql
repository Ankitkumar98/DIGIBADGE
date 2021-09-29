-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2021 at 11:10 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digibadge`
--

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `skill_name` varchar(50) NOT NULL,
  `skill_code` varchar(50) NOT NULL,
  `badge_image` varchar(4096) DEFAULT NULL,
  `min_score` int(5) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`skill_name`, `skill_code`, `badge_image`, `min_score`) VALUES
('ANDROID DEVELOPMENT', 'AD2020', 'android dev badge.png', 0),
('MACHINE LEARNING', 'ML2020', 'ml.png', 0),
('WEB DEVELOPMENT', 'WD2020', 'web dev.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_achievements`
--

CREATE TABLE `user_achievements` (
  `user_mail` varchar(50) NOT NULL,
  `skill_code` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `score` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_achievements`
--

INSERT INTO `user_achievements` (`user_mail`, `skill_code`, `date`, `remark`, `score`) VALUES
('ankitkumar.adi13@gmail.com', 'WD2020', '2020-11-06', NULL, NULL),
('ankitkumar.adi13@gmail.com', 'ML2020', '2020-11-06', NULL, NULL),
('ankitkumar.adi13@gmail.com', 'AD2020', '2020-11-06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_email` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` int(10) DEFAULT NULL,
  `organisation` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `github` varchar(200) DEFAULT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `linkedin` varchar(200) DEFAULT NULL,
  `portfolio` varchar(200) DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `profile_image` varchar(1024) DEFAULT NULL,
  `resume` varchar(4096) DEFAULT NULL,
  `moto` varchar(100) DEFAULT NULL,
  `profession` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_email`, `firstname`, `lastname`, `address`, `country`, `state`, `pincode`, `organisation`, `dob`, `github`, `facebook`, `twitter`, `linkedin`, `portfolio`, `gender`, `profile_image`, `resume`, `moto`, `profession`) VALUES
('ankitkumar.adi13@gmail.com', 'ankit ', 'kumar', 'malti bhawan', 'INDIA', 'JHARKHAND', 831013, 'KIIT UNIVERSITY', '2020-11-06', 'github link', 'facebook link', 'twitter link', 'linkedin link', 'portfolio link', 'M', NULL, NULL, 'live in peace', 'PROFESSIONAL'),
('aman@kiit.ac.in', 'aman', 'kumar', 'h.no-1840 , malti bhawan , jay prakash nagar', 'india', 'JHK', 831013, 'KIIT', '2020-11-07', 'github', 'facebook', 'twitter', 'linkedin', 'portfolio', 'M', 'ankit pic.jpg', 'ANKIT KUMAR-resume.pdf', 'live peace', 'STUDENT'),
('aman@kiit.ac.in', 'aman', 'kumar', 'h.no-1840,malti bhawan,jay prakash nagar', 'india', 'JHK', 831013, 'KIIT', '2020-11-07', 'github', 'facebook', 'twitter', 'linkedin', 'portfolio', 'M', 'ankit pic.jpg', 'ANKIT KUMAR-resume.pdf', 'live happy', 'STUDENT'),
('aman@kiit.ac.in', 'aman', 'kumar', 'h.no-1840,malti bhawan,jay prakash nagar', 'india', 'JHK', 831013, 'KIIT', '2020-11-07', 'github', 'facebook', 'twitter', 'linkedin', 'portfolio', 'M', 'ankit pic.jpg', 'ANKIT KUMAR-resume.pdf', 'live happy', 'STUDENT'),
('aman@kiit.ac.in', 'aman', 'kumar', 'h.no-1840,malti bhawan,jay prakash nagar', 'india', 'JHK', 831013, 'KIIT', '2020-11-07', 'github', 'facebook', 'twitter', 'linkedin', 'portfolio', 'M', 'ankit pic.jpg', 'ANKIT KUMAR-resume.pdf', 'live happy', 'STUDENT'),
('aman@kiit.ac.in', 'aman', 'kumar', 'h.no-1840,malti bhawan,jay prakash nagar', 'india', 'JHK', 831013, 'KIIT', '2020-11-07', 'github', 'facebook', 'twitter', 'linkedin', 'portfolio', 'M', 'ankit pic.jpg', 'ANKIT KUMAR-resume.pdf', 'live happy', 'STUDENT'),
('aman@kiit.ac.in', 'aman', 'kumar', 'h.no-1840,malti bhawan,jay prakash nagar', 'india', 'JHK', 831013, 'KIIT', '2020-11-07', 'github', 'facebook', 'twitter', 'linkedin', 'portfolio', 'M', 'ankit pic.jpg', 'ANKIT KUMAR-resume.pdf', 'live happy', 'STUDENT');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `flag` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`email`, `password`, `flag`) VALUES
('1805661@kiit.ac.in', '123', 0),
('aman@kiit.ac.in', '123', 0),
('ankesh@gmail.com', '123', 0),
('ankit@gmail.com', '123', 0),
('ankitkumar.adi13@gmail.com', '123', 0),
('ashish@gmail.com', '123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`skill_code`);

--
-- Indexes for table `user_achievements`
--
ALTER TABLE `user_achievements`
  ADD KEY `user_foreign` (`user_mail`),
  ADD KEY `skill foreign` (`skill_code`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD KEY `foreign key` (`user_email`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_achievements`
--
ALTER TABLE `user_achievements`
  ADD CONSTRAINT `skill foreign` FOREIGN KEY (`skill_code`) REFERENCES `badges` (`skill_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_foreign` FOREIGN KEY (`user_mail`) REFERENCES `user_login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `foreign key` FOREIGN KEY (`user_email`) REFERENCES `user_login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
