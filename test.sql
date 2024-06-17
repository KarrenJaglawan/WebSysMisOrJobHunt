-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2024 at 03:34 PM
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
-- Database: `test`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `drop_related_table` (IN `user_id` VARCHAR(255))   BEGIN
    SET @sql = CONCAT('DROP TABLE IF EXISTS ', user_id);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `1`
--

CREATE TABLE `1` (
  `notifierID` int(11) DEFAULT NULL,
  `notifierFname` varchar(255) DEFAULT NULL,
  `notification` varchar(255) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `1`
--

INSERT INTO `1` (`notifierID`, `notifierFname`, `notification`, `Status`) VALUES
(3, 'Kathlyn', 'The Recruiter Kathlyn is Interested in you provideWait for an Email', NULL),
(2, 'Rustyreq', 'The Recruiter Rustyreq is Interested in you provideWait for an Email', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `2`
--

CREATE TABLE `2` (
  `notifierID` int(11) DEFAULT NULL,
  `notifierFname` varchar(255) DEFAULT NULL,
  `notification` varchar(255) DEFAULT NULL,
  `JobtitleCode` varchar(255) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2`
--

INSERT INTO `2` (`notifierID`, `notifierFname`, `notification`, `JobtitleCode`, `Status`) VALUES
(1, 'Rusty', 'An applicant Rusty Applied to your Job Opening Jobttile1', 'Jobttile1220240613225551', NULL),
(NULL, NULL, 'An applicant  Applied to your Job Opening Jobttile1', 'Jobttile1220240613225551', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `3`
--

CREATE TABLE `3` (
  `notifierID` int(11) DEFAULT NULL,
  `notifierFname` varchar(255) DEFAULT NULL,
  `notification` varchar(255) DEFAULT NULL,
  `JobtitleCode` varchar(255) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `3`
--

INSERT INTO `3` (`notifierID`, `notifierFname`, `notification`, `JobtitleCode`, `Status`) VALUES
(1, 'Rusty', 'An applicant Rusty Applied to your Job Opening INSTRUCTOR 1', 'INSTRUCTOR1320240614083548', NULL),
(1, 'Rusty', 'An applicant Rusty Applied to your Job Opening INSTRUCTOR 1', 'INSTRUCTOR1320240614083548', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `4`
--

CREATE TABLE `4` (
  `notifierID` int(11) DEFAULT NULL,
  `notifierFname` varchar(255) DEFAULT NULL,
  `notification` varchar(255) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `4`
--

INSERT INTO `4` (`notifierID`, `notifierFname`, `notification`, `Status`) VALUES
(5, 'Karren ', 'The Recruiter Karren  is Interested in you provideWait for an Email', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `5`
--

CREATE TABLE `5` (
  `notifierID` int(11) DEFAULT NULL,
  `notifierFname` varchar(255) DEFAULT NULL,
  `notification` varchar(255) DEFAULT NULL,
  `JobtitleCode` varchar(255) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `6`
--

CREATE TABLE `6` (
  `notifierID` int(11) DEFAULT NULL,
  `notifierFname` varchar(255) DEFAULT NULL,
  `notification` varchar(255) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education_college`
--

CREATE TABLE `education_college` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `SchoolName` varchar(255) DEFAULT NULL,
  `SchoolAddress` varchar(255) DEFAULT NULL,
  `Level` varchar(50) DEFAULT NULL,
  `Year` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_college`
--

INSERT INTO `education_college` (`id`, `user_id`, `SchoolName`, `SchoolAddress`, `Level`, `Year`) VALUES
(1, 1, 'University of Science and Technology of Southern Philippines', 'Poblacion, Claveria, Misamis Oriental', '2nd Year', '2024'),
(3, 6, 'University of Science and Technology of Southern Philippines', 'Poblacion, Claveria, Misamis Oriental', '2nd Year', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `education_elementary`
--

CREATE TABLE `education_elementary` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `SchoolName` varchar(255) DEFAULT NULL,
  `SchoolAddress` varchar(255) DEFAULT NULL,
  `Level` varchar(50) DEFAULT NULL,
  `Year` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_elementary`
--

INSERT INTO `education_elementary` (`id`, `user_id`, `SchoolName`, `SchoolAddress`, `Level`, `Year`) VALUES
(1, 1, 'Kanangkaan Elementary School', 'Kanangkaan, Patrocinio, Claveria, Misamis Oriental', 'Graduated', '2019'),
(3, 6, 'Kanangkaan Elementary School', 'Kanangkaan, Patrocinio, Claveria, Misamis Oriental', 'Graduated', '2019');

-- --------------------------------------------------------

--
-- Table structure for table `education_highschool`
--

CREATE TABLE `education_highschool` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `SchoolName` varchar(255) DEFAULT NULL,
  `SchoolAddress` varchar(255) DEFAULT NULL,
  `Level` varchar(50) DEFAULT NULL,
  `Year` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_highschool`
--

INSERT INTO `education_highschool` (`id`, `user_id`, `SchoolName`, `SchoolAddress`, `Level`, `Year`) VALUES
(1, 1, 'Dr. Gerardo Sabal Memorial National High School', 'Poblacion, Claveria, Misamis Orientall', 'Graduate', '2021'),
(3, 6, 'Dr. Gerardo Sabal Memorial National High School', 'Poblacion, Claveria, Misamis Orientall', 'Graduate', '2021');

-- --------------------------------------------------------

--
-- Table structure for table `instructor1320240614083548`
--

CREATE TABLE `instructor1320240614083548` (
  `APPLICANTSid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobttile1220240613225551`
--

CREATE TABLE `jobttile1220240613225551` (
  `APPLICANTSid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `multientry`
--

CREATE TABLE `multientry` (
  `JobtitleCode` varchar(255) DEFAULT NULL,
  `Date` datetime DEFAULT current_timestamp(),
  `Sections` varchar(255) DEFAULT NULL,
  `Captions` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `multientry`
--

INSERT INTO `multientry` (`JobtitleCode`, `Date`, `Sections`, `Captions`) VALUES
('Jobttile1220240613225551', '2024-06-14 04:55:51', 'Key_Responsibilities', 'sample key reponsibility'),
('Jobttile1220240613225551', '2024-06-14 04:55:51', 'Other_Requirements', 'cample others'),
('Jobttile1220240613225551', '2024-06-14 04:55:51', 'SkillandCompetency', 'cample competencies'),
('Jobttile1220240613225551', '2024-06-14 04:55:51', 'WorkingCondition', 'working condition'),
('Jobttile1220240613225551', '2024-06-14 04:55:51', 'CompensationBenefits', 'allowance and free bording houz'),
('Jobttile1220240613225551', '2024-06-14 04:55:51', 'SkillandCompetency', 'cample competencies'),
('Jobttile1220240613225551', '2024-06-14 04:55:51', 'HowToApply', 'visit our website'),
('INSTRUCTOR1320240614083548', '2024-06-14 14:35:48', 'Key_Responsibilities', 'TUDLO TUDLO'),
('INSTRUCTOR1320240614083548', '2024-06-14 14:35:48', 'Other_Requirements', 'BASTA GRADUATE PANGCOLLEGE GUD'),
('INSTRUCTOR1320240614083548', '2024-06-14 14:35:48', 'SkillandCompetency', 'GOOD IN WRITING AND VERBAL COMMUNICATION'),
('INSTRUCTOR1320240614083548', '2024-06-14 14:35:48', 'WorkingCondition', 'LISOD UG HAGO'),
('INSTRUCTOR1320240614083548', '2024-06-14 14:35:48', 'CompensationBenefits', 'ST PETER INSURANCE'),
('INSTRUCTOR1320240614083548', '2024-06-14 14:35:48', 'SkillandCompetency', 'GOOD IN WRITING AND VERBAL COMMUNICATION'),
('INSTRUCTOR1320240614083548', '2024-06-14 14:35:48', 'HowToApply', 'CONTACT US  THROUGH OUR EMAIL'),
('teacher320240614113340', '2024-06-14 17:33:40', 'Key_Responsibilities', 'teach'),
('teacher320240614113340', '2024-06-14 17:33:40', 'Other_Requirements', 'none'),
('teacher320240614113340', '2024-06-14 17:33:40', 'SkillandCompetency', 'masters'),
('teacher320240614113340', '2024-06-14 17:33:40', 'WorkingCondition', 'goods'),
('teacher320240614113340', '2024-06-14 17:33:40', 'CompensationBenefits', 'none'),
('teacher320240614113340', '2024-06-14 17:33:40', 'SkillandCompetency', 'masters'),
('teacher320240614113340', '2024-06-14 17:33:40', 'HowToApply', 'contact through gmail'),
('PROGRAMMER520240614115011', '2024-06-14 17:50:11', 'Key_Responsibilities', 'code'),
('PROGRAMMER520240614115011', '2024-06-14 17:50:11', 'Other_Requirements', 'None'),
('PROGRAMMER520240614115011', '2024-06-14 17:50:11', 'SkillandCompetency', 'effeceint in web design'),
('PROGRAMMER520240614115011', '2024-06-14 17:50:11', 'WorkingCondition', 'Fair'),
('PROGRAMMER520240614115011', '2024-06-14 17:50:11', 'CompensationBenefits', 'insurance'),
('PROGRAMMER520240614115011', '2024-06-14 17:50:11', 'SkillandCompetency', 'effeceint in web design'),
('PROGRAMMER520240614115011', '2024-06-14 17:50:11', 'HowToApply', 'contact us via email');

-- --------------------------------------------------------

--
-- Table structure for table `programmer520240614115011`
--

CREATE TABLE `programmer520240614115011` (
  `APPLICANTSid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recruitmentdetails`
--

CREATE TABLE `recruitmentdetails` (
  `user_id` int(11) DEFAULT NULL,
  `JobtitleCode` varchar(255) NOT NULL,
  `Jobtitle` varchar(255) DEFAULT NULL,
  `AddressMunicipality` varchar(255) DEFAULT NULL,
  `AddressProvince` varchar(255) DEFAULT NULL,
  `CompanyName` varchar(255) DEFAULT NULL,
  `EmploymentType` varchar(255) DEFAULT NULL,
  `JobSummary` mediumtext DEFAULT NULL,
  `Date` datetime DEFAULT current_timestamp(),
  `HighestEducAttainment` varchar(255) DEFAULT NULL,
  `Experience` varchar(255) DEFAULT NULL,
  `Salary` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recruitmentdetails`
--

INSERT INTO `recruitmentdetails` (`user_id`, `JobtitleCode`, `Jobtitle`, `AddressMunicipality`, `AddressProvince`, `CompanyName`, `EmploymentType`, `JobSummary`, `Date`, `HighestEducAttainment`, `Experience`, `Salary`) VALUES
(3, 'INSTRUCTOR1320240614083548', 'INSTRUCTOR 1', NULL, NULL, 'USTP HR', 'fullTime', 'TUDLO LANG', '2024-06-14 14:35:48', 'colgrad', '1', 15000),
(2, 'Jobttile1220240613225551', 'Jobttile1', NULL, NULL, 'Companyname1', 'fullTime', 'xample summary', '2024-06-14 04:55:51', 'ElemLevel', '.5', 10000000),
(5, 'PROGRAMMER520240614115011', 'PROGRAMMER', 'USTP CLAVERIA', 'Claveria', NULL, 'fullTime', 'Code and create programs for the school', '2024-06-14 17:50:11', 'collevel', '1', 20002),
(3, 'teacher320240614113340', 'teacher', 'DepEd', 'claveria', NULL, 'contractual', 'teaching', '2024-06-14 17:33:40', 'HSLevel', '6', 45000);

-- --------------------------------------------------------

--
-- Table structure for table `teacher320240614113340`
--

CREATE TABLE `teacher320240614113340` (
  `APPLICANTSid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `mid_name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Usertype` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `civil_status` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `messenger_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `FirstName`, `LastName`, `mid_name`, `Email`, `Usertype`, `password`, `sex`, `age`, `birthdate`, `address`, `civil_status`, `nationality`, `phone`, `messenger_link`) VALUES
(1, 'Rusty', 'Namata', 'Gadian', 'rustyjrnamata@gmail.com', 'Applicant', 'alienware122', 'Male', 21, '0000-00-00', 'Poblacion, Misamis Oriental', 'Single', 'Filipino', '09650625856', 'm.me/mutae.ga'),
(2, 'Rustyreq', 'Namatareq', NULL, 'namata.rusty1@gmail.com', 'Recruiter', 'recruiterpask', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Kathlyn', 'Agnao', NULL, 'kathlyagnao@gmail.com', 'Recruiter', 'agnao1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Karren ', 'Jaglawan', NULL, 'kjaglawan@gmail.com', 'Recruiter', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Rusty', 'Namata', 'Gadian', 'bmaxmanster@gmail.com', 'Applicant', '1234567', 'Male', 21, '0000-00-00', 'Poblacion, Misamis Oriental', 'Single', 'Filipino', '09650625856', 'htttp://m.me/mutae.ga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `1`
--
ALTER TABLE `1`
  ADD KEY `notifierID` (`notifierID`);

--
-- Indexes for table `2`
--
ALTER TABLE `2`
  ADD KEY `notifierID` (`notifierID`),
  ADD KEY `JobtitleCode` (`JobtitleCode`);

--
-- Indexes for table `3`
--
ALTER TABLE `3`
  ADD KEY `notifierID` (`notifierID`),
  ADD KEY `JobtitleCode` (`JobtitleCode`);

--
-- Indexes for table `4`
--
ALTER TABLE `4`
  ADD KEY `notifierID` (`notifierID`);

--
-- Indexes for table `5`
--
ALTER TABLE `5`
  ADD KEY `notifierID` (`notifierID`),
  ADD KEY `JobtitleCode` (`JobtitleCode`);

--
-- Indexes for table `6`
--
ALTER TABLE `6`
  ADD KEY `notifierID` (`notifierID`);

--
-- Indexes for table `education_college`
--
ALTER TABLE `education_college`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `education_elementary`
--
ALTER TABLE `education_elementary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `education_highschool`
--
ALTER TABLE `education_highschool`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `instructor1320240614083548`
--
ALTER TABLE `instructor1320240614083548`
  ADD KEY `APPLICANTSid` (`APPLICANTSid`);

--
-- Indexes for table `jobttile1220240613225551`
--
ALTER TABLE `jobttile1220240613225551`
  ADD KEY `APPLICANTSid` (`APPLICANTSid`);

--
-- Indexes for table `multientry`
--
ALTER TABLE `multientry`
  ADD KEY `JobtitleCode` (`JobtitleCode`);

--
-- Indexes for table `programmer520240614115011`
--
ALTER TABLE `programmer520240614115011`
  ADD KEY `APPLICANTSid` (`APPLICANTSid`);

--
-- Indexes for table `recruitmentdetails`
--
ALTER TABLE `recruitmentdetails`
  ADD PRIMARY KEY (`JobtitleCode`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `teacher320240614113340`
--
ALTER TABLE `teacher320240614113340`
  ADD KEY `APPLICANTSid` (`APPLICANTSid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `education_college`
--
ALTER TABLE `education_college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education_elementary`
--
ALTER TABLE `education_elementary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education_highschool`
--
ALTER TABLE `education_highschool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `1`
--
ALTER TABLE `1`
  ADD CONSTRAINT `1_ibfk_1` FOREIGN KEY (`notifierID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `2`
--
ALTER TABLE `2`
  ADD CONSTRAINT `2_ibfk_1` FOREIGN KEY (`notifierID`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `2_ibfk_2` FOREIGN KEY (`JobtitleCode`) REFERENCES `recruitmentdetails` (`JobtitleCode`) ON DELETE CASCADE;

--
-- Constraints for table `3`
--
ALTER TABLE `3`
  ADD CONSTRAINT `3_ibfk_1` FOREIGN KEY (`notifierID`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `3_ibfk_2` FOREIGN KEY (`JobtitleCode`) REFERENCES `recruitmentdetails` (`JobtitleCode`) ON DELETE CASCADE;

--
-- Constraints for table `4`
--
ALTER TABLE `4`
  ADD CONSTRAINT `4_ibfk_1` FOREIGN KEY (`notifierID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `5`
--
ALTER TABLE `5`
  ADD CONSTRAINT `5_ibfk_1` FOREIGN KEY (`notifierID`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `5_ibfk_2` FOREIGN KEY (`JobtitleCode`) REFERENCES `recruitmentdetails` (`JobtitleCode`) ON DELETE CASCADE;

--
-- Constraints for table `6`
--
ALTER TABLE `6`
  ADD CONSTRAINT `6_ibfk_1` FOREIGN KEY (`notifierID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `education_college`
--
ALTER TABLE `education_college`
  ADD CONSTRAINT `education_college_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `education_elementary`
--
ALTER TABLE `education_elementary`
  ADD CONSTRAINT `education_elementary_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `education_highschool`
--
ALTER TABLE `education_highschool`
  ADD CONSTRAINT `education_highschool_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `instructor1320240614083548`
--
ALTER TABLE `instructor1320240614083548`
  ADD CONSTRAINT `instructor1320240614083548_ibfk_1` FOREIGN KEY (`APPLICANTSid`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobttile1220240613225551`
--
ALTER TABLE `jobttile1220240613225551`
  ADD CONSTRAINT `jobttile1220240613225551_ibfk_1` FOREIGN KEY (`APPLICANTSid`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `multientry`
--
ALTER TABLE `multientry`
  ADD CONSTRAINT `multientry_ibfk_1` FOREIGN KEY (`JobtitleCode`) REFERENCES `recruitmentdetails` (`JobtitleCode`) ON DELETE CASCADE;

--
-- Constraints for table `programmer520240614115011`
--
ALTER TABLE `programmer520240614115011`
  ADD CONSTRAINT `programmer520240614115011_ibfk_1` FOREIGN KEY (`APPLICANTSid`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recruitmentdetails`
--
ALTER TABLE `recruitmentdetails`
  ADD CONSTRAINT `recruitmentdetails_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teacher320240614113340`
--
ALTER TABLE `teacher320240614113340`
  ADD CONSTRAINT `teacher320240614113340_ibfk_1` FOREIGN KEY (`APPLICANTSid`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
