-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2021 at 05:56 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modern medical services`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentid` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `doctor_name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `Cpass` varchar(100) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `visiting_date` varchar(100) NOT NULL,
  `visiting_time` varchar(100) NOT NULL,
  `visiting_hospital` varchar(255) NOT NULL,
  `catagory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentid`, `name`, `phone_number`, `doctor_name`, `username`, `pass`, `Cpass`, `gender`, `dob`, `visiting_date`, `visiting_time`, `visiting_hospital`, `catagory`) VALUES
(9, 'Mazharul Islam', '01537139438', 'sojoy boss', 'sojoy sagor ', '1234', '1234', 'Male', '2021-12-28', '2022-01-05', '03:15', 'Dhaka hospital', 'doctor'),
(15, 'Mazharul Islam', '01537139438', '', '', '', '', '', '', '', '', '', ''),
(16, 'emon boss', '01537139437', '', '', '', '', '', '', '', '', '', ''),
(17, 'Mazharul Islam', '01537139438', '', '', '', '', '', '', '', '', '', ''),
(18, 'Mazharul Islam', '01537139438', '', '', '', '', '', '', '', '', '', ''),
(19, 'Mazharul Islam', '01537139438', '', '', '', '', '', '', '', '', '', ''),
(20, 'Mazharul Islam', '01537139438', 'Md. Touhidduzaman sagor ', '', '', '', '', '', '', '', '', ''),
(21, 'Mazharul Islam', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', '', '', '', '', '', ''),
(23, 'sujoy boss', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-22', '2021-12-23', '22:20', 'Dhaka medical collage Hospital', 'doctor'),
(24, 'sojoy boss', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-21', '2021-12-28', '22:26', 'Dhaka medical collage Hospital', 'doctor'),
(25, 'Mazharul Islam', '01537139438', 'sojoy boss', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-29', '2021-12-29', '22:33', 'Dhaka medical collage Hospital', 'doctor'),
(31, 'Mazharul Islam', '01537139438', 'sojoy boss', 'xcj1 boss', '1234', '1234', 'Male', '2022-01-04', '2021-12-21', '23:22', 'Dhaka medical Hospital', 'doctor'),
(32, 'Mazharul Islam', '01537139438', 'sojoy boss', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-29', '2021-12-30', '23:24', 'Dhaka medical collage Hospital', 'doctor'),
(33, 'Islam', '01720405060', 'sojoy boss', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-28', '2021-12-22', '23:25', 'Dhaka medical collage Hospital', 'doctor'),
(34, 'Mazharul Islam', '01537139438', 'sojoy boss', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-16', '2021-12-22', '23:31', 'Dhaka medical collage Hospital', 'doctor'),
(39, 'sagor', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-26', '2021-12-28', '23:44', 'Dhaka medical collage Hospital', 'doctor'),
(40, 'Mazharul Islam', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-28', '2021-12-21', '23:51', 'Dhaka medical collage Hospital', 'doctor'),
(41, 'Mazharul Islam', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', '', '2021-12-30', '2021-12-30', '23:58', 'Dhaka medical collage Hospital', 'doctor'),
(42, 'Mazharul Islam', '01537139438', 'sojoy boss', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-22', '2021-12-22', '14:55', 'Dhaka medical collage Hospital', 'doctor'),
(44, 'Mazharul Islam', '01537139438', 'Md. Touhidduzaman sagor ', 'its testing', '1234', '1234', 'Male', '2021-12-29', '2021-12-30', '00:34', 'Dhaka medical collage Hospital', 'doctor'),
(45, 'Mazharul Islam', '01537139438', 'sojoy boss', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-29', '2021-12-21', '00:35', 'Dhaka medical collage Hospital', 'doctor'),
(46, 'Mazharul Islam', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-29', '2021-12-21', '00:38', 'Dhaka medical collage Hospital', 'doctor'),
(47, 'Mazharul Islam', '01537139438', 'sojoy boss', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-28', '2021-12-20', '03:35', 'Dhaka medical collage Hospital', 'doctor'),
(48, 'Mazharul Islam', '01537139438', 'sojoy boss', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-28', '2021-12-28', '00:45', 'Dhaka medical collage Hospital', 'doctor'),
(49, 'Mazharul Islam', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', 'Male', '2022-01-05', '2021-12-29', '10:12', 'Dhaka medical collage Hospital', 'doctor'),
(50, 'Mazharul Islam', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-28', '2021-12-23', '10:17', 'Dhaka medical collage Hospital', 'doctor'),
(51, 'Islam', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-22', '2021-12-15', '10:20', 'Dhaka medical collage Hospital', 'doctor'),
(52, 'Mazharul Islam', '01537139438', 'sojoy boss', 'its testing', '1234', '1234', 'Male', '2021-12-27', '2021-12-29', '03:30', 'Dhaka medical collage Hospital', 'doctor'),
(54, 'Mazharul Islam', '01537139438', 'sojoy boss', 'sojoy sagor ', '1234', '1234', 'Male', '2021-12-28', '2022-01-05', '03:15', 'Dhaka hospital', 'doctor');

-- --------------------------------------------------------

--
-- Table structure for table `approved_appointments`
--

CREATE TABLE `approved_appointments` (
  `approvedid` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `doctor_name` varchar(255) NOT NULL,
  `username` varchar(200) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `Cpass` varchar(255) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `visiting_date` varchar(50) NOT NULL,
  `visiting_time` varchar(50) NOT NULL,
  `visiting_hospital` varchar(255) NOT NULL,
  `catagory` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approved_appointments`
--

INSERT INTO `approved_appointments` (`approvedid`, `name`, `phone_number`, `doctor_name`, `username`, `pass`, `Cpass`, `gender`, `dob`, `visiting_date`, `visiting_time`, `visiting_hospital`, `catagory`) VALUES
(1, 'Mazharul Islam', '01537139438', 'sojoy boss', 'sojoy sagor ', '1234', '1234', 'Male', '2021-12-28', '2022-01-05', '03:15', 'Dhaka hospital', 'doctor'),
(2, 'sujoy boss', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-22', '2021-12-23', '22:20', 'Dhaka medical collage Hospital', 'doctor'),
(3, 'Islam', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-22', '2021-12-15', '10:20', 'Dhaka medical collage Hospital', 'doctor'),
(4, 'Islam', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-22', '2021-12-15', '10:20', 'Dhaka medical collage Hospital', 'doctor'),
(5, 'Islam', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-22', '2021-12-15', '10:20', 'Dhaka medical collage Hospital', 'doctor'),
(6, 'Mazharul Islam', '01537139438', 'sojoy boss', 'sojoy sagor ', '1234', '1234', 'Male', '2021-12-28', '2022-01-05', '03:15', 'Dhaka hospital', 'doctor'),
(7, 'Mazharul Islam', '01537139438', 'sojoy boss', 'sojoy sagor ', '1234', '1234', 'Male', '2021-12-28', '2022-01-05', '03:15', 'Dhaka hospital', 'doctor'),
(8, 'Mazharul Islam', '01537139438', 'sojoy boss', 'sojoy sagor ', '1234', '1234', 'Male', '2021-12-28', '2022-01-05', '03:15', 'Dhaka hospital', 'doctor'),
(9, 'Mazharul Islam', '01537139438', 'sojoy boss', 'sojoy sagor ', '1234', '1234', 'Male', '2021-12-28', '2022-01-05', '03:15', 'Dhaka hospital', 'doctor'),
(10, 'Mazharul Islam', '01537139438', 'sojoy boss', 'sojoy sagor ', '1234', '1234', 'Male', '2021-12-28', '2022-01-05', '03:15', 'Dhaka hospital', 'doctor'),
(11, 'Mazharul Islam', '01537139438', 'sojoy boss', 'sojoy sagor ', '1234', '1234', 'Male', '2021-12-28', '2022-01-05', '03:15', 'Dhaka hospital', 'doctor'),
(12, 'Mazharul Islam', '01537139438', 'sojoy boss', 'sojoy sagor ', '1234', '1234', 'Male', '2021-12-28', '2022-01-05', '03:15', 'Dhaka hospital', 'doctor'),
(13, 'Mazharul Islam', '01537139438', 'sojoy boss', 'sojoy sagor ', '1234', '1234', 'Male', '2021-12-28', '2022-01-05', '03:15', 'Dhaka hospital', 'doctor'),
(14, 'Islam', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-22', '2021-12-15', '10:20', 'Dhaka medical collage Hospital', 'doctor'),
(15, 'sojoy boss', '01537139438', 'Md. Touhidduzaman sagor ', 'xcj1 boss', '1234', '1234', 'Male', '2021-12-21', '2021-12-28', '22:26', 'Dhaka medical collage Hospital', 'doctor'),
(16, 'Mazharul Islam', '01537139438', 'sojoy boss', 'sojoy sagor ', '1234', '1234', 'Male', '2021-12-28', '2022-01-05', '03:15', 'Dhaka hospital', 'doctor');

-- --------------------------------------------------------

--
-- Table structure for table `approved_bookings`
--

CREATE TABLE `approved_bookings` (
  `bookings_id` int(10) NOT NULL,
  `hospital_name` varchar(65) NOT NULL,
  `hospital_address` varchar(110) NOT NULL,
  `hospital_availability` varchar(10) NOT NULL,
  `hospital_seat` int(15) NOT NULL,
  `hospital_vancancies` int(20) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `booked_seats` int(10) NOT NULL,
  `booking_date` int(10) NOT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `hospital_name` varchar(65) NOT NULL,
  `username` varchar(55) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `Cpass` varchar(40) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `visiting_date` int(15) NOT NULL,
  `catagory` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `name`, `phone_number`, `hospital_name`, `username`, `pass`, `Cpass`, `gender`, `dob`, `visiting_date`, `catagory`) VALUES
(1, 'sujoy boss', 1825646581, '', 'sujoy boss', 'botprom112', 'botprom112', 'Male', '1997-06-20', 2021, 'hospital'),
(2, 'abdullah ayash', 1989562678, 'mugdha medical', 'abdullah boss', 'botprom11245', 'botprom11245', 'Male', '1998-02-12', 2021, 'hospital');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `did` int(20) NOT NULL,
  `docid` varchar(35) NOT NULL,
  `dname` varchar(60) NOT NULL,
  `demail` varchar(60) NOT NULL,
  `ddegree` varchar(50) NOT NULL,
  `dusername` varchar(65) NOT NULL,
  `dpassword` varchar(70) NOT NULL,
  `dspec` varchar(75) NOT NULL,
  `dcomment` varchar(500) NOT NULL,
  `daddress` varchar(120) NOT NULL,
  `dphone` text NOT NULL,
  `dnationality` varchar(20) NOT NULL,
  `dnidno` text NOT NULL,
  `dgender` varchar(25) NOT NULL,
  `dblood_group` varchar(40) NOT NULL,
  `dimage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`did`, `docid`, `dname`, `demail`, `ddegree`, `dusername`, `dpassword`, `dspec`, `dcomment`, `daddress`, `dphone`, `dnationality`, `dnidno`, `dgender`, `dblood_group`, `dimage`) VALUES
(1, '1720981612', 'nurol islam', 'nurul@gmail.com', '', 'nurul islam', '#12345678', 'Neurology', '', 'dfdsffadsf', '1720405060', '', '0', 'Male', '', 'tushar.PNG'),
(8, '1720981610', 'ratan tata', 'mynameis.shimul@gmail.com', '', 'ratan tata', '#12345678', 'None', '', 'natore,rajshahi', '1537139438', '', '0', 'Male', '', ''),
(9, '1720981612', 'sojoy boss', 'aadc@gmail.com', '', 'sojoy boss', '!12345678#', 'Ear,nose and throat (ENT)', '', 'coxs bazar', '1537139437', '', '0', 'Male', 'None', '19-40128-1.PNG'),
(10, '01720981611', 'eva baby', 'xcjtushar@gmail.com', '', 'eva baby', '#123456789', 'Neurology', '', 'coxs bazar', '01720981611', '', '', 'Female', 'O+', '');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hid` int(40) NOT NULL,
  `hname` varchar(50) NOT NULL,
  `husername` varchar(65) NOT NULL,
  `hpassword` varchar(75) NOT NULL,
  `hemail` varchar(60) NOT NULL,
  `hlocation` varchar(120) NOT NULL,
  `hphone` int(11) NOT NULL,
  `hedate` date NOT NULL,
  `hosid` int(30) NOT NULL,
  `hicuseatno` int(30) NOT NULL,
  `hoswno` int(15) NOT NULL,
  `hosnoseat` int(20) NOT NULL,
  `hcabinno` int(20) NOT NULL,
  `hoxav` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hid`, `hname`, `husername`, `hpassword`, `hemail`, `hlocation`, `hphone`, `hedate`, `hosid`, `hicuseatno`, `hoswno`, `hosnoseat`, `hcabinno`, `hoxav`) VALUES
(1, 'Dhaka medical', 'dhaka medical', '@123dhaka4567', 'dhakamedical@gmail.com', 'Dhaka medical and hospital', 1714219973, '1998-01-12', 5465645, 44, 65, 1500, 75, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_vacancies`
--

CREATE TABLE `hospital_vacancies` (
  `vacancies_id` int(11) NOT NULL,
  `Hospital_name` varchar(30) NOT NULL,
  `Hospital_address` varchar(40) NOT NULL,
  `Hospital_availability` varchar(25) NOT NULL,
  `Hospital_seat` int(25) NOT NULL,
  `Hospital_vacancies` int(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `booked_seats` int(15) NOT NULL,
  `booking_date` date NOT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital_vacancies`
--

INSERT INTO `hospital_vacancies` (`vacancies_id`, `Hospital_name`, `Hospital_address`, `Hospital_availability`, `Hospital_seat`, `Hospital_vacancies`, `user_name`, `booked_seats`, `booking_date`, `phone_number`) VALUES
(2, 'Rajshahi medical', 'Rajshahi medical and hospital', 'Oxygen available', 2000, 300, 'tushar boss', 2, '2021-12-14', 1614219973);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Pid` int(11) NOT NULL,
  `Pname` varchar(40) NOT NULL,
  `Pemail` varchar(50) NOT NULL,
  `Pphone` int(11) NOT NULL,
  `Pdob` date NOT NULL,
  `Paddress` varchar(60) NOT NULL,
  `Pusername` varchar(45) NOT NULL,
  `Ppassword` varchar(42) NOT NULL,
  `Pgender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Pid`, `Pname`, `Pemail`, `Pphone`, `Pdob`, `Paddress`, `Pusername`, `Ppassword`, `Pgender`) VALUES
(1, 'sujoy das', 'sujoy@gmail.com', 1908462119, '1994-01-16', 'Birpur narsingdhi', 'Sujoy Das', '@12345678', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `sid` int(15) NOT NULL,
  `sname` varchar(40) NOT NULL,
  `semail` varchar(50) NOT NULL,
  `susername` varchar(40) NOT NULL,
  `spassword` varchar(45) NOT NULL,
  `sphone` text NOT NULL,
  `saddress` varchar(100) NOT NULL,
  `simage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`sid`, `sname`, `semail`, `susername`, `spassword`, `sphone`, `saddress`, `simage`) VALUES
(1, 'Emon Tushar', 'emon@gmail.com', 'emon tushar', '@#1234556788', '1515298367', 'khilkhet,Dhaka', ''),
(2, 'fer dicchi', 'fer@gmail.com', 'fer tushar', '12345678@#', '01515298367', 'Uttara Dhaka', 'pic.png'),
(3, 'emon emon', 'emon@gmail.cpm', 'emon emon', '12345678@#', '01515298367', 'nikunjo khilkhet', ''),
(4, 'just test', 'just@gmail.com', 'just test', '@#123456', '01515298367', 'Uttara Dhaka', ''),
(5, 'emon emon', 'emon@gmail.com', 'emon emon', '@#123456', '01717298367', 'Nikunjo, khilkhet', 'pic.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointmentid`);

--
-- Indexes for table `approved_appointments`
--
ALTER TABLE `approved_appointments`
  ADD PRIMARY KEY (`approvedid`);

--
-- Indexes for table `approved_bookings`
--
ALTER TABLE `approved_bookings`
  ADD PRIMARY KEY (`bookings_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `dusername` (`dusername`),
  ADD UNIQUE KEY `docid` (`docid`,`demail`,`dphone`,`dnidno`) USING HASH;

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hid`),
  ADD UNIQUE KEY `husername` (`husername`,`hemail`,`hphone`);

--
-- Indexes for table `hospital_vacancies`
--
ALTER TABLE `hospital_vacancies`
  ADD PRIMARY KEY (`vacancies_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Pid`),
  ADD UNIQUE KEY `pemail` (`Pemail`,`Pphone`,`Pusername`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `semail` (`semail`,`susername`,`sphone`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `approved_appointments`
--
ALTER TABLE `approved_appointments`
  MODIFY `approvedid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `approved_bookings`
--
ALTER TABLE `approved_bookings`
  MODIFY `bookings_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `did` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hid` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hospital_vacancies`
--
ALTER TABLE `hospital_vacancies`
  MODIFY `vacancies_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `Pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `sid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
