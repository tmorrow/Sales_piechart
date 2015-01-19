-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2015 at 12:24 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_users`
--

CREATE TABLE IF NOT EXISTS `auth_users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_users`
--

INSERT INTO `auth_users` (`username`, `password`, `f_name`, `l_name`, `id`) VALUES
('tmorrow', '*D37C49F9CBEFBF8B6F4B165AC703AA271E079004', 'Taylor', 'Morrow', 1);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `startdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`firstname`, `lastname`, `email`, `password`, `age`, `gender`, `startdate`) VALUES
('Taylor', 'Morrow', 'taylormorrow93@gmail.com', '*D37C49F9CBEFBF8B6F4B165AC703AA271E079004', 21, 'Male', '2014-10-16'),
('', '', '', '', 0, '', '2014-10-16'),
('Bob', 'Dole', 'bdole@gmail.com', '*D37C49F9CBEFBF8B6F4B165AC703AA271E079004', 24, 'male', '2014-10-17'),
('Mike', 'Dupree', 'mdupree@gmail.com', '*D37C49F9CBEFBF8B6F4B165AC703AA271E079004', 23, 'male', '2014-10-17');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `year` varchar(4) NOT NULL,
  `q1` double NOT NULL,
  `q2` double NOT NULL,
  `q3` double NOT NULL,
  `q4` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`year`, `q1`, `q2`, `q3`, `q4`) VALUES
('2013', 132.54, 108.67, 90.89, 124.92),
('2012', 126.88, 109.95, 91.12, 123.68),
('2011', 127.24, 106.54, 88.04, 120.89);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE IF NOT EXISTS `subscribers` (
  `email` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`email`, `id`) VALUES
('taylormorrow93@gmail.com', 17);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
