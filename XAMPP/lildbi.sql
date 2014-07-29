-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2014 at 01:01 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lildbi`
--

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE IF NOT EXISTS `configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`id`, `name`, `value`) VALUES
(3, 'Trabajo', 'INFOMED'),
(4, 'Nombre', 'Fidel'),
(5, 'Maintenance', '0');

-- --------------------------------------------------------

--
-- Table structure for table `online_users`
--

CREATE TABLE IF NOT EXISTS `online_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `current_rol` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `online_users`
--

INSERT INTO `online_users` (`id`, `ip`, `user_id`, `username`, `current_rol`, `date`) VALUES
(108, '::1', 6, 'fsantana', 'Administrador', '2014-01-09 00:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `rols`
--

CREATE TABLE IF NOT EXISTS `rols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `rols`
--

INSERT INTO `rols` (`id`, `name`, `created`, `modified`) VALUES
(8, 'Administrador', '2013-02-09 18:17:07', '2013-02-09 18:17:07'),
(9, 'Editor', '2013-02-09 18:17:15', '2013-08-14 17:34:45'),
(10, 'Documentalista', '2013-02-09 18:17:26', '2013-02-09 18:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `rols_users`
--

CREATE TABLE IF NOT EXISTS `rols_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `rols_users`
--

INSERT INTO `rols_users` (`id`, `rol_id`, `user_id`) VALUES
(11, 9, 6),
(12, 8, 6),
(13, 10, 6),
(14, 8, 9),
(16, 8, 11),
(17, 8, 12),
(19, 10, 14),
(20, 8, 15),
(22, 8, 16),
(23, 10, 16),
(25, 10, 17),
(26, 8, 18),
(27, 9, 18),
(28, 10, 18),
(29, 9, 17),
(31, 10, 19),
(32, 8, 17);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `initials` varchar(10) NOT NULL,
  `center_code` varchar(10) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` char(40) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `initials`, `center_code`, `email`, `password`, `created`, `modified`) VALUES
(6, 'Fidel', 'fsantana', 'FSM', 'CU.1', 'fsantana@infomed.sld.cu', 'c730488255572f1c653ed8d6a1adbf783cc3a4ea', '2013-02-09 20:17:03', '2013-02-11 03:57:59'),
(17, 'LuisA', 'luisalberto', 'LA', 'CU.2', 'luis@gmail.com', 'c730488255572f1c653ed8d6a1adbf783cc3a4ea', '2013-02-11 03:47:17', '2013-10-03 02:00:30'),
(18, 'Carlos', 'carloernesto', 'CE', 'CU.54', 'carlosernesto@gmail.com', '6c1fa1a4732ed6affe3e26b8a5092908920ce2ed', '2013-02-11 03:59:28', '2013-02-11 04:36:12'),
(19, 'Toni', 'locurin', 'T', 'CU', 'toni@infomed.sld.cu', 'c730488255572f1c653ed8d6a1adbf783cc3a4ea', '2013-09-12 22:08:51', '2013-09-17 03:30:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
