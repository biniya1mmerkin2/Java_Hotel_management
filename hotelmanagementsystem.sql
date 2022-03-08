-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 11:33 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelmanagementsystem`
--  admin username: admin
-- admin password: admin

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `FName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `FName`, `LastName`, `email`, `country`, `Address`, `phone`) VALUES
(1, 'biniyam', 'mano', 'bini@yahoo.com', 'Ethiopia', 'addis abeba', 'addis abeba'),
(2, 'biniyam', 'yo', 'Mengste', '0916395283', 'butajra', 'mis@gmail.com'),
(3, 'biniyam', 'merkin', 'biniyam@gmail.com', '0937462656', 'addis abeba', 'Ethiopia'),
(4, 'markos', 'mulatu', 'mak@yahoo.com', 'addis abeba', 'America', '0910525678');

-- --------------------------------------------------------

--
-- Table structure for table `roominfo`
--

CREATE TABLE `roominfo` (
  `RoomNo` varchar(10) NOT NULL,
  `RoomType` varchar(40) DEFAULT NULL,
  `Bed` varchar(40) DEFAULT NULL,
  `Ac` varchar(40) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `States` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roominfos`
--

CREATE TABLE `roominfos` (
  `RoomNo` varchar(10) NOT NULL,
  `RoomType` varchar(40) DEFAULT NULL,
  `Ac` varchar(40) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `States` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roominfos`
--

INSERT INTO `roominfos` (`RoomNo`, `RoomType`, `Ac`, `price`, `States`) VALUES
('r03', 'Suite ', 'With Ac', 500, 'NotBooked'),
('ro1', 'Suite ', 'With Ac', 800, 'NotBooked'),
('ro2', 'Studio', 'With Ac', 500, 'NotBooked'),
('ro3', 'Suite ', 'Without Ac', 600, 'NotBooked');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `RoomNo` varchar(10) DEFAULT NULL,
  `RoomType` varchar(40) DEFAULT NULL,
  `Ac` varchar(40) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `States` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`RoomNo`, `RoomType`, `Ac`, `price`, `States`) VALUES
('ro1', 'Suite ', 'Without Ac', 800, 'NotBooked'),
('ro2', 'Studio', 'Without Ac', 700, 'NotBooked'),
('ro3', 'King Superior', 'With Ac', 1200, 'NotBooked'),
('ro4', 'Twin Standard', 'With Ac', 1200, 'NotBooked'),
('ro5', 'Suite ', 'With Ac', 1250, 'NotBooked');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `securityQuestion` varchar(500) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `states` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `password`, `securityQuestion`, `answer`, `address`, `states`) VALUES
('biniyam merkin', 'biniyam@gmail.com', '12', 'Your Number?', '7', 'addis abeba', 'true'),
('Misker Mengeste', 'misker@gmail.com', '123456', 'Your favorite Color?', 'black', 'butajira', 'false'),
('misker mengste', 'misker@gmail.com', '1234', 'Your Number?', '27', 'butajira', 'true'),
('beka', 'beki@gmail.com', '12345', 'Your favorite Color?', 'yellow', 'addis abeba', 'false'),
('misael', 'misael@gmail.com', '123', 'Your favorite Color?', 'yellow', 'arba minch', 'false'),
('nati', 'nati@yahoo.com', '12345', 'Your favorite Color?', 'yellow', 'addis abeba', 'false'),
('mekael anglo', 'mik@gmail.com', '1234567', 'Your favorite Color?', 'yellow', 'addis abeba', 'false'),
('Bini', 'biniyam@gmail.com', '123', 'Your favorite Color?', 'yellow', 'addis', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL,
  `FName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `checkIn` varchar(30) DEFAULT NULL,
  `checkOut` varchar(30) DEFAULT NULL,
  `Room` int(11) DEFAULT NULL,
  `NoofdaysStay` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `FName`, `LastName`, `email`, `country`, `Address`, `phone`, `checkIn`, `checkOut`, `Room`, `NoofdaysStay`) VALUES
(5, 'biniyam', 'merkin', 'biniyam@gmail.com', 'Ethiopia', 'addis abeba', '0937462656', '2021/03/01', '2021/03/01', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userinfodetail`
--

CREATE TABLE `userinfodetail` (
  `id` int(11) NOT NULL,
  `Fname` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL,
  `CheckIn` date DEFAULT NULL,
  `CheckOut` date DEFAULT NULL,
  `Room` int(11) DEFAULT NULL,
  `NoOfDayStay` mediumtext DEFAULT NULL,
  `totalroomcharge` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfodetail`
--

INSERT INTO `userinfodetail` (`id`, `Fname`, `LastName`, `Email`, `Country`, `Address`, `Phone`, `CheckIn`, `CheckOut`, `Room`, `NoOfDayStay`, `totalroomcharge`) VALUES
(1, 'biniyam', 'merkin', 'biniyam@gmail.com', 'Ethiopia', 'addis abeba', '0937462656', '2021-04-01', '2021-04-02', 1, '1', 940),
(2, 'zelalem', 'moges', 'zola@yahoo.com', 'Ethiopia', 'addis abeba', '0937462656', '2021-04-30', '2021-04-30', 1, '1', 1040),
(4, 'biniyam ', 'Mola', 'Bini@gmail.com', 'America', 'addis abeba', '0937454323', '2021-08-13', '2021-08-13', 2, '1', 2700);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roominfo`
--
ALTER TABLE `roominfo`
  ADD PRIMARY KEY (`RoomNo`);

--
-- Indexes for table `roominfos`
--
ALTER TABLE `roominfos`
  ADD PRIMARY KEY (`RoomNo`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfodetail`
--
ALTER TABLE `userinfodetail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userinfodetail`
--
ALTER TABLE `userinfodetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
