-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2018 at 01:57 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `barcode_tag` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_department`
--

INSERT INTO `admin_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `Invoice_No`, `Location`, `comment`, `barcode_tag`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'AOC', '552270S', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'GDLG1HA003741', 'Admin Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMAD-2017-011', '', '', '0000-00-00'),
(2, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', '6CM4501SVP', 'Admin Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMAD-2017-012', '', '', '0000-00-00'),
(3, 'VIEWSONIC', 'VS15451', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'TSN135201776', 'Admin Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMAD-2017-013', '', '', '0000-00-00'),
(5, 'AOC', 'I2280SWD', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'AFAH19A009461', 'Admin Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMAD-2017-014', '', '', '0000-00-00'),
(6, 'HP', 'PRODISPLAY P221', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', '6CM4501SWL', 'Admin Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMAD-2017-015', '', '', '0000-00-00'),
(7, 'SAMSUNG', 'S20A300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZRV9H9NB9011621', 'Admin Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMAD-2017-016', '', '', '0000-00-00'),
(8, 'AOC', 'I2280SWD', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'AFAH19A009445', 'Admin Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMAD-2017-017', '', '', '0000-00-00'),
(9, 'AOC', 'E2270S', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'GDLFAHA003841', 'Admin Department', 'Unknown', 'Monitor', '0', 'HRAD & Finance Room', '', 'IMAD-2017-018', '', '', '0000-00-00'),
(10, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', '07UCHMCD500084P', 'Admin Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMAD-2017-019', '', '', '0000-00-00');

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
  `Barcode` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_records_assets`
--

INSERT INTO `admin_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Barcode`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'DSfa', 'safa', '3.00', 33, '2017-05-30', 'fasfasf', '', 'Admin Department', 'Admin', 'Managers Table', '2017-05-30', '', 'Training Room', '', '', '0000-00-00'),
(2, 'DSfa', 'safa', '3.00', 33, '2017-05-30', 'fasfasf', '', 'Admin Department', 'Admin', 'Managers Table', '2017-05-30', '', 'Training Room', '', '', '0000-00-00'),
(3, 'DSfa', 'safa', '3.00', 33, '2017-05-30', 'fasfasf', 'asdasd', 'Admin Department', 'Admin', 'Managers Table', '2017-06-09', 'sfaa', 'Training Room', '', '', '0000-00-00');

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
(9, 'Sales Department', '29th Floor Robinson Summit Center Ayala Avenue Makati City', '551-2314', 'blue', 'User'),
(10, 'Management', '29th Floor Robinson Summit Center Ayala Avenue Makati City', '551-0001', 'orange', '');

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
(1, 'Monitor', 'IT Department'),
(2, 'Laptop', 'IT Department'),
(3, 'Mouse', 'IT Department'),
(4, 'Keyboard', 'IT Department'),
(5, 'System Unit', 'IT Department'),
(6, 'Switch', ''),
(7, 'Network Device', '');

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
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `barcode_tag` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_department`
--

INSERT INTO `cs_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `Invoice_No`, `Location`, `comment`, `barcode_tag`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'HP', 'P222VA', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CNK5400W53', 'CS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'CS Room', '', 'IMCS-2017-0001', '', '', '0000-00-00'),
(2, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', '710898001', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0002', '', '', '0000-00-00'),
(3, 'HP', 'P222VA', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CNK5400VH5', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0003', '', '', '0000-00-00'),
(4, 'AOC', 'I2280SWD', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AFAH19A10864', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0004', '', '', '0000-00-00'),
(5, 'AOC', 'I2280SWD', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AFAH19A10883', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0005', '', '', '0000-00-00'),
(6, 'AOC', 'I2280SWD', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'AFAH19A009989', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0006', '', '', '0000-00-00'),
(7, 'HP', 'P222VA', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CNK5400W4X', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0007', '', '', '0000-00-00'),
(8, 'HP', 'P222VA', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CNK5400VH7', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0008', '', '', '0000-00-00'),
(9, 'VIEWSONIC', 'VA22612', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TVR160561830', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0009', '', '', '0000-00-00'),
(10, 'VIEWSONIC', 'VSI5560', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TVR160561808', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0010', '', '', '0000-00-00'),
(11, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TSP143606273', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0011', '', '', '0000-00-00'),
(12, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TSP143606295', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0012', '', '', '0000-00-00'),
(13, 'SAMSUNG', 'S22A300B', '0.00', 'default.gif', 0, 0, 0, 0, '2017-01-01', 'NFL3HMBB600486T', 'CS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'CS Room', '', 'IMCS-2017-0013', '', '', '0000-00-00'),
(14, 'SAMSUNG', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMBB600721Y', 'CS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'CS Room', '', 'IMCS-2017-0014', '', '', '0000-00-00'),
(15, 'SAMSUNG', 'P2270G', '0.00', 'default.gif', 0, 0, 0, 0, '2017-01-01', 'EF22HMBS700087E', 'CS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'CS Room', '', 'IMCS-2017-0015', '', '', '0000-00-00'),
(16, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMDZA00139M', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0016', '', '', '0000-00-00'),
(17, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMDZA00058F', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0017', '', '', '0000-00-00'),
(18, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMJZC00100N', 'CS Department', 'Unknown', 'Keyboard', '0', 'CS Room', '', 'IMCS-2017-0026', '', '', '0000-00-00'),
(19, 'Samsung', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC300621W', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0003', '', '', '0000-00-00'),
(20, 'Viewsonic', 'VA2446M', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TSP143402635', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0018', '', '', '0000-00-00'),
(21, 'Viewsonic', 'VA2446M', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TSP143402315', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0019', '', '', '0000-00-00'),
(22, 'Viewsonic', 'VA2446M', '0.00', 'default.gif', 0, 0, 0, 0, '2017-01-01', 'TSP143402385', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0020', '', '', '0000-00-00'),
(23, 'Viewsonic', 'VA2446M', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TSP143606269', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0021', '', '', '0000-00-00'),
(24, 'Viewsonic', 'VA2446M', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TSP143402622', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0022', '', '', '0000-00-00'),
(25, 'Viewsonic', 'VA2446M', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TSP143403916', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0023', '', '', '0000-00-00'),
(26, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', '5Q66242', 'CS Department', 'Unknown', 'Laptop', 'UNKNOWN', 'CS Room', '', 'IMCS-2018-0024', '', '', '0000-00-00'),
(27, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLG1HA007299', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0024', '', '', '0000-00-00'),
(28, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLG1HA007058', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0025', '', '', '0000-00-00'),
(29, 'Viewsonic', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TSN135201317', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0027', '', '', '0000-00-00'),
(30, 'Viewsonic', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TVR160561819', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMCS-2017-0028', '', '', '0000-00-00'),
(32, 'Logitech', '0', '0.00', 'default.gif', 0, 0, 0, 0, '2017-01-01', 'IMCS-001', 'CS Department', 'Unknown', 'Mouse', '0', 'CS Room', '', 'IMCS-2017-0050 ', '', '', '0000-00-00'),
(33, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-002', 'CS Department', 'Unknown', 'Mouse', '0', 'CS Room', '', 'IMCS-2017-0051', '', '', '0000-00-00'),
(34, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-003', 'CS Department', 'Unknown', 'Mouse', '0', 'CS Room', '', 'IMCS-2017-0052', '', '', '0000-00-00'),
(35, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IIMCS-004', 'CS Department', 'Unknown', 'Mouse', '0', 'CS Room', '', 'MCS-2017-0053', '', '', '0000-00-00'),
(36, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-005', 'CS Department', 'Unknown', 'Mouse', '0', 'CS Room', '', 'IMCS-2017-0054', '', '', '0000-00-00'),
(37, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-006', 'CS Department', 'Unknown', 'Mouse', '0', 'CS Room', '', 'IMCS-2017-0055', '', '', '0000-00-00'),
(38, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-007', 'CS Department', 'Unknown', 'Mouse', '0', 'CS Room', '', 'IMCS-2017-0056', '', '', '0000-00-00'),
(39, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-008', 'CS Department', 'Unknown', 'Mouse', '0', 'CS Room', '', 'IMCS-2017-0057', '', '', '0000-00-00'),
(40, 'Logitech', '0', '0.00', 'default.gif', 0, 0, 0, 0, '2017-01-01', 'IMCS-009', 'CS Department', 'Unknown', 'Mouse', '0', 'CS Room', '', 'IMCS-2017-0058', '', '', '0000-00-00'),
(41, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-010', 'CS Department', 'Unknown', 'Mouse', '0', 'CS Room', '', 'IMCS-2017-0059', '', '', '0000-00-00'),
(42, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-011', 'CS Department', 'Unknown', 'Mouse', '0', 'CS Room', '', 'IMCS-2017-0060', '', '', '0000-00-00'),
(43, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-014', 'CS Department', 'Unknown', 'Mouse', '0', 'CS Room', '', 'IMCS-2017-0061', '', '', '0000-00-00'),
(44, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-0036', 'CS Department', 'Unknown', 'System Unit', '0', 'CS Room', '', 'IMCS-2017-0036', '', '', '0000-00-00'),
(45, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-0037', 'CS Department', 'Unknown', 'System Unit', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(46, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-0038', 'CS Department', 'Unknown', 'System Unit', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(47, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-0041', 'CS Department', 'Unknown', 'System Unit', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(48, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-0042', 'CS Department', 'Unknown', 'System Unit', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(49, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-0043', 'CS Department', 'Unknown', 'System Unit', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(50, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-0044', 'CS Department', 'Unknown', 'System Unit', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(51, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-0045', 'CS Department', 'Unknown', 'System Unit', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(52, 'Viewsonic', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'UEN172121079', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(53, 'Viewsonic', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'UEN172121130', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(54, 'Viewsonic', 'VA2266-2', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'UEN172121098', 'CS Department', 'Unknown', 'Monitor', '0', 'IT Room', '', '', '', '', '0000-00-00'),
(55, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CS-0063', 'CS Department', 'Unknown', 'Keyboard', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(56, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CS-0064', 'CS Department', 'Unknown', 'Keyboard', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(57, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CS-0065', 'CS Department', 'Unknown', 'Keyboard', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(58, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CS-0068', 'CS Department', 'Unknown', 'Keyboard', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(59, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CS-0069', 'CS Department', 'Unknown', 'Keyboard', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(60, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CS-0070', 'CS Department', 'Unknown', 'Keyboard', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(61, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CS-0071', 'CS Department', 'Unknown', 'Keyboard', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(62, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CS-0072', 'CS Department', 'Unknown', 'Keyboard', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(63, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CS-0074', 'CS Department', 'Unknown', 'Keyboard', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(64, 'Laptop', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'PF0HAYNS', 'CS Department', 'Unknown', 'Laptop', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(65, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMCS-0040', 'CS Department', 'Unknown', 'System Unit', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(66, 'Samsung', 'S22B100B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC502264D', 'CS Department', 'Unknown', 'Monitor', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(67, 'HP', 'Probook 440 G2', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CND5335YKD', 'CS Department', 'AREN Computer Services', 'Laptop', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(68, 'Dell', 'Inspiron 14-3467', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', '2KFXXD2', 'CS Department', 'Unknown', 'Laptop', '0', 'CS Room', '', '', '', '', '0000-00-00'),
(69, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CS-0067', 'CS Department', 'Unknown', 'Keyboard', '0', 'CS Room', '', '', '', '', '0000-00-00');

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
  `Barcode` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `barcode_tag` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance_department`
--

INSERT INTO `finance_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `Invoice_No`, `Location`, `comment`, `barcode_tag`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'VIEWSONIC', 'VSI5451', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'TSN135201787', 'Finance Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMFN-2017-018', '', '', '0000-00-00'),
(2, 'Samsung', '0', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'CM17H9FS532337D', 'Finance Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMFN-2017-019', '', '', '0000-00-00'),
(3, 'AOC', 'E2270S', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'GDLG1HA001559', 'Finance Department', 'Unknown', 'Monitor', '0', 'HRAD & Finance Room', '', 'IMFN-2017-020', '', '', '0000-00-00'),
(4, 'AOC', 'E220S', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'GDLG1HA001558', 'Finance Department', 'Unknown', 'Monitor', '0', 'HRAD & Finance Room', '', 'IMFN-2017-021', '', '', '0000-00-00'),
(5, 'Samsung', 'S22C350H', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZYDQNTHD600435X', 'Finance Department', 'Unknown', 'Monitor', '0', 'Pantry', '', '0', '', '', '0000-00-00'),
(6, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'MRCQHYCDB00441R', 'Finance Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Pantry', '', 'IMFN-2017-022', '', '', '0000-00-00'),
(7, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'G06VHYCF402733L', 'Finance Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Pantry', '', 'IMFN-2017-023', '', '', '0000-00-00'),
(8, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', '6CM4501SSF', 'Finance Department', 'Unknown', 'Monitor', '0', 'HRAD & Finance Room', '', 'IMFN-2017-024', '', '', '0000-00-00'),
(9, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', '6CM4501T58', 'Finance Department', 'Unknown', 'Monitor', '0', 'HRAD & Finance Room', '', 'IMFN-2017-025', '', '', '0000-00-00'),
(10, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', '6CM4501T53', 'Finance Department', 'Unknown', 'Monitor', '0', 'HRAD & Finance Room', '', 'IMFN-2017-026', '', '', '0000-00-00'),
(11, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', '6CM4521C30', 'Finance Department', 'Unknown', 'Monitor', '0', 'HRAD & Finance Room', '', 'IMFN-2017-027', '', '', '0000-00-00'),
(12, 'Samsung', '0', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'CM17H9FS922978D', 'Finance Department', 'Unknown', 'Monitor', '0', 'HRAD & Finance Room', '', 'IMFN-2017-028', '', '', '0000-00-00'),
(13, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', '00HHYCF803503T', 'Finance Department', 'Unknown', 'Monitor', '0', 'HRAD & Finance Room', '', 'IMFN-2017-029', '', '', '0000-00-00'),
(14, 'AOC', 'E2280SWDN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'AEB80639Z03056', 'Finance Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMFN-2017-030', '', '', '0000-00-00'),
(15, 'AOC', 'E2280SWDN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'AEB80639Z03060', 'Finance Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMFN-2017-031', '', '', '0000-00-00'),
(16, 'AOC', 'I2280SWD', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'AFAH19A009832', 'Finance Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMFN-2017-032', '', '', '0000-00-00'),
(17, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'G06VHYCF402800M', 'Finance Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Pantry', '', 'IMFN-2017-033', '', '', '0000-00-00'),
(18, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZTEH9NB706932H', 'Finance Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMFN-2017-034', '', '', '0000-00-00'),
(19, 'AOC', 'E2270S', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'GDLG1HA003116', 'Finance Department', 'Unknown', 'Monitor', '0', 'Pantry', '', 'IMFN-2017-035', '', '', '0000-00-00'),
(20, 'AOC', 'E2270S', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'GDLG1HA002909', 'Finance Department', 'Unknown', 'Monitor', '0', 'HRAD & Finance Room', '', 'IMFN-2017-036', '', '', '0000-00-00'),
(21, 'Logitech', 'M-U0026', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'FN-0001', 'Finance Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMAD-2017-0001', '', '', '0000-00-00'),
(22, 'Logitech', 'M-U0026', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'FN-0002', 'Finance Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMAD-2017-0002', '', '', '0000-00-00'),
(23, 'Logitech', 'M-U0026', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'FN-0003', 'Finance Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMAD-2017-0003', '', '', '0000-00-00'),
(24, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'FN-0004', 'Finance Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMAD-2017-0004', '', '', '0000-00-00'),
(25, 'Logitech', 'M-U0026', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'FN-0005', 'Finance Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMAD-2017-0005', '', '', '0000-00-00'),
(26, 'Logitech', 'M-U0026', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'FN-0010', 'Finance Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMAD-2017-0010', '', '', '0000-00-00'),
(27, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'FN-0012', 'Finance Department', 'Unknown', 'Keyboard', '0', 'HRAD & Finance Room', '', 'IMFN-2017-0012', '', '', '0000-00-00'),
(28, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'FN-0013', 'Finance Department', 'Unknown', 'Keyboard', '0', 'HRAD & Finance Room', '', 'IMFN-2017-0013', '', '', '0000-00-00'),
(29, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'FN-0014', 'Finance Department', 'Unknown', 'Keyboard', '0', 'HRAD & Finance Room', '', 'IMFN-2017-0014', '', '', '0000-00-00'),
(30, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'FN-0015', 'Finance Department', 'Unknown', 'Keyboard', '0', 'HRAD & Finance Room', '', 'IMFN-2017-0015', '', '', '0000-00-00'),
(31, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'FN-0016', 'Finance Department', 'Unknown', 'Keyboard', '0', 'HRAD & Finance Room', '', 'IMFN-2017-0016', '', '', '0000-00-00'),
(32, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'FN-0017', 'Finance Department', 'Unknown', 'Keyboard', '0', 'HRAD & Finance Room', '', 'IMFN-2017-0017', '', '', '0000-00-00'),
(33, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMFN-001', 'Finance Department', 'Unknown', 'System Unit', '0', 'HRAD & Finance Room', '', 'IMFN-2017-0037', '', '', '0000-00-00'),
(34, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMFN-005', 'Finance Department', 'Unknown', 'System Unit', '0', 'HRAD & Finance Room', '', 'IMFN-2017-0039', '', '', '0000-00-00'),
(35, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMFN-006', 'Finance Department', 'Unknown', 'System Unit', '0', 'HRAD & Finance Room', '', 'IMFN-2017-0040', '', '', '0000-00-00'),
(36, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMFN-007', 'Finance Department', 'Unknown', 'System Unit', '0', 'HRAD & Finance Room', '', 'IMFN-2017-0041', '', '', '0000-00-00'),
(37, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMFN-011', 'Finance Department', 'Unknown', 'System Unit', '0', 'HRAD & Finance Room', '', 'IMFN-2017-0042', '', '', '0000-00-00'),
(38, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMFN-012', 'Finance Department', 'Unknown', 'System Unit', '0', 'HRAD & Finance Room', '', 'IMFN-2017-0043', '', '', '0000-00-00'),
(39, 'Laptop', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CND5237QSV', 'Finance Department', 'Unknown', 'Laptop', '0', 'HRAD & Finance Room', '', 'IMFN-011', '', '', '0000-00-00'),
(40, 'Laptop', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', '4576YD2', 'Finance Department', 'UAS', 'Laptop', '0', 'HRAD & Finance Room', '', 'IMFN-005', '', '', '0000-00-00'),
(41, 'AOC', 'E2270SWDN', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLFAHA007237', 'Finance Department', 'Unknown', 'Monitor', '0', 'HRAD & Finance Room', '', 'IMFN-2017-0044', '', '', '0000-00-00'),
(42, 'AOC', 'E2270SWDN', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLFAHA000217', 'Finance Department', 'Unknown', 'Monitor', '0', 'HRAD & Finance Room', '', 'IMFN-2017-0045', '', '', '0000-00-00'),
(43, 'HP', 'Probook 440 G2', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CND5237QT3', 'Finance Department', 'Unknown', 'Laptop', '0', 'HRAD & Finance Room', '', 'IMFN-2017-0046', '', '', '0000-00-00');

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
  `Barcode` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance_records_assets`
--

INSERT INTO `finance_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Barcode`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'hfdhdf', 'hfddfhd', '63434.00', 546, '2017-04-25', 'fhdhfsa', '', 'Finance Department', 'Security Bank', 'Security Bank2', '2017-05-24', '546754fafa', '', '', '', '0000-00-00'),
(2, 'hfdhdf', 'hfddfhd', '63434.00', 546, '2017-04-25', 'fhdhfsa', '', 'Finance Department', 'Security Bank', 'Security Bank2', '2017-05-25', '546754fafa', '', '', '', '0000-00-00'),
(3, 'hfdhdf', 'hfddfhd', '63434.00', 546, '2017-04-25', 'fhdhfsa', '', 'Finance Department', 'Security Bank', 'Mouse', '2017-05-26', '546754fafa', '', '', '', '0000-00-00'),
(4, 'hfdhdf', 'hfddfhd', '63434.00', 546, '2017-04-25', 'fhdhfsa', '', 'Finance Department', 'Security Bank', 'Mouse', '2017-05-30', '546754fafa', 'IT Room', '', '', '0000-00-00'),
(5, 'daga', 'gaga', '32.00', 23, '2017-05-30', 'sgadsg', '', 'Finance Department', 'Security Bank', 'Mouse', '2017-05-30', 'adgadg', 'Server Room', '', '', '0000-00-00'),
(6, 'hfdhdf', 'hfddfhd', '63434.00', 546, '2017-04-25', 'fhdhfsa', 'FN-020117-00001', 'Finance Department', 'Security Bank', 'Mouse', '2017-06-09', '546754fafa', 'IT Room', '', '', '0000-00-00');

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
(437, 7, 'has logged in the system at ', '2017-05-31 13:08:48'),
(438, 7, 'has logged out the system at ', '2017-06-01 19:59:46'),
(439, 7, 'has logged in the system at ', '2017-06-05 19:57:10'),
(440, 7, 'has logged out the system at ', '2017-06-05 20:09:48'),
(441, 7, 'has logged in the system at ', '2017-06-05 20:10:30'),
(442, 7, 'has logged in the system at ', '2017-06-05 20:22:02'),
(443, 7, 'has logged out the system at ', '2017-06-06 14:35:57'),
(444, 7, 'has logged in the system at ', '2017-06-06 14:36:41'),
(445, 7, 'has logged out the system at ', '2017-06-07 14:57:54'),
(446, 7, 'has logged in the system at ', '2017-06-07 15:51:24'),
(447, 7, 'has logged in the system at ', '2017-06-09 17:19:16'),
(448, 7, 'has logged in the system at ', '2017-06-09 17:23:54'),
(449, 7, 'has logged in the system at ', '2017-06-09 17:33:55'),
(450, 7, 'has logged in the system at ', '2017-06-09 17:35:20'),
(451, 7, 'has logged in the system at ', '2017-06-12 14:14:35'),
(452, 7, 'has logged in the system at ', '2017-06-12 15:29:33'),
(453, 7, 'has logged in the system at ', '2017-06-12 15:48:40'),
(454, 7, 'has logged in the system at ', '2017-06-13 15:06:40'),
(455, 7, 'has logged in the system at ', '2017-06-22 16:53:26'),
(456, 7, 'has logged out the system at ', '2017-06-22 17:15:03'),
(457, 7, 'has logged in the system at ', '2017-06-22 17:15:14'),
(458, 9, 'has logged in the system at ', '2017-06-23 16:20:19'),
(459, 9, 'has logged out the system at ', '2017-06-26 20:42:37'),
(460, 7, 'has logged in the system at ', '2017-07-03 19:39:20'),
(461, 7, 'has logged in the system at ', '2017-07-17 17:54:30'),
(462, 7, 'has logged in the system at ', '2017-07-17 17:58:33'),
(463, 7, 'has logged in the system at ', '2017-08-01 16:27:55'),
(464, 9, 'has logged in the system at ', '2017-08-07 17:34:53'),
(465, 9, 'has logged out the system at ', '2017-08-07 17:35:18'),
(466, 7, 'has logged in the system at ', '2017-08-23 13:49:21'),
(467, 7, 'has logged in the system at ', '2017-08-23 14:35:15'),
(468, 7, 'has logged in the system at ', '2017-08-24 21:21:03'),
(469, 7, 'has logged in the system at ', '2017-09-06 18:39:40'),
(470, 7, 'has logged out the system at ', '2017-09-06 18:39:56'),
(471, 7, 'has logged in the system at ', '2017-09-06 18:40:30'),
(472, 7, 'has logged out the system at ', '2017-09-06 18:40:55'),
(473, 7, 'has logged in the system at ', '2017-09-06 18:42:10'),
(474, 7, 'has logged out the system at ', '2017-09-06 18:43:41'),
(475, 7, 'has logged in the system at ', '2017-09-08 16:13:40'),
(476, 7, 'has logged in the system at ', '2017-09-29 14:47:01'),
(477, 7, 'has logged in the system at ', '2017-10-05 15:53:40'),
(478, 7, 'has logged out the system at ', '2017-10-05 15:55:51'),
(479, 7, 'has logged in the system at ', '2017-10-05 15:55:56'),
(480, 7, 'has logged out the system at ', '2017-10-05 15:56:36'),
(481, 7, 'has logged in the system at ', '2017-10-06 18:15:56'),
(482, 7, 'has logged out the system at ', '2017-10-06 18:16:48'),
(483, 7, 'has logged in the system at ', '2017-10-27 15:57:07'),
(484, 7, 'has logged out the system at ', '2017-10-27 16:42:51'),
(485, 7, 'has logged in the system at ', '2017-11-05 12:49:31'),
(486, 7, 'has logged in the system at ', '2017-11-05 12:51:07'),
(487, 7, 'has logged in the system at ', '2017-11-29 16:11:09'),
(488, 7, 'has logged in the system at ', '2018-01-25 16:30:48'),
(489, 7, 'has logged in the system at ', '2018-01-28 19:01:35'),
(490, 7, 'has logged in the system at ', '2018-03-14 09:24:44'),
(491, 9, 'has logged in the system at ', '2018-03-14 09:51:53'),
(492, 7, 'has logged in the system at ', '2018-05-13 10:05:55'),
(493, 7, 'has logged out the system at ', '2018-05-13 10:39:27'),
(494, 7, 'has logged in the system at ', '2018-05-13 10:39:33'),
(495, 7, 'has logged in the system at ', '2018-05-18 14:21:31'),
(496, 7, 'has logged out the system at ', '2018-06-04 13:47:02'),
(497, 7, 'has logged in the system at ', '2018-06-04 14:02:21'),
(498, 7, 'has logged in the system at ', '2018-06-05 14:13:26'),
(499, 7, 'has logged out the system at ', '2018-06-05 14:15:33'),
(500, 7, 'has logged in the system at ', '2018-06-25 19:50:16'),
(501, 7, 'has logged in the system at ', '2018-06-25 19:51:33'),
(502, 7, 'has logged in the system at ', '2018-06-26 08:40:02'),
(503, 7, 'has logged out the system at ', '2018-06-26 13:13:41'),
(504, 7, 'has logged in the system at ', '2018-06-30 17:48:31'),
(505, 7, 'has logged in the system at ', '2018-06-30 23:25:01'),
(506, 7, 'has logged in the system at ', '2018-07-01 02:43:29'),
(507, 7, 'has logged in the system at ', '2018-07-01 23:58:50'),
(508, 7, 'has logged in the system at ', '2018-07-02 00:16:18'),
(509, 7, 'has logged in the system at ', '2018-07-02 03:12:56'),
(510, 7, 'has logged in the system at ', '2018-07-02 07:22:09'),
(511, 7, 'has logged in the system at ', '2018-07-02 08:26:09'),
(512, 7, 'has logged in the system at ', '2018-07-02 13:45:28'),
(513, 7, 'has logged in the system at ', '2018-07-02 15:15:42'),
(514, 7, 'has logged in the system at ', '2018-07-02 17:57:49'),
(515, 7, 'has logged in the system at ', '2018-07-02 18:20:58'),
(516, 7, 'has logged in the system at ', '2018-07-02 20:00:30'),
(517, 7, 'has logged out the system at ', '2018-07-02 20:01:58'),
(518, 7, 'has logged in the system at ', '2018-07-03 13:48:43'),
(519, 7, 'has logged in the system at ', '2018-07-06 21:00:02'),
(520, 7, 'has logged out the system at ', '2018-07-07 21:44:42'),
(521, 7, 'has logged in the system at ', '2018-07-07 21:44:46'),
(522, 7, 'has logged in the system at ', '2018-07-11 11:40:23'),
(523, 7, 'has logged out the system at ', '2018-07-11 12:18:16'),
(524, 7, 'has logged in the system at ', '2018-07-11 12:26:31'),
(525, 7, 'has logged in the system at ', '2018-07-11 13:34:23'),
(526, 7, 'has logged out the system at ', '2018-07-11 13:40:44'),
(527, 7, 'has logged in the system at ', '2018-07-11 15:42:23'),
(528, 7, 'has logged in the system at ', '2018-07-11 16:44:13'),
(529, 7, 'has logged in the system at ', '2018-07-13 10:03:39'),
(530, 7, 'has logged out the system at ', '2018-07-13 10:03:56'),
(531, 7, 'has logged in the system at ', '2018-07-13 10:17:57'),
(532, 7, 'has logged in the system at ', '2018-07-13 13:52:03'),
(533, 7, 'has logged in the system at ', '2018-07-13 15:16:05'),
(534, 7, 'has logged out the system at ', '2018-07-13 23:39:59'),
(535, 7, 'has logged in the system at ', '2018-07-13 23:40:02'),
(536, 7, 'has logged in the system at ', '2018-07-16 19:43:56'),
(537, 7, 'has logged in the system at ', '2018-07-21 07:32:07'),
(538, 7, 'has logged out the system at ', '2018-07-21 07:32:10');

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
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `barcode_tag` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_department`
--

INSERT INTO `hr_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `Invoice_No`, `Location`, `comment`, `barcode_tag`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'SAMSUNG', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'NFL3HMDB700205D', 'HR Department', 'Total Quality Machine', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMHR-2017-014', '', '', '0000-00-00'),
(2, 'AOC', 'E2270S', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'GDLG1HA007248', 'HR Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMHR-2017-015', '', '', '0000-00-00'),
(3, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', '3CQ5123PJD', 'HR Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMHR-2017-016', '', '', '0000-00-00'),
(4, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', '3CQ5110PR1', 'HR Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMHR-2017-017', '', '', '0000-00-00'),
(5, 'AOC', 'E2270S', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'GDLG1HAD07247', 'HR Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMHR-2017-018', '', '', '0000-00-00'),
(6, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'MRCQHYCDB00544R', 'HR Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMHR-2017-019', '', '', '0000-00-00'),
(7, 'AOC', 'I2280SWD', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'AFAH29A016976', 'HR Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMHR-2017-020', '', '', '0000-00-00'),
(8, 'LENOVO', '300-14ISK', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'PF0DUG83', 'HR Department', 'Unknown', 'Laptop', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMHR-2017-0029', '', '', '0000-00-00'),
(9, 'LENOVO', 'IMHRW7', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'PF01DN8', 'HR Department', 'Unknown', 'Laptop', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMHR-2017-030', '', '', '0000-00-00'),
(10, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'CND5335YK3', 'HR Department', 'Unknown', 'Laptop', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMHR-2017-031', '', '', '0000-00-00'),
(11, 'Logitech', 'M-U0026', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HR-0001', 'HR Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0001', '', '', '0000-00-00'),
(12, 'Logitech', 'M-U0026', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HR-0002', 'HR Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0002', '', '', '0000-00-00'),
(13, 'Logitech', 'M-U0026', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HR-0003', 'HR Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0003', '', '', '0000-00-00'),
(14, 'Logitech', 'M-U0026', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HR-0005', 'HR Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0005', '', '', '0000-00-00'),
(15, 'Logitech', 'M-U0026', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HR-0006', 'HR Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0006', '', '', '0000-00-00'),
(16, 'Logitech', 'M-U0026', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HR-0007', 'HR Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0007', '', '', '0000-00-00'),
(17, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HR-0009', 'HR Department', 'Unknown', 'Keyboard', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0009', '', '', '0000-00-00'),
(18, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HR-0010', 'HR Department', 'Total Quality Machine', 'Keyboard', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0010', '', '', '0000-00-00'),
(19, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HR-0011', 'HR Department', 'Unknown', 'Keyboard', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0011', '', '', '0000-00-00'),
(20, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HR-0012', 'HR Department', 'Unknown', 'Keyboard', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0012', '', '', '0000-00-00'),
(21, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HR-0013', 'HR Department', 'Unknown', 'Keyboard', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0013', '', '', '0000-00-00'),
(22, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMHR-0022', 'HR Department', 'Unknown', 'System Unit', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0022', '', '', '0000-00-00'),
(23, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMHR-0023', 'HR Department', 'Unknown', 'System Unit', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0023', '', '', '0000-00-00'),
(24, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMHR-0024', 'HR Department', 'Unknown', 'System Unit', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0024', '', '', '0000-00-00'),
(25, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMHR-0025', 'HR Department', 'Unknown', 'System Unit', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0025', '', '', '0000-00-00'),
(27, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AD-0002', 'HR Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMAD-2017-0002', '', '', '0000-00-00'),
(28, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AD-0001', 'HR Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMAD-2017-0001', '', '', '0000-00-00'),
(29, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AD-0003', 'HR Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMAD-2017-0003', '', '', '0000-00-00'),
(30, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AD-0004', 'HR Department', 'Unknown', 'Mouse', '0', 'HRAD & Finance Room', '', 'IMAD-2017-0004', '', '', '0000-00-00'),
(31, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AD-0009', 'HR Department', 'Unknown', 'Keyboard', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0009', '', '', '0000-00-00'),
(32, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMAD-0020', 'HR Department', 'Unknown', 'System Unit', '0', 'HRAD & Finance Room', '', 'IMAD-2017-0020', '', '', '0000-00-00'),
(33, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMAD-0021', 'HR Department', 'Unknown', 'System Unit', '0', 'HRAD & Finance Room', '', 'IMAD-2017-0021', '', '', '0000-00-00'),
(34, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMAD-0023', 'HR Department', 'Unknown', 'System Unit', '0', 'HRAD & Finance Room', '', 'IMAD-2017-0023', '', '', '0000-00-00'),
(35, 'Viewsonic', 'VS15560', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TVR160561829', 'HR Department', 'Unknown', 'Monitor', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0035', '', '', '0000-00-00'),
(36, 'Viewsonic', 'VS15560', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TVR160561823', 'HR Department', 'Unknown', 'Monitor', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0036', '', '', '0000-00-00'),
(37, 'HPP', 'Probook5460B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CNU1480CMX', 'HR Department', 'Unknown', 'Laptop', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0037', '', '', '0000-00-00'),
(38, 'HP', 'Probook 440 G2', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CND5335Y3', 'HR Department', 'Unknown', 'Laptop', '0', 'HRAD & Finance Room', '', 'IMHR-2017-0038', '', '', '0000-00-00'),
(39, 'Lenovo', 'T440', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'PC04A98A', 'HR Department', 'Unknown', 'Laptop', '0', 'HRAD & Finance Room', '', 'IMAD-2017-0025', '', '', '0000-00-00'),
(40, 'LENOVO', '300-14ISK', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'PF0DUE4G', 'HR Department', 'Unknown', 'Laptop', '0', 'HRAD & Finance Room', 'Rowena Torno', 'IMHR-2017-0032', '', '', '0000-00-00');

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
  `Barcode` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_records_assets`
--

INSERT INTO `hr_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Barcode`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'fsfa', 'sfa', '2.00', 23, '2017-05-30', 'sfasf', '', 'HR Department', 'HR', 'fsFASFAS', '2017-05-30', '', 'Board Room', '', '', '0000-00-00'),
(2, 'fsfa', 'sfa', '2.00', 23, '2017-05-30', 'sfasf', '', 'HR Department', 'HR', 'fsFASFAS', '2017-05-30', '', 'Board Room', '', '', '0000-00-00'),
(3, 'fsfa', 'sfa', '2.00', 23, '2017-05-30', 'sfasfk', 'HR-010217-00001', 'HR Department', 'HR', 'fsFASFAS', '2017-06-09', '', 'Board Room', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `integration_department`
--

CREATE TABLE `integration_department` (
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
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `barcode_tag` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `integration_department`
--

INSERT INTO `integration_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `Invoice_No`, `Location`, `comment`, `barcode_tag`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'AOC', 'E2280SWDN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'AEB80635Z02282', 'Integration Department', 'AREN Computer Services', 'Monitor', '0', 'Integration Room', '', 'IMIN-2017-0001', '', '', '0000-00-00'),
(2, 'AOC', 'E2280SWDN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'AEB80639Z02201', 'Integration Department', 'AREN Computer Services', 'Monitor', '0', 'Integration Room', '', 'IMIN-2017-0002', '', '', '0000-00-00'),
(3, 'AOC', 'E2280SWDN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'AEB80635Z02548', 'Integration Department', 'AREN Computer Services', 'Monitor', '0', 'Integration Room', '', 'IMIN-2017-0003', '', '', '0000-00-00'),
(4, 'AOC', 'E2280SWDN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'AEB80639Z02861', 'Integration Department', 'AREN Computer Services', 'Monitor', '0', 'Integration Room', '', 'IMIN-2017-0004', '', '', '0000-00-00'),
(5, 'AOC', 'E2270S', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'GDLG1HA007068', 'Integration Department', 'AREN Computer Services', 'Monitor', '0', 'Integration Room', '', 'IMIN-2017-0005', '', '', '0000-00-00'),
(6, 'AOC', 'E2280SWDN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'AEB580635Z01481', 'Integration Department', 'AREN Computer Services', 'Monitor', '0', 'Integration Room', '', 'IMIN-2017-0006', '', '', '0000-00-00'),
(7, 'AOC', 'E2280SWDN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'AEB80639Z04551', 'Integration Department', 'AREN Computer Services', 'Monitor', '0', 'Integration Room', '', 'IMIN-2017-0007', '', '', '0000-00-00'),
(8, 'AOC', 'E2280SWDN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'AEB80639Z04586', 'Integration Department', 'AREN Computer Services', 'Monitor', 'UNKNOWN', 'Integration Room', '', 'IMIN-2017-0008', '', '', '0000-00-00'),
(9, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'PF0PUFK9', 'Integration Department', 'AREN Computer Services', 'Laptop', 'UNKNOWN', 'Integration Room', '', 'IMIN-2018-0009', '', '', '0000-00-00'),
(10, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'PF0DUHUH', 'Integration Department', 'AREN Computer Services', 'Laptop', 'UNKNOWN', 'Integration Room', '', 'IMIN-2018-0010', '', '', '0000-00-00'),
(11, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'H2G6YD2', 'Integration Department', 'AREN Computer Services', 'Laptop', 'UNKNOWN', 'Integration Room', '', 'IMIN-2018-0011', '', '', '0000-00-00'),
(12, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', '91D6YD2', 'Integration Department', 'AREN Computer Services', 'Laptop', 'UNKNOWN', 'Integration Room', '', 'IMIN-2018-0012', '', '', '0000-00-00'),
(13, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', '748JWJ2', 'Integration Department', 'AREN Computer Services', 'Laptop', 'UNKNOWN', 'Integration Room', '', 'IMIN-2018-0013', '', '', '0000-00-00'),
(14, 'AOC', 'E2270SWDN', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA000264', 'Integration Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMIN-2017-0014', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `integration_records_assets`
--

CREATE TABLE `integration_records_assets` (
  `Product_id` int(11) NOT NULL,
  `Product_name` varchar(100) NOT NULL,
  `Product_model` varchar(100) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Purchase_date` date NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `Barcode` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` varchar(100) NOT NULL,
  `prod_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `barcode_tag` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_department`
--

INSERT INTO `it_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `Invoice_No`, `Location`, `comment`, `barcode_tag`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'AOC', 'E2270S', '0.00', 'default.gif', 0, 1, 0, 0, '2007-01-01', 'GDLG1HA007226', 'IT Department', 'Total Quality Machine', 'Monitor', 'UNKNOWN', 'IT Room', '', 'IMIT-2017-0001', '', '', '0000-00-00'),
(2, 'ViewSonic', 'vs15560', '0.00', 'default.gif', 0, 1, 0, 0, '2007-01-01', 'TVR160561838', 'IT Department', 'Unknown', 'Monitor', '0', 'IT Room', '', 'IMIT-2017-0006', '', '', '0000-00-00'),
(3, 'AOC', 'E22505wd', '0.00', 'default.gif', 0, 1, 0, 0, '2007-01-01', 'HKNEB1A000854', 'IT Department', 'Total Quality Machine', 'Monitor', 'UNKNOWN', 'IT Room', '', 'IMIT-2017-0002', '', '', '0000-00-00'),
(4, 'AOC', 'e22505wd', '0.00', 'default.gif', 0, 1, 0, 0, '2007-01-01', 'HKNEB1A000905', 'IT Department', 'Total Quality Machine', 'Monitor', 'UNKNOWN', 'IT Room', '', 'IMIT-2017-0003', '', '', '0000-00-00'),
(5, 'SAMSUNG', '32230', '0.00', 'default.gif', 0, 1, 0, 0, '2007-01-01', 'NEJ6HMDZA00160W', 'IT Department', 'Total Quality Machine', 'Monitor', 'UNKNOWN', 'IT Room', '', 'IMIT-2017-0004', '', '', '0000-00-00'),
(6, 'Viewsonic', 'VS15560', '0.00', 'default.gif', 0, 1, 0, 0, '2007-01-01', 'TVR14100414', 'IT Department', 'Total Quality Machine', 'Monitor', '0', 'IT Room', '', 'IMIT-2017-0005', '', '', '0000-00-00'),
(7, 'SAMSUNG', 'SAMSUNG', '0.00', 'default.gif', 0, 1, 0, 0, '2007-01-01', 'CM17H9FSB04865Y', 'IT Department', 'Total Quality Machine', 'Monitor', 'Unknown', 'IT Room', '', 'IMIT-2017-0020', '', '', '0000-00-00'),
(8, 'SAMSUNG', 'SAMSUNG', '0.00', 'default.gif', 0, 1, 0, 0, '2007-01-01', 'CM17H9FS729751W', 'IT Department', 'Unknown', 'Monitor', '', 'IT Room', '', 'IMIT-2017-0021', '', '', '0000-00-00'),
(9, 'SAMSUNG', 'SAMSUNG', '0.00', 'default.gif', 0, 1, 0, 0, '2007-01-01', 'CM17H9FS827544R', 'IT Department', 'Unknown', 'Monitor', '', 'IT Room', '', 'IMIT-2017-0022', '', '', '0000-00-00'),
(10, 'SAMSUNG', 'SAMSUNG', '0.00', 'default.gif', 0, 1, 0, 0, '2007-01-01', 'CM17H9FS642051V', 'IT Department', 'Unknown', 'Monitor', '', 'IT Room', '', 'IMIT-2017-0023', '', '', '0000-00-00'),
(11, 'Lenovo', 'IMHRW7', '0.00', 'default.gif', 0, 1, 0, 0, '2014-01-01', 'PF01PN3', 'IT Department', 'Unknown', 'Laptop', 'UNKNOWN', 'IT Room', '', 'IMIT-2017-0024', '', '', '0000-00-00'),
(12, 'Dell', 'Inspiron I4-3467', '43700.00', 'default.gif', 0, 1, 0, 0, '2018-01-17', '25HTSJ2', 'IT Department', 'AREN Computer Services', 'Laptop', '5331', 'IT Room', 'IT Spare', 'IMIT-2017-0030', '', '', '0000-00-00'),
(14, 'Dell', 'Inspiron I4-3467', '43700.00', 'default.gif', 0, 1, 0, 0, '2018-01-17', 'C5HTSJ2', 'IT Department', 'AREN Computer Services', 'Laptop', '5331', 'IT Room', 'IT Spare', 'IMIT-2017-0031', '', '', '0000-00-00'),
(15, 'Laptop', 'Lenovo', '25000.00', 'default.gif', 0, 1, 0, 0, '2018-03-12', 'PF0FPYBW', 'IT Department', 'AREN Computer Services', 'Laptop', 'IT-001', 'Meeting Room', 'Hock Kim', 'impd-2017-0005', '', '', '0000-00-00'),
(16, 'Catalyst 2960', 'Catalyst 2960', '125551.00', 'default.gif', 0, 1, 0, 0, '2018-02-22', 'FCW2204A2GB', 'IT Department', 'UAS', 'Switch', '4457', 'Server Room', '', 'IMIT-2017-0033', '', '', '0000-00-00'),
(18, 'Cisco', 'Catalyst 2960', '0.00', 'default.gif', 0, 1, 0, 0, '0018-02-22', 'FCW2204A2FN', 'IT Department', 'UAS', 'Switch', '4457', 'Server Room', '', 'IMIT-2017-0034', '', '', '0000-00-00'),
(19, 'Cisco', 'Catalyst', '0.00', 'default.gif', 0, 1, 0, 0, '2018-01-01', 'FDO2116E34J', 'IT Department', 'UAS', 'Switch', '0', 'Server Room', '', 'IMIT-2018-0035', '', '', '0000-00-00'),
(20, 'Cisco', 'Catalyst', '0.00', 'default.gif', 0, 1, 0, 0, '2018-01-12', 'FDO2116E33H', 'IT Department', 'UAS', 'Switch', '0', 'Server Room', '', 'IMIT-2018-0036', '', '', '0000-00-00'),
(21, 'Logitech', 'k120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMIT-0013', 'IT Department', 'Unknown', 'Keyboard', '0', 'IT Room', '', 'IMIT-2017-0013', '', '', '0000-00-00'),
(22, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMIT-0017', 'IT Department', 'Unknown', 'System Unit', '0', 'IT Room', '', 'IMIT-2017-0017', '', '', '0000-00-00'),
(23, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMIT-0015', 'IT Department', 'Unknown', 'System Unit', '0', 'IT Room', '', 'IMIT-2017-0015', '', '', '0000-00-00'),
(24, 'Logitech', 'k120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMIT-0012', 'IT Department', 'Unknown', 'Keyboard', '0', 'IT Room', '', 'IMIT-2017-0012', '', '', '0000-00-00'),
(25, 'Logitech', 'k120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMIT-0011', 'IT Department', 'Unknown', 'Keyboard', '0', 'IT Room', '', 'IMIT-2017-0011', '', '', '0000-00-00'),
(26, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMIT-0016', 'IT Department', 'Unknown', 'System Unit', '0', 'IT Room', '', 'IMIT-2017-0016', '', '', '0000-00-00'),
(27, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMIT-0019', 'IT Department', 'Unknown', 'System Unit', '0', 'IT Room', '', 'IMIT-2017-0019', '', '', '0000-00-00'),
(28, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMIT-0018', 'IT Department', 'Unknown', 'System Unit', '0', 'IT Room', '', 'IMIT-2017-0018', '', '', '0000-00-00'),
(29, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IT-0014', 'IT Department', 'Unknown', 'Keyboard', '0', 'IT Room', '', 'IMIT-2017-0014', '', '', '0000-00-00');

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
  `Barcode` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_records_assets`
--

INSERT INTO `it_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Barcode`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`, `status`, `assigned_to`, `assigned_date`) VALUES
(3, 'Mouse', 'Logitech', '3.00', 3, '2017-03-10', '0978551233', '', 'IT Department', 'Techno Trend', 'Mouse', '2017-05-29', '01-001', '', '', '', '0000-00-00'),
(5, 'Mouse', 'Logitech', '3.00', 3, '2017-03-10', '0978551233', '', 'IT Department', 'Techno Trend', 'Mouse', '2017-05-29', '01-001', '', '', '', '0000-00-00'),
(9, 'Mouse', 'Logitech', '3.00', 3, '2017-03-10', '0978551233', '', 'IT Department', 'Techno Trend', 'Mouse', '2017-05-30', '01-001', 'IT Room', '', '', '0000-00-00'),
(10, 'Crimping Tool', 'Trendnet', '1500.00', 1, '2017-04-01', 'UN1648T680172', '', 'IT Department', 'GLRTA Computer Corner Co. Ltd', 'Tools', '2017-05-30', '01-002', 'Server Room', '', '', '0000-00-00'),
(12, 'Mouse', 'Logitech', '3.00', 3, '2017-03-10', '0978551233', '', 'IT Department', 'Techno Trend', 'Mouse', '2017-06-05', '01-001', 'IT Room', '', '', '0000-00-00'),
(14, 'Crimping Tool', 'Trendnet', '1500.00', 1, '2017-04-01', 'UN1648T680173', 'IT-020617-00001', 'IT Department', 'GLRTA Computer Corner Co. Ltd', 'Tools', '2017-06-09', '01-006', 'IT Room', '', '', '0000-00-00'),
(15, 'AOC Monitor', 'AOC I2280SWD/71', '5750.00', 2, '2017-05-22', '', '', 'IT Department', 'Aren Computers', 'Monitor', '2017-06-12', '4988', 'IT Room', '', '', '0000-00-00'),
(17, 'Crimping Tool', 'Trendnet', '1500.00', 1, '2017-04-01', 'UN1648T680173', 'IT-020617-00001', 'IT Department', 'GLRTA Computer Corner Co. Ltd', 'Tools', '2017-07-03', '01-006', 'IT Room', '', '', '0000-00-00'),
(18, 'AOC', 'AOC', '0.00', 1, '2007-01-01', 'GDLG1HA007226', 'IMIT-2017-0001', 'IT Department', 'Total Quality Machine', 'Monitor', '2018-03-14', '', 'IT Room', '', '', '0000-00-00'),
(19, 'Laptop', 'Lenovo', '25000.00', 1, '2018-03-12', 'PF0FPYBW', 'impd-2017-0005', 'IT Department', 'AREN Computer Services', 'Laptop', '2018-03-14', 'IT-001', 'Meeting Room', '', '', '0000-00-00'),
(20, 'AOC', 'AOC', '0.00', 1, '2007-01-01', 'GDLG1HA007226', 'IMIT-2017-0001', 'IT Department', 'Total Quality Machine', 'Monitor', '2018-05-13', '', 'IT Room', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `management_department`
--

CREATE TABLE `management_department` (
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
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `barcode_tag` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `management_department`
--

INSERT INTO `management_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `Invoice_No`, `Location`, `comment`, `barcode_tag`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', '485JWJ2', '', 'AREN Computer Services', 'Laptop', 'UNKNOWN', 'Pantry', '', 'IMMA-2018-0001', '', '', '0000-00-00'),
(2, 'Dell', ' XPS 13 9350', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'GS55272  ', '', 'AREN Computer Services', 'Laptop', 'unknown', 'Pantry', '', 'IMMA-2018-0002', '', '', '0000-00-00'),
(3, 'unknown', 'unknown', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', '8T8XP32', '', 'AREN Computer Services', 'Laptop', 'unknown', 'Pantry', '', 'IMMA-2018-0003', '', '', '0000-00-00');

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
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `barcode_tag` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marketing_department`
--

INSERT INTO `marketing_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `Invoice_No`, `Location`, `comment`, `barcode_tag`, `status`, `assigned_to`, `assigned_date`) VALUES
(37, 'a', 'sdgs', '3.00', 'Penguins.jpg', 0, 12, 0, 0, '2017-04-06', '1', 'IT Department', 'Total Quality Machine', 'Lemonade', '', '', '', '', '', '', '0000-00-00'),
(38, 'jtyjyj', 'Hrt', '45.00', 'Tulips.jpg', 0, 54, 0, 0, '2017-04-28', 'uhrtr', 'Marketing Department', 'Marketing Supplier2', 'Abenson', '01-001', 'Production Room', '', 'fsafsafgas', '', '', '0000-00-00'),
(39, 'sdasd', 'sdsa', '22.00', 'default.gif', 0, 2, 0, 0, '2017-05-30', 'sda', 'Marketing Department', 'Marketing Supplier1', 'Marketing1', 'sada', 'Training Room', '', '453245624', '', '', '0000-00-00'),
(40, 'afa', 'fafa', '432.00', 'default.gif', 0, 342, 0, 0, '0000-00-00', 'asfafa', 'Marketing Department', 'Marketing Supplier1', 'Marketing1', 'faf', 'IT Room', '', 'fsfa', '', '', '0000-00-00'),
(41, 'Samsung Monitor', 'Samsung LU28E59DS/XP 28\" Ultra HD Monitor', '21500.00', 'default.gif', 0, 1, 0, 0, '2018-07-10', '0MQJHTPK100168', 'Marketing Department', 'Techno Trend', 'Monitor', '0', 'Marketing Room', 'For Teemo', 'IMMKT-0018', '', '', '0000-00-00');

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
  `Barcode` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marketing_records_assets`
--

INSERT INTO `marketing_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Barcode`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'jtyjyj', 'Hrt', '45.00', 54, '2017-04-28', 'uhrtr', '', 'Marketing Department', 'Marketing Supplier2', 'Abenson', '2017-05-25', '', '', '', '', '0000-00-00'),
(2, 'jtyjyj', 'Hrt', '45.00', 54, '2017-04-28', 'uhrtr', '', 'Marketing Department', 'Marketing Supplier2', 'Abenson', '2017-05-30', '', 'Production Room', '', '', '0000-00-00'),
(3, 'sdasd', 'sdsa', '22.00', 2, '2017-05-30', 'sda', '', 'Marketing Department', 'Marketing Supplier1', 'Marketing1', '2017-05-30', '', 'IT Room', '', '', '0000-00-00'),
(4, 'jtyjyj', 'Hrt', '45.00', 54, '2017-04-28', 'uhrtr', 'fsafsafgas', 'Marketing Department', 'Marketing Supplier2', 'Abenson', '2017-06-09', '01-001', 'Production Room', '', '', '0000-00-00');

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
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `barcode_tag` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `production_department`
--

INSERT INTO `production_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `Invoice_No`, `Location`, `comment`, `barcode_tag`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'AOC', 'E2270S', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLFAHA00352', 'Production Department', 'Unknown', 'Monitor', '000000', 'Sportsbook Area', '', 'IMPD-2017-0001', '', '', '0000-00-00'),
(2, 'AOC', 'E2270S', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA001580', 'Production Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMPD-2017-0002', '', '', '0000-00-00'),
(3, 'AOC', 'E2270S', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLFAHA003450', 'Production Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMPD-2017-0006', '', '', '0000-00-00'),
(4, 'LENOVO', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', ' 458JWJ2', 'Production Department', 'Unknown', 'Laptop', '0', 'Sportsbook Area', '', 'IMPD-2017-0017', '', '', '0000-00-00'),
(5, 'LENOVO', '', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'D48JWJ2', 'Production Department', 'Unknown', 'Laptop', '0', 'Sportsbook Area', '', 'IMIT-2017-0018', '', '', '0000-00-00'),
(6, 'Dell', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2018-01-01', '4L3JWJ2', 'Production Department', 'AREN Computer Services', 'Laptop', '0', 'Sportsbook Area', 'ROI QA', 'IMQA-2018-0001', '', '', '0000-00-00'),
(7, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMPD-0011', 'Production Department', 'Unknown', 'Mouse', '0', 'Sportsbook Area', '', 'IMPD-2017-0011', '', '', '0000-00-00'),
(8, 'AOC', 'I2280SWD', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AFAH19A009529', 'Production Department', 'Unknown', 'Monitor', '0', 'IT Room', '', 'IMPD-2017-0004', '', '', '0000-00-00'),
(9, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMPD-0010', 'Production Department', 'Unknown', 'System Unit', 'UNKNOWN', 'Sportsbook Area', '', 'IMPD-2017-0010', '', '', '0000-00-00'),
(10, 'Samsung', 'S22C350H', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZYDQHTPD600125Z', 'Production Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMPD-2017-0019', '', '', '0000-00-00'),
(11, 'Lenovo', '300', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'PFDS1ZZ', 'Production Department', 'Unknown', 'Laptop', '0', 'Sportsbook Area', '', 'IMPD-2017-0020', '', '', '0000-00-00'),
(12, 'AOC', '12280SWD', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AFAH29A0016957', 'Production Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMPD-2017-0021', '', '', '0000-00-00'),
(13, 'Dell', 'Inspiron 14-3467', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HH4XXD2', 'Production Department', 'AREN Computer Services', 'Laptop', '0', 'Sportsbook Area', '', 'IMPD-2017-0022', '', '', '0000-00-00'),
(14, 'Dell', 'Inspiron I4-3467', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', '2F4XXD2', 'Production Department', 'Unknown', 'Laptop', '0', 'Sportsbook Area', '', 'IMQA-2018-0003', '', '', '0000-00-00'),
(15, 'AOC', 'E2270SWDN', '0.00', 'default.gif', 0, 0, 0, 0, '2017-01-01', 'GDLF9HA000163', 'Production Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMQA-2018-0004', '', '', '0000-00-00'),
(16, 'DELL', 'Inspiron I4-3467', '1.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'G48JWJ2', 'Production Department', 'Unknown', 'Laptop', '0', 'Sportsbook Area', '', 'IMQA-2018-0002', '', '', '0000-00-00');

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
  `Barcode` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `production_records_assets`
--

INSERT INTO `production_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Barcode`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'sdfsdf', 'Gdgdgs', '453.00', 445, '2017-04-24', '53', '', 'Production Department', 'Production Supplier2', 'Lemonade', '2017-05-30', '', 'Board Room', '', '', '0000-00-00'),
(2, 'sdgsdgsd', '2as', '2.00', 2, '2017-05-30', 'sda', '', 'Production Department', 'Production Supplier1', 'Lemonade', '2017-05-30', '', 'Sales Room', '', '', '0000-00-00'),
(3, 'sdfsdf', 'Gdgdgs', '453.00', 445, '2017-04-24', '53', '243243', 'Production Department', 'Production Supplier2', 'Lemonade', '2017-06-09', '423', 'Board Room', '', '', '0000-00-00');

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
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `barcode_tag` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_department`
--

INSERT INTO `sales_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `Invoice_No`, `Location`, `comment`, `barcode_tag`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'SAMSUNG', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZUL9H4LC200153X', 'Sales Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sales Room', '', 'IMSD-2017-001', '', '', '0000-00-00'),
(2, 'SAMSUNG', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'NFL3HMDB700348J', 'Sales Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sales Room', '', 'IMSD-2017-002', '', '', '0000-00-00'),
(3, '', '', '0.00', 'default.gif', 0, 0, 0, 0, '0000-00-00', '', 'Sales Department', '', '', '', '', '', '', '', '', '0000-00-00'),
(4, 'VIEWSONIC', 'VS15560', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'TVR141201139', 'Sales Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sales Room', '', 'IMSD-2017-003', '', '', '0000-00-00'),
(5, 'SAMSUNG', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'NEJ6HMDZA00086T', 'Sales Department', 'Unknown', 'Monitor', 'UNKNOWN', 'HRAD & Finance Room', '', 'IMSD-2017-004', '', '', '0000-00-00'),
(6, 'Logitech', 'k120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSD-003', 'Sales Department', 'Unknown', 'Keyboard', '0', 'IT Room', '', 'IMSD-2017-0013', '', '', '0000-00-00'),
(7, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSD-0014', 'Sales Department', 'Unknown', 'System Unit', '0', 'Sales Room', '', 'IMSD-2017-0014', '', '', '0000-00-00'),
(8, 'Laptop', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'YB04464833', 'Sales Department', 'Unknown', 'Laptop', '0', 'Sales Room', '', 'IMSD-2017-0011', '', '', '0000-00-00'),
(9, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'WS-0011', 'Sales Department', 'Unknown', 'Keyboard', '0', 'Sales Room', '', 'IMWS-2017-0011', '', '', '0000-00-00'),
(10, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'WS-0018', 'Sales Department', 'Unknown', 'Keyboard', '0', 'Sales Room', '', 'IMWS-2017-0018', '', '', '0000-00-00'),
(11, 'Dell Inspiron', 'Dell Inspiron 7373 2 in 1', '62500.00', 'default.gif', 0, 1, 0, 0, '2018-07-11', '33FYSJ2', 'Sales Department', 'AREN Computer Services', 'Laptop', '5593', 'Sales Room', 'For  Charles Chen', 'IMSD-2018-0013', '', '', '0000-00-00'),
(12, 'Dell Inspiron', 'Dell Inspiron 7373 2 in 1', '62500.00', 'default.gif', 0, 1, 0, 0, '2018-07-11', 'C1FYSJ2', 'Sales Department', 'AREN Computer Services', 'Laptop', '7636', 'Sales Room', 'For Lee Sai Hong', 'IMSD-2018-0014', '', '', '0000-00-00');

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
  `Barcode` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_records_assets`
--

INSERT INTO `sales_records_assets` (`Product_id`, `Product_name`, `Product_model`, `Price`, `Quantity`, `Purchase_date`, `Serial`, `Barcode`, `Department`, `Supplier`, `Category`, `Date`, `Invoice_No`, `Location`, `status`, `assigned_to`, `assigned_date`) VALUES
(7, 'dsads', 'sda', '11.00', 12, '2017-05-30', 'sdas', '', 'Sales Department', 'Sales', 'Sales Category', '2017-05-30', 'sdas', 'Production Room', '', '', '0000-00-00'),
(10, 'fsfas', 'sadas', '2.00', 2, '2017-05-30', 'sfaf', '54425252', 'Sales Department', 'Sales', 'Sales Category', '2017-06-09', 'safasfsfas', 'IT Room', '', '', '0000-00-00');

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
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `barcode_tag` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sportsbook_department`
--

INSERT INTO `sportsbook_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `Invoice_No`, `Location`, `comment`, `barcode_tag`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'AOC', 'E22705', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA000258', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0137', '', '', '0000-00-00'),
(2, 'Samsung', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC300567H', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0138', '', '', '0000-00-00'),
(3, 'Samsung', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC300564E', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0139', '', '', '0000-00-00'),
(4, 'Samsung', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC400798M', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0140', '', '', '0000-00-00'),
(5, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFXH4C6000957J', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0141', '', '', '0000-00-00'),
(6, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMCB900042F', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0142', '', '', '0000-00-00'),
(7, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMJZC00252R', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0143', '', '', '0000-00-00'),
(8, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMBB600557D', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0144', '', '', '0000-00-00'),
(9, 'AOC', 'E22805WD', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AEB80639Z02210', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0145', '', '', '0000-00-00'),
(10, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMABA00028Y', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0146', '', '', '0000-00-00'),
(11, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMCB800075X', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0147', '', '', '0000-00-00'),
(12, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMBB700600N', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0148', '', '', '0000-00-00'),
(13, 'Viewsonic', 'VS15560', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TVR141400422', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0149', '', '', '0000-00-00'),
(14, 'Viewsonic', 'VS15560', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TVR141400407', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0150', '', '', '0000-00-00'),
(15, 'Viewsonic', 'VS15560', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TVR141400446', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0151', '', '', '0000-00-00'),
(16, 'Samsung', '22335W', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CM22HMASA13302L', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0152', '', '', '0000-00-00'),
(17, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMJZ00136P', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0153', '', '', '0000-00-00'),
(18, 'Samsung', '22335W', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CM22HMBS901435K', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0154', '', '', '0000-00-00'),
(19, 'Samsung', 'B2030', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEDQHMAZA00836E', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0155', '', '', '0000-00-00'),
(20, 'Samsung', 'B2030', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEDQHMA2A00744X', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0156', '', '', '0000-00-00'),
(21, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMBB700598R', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0157', '', '', '0000-00-00'),
(22, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMJZC00098R', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0158', '', '', '0000-00-00'),
(23, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMJZC00329P', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0158', '', '', '0000-00-00'),
(24, 'Samsung', 'P2270G', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'EF22HMGS00005D', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0160', '', '', '0000-00-00'),
(25, 'Samsung', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC2001044', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0161', '', '', '0000-00-00'),
(26, 'Samsung', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC200139B', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0162', '', '', '0000-00-00'),
(27, 'Samsung', 'P2270G', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'EF22HMGS900034W', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0163', '', '', '0000-00-00'),
(28, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC60073D', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0164', '', '', '0000-00-00'),
(29, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMBB700551V', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0165', '', '', '0000-00-00'),
(30, 'Samsung', '22335W', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CM22HMFS700674F', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0166', '', '', '0000-00-00'),
(31, 'AOC', 'E22705', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA000157', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0167', '', '', '0000-00-00'),
(32, 'Samsung', 'S20C300BL', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZYDQHTND500472X', 'Sportsbook Department', 'AREN Computer Services', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0168', '', '', '0000-00-00'),
(33, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMDB700457D', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0169', '', '', '0000-00-00'),
(34, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMDB700334H', 'Sportsbook Department', 'AREN Computer Services', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0170', '', '', '0000-00-00'),
(35, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMD13700339L', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0171', '', '', '0000-00-00'),
(36, 'AOC', 'I22805WD', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AFAH19A010504', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0172', '', '', '0000-00-00'),
(37, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'N3J6HMJZC00118J', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0173', '', '', '0000-00-00'),
(38, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'N3J6HMJZC00188R', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0174', '', '', '0000-00-00'),
(39, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'N3J6HMJZC00115V', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0175', '', '', '0000-00-00'),
(40, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC601369N', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0176', '', '', '0000-00-00'),
(41, 'Samsung', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC600899D', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0177', '', '', '0000-00-00'),
(42, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC601235V', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0178', '', '', '0000-00-00'),
(43, 'Samsung', 'B2030', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEDQHMA2A00949D', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0179', '', '', '0000-00-00'),
(44, 'AOC', 'E22505WD', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HKNEB1A000533', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0180', '', '', '0000-00-00'),
(45, 'Samsung', 'P2270G', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'EF22HMGS700722K', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0181', '', '', '0000-00-00'),
(46, 'Samsung', 'P2250', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'LR20HMBZ10076R', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0182', '', '', '0000-00-00'),
(47, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMJ7400215X', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0183', '', '', '0000-00-00'),
(48, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'MRCQHYCDB00461F', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0184', '', '', '0000-00-00'),
(49, 'Samsung', 'B2030', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEDQHMA2A00911X', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0185', '', '', '0000-00-00'),
(50, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMHZC00006L', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0186', '', '', '0000-00-00'),
(51, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMHZC00035X', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0187', '', '', '0000-00-00'),
(52, 'Samsung', 'P2270G', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'EF22HMGS900022X', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0188', '', '', '0000-00-00'),
(53, 'Samsung', 'P2250', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'LR22HMBZ200301M', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0189', '', '', '0000-00-00'),
(54, 'Samsung', 'P2250', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'LR22HMBZ200330A', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0190', '', '', '0000-00-00'),
(55, 'AOC', 'E22805WD', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AEB80639Z02227', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0191', '', '', '0000-00-00'),
(56, 'Samsung', '22835W', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CM22HMA817266B', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0192', '', '', '0000-00-00'),
(57, 'Samsung', 'P2250', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'LR22HMBZ200271W', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0193', '', '', '0000-00-00'),
(58, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMCZB00235A', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0194', '', '', '0000-00-00'),
(59, 'Viewsonic', 'VS15451', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TSN135201762', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0195', '', '', '0000-00-00'),
(60, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMBB700799D', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0196', '', '', '0000-00-00'),
(61, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMBB700568K', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0197', '', '', '0000-00-00'),
(62, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC600890V', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0198', '', '', '0000-00-00'),
(63, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMBB700448F', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0199', '', '', '0000-00-00'),
(64, 'Samsung', 'P2250', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'LR22HMBZ200560N', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0200', '', '', '0000-00-00'),
(65, 'Samsung', 'P2250', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'LR22HMBZ200483N', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0201', '', '', '0000-00-00'),
(66, 'Samsung', 'P2250', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'LR22HMBZ200540M', 'Sportsbook Department', 'AREN Computer Services', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0202', '', '', '0000-00-00'),
(67, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMDB700148B', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0203', '', '', '0000-00-00'),
(68, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMABA000400P', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0204', '', '', '0000-00-00'),
(69, 'SAMSUNG', 'P2250', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'LR22HMBZ200557T', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0206', '', '', '0000-00-00'),
(70, 'Samsung', 'P2250', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'LR22HMAS502077H', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0206', '', '', '0000-00-00'),
(71, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMDZA00112J', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0208', '', '', '0000-00-00'),
(72, 'Samsung', 'B2030', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEDQHMAZA00842Z', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0209', '', '', '0000-00-00'),
(73, 'AOC', 'E22505WD', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HKNEB1A000890', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0210', '', '', '0000-00-00'),
(74, 'Samsung', 'P2250', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'LR20HMBZ100488V', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0211', '', '', '0000-00-00'),
(75, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ65HMAB100269F', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0213', '', '', '0000-00-00'),
(76, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMJZC00084F', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0214', '', '', '0000-00-00'),
(77, 'Viewsonic', 'VS515560', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TVR141400393', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0215', '', '', '0000-00-00'),
(78, 'Viewsonic', 'VS515560', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TVR141400392', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0216', '', '', '0000-00-00'),
(79, 'Samsung', 'B2030', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEDQHMJZ800031W', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0217', '', '', '0000-00-00'),
(80, 'Samsung', 'S20A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZRV9H9NBA00296E', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0218', '', '', '0000-00-00'),
(81, 'Samsung', '22335W', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CM22HMC5904643B', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0219', '', '', '0000-00-00'),
(82, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMBB600B40H', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0222', '', '', '0000-00-00'),
(83, 'Samsung', 'B2030', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEDQHMJZC00226P', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0225', '', '', '0000-00-00'),
(84, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMDZA00125J', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0233', '', '', '0000-00-00'),
(85, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMJZC00153W', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0234', '', '', '0000-00-00'),
(86, 'Samsung', 'P2250', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'LR20HMFZ100199A', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0235', '', '', '0000-00-00'),
(87, 'Viewsonic', 'VS15560', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TVR160561832', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0236', '', '', '0000-00-00'),
(88, 'Samsung', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC200226V', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0238', '', '', '0000-00-00'),
(89, 'Samsung', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL6HMBC100457P', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0239', '', '', '0000-00-00'),
(90, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMBB600606L', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0240', '', '', '0000-00-00'),
(91, 'Samsung', 'B2030', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEDQHMJZ800019F', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0241', '', '', '0000-00-00'),
(92, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMBB600292N', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0243', '', '', '0000-00-00'),
(93, 'Samsung', 'B2030', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEDQHMJZ800297V', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0244', '', '', '0000-00-00'),
(94, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMDZC00021D', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0245', '', '', '0000-00-00'),
(95, 'Samsung', 'B2030', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEDQHMAZA00941L', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0248', '', '', '0000-00-00'),
(96, 'AOC', 'E22705', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA001073', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0250', '', '', '0000-00-00'),
(97, 'Viewsonic', 'vs15451', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TSN134700256', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0251', '', '', '0000-00-00'),
(98, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMDZA00190D', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0252', '', '', '0000-00-00'),
(99, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'MRCQHYCDA01991P', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0253', '', '', '0000-00-00'),
(100, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFH4LC6013057', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0256', '', '', '0000-00-00'),
(101, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMAB100271T', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0258', '', '', '0000-00-00'),
(102, 'Samsung', '2233SW', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CM22HMBS904321', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0259', '', '', '0000-00-00'),
(103, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMJZ800029Y', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0260', '', '', '0000-00-00'),
(104, 'Samsung', 'S20C300BL', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZYDQHTND5003034', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0261', '', '', '0000-00-00'),
(105, 'Samsung', 'P2270G', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'EF22HMGS900045J', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0262', '', '', '0000-00-00'),
(106, 'Samsung', 'P2250', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'LR20HMFZ100136B', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0263', '', '', '0000-00-00'),
(107, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMJZC00052L', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0264', '', '', '0000-00-00'),
(108, 'Samsung', 'B2030', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEDDQHMAZA00703T', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0265', '', '', '0000-00-00'),
(109, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMC900258X', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0266', '', '', '0000-00-00'),
(110, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMAZ00012F', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0267', '', '', '0000-00-00'),
(111, 'Samsung', 'B2030', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEDQHMJZ800012Y', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0268', '', '', '0000-00-00'),
(112, 'Samsung', 'E2280SWDN', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AEB80639Z02476', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0269', '', '', '0000-00-00'),
(113, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMDZA00153Z', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0270', '', '', '0000-00-00'),
(114, 'Samsung', 'B2030', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEDQHMDZA00100M', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0271', '', '', '0000-00-00'),
(115, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC601409A', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0272', '', '', '0000-00-00'),
(116, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC601312V', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0273', '', '', '0000-00-00'),
(117, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC601307P', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0274', '', '', '0000-00-00'),
(118, 'Samsung', 'S20A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZRV9H9NB901681M', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0275', '', '', '0000-00-00'),
(119, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMCB900262L', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0276', '', '', '0000-00-00'),
(120, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMCB900261V', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0277', '', '', '0000-00-00'),
(121, 'Samsung', 'P2270G', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'EF2HMGS900021W', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0278', '', '', '0000-00-00'),
(122, 'Samsung', 'P2270G', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'EF2HMGS700693Y', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0279', '', '', '0000-00-00'),
(123, 'Samsung', 'P2250', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'LR20HMBZ100690T', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0280', '', '', '0000-00-00'),
(124, 'Samsung', 'B2230', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NDEJHMCZB00539T', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0281', '', '', '0000-00-00'),
(125, 'Samsung', 'E22505WD', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AEB80639Z02286', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0282', '', '', '0000-00-00'),
(126, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZT1EH9NB700252Z', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0283', '', '', '0000-00-00'),
(127, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZRV9H9NB602383H', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0284', '', '', '0000-00-00'),
(128, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC500608Y', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0285', '', '', '0000-00-00'),
(129, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC600857V', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0286', '', '', '0000-00-00'),
(130, 'AOC', 'E22705', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLFSHA000144', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0287', '', '', '0000-00-00'),
(131, 'AOC', 'E22705', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA000109', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0288', '', '', '0000-00-00'),
(132, 'AOC', 'E22705', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA00012B', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0289', '', '', '0000-00-00'),
(133, 'Samsung', 'P2250', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'LR20HMBZ100594D', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0293', '', '', '0000-00-00'),
(134, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZRV9H9NB900059M', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0294', '', '', '0000-00-00'),
(135, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMCB900220N', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0295', '', '', '0000-00-00'),
(136, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC500983X', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0296', '', '', '0000-00-00'),
(137, 'Samsung', 'vs15560', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TVR160561800', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0298', '', '', '0000-00-00'),
(138, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'TVR160561812', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0299', '', '', '0000-00-00'),
(139, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC600853H', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0300', '', '', '0000-00-00'),
(140, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'MRCQHYCDA01392P', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0303', '', '', '0000-00-00'),
(141, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMDB700211T', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0304', '', '', '0000-00-00'),
(142, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMDB700192L', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0306', '', '', '0000-00-00'),
(143, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NEJ6HMJZC00351X', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0307', '', '', '0000-00-00'),
(144, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA000263', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0311', '', '', '0000-00-00'),
(145, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA000227', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0312', '', '', '0000-00-00'),
(146, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA000255', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0313', '', '', '0000-00-00'),
(147, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC100784Y', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0314', '', '', '0000-00-00'),
(148, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA000217', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0315', '', '', '0000-00-00'),
(149, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA000528', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0316', '', '', '0000-00-00'),
(150, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA000294', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0319', '', '', '0000-00-00'),
(151, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA000277', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0320', '', '', '0000-00-00'),
(152, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA000296', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0321', '', '', '0000-00-00'),
(153, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA000246', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0322', '', '', '0000-00-00'),
(154, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA000233', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0323', '', '', '0000-00-00'),
(155, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC600976D', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0324', '', '', '0000-00-00'),
(156, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC100455Y', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0325', '', '', '0000-00-00'),
(157, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC200152D', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0326', '', '', '0000-00-00'),
(158, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZYDQHTPD600094Z', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0327', '', '', '0000-00-00'),
(159, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC100457P', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-032', '', '', '0000-00-00'),
(160, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HKNEB1A002691', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0329', '', '', '0000-00-00'),
(161, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMBB700450T', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0330', '', '', '0000-00-00'),
(162, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMDB700191V', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0331', '', '', '0000-00-00'),
(163, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMDB700129X', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0332', '', '', '0000-00-00'),
(164, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AEB80635Z02178', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0333', '', '', '0000-00-00'),
(165, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'AEB80635Z01675', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0334', '', '', '0000-00-00'),
(166, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMBB600835K', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0335', '', '', '0000-00-00'),
(167, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL6HMBC100193L', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0337', '', '', '0000-00-00'),
(168, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0338', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0338', '', '', '0000-00-00'),
(169, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0339', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0339', '', '', '0000-00-00'),
(170, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMSB-0341', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0341', '', '', '0000-00-00'),
(171, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0342', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0342', '', '', '0000-00-00'),
(172, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0343', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0343', '', '', '0000-00-00'),
(173, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0344', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0344', '', '', '0000-00-00'),
(174, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0347', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0347', '', '', '0000-00-00'),
(175, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0348', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0348', '', '', '0000-00-00'),
(176, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0349', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0349', '', '', '0000-00-00'),
(177, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0350', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0350', '', '', '0000-00-00'),
(178, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0352', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0352', '', '', '0000-00-00'),
(179, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0353', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0353', '', '', '0000-00-00'),
(180, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0355', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0355', '', '', '0000-00-00'),
(181, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0357', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0357', '', '', '0000-00-00'),
(182, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0358', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0358', '', '', '0000-00-00'),
(183, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0361', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0361', '', '', '0000-00-00'),
(184, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0362', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0362', '', '', '0000-00-00'),
(185, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0364', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0364', '', '', '0000-00-00'),
(186, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0366', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0366', '', '', '0000-00-00'),
(187, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0367', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0367', '', '', '0000-00-00'),
(188, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0368', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0368', '', '', '0000-00-00'),
(189, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0371', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0371', '', '', '0000-00-00'),
(190, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0374', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0374', '', '', '0000-00-00'),
(191, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0375', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0375', '', '', '0000-00-00'),
(192, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0376', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0376', '', '', '0000-00-00'),
(193, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0377', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0377', '', '', '0000-00-00'),
(194, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0379', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0379', '', '', '0000-00-00'),
(195, 'Samsung', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC100408Z', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'IT Room', '', 'IMBT-2017-0120', '', '', '0000-00-00'),
(196, 'Samsung', 'S20A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZRV9H9NB900095L', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'IT Room', '', 'IMBT-2017-0119', '', '', '0000-00-00'),
(197, 'Samsung', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC200087P', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'CS Room', '', 'IMBT-2017-0145', '', '', '0000-00-00'),
(198, 'Samsung', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC200071Z', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'IT Room', '', 'IMBT-2017-0125', '', '', '0000-00-00'),
(199, 'Samsung', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL6H4LC100388B', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'IT Room', '', 'IMBT-2017-0110', '', '', '0000-00-00'),
(200, 'Samsung', 'S20A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZRV9H9NB901005V', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'IT Room', '', 'IMBT-2017-0111', '', '', '0000-00-00'),
(201, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMDB700229A', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'IT Room', '', 'IMBT-2017-0108', '', '', '0000-00-00'),
(202, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMCB700008W', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'IT Room', '', 'IMBT-2017-0141', '', '', '0000-00-00'),
(203, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0400', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'IT Room', '', 'IMSB-2017-0400', '', '', '0000-00-00'),
(204, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0380', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0380', '', '', '0000-00-00'),
(205, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0382', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0382', '', '', '0000-00-00'),
(207, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0385', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0385', '', '', '0000-00-00'),
(208, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0386', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0386', '', '', '0000-00-00'),
(209, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0388', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0388', '', '', '0000-00-00'),
(210, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0391', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0391', '', '', '0000-00-00'),
(211, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0392', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0392', '', '', '0000-00-00'),
(212, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0394', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0394', '', '', '0000-00-00'),
(213, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0397', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0397', '', '', '0000-00-00'),
(214, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0401', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0401', '', '', '0000-00-00'),
(215, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0402', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0402', '', '', '0000-00-00'),
(216, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0403', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0403', '', '', '0000-00-00'),
(217, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0404', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2017-0404', '', '', '0000-00-00'),
(218, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0406', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2018-0406', '', '', '0000-00-00'),
(219, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMSB-0407', 'Sportsbook Department', 'Unknown', 'System Unit', '0', 'Sportsbook Area', '', 'IMSB-2018-0407', '', '', '0000-00-00'),
(220, 'SAMSUNG ', '522C350H', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZYDQHTPD600135B', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0088', '', '', '0000-00-00'),
(221, 'SAMSUNG', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'NFL3HMDB700466Z', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0091', '', '', '0000-00-00'),
(222, 'SAMSUNG', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZWFVH4LC900099Z', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0092', '', '', '0000-00-00'),
(223, 'SAMSUNG', 'S22C350H', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZYDQHTQD800153Z', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0094', '', '', '0000-00-00'),
(224, 'SAMSUNG', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'NFL3HMDB700463T', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMBT-2017-0095', '', '', '0000-00-00'),
(226, 'SAMSUNG', 'S22C350H', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZYDQHTPD600022Z', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0097', '', '', '0000-00-00'),
(227, 'SAMSUNG', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'NFL3HMDB700418B', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0098', '', '', '0000-00-00'),
(228, 'SAMSUNG', 'S22C350H', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZYDQHTPD60031H', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0099', '', '', '0000-00-00'),
(229, 'SAMSUNG', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZWFVH4LC900385R', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0101', '', '', '0000-00-00'),
(230, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'V8CFH9NB405920D', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0102', '', '', '0000-00-00'),
(231, 'AOC', 'E2250', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'FMPF2HA012221', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0103', '', '', '0000-00-00'),
(232, 'AOC', 'E2250', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'FMPF2HA012247', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0104', '', '', '0000-00-00'),
(233, 'AOC', 'E2250', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'FMPF2HA012222', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0106', '', '', '0000-00-00'),
(234, 'AOC', 'E2250', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'FMPF2HA012246', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0084', '', '', '0000-00-00'),
(235, 'AOC', 'E2270S', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'GDLFAHA002908', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN ', 'Sportsbook Area', '', 'IMBT-2017-0109', '', '', '0000-00-00'),
(236, 'AOC', 'E2270S', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'GDLFAHA002922', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0112', '', '', '0000-00-00'),
(237, 'AOC', 'E2270S', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'GDLFAHA002911', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0113', '', '', '0000-00-00'),
(238, 'SAMSUNG', 'P2250', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'LR22HMBZ200587E', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0118', '', '', '0000-00-00'),
(239, 'SAMSUNG', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZWFV4LC900090H', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0122', '', '', '0000-00-00'),
(240, 'SAMSUNG', 'S22C350H', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZYDQHTN500300W', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0123', '', '', '0000-00-00'),
(241, 'SAMSUNG', 'S22C350H', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZYDQHTPD60005N', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0130', '', '', '0000-00-00'),
(242, 'SAMSUNG', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZUL9H4LC200218Z', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0131', '', '', '0000-00-00'),
(243, 'AOC', 'E22505WD', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'HKNE231A000871', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0132', '', '', '0000-00-00');
INSERT INTO `sportsbook_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `Invoice_No`, `Location`, `comment`, `barcode_tag`, `status`, `assigned_to`, `assigned_date`) VALUES
(244, 'AOC', 'E2250', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'FMPF2HA012443', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0133', '', '', '0000-00-00'),
(245, 'AOC', 'E2250', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'FMPF2H4012239', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0134', '', '', '0000-00-00'),
(246, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZUL6HMBC100145W', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0135', '', '', '0000-00-00'),
(247, 'SAMSUNG', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'NFL3HMDB700216A', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0136', '', '', '0000-00-00'),
(248, 'SAMSUNG', 'S20A300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZRV9H9NB901127W', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0137', '', '', '0000-00-00'),
(249, 'SAMSUNG', 'S20A300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZRV9H9NB900347D', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0138', '', '', '0000-00-00'),
(250, 'SAMSUNG', 'S22B300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZUL9H4LC200154N', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0140', '', '', '0000-00-00'),
(251, 'SAMSUNG', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'NFL3HMDB700221W', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0143', '', '', '0000-00-00'),
(252, 'SAMSUNG', 'S22C350H', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZYDQHTHD600322E', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0151', '', '', '0000-00-00'),
(253, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'BT-0001', 'Sportsbook Department', 'Unknown', 'Mouse', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0001', '', '', '0000-00-00'),
(254, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'BT-0029', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0029', '', '', '0000-00-00'),
(255, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'BT-0036', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0036', '', '', '0000-00-00'),
(256, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'BT-0038', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0038', '', '', '0000-00-00'),
(257, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'BT-0041', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0041', '', '', '0000-00-00'),
(258, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'BT-0043', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0043', '', '', '0000-00-00'),
(259, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'BT-0044', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0044', '', '', '0000-00-00'),
(260, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'BT-0048', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0048', '', '', '0000-00-00'),
(261, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'BT-0052', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0052', '', '', '0000-00-00'),
(262, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'BT-0053', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0053', '', '', '0000-00-00'),
(263, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'BT-0054', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0054', '', '', '0000-00-00'),
(264, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'BT-0055', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0055', '', '', '0000-00-00'),
(265, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'BT-0059', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0059', '', '', '0000-00-00'),
(266, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMSB-0060', 'Sportsbook Department', 'Unknown', 'System Unit', 'UNKNOWN', 'Sportsbook Area', '', 'IMSB-2017-0060', '', '', '0000-00-00'),
(267, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMSB-0061', 'Sportsbook Department', 'Unknown', 'System Unit', 'UNKNOWN', 'Sportsbook Area', '', 'IMSB-2017-0061', '', '', '0000-00-00'),
(268, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMSB-0066', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMSB-2017-0066', '', '', '0000-00-00'),
(269, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMSB-0067', 'Sportsbook Department', 'Unknown', 'System Unit', 'UNKNOWN', 'Sportsbook Area', '', 'IMSB-2017-0067', '', '', '0000-00-00'),
(270, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMSB-0068', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMSB-2017-0068', '', '', '0000-00-00'),
(271, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMSB-0070', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMSB-2017-0070', '', '', '0000-00-00'),
(272, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMSB-0074', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMSB-2017-0074', '', '', '0000-00-00'),
(273, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMSB-0075', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMSB-2017-0075', '', '', '0000-00-00'),
(274, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMSB-0078', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMSB-2017-0078', '', '', '0000-00-00'),
(275, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMSB-0081', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMSB-2017-0081', '', '', '0000-00-00'),
(276, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMSB-0082', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMSB-2017-0082', '', '', '0000-00-00'),
(277, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMSB-0083', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMSB-2017-0083', '', '', '0000-00-00'),
(278, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMSB-0086', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMSB-2017-0086', '', '', '0000-00-00'),
(279, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'IMSB-0087', 'Sportsbook Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'Sportsbook Area', '', 'IMSB-2017-0087', '', '', '0000-00-00'),
(280, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'GDLC1HA007237', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0146', '', '', '0000-00-00'),
(281, 'AOC', 'E2270S', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'GDLG11HA007237', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0148', '', '', '0000-00-00'),
(282, 'HP', 'P222VA', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'CNK5330GPR', 'Sportsbook Department', 'Unknown', 'Monitor', 'UNKNOWN', 'Sportsbook Area', '', 'IMBT-2017-0149', '', '', '0000-00-00'),
(283, 'HP', 'Probook 440 G2', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'CND52915JH', 'Sportsbook Department', 'Unknown', 'Laptop', '0', 'Sportsbook Area', '', 'IMSB-2017-0408', '', '', '0000-00-00'),
(284, 'AOC', 'E2270SWDN', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'GDLF9HA022617', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Sportsbook Area', '', 'IMSB-2017-0410', '', '', '0000-00-00'),
(285, 'AOC', 'E2270SWDN', '0.00', 'default.gif', 0, 0, 0, 0, '2017-01-01', 'GDLF9HA007246', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Stock Room', '', 'IMBT-2017-0180', '', '', '0000-00-00'),
(286, 'AOC', 'E2280SWDN', '0.00', 'default.gif', 0, 0, 0, 0, '2017-01-01', 'AEB80639Z03053', 'Sportsbook Department', 'Unknown', 'Monitor', '0', 'Stock Room', '', 'IMBT-2017-0181', '', '', '0000-00-00');

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
  `Barcode` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'Total Quality Machine', '704 Pablo Ocampo St. Bgy 719 Zone Malate Manila', '09508601392', 'IT Department'),
(2, 'AREN Computer Services', '913 Nicanor Reyes St. (Morayta) Sampaloc Manila', '735-4706', 'IT Department'),
(3, 'Unknown', 'Unknown', 'Unknown', 'IT Department'),
(4, 'UAS', 'Reliance Center 99  E. Rodriguez Jr. Av., Ugong Pasig City', '667-0863', ''),
(5, 'Techno Trend', '1-A E. Aguinaldo St., West Rembo, Makati City', '666-2559', ''),
(6, 'Microbase', '3F Casmer Bldg. 195 Salcedo St. Legaspi Village Makati  City 1229', '+63 9985782015  |  +63 9151125815', '');

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
(7, 'TSO', 'a1Bz20ydqelm8m1wqlc7fe00f7aa3d2477e3e19ed5c93aeb13', 'TSO', 'active', 1, 'Admin'),
(8, 'HR', 'a1Bz20ydqelm8m1wql912ec803b2ce49e4a541068d495ab570', 'Mae Frances Alba', 'active', 2, 'User'),
(9, 'Finance', 'a1Bz20ydqelm8m1wqledb8c523f11478f6f55a49e7f5990f23', 'Chrisitine Pasatiempo', 'active', 3, 'User'),
(10, 'Sportsbook1', 'a1Bz20ydqelm8m1wqlfd2cc6c54239c40495a0d3a93b6380eb', 'Sportsbook ETC', 'active', 4, 'User'),
(11, 'iara', 'a1Bz20ydqelm8m1wql1bdc6a5694ca722534fb32a5130e640e', 'Iara Dela Cruz', 'active', 5, 'User'),
(12, 'Production', 'a1Bz20ydqelm8m1wqlfd89784e59c72499525556f80289b2c7', 'Production', 'active', 6, 'User'),
(13, 'CS', 'a1Bz20ydqelm8m1wql8d7e99c73cd5a10adaaf4c9f9a520368', 'CS Department', 'active', 7, 'User'),
(14, 'Management', 'a1Bz20ydqelm8m1wqld47bd33854a15e8ec9e0819416db2507', 'Management', 'active', 10, '');

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

-- --------------------------------------------------------

--
-- Table structure for table `ws_department`
--

CREATE TABLE `ws_department` (
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
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `barcode_tag` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ws_department`
--

INSERT INTO `ws_department` (`prod_id`, `prod_name`, `prod_model`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `supplier_id`, `purchase_date`, `serial`, `branch_name`, `supplier_name`, `cat_name`, `Invoice_No`, `Location`, `comment`, `barcode_tag`, `status`, `assigned_to`, `assigned_date`) VALUES
(1, 'VIEWSONIC', 'VX2452', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'TVT145004940', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0019', '', '', '0000-00-00'),
(2, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZYV0HTND500063X', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0020', '', '', '0000-00-00'),
(3, 'VIEWSONIC', 'VA2446M', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'TST143245858', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0021', '', '', '0000-00-00'),
(4, 'SAMSUNG', 'S20A300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZRV9H9NB901132X', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0022', '', '', '0000-00-00'),
(5, 'VIEWSONIC', 'VX2452', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'TVT145004936', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0023', '', '', '0000-00-00'),
(6, 'SAMSUNG', 'S20A300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZRV9H9NB900690J', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0024', '', '', '0000-00-00'),
(7, 'VIEWSONIC', 'VX2452', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'TVT145004876', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0025', '', '', '0000-00-00'),
(8, 'SAMSUNG', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZWFVH4LC500799H', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0026', '', '', '0000-00-00'),
(9, 'VIEWSONIC', 'VX2452', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'TVT145004860', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0027', '', '', '0000-00-00'),
(10, 'SAMSUNG', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'NFL3HMBB600776H', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0028', '', '', '0000-00-00'),
(11, '', '', '0.00', 'default.gif', 0, 0, 0, 0, '0000-00-00', '', 'WS Department', '', '', '', '', '', '', '', '', '0000-00-00'),
(12, 'SAMSUNG', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'NFL3HMBB600764J', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0030', '', '', '0000-00-00'),
(13, 'VIEWSONIC', 'VX2452', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'TVT145004929', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0031', '', '', '0000-00-00'),
(14, 'SAMSUNG', 'S22B210B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZWFVH4LC900230P', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0032', '', '', '0000-00-00'),
(15, 'VIEWSONIC', 'VX2452', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'TVT145004849', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0033', '', '', '0000-00-00'),
(16, 'SAMSUNG', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZWFVH4LC900625K', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0034', '', '', '0000-00-00'),
(17, 'VIEWSONIC', 'VX2452', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'TVT145004886', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0035', '', '', '0000-00-00'),
(18, 'SAMSUNG', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZSYTHMJBA00315F', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0036', '', '', '0000-00-00'),
(19, 'VIEWSONIC', 'VX2452', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'TVT145004871', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0037', '', '', '0000-00-00'),
(20, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZSYTHMJBA00263W', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0038', '', '', '0000-00-00'),
(21, 'Samsung', 'B1930NW', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'NDDPHMEZ200180M', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0039', '', '', '0000-00-00'),
(22, 'SAMSUNG', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZWFVH4LC500984A', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0040', '', '', '0000-00-00'),
(23, 'SAMSUNG', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZWFVH4LC501348V', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0041', '', '', '0000-00-00'),
(24, 'HP', 'P222VA', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'CNK5330GQ5', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0042', '', '', '0000-00-00'),
(25, 'HP', 'P222VA', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'CNK530088X', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0043', '', '', '0000-00-00'),
(26, 'HP', 'P222VA', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'CNK5330GNF', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0044', '', '', '0000-00-00'),
(27, 'HP', 'P222VA', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'CNK5330GQ7', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0045', '', '', '0000-00-00'),
(28, 'HP', 'P222VA', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'CNK5330GPW', 'WS Department', 'AREN Computer Services', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0046', '', '', '0000-00-00'),
(29, 'HP', 'P222VA', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'CNK5330H52', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0047', '', '', '0000-00-00'),
(30, 'HP', 'P222VA', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'CNK5330HNX', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0048', '', '', '0000-00-00'),
(31, 'HP', 'P222VA', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'CNK5330GQ0', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0049', '', '', '0000-00-00'),
(32, 'HP', 'P222VA', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'CNK5330GPR', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0050', '', '', '0000-00-00'),
(33, 'SAMSUNG', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZMWFVH4LC503187Y', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Traders', '', 'IMWS-2017-0090', '', '', '0000-00-00'),
(34, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZSYTHMJC100207X', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Traders', '', 'IMWS-2017-0091', '', '', '0000-00-00'),
(35, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZSYTHMUB800098A', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Traders', '', 'IMWS-2017-0092', '', '', '0000-00-00'),
(36, 'SAMSUNG', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZWFVH4LC601092K', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Traders', '', 'IMWS-2017-0093', '', '', '0000-00-00'),
(37, 'SAMSUNG', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZWFVH4LC503186Z', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Traders', '', 'IMWS-2017-0094', '', '', '0000-00-00'),
(38, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZSYTHMJBB00022F', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Traders', '', 'IMWS-2017-0095', '', '', '0000-00-00'),
(39, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZSYTHMJB500104M', 'WS Department', 'AREN Computer Services', 'Monitor', 'UNKNOWN', 'WS-Traders', '', 'IMWS-2017-0096', '', '', '0000-00-00'),
(40, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZWFHA4L502934J', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Traders', '', 'IMWS-2017-0098', '', '', '0000-00-00'),
(41, 'SAMSUNG', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZWFVHA4L502924V', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Traders', '', 'IMWS-2017-0099', '', '', '0000-00-00'),
(42, 'Dell', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'H6NXCV08R21024H', 'WS Department', 'Unknown', 'Laptop', '0', 'WS-Traders', '', 'IMWS-2017-0132', '', '', '0000-00-00'),
(43, 'System Unit', '', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0081', 'WS Department', 'Unknown', 'System Unit', '0', 'WS-Traders', '', 'IMWS-2017-0081', '', '', '0000-00-00'),
(44, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0083', 'WS Department', 'AREN Computer Services', 'System Unit', '0', 'WS-Traders', '', 'IMWS-2017-0083', '', '', '0000-00-00'),
(45, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0084', 'WS Department', 'Unknown', 'System Unit', '0', 'WS-Traders', '', 'IMWS-2017-0084', '', '', '0000-00-00'),
(46, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0086', 'WS Department', 'Unknown', 'System Unit', '0', 'WS-Traders', '', 'IMWS-2017-0086', '', '', '0000-00-00'),
(47, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0087', 'WS Department', 'Unknown', 'System Unit', '0', 'WS-Traders', '', 'IMWS-2017-0087', '', '', '0000-00-00'),
(48, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0088', 'WS Department', 'Unknown', 'System Unit', '0', 'WS-Traders', '', 'IMWS-2017-0088', '', '', '0000-00-00'),
(49, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0089', 'WS Department', 'Unknown', 'System Unit', '0', 'WS-Traders', '', 'IMWS-2017-0089', '', '', '0000-00-00'),
(50, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVHALC601091B', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0102', '', '', '0000-00-00'),
(51, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZSYTHMJC100290R', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0107', '', '', '0000-00-00'),
(52, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZSYTHMJC100283L', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0108', '', '', '0000-00-00'),
(53, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC503184B', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0110', '', '', '0000-00-00'),
(54, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZSYTHMJC100306Y', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0111', '', '', '0000-00-00'),
(55, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZSYTHMJC100237L', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0112', '', '', '0000-00-00'),
(56, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC503506M', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0113', '', '', '0000-00-00'),
(57, 'AOC', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HRMF31A002142', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Traders', '', 'IMWS-2017-0114', '', '', '0000-00-00'),
(58, 'AOC', 'E2250SWDN', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'HRMF31A0026325', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Traders', '', 'IMWS-2017-0115', '', '', '0000-00-00'),
(59, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZSYTHMC100010Y', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMIT-2017-0006', '', '', '0000-00-00'),
(60, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC500B58K', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0117', '', '', '0000-00-00'),
(61, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZSYTHMJC100080K', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0120', '', '', '0000-00-00'),
(62, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC502780B', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0121', '', '', '0000-00-00'),
(63, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC501771X', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0122', '', '', '0000-00-00'),
(64, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZSYTHMJBB00023R', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0123', '', '', '0000-00-00'),
(65, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'ZSYTHMJC100034K', 'WS Department', 'Unknown', 'Monitor', '0', 'Pantry', '', 'IMWS-2017-0124', '', '', '0000-00-00'),
(66, 'Samsung', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NFL3HMBB700451B', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0125', '', '', '0000-00-00'),
(67, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC500857B', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0126', '', '', '0000-00-00'),
(68, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'NDDPHNFZ400066A', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Traders', '', 'IMWS-2017-0127', '', '', '0000-00-00'),
(69, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZSYTHMJC100043V', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0128', '', '', '0000-00-00'),
(70, 'AOC', 'E2250', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'FMPF2HA012235', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Accounts', '', 'IMWS-2017-0131', '', '', '0000-00-00'),
(71, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'MRCQHYCDB00641F', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Accounts', '', 'IMWS-2017-0132', '', '', '0000-00-00'),
(72, 'Samsung', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZXQ8HTMD801117M', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Accounts', '', 'IMWS-2017-0133', '', '', '0000-00-00'),
(73, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC500793D', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Accounts', '', 'IMWS-2017-0134', '', '', '0000-00-00'),
(74, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0051', 'WS Department', 'Unknown', 'System Unit', '0', 'WS-Mapper', '', 'IMWS-2017-0051', '', '', '0000-00-00'),
(75, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0052', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Mapper', '', 'IMWS-2017-0052', '', '', '0000-00-00'),
(76, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0053', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Mapper', '', 'IMWS-2017-0053', '', '', '0000-00-00'),
(77, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0054', 'WS Department', 'Unknown', 'System Unit', '0', 'WS-Accounts', '', 'IMWS-2017-0054', '', '', '0000-00-00'),
(78, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0055', 'WS Department', 'Unknown', 'System Unit', '0', 'WS-Mapper', '', 'IMWS-2017-0055', '', '', '0000-00-00'),
(79, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0056', 'WS Department', 'Unknown', 'System Unit', '0', 'WS-Mapper', '', 'IMWS-2017-0056', '', '', '0000-00-00'),
(80, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0057', 'WS Department', 'Unknown', 'System Unit', '0', 'WS-Mapper', '', 'IMWS-2017-0057', '', '', '0000-00-00'),
(81, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0058', 'WS Department', 'Unknown', 'System Unit', '0', 'WS-Mapper', '', 'IMWS-2017-0058', '', '', '0000-00-00'),
(82, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0059', 'WS Department', 'Unknown', 'System Unit', '0', 'WS-Mapper', '', 'IMWS-2017-0059', '', '', '0000-00-00'),
(83, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'WS-0070', 'WS Department', 'Unknown', 'Keyboard', '0', 'WS-Traders', '', 'IMWS-2017-0070', '', '', '0000-00-00'),
(84, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'WS-0071', 'WS Department', 'Unknown', 'Keyboard', '0', 'WS-Mapper', '', 'IMWS-2017-0071', '', '', '0000-00-00'),
(85, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'WS-0073', 'WS Department', 'Unknown', 'Keyboard', '0', 'WS-Mapper', '', 'IMWS-2017-0073', '', '', '0000-00-00'),
(86, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'WS-0075', 'WS Department', 'Unknown', 'Keyboard', '0', 'WS-Mapper', '', 'IMWS-2017-0075', '', '', '0000-00-00'),
(87, 'Logitech', 'K120', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'WS-0079', 'WS Department', 'Unknown', 'Keyboard', '0', 'WS-Mapper', '', 'IMWS-2017-0079', '', '', '0000-00-00'),
(88, 'System Unit', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'IMWS-0082', 'WS Department', 'Unknown', 'System Unit', '0', 'WS-Mapper', '', 'IMWS-2017-0082', '', '', '0000-00-00'),
(89, 'VIEWSONIC', 'VX2452', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'TVT145004292', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Mapper', '', 'IMWS-2017-0029', '', '', '0000-00-00'),
(90, 'SAMSUNG', 'S22A300B', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'NFL3HMDB700125Y', 'WS Department', 'Unknown', 'Monitor', 'UNKNOWN', 'WS-Traders', '', 'IMWS-2017-0097', '', '', '0000-00-00'),
(91, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'WS-0096', 'WS Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'WS-Accounts', '', 'IMWS-2017-0096', '', '', '0000-00-00'),
(92, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'WS-0097', 'WS Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'WS-Accounts', '', 'IMWS-2017-0097', '', '', '0000-00-00'),
(93, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'WS-0099', 'WS Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'WS-Accounts', '', 'IMWS-2017-0099', '', '', '0000-00-00'),
(94, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'WS-0100', 'WS Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'WS-Accounts', '', 'IMWS-2017-0100', '', '', '0000-00-00'),
(95, 'UNKNOWN', 'UNKNOWN', '0.00', 'default.gif', 0, 1, 0, 0, '0000-00-00', 'WS-0101', 'WS Department', 'Unknown', 'Keyboard', 'UNKNOWN', 'WS-Accounts', '', 'IMWS-2017-0101', '', '', '0000-00-00'),
(96, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZSYHMJBB187J', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0100', '', '', '0000-00-00'),
(97, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZSYHMJBB00174J', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0101', '', '', '0000-00-00'),
(98, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZSYTHMJB600026F', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0104', '', '', '0000-00-00'),
(99, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZSYTHMJC100304K', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0105', '', '', '0000-00-00'),
(100, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC300582K', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0106', '', '', '0000-00-00'),
(101, 'Samsung', 'T23A350', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZUL9H4LC200127K', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0109', '', '', '0000-00-00'),
(102, 'Samsung', ' S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC500906R', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0118', '', '', '0000-00-00'),
(103, 'Samsung', 'S22B310B', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZWFVH4LC50152BV', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0119', '', '', '0000-00-00'),
(104, '0', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'E4LMTF079522', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Traders', '', 'IMWS-2017-0103', '', '', '0000-00-00'),
(105, 'Samsung', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZXQ8HTNF400471E', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Accounts', '', 'IMWS-2017-0135', '', '', '0000-00-00'),
(106, 'Samsung', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZYV0HTNV500108Y', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Accounts', '', 'IMWS-2017-0136', '', '', '0000-00-00'),
(107, 'Samsung', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'ZXQ8HTNF400491B', 'WS Department', 'Unknown', 'Monitor', '0', 'WS-Accounts', '', 'IMWS-2017-0137', '', '', '0000-00-00'),
(108, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'WS-0010', 'WS Department', 'Unknown', 'Keyboard', '0', 'WS-Mapper', '', 'IMWS-2017-0010', '', '', '0000-00-00'),
(109, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'WS-0012', 'WS Department', 'Unknown', 'Keyboard', '0', 'WS-Mapper', '', 'IMWS-2017-0012', '', '', '0000-00-00'),
(110, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'WS-0013', 'WS Department', 'Unknown', 'Keyboard', '0', 'WS-Mapper', '', 'IMWS-2017-0013', '', '', '0000-00-00'),
(111, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'WS-0014', 'WS Department', 'Unknown', 'Keyboard', '0', 'WS-Mapper', '', 'IMWS-2017-0014', '', '', '0000-00-00'),
(112, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'WS-0015', 'WS Department', 'Unknown', 'Keyboard', '0', 'WS-Mapper', '', 'IMWS-2017-0015', '', '', '0000-00-00'),
(113, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'WS-0016', 'WS Department', 'Unknown', 'Keyboard', '0', 'WS-Mapper', '', 'IMWS-2017-0016', '', '', '0000-00-00'),
(114, 'Logitech', '0', '0.00', 'default.gif', 0, 1, 0, 0, '2017-01-01', 'WS-0017', 'WS Department', 'Unknown', 'Keyboard', '0', 'WS-Mapper', '', 'IMWS-2017-0017', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `ws_records_assets`
--

CREATE TABLE `ws_records_assets` (
  `Product_id` int(11) NOT NULL,
  `Product_name` varchar(100) NOT NULL,
  `Product_model` varchar(500) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Purchase_date` date NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `Barcode` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Invoice_No` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `assigned_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `integration_department`
--
ALTER TABLE `integration_department`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `integration_records_assets`
--
ALTER TABLE `integration_records_assets`
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
-- Indexes for table `management_department`
--
ALTER TABLE `management_department`
  ADD PRIMARY KEY (`prod_id`);

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
-- Indexes for table `ws_department`
--
ALTER TABLE `ws_department`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `ws_records_assets`
--
ALTER TABLE `ws_records_assets`
  ADD PRIMARY KEY (`Product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_department`
--
ALTER TABLE `admin_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_records_assets`
--
ALTER TABLE `admin_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cs_department`
--
ALTER TABLE `cs_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `cs_records_assets`
--
ALTER TABLE `cs_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `finance_department`
--
ALTER TABLE `finance_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `finance_records_assets`
--
ALTER TABLE `finance_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=539;

--
-- AUTO_INCREMENT for table `hr_department`
--
ALTER TABLE `hr_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `hr_records_assets`
--
ALTER TABLE `hr_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `integration_department`
--
ALTER TABLE `integration_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `it_department`
--
ALTER TABLE `it_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `it_records_assets`
--
ALTER TABLE `it_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `management_department`
--
ALTER TABLE `management_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marketing_department`
--
ALTER TABLE `marketing_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `marketing_records_assets`
--
ALTER TABLE `marketing_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `production_records_assets`
--
ALTER TABLE `production_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales_records_assets`
--
ALTER TABLE `sales_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sportsbook_department`
--
ALTER TABLE `sportsbook_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `sportsbook_records_assets`
--
ALTER TABLE `sportsbook_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stockin`
--
ALTER TABLE `stockin`
  MODIFY `stockin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_branch`
--
ALTER TABLE `user_branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ws_department`
--
ALTER TABLE `ws_department`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `ws_records_assets`
--
ALTER TABLE `ws_records_assets`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
