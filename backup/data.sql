-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2017 at 08:16 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_department`
--

CREATE TABLE `admin_department` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_model` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `serial` varchar(50) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `requestedby` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_department`
--

INSERT INTO `admin_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `requestedby`, `comment`, `Invoice_No`, `Location`) VALUES
(1, 'DSfa', 'safa', '3.00', 'default.gif', 0, 33, 0, 0, '2017-05-30', 'fasfasf', 'Admin Department', 'Admin', 'Managers Table', '', '', 'sfaa', 'Training Room');

-- --------------------------------------------------------

--
-- Table structure for table `admin_records_assets`
--

CREATE TABLE `admin_records_assets` (
  `Product_id` int(11) NOT NULL,
  `Product_name` varchar(100) NOT NULL,
  `Product_model` varchar(500) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Purchase_date` date NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_records_assets`
--

INSERT INTO `admin_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`) VALUES
(1, 'DSfa', 'safa', '3.00', 33, '2017-05-30', 'fasfasf', 'Admin Department', 'Admin', 'Managers Table', '2017-05-30', '', 'Training Room'),
(2, 'DSfa', 'safa', '3.00', 33, '2017-05-30', 'fasfasf', 'Admin Department', 'Admin', 'Managers Table', '2017-05-30', '', 'Training Room');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `branch_address` varchar(100) NOT NULL,
  `branch_contact` varchar(50) NOT NULL,
  `skin` varchar(15) NOT NULL,
  `user_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_address`, `branch_contact`, `skin`, `user_type`) VALUES
(1, 'IT Department', '29th Floor Robinson Summit Center Ayala Avenue Makati City', '551-1270', 'red', 'Admin'),
(2, 'HR Department', '29th Floor Robinson Summit Center Ayala Avenue Makati City', '551-2312', 'purple', 'User'),
(3, 'Finance Department', '29th Floor Robinson Summit Center Ayala Avenue Makati City', '551-8319', 'purple', 'User'),
(4, 'Sportsbook Department', '29th Floor Robinson Summit Center Ayala Avenue Makati City', '551-2341', 'yellow', 'User'),
(5, 'Marketing Department', '29th Floor Robinson Summit Center Ayala Avenue Makati City', '551-1241', 'green', 'User'),
(6, 'Production Department', '29th Floor Robinson Summit Center Ayala Avenue Makati City', '551-2414', 'blue', 'User'),
(7, 'CS Department', '29th Floor Robinson Summit Center Ayala Avenue Makati City', '551-2231', 'blue', 'User'),
(8, 'Admin Department', '29th Floor Robinson Summit Center Ayala Avenue Makati City', '551-2234', 'blue', 'User'),
(9, 'Sales Department', '29th Floor Robinson Summit Center Ayala Avenue Makati City', '551-2314', 'blue', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(30) NOT NULL,
  `branch_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `branch_name`) VALUES
(5, 'UPS', 'IT Department'),
(6, 'Speaker', 'IT Department'),
(7, 'Monitor', 'IT Department'),
(8, 'Laptop', 'IT Department'),
(9, 'RAM', 'IT Department'),
(10, 'Power Supply', 'IT Department'),
(11, 'Mouse', 'IT Department'),
(12, 'Keyboard', 'Sportsbook Department'),
(13, 'Mouse', 'Finance Department'),
(14, 'Switch', 'IT Department'),
(19, 'Security Bank2', 'Finance Department'),
(20, 'Game', 'CS Department'),
(21, 'Router', 'Production Department'),
(22, 'Lemonade', 'Production Department'),
(29, 'Books', 'Admin Department'),
(30, 'Pennn', 'HR Department'),
(31, 'fsFASFAS', 'HR Department'),
(32, 'Marketing1', 'Marketing Department'),
(33, 'Tools', 'IT Department'),
(34, 'Tables', 'Admin Department'),
(35, 'Managers Table', 'Admin Department'),
(36, 'Supervisor Table', 'Admin Department'),
(37, 'Sales Category', 'Sales Department');

-- --------------------------------------------------------

--
-- Table structure for table `cs_department`
--

CREATE TABLE `cs_department` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_model` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `serial` varchar(50) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `requestedby` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_department`
--

INSERT INTO `cs_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `requestedby`, `comment`, `Invoice_No`, `Location`) VALUES
(39, 'DSHS', 'GS', '34.00', 'Lighthouse.jpg', 0, 2432, 0, 0, '2017-04-21', 'DGSDS', 'CS Department', 'CS Supplier2', 'xxx', '', '', '01-001', 'Board Room'),
(41, 'hdshsh', 'dshsf', '4.00', 'default.gif', 0, 43, 0, 0, '2017-05-30', 'fhsh', 'CS Department', 'CS Supplier1', 'Game', '', '', 'sdhsf', 'Server Room');

-- --------------------------------------------------------

--
-- Table structure for table `cs_records_assets`
--

CREATE TABLE `cs_records_assets` (
  `Product_id` int(11) NOT NULL,
  `Product_name` varchar(100) NOT NULL,
  `Product_model` varchar(500) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Purchase_date` date NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_records_assets`
--

INSERT INTO `cs_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`) VALUES
(1, 'DSHS', 'GS', '34.00', 2432, '2017-04-21', 'DGSDS', 'CS Department', 'CS Supplier2', 'xxx', '2017-05-25', '', ''),
(2, 'DSHS', 'GS', '34.00', 2432, '2017-04-21', 'DGSDS', 'CS Department', 'CS Supplier2', 'xxx', '2017-05-26', '', ''),
(3, 'DSHS', 'GS', '34.00', 2432, '2017-04-21', 'DGSDS', 'CS Department', 'CS Supplier2', 'xxx', '2017-05-30', '', 'Board Room'),
(4, 'hdshsh', 'dshsf', '4.00', 43, '2017-05-30', 'fhsh', 'CS Department', 'CS Supplier1', 'Game', '2017-05-30', '', 'Server Room');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_first` varchar(50) NOT NULL,
  `cust_last` varchar(30) NOT NULL,
  `cust_address` varchar(100) NOT NULL,
  `cust_contact` varchar(30) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `cust_pic` varchar(300) NOT NULL,
  `bday` date NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `house_status` varchar(30) NOT NULL,
  `years` varchar(20) NOT NULL,
  `rent` varchar(10) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_no` varchar(30) NOT NULL,
  `emp_address` varchar(100) NOT NULL,
  `emp_year` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `salary` varchar(30) NOT NULL,
  `spouse` varchar(30) NOT NULL,
  `spouse_no` varchar(30) NOT NULL,
  `spouse_emp` varchar(50) NOT NULL,
  `spouse_details` varchar(100) NOT NULL,
  `spouse_income` decimal(10,2) NOT NULL,
  `comaker` varchar(30) NOT NULL,
  `comaker_details` varchar(100) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `credit_status` varchar(10) NOT NULL,
  `ci_remarks` varchar(1000) NOT NULL,
  `ci_name` varchar(50) NOT NULL,
  `ci_date` date NOT NULL,
  `payslip` int(11) NOT NULL,
  `valid_id` int(11) NOT NULL,
  `cert` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `income` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_first`, `cust_last`, `cust_address`, `cust_contact`, `balance`, `cust_pic`, `bday`, `nickname`, `house_status`, `years`, `rent`, `emp_name`, `emp_no`, `emp_address`, `emp_year`, `occupation`, `salary`, `spouse`, `spouse_no`, `spouse_emp`, `spouse_details`, `spouse_income`, `comaker`, `comaker_details`, `branch_id`, `credit_status`, `ci_remarks`, `ci_name`, `ci_date`, `payslip`, `valid_id`, `cert`, `cedula`, `income`) VALUES
(1, 'Kenneth', 'Aboy', 'Silay City\r\n', '09098', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(2, 'Honeylee', 'Magbanua', 'Brgy. Busay, bago CIty', '09051914070', '303.20', 'default.gif', '1989-10-14', 'lee', 'owned', '27', 'NA', 'Stratium Software', '034-707-1630', 'Ayala Northpoint', '1', 'Systems Administrator', '12000', 'NA', 'NA', 'NA', 'NA', '0.00', 'Kaye Angela Cueva', 'Cadiz City', 1, 'Approved', '', '', '0000-00-00', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `ID` int(10) NOT NULL,
  `Department_Name` varchar(50) NOT NULL,
  `Department_Contact` varchar(50) NOT NULL,
  `Department_address` varchar(100) NOT NULL,
  `skin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`ID`, `Department_Name`, `Department_Contact`, `Department_address`, `skin`) VALUES
(1, 'IT Department', '551-1609', '29th Floor Robinson Summit Center Ayala Avenue Makati City', 'red'),
(2, 'HRAD Department', '58654654', '29th Floor Robinson Summit Center Ayala Avenue Makati City', 'green'),
(3, 'Finance Department', '551-4564', '29th Floor Robinson Summit Center Ayala Avenue Makati City', 'violet');

-- --------------------------------------------------------

--
-- Table structure for table `finance_department`
--

CREATE TABLE `finance_department` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_model` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `serial` varchar(50) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `requestedby` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance_department`
--

INSERT INTO `finance_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `requestedby`, `comment`, `Invoice_No`, `Location`) VALUES
(2, 'hfdhdf', 'hfddfhd', '63434.00', 'default.gif', 0, 546, 0, 0, '2017-04-25', 'fhdhfsa', 'Finance Department', 'Security Bank', 'Mouse', '', '', '546754fafa', 'IT Room'),
(3, 'daga', 'gaga', '32.00', 'default.gif', 0, 23, 0, 0, '2017-05-30', 'sgadsg', 'Finance Department', 'Security Bank', 'Mouse', '', '', 'adgadg', 'Server Room');

-- --------------------------------------------------------

--
-- Table structure for table `finance_records_assets`
--

CREATE TABLE `finance_records_assets` (
  `Product_id` int(11) NOT NULL,
  `Product_name` varchar(100) NOT NULL,
  `Product_model` varchar(500) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Purchase_date` date NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance_records_assets`
--

INSERT INTO `finance_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`) VALUES
(1, 'hfdhdf', 'hfddfhd', '63434.00', 546, '2017-04-25', 'fhdhfsa', 'Finance Department', 'Security Bank', 'Security Bank2', '2017-05-24', '546754fafa', ''),
(2, 'hfdhdf', 'hfddfhd', '63434.00', 546, '2017-04-25', 'fhdhfsa', 'Finance Department', 'Security Bank', 'Security Bank2', '2017-05-25', '546754fafa', ''),
(3, 'hfdhdf', 'hfddfhd', '63434.00', 546, '2017-04-25', 'fhdhfsa', 'Finance Department', 'Security Bank', 'Mouse', '2017-05-26', '546754fafa', ''),
(4, 'hfdhdf', 'hfddfhd', '63434.00', 546, '2017-04-25', 'fhdhfsa', 'Finance Department', 'Security Bank', 'Mouse', '2017-05-30', '546754fafa', 'IT Room'),
(5, 'daga', 'gaga', '32.00', 23, '2017-05-30', 'sgadsg', 'Finance Department', 'Security Bank', 'Mouse', '2017-05-30', 'adgadg', 'Server Room');

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 1, 'added 5 of LG 43\" UHD TV UH6100', '2017-02-04 01:10:41'),
(2, 1, 'added 100 of Lotion', '2017-02-04 01:10:49'),
(3, 1, 'added 10 of Rice Cooker', '2017-02-04 01:10:55'),
(4, 1, 'added 5 of Samsung', '2017-02-04 01:11:07'),
(5, 1, 'has logged in the system at ', '2017-02-04 08:22:52'),
(6, 1, 'has logged in the system at ', '2017-02-04 08:51:11'),
(7, 1, 'has logged in the system at ', '2017-02-04 13:13:53'),
(8, 1, 'has logged in the system at ', '2017-02-21 18:56:56'),
(9, 1, 'added a payment of -76.6 for , ', '2017-02-21 00:00:00'),
(10, 7, 'has logged in the system at ', '2017-04-11 15:54:54'),
(11, 7, 'added 1 of LG 43\" UHD TV UH6100', '2017-04-11 15:56:57'),
(12, 7, 'added 3 of Samsung', '2017-04-11 15:57:19'),
(13, 7, 'has logged out the system at ', '2017-04-11 15:58:00'),
(14, 8, 'has logged in the system at ', '2017-04-11 15:58:10'),
(15, 8, 'has logged out the system at ', '2017-04-11 15:59:06'),
(16, 9, 'has logged in the system at ', '2017-04-11 15:59:34'),
(17, 7, 'has logged in the system at ', '2017-04-11 16:13:58'),
(18, 7, 'has logged in the system at ', '2017-04-11 16:27:23'),
(19, 7, 'has logged in the system at ', '2017-04-11 16:49:39'),
(20, 7, 'has logged out the system at ', '2017-04-11 18:49:25'),
(21, 7, 'has logged in the system at ', '2017-04-11 18:51:04'),
(22, 7, 'has logged in the system at ', '2017-04-11 18:55:17'),
(23, 7, 'has logged in the system at ', '2017-04-12 22:34:22'),
(24, 7, 'has logged in the system at ', '2017-04-12 22:34:23'),
(25, 7, 'has logged in the system at ', '2017-04-12 23:21:13'),
(26, 7, 'has logged in the system at ', '2017-04-13 13:05:46'),
(27, 7, 'has logged in the system at ', '2017-04-13 13:27:57'),
(28, 10, 'has logged in the system at ', '2017-04-13 13:58:56'),
(29, 0, 'has logged out the system at ', '2017-04-13 14:05:28'),
(30, 7, 'has logged in the system at ', '2017-04-13 14:05:35'),
(31, 7, 'has logged out the system at ', '2017-04-13 14:35:43'),
(32, 11, 'has logged in the system at ', '2017-04-13 14:35:53'),
(33, 11, 'has logged out the system at ', '2017-04-13 14:48:28'),
(34, 7, 'has logged in the system at ', '2017-04-13 14:48:42'),
(35, 7, 'has logged out the system at ', '2017-04-13 14:48:57'),
(36, 7, 'has logged in the system at ', '2017-04-13 14:50:15'),
(37, 7, 'has logged out the system at ', '2017-04-13 14:50:46'),
(38, 11, 'has logged in the system at ', '2017-04-13 14:50:54'),
(39, 11, 'has logged out the system at ', '2017-04-13 14:55:12'),
(40, 7, 'has logged in the system at ', '2017-04-13 14:55:20'),
(41, 7, 'has logged out the system at ', '2017-04-13 15:03:13'),
(42, 7, 'has logged in the system at ', '2017-04-13 15:03:21'),
(43, 7, 'has logged out the system at ', '2017-04-13 15:11:27'),
(44, 11, 'has logged in the system at ', '2017-04-13 15:11:53'),
(45, 11, 'has logged out the system at ', '2017-04-13 15:11:58'),
(46, 7, 'has logged in the system at ', '2017-04-13 15:12:06'),
(47, 11, 'has logged in the system at ', '2017-04-13 15:25:31'),
(48, 11, 'has logged out the system at ', '2017-04-13 15:28:23'),
(49, 7, 'has logged in the system at ', '2017-04-13 15:28:31'),
(50, 7, 'has logged in the system at ', '2017-04-13 15:46:59'),
(51, 7, 'has logged in the system at ', '2017-04-20 08:30:23'),
(52, 6, 'has logged out the system at ', '2017-04-20 08:44:42'),
(53, 13, 'has logged in the system at ', '2017-04-20 08:44:51'),
(54, 13, 'has logged out the system at ', '2017-04-20 08:45:48'),
(55, 12, 'has logged in the system at ', '2017-04-20 08:46:31'),
(56, 12, 'has logged out the system at ', '2017-04-20 08:47:01'),
(57, 9, 'has logged in the system at ', '2017-04-20 08:48:04'),
(58, 9, 'has logged out the system at ', '2017-04-20 08:48:14'),
(59, 13, 'has logged in the system at ', '2017-04-20 08:48:48'),
(60, 13, 'has logged out the system at ', '2017-04-20 08:51:13'),
(61, 13, 'has logged in the system at ', '2017-04-20 08:51:23'),
(62, 13, 'has logged out the system at ', '2017-04-20 08:51:47'),
(63, 7, 'has logged in the system at ', '2017-04-20 08:51:58'),
(64, 7, 'has logged in the system at ', '2017-04-21 06:53:54'),
(65, 7, 'has logged in the system at ', '2017-04-21 08:33:46'),
(66, 7, 'has logged in the system at ', '2017-04-21 08:34:02'),
(67, 7, 'has logged in the system at ', '2017-04-21 08:34:10'),
(68, 7, 'has logged in the system at ', '2017-04-21 08:35:47'),
(69, 7, 'has logged in the system at ', '2017-04-21 08:40:21'),
(70, 7, 'has logged out the system at ', '2017-04-21 08:41:18'),
(71, 7, 'has logged in the system at ', '2017-04-21 08:41:25'),
(72, 7, 'has logged in the system at ', '2017-04-21 08:41:39'),
(73, 7, 'has logged in the system at ', '2017-04-21 08:41:45'),
(74, 7, 'has logged in the system at ', '2017-04-21 08:42:12'),
(75, 7, 'has logged in the system at ', '2017-04-21 08:42:22'),
(76, 7, 'has logged in the system at ', '2017-04-21 08:42:41'),
(77, 7, 'has logged in the system at ', '2017-04-21 08:42:56'),
(78, 7, 'has logged in the system at ', '2017-04-21 08:43:39'),
(79, 7, 'has logged in the system at ', '2017-04-21 08:44:14'),
(80, 7, 'has logged in the system at ', '2017-04-21 08:44:30'),
(81, 7, 'has logged in the system at ', '2017-04-21 08:44:49'),
(82, 7, 'has logged in the system at ', '2017-04-21 08:45:48'),
(83, 7, 'has logged in the system at ', '2017-04-21 08:46:42'),
(84, 7, 'has logged in the system at ', '2017-04-21 08:48:08'),
(85, 7, 'has logged in the system at ', '2017-04-21 08:48:31'),
(86, 7, 'has logged in the system at ', '2017-04-21 08:48:52'),
(87, 7, 'has logged out the system at ', '2017-04-21 08:50:10'),
(88, 7, 'has logged in the system at ', '2017-04-21 08:50:17'),
(89, 7, 'has logged in the system at ', '2017-04-21 09:21:23'),
(90, 7, 'has logged in the system at ', '2017-04-21 09:21:40'),
(91, 7, 'has logged in the system at ', '2017-04-21 09:22:13'),
(92, 7, 'has logged out the system at ', '2017-04-21 09:47:46'),
(93, 7, 'has logged in the system at ', '2017-04-21 09:57:06'),
(94, 7, 'has logged in the system at ', '2017-04-21 10:08:33'),
(95, 7, 'has logged out the system at ', '2017-04-21 10:09:34'),
(96, 7, 'has logged in the system at ', '2017-04-21 10:09:43'),
(97, 7, 'has logged out the system at ', '2017-04-21 10:13:23'),
(98, 0, 'has logged out the system at ', '2017-04-21 10:13:33'),
(99, 7, 'has logged in the system at ', '2017-04-21 10:15:47'),
(100, 7, 'has logged out the system at ', '2017-04-21 11:29:12'),
(101, 7, 'has logged in the system at ', '2017-04-21 11:29:30'),
(102, 7, 'has logged out the system at ', '2017-04-21 12:43:10'),
(103, 7, 'has logged in the system at ', '2017-04-21 12:43:22'),
(104, 7, 'has logged in the system at ', '2017-04-22 10:58:39'),
(105, 7, 'has logged in the system at ', '2017-04-22 20:00:53'),
(106, 7, 'has logged in the system at ', '2017-04-23 12:11:50'),
(107, 7, 'has logged out the system at ', '2017-04-23 14:48:31'),
(108, 7, 'has logged in the system at ', '2017-04-23 14:48:39'),
(109, 7, 'has logged in the system at ', '2017-04-24 08:31:45'),
(110, 7, 'has logged in the system at ', '2017-04-24 09:27:03'),
(111, 7, 'has logged out the system at ', '2017-04-24 09:48:27'),
(112, 9, 'has logged in the system at ', '2017-04-24 09:54:52'),
(113, 9, 'has logged out the system at ', '2017-04-24 09:55:16'),
(114, 9, 'has logged in the system at ', '2017-04-24 09:55:26'),
(115, 9, 'has logged out the system at ', '2017-04-24 10:06:16'),
(116, 7, 'has logged in the system at ', '2017-04-24 10:06:46'),
(117, 7, 'has logged out the system at ', '2017-04-24 10:16:36'),
(118, 7, 'has logged in the system at ', '2017-04-24 10:20:23'),
(119, 7, 'has logged in the system at ', '2017-04-24 10:23:07'),
(120, 7, 'has logged in the system at ', '2017-04-24 10:23:51'),
(121, 7, 'has logged in the system at ', '2017-04-24 10:23:51'),
(122, 7, 'has logged out the system at ', '2017-04-24 10:23:53'),
(123, 9, 'has logged in the system at ', '2017-04-24 10:24:41'),
(124, 9, 'has logged in the system at ', '2017-04-24 10:24:53'),
(125, 9, 'has logged in the system at ', '2017-04-24 10:27:02'),
(126, 9, 'has logged in the system at ', '2017-04-24 10:27:31'),
(127, 9, 'has logged in the system at ', '2017-04-24 10:30:34'),
(128, 9, 'has logged in the system at ', '2017-04-24 10:31:37'),
(129, 9, 'has logged out the system at ', '2017-04-24 10:31:46'),
(130, 7, 'has logged in the system at ', '2017-04-24 10:32:01'),
(131, 7, 'has logged in the system at ', '2017-04-24 10:32:29'),
(132, 9, 'has logged in the system at ', '2017-04-24 10:32:47'),
(133, 9, 'has logged out the system at ', '2017-04-24 10:32:48'),
(134, 7, 'has logged in the system at ', '2017-04-24 10:35:04'),
(135, 7, 'has logged out the system at ', '2017-04-24 10:35:05'),
(136, 7, 'has logged in the system at ', '2017-04-24 10:45:25'),
(137, 7, 'has logged out the system at ', '2017-04-24 10:45:26'),
(138, 7, 'has logged in the system at ', '2017-04-24 10:46:48'),
(139, 7, 'has logged out the system at ', '2017-04-24 10:46:49'),
(140, 7, 'has logged in the system at ', '2017-04-24 10:50:13'),
(141, 7, 'has logged in the system at ', '2017-04-24 10:50:21'),
(142, 7, 'has logged in the system at ', '2017-04-24 10:50:55'),
(143, 7, 'has logged in the system at ', '2017-04-24 10:51:22'),
(144, 7, 'has logged in the system at ', '2017-04-24 10:52:55'),
(145, 9, 'has logged in the system at ', '2017-04-24 10:53:04'),
(146, 7, 'has logged in the system at ', '2017-04-24 10:57:42'),
(147, 7, 'has logged in the system at ', '2017-04-24 10:58:41'),
(148, 7, 'has logged in the system at ', '2017-04-24 10:58:48'),
(149, 9, 'has logged in the system at ', '2017-04-24 10:58:57'),
(150, 7, 'has logged in the system at ', '2017-04-24 11:00:04'),
(151, 7, 'has logged in the system at ', '2017-04-24 11:00:30'),
(152, 7, 'has logged out the system at ', '2017-04-24 11:00:36'),
(153, 9, 'has logged in the system at ', '2017-04-24 11:01:23'),
(154, 7, 'has logged in the system at ', '2017-04-24 11:01:32'),
(155, 9, 'has logged in the system at ', '2017-04-24 11:02:05'),
(156, 9, 'has logged out the system at ', '2017-04-24 11:06:57'),
(157, 7, 'has logged in the system at ', '2017-04-24 11:07:08'),
(158, 9, 'has logged in the system at ', '2017-04-24 11:07:16'),
(159, 7, 'has logged in the system at ', '2017-04-24 11:08:16'),
(160, 7, 'has logged in the system at ', '2017-04-24 11:08:22'),
(161, 9, 'has logged in the system at ', '2017-04-24 11:08:29'),
(162, 7, 'has logged in the system at ', '2017-04-24 11:09:51'),
(163, 7, 'has logged out the system at ', '2017-04-24 11:09:53'),
(164, 7, 'has logged in the system at ', '2017-04-24 11:11:30'),
(165, 7, 'has logged out the system at ', '2017-04-24 11:11:31'),
(166, 7, 'has logged in the system at ', '2017-04-24 11:11:42'),
(167, 7, 'has logged out the system at ', '2017-04-24 11:11:44'),
(168, 7, 'has logged in the system at ', '2017-04-24 11:13:04'),
(169, 7, 'has logged out the system at ', '2017-04-24 11:13:06'),
(170, 7, 'has logged in the system at ', '2017-04-24 11:22:29'),
(171, 7, 'has logged in the system at ', '2017-04-24 11:22:36'),
(172, 7, 'has logged in the system at ', '2017-04-24 11:23:07'),
(173, 7, 'has logged in the system at ', '2017-04-24 11:23:26'),
(174, 9, 'has logged in the system at ', '2017-04-24 11:23:33'),
(175, 7, 'has logged in the system at ', '2017-04-24 11:24:05'),
(176, 7, 'has logged out the system at ', '2017-04-24 11:24:08'),
(177, 7, 'has logged in the system at ', '2017-04-24 11:24:17'),
(178, 7, 'has logged out the system at ', '2017-04-24 11:24:32'),
(179, 7, 'has logged in the system at ', '2017-04-24 11:33:53'),
(180, 7, 'has logged out the system at ', '2017-04-24 11:33:55'),
(181, 9, 'has logged in the system at ', '2017-04-24 11:34:36'),
(182, 9, 'has logged out the system at ', '2017-04-24 11:39:18'),
(183, 7, 'has logged in the system at ', '2017-04-24 11:39:56'),
(184, 9, 'has logged in the system at ', '2017-04-24 11:40:16'),
(185, 7, 'has logged in the system at ', '2017-04-24 11:43:10'),
(186, 7, 'has logged in the system at ', '2017-04-24 11:43:50'),
(187, 9, 'has logged in the system at ', '2017-04-24 11:43:56'),
(188, 7, 'has logged in the system at ', '2017-04-24 11:45:02'),
(189, 7, 'has logged in the system at ', '2017-04-24 11:45:18'),
(190, 7, 'has logged in the system at ', '2017-04-24 11:46:00'),
(191, 9, 'has logged in the system at ', '2017-04-24 11:46:09'),
(192, 7, 'has logged in the system at ', '2017-04-24 11:47:20'),
(193, 9, 'has logged in the system at ', '2017-04-24 11:47:27'),
(194, 7, 'has logged in the system at ', '2017-04-24 11:49:26'),
(195, 9, 'has logged in the system at ', '2017-04-24 11:49:39'),
(196, 7, 'has logged in the system at ', '2017-04-24 11:55:18'),
(197, 7, 'has logged out the system at ', '2017-04-24 11:55:19'),
(198, 7, 'has logged in the system at ', '2017-04-24 12:01:14'),
(199, 7, 'has logged out the system at ', '2017-04-24 12:01:15'),
(200, 9, 'has logged in the system at ', '2017-04-24 12:03:05'),
(201, 7, 'has logged in the system at ', '2017-04-24 12:03:42'),
(202, 7, 'has logged in the system at ', '2017-04-24 12:05:23'),
(203, 7, 'has logged out the system at ', '2017-04-24 12:07:15'),
(204, 7, 'has logged in the system at ', '2017-04-24 12:24:12'),
(205, 7, 'has logged out the system at ', '2017-04-24 12:24:22'),
(206, 9, 'has logged in the system at ', '2017-04-24 12:27:46'),
(207, 7, 'has logged in the system at ', '2017-04-24 12:50:14'),
(208, 9, 'has logged in the system at ', '2017-04-24 12:53:42'),
(209, 7, 'has logged in the system at ', '2017-04-24 12:54:18'),
(210, 9, 'has logged in the system at ', '2017-04-24 12:56:42'),
(211, 9, 'has logged out the system at ', '2017-04-24 13:22:08'),
(212, 9, 'has logged in the system at ', '2017-04-24 13:23:10'),
(213, 9, 'has logged in the system at ', '2017-04-24 14:57:58'),
(214, 9, 'has logged in the system at ', '2017-04-25 11:08:24'),
(215, 9, 'has logged out the system at ', '2017-04-25 11:18:43'),
(216, 7, 'has logged in the system at ', '2017-04-25 11:18:55'),
(217, 7, 'has logged out the system at ', '2017-04-25 11:20:18'),
(218, 9, 'has logged in the system at ', '2017-04-25 11:20:32'),
(219, 9, 'has logged out the system at ', '2017-04-25 11:22:06'),
(220, 9, 'has logged in the system at ', '2017-04-25 11:23:02'),
(221, 9, 'has logged out the system at ', '2017-04-25 11:27:12'),
(222, 9, 'has logged in the system at ', '2017-04-25 11:27:51'),
(223, 9, 'has logged out the system at ', '2017-04-25 11:33:40'),
(224, 9, 'has logged in the system at ', '2017-04-25 11:34:53'),
(225, 9, 'has logged out the system at ', '2017-04-25 12:10:58'),
(226, 0, 'has logged out the system at ', '2017-04-25 12:11:34'),
(227, 9, 'has logged in the system at ', '2017-04-25 12:11:56'),
(228, 9, 'has logged out the system at ', '2017-04-25 12:11:57'),
(229, 8, 'has logged in the system at ', '2017-04-25 12:13:11'),
(230, 8, 'has logged out the system at ', '2017-04-25 12:13:23'),
(231, 7, 'has logged in the system at ', '2017-04-25 12:16:20'),
(232, 7, 'has logged out the system at ', '2017-04-25 12:18:52'),
(233, 7, 'has logged in the system at ', '2017-04-25 12:25:47'),
(234, 7, 'has logged out the system at ', '2017-04-25 12:30:02'),
(235, 7, 'has logged in the system at ', '2017-04-25 12:30:11'),
(236, 7, 'has logged out the system at ', '2017-04-25 12:30:38'),
(237, 7, 'has logged in the system at ', '2017-04-25 12:30:53'),
(238, 7, 'has logged out the system at ', '2017-04-25 13:06:26'),
(239, 7, 'has logged in the system at ', '2017-04-25 14:38:54'),
(240, 7, 'has logged out the system at ', '2017-04-25 14:38:57'),
(241, 7, 'has logged in the system at ', '2017-04-25 14:39:08'),
(242, 4, 'has logged out the system at ', '2017-04-25 14:54:08'),
(243, 7, 'has logged in the system at ', '2017-04-25 14:56:05'),
(244, 7, 'has logged in the system at ', '2017-04-25 15:30:49'),
(245, 4, 'has logged out the system at ', '2017-04-25 15:51:55'),
(246, 7, 'has logged in the system at ', '2017-04-25 15:52:07'),
(247, 7, 'has logged out the system at ', '2017-04-25 16:08:38'),
(248, 7, 'has logged in the system at ', '2017-04-25 16:10:26'),
(249, 7, 'has logged in the system at ', '2017-04-25 17:28:22'),
(250, 7, 'has logged in the system at ', '2017-04-26 11:20:27'),
(251, 7, 'has logged out the system at ', '2017-04-26 11:35:42'),
(252, 7, 'has logged in the system at ', '2017-04-26 11:43:44'),
(253, 7, 'has logged out the system at ', '2017-04-26 11:43:46'),
(254, 7, 'has logged in the system at ', '2017-04-26 11:45:35'),
(255, 7, 'added 32 of Monitor', '2017-04-26 11:52:46'),
(256, 7, 'has logged out the system at ', '2017-04-26 12:55:16'),
(257, 7, 'has logged in the system at ', '2017-04-26 12:55:25'),
(258, 7, 'has logged out the system at ', '2017-04-26 13:04:01'),
(259, 9, 'has logged in the system at ', '2017-04-26 13:04:24'),
(260, 9, 'has logged out the system at ', '2017-04-26 13:06:24'),
(261, 9, 'has logged in the system at ', '2017-04-26 13:06:37'),
(262, 4, 'has logged out the system at ', '2017-04-26 14:14:09'),
(263, 7, 'has logged in the system at ', '2017-04-26 14:14:29'),
(264, 7, 'has logged out the system at ', '2017-04-26 14:15:22'),
(265, 9, 'has logged in the system at ', '2017-04-26 14:15:37'),
(266, 4, 'has logged out the system at ', '2017-04-26 14:28:13'),
(267, 9, 'has logged in the system at ', '2017-04-26 14:28:23'),
(268, 9, 'has logged out the system at ', '2017-04-26 15:05:43'),
(269, 7, 'has logged in the system at ', '2017-04-26 15:05:56'),
(270, 7, 'has logged out the system at ', '2017-04-26 16:32:16'),
(271, 9, 'has logged in the system at ', '2017-04-26 16:32:35'),
(272, 9, 'has logged out the system at ', '2017-04-26 16:35:35'),
(273, 7, 'has logged in the system at ', '2017-04-26 16:37:33'),
(274, 7, 'has logged out the system at ', '2017-04-26 16:38:20'),
(275, 7, 'has logged in the system at ', '2017-04-26 16:39:15'),
(276, 7, 'has logged in the system at ', '2017-04-26 19:58:58'),
(277, 7, 'has logged out the system at ', '2017-04-26 19:59:00'),
(278, 7, 'has logged in the system at ', '2017-04-27 11:07:10'),
(279, 7, 'has logged out the system at ', '2017-04-27 11:10:17'),
(280, 7, 'has logged in the system at ', '2017-04-27 11:20:22'),
(281, 7, 'has logged out the system at ', '2017-04-27 11:20:23'),
(282, 7, 'has logged in the system at ', '2017-04-27 11:20:31'),
(283, 7, 'has logged out the system at ', '2017-04-27 12:24:47'),
(284, 7, 'has logged in the system at ', '2017-04-27 12:24:53'),
(285, 4, 'has logged out the system at ', '2017-04-27 12:43:28'),
(286, 7, 'has logged in the system at ', '2017-04-27 12:43:45'),
(287, 6, 'has logged out the system at ', '2017-04-27 13:24:54'),
(288, 7, 'has logged in the system at ', '2017-04-27 13:25:03'),
(289, 7, 'has logged in the system at ', '2017-04-27 17:09:38'),
(290, 7, 'has logged in the system at ', '2017-04-27 18:21:42'),
(291, 7, 'has logged in the system at ', '2017-04-27 18:34:50'),
(292, 7, 'has logged in the system at ', '2017-04-28 11:21:45'),
(293, 4, 'has logged out the system at ', '2017-04-28 11:53:04'),
(294, 7, 'has logged in the system at ', '2017-04-28 11:53:12'),
(295, 4, 'has logged out the system at ', '2017-04-28 11:54:55'),
(296, 7, 'has logged in the system at ', '2017-04-28 11:55:07'),
(297, 4, 'has logged out the system at ', '2017-04-28 12:05:12'),
(298, 7, 'has logged in the system at ', '2017-04-28 12:05:24'),
(299, 4, 'has logged out the system at ', '2017-04-28 12:58:31'),
(300, 7, 'has logged in the system at ', '2017-04-28 12:58:37'),
(301, 4, 'has logged out the system at ', '2017-04-28 13:39:34'),
(302, 7, 'has logged in the system at ', '2017-04-28 13:39:42'),
(303, 7, 'has logged out the system at ', '2017-04-28 14:15:50'),
(304, 7, 'has logged in the system at ', '2017-04-28 14:15:59'),
(305, 7, 'has logged out the system at ', '2017-04-28 15:11:21'),
(306, 7, 'has logged in the system at ', '2017-04-28 15:11:29'),
(307, 7, 'has logged out the system at ', '2017-04-28 15:30:10'),
(308, 7, 'has logged in the system at ', '2017-04-28 15:30:19'),
(309, 7, 'has logged out the system at ', '2017-04-28 15:36:22'),
(310, 7, 'has logged in the system at ', '2017-04-28 15:36:30'),
(311, 7, 'has logged out the system at ', '2017-04-28 15:48:18'),
(312, 7, 'has logged in the system at ', '2017-04-28 15:48:25'),
(313, 7, 'has logged in the system at ', '2017-05-01 11:10:22'),
(314, 7, 'has logged out the system at ', '2017-05-01 11:26:01'),
(315, 7, 'has logged in the system at ', '2017-05-01 11:26:09'),
(316, 7, 'has logged in the system at ', '2017-05-01 11:27:34'),
(317, 7, 'has logged in the system at ', '2017-05-01 11:37:56'),
(318, 7, 'has logged in the system at ', '2017-05-01 11:47:26'),
(319, 4, 'has logged out the system at ', '2017-05-01 11:56:07'),
(320, 7, 'has logged in the system at ', '2017-05-01 11:56:16'),
(321, 7, 'has logged out the system at ', '2017-05-01 11:58:35'),
(322, 7, 'has logged in the system at ', '2017-05-01 11:58:41'),
(323, 7, 'has logged out the system at ', '2017-05-01 12:17:36'),
(324, 7, 'has logged in the system at ', '2017-05-01 12:17:42'),
(325, 7, 'has logged in the system at ', '2017-05-02 13:04:19'),
(326, 7, 'has logged in the system at ', '2017-05-02 13:15:45'),
(327, 7, 'has logged in the system at ', '2017-05-04 11:23:42'),
(328, 7, 'has logged in the system at ', '2017-05-04 14:30:39'),
(329, 7, 'has logged in the system at ', '2017-05-04 14:35:15'),
(330, 7, 'has logged in the system at ', '2017-05-04 21:21:31'),
(331, 7, 'has logged in the system at ', '2017-05-05 11:59:36'),
(332, 7, 'has logged in the system at ', '2017-05-07 09:16:12'),
(333, 7, 'has logged out the system at ', '2017-05-07 14:31:21'),
(334, 9, 'has logged in the system at ', '2017-05-07 15:09:07'),
(335, 9, 'has logged out the system at ', '2017-05-07 15:27:06'),
(336, 7, 'has logged in the system at ', '2017-05-07 15:27:19'),
(337, 7, 'has logged out the system at ', '2017-05-07 15:27:59'),
(338, 9, 'has logged in the system at ', '2017-05-07 15:28:16'),
(339, 9, 'has logged out the system at ', '2017-05-07 15:34:58'),
(340, 9, 'has logged in the system at ', '2017-05-07 15:35:09'),
(341, 9, 'has logged in the system at ', '2017-05-07 20:33:22'),
(342, 9, 'has logged out the system at ', '2017-05-07 20:46:42'),
(343, 7, 'has logged in the system at ', '2017-05-07 21:17:06'),
(344, 7, 'has logged out the system at ', '2017-05-07 21:51:25'),
(345, 7, 'has logged in the system at ', '2017-05-07 22:05:18'),
(346, 7, 'has logged out the system at ', '2017-05-07 22:21:33'),
(347, 9, 'has logged in the system at ', '2017-05-07 22:21:50'),
(348, 9, 'has logged out the system at ', '2017-05-07 22:35:46'),
(349, 7, 'has logged in the system at ', '2017-05-08 10:57:25'),
(350, 7, 'has logged in the system at ', '2017-05-08 14:37:56'),
(351, 7, 'has logged out the system at ', '2017-05-08 16:37:55'),
(352, 7, 'has logged in the system at ', '2017-05-08 16:38:01'),
(353, 7, 'has logged out the system at ', '2017-05-08 18:05:49'),
(354, 7, 'has logged in the system at ', '2017-05-08 18:06:18'),
(355, 7, 'has logged out the system at ', '2017-05-08 18:33:49'),
(356, 7, 'has logged in the system at ', '2017-05-08 18:33:55'),
(357, 7, 'has logged in the system at ', '2017-05-08 18:41:55'),
(358, 7, 'has logged in the system at ', '2017-05-08 18:49:48'),
(359, 7, 'has logged in the system at ', '2017-05-08 21:20:48'),
(360, 7, 'has logged in the system at ', '2017-05-09 11:02:31'),
(361, 7, 'has logged out the system at ', '2017-05-09 13:21:55'),
(362, 7, 'has logged in the system at ', '2017-05-09 13:22:38'),
(363, 7, 'has logged in the system at ', '2017-05-11 11:27:09'),
(364, 7, 'has logged out the system at ', '2017-05-11 16:35:28'),
(365, 7, 'has logged in the system at ', '2017-05-11 16:35:35'),
(366, 7, 'has logged out the system at ', '2017-05-11 16:35:48'),
(367, 7, 'has logged in the system at ', '2017-05-11 16:36:35'),
(368, 7, 'has logged out the system at ', '2017-05-11 16:59:53'),
(369, 9, 'has logged in the system at ', '2017-05-11 17:00:09'),
(370, 9, 'has logged out the system at ', '2017-05-11 17:00:15'),
(371, 7, 'has logged in the system at ', '2017-05-11 17:19:00'),
(372, 7, 'has logged in the system at ', '2017-05-12 12:05:23'),
(373, 7, 'has logged in the system at ', '2017-05-12 12:39:32'),
(374, 7, 'has logged out the system at ', '2017-05-12 13:49:44'),
(375, 7, 'has logged in the system at ', '2017-05-12 13:49:49'),
(376, 7, 'has logged in the system at ', '2017-05-15 16:27:00'),
(377, 7, 'has logged in the system at ', '2017-05-17 15:18:08'),
(378, 7, 'has logged out the system at ', '2017-05-17 16:01:06'),
(379, 9, 'has logged in the system at ', '2017-05-17 16:02:25'),
(380, 9, 'has logged out the system at ', '2017-05-17 16:02:30'),
(381, 9, 'has logged in the system at ', '2017-05-17 16:02:41'),
(382, 9, 'has logged in the system at ', '2017-05-17 16:04:45'),
(383, 9, 'has logged out the system at ', '2017-05-17 16:06:37'),
(384, 7, 'has logged in the system at ', '2017-05-17 16:06:48'),
(385, 7, 'has logged out the system at ', '2017-05-17 16:15:57'),
(386, 7, 'has logged in the system at ', '2017-05-17 16:21:15'),
(387, 7, 'has logged in the system at ', '2017-05-18 19:42:24'),
(388, 7, 'has logged out the system at ', '2017-05-18 19:42:33'),
(389, 7, 'has logged in the system at ', '2017-05-19 12:04:54'),
(390, 7, 'has logged out the system at ', '2017-05-19 12:11:06'),
(391, 9, 'has logged in the system at ', '2017-05-19 12:21:39'),
(392, 9, 'has logged out the system at ', '2017-05-19 12:21:51'),
(393, 9, 'has logged in the system at ', '2017-05-19 12:23:27'),
(394, 9, 'has logged out the system at ', '2017-05-19 12:25:45'),
(395, 7, 'has logged in the system at ', '2017-05-19 12:26:12'),
(396, 7, 'has logged in the system at ', '2017-05-19 15:02:23'),
(397, 7, 'has logged out the system at ', '2017-05-19 15:03:27'),
(398, 7, 'has logged in the system at ', '2017-05-19 15:37:37'),
(399, 7, 'has logged out the system at ', '2017-05-19 16:15:59'),
(400, 7, 'has logged in the system at ', '2017-05-19 16:16:14'),
(401, 7, 'has logged in the system at ', '2017-05-19 16:28:29'),
(402, 7, 'has logged out the system at ', '2017-05-19 17:42:09'),
(403, 7, 'has logged in the system at ', '2017-05-19 17:47:31'),
(404, 7, 'has logged in the system at ', '2017-05-20 20:24:10'),
(405, 7, 'has logged in the system at ', '2017-05-20 20:29:06'),
(406, 7, 'has logged out the system at ', '2017-05-20 20:56:38'),
(407, 7, 'has logged in the system at ', '2017-05-20 20:56:59'),
(408, 7, 'has logged in the system at ', '2017-05-22 11:58:51'),
(409, 7, 'has logged in the system at ', '2017-05-23 11:44:11'),
(410, 7, 'has logged in the system at ', '2017-05-24 11:06:01'),
(411, 7, 'has logged in the system at ', '2017-05-24 13:31:37'),
(412, 7, 'has logged in the system at ', '2017-05-25 11:50:35'),
(413, 7, 'has logged in the system at ', '2017-05-26 12:52:02'),
(414, 7, 'has logged in the system at ', '2017-05-29 14:34:37'),
(415, 7, 'has logged in the system at ', '2017-05-29 14:39:47'),
(416, 7, 'has logged in the system at ', '2017-05-29 16:43:06'),
(417, 7, 'has logged out the system at ', '2017-05-29 16:43:10'),
(418, 7, 'has logged in the system at ', '2017-05-29 16:54:07'),
(419, 7, 'has logged in the system at ', '2017-05-29 16:54:07'),
(420, 7, 'has logged in the system at ', '2017-05-30 12:16:44'),
(421, 7, 'has logged out the system at ', '2017-05-30 17:54:52'),
(422, 9, 'has logged in the system at ', '2017-05-30 17:55:09'),
(423, 9, 'has logged out the system at ', '2017-05-30 17:55:17'),
(424, 7, 'has logged in the system at ', '2017-05-30 17:55:27'),
(425, 7, 'has logged in the system at ', '2017-05-31 11:54:43'),
(426, 9, 'has logged in the system at ', '2017-05-31 11:55:10'),
(427, 9, 'has logged out the system at ', '2017-05-31 12:53:10'),
(428, 0, 'has logged out the system at ', '2017-05-31 12:53:13'),
(429, 9, 'has logged in the system at ', '2017-05-31 12:53:23'),
(430, 9, 'has logged out the system at ', '2017-05-31 12:59:04'),
(431, 8, 'has logged in the system at ', '2017-05-31 13:00:08'),
(432, 8, 'has logged out the system at ', '2017-05-31 13:05:14'),
(433, 7, 'has logged in the system at ', '2017-05-31 13:05:23'),
(434, 7, 'has logged out the system at ', '2017-05-31 13:07:57'),
(435, 9, 'has logged in the system at ', '2017-05-31 13:08:15'),
(436, 9, 'has logged out the system at ', '2017-05-31 13:08:28'),
(437, 7, 'has logged in the system at ', '2017-05-31 13:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `hr_department`
--

CREATE TABLE `hr_department` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_model` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `serial` varchar(50) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `requestedby` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_department`
--

INSERT INTO `hr_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `requestedby`, `comment`, `Invoice_No`, `Location`) VALUES
(1, 'fsfa', 'sfa', '2.00', 'default.gif', 0, 23, 0, 0, '2017-05-30', 'sfasf', 'HR Department', 'HR', 'fsFASFAS', '', '', 'sfafass', 'Board Room');

-- --------------------------------------------------------

--
-- Table structure for table `hr_records_assets`
--

CREATE TABLE `hr_records_assets` (
  `Product_id` int(11) NOT NULL,
  `Product_name` varchar(100) NOT NULL,
  `Product_model` varchar(500) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Purchase_date` date NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_records_assets`
--

INSERT INTO `hr_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`) VALUES
(1, 'fsfa', 'sfa', '2.00', 23, '2017-05-30', 'sfasf', 'HR Department', 'HR', 'fsFASFAS', '2017-05-30', '', 'Board Room'),
(2, 'fsfa', 'sfa', '2.00', 23, '2017-05-30', 'sfasf', 'HR Department', 'HR', 'fsFASFAS', '2017-05-30', '', 'Board Room');

-- --------------------------------------------------------

--
-- Table structure for table `it_department`
--

CREATE TABLE `it_department` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_model` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `serial` varchar(50) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `requestedby` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_department`
--

INSERT INTO `it_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `requestedby`, `comment`, `Invoice_No`, `Location`) VALUES
(37, 'Mouse', 'Logitech', '3.00', 'Koala.jpg', 0, 3, 0, 0, '2017-03-10', '0978551233', 'IT Department', 'Techno Trend', 'Mouse', '', '', '01-001', 'IT Room'),
(38, 'Crimping Tool', 'Trendnet', '1500.00', 'default.gif', 0, 1, 0, 0, '2017-04-01', 'UN1648T680172', 'IT Department', 'GLRTA Computer Corner Co. Ltd', 'Tools', '', '', '01-002', 'Server Room'),
(47, 'notebook', 'notebook', '10.00', 'default.gif', 0, 1, 0, 0, '2017-05-04', '4806012709766', 'IT Department', 'Techno Trend', 'Monitor', '', '', '01-004', 'IT Room'),
(48, 'Skyflakes', 'Skyflakes', '6.00', 'default.gif', 0, 1, 0, 0, '2017-05-04', '7505', 'IT Department', 'Total Quality Machine', 'Switch', '', '', '01-005', 'IT Room'),
(50, 'Crimping Tool', 'Trendnet', '1500.00', 'default.gif', 0, 1, 0, 0, '2017-04-01', 'UN1648T680173', 'IT Department', 'GLRTA Computer Corner Co. Ltd', 'Tools', '', '', '01-006', 'IT Room'),
(51, 'Network Cable Tester', 'Trendnet', '3500.00', 'default.gif', 0, 1, 0, 0, '2017-05-01', '710931401011', 'IT Department', 'Trendnet Inc.', 'Tools', '', '', '01-007', 'IT Room'),
(52, 'Lemon Square', 'Lemonade', '12.00', 'default.gif', 0, 1, 0, 0, '2017-05-23', '0523170000', 'IT Department', 'Techno Trend', 'Laptop', '', '', '01-009', 'IT Room'),
(53, 'Sample', 'Sample', '1.00', 'default.gif', 0, 1, 0, 0, '2017-05-23', '0000000001', 'IT Department', 'Techno Trend', 'Laptop', '', '', '01-010', 'IT Room'),
(55, 'fsafsa', 'fsafsafasfs', '1500.00', 'default.gif', 0, 11, 0, 0, '0000-00-00', 'fsa', 'IT Department', 'Sales', 'Sales Category', '', '', 'sfsa', '');

-- --------------------------------------------------------

--
-- Table structure for table `it_records_assets`
--

CREATE TABLE `it_records_assets` (
  `Product_id` int(11) NOT NULL,
  `Product_name` varchar(100) NOT NULL,
  `Product_model` varchar(500) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Purchase_date` date NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_records_assets`
--

INSERT INTO `it_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`) VALUES
(3, 'Mouse', 'Logitech', '3.00', 3, '2017-03-10', '0978551233', 'IT Department', 'Techno Trend', 'Mouse', '2017-05-29', '01-001', ''),
(5, 'Mouse', 'Logitech', '3.00', 3, '2017-03-10', '0978551233', 'IT Department', 'Techno Trend', 'Mouse', '2017-05-29', '01-001', ''),
(9, 'Mouse', 'Logitech', '3.00', 3, '2017-03-10', '0978551233', 'IT Department', 'Techno Trend', 'Mouse', '2017-05-30', '01-001', 'IT Room'),
(10, 'Crimping Tool', 'Trendnet', '1500.00', 1, '2017-04-01', 'UN1648T680172', 'IT Department', 'GLRTA Computer Corner Co. Ltd', 'Tools', '2017-05-30', '01-002', 'Server Room');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_department`
--

CREATE TABLE `marketing_department` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_model` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `serial` varchar(50) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `requestedby` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marketing_department`
--

INSERT INTO `marketing_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `requestedby`, `comment`, `Invoice_No`, `Location`) VALUES
(37, 'a', 'sdgs', '3.00', 'Penguins.jpg', 0, 12, 0, 0, '2017-04-06', '1', 'IT Department', 'Total Quality Machine', 'Lemonade', '', '', '', ''),
(38, 'jtyjyj', 'Hrt', '45.00', 'Tulips.jpg', 0, 54, 0, 0, '2017-04-28', 'uhrtr', 'Marketing Department', 'Marketing Supplier2', 'Abenson', '', '', '01-001', 'Production Room'),
(39, 'sdasd', 'sdsa', '22.00', 'default.gif', 0, 2, 0, 0, '2017-05-30', 'sda', 'Marketing Department', 'Marketing Supplier1', 'Marketing1', '', '', 'sada', 'IT Room');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_records_assets`
--

CREATE TABLE `marketing_records_assets` (
  `Product_id` int(11) NOT NULL,
  `Product_name` varchar(100) NOT NULL,
  `Product_model` varchar(500) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Purchase_date` date NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marketing_records_assets`
--

INSERT INTO `marketing_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`) VALUES
(1, 'jtyjyj', 'Hrt', '45.00', 54, '2017-04-28', 'uhrtr', 'Marketing Department', 'Marketing Supplier2', 'Abenson', '2017-05-25', '', ''),
(2, 'jtyjyj', 'Hrt', '45.00', 54, '2017-04-28', 'uhrtr', 'Marketing Department', 'Marketing Supplier2', 'Abenson', '2017-05-30', '', 'Production Room'),
(3, 'sdasd', 'sdsa', '22.00', 2, '2017-05-30', 'sda', 'Marketing Department', 'Marketing Supplier1', 'Marketing1', '2017-05-30', '', 'IT Room');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `payment_for` date NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `interest` decimal(10,2) NOT NULL,
  `remaining` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `rebate` decimal(10,2) NOT NULL,
  `or_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `cust_id`, `sales_id`, `payment`, `payment_date`, `user_id`, `branch_id`, `payment_for`, `due`, `interest`, `remaining`, `status`, `rebate`, `or_no`) VALUES
(3156, 1, 6, '550.00', '2017-02-21 19:57:12', 1, 1, '2017-02-21', '550.00', '0.00', '0.00', 'paid', '0.00', 1901),
(3157, 2, 7, '550.00', '2017-02-21 19:57:29', 1, 1, '2017-02-21', '550.00', '0.00', '0.00', 'paid', '0.00', 1902),
(3163, 2, 9, '113.30', '2017-02-21 21:31:20', 1, 1, '2017-03-21', '113.30', '0.00', '0.00', 'paid', '0.00', 0),
(3164, 2, 9, '36.70', '2017-02-21 21:31:20', 1, 1, '2017-04-21', '113.30', '0.00', '76.60', 'partially paid', '0.00', 0),
(3165, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-05-21', '113.30', '0.00', '113.30', '', '0.00', 0),
(3166, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-06-21', '113.30', '0.00', '113.30', '', '0.00', 0),
(3167, 2, 9, '113.30', '2017-02-21 00:00:00', 1, 1, '2017-02-21', '113.30', '0.00', '0.00', 'paid', '0.00', 3151);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_model` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `reorder` varchar(50) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `serial` varchar(50) NOT NULL,
  `branch_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `reorder`, `supplier_id`, `serial`, `branch_name`) VALUES
(5, 'UPS', 'CISCO Router', '45000.00', 'default.gif', 5, 6, 1, '', 4, '19898981', 'Finance Department'),
(13, 'Monitor', 'RAM', '550.00', 'Tulips.jpg', 9, 34, 1, '', 4, '22ewew', 'CS Department'),
(16, 'Mouse', 'Iron', '110.00', 'Penguins.jpg', 22, 8, 1, '', 2, '878878', 'IT Department'),
(17, 'fafs', 'fafa', '32131.00', 'default.gif', 7, 342, 1, '', 4, 'sda', '');

-- --------------------------------------------------------

--
-- Table structure for table `production_department`
--

CREATE TABLE `production_department` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_model` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `serial` varchar(50) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `requestedby` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `production_department`
--

INSERT INTO `production_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `requestedby`, `comment`, `Invoice_No`, `Location`) VALUES
(39, 'sdfsdf', 'Gdgdgs', '453.00', 'Jellyfish.jpg', 0, 445, 0, 0, '2017-04-24', '53', 'Production Department', 'Production Supplier2', 'Lemonade', '', '', '42', 'Board Room'),
(40, 'sdgsdgsd', '2as', '2.00', 'default.gif', 0, 2, 0, 0, '2017-05-30', 'sda', 'Production Department', 'Production Supplier1', 'Lemonade', '', '', 'sda', 'Sales Room');

-- --------------------------------------------------------

--
-- Table structure for table `production_records_assets`
--

CREATE TABLE `production_records_assets` (
  `Product_id` int(11) NOT NULL,
  `Product_name` varchar(100) NOT NULL,
  `Product_model` varchar(500) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Purchase_date` date NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `production_records_assets`
--

INSERT INTO `production_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`) VALUES
(1, 'sdfsdf', 'Gdgdgs', '453.00', 445, '2017-04-24', '53', 'Production Department', 'Production Supplier2', 'Lemonade', '2017-05-30', '', 'Board Room'),
(2, 'sdgsdgsd', '2as', '2.00', 2, '2017-05-30', 'sda', 'Production Department', 'Production Supplier1', 'Lemonade', '2017-05-30', '', 'Sales Room');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_request`
--

CREATE TABLE `purchase_request` (
  `pr_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `purchase_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_tendered` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `cash_change` decimal(10,2) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `modeofpayment` varchar(15) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `cust_id`, `user_id`, `cash_tendered`, `discount`, `amount_due`, `cash_change`, `date_added`, `modeofpayment`, `branch_id`, `total`) VALUES
(1, 1, 1, '500.00', '50.00', '500.00', '0.00', '2017-02-04 01:33:28', 'cash', 1, '450.00'),
(2, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 18:57:26', 'cash', 1, '550.00'),
(3, 1, 1, '0.00', '550.00', '0.00', '0.00', '2017-02-21 19:49:41', 'cash', 1, '-550.00'),
(4, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:55:57', 'cash', 1, '550.00'),
(5, 2, 1, '110.00', '0.00', '110.00', '0.00', '2017-02-21 19:56:17', 'cash', 1, '110.00'),
(6, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:57:12', 'cash', 1, '550.00'),
(7, 2, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:57:29', 'cash', 1, '550.00'),
(9, 2, 1, NULL, NULL, '0.00', NULL, '2017-02-21 21:16:52', 'credit', 1, '550.00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_department`
--

CREATE TABLE `sales_department` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_model` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `serial` varchar(50) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `requestedby` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_department`
--

INSERT INTO `sales_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `requestedby`, `comment`, `Invoice_No`, `Location`) VALUES
(1, 'fsfas', 'sadas', '2.00', 'default.gif', 0, 2, 0, 0, '2017-05-30', 'sfaf', 'Sales Department', 'Sales', 'Sales Category', '', '', 'safasfsfas', 'IT Room'),
(2, 'dsads', 'sda', '11.00', 'default.gif', 0, 12, 0, 0, '2017-05-30', 'sdas', 'Sales Department', 'Sales', 'Sales Category', '', '', 'sdas', 'Production Room');

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `sales_details_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`sales_details_id`, `sales_id`, `prod_id`, `price`, `qty`) VALUES
(1, 1, 13, '550.00', 1),
(2, 2, 13, '550.00', 1),
(3, 3, 13, '550.00', 1),
(4, 4, 13, '550.00', 1),
(5, 5, 16, '110.00', 1),
(6, 6, 13, '550.00', 1),
(7, 7, 13, '550.00', 1),
(8, 8, 13, '550.00', 1),
(9, 9, 13, '550.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_records_assets`
--

CREATE TABLE `sales_records_assets` (
  `Product_id` int(11) NOT NULL,
  `Product_name` varchar(100) NOT NULL,
  `Product_model` varchar(500) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Purchase_date` date NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_records_assets`
--

INSERT INTO `sales_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`) VALUES
(7, 'dsads', 'sda', '11.00', 12, '2017-05-30', 'sdas', 'Sales Department', 'Sales', 'Sales Category', '2017-05-30', 'sdas', 'Production Room');

-- --------------------------------------------------------

--
-- Table structure for table `sportsbook_department`
--

CREATE TABLE `sportsbook_department` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_model` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `serial` varchar(50) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `requestedby` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sportsbook_department`
--

INSERT INTO `sportsbook_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `requestedby`, `comment`, `Invoice_No`, `Location`) VALUES
(37, 'a', 'sdgs', '3.00', 'Penguins.jpg', 0, 12, 0, 0, '2017-04-06', '1', 'IT Department', 'Total Quality Machine', 'Lemonade', '', '', '', ''),
(38, 'fasafsa', 'sfasa', '423.00', 'Lighthouse.jpg', 0, 54, 0, 0, '2017-04-22', '5325', 'Sportsbook Department', 'Aren Computer Services', 'Keyboard', '', '', '01-001', 'Conference Room'),
(39, 'io', 'iuy', '8.00', 'default.gif', 0, 88, 0, 0, '2017-05-30', 'lujl', 'Sportsbook Department', 'Aren Computer Services', 'Keyboard', '', '', 'ul', 'HR Room');

-- --------------------------------------------------------

--
-- Table structure for table `sportsbook_records_assets`
--

CREATE TABLE `sportsbook_records_assets` (
  `Product_id` int(11) NOT NULL,
  `Product_name` varchar(100) NOT NULL,
  `Product_model` varchar(500) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Purchase_date` date NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sportsbook_records_assets`
--

INSERT INTO `sportsbook_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`) VALUES
(1, 'fasafsa', 'sfasa', '423.00', 54, '2017-04-22', '5325', 'Sportsbook Department', 'Aren Computer Services', 'Keyboard', '2017-05-30', '', 'Conference Room'),
(2, 'io', 'iuy', '8.00', 88, '2017-05-30', 'lujl', 'Sportsbook Department', 'Aren Computer Services', 'Keyboard', '2017-05-30', '', 'HR Room');

-- --------------------------------------------------------

--
-- Table structure for table `stockin`
--

CREATE TABLE `stockin` (
  `stockin_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` int(6) NOT NULL,
  `date` datetime NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockin`
--

INSERT INTO `stockin` (`stockin_id`, `prod_id`, `qty`, `date`, `branch_id`) VALUES
(1, 5, 5, '2017-02-04 01:10:41', 1),
(2, 15, 100, '2017-02-04 01:10:49', 1),
(3, 13, 10, '2017-02-04 01:10:55', 1),
(4, 14, 5, '2017-02-04 01:11:07', 1),
(5, 5, 1, '2017-04-11 15:56:57', 1),
(6, 14, 3, '2017-04-11 15:57:19', 1),
(7, 13, 32, '2017-04-26 11:52:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `supplier_address` varchar(300) NOT NULL,
  `supplier_contact` varchar(50) NOT NULL,
  `branch_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_contact`, `branch_name`) VALUES
(2, 'Techno Trend', 'Makati City, Philippines', '423-4444', 'IT Department'),
(3, 'Aren Computer Services', '2nd Flr. 913 Nicanor Reyes St. Zone Brgy 395 Sampaloc, Manila', '735-4076', 'Sportsbook Department'),
(4, 'Total Quality Machine', 'Bacolod City', '735-4706', 'IT Department'),
(8, 'Security Bank', 'Chino Roces Makati City', '237-3414', 'Finance Department'),
(9, 'CS Supplier1', 'Makati City', '551-4321', 'CS Department'),
(10, 'CS Supplier2', 'Makati City', '551-4326', 'CS Department'),
(11, 'Production Supplier1', 'Makati City', '254-4522', 'Production Department'),
(12, 'Production Supplier2', 'Makati City', '432-3523', 'Production Department'),
(13, 'Marketing Supplier1', 'Makati City', '432-4234', 'Marketing Department'),
(14, 'Marketing Supplier2', 'Makati City', '324-4324', 'Marketing Department'),
(15, 'HR', 'Makati City', '234-2412', 'HR Department'),
(16, 'Admin', 'Makati City', '231-2152', 'Admin Department'),
(17, 'Trendnet Inc.', 'Makati City', '7678880', 'IT Department'),
(18, 'GLRTA Computer Corner Co. Ltd', '3/F Glorietta 2, Ayala Center San Lorenzo Makati City', '815-9440', 'IT Department'),
(19, 'Sales', 'Sales', '958-4352', 'Sales Department');

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE `temp_trans` (
  `temp_trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_trans`
--

INSERT INTO `temp_trans` (`temp_trans_id`, `prod_id`, `price`, `qty`, `branch_id`) VALUES
(1, 0, '0.00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `term_id` int(11) NOT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `payable_for` varchar(10) NOT NULL,
  `term` varchar(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `payment_start` date NOT NULL,
  `down` decimal(10,2) NOT NULL,
  `due_date` date NOT NULL,
  `interest` decimal(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`term_id`, `sales_id`, `payable_for`, `term`, `due`, `payment_start`, `down`, `due_date`, `interest`, `status`) VALUES
(1, 8, '4', 'monthly', '113.30', '2017-02-21', '113.30', '2017-06-21', '16.50', ''),
(2, 9, '4', 'monthly', '113.30', '2017-02-21', '113.30', '2017-06-21', '16.50', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `user_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `branch_id`, `user_type`) VALUES
(6, 'administrator', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Crizel', 'active', 0, ''),
(7, 'crizel', 'a1Bz20ydqelm8m1wql912ec803b2ce49e4a541068d495ab570', 'Crizel Joy', 'active', 1, 'Admin'),
(8, 'HR', 'a1Bz20ydqelm8m1wql912ec803b2ce49e4a541068d495ab570', 'Mae Frances Alba', 'active', 2, 'User'),
(9, 'Finance', 'a1Bz20ydqelm8m1wql912ec803b2ce49e4a541068d495ab570', 'Chrisitine Pasatiempo', 'active', 3, 'User'),
(10, 'Sportsbook1', 'a1Bz20ydqelm8m1wqlfd2cc6c54239c40495a0d3a93b6380eb', 'Sportsbook ETC', 'active', 4, 'User'),
(11, 'iara', 'a1Bz20ydqelm8m1wql1bdc6a5694ca722534fb32a5130e640e', 'Iara Dela Cruz', 'active', 5, 'User'),
(12, 'Production', 'a1Bz20ydqelm8m1wqlfd89784e59c72499525556f80289b2c7', 'Production', 'active', 6, 'User'),
(13, 'CS', 'a1Bz20ydqelm8m1wql8d7e99c73cd5a10adaaf4c9f9a520368', 'CS Department', 'active', 7, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `user_branch`
--

CREATE TABLE `user_branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `branch_address` varchar(100) NOT NULL,
  `branch_contact` varchar(50) NOT NULL,
  `skin` varchar(15) NOT NULL,
  `user_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_branch`
--

INSERT INTO `user_branch` (`branch_id`, `branch_name`, `branch_address`, `branch_contact`, `skin`, `user_type`) VALUES
(2, 'HR Department', '29th Floor Robinson Summit Center Ayala Avenue Makati City', '551-2312', 'purple', 'User'),
(3, 'Finance Department', '29th Floor Robinson Summit Center Ayala Avenue Makati City', '551-8319', '', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_department`
--
ALTER TABLE `admin_department`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `admin_records_assets`
--
ALTER TABLE `admin_records_assets`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `cs_department`
--
ALTER TABLE `cs_department`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `cs_records_assets`
--
ALTER TABLE `cs_records_assets`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `finance_department`
--
ALTER TABLE `finance_department`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `finance_records_assets`
--
ALTER TABLE `finance_records_assets`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `hr_department`
--
ALTER TABLE `hr_department`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `hr_records_assets`
--
ALTER TABLE `hr_records_assets`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `it_department`
--
ALTER TABLE `it_department`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `it_records_assets`
--
ALTER TABLE `it_records_assets`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `marketing_department`
--
ALTER TABLE `marketing_department`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `marketing_records_assets`
--
ALTER TABLE `marketing_records_assets`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `production_department`
--
ALTER TABLE `production_department`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `production_records_assets`
--
ALTER TABLE `production_records_assets`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `purchase_request`
--
ALTER TABLE `purchase_request`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_department`
--
ALTER TABLE `sales_department`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sales_details_id`);

--
-- Indexes for table `sales_records_assets`
--
ALTER TABLE `sales_records_assets`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `sportsbook_department`
--
ALTER TABLE `sportsbook_department`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `sportsbook_records_assets`
--
ALTER TABLE `sportsbook_records_assets`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `stockin`
--
ALTER TABLE `stockin`
  ADD PRIMARY KEY (`stockin_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`temp_trans_id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_branch`
--
ALTER TABLE `user_branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_department`
--
ALTER TABLE `admin_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin_records_assets`
--
ALTER TABLE `admin_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `cs_department`
--
ALTER TABLE `cs_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `cs_records_assets`
--
ALTER TABLE `cs_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `finance_department`
--
ALTER TABLE `finance_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `finance_records_assets`
--
ALTER TABLE `finance_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;
--
-- AUTO_INCREMENT for table `hr_department`
--
ALTER TABLE `hr_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hr_records_assets`
--
ALTER TABLE `hr_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `it_department`
--
ALTER TABLE `it_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `it_records_assets`
--
ALTER TABLE `it_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `marketing_department`
--
ALTER TABLE `marketing_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `marketing_records_assets`
--
ALTER TABLE `marketing_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3168;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `production_department`
--
ALTER TABLE `production_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `production_records_assets`
--
ALTER TABLE `production_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `purchase_request`
--
ALTER TABLE `purchase_request`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sales_department`
--
ALTER TABLE `sales_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sales_records_assets`
--
ALTER TABLE `sales_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sportsbook_department`
--
ALTER TABLE `sportsbook_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `sportsbook_records_assets`
--
ALTER TABLE `sportsbook_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `stockin`
--
ALTER TABLE `stockin`
  MODIFY `stockin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `temp_trans`
--
ALTER TABLE `temp_trans`
  MODIFY `temp_trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `term_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `user_branch`
--
ALTER TABLE `user_branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
