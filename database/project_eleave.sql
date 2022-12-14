-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 14, 2022 at 12:03 PM
-- Server version: 5.7.36
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_eleave`
--

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

DROP TABLE IF EXISTS `department_list`;
CREATE TABLE IF NOT EXISTS `department_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `date_created`, `date_updated`) VALUES
(1, 'HR Department', 'Human Resource Department', '2021-08-21 10:13:45', NULL),
(2, 'IT Department', 'Information Technology Department', '2021-08-21 10:16:06', '2022-12-14 19:41:11'),
(3, 'Accounting & Finance Dept', 'Accounting and Finance Department', '2021-08-21 10:18:00', '2022-12-14 19:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `designation_list`
--

DROP TABLE IF EXISTS `designation_list`;
CREATE TABLE IF NOT EXISTS `designation_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designation_list`
--

INSERT INTO `designation_list` (`id`, `name`, `description`, `date_created`, `date_updated`) VALUES
(1, 'Staff', 'Office Clerk', '2021-08-21 10:22:03', NULL),
(2, 'Programmer', 'Programmer', '2021-08-21 10:22:35', NULL),
(3, 'Web Developer', 'Web Developer', '2021-08-21 10:22:52', NULL),
(4, 'HR Staff', 'Human Resource Staff', '2021-08-21 10:23:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_meta`
--

DROP TABLE IF EXISTS `employee_meta`;
CREATE TABLE IF NOT EXISTS `employee_meta` (
  `user_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_meta`
--

INSERT INTO `employee_meta` (`user_id`, `meta_field`, `meta_value`, `date_created`) VALUES
(12, 'type', '3', '2022-12-14 19:38:03'),
(12, 'employee_id', '1001', '2022-12-14 19:38:03'),
(12, 'firstname', 'Abu ', '2022-12-14 19:38:03'),
(12, 'middlename', 'Bin', '2022-12-14 19:38:03'),
(12, 'lastname', 'Bakar', '2022-12-14 19:38:03'),
(12, 'dob', '2022-12-15', '2022-12-14 19:38:03'),
(12, 'contact', '0131231234', '2022-12-14 19:38:03'),
(12, 'address', '88, Jalan Zomba 1, Kampung Pisang, 81200, Johor Bahru, Johor.', '2022-12-14 19:38:03'),
(12, 'department_id', '2', '2022-12-14 19:38:03'),
(12, 'designation_id', '3', '2022-12-14 19:38:03'),
(12, 'username', 'abubakar', '2022-12-14 19:38:03'),
(12, 'approver', 'off', '2022-12-14 19:38:03'),
(13, 'type', '3', '2022-12-14 19:42:55'),
(13, 'employee_id', '1002', '2022-12-14 19:42:55'),
(13, 'firstname', 'Siti', '2022-12-14 19:42:55'),
(13, 'middlename', 'Binti', '2022-12-14 19:42:55'),
(13, 'lastname', 'Mahfuzah', '2022-12-14 19:42:55'),
(13, 'dob', '1993-01-15', '2022-12-14 19:42:55'),
(13, 'contact', '0141234568', '2022-12-14 19:42:55'),
(13, 'address', 'No 5, Jalan Bukit Meldrum, Tanjung Puteri, 80300 Johor Bahru, Johor, Malaysia', '2022-12-14 19:42:55'),
(13, 'department_id', '1', '2022-12-14 19:42:55'),
(13, 'designation_id', '4', '2022-12-14 19:42:55'),
(13, 'username', 'siti', '2022-12-14 19:42:55'),
(13, 'approver', 'off', '2022-12-14 19:42:55'),
(14, 'type', '3', '2022-12-14 19:48:42'),
(14, 'employee_id', '1003', '2022-12-14 19:48:42'),
(14, 'firstname', 'Ahmad', '2022-12-14 19:48:42'),
(14, 'middlename', 'Bin', '2022-12-14 19:48:42'),
(14, 'lastname', 'Ali', '2022-12-14 19:48:42'),
(14, 'dob', '1993-03-14', '2022-12-14 19:48:42'),
(14, 'contact', '0121238478', '2022-12-14 19:48:42'),
(14, 'address', '14A, JALAN JARUM TARUM, TAMAN ABAD\r\n80250 JOHOR BAHRU, JOHOR', '2022-12-14 19:48:42'),
(14, 'department_id', '2', '2022-12-14 19:48:42'),
(14, 'designation_id', '2', '2022-12-14 19:48:42'),
(14, 'username', 'ahmad', '2022-12-14 19:48:42'),
(14, 'approver', 'off', '2022-12-14 19:48:42'),
(14, 'leave_type_ids', '1,2,3', '2022-12-14 19:48:51'),
(14, 'leave_type_credits', '{\"1\":\"12\",\"2\":\"5\",\"3\":\"999\"}', '2022-12-14 19:48:51'),
(15, 'type', '3', '2022-12-14 19:57:27'),
(15, 'employee_id', '5488', '2022-12-14 19:57:27'),
(15, 'firstname', 'Bunga ', '2022-12-14 19:57:27'),
(15, 'middlename', 'Citra', '2022-12-14 19:57:27'),
(15, 'lastname', 'Lestari', '2022-12-14 19:57:27'),
(15, 'dob', '1999-02-06', '2022-12-14 19:57:27'),
(15, 'contact', '0187858591', '2022-12-14 19:57:27'),
(15, 'address', '98, Jalan Angsana', '2022-12-14 19:57:27'),
(15, 'department_id', '2', '2022-12-14 19:57:27'),
(15, 'designation_id', '2', '2022-12-14 19:57:27'),
(15, 'username', 'bunga', '2022-12-14 19:57:27'),
(15, 'approver', 'off', '2022-12-14 19:57:27'),
(15, 'leave_type_ids', '1,2,3', '2022-12-14 19:58:38'),
(15, 'leave_type_credits', '{\"1\":\"12\",\"2\":\"5\",\"3\":\"30\"}', '2022-12-14 19:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

DROP TABLE IF EXISTS `leave_applications`;
CREATE TABLE IF NOT EXISTS `leave_applications` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `user_id` int(30) NOT NULL,
  `leave_type_id` int(30) DEFAULT NULL,
  `reason` text NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `type` tinyint(1) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=pending,1=approved, 2=denied,3=cancelled',
  `approved_by` int(30) DEFAULT NULL,
  `leave_days` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `leave_type_id` (`leave_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

DROP TABLE IF EXISTS `leave_types`;
CREATE TABLE IF NOT EXISTS `leave_types` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `default_credit` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `code`, `name`, `description`, `default_credit`, `status`, `date_created`, `date_updated`) VALUES
(1, 'AL', 'Annual Leave', 'Leave without deduct salary', 12, 1, '2021-08-21 10:39:47', '2022-12-14 19:40:04'),
(2, 'SL', 'Sick Leave', 'Leave type for calling sick with pay', 5, 1, '2021-08-21 13:48:03', NULL),
(3, 'UL', 'Unpaid Leave', 'Leave that deduct salary', 999, 1, '2021-08-21 13:49:08', '2022-12-14 19:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

DROP TABLE IF EXISTS `system_info`;
CREATE TABLE IF NOT EXISTS `system_info` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'eLeave Management System'),
(6, 'short_name', 'eLeave'),
(11, 'logo', 'uploads/1671017520_Capture.PNG'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1671017520_akson-1K8pIbIrhkQ-unsplash-min.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(250) NOT NULL,
  `middlename` varchar(250) DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-08-21 12:48:19'),
(12, 'Abu ', 'Bin', 'Bakar', 'abubakar', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/12_user.png', NULL, 3, '2022-12-14 19:38:03', '2022-12-14 19:46:23'),
(13, 'Siti', 'Binti', 'Mahfuzah', 'siti', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/13_user.png', NULL, 3, '2022-12-14 19:42:55', '2022-12-14 19:46:08'),
(14, 'Ahmad', 'Bin', 'Ali', 'ahmad', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/14_user.png', NULL, 3, '2022-12-14 19:48:42', '2022-12-14 19:52:06'),
(15, 'Bunga ', 'Citra', 'Lestari', 'bunga', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/15_user.png', NULL, 3, '2022-12-14 19:57:27', '2022-12-14 19:57:27');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_meta`
--
ALTER TABLE `employee_meta`
  ADD CONSTRAINT `employee_meta_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD CONSTRAINT `leave_applications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `leave_applications_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
