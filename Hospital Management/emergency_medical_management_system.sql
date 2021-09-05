-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2020 at 07:53 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `emergency_medical_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admitpatient_room`
--

CREATE TABLE IF NOT EXISTS `admitpatient_room` (
  `PatientID` int(10) NOT NULL,
  `Disease` varchar(50) DEFAULT NULL,
  `AdmitDate` date DEFAULT NULL,
  `RoomNo` int(5) NOT NULL,
  `DoctorID` int(10) NOT NULL,
  `AP_Remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PatientID`),
  KEY `RoomNo` (`RoomNo`),
  KEY `DoctorID` (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admitpatient_room`
--

INSERT INTO `admitpatient_room` (`PatientID`, `Disease`, `AdmitDate`, `RoomNo`, `DoctorID`, `AP_Remarks`) VALUES
(152, 'Arm fracture', '2020-11-12', 102, 403, 'Total Fracture of Arm Bone, Hairline Fracture in Thigh Bone'),
(201, 'Cardiac Block', '2020-12-01', 101, 36, 'Cardiac Patient ');

-- --------------------------------------------------------

--
-- Table structure for table `bill_room`
--

CREATE TABLE IF NOT EXISTS `bill_room` (
  `DischargeID` int(5) DEFAULT NULL,
  `BillingDate` date DEFAULT NULL,
  `RoomCharges` int(10) DEFAULT NULL,
  `ServiceCharges` int(10) DEFAULT NULL,
  `PaymentMode` varchar(20) DEFAULT NULL,
  `PaymentModeDetails` varchar(100) DEFAULT NULL,
  `TotalCharges` int(10) DEFAULT NULL,
  `NoOfDays` int(5) DEFAULT NULL,
  `TotalRoomCharges` int(10) DEFAULT NULL,
  `BillNo` varchar(15) NOT NULL,
  PRIMARY KEY (`BillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_room`
--

INSERT INTO `bill_room` (`DischargeID`, `BillingDate`, `RoomCharges`, `ServiceCharges`, `PaymentMode`, `PaymentModeDetails`, `TotalCharges`, `NoOfDays`, `TotalRoomCharges`, `BillNo`) VALUES
(152, '2020-11-25', 7500, 4000, 'by Credit Card', '123456789011', 101500, 13, 97500, '');

-- --------------------------------------------------------

--
-- Table structure for table `dischargepatient_room`
--

CREATE TABLE IF NOT EXISTS `dischargepatient_room` (
  `AdmitID` int(20) DEFAULT NULL,
  `DischargeDate` date DEFAULT NULL,
  `DP_Remarks` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dischargepatient_room`
--

INSERT INTO `dischargepatient_room` (`AdmitID`, `DischargeDate`, `DP_Remarks`) VALUES
(152, '2020-11-25', 'patient need minimum 3 months rest from heavy work');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `DoctorID` int(10) NOT NULL,
  `DoctorName` varchar(20) DEFAULT NULL,
  `FatherName` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `ContacNo` varchar(15) DEFAULT NULL,
  `Qualifications` varchar(50) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `BloodGroup` varchar(5) DEFAULT NULL,
  `DateOfJoining` date DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorID`, `DoctorName`, `FatherName`, `Email`, `ContacNo`, `Qualifications`, `Gender`, `BloodGroup`, `DateOfJoining`, `Address`) VALUES
(36, 'Dr. Kriti Gupta', 'Rohit Gupta', 'kriti.g@gmail.com', '+919853264750', 'Cario Specialist', 'F', 'O-', '2018-02-04', '35-Kalini, KAstruba Talklies, Malad, Mumbai'),
(403, 'Dr. Ramesh Singh', 'Deepak Singh', 'rameshsingh482@gmail.com', '+917844852404', 'Specialization in Human Skeleton', 'M', 'A-', '2017-03-15', 'A/56-Divine, SV Road, Borivali, Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `patientregistration`
--

CREATE TABLE IF NOT EXISTS `patientregistration` (
  `PatientID` int(10) NOT NULL,
  `PatientName` varchar(20) DEFAULT NULL,
  `FatherName` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `ContactNo` varchar(15) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Remarks` varchar(100) DEFAULT NULL,
  `Gen` varchar(1) DEFAULT NULL,
  `BG` varchar(3) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientregistration`
--

INSERT INTO `patientregistration` (`PatientID`, `PatientName`, `FatherName`, `Email`, `ContactNo`, `Age`, `Remarks`, `Gen`, `BG`, `Address`) VALUES
(152, 'Chris D''souza', 'Ruben D''souza', 'chris1245@gmail.com', '+918314828254', 30, 'Arm fracture in road accident', 'M', 'B+', '1503-raheja, shanti road, goregaon, mumbai'),
(201, 'Riya Chaudhri', 'Kartik Chaudhri', 'riya.c@gmail.com', '+918648547210', 50, 'Heart Attack', 'F', 'A-', '83-Rohini, Shivaji Park, Dadar, Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `name` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `user_name`, `password`, `email_id`, `contact_no`) VALUES
('Chris D''souza', 'chrishd123', 'chr!5678', 'chris1245@gmail.com', '+918314828254'),
('SEIT', 'SEIT', '123456', 'seit@gmail.com', '9825831456');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `RoomNo` int(5) NOT NULL,
  `RoomType` varchar(20) DEFAULT NULL,
  `RoomCharges` int(10) DEFAULT NULL,
  `RoomStatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`RoomNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomNo`, `RoomType`, `RoomCharges`, `RoomStatus`) VALUES
(101, 'General', 5000, 'Booked'),
(102, 'GeneralAC', 7500, 'Vacant'),
(201, 'ICU', 15000, 'full'),
(202, 'ICU', 15000, 'vacant'),
(301, 'Ventilator', 20000, 'vacant'),
(302, 'Deluxe', 10000, 'Vacant');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `ServiceName` varchar(20) DEFAULT NULL,
  `ServiceDate` date DEFAULT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `ServiceCharges` int(10) DEFAULT NULL,
  `ServiceID` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ServiceID`),
  KEY `PatientID` (`PatientID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=453 ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ServiceName`, `ServiceDate`, `PatientID`, `ServiceCharges`, `ServiceID`) VALUES
('X-ray', '2020-11-12', 152, 4000, 451),
('Cardio Therapy', '2020-12-01', 201, 7000, 452);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_name`, `password`) VALUES
('frason', '123456'),
('krishna', '123456'),
('prathamesh', '123456'),
('SEIT', '123abc'),
('shubham', '123456');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  ADD CONSTRAINT `admitpatient_room_ibfk_1` FOREIGN KEY (`RoomNo`) REFERENCES `room` (`RoomNo`),
  ADD CONSTRAINT `admitpatient_room_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patientregistration` (`PatientID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
