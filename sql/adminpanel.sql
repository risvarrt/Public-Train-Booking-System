-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 12:56 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `struts`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel`
--

CREATE TABLE `adminpanel` (
  `aid` int(11) NOT NULL,
  `trainid` varchar(100) NOT NULL,
  `action` varchar(255) NOT NULL,
  `points` varchar(255) NOT NULL,
  `email` tinyint(1) NOT NULL,
  `message` tinyint(1) NOT NULL,
  `phone` tinyint(1) NOT NULL,
  `etitle` varchar(255) NOT NULL,
  `emessage` varchar(255) NOT NULL,
  `ctitle` varchar(255) NOT NULL,
  `cmessage` varchar(255) NOT NULL,
  `mtitle` varchar(255) NOT NULL,
  `mmessage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminpanel`
--

INSERT INTO `adminpanel` (`aid`, `trainid`, `action`, `points`, `email`, `message`, `phone`, `etitle`, `emessage`, `ctitle`, `cmessage`, `mtitle`, `mmessage`) VALUES
(28, 'tr2', 'buy', '100-400', 0, 1, 0, '', '', '', '', 'Ticket Purchased', 'messaging'),
(33, 'tr1', 'buy', '300-500', 1, 1, 0, 'Ticket Purchased', 'mailing', '', '', 'Ticket Purchased', 'mesaging'),
(34, 'tr1', 'buy', '200-400', 0, 1, 1, '', '', 'Ticket Purchased', 'CALING', 'Ticket Purchased', 'MESSAGING'),
(39, 'tr1', 'buy', '1-111', 0, 1, 1, '', '', 'Ticket Purchased', 'Callin for confirmation', 'Ticket Purchased', 'Messaging for Ticket Confirmation');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminpanel`
--
ALTER TABLE `adminpanel`
  ADD PRIMARY KEY (`aid`),
  ADD UNIQUE KEY `points` (`points`),
  ADD UNIQUE KEY `pointsrange` (`points`,`trainid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminpanel`
--
ALTER TABLE `adminpanel`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
