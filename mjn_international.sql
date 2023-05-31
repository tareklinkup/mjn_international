-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2023 at 09:43 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mjn_international`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account`
--

CREATE TABLE `tbl_account` (
  `Acc_SlNo` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `Acc_Code` varchar(50) NOT NULL,
  `Acc_Tr_Type` varchar(25) DEFAULT NULL,
  `Acc_Name` varchar(200) NOT NULL,
  `Acc_Type` varchar(50) NOT NULL,
  `Acc_Description` varchar(255) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_account`
--

INSERT INTO `tbl_account` (`Acc_SlNo`, `branch_id`, `Acc_Code`, `Acc_Tr_Type`, `Acc_Name`, `Acc_Type`, `Acc_Description`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`) VALUES
(1, 1, 'A0001', '', 'CASH SALE', '', 'BILL NO. 2502', 'a', 'Admin', '2022-09-21 16:26:45', NULL, NULL),
(2, 1, 'A0002', '', 'CASH IN HAND ', '', 'CASH OPENING BALANCE ', 'a', 'Admin', '2022-09-22 12:13:46', NULL, NULL),
(3, 1, 'A0003', '', 'SUNDRY DEBTORS', '', 'DUE SALES ', 'a', 'Admin', '2022-09-22 12:34:23', NULL, NULL),
(4, 1, 'A0004', '', 'UNION BANK ', '', 'BLUE TOUCH BANK ACCOUNT', 'a', 'Admin', '2022-09-22 12:53:51', NULL, NULL),
(5, 1, 'A0005', '', 'CONVEYANCE ', '', 'DELIVERY PURPOSE', 'a', 'Admin', '2022-09-22 12:56:38', NULL, NULL),
(6, 1, 'A0006', '', 'LABOUR CHARGES', '', 'DELIVERY PURPOSE', 'a', 'Admin', '2022-09-22 12:58:15', NULL, NULL),
(7, 1, 'A0007', '', 'PRELIMINERY EXPENSES(BLUE TOUCH LIFE STYLE)', '', 'DECORATION EXPENSES FOR BLUE TOUCH LIFESTYLE NEW SHOWROOM', 'a', 'Admin', '2022-09-22 13:02:24', NULL, NULL),
(8, 1, 'A0008', '', 'ENTERTAINMENT', '', 'OFFICE ENTERTAINMENT PURPOSE ', 'a', 'Admin', '2022-09-22 13:08:28', NULL, NULL),
(9, 1, 'A0009', '', 'SALARY ADVANCE ', '', 'SADDAM SALRY ADVANCE FOR AUGUST 2022', 'a', 'Admin', '2022-09-22 13:37:22', NULL, NULL),
(10, 1, 'A0010', '', 'REPAIRS & MAINTAINANCE ', '', 'OFFICE EXPENSES ', 'a', 'Admin', '2022-09-22 14:14:32', NULL, NULL),
(11, 1, 'A0011', '', 'Expence', '', '', 'a', 'Admin', '2022-09-27 16:24:18', NULL, NULL),
(12, 1, 'A0012', '', 'Office Expence', '', '', 'a', 'Admin', '2022-10-22 16:39:15', NULL, NULL),
(13, 1, 'A0013', '', 'Onik', '', 'Onik', 'a', 'Admin', '2022-10-30 16:05:38', NULL, NULL),
(14, 3, 'A0014', '', 'Md Sir Diposit', '', '', 'a', 'Admin', '2022-11-06 12:10:43', NULL, NULL),
(15, 3, 'A0015', '', 'Salary', '', '', 'a', 'Admin', '2022-11-06 12:10:57', NULL, NULL),
(16, 3, 'A0016', '', 'Office expence', '', '', 'a', 'Admin', '2022-11-06 12:11:10', NULL, NULL),
(17, 3, 'A0017', '', 'Tranfer by head Office', '', '', 'a', 'Admin', '2022-11-06 12:13:31', NULL, NULL),
(18, 1, 'A0018', '', 'Loan AC SR 2', '', '', 'a', 'Admin', '2022-11-06 12:15:37', NULL, NULL),
(19, 1, 'A0019', '', 'manik', '', 'mirpur', 'a', 'Admin', '2022-11-15 11:24:08', NULL, NULL),
(20, 1, 'A0020', '', 'Daily Expense ', '', '', 'a', 'Admin', '2022-11-19 15:40:23', NULL, NULL),
(21, 1, 'A0021', '', 'Room No-1', '', '', 'a', 'Admin', '2022-12-08 18:59:09', NULL, NULL),
(22, 1, 'A0022', '', 'KAMOL PROFIT', '', '', 'a', 'Admin', '2022-12-13 13:20:28', NULL, NULL),
(23, 1, 'A0023', '', 'Office  Rent', '', '', 'a', 'Admin', '2022-12-29 19:17:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assets`
--

CREATE TABLE `tbl_assets` (
  `as_id` int(11) NOT NULL,
  `as_date` date DEFAULT NULL,
  `as_name` varchar(50) DEFAULT NULL,
  `as_sp_name` varchar(100) DEFAULT NULL,
  `as_qty` int(11) DEFAULT NULL,
  `as_rate` decimal(10,2) DEFAULT NULL,
  `as_amount` decimal(10,2) DEFAULT NULL,
  `buy_or_sale` enum('buy','sale') NOT NULL DEFAULT 'buy',
  `valuation` decimal(20,2) DEFAULT 0.00,
  `unit_valuation` decimal(20,2) DEFAULT 0.00,
  `as_note` text DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_assets`
--

INSERT INTO `tbl_assets` (`as_id`, `as_date`, `as_name`, `as_sp_name`, `as_qty`, `as_rate`, `as_amount`, `buy_or_sale`, `valuation`, `unit_valuation`, `as_note`, `status`, `AddBy`, `AddTime`, `branchid`) VALUES
(1, '2022-11-14', 'Computer ', 'Star Tech ', 10, '25000.00', '250000.00', 'buy', '0.00', '0.00', '', 'd', 'Admin', '2022-11-14 15:32:12', 1),
(2, '2022-11-14', 'Computer ', 'Star Tech ', 2, '30000.00', '60000.00', 'sale', '20.00', '10.00', '', 'd', 'Admin', '2022-11-14 15:33:38', 1),
(3, '2022-12-15', 'momo', 'monbhvggfx1', 1, '1000.00', '1000.00', 'buy', '0.00', '0.00', '', 'a', 'Admin', '2022-12-15 18:05:45', 6),
(4, '2022-12-15', 'momo', 'এস আই রিফাত 0880', 1, '900.00', '900.00', 'sale', '1.00', '1.00', '', 'a', 'Admin', '2022-12-15 18:06:19', 6),
(5, '2022-12-19', 'Pen-drive', 'Star tech', 20, '400.00', '8000.00', 'buy', '0.00', '0.00', '', 'd', 'Admin', '2022-12-19 14:39:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_accounts`
--

CREATE TABLE `tbl_bank_accounts` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(500) NOT NULL,
  `account_number` varchar(250) NOT NULL,
  `account_type` varchar(200) NOT NULL,
  `bank_name` varchar(250) NOT NULL,
  `branch_name` varchar(250) DEFAULT NULL,
  `initial_balance` float NOT NULL,
  `description` varchar(2000) NOT NULL,
  `saved_by` int(11) NOT NULL,
  `saved_datetime` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank_accounts`
--

INSERT INTO `tbl_bank_accounts` (`account_id`, `account_name`, `account_number`, `account_type`, `bank_name`, `branch_name`, `initial_balance`, `description`, `saved_by`, `saved_datetime`, `updated_by`, `updated_datetime`, `branch_id`, `status`) VALUES
(1, 'BLUE TOUCH', '0211010000421', 'C D ACCOUNT', 'UNION BANK LTD', 'AGRABAD', 0, 'Authorized Mr.Shahed & Mr.Rumman ', 1, '2022-09-22 15:50:46', NULL, NULL, 1, 0),
(2, 'LUTFAR RAHMAN', 'LUTFAR RAHMAN', 'Long Term Liabilities', 'Long Term Liabilities', '', 0, '', 1, '2022-10-13 12:26:18', NULL, NULL, 1, 1),
(3, 'Lalon `', '124578632145', 'Saving Account ', 'DBBL', 'Mirpur 10', 0, '', 1, '2022-10-18 16:16:33', NULL, NULL, 1, 1),
(4, 'azim ', '12466545512', 'Saving Account ', 'DBBL', 'Mirpur 10', 0, '', 1, '2022-11-19 15:43:36', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_transactions`
--

CREATE TABLE `tbl_bank_transactions` (
  `transaction_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_type` varchar(10) NOT NULL,
  `amount` float NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `saved_by` int(11) NOT NULL,
  `saved_datetime` datetime NOT NULL,
  `branch_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank_transactions`
--

INSERT INTO `tbl_bank_transactions` (`transaction_id`, `account_id`, `transaction_date`, `transaction_type`, `amount`, `note`, `saved_by`, `saved_datetime`, `branch_id`, `status`) VALUES
(1, 1, '2022-09-22', 'withdraw', 116075, 'Carpet Tiles from Leo King International Tk. 106475.00 & Lamination Sheet Tk. 9600.00', 1, '2022-09-22 15:52:54', 1, 1),
(2, 1, '2022-09-22', 'withdraw', 50000, 'New showroom exp. & Trade Licenses', 1, '2022-09-22 15:54:57', 1, 1),
(3, 1, '2022-09-27', 'deposit', 500000, '', 1, '2022-09-27 16:28:19', 1, 1),
(4, 1, '2022-10-18', 'deposit', 75, '', 1, '2022-10-18 16:10:17', 1, 1),
(5, 3, '2022-10-18', 'deposit', 100000, '', 1, '2022-10-18 16:17:09', 1, 1),
(6, 2, '2022-10-26', 'deposit', 50000, '', 1, '2022-10-26 19:47:35', 1, 1),
(7, 1, '2022-10-30', 'deposit', 50000, '', 1, '2022-10-30 11:43:30', 1, 1),
(8, 1, '2022-11-01', 'deposit', 30000, '', 1, '2022-11-01 16:26:20', 1, 1),
(9, 1, '2022-11-13', 'deposit', 20000, '', 1, '2022-11-13 14:42:33', 1, 1),
(10, 1, '2022-11-19', 'withdraw', 100000, '', 1, '2022-11-19 15:19:05', 1, 1),
(11, 1, '2022-11-19', 'deposit', 25000, '', 1, '2022-11-19 15:42:00', 1, 1),
(12, 2, '2022-11-19', 'withdraw', 5000, '', 1, '2022-11-19 15:42:20', 1, 1),
(13, 4, '2022-11-19', 'deposit', 100000, 'Deposit ', 1, '2022-11-19 15:43:59', 1, 1),
(14, 1, '2022-11-22', 'deposit', 10000, '', 1, '2022-11-22 12:42:07', 1, 1),
(15, 4, '2022-12-01', 'deposit', 20000, '', 1, '2022-12-01 14:17:20', 1, 1),
(16, 1, '2022-12-03', 'deposit', 20000, '', 1, '2022-12-03 16:15:22', 1, 1),
(17, 1, '2022-12-05', 'withdraw', 23000, '', 1, '2022-12-05 15:15:04', 1, 1),
(18, 1, '2022-12-06', 'deposit', 5000, '', 1, '2022-12-06 19:51:54', 1, 1),
(19, 2, '2022-12-08', 'deposit', 5000, '', 1, '2022-12-08 16:34:39', 1, 1),
(20, 1, '2022-12-11', 'deposit', 100000, '', 1, '2022-12-11 12:30:20', 1, 1),
(21, 1, '2022-12-18', 'deposit', 25000, '', 1, '2022-12-18 10:58:55', 1, 1),
(22, 1, '2022-12-27', 'deposit', 300000, '', 1, '2022-12-27 13:04:15', 1, 1),
(23, 1, '2022-12-27', 'withdraw', 5000, '', 1, '2022-12-27 15:25:23', 1, 1),
(24, 1, '2022-12-29', 'deposit', 50000, 'hhfgfgfg', 1, '2022-12-29 16:17:11', 1, 1),
(25, 3, '2022-12-30', 'deposit', 50000, 'fhfjkiufdfhf', 1, '2022-12-30 11:19:19', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_SiNo` int(11) NOT NULL,
  `ProductCategory_SlNo` int(11) NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `status` char(2) NOT NULL,
  `brand_branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brunch`
--

CREATE TABLE `tbl_brunch` (
  `brunch_id` int(11) NOT NULL,
  `Brunch_name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Brunch_title` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Brunch_address` text CHARACTER SET utf8 NOT NULL,
  `Brunch_sales` varchar(1) NOT NULL COMMENT 'Wholesales = 1, Retail = 2',
  `add_date` date NOT NULL,
  `add_time` datetime NOT NULL,
  `add_by` char(50) NOT NULL,
  `update_by` char(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brunch`
--

INSERT INTO `tbl_brunch` (`brunch_id`, `Brunch_name`, `Brunch_title`, `Brunch_address`, `Brunch_sales`, `add_date`, `add_time`, `add_by`, `update_by`, `status`) VALUES
(1, 'Main Branch', 'Main Branch', 'Branch address here', '', '2022-09-20', '2022-09-20 07:59:48', '', '', 'a'),
(2, 'AB S', 'Ser', 'mm', '2', '0000-00-00', '2022-09-24 16:56:59', 'Admin', '', 'a'),
(3, 'Mirpur ', 'Mirpur ', 'Mispur 10,Dhaka ', '2', '0000-00-00', '2022-10-18 16:51:16', 'Admin', '', 'a'),
(4, 'global', 'gti', '49, khalek Ln, newmarket', '2', '0000-00-00', '2022-10-29 15:04:32', 'Admin', '', 'a'),
(5, 'Jony Enterprise', 'otp', 'Mirpur', '2', '0000-00-00', '2022-10-30 17:47:41', 'Admin', '', 'a'),
(6, 'SUN TRADING CO. (BD)', 'SUN TRADING CO. (BD)', 'SUN TRADING CO.(BD).\nHOUSE # 61, FLAT # B-1.\nROAD # 12, SECTOR # 10, UTTARA # 1230,\nDHAKA, BANGLADESH.\nPhone No:  +88 01799602501\n+88 01716940101\nফোন নম্বর: 01799-602501', '2', '0000-00-00', '2022-11-09 09:28:17', 'Admin', 'Admin', 'a'),
(7, 'Mirpur 1', 'Mirpur 1, Branch', 'Majar Road, Mirpur 1, Dhaka-1216', '2', '0000-00-00', '2022-11-20 10:19:27', 'Admin', '', 'a'),
(8, 'South cafe restaurant', 'South cafe restaurant', 'South cafe restaurant ', '2', '0000-00-00', '2022-12-03 21:04:16', 'Admin', '', 'a'),
(9, 'KOLLETJIES KAFEE', 'KOLLETJIES KAFEE', '3,4, SINOVILLE CORNER SHOPPINGMALL.\nBRAAM PERTORIUS ST,MASALIEKRUNI,PRETORIA,0001\nPHONE:0620084084\nEMAIL:kollletjieskkaff@gmail.com', '2', '0000-00-00', '2022-12-15 15:50:13', 'Admin', '', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashtransaction`
--

CREATE TABLE `tbl_cashtransaction` (
  `Tr_SlNo` int(11) NOT NULL,
  `Tr_Id` varchar(50) NOT NULL,
  `Tr_date` date NOT NULL,
  `Tr_Type` varchar(20) NOT NULL,
  `Tr_account_Type` varchar(50) NOT NULL,
  `Acc_SlID` int(11) NOT NULL,
  `Tr_Description` varchar(255) NOT NULL,
  `In_Amount` decimal(18,2) NOT NULL,
  `Out_Amount` decimal(18,2) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(100) NOT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `Tr_branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cashtransaction`
--

INSERT INTO `tbl_cashtransaction` (`Tr_SlNo`, `Tr_Id`, `Tr_date`, `Tr_Type`, `Tr_account_Type`, `Acc_SlID`, `Tr_Description`, `In_Amount`, `Out_Amount`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `Tr_branchid`) VALUES
(1, 'TR00001', '2022-09-21', 'In Cash', '', 1, 'BILL NO. 2502', '144000.00', '0.00', 'a', 'Admin', '2022-09-21 16:28:11', NULL, NULL, 1),
(2, 'TR00002', '2022-09-21', 'In Cash', '', 1, '2503', '2600.00', '0.00', 'a', 'Admin', '2022-09-21 16:28:49', NULL, NULL, 1),
(3, 'TR00003', '2022-09-22', 'In Cash', '', 2, 'OPENING BALANCE', '22572.00', '0.00', 'd', 'Admin', '2022-09-22 12:14:45', NULL, NULL, 1),
(4, 'TR00004', '2022-09-22', 'In Cash', '', 2, 'OPENING BALANCE', '22572.00', '0.00', 'a', 'Admin', '2022-09-22 12:15:13', NULL, NULL, 1),
(5, 'TR00005', '2022-08-01', 'In Cash', '', 2, 'OPENING BALANCE ', '22572.00', '0.00', 'a', 'Admin', '2022-09-22 12:17:04', NULL, NULL, 1),
(6, 'TR00006', '2022-08-02', 'In Cash', '', 1, 'CASH SALE BILL NO. 2502', '144000.00', '0.00', 'a', 'Admin', '2022-09-22 12:19:22', NULL, NULL, 1),
(7, 'TR00007', '2022-08-03', 'In Cash', '', 1, 'CASH SALE BILL NO. 2503', '2600.00', '0.00', 'a', 'Admin', '2022-09-22 12:20:27', NULL, NULL, 1),
(8, 'TR00008', '2022-08-04', 'In Cash', '', 1, 'CASH SALE BILL NO. 2505', '13500.00', '0.00', 'a', 'Admin', '2022-09-22 12:21:32', NULL, NULL, 1),
(9, 'TR00009', '2022-08-04', 'In Cash', '', 1, 'CASH SALE BILL NO. 2506', '51700.00', '0.00', 'a', 'Admin', '2022-09-22 12:24:01', NULL, NULL, 1),
(10, 'TR00010', '2022-08-09', 'In Cash', '', 1, 'CASH SALE BILL NO. 2507', '10450.00', '0.00', 'a', 'Admin', '2022-09-22 12:27:24', NULL, NULL, 1),
(11, 'TR00011', '2022-08-17', 'In Cash', '', 1, 'CASH SALE BILL NO. 2511', '26700.00', '0.00', 'a', 'Admin', '2022-09-22 12:28:38', NULL, NULL, 1),
(12, 'TR00012', '2022-08-22', 'In Cash', '', 1, 'ADVANCE FROM IQRAM BILL NO.2512', '312900.00', '0.00', 'a', 'Admin', '2022-09-22 12:30:35', NULL, NULL, 1),
(13, 'TR00013', '2022-08-23', 'In Cash', '', 1, 'ADVACNE FROM TASLIM BILL NO.2513', '39950.00', '0.00', 'a', 'Admin', '2022-09-22 12:32:00', NULL, NULL, 1),
(14, 'TR00014', '2022-08-23', 'In Cash', '', 1, 'CASH TASLIMA BILL NO. 2514', '30100.00', '0.00', 'a', 'Admin', '2022-09-22 12:32:48', NULL, NULL, 1),
(15, 'TR00015', '2022-08-29', 'In Cash', '', 1, 'CASH TASLIMA BILL NO. 2515', '40800.00', '0.00', 'a', 'Admin', '2022-09-22 12:33:41', NULL, NULL, 1),
(16, 'TR00016', '2022-08-02', 'Out Cash', '', 4, 'UNION BANK CASH DEPOSIT', '0.00', '144000.00', 'a', 'Admin', '2022-09-22 12:54:30', NULL, NULL, 1),
(17, 'TR00017', '2022-08-31', 'Out Cash', '', 4, 'UNION BANK CASH DEPOSIT', '0.00', '120000.00', 'a', 'Admin', '2022-09-22 12:55:23', NULL, NULL, 1),
(18, 'TR00018', '2022-08-02', 'Out Cash', '', 5, 'EDEN TRANSPORT N.ALAM', '0.00', '200.00', 'a', 'Admin', '2022-09-22 12:57:37', NULL, NULL, 1),
(19, 'TR00019', '2022-08-03', 'Out Cash', '', 6, 'EQUITY COMMODE DELIVERY', '0.00', '200.00', 'a', 'Admin', '2022-09-22 12:58:59', NULL, NULL, 1),
(20, 'TR00020', '2022-08-07', 'Out Cash', '', 7, 'WOOD MISTRI SHAFI ADVANCE ', '0.00', '3000.00', 'a', 'Admin', '2022-09-22 13:03:16', NULL, NULL, 1),
(21, 'TR00021', '2022-08-07', 'Out Cash', '', 7, 'NEW SHOWROOM VAN FARE', '0.00', '2000.00', 'a', 'Admin', '2022-09-22 13:04:10', NULL, NULL, 1),
(22, 'TR00022', '2022-08-08', 'Out Cash', '', 5, 'ANAM & DIDAR CONVEYANCE ', '0.00', '320.00', 'a', 'Admin', '2022-09-22 13:04:59', NULL, NULL, 1),
(23, 'TR00023', '2022-08-09', 'Out Cash', '', 7, 'WOOD MISTRI SHAFI ADVANCE', '0.00', '5000.00', 'a', 'Admin', '2022-09-22 13:05:40', NULL, NULL, 1),
(24, 'TR00024', '2022-08-09', 'Out Cash', '', 6, 'GODOWN DELIVERY', '0.00', '100.00', 'a', 'Admin', '2022-09-22 13:06:22', NULL, NULL, 1),
(25, 'TR00025', '2022-08-10', 'Out Cash', '', 5, 'MONSURABAD GODOWN UP DOWN', '0.00', '100.00', 'a', 'Admin', '2022-09-22 13:07:07', NULL, NULL, 1),
(26, 'TR00026', '2022-08-10', 'Out Cash', '', 6, 'CPDAL TILES DELIVRY', '0.00', '200.00', 'a', 'Admin', '2022-09-22 13:07:58', NULL, NULL, 1),
(27, 'TR00027', '2022-08-10', 'Out Cash', '', 8, 'OFFICE ENTERTAINMENT', '0.00', '100.00', 'a', 'Admin', '2022-09-22 13:09:12', NULL, NULL, 1),
(28, 'TR00028', '2022-08-13', 'Out Cash', '', 5, 'MONSURABAD DELIVERY CONVEYANCE', '0.00', '100.00', 'a', 'Admin', '2022-09-22 13:09:57', NULL, NULL, 1),
(29, 'TR00029', '2022-08-13', 'Out Cash', '', 8, 'OFFICE ENTERTAINMENT ', '0.00', '100.00', 'a', 'Admin', '2022-09-22 13:10:36', NULL, NULL, 1),
(30, 'TR00030', '2022-08-14', 'Out Cash', '', 7, 'BOARD PURCHASE FOR NEW SHOWROOM', '0.00', '61390.00', 'a', 'Admin', '2022-09-22 13:11:53', NULL, NULL, 1),
(31, 'TR00031', '2022-08-14', 'Out Cash', '', 5, 'JUBILEE ROAD N.ALAM', '0.00', '300.00', 'a', 'Admin', '2022-09-22 13:13:06', NULL, NULL, 1),
(32, 'TR00032', '2022-08-14', 'Out Cash', '', 7, '3D PRINT DESIGN', '0.00', '100.00', 'a', 'Admin', '2022-09-22 13:13:45', NULL, NULL, 1),
(33, 'TR00033', '2022-08-14', 'Out Cash', '', 5, 'CPDL UP DOWN', '0.00', '100.00', 'a', 'Admin', '2022-09-22 13:21:09', NULL, NULL, 1),
(34, 'TR00034', '2022-08-14', 'Out Cash', '', 8, 'LUNCH FOR OFFICIAL WORK ', '0.00', '140.00', 'a', 'Admin', '2022-09-22 13:21:49', NULL, NULL, 1),
(35, 'TR00035', '2022-08-16', 'Out Cash', '', 7, 'RACK DELIVERY FOR NEW SHOWROOM', '0.00', '2900.00', 'a', 'Admin', '2022-09-22 13:22:56', NULL, NULL, 1),
(36, 'TR00036', '2022-08-16', 'Out Cash', '', 7, 'PARTEX BOARD PURCHASE ', '0.00', '8280.00', 'a', 'Admin', '2022-09-22 13:23:42', NULL, NULL, 1),
(37, 'TR00037', '2022-08-16', 'Out Cash', '', 5, 'MONSURABAD-B.T-CPDAL -ANAM ', '0.00', '300.00', 'a', 'Admin', '2022-09-22 13:24:41', NULL, NULL, 1),
(38, 'TR00038', '2022-08-16', 'Out Cash', '', 7, 'ELECTRIC WIRE (ANAM) ', '0.00', '220.00', 'a', 'Admin', '2022-09-22 13:26:06', NULL, NULL, 1),
(39, 'TR00039', '2022-08-16', 'Out Cash', '', 8, 'LUNCH FOR OFFICIAL WORK ', '0.00', '150.00', 'a', 'Admin', '2022-09-22 13:26:46', NULL, NULL, 1),
(40, 'TR00040', '2022-08-17', 'Out Cash', '', 5, 'SADDAM NEW SHOWROOM ', '0.00', '150.00', 'a', 'Admin', '2022-09-22 13:27:43', NULL, NULL, 1),
(41, 'TR00041', '2022-08-17', 'Out Cash', '', 7, 'RACK MISTRI NEW SHOWROOM ', '0.00', '150.00', 'a', 'Admin', '2022-09-22 13:28:55', NULL, NULL, 1),
(42, 'TR00042', '2022-08-17', 'Out Cash', '', 5, 'ANAM GODOWN -B.T', '0.00', '200.00', 'a', 'Admin', '2022-09-22 13:29:53', NULL, NULL, 1),
(43, 'TR00043', '2022-08-17', 'Out Cash', '', 8, 'LUNCH FOR OFFICIAL WORK ', '0.00', '150.00', 'a', 'Admin', '2022-09-22 13:30:21', NULL, NULL, 1),
(44, 'TR00044', '2022-08-17', 'Out Cash', '', 8, 'EVENTING NASTA ', '0.00', '50.00', 'a', 'Admin', '2022-09-22 13:31:01', NULL, NULL, 1),
(45, 'TR00045', '2022-08-18', 'Out Cash', '', 7, 'WOOD MISTRI SHAFI ADVANCE ', '0.00', '5000.00', 'a', 'Admin', '2022-09-22 13:31:33', NULL, NULL, 1),
(46, 'TR00046', '2022-08-18', 'Out Cash', '', 7, 'WOOD PURCHASE ', '0.00', '4400.00', 'a', 'Admin', '2022-09-22 13:31:58', NULL, NULL, 1),
(47, 'TR00047', '2022-08-18', 'Out Cash', '', 5, 'ANAM GODOWN ', '0.00', '250.00', 'a', 'Admin', '2022-09-22 13:32:36', NULL, NULL, 1),
(48, 'TR00048', '2022-08-18', 'Out Cash', '', 8, 'LUNCH FOR OFFICIAL WORK ', '0.00', '100.00', 'a', 'Admin', '2022-09-22 13:33:05', NULL, NULL, 1),
(49, 'TR00049', '2022-08-20', 'Out Cash', '', 5, 'ANAM GODOWN ', '0.00', '150.00', 'a', 'Admin', '2022-09-22 13:34:33', NULL, NULL, 1),
(50, 'TR00050', '2022-08-20', 'Out Cash', '', 8, 'LUNCH & EVENING NASTA ', '0.00', '180.00', 'a', 'Admin', '2022-09-22 13:36:12', NULL, NULL, 1),
(51, 'TR00051', '2022-08-21', 'Out Cash', '', 9, 'SADDAM SALARY ADVANCE FOR AUGUST 2022', '0.00', '2000.00', 'a', 'Admin', '2022-09-22 13:38:33', NULL, NULL, 1),
(52, 'TR00052', '2022-08-21', 'Out Cash', '', 8, 'WATER BILL', '0.00', '25.00', 'a', 'Admin', '2022-09-22 13:38:54', NULL, NULL, 1),
(53, 'TR00053', '2022-08-21', 'Out Cash', '', 7, 'WOOD MISTRI SHAFI ADVANCE ', '0.00', '500.00', 'a', 'Admin', '2022-09-22 13:44:26', NULL, NULL, 1),
(54, 'TR00054', '2022-08-21', 'Out Cash', '', 7, 'CEMENT & SAND PURCHASE ', '0.00', '2890.00', 'a', 'Admin', '2022-09-22 13:45:48', NULL, NULL, 1),
(55, 'TR00055', '2022-08-21', 'Out Cash', '', 8, 'LUNCH & EVENING NASTA ', '0.00', '225.00', 'a', 'Admin', '2022-09-22 13:47:26', NULL, NULL, 1),
(56, 'TR00056', '2022-08-22', 'Out Cash', '', 7, 'TILES MISTRI ', '0.00', '3500.00', 'a', 'Admin', '2022-09-22 13:49:00', NULL, NULL, 1),
(57, 'TR00057', '2022-08-22', 'Out Cash', '', 8, 'LUNCH ', '0.00', '100.00', 'a', 'Admin', '2022-09-22 13:49:25', NULL, NULL, 1),
(58, 'TR00058', '2022-08-22', 'Out Cash', '', 7, 'WOOD MISTRI SHAFI ADVANCE ', '0.00', '3500.00', 'a', 'Admin', '2022-09-22 13:50:00', NULL, NULL, 1),
(59, 'TR00059', '2022-08-22', 'Out Cash', '', 5, 'ANAM GODOWN ', '0.00', '200.00', 'a', 'Admin', '2022-09-22 13:51:03', NULL, NULL, 1),
(60, 'TR00060', '2022-08-22', 'Out Cash', '', 7, 'ELECTRICAL GOODS(ANAM)', '0.00', '125.00', 'a', 'Admin', '2022-09-22 13:52:56', NULL, NULL, 1),
(61, 'TR00061', '2022-08-22', 'Out Cash', '', 7, 'PERAG & WOOD MISTRI ', '0.00', '100.00', 'a', 'Admin', '2022-09-22 13:53:41', NULL, NULL, 1),
(62, 'TR00062', '2022-08-23', 'Out Cash', '', 7, 'RACK MISTRI ', '0.00', '200.00', 'a', 'Admin', '2022-09-22 13:54:25', NULL, NULL, 1),
(63, 'TR00063', '2022-08-23', 'Out Cash', '', 8, 'LUNCH', '0.00', '150.00', 'a', 'Admin', '2022-09-22 13:54:47', NULL, NULL, 1),
(64, 'TR00064', '2022-08-23', 'Out Cash', '', 7, 'PERAG 1 INCHI', '0.00', '270.00', 'a', 'Admin', '2022-09-22 13:55:15', NULL, NULL, 1),
(65, 'TR00065', '2022-08-23', 'Out Cash', '', 8, 'EVENING NASTA ', '0.00', '50.00', 'a', 'Admin', '2022-09-22 13:55:49', NULL, NULL, 1),
(66, 'TR00066', '2022-08-25', 'Out Cash', '', 7, 'WOOD MISTRI SHAFI ADVANCE ', '0.00', '3000.00', 'a', 'Admin', '2022-09-22 13:56:26', NULL, NULL, 1),
(67, 'TR00067', '2022-08-25', 'Out Cash', '', 7, 'LUNCH ', '0.00', '100.00', 'a', 'Admin', '2022-09-22 13:57:32', NULL, NULL, 1),
(68, 'TR00068', '2022-08-25', 'Out Cash', '', 7, 'TOILET LOCK KEY REPAIR ', '0.00', '300.00', 'a', 'Admin', '2022-09-22 13:58:33', NULL, NULL, 1),
(69, 'TR00069', '2022-08-25', 'Out Cash', '', 8, 'EVENING NASTA ', '0.00', '50.00', 'a', 'Admin', '2022-09-22 13:59:14', NULL, NULL, 1),
(70, 'TR00070', '2022-08-27', 'Out Cash', '', 7, 'RACK MISTRI CONVEYANCE ', '0.00', '130.00', 'a', 'Admin', '2022-09-22 14:01:51', NULL, NULL, 1),
(71, 'TR00071', '2022-08-28', 'Out Cash', '', 5, 'ANAM MONSURABAD-B.T ', '0.00', '200.00', 'a', 'Admin', '2022-09-22 14:02:32', NULL, NULL, 1),
(72, 'TR00072', '2022-08-28', 'Out Cash', '', 7, 'NASTA RACK MISTRI & OTHERS ', '0.00', '110.00', 'a', 'Admin', '2022-09-22 14:03:01', NULL, NULL, 1),
(73, 'TR00073', '2022-08-28', 'Out Cash', '', 7, 'STAMP PURCHSE FOR PARTNER AGREEMENT ', '0.00', '5200.00', 'a', 'Admin', '2022-09-22 14:03:43', NULL, NULL, 1),
(74, 'TR00074', '2022-08-29', 'Out Cash', '', 8, 'NASTA ALL MISTRI ', '0.00', '100.00', 'a', 'Admin', '2022-09-22 14:05:36', NULL, NULL, 1),
(75, 'TR00075', '2022-08-29', 'Out Cash', '', 6, 'MONSURABAD DELIVERY', '0.00', '100.00', 'a', 'Admin', '2022-09-22 14:07:43', NULL, NULL, 1),
(76, 'TR00076', '2022-08-29', 'Out Cash', '', 7, 'WATER ZAR PURCHASE ', '0.00', '240.00', 'a', 'Admin', '2022-09-22 14:08:18', NULL, NULL, 1),
(77, 'TR00077', '2022-08-30', 'Out Cash', '', 7, 'RACK MISTRI ALAMGIR ADVANCE ', '0.00', '25000.00', 'a', 'Admin', '2022-09-22 14:11:04', NULL, NULL, 1),
(78, 'TR00078', '2022-08-30', 'Out Cash', '', 5, 'ANAM B.T A.D ', '0.00', '100.00', 'a', 'Admin', '2022-09-22 14:11:31', NULL, NULL, 1),
(79, 'TR00079', '2022-08-30', 'Out Cash', '', 8, 'NASTA -MISTRI & OTHERS ', '0.00', '66.00', 'a', 'Admin', '2022-09-22 14:12:07', NULL, NULL, 1),
(80, 'TR00080', '2022-08-31', 'Out Cash', '', 5, 'B.T TO UNION BANK -A.D ', '0.00', '100.00', 'a', 'Admin', '2022-09-22 14:12:45', NULL, NULL, 1),
(81, 'TR00081', '2022-08-31', 'Out Cash', '', 8, 'LUNCH', '0.00', '100.00', 'a', 'Admin', '2022-09-22 14:13:07', NULL, NULL, 1),
(82, 'TR00082', '2022-08-31', 'Out Cash', '', 5, 'A.D TO B.T ', '0.00', '100.00', 'a', 'Admin', '2022-09-22 14:13:34', NULL, NULL, 1),
(83, 'TR00083', '2022-08-31', 'Out Cash', '', 10, 'REPAIR CHAIR HYDROLIC CHANGE FOR MR.IQBAL', '0.00', '800.00', 'a', 'Admin', '2022-09-22 14:15:25', NULL, NULL, 1),
(84, 'TR00084', '2022-09-26', 'In Cash', '', 1, 'ddf', '50.00', '0.00', 'd', 'Admin', '2022-09-26 12:04:25', NULL, NULL, 1),
(85, 'TR00085', '2022-09-27', 'Out Cash', '', 11, 'Tea And gkjbkj', '0.00', '100.00', 'a', 'Admin', '2022-09-27 16:25:17', NULL, NULL, 1),
(86, 'TR00086', '2022-09-27', 'In Cash', '', 11, '', '20.00', '0.00', 'a', 'Admin', '2022-09-27 16:34:03', NULL, NULL, 1),
(87, 'TR00087', '2022-10-14', 'Out Cash', '', 6, 'Nazu Vai', '0.00', '4500.00', 'a', 'Admin', '2022-10-14 17:24:25', NULL, NULL, 1),
(88, 'TR00088', '2022-10-16', 'Out Cash', '', 5, 'Entertanmant', '0.00', '500.00', 'a', 'Admin', '2022-10-16 15:15:43', NULL, NULL, 1),
(89, 'TR00089', '2022-10-16', 'Out Cash', '', 11, '', '0.00', '2000.00', 'a', 'Admin', '2022-10-16 15:16:10', NULL, NULL, 1),
(90, 'TR00090', '2022-10-18', 'In Cash', '', 1, '', '2000.00', '0.00', 'a', 'Admin', '2022-10-18 16:09:43', NULL, NULL, 1),
(91, 'TR00091', '2022-10-18', 'Out Cash', '', 8, '', '0.00', '30000.00', 'a', 'Admin', '2022-10-18 16:09:55', NULL, NULL, 1),
(92, 'TR00092', '2022-10-22', 'Out Cash', '', 8, '', '0.00', '500.00', 'a', 'Admin', '2022-10-22 16:39:55', NULL, NULL, 1),
(93, 'TR00093', '2022-10-22', 'In Cash', '', 2, '', '200000.00', '0.00', 'a', 'Admin', '2022-10-22 16:43:20', NULL, NULL, 1),
(94, 'TR00094', '2022-10-26', 'Out Cash', '', 5, '', '0.00', '600.00', 'a', 'Admin', '2022-10-26 19:46:34', NULL, NULL, 1),
(95, 'TR00095', '2022-10-01', 'Out Cash', '', 13, 'Salary', '0.00', '5000.00', 'a', 'Admin', '2022-10-30 16:06:03', NULL, NULL, 1),
(96, 'TR00096', '2022-10-05', 'Out Cash', '', 13, 'Salary - Sept 22', '0.00', '7000.00', 'a', 'Admin', '2022-10-30 16:06:24', NULL, NULL, 1),
(97, 'TR00097', '2022-10-15', 'Out Cash', '', 13, 'Salary Sept 22', '0.00', '5000.00', 'a', 'Admin', '2022-10-30 16:06:45', NULL, NULL, 1),
(98, 'TR00098', '2022-11-01', 'Out Cash', '', 8, '', '0.00', '500.00', 'a', 'Admin', '2022-11-01 16:25:38', NULL, NULL, 1),
(99, 'TR00099', '2022-11-06', 'In Cash', '', 14, '', '50000.00', '0.00', 'a', 'Admin', '2022-11-06 12:11:35', NULL, NULL, 3),
(100, 'TR00100', '2022-11-06', 'Out Cash', '', 15, 'Mostafiz', '0.00', '20000.00', 'a', 'Admin', '2022-11-06 12:11:58', NULL, NULL, 3),
(101, 'TR00101', '2022-11-06', 'Out Cash', '', 16, 'Entartain', '0.00', '500.00', 'a', 'Admin', '2022-11-06 12:12:19', NULL, NULL, 3),
(102, 'TR00102', '2022-11-06', 'Out Cash', '', 17, '', '0.00', '28000.00', 'a', 'Admin', '2022-11-06 12:13:55', NULL, NULL, 3),
(103, 'TR00103', '2022-11-06', 'In Cash', '', 18, '', '28000.00', '0.00', 'a', 'Admin', '2022-11-06 12:16:12', NULL, NULL, 1),
(104, 'TR00104', '2022-11-09', 'Out Cash', '', 12, '', '0.00', '5000.00', 'a', 'Admin', '2022-11-09 13:25:03', NULL, NULL, 1),
(105, 'TR00105', '2022-11-09', 'Out Cash', '', 4, '', '0.00', '500.00', 'a', 'Admin', '2022-11-09 13:25:14', NULL, NULL, 1),
(106, 'TR00106', '2022-11-17', 'In Cash', '', 3, '', '1.00', '0.00', 'd', 'Admin', '2022-11-17 17:31:54', NULL, NULL, 1),
(107, 'TR00107', '2022-11-19', 'Out Cash', '', 20, 'Lunch (Azim)', '0.00', '500.00', 'a', 'Admin', '2022-11-19 15:41:10', NULL, NULL, 1),
(108, 'TR00108', '2022-11-23', 'In Cash', '', 4, 'check', '100000.00', '0.00', 'a', 'Admin', '2022-11-23 08:51:52', NULL, NULL, 1),
(109, 'TR00109', '2022-11-23', 'In Cash', '', 4, 'chech32332', '200000.00', '0.00', 'a', 'Admin', '2022-11-23 08:52:36', NULL, NULL, 1),
(110, 'TR00110', '2022-12-01', 'Out Cash', '', 5, '', '0.00', '500.00', 'a', 'Admin', '2022-12-01 13:39:40', NULL, NULL, 1),
(111, 'TR00111', '2022-12-03', 'In Cash', '', 6, '', '500.00', '0.00', 'a', 'Admin', '2022-12-03 15:25:30', NULL, NULL, 1),
(112, 'TR00112', '2022-12-03', 'Out Cash', '', 5, 'xcwsd', '0.00', '200.00', 'a', 'Admin', '2022-12-03 15:33:39', NULL, NULL, 1),
(113, 'TR00113', '2022-12-05', 'Out Cash', '', 12, '', '0.00', '5000.00', 'a', 'Admin', '2022-12-05 12:36:39', NULL, NULL, 1),
(114, 'TR00114', '2022-12-05', 'Out Cash', '', 12, 'hhh', '0.00', '70000.00', 'a', 'Admin', '2022-12-05 15:14:29', NULL, NULL, 1),
(115, 'TR00115', '2022-12-06', 'In Cash', '', 3, '', '32588.00', '0.00', 'a', 'Admin', '2022-12-06 11:47:56', NULL, NULL, 1),
(116, 'TR00116', '2022-12-08', 'In Cash', '', 21, 'Forhad', '50000.00', '0.00', 'a', 'Admin', '2022-12-08 18:59:49', NULL, NULL, 1),
(117, 'TR00117', '2022-12-08', 'In Cash', '', 2, 'sagor', '4000.00', '0.00', 'a', 'Admin', '2022-12-08 19:09:05', NULL, NULL, 1),
(118, 'TR00118', '2022-12-10', 'Out Cash', '', 11, 'xyz', '0.00', '200.00', 'a', 'Admin', '2022-12-10 13:42:17', NULL, NULL, 1),
(119, 'TR00119', '2022-12-13', 'In Cash', '', 2, 'dfxdd', '5000.00', '0.00', 'a', 'Admin', '2022-12-13 12:56:32', NULL, NULL, 1),
(120, 'TR00120', '2022-12-13', 'Out Cash', '', 22, 'PROFIT', '0.00', '9000.00', 'a', 'Admin', '2022-12-13 13:21:18', NULL, NULL, 1),
(121, 'TR00121', '2022-12-13', 'In Cash', '', 12, 'jgdjhcv,khfy', '500.00', '0.00', 'a', 'Admin', '2022-12-13 19:33:40', NULL, NULL, 1),
(122, 'TR00122', '2022-12-18', 'In Cash', '', 4, '', '25000.00', '0.00', 'a', 'Admin', '2022-12-18 10:55:02', NULL, NULL, 1),
(123, 'TR00123', '2022-12-19', 'Out Cash', '', 12, '', '0.00', '100.00', 'a', 'Admin', '2022-12-19 11:01:20', NULL, NULL, 1),
(124, 'TR00124', '2022-12-19', 'In Cash', '', 2, '', '5000.00', '0.00', 'a', 'Admin', '2022-12-19 11:47:33', NULL, NULL, 1),
(125, 'TR00125', '2022-12-20', 'Out Cash', '', 12, 'tea', '0.00', '20.00', 'a', 'Admin', '2022-12-20 16:39:25', NULL, NULL, 1),
(126, 'TR00126', '2022-12-27', 'Out Cash', '', 12, 'xyz', '0.00', '200.00', 'a', 'Admin', '2022-12-27 15:24:42', NULL, NULL, 1),
(127, 'TR00127', '2022-12-29', 'Out Cash', '', 12, 'Entertainment', '0.00', '2000.00', 'a', 'Admin', '2022-12-29 19:16:25', NULL, NULL, 1),
(128, 'TR00128', '2022-12-29', 'Out Cash', '', 23, 'Cash', '0.00', '25000.00', 'a', 'Admin', '2022-12-29 19:18:08', NULL, NULL, 1),
(129, 'TR00129', '2022-12-30', 'Out Cash', '', 6, 'Abdul, Karim5jo', '0.00', '2000.00', 'a', 'Admin', '2022-12-30 11:18:14', NULL, NULL, 1),
(130, 'TR00130', '2023-01-09', 'Out Cash', '', 2, 'suplier', '0.00', '2000.00', 'a', 'Admin', '2023-01-09 13:46:08', 'Admin', '2023-01-09 13:46:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checks`
--

CREATE TABLE `tbl_checks` (
  `id` int(20) UNSIGNED NOT NULL,
  `cus_id` int(20) DEFAULT NULL,
  `SM_id` int(20) UNSIGNED DEFAULT NULL,
  `csubmit_date` date DEFAULT NULL,
  `bank_name` varchar(250) DEFAULT NULL,
  `branch_name` varchar(250) DEFAULT NULL,
  `check_no` varchar(250) DEFAULT NULL,
  `check_amount` decimal(18,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `check_date` timestamp NULL DEFAULT NULL,
  `remid_date` timestamp NULL DEFAULT NULL,
  `sub_date` timestamp NULL DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `check_status` char(5) DEFAULT 'Pe' COMMENT 'Pe =Pending, Pa = Paid',
  `status` char(5) NOT NULL DEFAULT 'a',
  `created_by` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `branch_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_checks`
--

INSERT INTO `tbl_checks` (`id`, `cus_id`, `SM_id`, `csubmit_date`, `bank_name`, `branch_name`, `check_no`, `check_amount`, `date`, `check_date`, `remid_date`, `sub_date`, `note`, `check_status`, `status`, `created_by`, `created_at`, `branch_id`) VALUES
(1, 1, NULL, '2022-10-19', 'DBBL', 'Mirpur 10', '1245789', '10000.00', '2022-10-19 04:00:00', '2022-10-18 04:00:00', '2022-10-18 04:00:00', '2022-10-18 04:00:00', '', 'Pa', 'a', 'Admin', '2022-10-18 04:00:00', 1),
(2, 7, NULL, '2022-12-04', 'NCC', 'Mirpru', '00988234', '100000.00', '2022-12-04 05:00:00', '2022-12-04 05:00:00', '2022-12-03 05:00:00', '2022-12-04 05:00:00', '', 'Pe', 'a', 'Admin', '2022-12-04 05:00:00', 1),
(3, 2, NULL, '2022-12-08', 'Bank Asia', 'Gulshan', '123456754', '100000.00', '2022-12-08 05:00:00', '2022-12-12 05:00:00', '2022-12-11 05:00:00', '2022-12-12 05:00:00', '', 'Pe', 'a', 'Admin', '2022-12-08 05:00:00', 1),
(4, 1, NULL, '2023-02-11', 'DSJHGDFSUK', 'SDJHGSDGHK', '3968745', '126122.00', '2023-02-10 18:00:00', '2023-02-10 18:00:00', '2023-02-10 18:00:00', '2023-02-10 18:00:00', 'UJSDGUHSDJ', 'Pa', 'a', 'Admin', '2023-02-10 18:00:00', 1),
(5, 1, NULL, '2023-02-12', 'DBBL', 'Mirpur', '14152413454351', '90000.00', '2023-02-11 18:00:00', '2023-02-11 18:00:00', '2023-02-11 18:00:00', '2023-02-11 18:00:00', 'Testing', 'Pa', 'a', 'Admin', '2023-02-11 18:00:00', 1),
(6, 15, NULL, '2023-02-12', 'Islami Bank', 'MIrpur-10, Dhaka', 'IS-524154354', '55000.00', '2023-02-11 18:00:00', '2023-02-11 18:00:00', '2023-02-11 18:00:00', '2023-02-11 18:00:00', 'Paid - 55k in Islami Bank', 'Pa', 'a', 'Admin', '2023-02-11 18:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_SiNo` int(11) NOT NULL,
  `color_name` varchar(100) NOT NULL,
  `status` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `Company_SlNo` int(11) NOT NULL,
  `Company_Name` varchar(150) NOT NULL,
  `Repot_Heading` text NOT NULL,
  `Company_Logo_org` varchar(250) NOT NULL,
  `Company_Logo_thum` varchar(250) NOT NULL,
  `Invoice_Type` int(11) NOT NULL,
  `Currency_Name` varchar(50) DEFAULT NULL,
  `Currency_Symbol` varchar(10) DEFAULT NULL,
  `SubCurrency_Name` varchar(50) DEFAULT NULL,
  `print_type` int(11) NOT NULL,
  `company_BrunchId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`Company_SlNo`, `Company_Name`, `Repot_Heading`, `Company_Logo_org`, `Company_Logo_thum`, `Invoice_Type`, `Currency_Name`, `Currency_Symbol`, `SubCurrency_Name`, `print_type`, `company_BrunchId`) VALUES
(1, 'MJN International', 'Mirpur-10, Dhaka-1216\r\nMob: +88 01981-800200', 'link-up_technology2.png', 'link-up_technology2.png', 1, 'BDT', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `Country_SlNo` int(11) NOT NULL,
  `CountryName` varchar(50) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currentinventory`
--

CREATE TABLE `tbl_currentinventory` (
  `inventory_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_quantity` float NOT NULL,
  `purchase_return_quantity` float NOT NULL,
  `sales_quantity` float NOT NULL,
  `sales_return_quantity` float NOT NULL,
  `damage_quantity` float NOT NULL,
  `transfer_from_quantity` float NOT NULL,
  `transfer_to_quantity` float NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_currentinventory`
--

INSERT INTO `tbl_currentinventory` (`inventory_id`, `product_id`, `purchase_quantity`, `purchase_return_quantity`, `sales_quantity`, `sales_return_quantity`, `damage_quantity`, `transfer_from_quantity`, `transfer_to_quantity`, `branch_id`) VALUES
(1, 8, 52, 0, 2, 0, 0, 0, 0, 1),
(2, 7, 106, 0, 2, 1, 0, 0, 0, 1),
(3, 6, 201, 0, 1, 0, 0, 0, 0, 1),
(4, 5, 51, 0, 0, 0, 0, 0, 0, 1),
(5, 4, 102, 0, 4, 0, 0, 0, 0, 1),
(6, 3, 209, 0, 3, 0, 0, 0, 0, 1),
(7, 2, 201, 0, 1, 0, 0, 0, 0, 1),
(8, 1, 202, 0, 13, 0, 0, 1, 0, 1),
(9, 12, 310, 0, 2, 0, 0, 0, 0, 1),
(10, 13, 215, 0, 151, 5, 2, 1, 0, 1),
(11, 13, 0, 0, 1, 0, 0, 0, 1, 2),
(12, 1, 0, 0, 0, 0, 0, 0, 1, 2),
(13, 14, 2030, 0, 34, 0, 0, 0, 0, 1),
(14, 15, 300, 20, 63, 2, 0, 0, 0, 1),
(15, 18, 11000, 0, 118, 20, 0, 0, 0, 1),
(16, 19, 10522, 0, 342, 0, 0, 0, 0, 1),
(17, 11, 500, 0, 28, 0, 0, 0, 0, 1),
(18, 20, 524, 0, 259, 0, 0, 0, 0, 1),
(19, 21, 100, 0, 100.99, 1, 0, 0, 0, 1),
(20, 24, 41, 0, 6, 0, 0, 0, 0, 1),
(21, 25, 21, 0, 16, 1, 0, 0, 0, 1),
(22, 25, 10, 0, 0, 0, 0, 0, 0, 6),
(23, 24, 10, 0, 0, 0, 0, 0, 0, 6),
(24, 13, 10, 0, 0, 0, 0, 0, 0, 6),
(25, 26, 14, 0, 5, 0, 0, 0, 0, 1),
(26, 27, 6, 0, 6, 0, 0, 0, 0, 1),
(27, 28, 10, 0, 10, 1, 0, 0, 0, 1),
(28, 29, 610, 0, 324, 30, 0, 17, 0, 1),
(29, 30, 600, 0, 143, 9, 0, 0, 0, 1),
(30, 32, 530, 0, 95, 12, 0, 0, 0, 1),
(31, 0, 2, 0, 0, 0, 0, 0, 0, 1),
(32, 37, 100, 0, 0, 0, 0, 0, 0, 7),
(33, 36, 150, 0, 0, 0, 0, 0, 0, 7),
(34, 29, 0, 0, 0, 0, 0, 0, 17, 3),
(35, 38, 11000200, 0, 10100400, 20, 1, 0, 0, 1),
(36, 37, 215, 0, 24, 0, 2, 0, 0, 1),
(37, 39, 194, 0, 44, 0, 0, 0, 0, 1),
(38, 40, 192, 0, 47, 0, 0, 0, 0, 1),
(39, 36, 80, 0, 9, 1, 0, 0, 0, 1),
(40, 41, 88, 0, 43, 0, 0, 0, 0, 1),
(41, 42, 462, 0, 156, 0, 0, 4, 0, 1),
(42, 33, 60, 0, 15, 0, 0, 0, 0, 1),
(43, 35, 6, 0, 1, 0, 0, 0, 0, 1),
(44, 43, 112, 0, 7, 0, 0, 0, 0, 1),
(45, 34, 18, 0, 0, 0, 0, 0, 0, 1),
(46, 45, 200, 0, 61, 2, 0, 25, 0, 1),
(47, 42, 0, 0, 0, 0, 0, 0, 4, 5),
(48, 44, 10, 0, 10, 0, 0, 0, 0, 1),
(49, 46, 10, 0, 10, 1, 0, 0, 0, 1),
(50, 45, 0, 0, 0, 0, 0, 0, 20, 7),
(51, 47, 2100, 0, 35, 0, 0, 0, 0, 1),
(52, 45, 0, 0, 0, 0, 0, 0, 5, 5),
(53, 44, 10, 0, 2, 0, 0, 0, 0, 9),
(54, 51, 10, 0, 1, 0, 0, 0, 0, 9),
(55, 50, 10, 0, 0, 0, 0, 0, 0, 9),
(56, 49, 10, 0, 0, 0, 0, 0, 0, 9),
(57, 48, 10, 0, 1, 0, 0, 0, 0, 9),
(58, 48, 20, 0, 1, 0, 0, 0, 0, 1),
(59, 49, 150, 0, 10, 0, 0, 0, 0, 1),
(60, 50, 150, 0, 20, 0, 0, 25, 0, 1),
(61, 50, 0, 0, 0, 0, 0, 0, 25, 6),
(62, 53, 200, 0, 28, 5, 0, 0, 0, 1),
(63, 54, 600, 20, 17, 3, 0, 0, 0, 1),
(64, 55, 145, 5, 80, 5, 0, 0, 0, 1),
(65, 56, 70, 0, 46, 1, 0, 0, 0, 1),
(66, 57, 280, 0, 0, 0, 0, 0, 0, 1),
(67, 59, 280, 0, 0, 0, 0, 0, 0, 1),
(68, 61, 41, 0, 6, 0, 0, 0, 0, 1),
(69, 62, 100, 0, 9.8, 0, 0, 0, 0, 1),
(70, 64, 100, 0, 101, 1, 0, 0, 0, 1),
(71, 63, 200, 0, 100, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `Customer_SlNo` int(11) NOT NULL,
  `Customer_Code` varchar(50) NOT NULL,
  `Customer_Name` varchar(150) NOT NULL,
  `Customer_Type` varchar(50) NOT NULL,
  `Customer_Phone` varchar(50) NOT NULL,
  `Customer_Mobile` varchar(15) NOT NULL,
  `Customer_Email` varchar(50) NOT NULL,
  `Customer_OfficePhone` varchar(50) NOT NULL,
  `Customer_Address` varchar(300) NOT NULL,
  `owner_name` varchar(250) DEFAULT NULL,
  `Country_SlNo` int(11) NOT NULL,
  `area_ID` int(11) NOT NULL,
  `Customer_Web` varchar(50) NOT NULL,
  `Customer_Credit_Limit` decimal(18,2) NOT NULL,
  `previous_due` decimal(18,2) NOT NULL,
  `image_name` varchar(1000) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `Customer_brunchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`Customer_SlNo`, `Customer_Code`, `Customer_Name`, `Customer_Type`, `Customer_Phone`, `Customer_Mobile`, `Customer_Email`, `Customer_OfficePhone`, `Customer_Address`, `owner_name`, `Country_SlNo`, `area_ID`, `Customer_Web`, `Customer_Credit_Limit`, `previous_due`, `image_name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `Customer_brunchid`) VALUES
(1, 'C00001', 'A.J Construction (Paints & Hardware)', 'retail', '', '01819368103', '', '', '', '', 0, 1, '', '500000.00', '1084122.00', NULL, 'a', 'Admin', '2022-09-21 16:02:22', 'Admin', '2022-10-30 18:18:50', 1),
(2, 'C00002', 'ttt', 'retail', '', '01713705076', '', '', 'dyy', 'd', 0, 1, '', '500000.00', '0.00', NULL, 'a', 'Admin', '2022-09-23 01:27:26', 'Admin', '2022-10-30 18:18:28', 1),
(3, 'C00003', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-09-24 16:17:47', NULL, NULL, 1),
(4, 'C00004', 'fgggg', 'retail', '', '01711418040', '', '', '', 'dd', 0, 1, '', '1000000.00', '0.00', NULL, 'a', 'Admin', '2022-09-24 23:08:10', 'Admin', '2022-10-30 18:18:13', 1),
(5, 'C00005', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-09-25 13:19:20', NULL, NULL, 1),
(6, 'C00006', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-09-25 13:20:26', NULL, NULL, 1),
(7, 'C00007', 'sohel rana', 'retail', '', '01721850242', '', '', '', 'link up', 0, 1, '', '50000.00', '0.00', NULL, 'a', 'Admin', '2022-09-25 19:30:45', NULL, NULL, 1),
(8, 'C00008', 'MD DIPU', 'retail', '', '01711153820', '', '', 'SHAH ALI BAGH', 'MD DIPU', 0, 4, '', '50000.00', '0.00', NULL, 'a', 'Admin', '2022-09-25 19:40:33', NULL, NULL, 1),
(9, 'C00009', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-09-26 16:46:45', NULL, NULL, 1),
(10, 'C00010', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-09-26 16:48:45', NULL, NULL, 1),
(11, 'C00011', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-09-27 14:47:38', NULL, NULL, 1),
(12, 'C00012', 'Abdur Rahim', 'retail', '', '01944', '', '', 'Mirpur-10', 'Linkup', 0, 2, '', '100000.00', '0.00', NULL, 'a', 'Admin', '2022-09-27 15:02:37', NULL, NULL, 1),
(13, 'C00013', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-13 11:26:50', NULL, NULL, 1),
(14, 'C00014', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-13 11:29:52', NULL, NULL, 1),
(15, 'C00015', 'Md Forhad', 'retail', '', '01904098043', '', '', 'Dhaka', 'Forhad', 0, 2, '', '100000000.00', '0.00', NULL, 'a', 'Admin', '2022-10-16 10:05:11', NULL, NULL, 1),
(16, 'C00016', 'Mehedi Hasan ', 'G', '', '0173245', '', '', 'Mirpur 10', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-18 14:46:04', NULL, NULL, 1),
(17, 'C00017', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-18 16:05:19', NULL, NULL, 1),
(18, 'C00018', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-24 17:53:06', NULL, NULL, 1),
(19, 'C00019', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-24 17:58:59', NULL, NULL, 1),
(20, 'C00020', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-24 21:29:13', NULL, NULL, 1),
(21, 'C00021', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-24 21:31:00', NULL, NULL, 1),
(22, 'C00022', 'Rakib', 'retail', '', '019556565500', '', '', 'jkkds', 'Khan', 0, 1, '', '5000000.00', '0.00', NULL, 'a', 'Admin', '2022-10-24 21:37:13', 'Admin', '2022-11-05 17:32:24', 1),
(23, 'C00023', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-25 14:04:46', NULL, NULL, 1),
(24, 'C00024', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-26 19:45:55', NULL, NULL, 1),
(25, 'C00025', 'Jewel Enterprise', 'retail', '', '01776545', '', '', 'Mogbazar', 'Jewel', 0, 2, '', '2000000.00', '0.00', NULL, 'a', 'Admin', '2022-10-27 17:46:16', 'Admin', '2022-10-30 18:17:48', 1),
(26, 'C00026', 'juboraj enterprise', 'retail', '', '0864', '', '', 'sanarpar', 'Bablu', 0, 2, '', '1000000.00', '0.00', NULL, 'a', 'Admin', '2022-10-29 17:12:42', 'Admin', '2022-10-30 18:17:25', 1),
(27, 'C00027', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-30 16:14:21', NULL, NULL, 1),
(28, 'C00028', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-30 16:15:01', NULL, NULL, 1),
(29, 'C00029', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-30 16:29:55', NULL, NULL, 1),
(30, 'C00030', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-31 12:12:46', NULL, NULL, 1),
(31, 'C00031', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-31 12:35:39', NULL, NULL, 1),
(32, 'C00032', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-31 12:39:12', NULL, NULL, 1),
(33, 'C00033', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-31 12:57:28', NULL, NULL, 1),
(34, 'C00034', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-31 13:01:51', NULL, NULL, 1),
(35, 'C00035', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-10-31 15:49:27', NULL, NULL, 1),
(36, 'C00036', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-01 15:30:37', NULL, NULL, 1),
(37, 'C00037', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-01 15:31:59', NULL, NULL, 1),
(38, 'C00038', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-01 18:05:03', NULL, NULL, 1),
(39, 'C00039', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-02 16:54:03', NULL, NULL, 1),
(40, 'C00040', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-07 19:27:25', NULL, NULL, 1),
(41, 'C00041', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-07 19:29:00', NULL, NULL, 1),
(42, 'C00042', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-08 10:36:53', NULL, NULL, 1),
(43, 'C00043', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-09 09:29:54', NULL, NULL, 1),
(44, 'C00044', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-09 09:35:47', NULL, NULL, 1),
(45, 'C00045', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-09 13:22:48', NULL, NULL, 1),
(46, 'C00046', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-12 12:58:47', NULL, NULL, 1),
(47, 'C00047', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-13 20:53:45', NULL, NULL, 1),
(48, 'C00048', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-14 10:00:30', NULL, NULL, 1),
(49, 'C00049', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-14 13:04:13', NULL, NULL, 1),
(50, 'C00050', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-14 13:08:45', NULL, NULL, 1),
(51, 'C00051', 'manik', 'retail', '', '00012385488355', '', '6478410818', 'pabna sadar', 'manik', 0, 10, '', '50000.00', '0.00', 'C00051.jpg', 'a', 'Admin', '2022-11-14 17:17:11', 'Admin', '2022-11-16 02:42:25', 1),
(52, 'C00052', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-15 15:53:20', NULL, NULL, 1),
(53, 'C00053', 'Kacchi Point ', 'retail', '', '0198366575', '', '', 'Mirpur-10, Dhaka', 'Abul Hasan', 0, 2, '', '100000.00', '0.00', NULL, 'a', 'Admin', '2022-11-16 09:48:12', NULL, NULL, 1),
(54, 'C00054', 'hory', 'retail', '', '1234567890-', '', '', 'lalbag', 'hory', 0, 2, '', '50000.00', '10000.00', NULL, 'a', 'Admin', '2022-11-19 14:55:35', NULL, NULL, 1),
(55, 'C00055', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-19 18:31:31', NULL, NULL, 1),
(56, 'C00056', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-21 17:25:51', NULL, NULL, 1),
(57, 'C00057', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-21 17:42:52', NULL, NULL, 1),
(58, 'C00058', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-23 18:22:02', NULL, NULL, 1),
(59, 'C00059', '99 D. Arc', 'retail', '', '01304118122', '', '', 'Shewrapra.', 'Mr. Rito Rashed', 0, 2, '', '100000.00', '0.00', NULL, 'a', 'Admin', '2022-11-26 17:11:25', 'Admin', '2022-11-26 17:17:55', 1),
(60, 'C00060', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-27 11:06:51', NULL, NULL, 1),
(61, 'C00061', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-11-30 15:11:19', NULL, NULL, 1),
(62, 'C00062', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-01 12:33:27', NULL, NULL, 1),
(63, 'C00063', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-01 14:10:09', NULL, NULL, 1),
(64, 'C00064', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-03 19:12:05', NULL, NULL, 1),
(65, 'C00065', 'Md Sohel', 'G', '', '01736247142', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-05 10:46:00', NULL, NULL, 1),
(66, 'C00066', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-05 15:00:05', NULL, NULL, 1),
(67, 'C00067', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-05 15:38:23', NULL, NULL, 1),
(68, 'C00068', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-06 15:51:32', NULL, NULL, 1),
(69, 'C00069', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-06 19:42:22', NULL, NULL, 1),
(70, 'C00070', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-06 20:14:57', NULL, NULL, 1),
(71, 'C00071', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-06 20:17:11', NULL, NULL, 1),
(72, 'C00072', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-07 14:59:19', NULL, NULL, 1),
(73, 'C00073', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-10 12:03:15', NULL, NULL, 1),
(74, 'C00074', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-10 12:33:44', NULL, NULL, 1),
(75, 'C00075', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-11 13:13:35', NULL, NULL, 1),
(76, 'C00076', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-12 12:49:01', NULL, NULL, 1),
(77, 'C00077', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-13 13:10:38', NULL, NULL, 1),
(78, 'C00078', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-13 16:45:09', NULL, NULL, 1),
(79, 'C00079', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-13 19:23:12', NULL, NULL, 1),
(80, 'C00080', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-14 13:04:26', NULL, NULL, 1),
(81, 'C00081', '', 'G', '', '01910798654', '', '', 'Mirpur 10', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-14 13:33:39', NULL, NULL, 1),
(82, 'C00082', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-14 13:45:15', NULL, NULL, 1),
(83, 'C00083', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-15 15:54:07', NULL, NULL, 9),
(84, 'C00084', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Zahir Hossain', '2022-12-15 18:15:50', NULL, NULL, 9),
(85, 'C00085', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Zahir Hossain', '2022-12-15 18:30:52', NULL, NULL, 9),
(86, 'C00086', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-16 15:09:51', NULL, NULL, 1),
(87, 'C00087', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-16 18:59:19', NULL, NULL, 1),
(88, 'C00088', 'Kamal', 'G', '', '0176543221', '', '', 'Mirpur 10', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-19 17:01:25', NULL, NULL, 1),
(89, 'C00089', 'Aslam', 'G', '', '01910796887', '', '', 'Lalmatia, \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nDhaka', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-19 19:55:22', NULL, NULL, 1),
(90, 'C00090', 'Arif ', 'retail', '', '0199999999999', '', '099999999', 'khilkhet', 'Arif ', 0, 2, '', '100000.00', '50000.00', NULL, 'a', 'Admin', '2022-12-20 16:54:57', NULL, NULL, 1),
(91, 'C00091', 'imran', 'retail', '', '0191779466', '', '01917794667', 'mirpur 12', 'imran', 0, 2, '', '50000.00', '5000.00', NULL, 'a', 'Admin', '2022-12-20 16:55:22', NULL, NULL, 1),
(92, 'C00092', 'mohon', 'retail', '', '019177', '', '', 'narayanjanj', 'jahid', 0, 2, '', '50000.00', '0.00', NULL, 'a', 'Admin', '2022-12-20 17:29:38', NULL, NULL, 1),
(93, 'C00093', 'Anik', 'G', '', '01919-952119', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-20 18:00:14', NULL, NULL, 1),
(94, 'C00094', 'asik', 'retail', '', '01917794667', '', '', 'mirpur 10', 'asik islam', 0, 2, '', '250000.00', '5000.00', NULL, 'a', 'Admin', '2022-12-21 09:25:40', NULL, NULL, 1),
(95, 'C00095', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-21 12:31:43', NULL, NULL, 1),
(96, 'C00096', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-24 14:36:32', NULL, NULL, 1),
(97, 'C00097', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-29 16:07:42', NULL, NULL, 1),
(98, 'C00098', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-29 18:42:45', NULL, NULL, 1),
(99, 'C00099', 'Hasan Ali Khan', 'retail', '', '01971234564', '', '', 'Mirpur 10', '', 0, 2, '', '100000.00', '0.00', NULL, 'a', 'Admin', '2022-12-29 18:55:38', NULL, NULL, 1),
(100, 'C00100', 'Hasan Imran Khan', 'retail', '', '0123456789', '', '', 'Mirpur 13', '', 0, 2, '', '500000.00', '0.00', NULL, 'a', 'Admin', '2022-12-29 18:56:57', 'Admin', '2022-12-29 18:57:31', 1),
(101, 'C00101', 'Hasan Abir Khan', 'retail', '', '0198765432', '', '', 'Mirpur 14', '', 0, 2, '', '200000.00', '0.00', NULL, 'a', 'Admin', '2022-12-29 18:58:44', NULL, NULL, 1),
(102, 'C00102', 'roni', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-30 11:09:51', NULL, NULL, 1),
(103, 'C00103', 'dsfg', 'G', '', '013456789', '', '', 'Mirpur 10', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2022-12-30 11:50:44', NULL, NULL, 1),
(104, 'C00104', 'Amin Uddin', 'retail', '', '0190676543', '', '', 'Mirpur 10', 'Uddin', 0, 2, '', '100000.00', '5000.00', NULL, 'a', 'Admin', '2022-12-30 12:02:50', NULL, NULL, 1),
(105, 'C00105', 'জনাব, মোঃ ইসা', 'retail', '', '01710023326', '', '', 'কলাতলা হাউজিং', '', 0, 11, '', '100000.00', '0.00', NULL, 'a', 'Admin', '2023-01-01 11:33:02', NULL, NULL, 1),
(106, 'C00106', 'জনাব, হোসেন মামা', 'retail', '', '01710023326 ( অ', '', '', 'সেতারা ক্লিনিক রোড', '', 0, 11, '', '100000.00', '0.00', 'C00106.jpg', 'a', 'Admin', '2023-01-01 20:46:16', 'Admin', '2023-01-01 20:56:19', 1),
(107, 'C00107', 'AMIR HOSSAIN', 'G', '', '01751252326', '', '', 'DHAKA', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Admin', '2023-01-08 20:24:28', NULL, NULL, 1),
(108, 'C00108', 'amir ali', 'retail', '', '01712456895', '', '', 'pochong', 'amir ali', 0, 2, '', '5000.00', '10000.00', NULL, 'a', 'Admin', '2023-01-09 13:49:47', NULL, NULL, 1),
(109, 'C00109', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', '0.00', NULL, 'a', 'Link Up', '2023-01-10 18:09:33', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_payment`
--

CREATE TABLE `tbl_customer_payment` (
  `CPayment_id` int(11) NOT NULL,
  `CPayment_date` date DEFAULT NULL,
  `CPayment_invoice` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `CPayment_customerID` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `CPayment_TransactionType` varchar(20) DEFAULT NULL,
  `CPayment_amount` decimal(18,2) DEFAULT NULL,
  `out_amount` float NOT NULL DEFAULT 0,
  `CPayment_Paymentby` varchar(50) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `CPayment_notes` varchar(225) CHARACTER SET latin1 DEFAULT NULL,
  `CPayment_brunchid` int(11) DEFAULT NULL,
  `CPayment_previous_due` float NOT NULL DEFAULT 0,
  `CPayment_Addby` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `CPayment_AddDAte` date DEFAULT NULL,
  `CPayment_status` varchar(1) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `CPayment_UpdateDAte` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer_payment`
--

INSERT INTO `tbl_customer_payment` (`CPayment_id`, `CPayment_date`, `CPayment_invoice`, `CPayment_customerID`, `CPayment_TransactionType`, `CPayment_amount`, `out_amount`, `CPayment_Paymentby`, `account_id`, `CPayment_notes`, `CPayment_brunchid`, `CPayment_previous_due`, `CPayment_Addby`, `CPayment_AddDAte`, `CPayment_status`, `update_by`, `CPayment_UpdateDAte`) VALUES
(1, '2022-09-25', 'TR00001', '8', 'CR', '4000.00', 0, 'cash', NULL, '', 1, 22000, 'Admin', '2022-09-25', 'a', NULL, NULL),
(2, '2022-09-26', 'TR00002', '8', 'CR', '1.00', 0, 'cash', NULL, '', 1, 18000, 'Admin', '2022-09-26', 'a', NULL, NULL),
(4, '2022-09-26', '220100009', '10', 'CP', '14000.00', 0, 'cash', NULL, NULL, 1, 0, 'Admin', '2022-09-26', 'a', NULL, NULL),
(5, '2022-10-13', 'TR00005', '12', 'CR', '1000.00', 0, 'cash', NULL, 'by cash', 1, 13000, 'Admin', '2022-10-13', 'a', NULL, NULL),
(6, '2022-10-15', 'TR00006', '12', 'CR', '5000.00', 0, 'cash', NULL, '', 1, 13300, 'Admin', '2022-10-15', 'a', NULL, NULL),
(7, '2022-10-17', 'TR00007', '15', 'CR', '50.00', 0, 'cash', NULL, '4565651', 1, 564050, 'Admin', '2022-10-17', 'a', NULL, NULL),
(8, '2022-10-18', 'TR00008', '8', 'CR', '499.00', 0, 'cash', NULL, 'Testing ', 1, 19499, 'Admin', '2022-10-18', 'a', NULL, NULL),
(9, '2022-10-23', 'TR00009', '12', 'CR', '10000.00', 0, 'cash', NULL, '', 1, 99800, 'Admin', '2022-10-23', 'a', NULL, NULL),
(10, '2022-10-27', 'TR00010', '25', 'CR', '23440.00', 0, 'cash', NULL, 'grwgrfg', 1, 23440, 'Admin', '2022-10-27', 'a', NULL, NULL),
(11, '2022-10-30', 'TR00011', '22', 'CR', '10000.00', 0, 'cash', NULL, '', 1, 30900, 'Admin', '2022-10-30', 'a', NULL, NULL),
(12, '2022-10-30', 'TR00012', '15', 'CR', '5000.00', 0, 'cash', NULL, '', 1, 9200, 'Admin', '2022-10-30', 'a', NULL, NULL),
(13, '2022-10-30', 'TR00013', '12', 'CR', '50000.00', 0, 'cash', NULL, '', 1, 95000, 'Admin', '2022-10-30', 'a', NULL, NULL),
(14, '2022-11-01', 'TR00014', '15', 'CR', '4000.00', 0, 'cash', NULL, 'g3t', 1, 4200, 'Admin', '2022-11-01', 'a', NULL, NULL),
(15, '2022-11-01', 'TR00015', '12', 'CR', '20000.00', 0, 'bank', 1, '', 1, 46200, 'Admin', '2022-11-01', 'a', NULL, NULL),
(16, '2022-11-02', 'TR00016', '22', 'CR', '500.00', 0, 'cash', NULL, '', 1, 23200, 'Admin', '2022-11-02', 'a', NULL, NULL),
(17, '2022-11-05', 'TR00017', '22', 'CR', '5000.00', 0, 'cash', NULL, 'cfc', 1, 45200, 'Admin', '2022-11-05', 'a', NULL, NULL),
(18, '2022-11-07', 'TR00018', '26', 'CR', '500.00', 0, 'bank', 1, '', 1, 750, 'Admin', '2022-11-07', 'a', NULL, NULL),
(19, '2022-11-09', 'TR00019', '15', 'CR', '200.00', 0, 'cash', NULL, 'yfjhf', 1, 200, 'Admin', '2022-11-09', 'a', NULL, NULL),
(20, '2022-11-13', 'TR00020', '26', 'CR', '5000.00', 0, 'bank', 1, '', 1, 42750, 'Admin', '2022-11-13', 'a', NULL, NULL),
(21, '2022-11-13', 'TR00021', '15', 'CR', '10000.00', 0, 'cash', NULL, 'dfvb', 1, 27000, 'Admin', '2022-11-13', 'a', NULL, NULL),
(22, '2022-11-19', 'TR00022', '54', 'CR', '10850.00', 0, 'cash', NULL, 'rtyu  ???', 1, 10850, 'Admin', '2022-11-19', 'a', 0, '2022-11-19'),
(23, '2022-11-19', 'TR00023', '12', 'CR', '10000.00', 0, 'cash', NULL, '', 1, 38934.4, 'Admin', '2022-11-19', 'a', NULL, NULL),
(24, '2022-11-21', 'TR00024', '26', 'CR', '15000.00', 0, 'bank', 1, '', 1, 40444, 'Admin', '2022-11-21', 'a', NULL, NULL),
(25, '2022-11-22', 'TR00025', '12', 'CR', '10000.00', 0, 'cash', NULL, 'Nov-2022', 1, 28934.4, 'Admin', '2022-11-22', 'a', NULL, NULL),
(26, '2022-11-22', 'TR00026', '51', 'CR', '500.00', 0, 'bank', 1, 'ytvybfcf', 1, 1119, 'Admin', '2022-11-22', 'a', NULL, NULL),
(27, '2022-09-26', '220100008', '9', 'CP', '110000.00', 0, 'cash', NULL, NULL, 1, 0, 'Admin', '2022-11-22', 'a', NULL, NULL),
(28, '2022-11-26', 'TR00028', '4', 'CR', '50000.00', 0, 'cash', NULL, 'Lotifur', 1, 0, 'Admin', '2022-11-26', 'a', NULL, NULL),
(29, '2022-11-26', 'TR00029', '59', 'CR', '10000.00', 0, 'cash', NULL, '', 1, 16110, 'Admin', '2022-11-26', 'a', NULL, NULL),
(30, '2022-11-26', 'TR00030', '59', 'CR', '2000.00', 0, 'cash', NULL, '', 1, 5920, 'Admin', '2022-11-26', 'a', NULL, NULL),
(31, '2022-11-27', 'TR00031', '12', 'CR', '5000.00', 0, 'cash', NULL, '', 1, 18934.4, 'Admin', '2022-11-27', 'a', NULL, NULL),
(32, '2022-12-03', 'TR00032', '51', 'CR', '500.00', 0, 'cash', NULL, 'ew', 1, 4619, 'Admin', '2022-12-03', 'a', NULL, NULL),
(33, '2022-12-03', 'TR00033', '12', 'CR', '5000.00', 0, 'bank', 1, '', 1, 18084.4, 'Admin', '2022-12-03', 'a', NULL, NULL),
(34, '2022-12-04', 'TR00034', '54', 'CR', '5000.00', 0, 'cash', NULL, '', 1, 49585, 'Admin', '2022-12-04', 'a', NULL, NULL),
(35, '2022-12-05', 'TR00035', '54', 'CR', '10000.00', 0, 'cash', NULL, '', 1, 49585, 'Admin', '2022-12-05', 'a', NULL, NULL),
(36, '2022-12-05', 'TR00036', '59', 'CR', '940.00', 0, 'cash', NULL, '', 1, 71940, 'Admin', '2022-12-05', 'a', NULL, NULL),
(37, '2022-12-05', 'TR00037', '12', 'CR', '5000.00', 0, 'bank', 1, '', 1, 13084.4, 'Admin', '2022-12-05', 'a', NULL, NULL),
(38, '2022-12-08', '220100150', '71', 'CP', '3500.00', 0, 'cash', NULL, NULL, 1, 0, 'Admin', '2022-12-08', 'a', NULL, NULL),
(39, '2022-12-08', 'TR00039', '8', 'CP', '4000.00', 0, 'cash', NULL, 'bkjnbj', 1, 27228, 'Admin', '2022-12-08', 'a', NULL, NULL),
(40, '2022-12-11', 'TR00040', '54', 'CR', '5000.00', 0, 'cash', NULL, '', 1, 39585, 'Admin', '2022-12-11', 'a', NULL, NULL),
(41, '2022-12-12', 'TR00041', '53', 'CR', '5000.00', 0, 'cash', NULL, '', 1, 26915, 'Admin', '2022-12-12', 'a', NULL, NULL),
(42, '2022-12-13', 'TR00042', '59', 'CR', '1000.00', 0, 'cash', NULL, '', 1, 89162.4, 'Admin', '2022-12-13', 'a', NULL, NULL),
(43, '2022-12-13', 'TR00043', '59', 'CR', '10000.00', 0, 'cash', NULL, '', 1, 88162.4, 'Admin', '2022-12-13', 'a', NULL, NULL),
(44, '2022-12-13', 'TR00044', '59', 'CR', '10000.00', 0, 'cash', NULL, '', 1, 78162.4, 'Admin', '2022-12-13', 'a', NULL, NULL),
(45, '2022-12-13', 'TR00045', '53', 'CR', '10000.00', 0, 'cash', NULL, '', 1, 21915, 'Admin', '2022-12-13', 'a', NULL, NULL),
(46, '2022-12-17', 'TR00046', '59', 'CR', '20000.00', 0, 'cash', NULL, '', 1, 71262.4, 'Admin', '2022-12-17', 'a', NULL, NULL),
(47, '2022-12-17', '220100173', '87', 'CP', '400.00', 0, 'cash', NULL, NULL, 1, 0, 'Admin', '2022-12-17', 'a', NULL, NULL),
(48, '2022-12-18', 'TR00048', '53', 'CR', '25000.00', 0, 'cash', NULL, '', 1, 25233.8, 'Admin', '2022-12-18', 'a', NULL, NULL),
(49, '2022-12-19', 'TR00049', '59', 'CR', '5000.00', 0, 'cash', NULL, '', 1, 51262.4, 'Admin', '2022-12-19', 'a', NULL, NULL),
(50, '2022-12-20', 'TR00050', '54', 'CR', '2000.00', 0, 'cash', NULL, '', 1, 39085, 'Admin', '2022-12-20', 'a', NULL, NULL),
(51, '2022-12-20', 'TR00051', '90', 'CR', '50000.00', 0, 'cash', NULL, '', 1, 65000, 'Admin', '2022-12-20', 'a', NULL, NULL),
(52, '2022-12-20', 'TR00052', '91', 'CR', '45000.00', 0, 'cash', NULL, '', 1, 4950, 'Admin', '2022-12-20', 'a', NULL, NULL),
(53, '2022-12-20', 'TR00053', '92', 'CR', '300.00', 0, 'cash', NULL, '', 1, 200, 'Admin', '2022-12-20', 'a', NULL, NULL),
(54, '2022-12-21', 'TR00054', '92', 'CP', '50050.00', 0, 'cash', NULL, '', 1, 50, 'Admin', '2022-12-21', 'a', NULL, NULL),
(55, '2022-12-21', 'TR00055', '12', 'CR', '2000.00', 0, 'cash', NULL, '', 1, 8684.4, 'Admin', '2022-12-21', 'a', NULL, NULL),
(56, '2022-12-24', 'TR00056', '94', 'CR', '2000.00', 0, 'cash', NULL, '', 1, 15540, 'Admin', '2022-12-24', 'a', NULL, NULL),
(57, '2022-12-27', 'TR00057', '94', 'CR', '5000.00', 0, 'bank', 3, '', 1, 19100, 'Admin', '2022-12-27', 'a', NULL, NULL),
(58, '2022-12-30', 'TR00058', '12', 'CR', '5000.00', 0, 'bank', 3, 'sadgdfhfgjfsdfs', 1, 12484.4, 'Admin', '2022-12-30', 'a', NULL, NULL),
(59, '2022-12-30', 'TR00059', '101', 'CR', '2000.00', 0, 'cash', NULL, '', 1, 56000, 'Admin', '2022-12-30', 'a', NULL, NULL),
(60, '2023-01-01', 'TR00060', '105', 'CR', '1960.00', 0, 'cash', NULL, '', 1, 3960, 'Admin', '2023-01-01', 'a', NULL, NULL),
(61, '2023-01-11', 'TR00061', '106', 'CR', '500.00', 0, 'cash', NULL, '', 1, 20000.8, 'Link Up', '2023-01-11', 'a', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_damage`
--

CREATE TABLE `tbl_damage` (
  `Damage_SlNo` int(11) NOT NULL,
  `Damage_InvoiceNo` varchar(50) NOT NULL,
  `Damage_Date` date NOT NULL,
  `Damage_Description` varchar(300) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `Damage_brunchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_damage`
--

INSERT INTO `tbl_damage` (`Damage_SlNo`, `Damage_InvoiceNo`, `Damage_Date`, `Damage_Description`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `Damage_brunchid`) VALUES
(1, 'D0001', '2022-11-22', 'Eddd', 'a', 'Admin', '2022-11-22 02:37:46', NULL, NULL, 1),
(2, 'D0002', '2022-11-26', '', 'a', 'Admin', '2022-11-26 20:38:03', NULL, NULL, 1),
(3, 'D0003', '2022-12-29', 'Rate eating purpose', 'a', 'Admin', '2022-12-29 19:12:46', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_damagedetails`
--

CREATE TABLE `tbl_damagedetails` (
  `DamageDetails_SlNo` int(11) NOT NULL,
  `Damage_SlNo` int(11) NOT NULL,
  `Product_SlNo` int(11) NOT NULL,
  `DamageDetails_DamageQuantity` float NOT NULL,
  `damage_rate` float NOT NULL,
  `damage_amount` float NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_damagedetails`
--

INSERT INTO `tbl_damagedetails` (`DamageDetails_SlNo`, `Damage_SlNo`, `Product_SlNo`, `DamageDetails_DamageQuantity`, `damage_rate`, `damage_amount`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`) VALUES
(1, 1, 38, 1, 5, 5, 'a', 'Admin', '2022-11-22 02:37:46', NULL, NULL),
(2, 2, 37, 2, 2500, 5000, 'a', 'Admin', '2022-11-26 20:38:03', NULL, NULL),
(3, 3, 13, 2, 12500, 25000, 'a', 'Admin', '2022-12-29 19:12:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `Department_SlNo` int(11) NOT NULL,
  `Department_Name` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`Department_SlNo`, `Department_Name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`) VALUES
(1, 'Ceramic ', 'a', 'Admin', '2022-09-21 19:12:00', NULL, NULL),
(2, 'Interior ', 'a', 'Admin', '2022-09-21 19:12:30', NULL, NULL),
(3, 'Lighting ', 'a', 'Admin', '2022-09-21 19:12:45', NULL, NULL),
(4, 'Software developer ', 'a', 'Admin', '2022-10-18 16:30:12', NULL, NULL),
(5, 'MTC Shah Cement', 'a', 'Admin', '2022-10-29 16:54:02', 'Admin', '2022-10-29 16:54:47'),
(6, 'Marketing', 'a', 'Admin', '2022-10-29 17:15:42', NULL, NULL),
(7, 'Senior officer ', 'a', 'Admin', '2022-12-13 10:24:08', NULL, NULL),
(8, 'M/S. OLI Enterprise', 'a', 'Admin', '2023-01-01 16:55:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designation`
--

CREATE TABLE `tbl_designation` (
  `Designation_SlNo` int(11) NOT NULL,
  `Designation_Name` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_designation`
--

INSERT INTO `tbl_designation` (`Designation_SlNo`, `Designation_Name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`) VALUES
(1, 'Marketing', 'd', 'Admin', '2022-09-27 16:02:03', NULL, NULL),
(2, 'Sr.developer ', 'a', 'Admin', '2022-10-18 16:30:29', NULL, NULL),
(3, 'Sales Executive', 'a', 'Admin', '2022-10-29 16:56:48', 'Admin', '2022-12-12 21:45:31'),
(4, 'zahidulislam', 'd', 'Admin', '2022-12-08 16:08:36', NULL, NULL),
(5, 'Senior Officer', 'a', 'Admin', '2022-12-13 10:25:28', NULL, NULL),
(6, 'Manazer', 'a', 'Admin', '2023-01-01 16:54:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `District_SlNo` int(11) NOT NULL,
  `District_Name` varchar(50) NOT NULL,
  `status` char(10) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`District_SlNo`, `District_Name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`) VALUES
(1, 'Chittagong ', 'd', 'Admin', '2022-09-21 15:58:09', NULL, NULL),
(2, 'Dhaka ', 'a', 'Admin', '2022-09-25 01:04:44', NULL, NULL),
(3, 'Dhf', 'd', 'Admin', '2022-09-25 01:05:01', NULL, NULL),
(4, 'MIRPUR-1', 'a', 'Admin', '2022-09-25 19:39:15', NULL, NULL),
(5, 'Khulna', 'a', 'Admin', '2022-09-27 14:55:44', NULL, NULL),
(6, 'Kulshi, Chittagong', 'a', 'Admin', '2022-09-27 14:57:40', NULL, NULL),
(7, 'Agrabad, Chittagong', 'd', 'Admin', '2022-09-27 14:58:01', NULL, NULL),
(8, 'Thakurgaon', 'a', 'Admin', '2022-10-24 17:49:45', NULL, NULL),
(9, 'Pabna', 'd', 'Admin', '2022-11-14 17:13:27', NULL, NULL),
(10, 'Rajshahi', 'a', 'Admin', '2022-11-14 17:15:44', NULL, NULL),
(11, 'হেতালিয়া বাঁধঘাট', 'a', 'Admin', '2022-12-30 15:53:27', 'Admin', '2023-01-01 20:43:33'),
(12, 'কলাতলা হাউজিং', 'a', 'Admin', '2023-01-01 21:23:45', NULL, NULL),
(13, 'মাঝগ্রাম, পটূয়াখালী।', 'a', 'Admin', '2023-01-01 21:24:48', NULL, NULL),
(14, 'কলাতলা', 'a', 'Admin', '2023-01-01 21:25:13', NULL, NULL),
(15, 'pochong', 'a', 'Admin', '2023-01-09 13:48:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `Employee_SlNo` int(11) NOT NULL,
  `Designation_ID` int(11) NOT NULL,
  `Department_ID` int(11) NOT NULL,
  `Employee_ID` varchar(50) NOT NULL,
  `bio_id` varchar(50) DEFAULT NULL,
  `Employee_Name` varchar(150) NOT NULL,
  `Employee_JoinDate` date NOT NULL,
  `Employee_Gender` varchar(20) NOT NULL,
  `Employee_BirthDate` date NOT NULL,
  `Employee_NID` varchar(50) NOT NULL,
  `Employee_ContactNo` varchar(20) NOT NULL,
  `Employee_Email` varchar(50) NOT NULL,
  `Employee_MaritalStatus` varchar(50) NOT NULL,
  `Employee_FatherName` varchar(150) NOT NULL,
  `Employee_MotherName` varchar(150) NOT NULL,
  `Employee_PrasentAddress` text NOT NULL,
  `Employee_PermanentAddress` text NOT NULL,
  `Employee_Pic_org` varchar(250) NOT NULL,
  `Employee_Pic_thum` varchar(250) NOT NULL,
  `salary_range` int(11) NOT NULL,
  `Employee_Reference` text DEFAULT NULL,
  `status` char(10) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) NOT NULL,
  `AddTime` varchar(50) NOT NULL,
  `UpdateBy` varchar(50) NOT NULL,
  `UpdateTime` varchar(50) NOT NULL,
  `Employee_brinchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`Employee_SlNo`, `Designation_ID`, `Department_ID`, `Employee_ID`, `bio_id`, `Employee_Name`, `Employee_JoinDate`, `Employee_Gender`, `Employee_BirthDate`, `Employee_NID`, `Employee_ContactNo`, `Employee_Email`, `Employee_MaritalStatus`, `Employee_FatherName`, `Employee_MotherName`, `Employee_PrasentAddress`, `Employee_PermanentAddress`, `Employee_Pic_org`, `Employee_Pic_thum`, `salary_range`, `Employee_Reference`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `Employee_brinchid`) VALUES
(1, 1, 1, 'E1001', '', 'Abdur', '2022-09-27', 'Male', '2022-09-27', '', '0', '', 'married', 'a', 'a', 'dffsss', 'sssffsf', '', '', 0, '', 'p', 'Admin', '2022-09-27 16:03:06', 'Admin', '2022-10-18 16:34:49', 1),
(2, 1, 1, 'E1002', '', 'shamim hassan', '2022-10-13', 'Male', '2022-10-13', '', '0145136621', '', 'married', 'ab', 'aza', 'mirpur', 'mirpur', '', '', 12000, '', 'a', 'Admin', '2022-10-13 13:22:34', '', '', 1),
(3, 2, 4, 'E1003', '1234', 'Lalon ', '2022-10-01', 'Male', '2022-10-18', '', '0178956412', 'lalon@gmail.com', 'unmarried', 'X', 'Y', 'Dhaka ', 'Dhaka ', '', '', 20000, 'Mehedi ', 'a', 'Admin', '2022-10-18 16:32:06', 'Admin', '2022-11-28 17:05:42', 1),
(4, 1, 1, 'E1004', '', 'Farul Hossain', '2022-10-23', 'Male', '2022-10-23', '', '754545456', '', 'married', '', '', '', '', '', '', 18000, '', 'd', 'Admin', '2022-10-23 19:25:39', '', '', 2),
(5, 3, 6, 'E1005', '0011', 'moin', '2020-10-29', 'Male', '2010-10-29', '', '975', '', 'married', 'sanarparsanarpar', 'sanarparsanarpar', 'sanarpar', 'sanarpar', '', '', 18000, '', 'a', 'Admin', '2022-10-29 17:18:12', 'Admin', '2022-11-24 01:37:15', 1),
(6, 3, 6, 'E1006', '', 'TOUHID', '2022-12-01', 'Male', '1992-06-01', '', '013', '', 'married', 'MIZANUR', 'TASLIMA', 'KHULNA', 'PAIKGACHA', '', '', 12000, '', 'a', 'Admin', '2022-12-01 12:43:39', '', '', 1),
(7, 5, 6, 'E1007', '', 'Md .Ariful islam', '0003-12-22', 'Male', '2022-12-13', '', '0167265634', '', 'unmarried', 'Md motiur Rahman ', 'Baby Akter', 'West tejturi bazar Dhaka 1215', 'vill.balrampur ', '', '', 12000, '', 'a', 'Admin', '2022-12-13 10:28:16', '', '', 1),
(8, 3, 6, 'E1008', '', 'Emran Hossain', '2022-12-15', 'Male', '1999-06-30', '', '01945552211', 'evtisamimran@gmail.com', 'unmarried', 'Khalilur Rahman', 'Rashida Beagum', 'Patuakhali,Mirzaganj,Subidkhalo', 'Dhanmondi,Dhaka', 'E1008.jpg', 'E1008.jpg', 10000, 'Md Abdullah Sarker Abir', 'a', 'Admin', '2023-01-01 11:57:19', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_payment`
--

CREATE TABLE `tbl_employee_payment` (
  `id` int(11) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `month_id` int(11) NOT NULL,
  `total_payment_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `status` char(2) DEFAULT 'a',
  `saved_by` int(11) NOT NULL,
  `saved_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_employee_payment`
--

INSERT INTO `tbl_employee_payment` (`id`, `payment_date`, `month_id`, `total_payment_amount`, `status`, `saved_by`, `saved_at`, `updated_by`, `updated_at`, `branch_id`) VALUES
(1, '2022-10-13', 1, '12000.00', 'a', 1, '2022-10-13 17:23:17', 1, '2022-10-20 16:10:10', 1),
(2, '2022-10-18', 2, '17000.00', 'a', 1, '2022-10-18 20:33:18', 1, '2022-11-14 19:46:53', 1),
(3, '2022-11-14', 3, '13000.00', 'a', 1, '2022-11-14 14:28:20', 1, '2022-12-15 18:45:17', 1),
(4, '2022-12-01', 4, '56000.00', 'a', 1, '2022-12-01 19:32:11', 1, '2022-12-20 21:40:57', 1),
(5, '2022-12-15', 6, '74500.00', 'a', 1, '2022-12-15 23:02:19', NULL, NULL, 1),
(6, '2023-01-01', 5, '84000.00', 'a', 1, '2023-01-01 21:45:22', NULL, NULL, 1),
(7, '2023-01-01', 7, '82000.00', 'd', 1, '2023-01-01 21:50:13', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_payment_details`
--

CREATE TABLE `tbl_employee_payment_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `salary` decimal(20,2) NOT NULL DEFAULT 0.00,
  `benefit` decimal(20,2) NOT NULL DEFAULT 0.00,
  `deduction` decimal(20,2) NOT NULL DEFAULT 0.00,
  `net_payable` decimal(20,2) NOT NULL DEFAULT 0.00,
  `payment` decimal(20,2) NOT NULL DEFAULT 0.00,
  `comment` text DEFAULT NULL,
  `saved_by` int(11) UNSIGNED DEFAULT NULL,
  `saved_at` datetime DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` char(2) NOT NULL DEFAULT 'a',
  `branch_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_employee_payment_details`
--

INSERT INTO `tbl_employee_payment_details` (`id`, `payment_id`, `employee_id`, `salary`, `benefit`, `deduction`, `net_payable`, `payment`, `comment`, `saved_by`, `saved_at`, `updated_by`, `updated_at`, `status`, `branch_id`) VALUES
(1, 1, 1, '0.00', '0.00', '0.00', '0.00', '0.00', '', 1, '2022-10-13 13:23:17', 1, '2022-10-20 12:10:10', 'a', 1),
(2, 1, 2, '12000.00', '0.00', '0.00', '12000.00', '12000.00', '', 1, '2022-10-13 13:23:17', 1, '2022-10-20 12:10:10', 'a', 1),
(3, 2, 1, '0.00', '0.00', '0.00', '0.00', '0.00', 'Paid', 1, '2022-10-18 16:33:18', 1, '2022-11-14 14:46:53', 'a', 1),
(4, 2, 2, '12000.00', '0.00', '0.00', '12000.00', '12000.00', 'Paid', 1, '2022-10-18 16:33:18', 1, '2022-11-14 14:46:53', 'a', 1),
(5, 2, 3, '20000.00', '2000.00', '17000.00', '5000.00', '5000.00', 'Salary Advance ', 1, '2022-10-18 16:33:18', 1, '2022-11-14 14:46:53', 'a', 1),
(6, 3, 2, '12000.00', '6000.00', '5000.00', '13000.00', '13000.00', '', 1, '2022-11-14 09:28:20', 1, '2022-12-15 13:45:17', 'a', 1),
(7, 3, 3, '20000.00', '0.00', '0.00', '20000.00', '0.00', '', 1, '2022-11-14 09:28:20', 1, '2022-12-15 13:45:17', 'a', 1),
(8, 3, 5, '18000.00', '0.00', '0.00', '18000.00', '0.00', '', 1, '2022-11-14 09:28:20', 1, '2022-12-15 13:45:17', 'a', 1),
(9, 4, 2, '12000.00', '0.00', '6000.00', '0.00', '6000.00', '', 1, '2022-12-01 14:32:11', 1, '2022-12-20 16:40:57', 'a', 1),
(10, 4, 3, '20000.00', '0.00', '0.00', '20000.00', '20000.00', '', 1, '2022-12-01 14:32:11', 1, '2022-12-20 16:40:57', 'a', 1),
(11, 4, 5, '18000.00', '0.00', '0.00', '18000.00', '18000.00', '', 1, '2022-12-01 14:32:11', 1, '2022-12-20 16:40:57', 'a', 1),
(12, 4, 6, '12000.00', '0.00', '0.00', '12000.00', '12000.00', '', 1, '2022-12-01 14:32:11', 1, '2022-12-20 16:40:57', 'a', 1),
(13, 5, 2, '12000.00', '2000.00', '1500.00', '12500.00', '12500.00', '', 1, '2022-12-15 18:02:19', NULL, NULL, 'a', 1),
(14, 5, 3, '20000.00', '0.00', '0.00', '20000.00', '20000.00', '', 1, '2022-12-15 18:02:19', NULL, NULL, 'a', 1),
(15, 5, 5, '18000.00', '0.00', '0.00', '18000.00', '18000.00', '', 1, '2022-12-15 18:02:19', NULL, NULL, 'a', 1),
(16, 5, 6, '12000.00', '0.00', '0.00', '12000.00', '12000.00', '', 1, '2022-12-15 18:02:19', NULL, NULL, 'a', 1),
(17, 5, 7, '12000.00', '0.00', '0.00', '12000.00', '12000.00', '', 1, '2022-12-15 18:02:19', NULL, NULL, 'a', 1),
(18, 6, 2, '12000.00', '0.00', '0.00', '12000.00', '12000.00', '', 1, '2023-01-01 16:45:22', NULL, NULL, 'a', 1),
(19, 6, 3, '20000.00', '0.00', '0.00', '20000.00', '20000.00', '', 1, '2023-01-01 16:45:22', NULL, NULL, 'a', 1),
(20, 6, 5, '18000.00', '0.00', '0.00', '18000.00', '18000.00', '', 1, '2023-01-01 16:45:22', NULL, NULL, 'a', 1),
(21, 6, 6, '12000.00', '0.00', '0.00', '12000.00', '12000.00', '', 1, '2023-01-01 16:45:22', NULL, NULL, 'a', 1),
(22, 6, 7, '12000.00', '0.00', '0.00', '12000.00', '12000.00', '', 1, '2023-01-01 16:45:22', NULL, NULL, 'a', 1),
(23, 6, 8, '10000.00', '0.00', '0.00', '10000.00', '10000.00', '', 1, '2023-01-01 16:45:22', NULL, NULL, 'a', 1),
(24, 7, 2, '12000.00', '0.00', '0.00', '12000.00', '10000.00', '', 1, '2023-01-01 16:50:13', NULL, NULL, 'd', 1),
(25, 7, 3, '20000.00', '0.00', '0.00', '20000.00', '20000.00', '', 1, '2023-01-01 16:50:13', NULL, NULL, 'd', 1),
(26, 7, 5, '18000.00', '0.00', '0.00', '18000.00', '18000.00', '', 1, '2023-01-01 16:50:13', NULL, NULL, 'd', 1),
(27, 7, 6, '12000.00', '0.00', '0.00', '12000.00', '12000.00', '', 1, '2023-01-01 16:50:13', NULL, NULL, 'd', 1),
(28, 7, 7, '12000.00', '0.00', '0.00', '12000.00', '12000.00', '', 1, '2023-01-01 16:50:13', NULL, NULL, 'd', 1),
(29, 7, 8, '10000.00', '0.00', '0.00', '10000.00', '10000.00', '', 1, '2023-01-01 16:50:13', NULL, NULL, 'd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense_head`
--

CREATE TABLE `tbl_expense_head` (
  `id` int(11) NOT NULL,
  `head_name` varchar(100) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `status` enum('a','d') DEFAULT 'a',
  `saved_by` int(11) DEFAULT NULL,
  `saved_datetime` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_investment_account`
--

CREATE TABLE `tbl_investment_account` (
  `Acc_SlNo` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `Acc_Code` varchar(50) NOT NULL,
  `Acc_Tr_Type` varchar(25) DEFAULT NULL,
  `Acc_Name` varchar(200) NOT NULL,
  `Acc_Type` varchar(50) NOT NULL,
  `Acc_Description` varchar(255) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_investment_account`
--

INSERT INTO `tbl_investment_account` (`Acc_SlNo`, `branch_id`, `Acc_Code`, `Acc_Tr_Type`, `Acc_Name`, `Acc_Type`, `Acc_Description`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`) VALUES
(1, 1, 'I0001', NULL, 'ঘূর্ণিঝড় প্রস্তুতি কর্মসূচী Lalon ', '', '', 'a', 'Admin', '2022-10-18 16:14:13', 'Admin', '2022-12-03 18:43:59'),
(2, 1, 'I0002', NULL, 'ঘূর্ণিঝড় প্রস্তুতি কর্মসূচী', '', 'ঘূর্ণিঝড় প্রস্তুতি কর্মসূচী', 'a', 'Admin', '2022-11-07 19:47:42', 'Admin', '2022-12-03 18:42:38'),
(3, 6, 'I0003', NULL, 'Mamun', '', 'Mirpur', 'a', 'Admin', '2022-11-09 10:23:57', NULL, NULL),
(4, 1, 'I0004', NULL, 'Al amin', '', 'jkhbfjhuh', 'a', 'Admin', '2022-12-17 14:54:29', 'Admin', '2022-12-17 14:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_investment_transactions`
--

CREATE TABLE `tbl_investment_transactions` (
  `transaction_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_type` varchar(10) NOT NULL,
  `amount` float NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `saved_by` int(11) NOT NULL,
  `saved_datetime` datetime NOT NULL,
  `branch_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_investment_transactions`
--

INSERT INTO `tbl_investment_transactions` (`transaction_id`, `account_id`, `transaction_date`, `transaction_type`, `amount`, `note`, `saved_by`, `saved_datetime`, `branch_id`, `status`) VALUES
(1, 1, '2022-10-18', 'Receive', 100000, '', 1, '2022-10-18 16:14:28', 1, 1),
(2, 1, '2022-10-30', 'Profit', 2000, '', 1, '2022-10-30 10:44:32', 1, 1),
(3, 1, '2022-11-06', 'Profit', 50000, '', 1, '2022-11-06 15:47:51', 1, 1),
(4, 1, '2022-11-06', 'Payment', 100000, '', 1, '2022-11-06 15:48:35', 1, 1),
(5, 1, '2022-11-06', 'Profit', 100000, '', 1, '2022-11-06 15:49:09', 1, 1),
(6, 1, '2022-11-06', 'Payment', 100000, '', 1, '2022-11-06 15:56:00', 1, 1),
(7, 1, '2022-11-06', 'Receive', 200000, '', 1, '2022-11-06 15:56:22', 1, 1),
(8, 2, '2022-11-07', 'Receive', 250000, 'investor', 1, '2022-11-07 19:48:45', 1, 1),
(9, 2, '2022-11-07', 'Payment', 100000, 'payment', 1, '2022-11-07 19:49:35', 1, 1),
(10, 3, '2022-11-09', 'Receive', 5000000, '', 1, '2022-11-09 10:26:01', 6, 1),
(11, 1, '2022-12-02', 'Receive', 1, '???????? ????????? ????????', 1, '2022-12-03 18:38:37', 1, 0),
(12, 1, '2022-12-02', 'Payment', 1, '???????? ????????? ????????', 1, '2022-12-03 18:39:13', 1, 0),
(13, 1, '2022-12-02', 'Profit', 501, '???????? ????????? ????????', 1, '2022-12-03 18:45:08', 1, 0),
(14, 2, '2022-12-05', 'Receive', 50, '?????', 1, '2022-12-05 01:50:37', 1, 0),
(15, 1, '2022-12-14', 'Payment', 1000, '', 1, '2022-12-14 17:42:10', 1, 1),
(16, 4, '2022-12-17', 'Receive', 50000, '', 1, '2022-12-17 14:55:42', 1, 1),
(17, 4, '2022-12-17', 'Profit', 10000, '', 1, '2022-12-17 14:55:53', 1, 1),
(18, 4, '2022-12-17', 'Payment', 1000, 'ggh', 1, '2022-12-17 14:56:59', 1, 1),
(19, 4, '2022-12-17', 'Payment', 2000, 'jhbhb', 1, '2022-12-17 14:57:11', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan_accounts`
--

CREATE TABLE `tbl_loan_accounts` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(500) NOT NULL,
  `account_number` varchar(250) NOT NULL,
  `account_type` varchar(200) NOT NULL,
  `bank_name` varchar(250) NOT NULL,
  `branch_name` varchar(250) DEFAULT NULL,
  `initial_balance` float NOT NULL,
  `description` varchar(2000) NOT NULL,
  `saved_by` int(11) NOT NULL,
  `saved_datetime` datetime NOT NULL,
  `save_date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_loan_accounts`
--

INSERT INTO `tbl_loan_accounts` (`account_id`, `account_name`, `account_number`, `account_type`, `bank_name`, `branch_name`, `initial_balance`, `description`, `saved_by`, `saved_datetime`, `save_date`, `updated_by`, `updated_datetime`, `branch_id`, `status`) VALUES
(1, 'Lutfar Rahman', 'Lutfar Rahman', 'Long Term Liabilities', 'Long Term Liabilities', 'Mirpur-10', 10, '', 1, '2022-10-13 12:27:59', '2022-10-13', 1, '2022-11-22 02:31:37', 1, 1),
(2, 'Dhaka', '001-100-2022', 'CD ', 'good', 'Mirpur ', 0, 'ok   muj', 1, '2022-12-03 18:23:39', '2022-12-03', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan_transactions`
--

CREATE TABLE `tbl_loan_transactions` (
  `transaction_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_type` varchar(30) NOT NULL,
  `amount` float NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `saved_by` int(11) NOT NULL,
  `saved_datetime` datetime NOT NULL,
  `branch_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_loan_transactions`
--

INSERT INTO `tbl_loan_transactions` (`transaction_id`, `account_id`, `transaction_date`, `transaction_type`, `amount`, `note`, `saved_by`, `saved_datetime`, `branch_id`, `status`) VALUES
(1, 1, '2022-10-13', 'Interest', 10000, '', 1, '2022-10-13 12:35:45', 1, 1),
(2, 1, '2022-10-30', 'Receive', 1500000, '', 1, '2022-10-30 10:39:57', 1, 1),
(3, 1, '2022-10-30', 'Payment', 20000, '', 1, '2022-10-30 10:40:44', 1, 0),
(4, 1, '2022-10-30', 'Payment', 20000, '', 1, '2022-10-30 10:41:52', 1, 1),
(5, 2, '2022-12-02', 'Payment', 1000, 'Bank Transfer CD JBL 21213455431', 1, '2022-12-03 18:25:05', 1, 1),
(6, 2, '2022-12-02', 'Receive', 100, 'DBBL DHK 8976 ', 1, '2022-12-03 18:26:41', 1, 1),
(7, 2, '2022-12-02', 'Interest', 10, 'WEEEEEE GGSDG  SFSADFSDFSA ', 1, '2022-12-03 18:31:37', 1, 1),
(8, 2, '2022-11-03', 'Payment', 1, '?? ?????', 1, '2022-12-05 01:49:59', 1, 1),
(9, 2, '2022-12-14', 'Payment', 55, 'ccc', 1, '2022-12-14 17:39:24', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_month`
--

CREATE TABLE `tbl_month` (
  `month_id` int(11) NOT NULL,
  `month_name` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_month`
--

INSERT INTO `tbl_month` (`month_id`, `month_name`) VALUES
(1, 'March'),
(2, 'October 2022'),
(3, 'November 2022'),
(4, 'December 2022'),
(5, 'july 2022'),
(6, 'January 23'),
(7, 'February 23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `Product_SlNo` int(11) NOT NULL,
  `Product_Code` varchar(50) NOT NULL,
  `Product_Name` varchar(150) NOT NULL,
  `ProductCategory_ID` int(11) NOT NULL,
  `color` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `size` varchar(11) NOT NULL DEFAULT 'na',
  `vat` float NOT NULL,
  `Product_ReOrederLevel` int(11) NOT NULL,
  `Product_Purchase_Rate` decimal(18,2) NOT NULL,
  `Product_SellingPrice` decimal(18,2) NOT NULL,
  `Product_MinimumSellingPrice` decimal(18,2) NOT NULL,
  `Product_WholesaleRate` decimal(18,2) NOT NULL,
  `one_cartun_equal` varchar(20) NOT NULL,
  `is_service` varchar(10) NOT NULL DEFAULT 'false',
  `Unit_ID` int(11) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(100) NOT NULL,
  `AddTime` varchar(30) NOT NULL,
  `UpdateBy` varchar(50) NOT NULL,
  `UpdateTime` varchar(30) NOT NULL,
  `Product_branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`Product_SlNo`, `Product_Code`, `Product_Name`, `ProductCategory_ID`, `color`, `brand`, `size`, `vat`, `Product_ReOrederLevel`, `Product_Purchase_Rate`, `Product_SellingPrice`, `Product_MinimumSellingPrice`, `Product_WholesaleRate`, `one_cartun_equal`, `is_service`, `Unit_ID`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `Product_branchid`) VALUES
(1, '2402', 'PADESTAL BASIN-WHITE', 1, 0, 0, 'na', 0, 64, '5604.98', '6300.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-09-21 19:28:14', '', '', 1),
(2, '2402-IVORY', 'PADESTAL BASIN', 1, 0, 0, 'na', 0, 8, '5000.00', '6300.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-09-21 19:29:39', '', '', 1),
(3, '5937-WHITE', 'COMMODE', 1, 0, 0, 'na', 0, 31, '12500.00', '16000.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-09-21 19:31:24', '', '', 1),
(4, '5525-IVORY', 'COMMODE-IVORY', 1, 0, 0, 'na', 0, 6, '11000.00', '13175.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-09-21 19:33:48', '', '', 1),
(5, '2401-WHITE', 'PADESTAL BASIN-W', 1, 0, 0, 'na', 0, 3, '5691.65', '7200.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-09-21 19:35:48', '', '', 1),
(6, '418A', 'TOP BASIN-WHITE', 1, 0, 0, 'na', 0, 6, '4500.00', '6300.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-09-21 19:36:48', '', '', 1),
(7, '327B-WHITE', 'BASIN PILASI', 1, 0, 0, 'na', 0, 8, '9387.33', '14000.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-09-21 19:40:29', '', '', 1),
(8, '20080-MIXER', 'PANNEL SHOWER', 1, 0, 0, 'na', 0, 4, '10000.00', '16000.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-09-21 19:42:11', '', '', 1),
(9, 'P00009', '114-BASIN WHITE ', 1, 0, 0, 'na', 0, 17, '5200.00', '5720.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-09-22 16:13:03', '', '', 1),
(10, '167', 'BASIN WHITE ', 1, 0, 0, 'na', 0, 167, '4446.40', '4891.04', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-09-22 16:14:28', '', '', 1),
(11, '152', 'BASIN ', 1, 0, 0, 'na', 0, 3, '4304.00', '4734.40', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-09-22 16:16:02', '', '', 1),
(12, '208', 'BASIN-WHITE ', 1, 0, 0, 'na', 0, 68, '4877.00', '5364.70', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-09-22 16:18:04', '', '', 1),
(13, 'P00013', 'LED TV', 5, 0, 0, 'na', 0, 5, '12500.00', '27500.00', '0.00', '13000.00', '', 'false', 1, 'a', 'Admin', '2022-09-25 19:33:13', '', '', 1),
(14, 'P00014', 'OX', 6, 0, 0, 'na', 0, 0, '74.90', '0.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-10-11 13:27:35', '', '', 1),
(15, 'P00015', 'PI0009040342', 7, 0, 0, 'na', 0, 20, '1200.00', '2370.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-10-13 11:20:41', '', '', 1),
(16, 'P00016', 'Sharee katan', 8, 0, 0, 'na', 0, 1, '800.00', '1600.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-10-13 13:05:07', '', '', 1),
(17, 'P00017', 'sharewe silkj', 9, 0, 0, 'na', 0, 1, '750.00', '1500.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-10-13 13:06:48', '', '', 1),
(18, 'P00018', 'Art Paper 23/36 120 GSM', 10, 0, 0, 'na', 0, 1000, '2000.00', '2100.00', '0.00', '0.00', '', 'false', 3, 'a', 'Admin', '2022-10-16 15:03:04', '', '', 1),
(19, 'P00019', 'Offset Paper 120 Gsm 23/36', 10, 0, 0, 'na', 0, 1000, '1914.87', '2100.00', '0.00', '0.00', '', 'false', 3, 'a', 'Admin', '2022-10-16 15:04:53', '', '', 1),
(20, 'P00020', 'Mirzapur Tea', 11, 0, 0, 'na', 0, 10, '149.44', '250.00', '0.00', '96.00', '', 'false', 1, 'a', 'Admin', '2022-10-17 13:16:53', 'Admin', '2022-10-30 18:20:49', 1),
(21, 'P00021', 'Dell 320', 12, 0, 0, 'na', 0, 0, '23500.00', '26500.00', '0.00', '25500.00', '', 'false', 1, 'a', 'Admin', '2022-10-18 16:44:14', '', '', 1),
(22, 'P00022', 'Morning-2050', 2, 0, 0, 'na', 0, 0, '0.00', '122.00', '0.00', '0.00', '', 'true', 1, 'a', 'Admin', '2022-10-19 14:41:19', '', '', 1),
(23, 'P00023', 'Morning-2051', 2, 0, 0, 'na', 0, 11, '0.00', '200.00', '0.00', '0.00', '', 'true', 1, 'a', 'Admin', '2022-10-19 14:42:39', 'Admin', '2022-10-30 18:20:30', 1),
(24, 'P00024', '3knives (white)', 3, 0, 0, 'na', 0, 1, '21000.00', '21000.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-11-07 18:52:44', '', '', 1),
(25, 'B3W-244', 'Begasso 3 Knives (Chili)', 3, 0, 0, 'na', 0, 1, '23000.00', '21000.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-11-07 19:00:00', '', '', 1),
(26, 'P00026', 'All Jar Heart Candy', 14, 0, 0, 'na', 0, 0, '220.00', '250.00', '0.00', '0.00', '', 'false', 5, 'a', 'Admin', '2022-11-13 15:39:26', '', '', 1),
(27, 'P00027', 'Grap Heart Candy', 14, 0, 0, 'na', 0, 0, '0.00', '300.00', '0.00', '0.00', '', 'true', 5, 'a', 'Admin', '2022-11-13 15:40:09', 'Admin', '2022-11-17 11:23:23', 1),
(28, 'P00028', 'MAM 500 ml ', 16, 0, 0, 'na', 0, 5, '100.00', '120.00', '0.00', '115.00', '', 'false', 5, 'a', 'Admin', '2022-11-16 10:06:09', '', '', 1),
(29, 'P00029', 'bmw car', 17, 0, 0, 'na', 0, 10, '77.00', '85.00', '0.00', '85.00', '', 'false', 1, 'a', 'Admin', '2022-11-19 14:52:15', '', '', 1),
(30, 'P00030', 'Dr set', 17, 0, 0, 'na', 0, 5, '85.00', '90.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-11-19 15:32:41', '', '', 1),
(32, 'P00031', 'kids1176', 18, 0, 0, 'na', 0, 10, '175.00', '250.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-11-19 16:14:36', '', '', 1),
(33, 'P00033', 'home payer', 19, 0, 0, 'na', 0, 10, '900.00', '1200.00', '0.00', '1150.00', '', 'false', 1, 'a', 'Admin', '2022-11-19 18:54:35', '', '', 1),
(34, 'P00034', 'China nagin1175', 18, 0, 0, 'na', 0, 5, '175.00', '230.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-11-19 23:07:14', '', '', 1),
(35, 'P00035', 'Urenium 500 Psi', 20, 0, 0, 'na', 0, 5, '10000.00', '12500.00', '0.00', '0.00', '', 'false', 6, 'a', 'Admin', '2022-11-20 10:44:45', '', '', 7),
(36, 'P00036', 'Bashmoti Rice 50kg', 21, 0, 0, 'na', 0, 10, '2850.00', '3500.00', '0.00', '0.00', '', 'false', 4, 'a', 'Admin', '2022-11-20 10:45:39', '', '', 7),
(37, 'P00037', 'RedBul 250ml', 22, 0, 0, 'na', 0, 10, '2500.00', '3000.00', '0.00', '0.00', '', 'false', 6, 'a', 'Admin', '2022-11-20 10:46:46', '', '', 7),
(38, 'P00038', 'renu', 23, 0, 0, 'na', 0, 0, '5.00', '10.00', '0.00', '10.00', '', 'false', 1, 'a', 'Admin', '2022-11-21 17:23:25', '', '', 1),
(39, 'P00039', 'Plywood Gorjon  18mm (BCL Plywood)', 24, 0, 0, 'na', 0, 30, '2562.00', '2650.00', '0.00', '2580.00', '', 'false', 1, 'a', 'Admin', '2022-11-26 17:13:31', '', '', 1),
(40, 'P00040', 'Rashid Minicate', 21, 0, 0, 'na', 0, 10, '2040.00', '2100.00', '0.00', '0.00', '', 'false', 4, 'a', 'Admin', '2022-11-27 12:59:11', '', '', 1),
(41, 'P00041', 'egloo', 25, 0, 0, 'na', 0, 10, '25.00', '30.00', '0.00', '27.00', '', 'false', 1, 'a', 'Admin', '2022-12-01 12:27:26', '', '', 1),
(42, 'P00042', 'PAWDAR MILK 400gm', 15, 0, 0, 'na', 0, 5, '50.33', '68.00', '0.00', '0.00', '', 'false', 1, 'a', 'Admin', '2022-12-01 12:52:41', '', '', 1),
(43, 'P00043', 'tarek', 1, 0, 0, 'na', 0, 5, '500.00', '550.00', '0.00', '520.00', '', 'false', 1, 'a', 'Admin', '2022-12-06 14:59:26', '', '', 1),
(44, 'P00044', 'sony', 5, 0, 0, 'na', 0, 50, '6000.00', '9000.00', '0.00', '8500.00', '', 'false', 1, 'a', 'Admin', '2022-12-08 13:16:21', '', '', 1),
(45, '8941102317523', 'wdfdf', 9, 0, 0, 'na', 0, 10, '1200.00', '1500.00', '0.00', '0.00', '', 'false', 1, 'd', 'Admin', '2022-12-10 12:32:18', '', '', 1),
(46, 'P00046', 'Half Boys Shirt', 26, 0, 0, 'na', 0, 3, '300.00', '400.00', '0.00', '350.00', '', 'false', 1, 'a', 'Admin', '2022-12-11 13:10:24', '', '', 1),
(47, 'P00047', 'esdgrsd', 8, 0, 0, 'na', 0, 0, '100.00', '0.00', '0.00', '0.00', '', 'false', 7, 'd', 'Admin', '2022-12-14 12:27:21', '', '', 1),
(48, 'P00048', 'Big Burger ', 27, 0, 0, 'na', 0, 1, '100.00', '150.00', '0.00', '0.00', '', 'false', 1, 'a', 'Zahir Hossain', '2022-12-15 18:21:01', '', '', 9),
(49, 'P00049', 'Pizza', 27, 0, 0, 'na', 0, 1, '100.00', '200.00', '0.00', '0.00', '', 'false', 1, 'a', 'Zahir Hossain', '2022-12-15 18:21:37', '', '', 9),
(50, 'P00050', 'Small Burger', 27, 0, 0, 'na', 0, 1, '100.00', '150.00', '0.00', '0.00', '', 'false', 1, 'a', 'Zahir Hossain', '2022-12-15 18:23:21', '', '', 9),
(51, 'P00051', 'Small Pizza', 27, 0, 0, 'na', 0, 1, '100.00', '150.00', '0.00', '0.00', '', 'false', 1, 'a', 'Zahir Hossain', '2022-12-15 18:23:48', '', '', 9),
(52, 'P00052', 'cement 4', 13, 0, 0, 'na', 0, 45, '0.00', '400.00', '0.00', '420.00', '', 'true', 1, 'd', 'Admin', '2022-12-20 16:50:15', '', '', 1),
(53, 'P00053', 'plastic Chair', 28, 0, 0, 'na', 0, 10, '500.00', '700.00', '0.00', '600.00', '', 'false', 1, 'a', 'Admin', '2022-12-20 16:52:53', '', '', 1),
(54, 'P00054', 'High Chair', 28, 0, 0, 'na', 0, 10, '800.00', '1000.00', '0.00', '900.00', '', 'false', 1, 'a', 'Admin', '2022-12-20 16:58:56', '', '', 1),
(55, 'P00055', 'small mog', 29, 0, 0, 'na', 0, 10, '85.00', '100.00', '0.00', '95.00', '', 'false', 1, 'a', 'Admin', '2022-12-20 17:01:39', '', '', 1),
(56, 'P00056', 'boro mog', 29, 0, 0, 'na', 0, 10, '75.00', '90.00', '0.00', '80.00', '', 'false', 1, 'a', 'Admin', '2022-12-20 17:25:17', '', '', 1),
(57, 'P00057', 'Premium Mini 50Kg', 31, 0, 0, 'na', 0, 0, '3420.00', '3600.00', '0.00', '0.00', '', 'false', 4, 'd', 'Admin', '2022-12-27 13:07:17', '', '', 1),
(58, 'P00058', 'Paijam 50Kg', 33, 0, 0, 'na', 0, 0, '2400.00', '2600.00', '0.00', '0.00', '', 'false', 4, 'd', 'Admin', '2022-12-27 13:09:17', '', '', 1),
(59, 'P00059', 'Nazir 50kg', 32, 0, 0, 'na', 0, 0, '4000.00', '4100.00', '0.00', '0.00', '', 'false', 4, 'd', 'Admin', '2022-12-27 13:09:45', '', '', 1),
(60, 'P00060', 'Super vision ', 5, 0, 0, 'na', 0, 5, '0.00', '18000.00', '0.00', '15500.00', '', 'true', 1, 'd', 'Admin', '2022-12-29 18:37:09', '', '', 1),
(61, 'P00061', 'super v', 5, 0, 0, 'na', 0, 10, '15000.00', '18000.00', '0.00', '16000.00', '', 'false', 1, 'd', 'Admin', '2022-12-29 18:41:30', '', '', 1),
(62, 'P00062', 'Lenevo', 12, 0, 0, 'na', 0, 10, '25000.00', '28000.00', '0.00', '24000.00', '', 'false', 1, 'd', 'Admin', '2022-12-29 18:44:09', '', '', 1),
(63, 'P00063', 'Fresh Cement', 13, 0, 0, 'na', 0, 0, '520.00', '540.00', '0.00', '530.00', '', 'false', 4, 'a', 'Admin', '2022-12-30 11:03:20', '', '', 1),
(64, 'P00064', '5Rings Cement', 13, 0, 0, 'na', 0, 0, '510.00', '540.00', '0.00', '530.00', '', 'false', 4, 'a', 'Admin', '2022-12-30 11:03:56', '', '', 1),
(65, 'P00065', 'ispahani', 11, 0, 0, 'na', 2, 100, '200.00', '250.00', '0.00', '230.00', '', 'false', 1, 'd', 'Admin', '2022-12-30 14:56:53', '', '', 1),
(66, 'P00066', 'শাহ্ স্পেশাল', 35, 0, 0, 'na', 0, 50, '520.00', '540.00', '0.00', '530.00', '', 'false', 4, 'a', 'Admin', '2023-01-01 20:36:07', '', '', 1),
(67, 'P00067', 'CARROT', 41, 0, 0, 'na', 0, 100, '8.00', '9.00', '0.00', '8.50', '', 'false', 12, 'a', 'Admin', '2023-01-08 20:43:50', 'Admin', '2023-01-09 14:14:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productcategory`
--

CREATE TABLE `tbl_productcategory` (
  `ProductCategory_SlNo` int(11) NOT NULL,
  `ProductCategory_Name` varchar(150) NOT NULL,
  `ProductCategory_Description` varchar(300) NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` varchar(50) NOT NULL,
  `AddTime` varchar(30) NOT NULL,
  `UpdateBy` varchar(50) NOT NULL,
  `UpdateTime` varchar(30) NOT NULL,
  `category_branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_productcategory`
--

INSERT INTO `tbl_productcategory` (`ProductCategory_SlNo`, `ProductCategory_Name`, `ProductCategory_Description`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `category_branchid`) VALUES
(1, 'Ceramic & Fittings ', 'Imported Pillasi product ', 'd', 'Admin', '2022-09-21 19:24:55', '', '', 1),
(2, 'RSK', 'LOCAL SUPPLIER ', 'd', 'Admin', '2022-09-21 19:43:33', '', '', 1),
(3, 'Tiles ', 'Carpet Tiles ', 'd', 'Admin', '2022-09-22 16:00:30', '', '', 1),
(4, 'tututut', '', 'd', 'Admin', '2022-09-24 23:04:08', '', '', 1),
(5, 'TV', '32\" LED TV', 'd', 'Admin', '2022-09-25 19:30:14', '', '', 1),
(6, 'AGRO', '', 'd', 'Admin', '2022-10-11 13:26:48', '', '', 1),
(7, 'PI0009040342', 'PI0009040342\n', 'd', 'Admin', '2022-10-13 11:20:07', '', '', 1),
(8, 'Sharee Katan', '', 'd', 'Admin', '2022-10-13 13:03:57', '', '', 1),
(9, 'sharee silk', '', 'd', 'Admin', '2022-10-13 13:05:55', '', '', 1),
(10, 'paper', '', 'd', 'Admin', '2022-10-16 14:59:10', '', '', 1),
(11, 'বালু', '', 'a', 'Admin', '2022-10-17 13:16:10', 'Admin', '2023-01-01 21:17:18', 1),
(12, 'Computer ', '', 'd', 'Admin', '2022-10-18 16:42:53', '', '', 1),
(13, 'Cement', 'Shah Cement', 'a', 'Admin', '2022-10-29 17:19:35', '', '', 1),
(14, 'Heart Candy', '', 'd', 'Admin', '2022-11-13 15:37:26', '', '', 1),
(15, 'Milk', '', 'd', 'Admin', '2022-11-13 15:37:37', '', '', 1),
(16, 'Water Bottle ', '', 'd', 'Admin', '2022-11-16 09:52:12', '', '', 1),
(17, 'toys', '', 'd', 'Admin', '2022-11-19 14:49:55', '', '', 1),
(18, 'Shoes', '', 'd', 'Admin', '2022-11-19 16:12:50', '', '', 1),
(19, 'arg', '', 'd', 'Admin', '2022-11-19 18:52:47', '', '', 1),
(20, 'Chemical', '', 'a', 'Admin', '2022-11-20 10:40:42', '', '', 7),
(21, 'Rice', '', 'a', 'Admin', '2022-11-20 10:41:06', '', '', 7),
(22, 'Food & Bevarege', '', 'a', 'Admin', '2022-11-20 10:41:29', '', '', 7),
(23, 'OTHER', '', 'd', 'Admin', '2022-11-21 17:22:19', '', '', 1),
(24, 'Plywood ', '', 'd', 'Admin', '2022-11-26 17:12:10', '', '', 1),
(25, 'icecream', 'all kinds of icecream', 'd', 'Admin', '2022-12-01 12:25:08', '', '', 1),
(26, 'Boys Shirt', '', 'd', 'Admin', '2022-12-11 13:09:04', '', '', 1),
(27, 'Food', '', 'a', 'Zahir Hossain', '2022-12-15 18:19:36', '', '', 9),
(28, 'Chair', '', 'a', 'Admin', '2022-12-20 16:51:27', '', '', 1),
(29, 'mog', '', 'a', 'Admin', '2022-12-20 16:51:37', '', '', 1),
(30, 'LED tv', '', 'd', 'Admin', '2022-12-21 09:24:29', '', '', 1),
(31, 'Premium Mini ', '', 'd', 'Admin', '2022-12-27 13:06:07', '', '', 1),
(32, 'Nazir', '', 'd', 'Admin', '2022-12-27 13:08:26', '', '', 1),
(33, 'Paijam', '', 'd', 'Admin', '2022-12-27 13:08:33', '', '', 1),
(34, 'Sharna', '', 'd', 'Admin', '2022-12-27 13:08:39', '', '', 1),
(35, 'সিমেন্ট', '', 'a', 'Admin', '2023-01-01 20:19:29', '', '', 1),
(36, 'ইট', '', 'a', 'Admin', '2023-01-01 21:18:05', '', '', 1),
(37, 'পাথর', '', 'a', 'Admin', '2023-01-01 21:18:19', '', '', 1),
(38, 'খোয়া', '', 'a', 'Admin', '2023-01-01 21:18:30', '', '', 1),
(39, 'রড', '', 'a', 'Admin', '2023-01-01 21:18:47', '', '', 1),
(40, 'রিং', 'নগদ বিক্রি', 'a', 'Admin', '2023-01-01 21:19:37', '', '', 1),
(41, 'VEGETABLE', 'VEGETABLE', 'a', 'Admin', '2023-01-08 20:39:55', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasedetails`
--

CREATE TABLE `tbl_purchasedetails` (
  `PurchaseDetails_SlNo` int(11) NOT NULL,
  `PurchaseMaster_IDNo` int(11) NOT NULL,
  `Product_IDNo` int(11) NOT NULL,
  `PurchaseDetails_TotalQuantity` float NOT NULL,
  `PurchaseDetails_Rate` decimal(18,2) NOT NULL,
  `purchase_cost` decimal(18,2) NOT NULL,
  `PurchaseDetails_Discount` decimal(18,2) NOT NULL,
  `PurchaseDetails_TotalAmount` decimal(18,2) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `PurchaseDetails_branchID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_purchasedetails`
--

INSERT INTO `tbl_purchasedetails` (`PurchaseDetails_SlNo`, `PurchaseMaster_IDNo`, `Product_IDNo`, `PurchaseDetails_TotalQuantity`, `PurchaseDetails_Rate`, `purchase_cost`, `PurchaseDetails_Discount`, `PurchaseDetails_TotalAmount`, `Status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `PurchaseDetails_branchID`) VALUES
(9, 2, 12, 10, '4877.00', '0.00', '0.00', '48770.00', 'a', 'Admin', '2022-09-25 19:32:07', NULL, NULL, 1),
(10, 3, 13, 10, '12500.00', '0.00', '0.00', '125000.00', 'a', 'Admin', '2022-09-25 19:37:33', NULL, NULL, 1),
(11, 4, 14, 10, '5000.00', '0.00', '0.00', '50000.00', 'a', 'Admin', '2022-10-11 13:28:44', NULL, NULL, 1),
(12, 5, 14, 20, '6000.00', '0.00', '0.00', '120000.00', 'a', 'Admin', '2022-10-11 13:29:55', NULL, NULL, 1),
(13, 6, 14, 2000, '5.00', '0.00', '0.00', '10000.00', 'a', 'Admin', '2022-10-12 14:37:11', NULL, NULL, 1),
(14, 7, 15, 100, '1200.00', '0.00', '0.00', '120000.00', 'a', 'Admin', '2022-10-13 11:25:36', NULL, NULL, 1),
(15, 8, 18, 10000, '2000.00', '0.00', '0.00', '20000000.00', 'a', 'Admin', '2022-10-16 15:07:24', NULL, NULL, 1),
(16, 8, 19, 10000, '2000.00', '0.00', '0.00', '20000000.00', 'a', 'Admin', '2022-10-16 15:07:24', NULL, NULL, 1),
(17, 9, 11, 500, '4304.00', '0.00', '0.00', '2152000.00', 'a', 'Admin', '2022-10-18 12:25:20', NULL, NULL, 1),
(18, 10, 13, 200, '12500.00', '0.00', '0.00', '2500000.00', 'a', 'Admin', '2022-10-18 16:03:01', NULL, NULL, 1),
(19, 11, 1, 200, '5604.98', '0.00', '0.00', '1120996.00', 'a', 'Admin', '2022-10-25 12:30:57', NULL, NULL, 1),
(20, 11, 20, 500, '80.00', '0.00', '0.00', '40000.00', 'a', 'Admin', '2022-10-25 12:30:57', NULL, NULL, 1),
(21, 12, 19, 500, '250.00', '0.00', '0.00', '125000.00', 'a', 'Admin', '2022-10-26 18:09:54', NULL, NULL, 1),
(22, 13, 18, 1000, '2000.00', '0.00', '0.00', '2000000.00', 'a', 'Admin', '2022-10-26 20:41:13', NULL, NULL, 1),
(23, 14, 21, 100, '23500.00', '0.00', '0.00', '2350000.00', 'a', 'Admin', '2022-10-30 10:30:27', NULL, NULL, 1),
(24, 15, 13, 5, '12500.00', '0.00', '0.00', '62500.00', 'a', 'Admin', '2022-10-31 15:53:13', NULL, NULL, 1),
(25, 15, 7, 5, '9387.33', '0.00', '0.00', '46936.65', 'a', 'Admin', '2022-10-31 15:53:13', NULL, NULL, 1),
(26, 16, 20, 10, '130.00', '0.00', '0.00', '1300.00', 'a', 'Admin', '2022-11-01 18:13:07', NULL, NULL, 1),
(27, 17, 20, 12, '149.44', '0.00', '0.00', '1793.28', 'a', 'Admin', '2022-11-05 16:53:41', NULL, NULL, 1),
(28, 18, 20, 2, '149.44', '0.00', '0.00', '298.88', 'a', 'Admin', '2022-11-05 16:59:02', NULL, NULL, 1),
(30, 19, 25, 10, '23000.00', '0.00', '0.00', '230000.00', 'a', NULL, NULL, 'Admin', '2022-11-07 19:10:59', 1),
(33, 20, 25, 10, '23000.00', '0.00', '0.00', '230000.00', 'a', NULL, NULL, 'Admin', '2022-11-07 19:17:06', 1),
(34, 20, 24, 10, '21000.00', '0.00', '0.00', '210000.00', 'a', NULL, NULL, 'Admin', '2022-11-07 19:17:06', 1),
(35, 21, 24, 10, '21000.00', '0.00', '0.00', '210000.00', 'a', 'Admin', '2022-11-07 20:59:58', NULL, NULL, 1),
(36, 1, 8, 2, '14000.00', '0.00', '0.00', '28000.00', 'a', NULL, NULL, 'Admin', '2022-11-08 10:55:10', 1),
(37, 1, 7, 1, '9387.33', '0.00', '0.00', '9387.33', 'a', NULL, NULL, 'Admin', '2022-11-08 10:55:10', 1),
(38, 1, 6, 1, '5532.00', '0.00', '0.00', '5532.00', 'a', NULL, NULL, 'Admin', '2022-11-08 10:55:10', 1),
(39, 1, 5, 1, '5691.65', '0.00', '0.00', '5691.65', 'a', NULL, NULL, 'Admin', '2022-11-08 10:55:10', 1),
(40, 1, 4, 2, '11000.00', '0.00', '0.00', '22000.00', 'a', NULL, NULL, 'Admin', '2022-11-08 10:55:10', 1),
(41, 1, 3, 9, '12500.00', '0.00', '0.00', '112500.00', 'a', NULL, NULL, 'Admin', '2022-11-08 10:55:10', 1),
(42, 1, 2, 1, '5600.00', '0.00', '0.00', '5600.00', 'a', NULL, NULL, 'Admin', '2022-11-08 10:55:10', 1),
(43, 1, 1, 2, '5604.98', '0.00', '0.00', '11209.96', 'a', NULL, NULL, 'Admin', '2022-11-08 10:55:11', 1),
(44, 22, 25, 10, '23000.00', '0.00', '0.00', '230000.00', 'a', 'Admin', '2022-11-09 10:22:33', NULL, NULL, 6),
(45, 22, 24, 10, '21000.00', '0.00', '0.00', '210000.00', 'a', 'Admin', '2022-11-09 10:22:33', NULL, NULL, 6),
(46, 22, 13, 10, '12500.00', '0.00', '0.00', '125000.00', 'a', 'Admin', '2022-11-09 10:22:33', NULL, NULL, 6),
(47, 23, 25, 1, '23000.00', '0.00', '0.00', '23000.00', 'a', 'Admin', '2022-11-09 13:24:15', NULL, NULL, 1),
(48, 24, 24, 11, '21000.00', '0.00', '0.00', '231000.00', 'a', 'Admin', '2022-11-13 13:43:30', NULL, NULL, 1),
(49, 25, 26, 5, '220.00', '0.00', '0.00', '1100.00', 'a', 'Admin', '2022-11-13 15:41:38', NULL, NULL, 1),
(50, 25, 27, 6, '250.00', '0.00', '0.00', '1500.00', 'a', 'Admin', '2022-11-13 15:41:38', NULL, NULL, 1),
(51, 26, 2, 200, '5000.00', '0.00', '0.00', '1000000.00', 'a', 'Admin', '2022-11-15 13:46:15', NULL, NULL, 1),
(52, 26, 3, 200, '12500.00', '0.00', '0.00', '2500000.00', 'a', 'Admin', '2022-11-15 13:46:15', NULL, NULL, 1),
(53, 26, 4, 100, '11000.00', '0.00', '0.00', '1100000.00', 'a', 'Admin', '2022-11-15 13:46:15', NULL, NULL, 1),
(54, 27, 5, 50, '5691.65', '0.00', '0.00', '284582.50', 'a', 'Admin', '2022-11-15 13:48:15', NULL, NULL, 1),
(55, 27, 6, 200, '4500.00', '0.00', '0.00', '900000.00', 'a', 'Admin', '2022-11-15 13:48:15', NULL, NULL, 1),
(56, 27, 7, 100, '9387.33', '0.00', '0.00', '938733.00', 'a', 'Admin', '2022-11-15 13:48:15', NULL, NULL, 1),
(57, 28, 8, 50, '10000.00', '0.00', '0.00', '500000.00', 'a', 'Admin', '2022-11-15 13:49:57', NULL, NULL, 1),
(58, 28, 12, 300, '4877.00', '0.00', '0.00', '1463100.00', 'a', 'Admin', '2022-11-15 13:49:57', NULL, NULL, 1),
(59, 28, 15, 200, '1200.00', '0.00', '0.00', '240000.00', 'a', 'Admin', '2022-11-15 13:49:57', NULL, NULL, 1),
(60, 29, 28, 10, '100.00', '0.00', '0.00', '1000.00', 'a', 'Admin', '2022-11-16 12:35:31', NULL, NULL, 1),
(61, 30, 29, 100, '77.00', '0.00', '0.00', '7700.00', 'a', 'Admin', '2022-11-19 14:58:49', NULL, NULL, 1),
(62, 31, 30, 200, '85.00', '0.00', '0.00', '17000.00', 'a', 'Admin', '2022-11-19 15:33:42', NULL, NULL, 1),
(63, 32, 29, 500, '77.00', '0.00', '0.00', '38500.00', 'a', 'Admin', '2022-11-19 16:10:47', NULL, NULL, 1),
(64, 33, 32, 500, '175.00', '0.00', '0.00', '87500.00', 'a', 'Admin', '2022-11-19 16:16:41', NULL, NULL, 1),
(65, 34, 30, 100, '85.00', '0.00', '0.00', '8500.00', 'a', 'Admin', '2022-11-19 17:03:25', NULL, NULL, 1),
(66, 35, 30, 300, '85.00', '0.00', '0.00', '25500.00', 'a', 'Admin', '2022-11-19 18:38:59', NULL, NULL, 1),
(67, 36, 0, 2, '1200.00', '0.00', '0.00', '2400.00', 'a', 'Admin', '2022-11-20 10:42:28', NULL, NULL, 1),
(68, 37, 19, 22, '1914.87', '0.00', '0.00', '42127.14', 'a', 'Admin', '2022-11-20 10:43:39', NULL, NULL, 1),
(69, 38, 37, 100, '2500.00', '0.00', '0.00', '250000.00', 'a', 'Admin', '2022-11-20 10:52:00', NULL, NULL, 7),
(70, 38, 36, 150, '2850.00', '0.00', '0.00', '427500.00', 'a', 'Admin', '2022-11-20 10:52:00', NULL, NULL, 7),
(71, 39, 38, 1000000, '5.00', '0.00', '0.00', '5000000.00', 'a', 'Admin', '2022-11-21 17:25:02', NULL, NULL, 1),
(72, 40, 38, 10000000, '5.00', '0.00', '0.00', '50000000.00', 'a', 'Admin', '2022-11-21 17:42:19', NULL, NULL, 1),
(73, 41, 37, 100, '2500.00', '0.00', '0.00', '250000.00', 'a', 'Admin', '2022-11-23 18:27:37', NULL, NULL, 1),
(74, 42, 39, 112, '2562.00', '0.00', '0.00', '286944.00', 'a', 'Admin', '2022-11-26 17:16:29', NULL, NULL, 1),
(75, 43, 37, 100, '2500.00', '0.00', '0.00', '250000.00', 'a', 'Admin', '2022-11-26 20:36:48', NULL, NULL, 1),
(76, 44, 39, 30, '2562.00', '0.00', '0.00', '76860.00', 'a', 'Admin', '2022-11-27 12:57:48', NULL, NULL, 1),
(77, 45, 40, 30, '2000.00', '0.00', '0.00', '60000.00', 'a', 'Admin', '2022-11-27 13:01:21', NULL, NULL, 1),
(78, 45, 36, 20, '2850.00', '0.00', '0.00', '57000.00', 'a', 'Admin', '2022-11-27 13:01:21', NULL, NULL, 1),
(79, 46, 40, 20, '2100.00', '0.00', '0.00', '42000.00', 'a', 'Admin', '2022-11-27 13:02:13', NULL, NULL, 1),
(80, 47, 39, 30, '2562.00', '0.00', '0.00', '76860.00', 'a', 'Admin', '2022-11-28 18:45:16', NULL, NULL, 1),
(81, 47, 40, 30, '2040.00', '0.00', '0.00', '61200.00', 'a', 'Admin', '2022-11-28 18:45:16', NULL, NULL, 1),
(82, 48, 39, 10, '2562.00', '0.00', '0.00', '25620.00', 'a', 'Admin', '2022-11-30 16:51:40', NULL, NULL, 1),
(83, 49, 41, 50, '25.00', '0.00', '0.00', '1250.00', 'a', 'Admin', '2022-12-01 12:28:11', NULL, NULL, 1),
(84, 50, 42, 10, '50.00', '0.00', '0.00', '500.00', 'a', 'Admin', '2022-12-01 12:55:31', NULL, NULL, 1),
(85, 50, 39, 10, '2562.00', '0.00', '0.00', '25620.00', 'a', 'Admin', '2022-12-01 12:55:31', NULL, NULL, 1),
(86, 50, 33, 60, '900.00', '0.00', '0.00', '54000.00', 'a', 'Admin', '2022-12-01 12:55:31', NULL, NULL, 1),
(88, 51, 42, 100, '50.00', '0.00', '0.00', '5000.00', 'a', NULL, NULL, 'Admin', '2022-12-05 10:25:27', 1),
(89, 52, 42, 100, '49.00', '0.00', '0.00', '4900.00', 'a', 'Admin', '2022-12-05 10:26:31', NULL, NULL, 1),
(90, 53, 42, 100, '52.00', '0.00', '0.00', '5200.00', 'a', 'Admin', '2022-12-05 10:28:11', NULL, NULL, 1),
(91, 54, 41, 2, '25.00', '0.00', '0.00', '50.00', 'a', 'Admin', '2022-12-06 11:06:49', NULL, NULL, 1),
(92, 54, 37, 5, '2500.00', '0.00', '0.00', '12500.00', 'a', 'Admin', '2022-12-06 11:06:49', NULL, NULL, 1),
(93, 55, 41, 6, '25.00', '0.00', '0.00', '150.00', 'a', 'Admin', '2022-12-06 11:29:10', NULL, NULL, 1),
(94, 55, 35, 5, '10000.00', '0.00', '0.00', '50000.00', 'a', 'Admin', '2022-12-06 11:29:10', NULL, NULL, 1),
(95, 56, 43, 100, '500.00', '0.00', '0.00', '50000.00', 'a', 'Admin', '2022-12-06 15:00:55', NULL, NULL, 1),
(96, 57, 42, 2, '50.33', '0.00', '0.00', '100.66', 'a', 'Admin', '2022-12-06 15:54:35', NULL, NULL, 1),
(97, 57, 26, 5, '220.00', '0.00', '0.00', '1100.00', 'a', 'Admin', '2022-12-06 15:54:35', NULL, NULL, 1),
(98, 58, 37, 10, '2500.00', '0.00', '0.00', '25000.00', 'a', 'Admin', '2022-12-06 19:47:03', NULL, NULL, 1),
(99, 58, 24, 10, '21000.00', '0.00', '0.00', '210000.00', 'a', 'Admin', '2022-12-06 19:47:03', NULL, NULL, 1),
(100, 59, 40, 12, '2040.00', '0.00', '0.00', '24480.00', 'a', 'Admin', '2022-12-08 16:13:39', NULL, NULL, 1),
(101, 59, 38, 200, '5.00', '0.00', '0.00', '1000.00', 'a', 'Admin', '2022-12-08 16:13:39', NULL, NULL, 1),
(102, 60, 39, 2, '2562.00', '0.00', '0.00', '5124.00', 'a', 'Admin', '2022-12-08 16:25:42', NULL, NULL, 1),
(103, 60, 34, 12, '175.00', '0.00', '0.00', '2100.00', 'a', 'Admin', '2022-12-08 16:25:42', NULL, NULL, 1),
(104, 61, 45, 200, '1200.00', '0.00', '0.00', '240000.00', 'a', 'Admin', '2022-12-10 12:33:02', NULL, NULL, 1),
(105, 62, 42, 100, '50.33', '0.00', '0.00', '5033.00', 'a', 'Admin', '2022-12-10 13:33:36', NULL, NULL, 1),
(106, 63, 44, 10, '6000.00', '0.00', '0.00', '60000.00', 'a', 'Admin', '2022-12-11 12:27:05', NULL, NULL, 1),
(107, 64, 46, 10, '300.00', '0.00', '0.00', '3000.00', 'a', 'Admin', '2022-12-11 13:11:24', NULL, NULL, 1),
(108, 64, 35, 1, '10000.00', '0.00', '0.00', '10000.00', 'a', 'Admin', '2022-12-11 13:11:24', NULL, NULL, 1),
(109, 64, 29, 10, '77.00', '0.00', '0.00', '770.00', 'a', 'Admin', '2022-12-11 13:11:24', NULL, NULL, 1),
(110, 65, 47, 2000, '100.00', '0.00', '0.00', '200000.00', 'a', 'Admin', '2022-12-14 12:27:47', NULL, NULL, 1),
(111, 66, 44, 10, '6000.00', '0.00', '0.00', '60000.00', 'a', 'Admin', '2022-12-15 15:53:11', NULL, NULL, 9),
(112, 67, 26, 4, '220.00', '0.00', '0.00', '880.00', 'a', 'Admin', '2022-12-15 16:56:53', NULL, NULL, 1),
(113, 67, 34, 6, '175.00', '0.00', '0.00', '1050.00', 'a', 'Admin', '2022-12-15 16:56:53', NULL, NULL, 1),
(114, 68, 51, 10, '100.00', '0.00', '0.00', '1000.00', 'a', 'Zahir Hossain', '2022-12-15 18:25:27', NULL, NULL, 9),
(115, 68, 50, 10, '100.00', '0.00', '0.00', '1000.00', 'a', 'Zahir Hossain', '2022-12-15 18:25:27', NULL, NULL, 9),
(116, 68, 49, 10, '100.00', '0.00', '0.00', '1000.00', 'a', 'Zahir Hossain', '2022-12-15 18:25:27', NULL, NULL, 9),
(117, 68, 48, 10, '100.00', '0.00', '0.00', '1000.00', 'a', 'Zahir Hossain', '2022-12-15 18:25:27', NULL, NULL, 9),
(118, 69, 47, 100, '100.00', '0.00', '0.00', '10000.00', 'a', 'Admin', '2022-12-17 14:58:36', NULL, NULL, 1),
(119, 69, 43, 12, '500.00', '0.00', '0.00', '6000.00', 'a', 'Admin', '2022-12-17 14:58:36', NULL, NULL, 1),
(120, 70, 36, 10, '2850.00', '0.00', '0.00', '28500.00', 'a', 'Admin', '2022-12-19 11:44:12', NULL, NULL, 1),
(121, 71, 48, 20, '100.00', '0.00', '0.00', '2000.00', 'a', 'Admin', '2022-12-19 14:26:54', NULL, NULL, 1),
(122, 72, 49, 50, '100.00', '0.00', '0.00', '5000.00', 'a', 'Admin', '2022-12-19 14:28:47', NULL, NULL, 1),
(123, 73, 50, 50, '100.00', '0.00', '0.00', '5000.00', 'a', 'Admin', '2022-12-19 14:30:10', NULL, NULL, 1),
(124, 74, 42, 50, '50.33', '0.00', '0.00', '2516.50', 'a', 'Admin', '2022-12-19 14:36:39', NULL, NULL, 1),
(125, 74, 41, 30, '25.00', '0.00', '0.00', '750.00', 'a', 'Admin', '2022-12-19 14:36:39', NULL, NULL, 1),
(126, 74, 32, 30, '175.00', '0.00', '0.00', '5250.00', 'a', 'Admin', '2022-12-19 14:36:39', NULL, NULL, 1),
(127, 75, 49, 100, '100.00', '0.00', '0.00', '10000.00', 'a', 'Admin', '2022-12-19 17:04:33', NULL, NULL, 1),
(128, 76, 50, 100, '100.00', '0.00', '0.00', '10000.00', 'a', 'Admin', '2022-12-19 17:05:12', NULL, NULL, 1),
(129, 77, 36, 50, '2850.00', '0.00', '0.00', '142500.00', 'a', 'Admin', '2022-12-20 16:59:07', NULL, NULL, 1),
(130, 78, 53, 100, '500.00', '0.00', '0.00', '50000.00', 'a', 'Admin', '2022-12-20 17:00:19', NULL, NULL, 1),
(131, 78, 54, 100, '800.00', '0.00', '0.00', '80000.00', 'a', 'Admin', '2022-12-20 17:00:19', NULL, NULL, 1),
(132, 79, 55, 50, '85.00', '0.00', '0.00', '4250.00', 'a', 'Admin', '2022-12-20 17:02:56', NULL, NULL, 1),
(133, 80, 56, 50, '75.00', '0.00', '0.00', '3750.00', 'a', 'Admin', '2022-12-20 17:26:25', NULL, NULL, 1),
(134, 80, 55, 45, '85.00', '0.00', '0.00', '3825.00', 'a', 'Admin', '2022-12-20 17:26:25', NULL, NULL, 1),
(135, 81, 55, 50, '85.00', '0.00', '0.00', '4250.00', 'a', 'Admin', '2022-12-21 09:27:26', NULL, NULL, 1),
(136, 82, 54, 500, '800.00', '0.00', '0.00', '400000.00', 'a', 'Admin', '2022-12-21 09:30:03', NULL, NULL, 1),
(137, 83, 53, 100, '500.00', '0.00', '0.00', '50000.00', 'a', 'Admin', '2022-12-21 12:51:07', NULL, NULL, 1),
(138, 84, 56, 10, '75.00', '0.00', '0.00', '750.00', 'a', 'Admin', '2022-12-24 11:20:14', NULL, NULL, 1),
(139, 85, 40, 100, '2040.00', '0.00', '0.00', '204000.00', 'a', 'Admin', '2022-12-27 13:02:09', NULL, NULL, 1),
(140, 86, 57, 280, '3420.00', '0.00', '0.00', '957600.00', 'a', 'Admin', '2022-12-27 13:11:27', NULL, NULL, 1),
(141, 87, 59, 280, '4000.00', '0.00', '0.00', '1120000.00', 'a', 'Admin', '2022-12-27 13:11:57', NULL, NULL, 1),
(142, 88, 56, 10, '75.00', '0.00', '0.00', '750.00', 'a', 'Admin', '2022-12-27 15:23:36', NULL, NULL, 1),
(143, 89, 61, 1, '15000.00', '0.00', '0.00', '15000.00', 'a', 'Admin', '2022-12-29 18:42:01', NULL, NULL, 1),
(144, 90, 61, 40, '15000.00', '0.00', '0.00', '600000.00', 'a', 'Admin', '2022-12-29 18:42:17', NULL, NULL, 1),
(145, 91, 62, 100, '25000.00', '0.00', '0.00', '2500000.00', 'a', 'Admin', '2022-12-29 18:44:51', NULL, NULL, 1),
(146, 92, 64, 100, '510.00', '0.00', '0.00', '51000.00', 'a', 'Admin', '2022-12-30 11:05:00', NULL, NULL, 1),
(147, 92, 63, 100, '520.00', '0.00', '0.00', '52000.00', 'a', 'Admin', '2022-12-30 11:05:00', NULL, NULL, 1),
(148, 93, 63, 100, '520.00', '0.00', '0.00', '52000.00', 'a', 'Admin', '2023-01-01 16:22:47', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasemaster`
--

CREATE TABLE `tbl_purchasemaster` (
  `PurchaseMaster_SlNo` int(11) NOT NULL,
  `Supplier_SlNo` int(11) NOT NULL,
  `Employee_SlNo` int(11) NOT NULL,
  `PurchaseMaster_InvoiceNo` varchar(50) NOT NULL,
  `PurchaseMaster_OrderDate` date NOT NULL,
  `PurchaseMaster_PurchaseFor` varchar(50) NOT NULL,
  `PurchaseMaster_Description` longtext NOT NULL,
  `PurchaseMaster_TotalAmount` decimal(18,2) NOT NULL,
  `PurchaseMaster_DiscountAmount` decimal(18,2) NOT NULL,
  `PurchaseMaster_Tax` decimal(18,2) NOT NULL,
  `PurchaseMaster_Freight` decimal(18,2) NOT NULL,
  `PurchaseMaster_SubTotalAmount` decimal(18,2) NOT NULL,
  `PurchaseMaster_PaidAmount` decimal(18,2) NOT NULL,
  `PurchaseMaster_DueAmount` decimal(18,2) NOT NULL,
  `previous_due` float DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `PurchaseMaster_BranchID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_purchasemaster`
--

INSERT INTO `tbl_purchasemaster` (`PurchaseMaster_SlNo`, `Supplier_SlNo`, `Employee_SlNo`, `PurchaseMaster_InvoiceNo`, `PurchaseMaster_OrderDate`, `PurchaseMaster_PurchaseFor`, `PurchaseMaster_Description`, `PurchaseMaster_TotalAmount`, `PurchaseMaster_DiscountAmount`, `PurchaseMaster_Tax`, `PurchaseMaster_Freight`, `PurchaseMaster_SubTotalAmount`, `PurchaseMaster_PaidAmount`, `PurchaseMaster_DueAmount`, `previous_due`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `PurchaseMaster_BranchID`) VALUES
(1, 1, 0, '2022000001', '2022-09-21', '1', '', '199920.94', '0.00', '0.00', '0.00', '199920.94', '0.00', '199920.94', 7720300, 'a', 'Admin', '2022-09-21 19:58:59', 'Admin', '2022-11-08 10:55:10', 1),
(2, 2, 0, '2022000002', '2022-09-25', '1', '', '49000.00', '0.00', '0.00', '230.00', '48770.00', '0.00', '49000.00', 0, 'a', 'Admin', '2022-09-25 19:32:07', NULL, NULL, 1),
(3, 3, 0, '2022000003', '2022-09-25', '1', '', '125000.00', '0.00', '0.00', '0.00', '125000.00', '50000.00', '75000.00', 0, 'a', 'Admin', '2022-09-25 19:37:33', NULL, NULL, 1),
(4, 4, 0, '2022000004', '2022-10-11', '1', '', '50000.00', '0.00', '0.00', '0.00', '50000.00', '50000.00', '0.00', 0, 'a', 'Admin', '2022-10-11 13:28:44', NULL, NULL, 1),
(5, 5, 0, '2022000005', '2022-10-11', '1', '', '120000.00', '0.00', '0.00', '0.00', '120000.00', '120000.00', '0.00', 0, 'a', 'Admin', '2022-10-11 13:29:55', NULL, NULL, 1),
(6, 6, 0, '2022000006', '2022-10-12', '1', '', '10000.00', '0.00', '0.00', '0.00', '10000.00', '10000.00', '0.00', 0, 'a', 'Admin', '2022-10-12 14:37:11', NULL, NULL, 1),
(7, 7, 0, '2022000007', '2022-10-13', '1', '', '124000.00', '1000.00', '0.00', '5000.00', '120000.00', '100000.00', '24000.00', 100000, 'a', 'Admin', '2022-10-13 11:25:36', NULL, NULL, 1),
(8, 1, 0, '2022000008', '2022-10-16', '1', '', '40000000.00', '0.00', '0.00', '0.00', '40000000.00', '200000.00', '39800000.00', 7725040, 'a', 'Admin', '2022-10-16 15:07:24', NULL, NULL, 1),
(9, 1, 0, '2022000009', '2022-10-18', '1', '', '2152000.00', '0.00', '0.00', '0.00', '2152000.00', '0.00', '2152000.00', 47525000, 'a', 'Admin', '2022-10-18 12:25:20', NULL, NULL, 1),
(10, 9, 0, '2022000010', '2022-10-18', '1', 'Testing', '2500000.00', '0.00', '0.00', '0.00', '2500000.00', '100000.00', '2400000.00', 200000, 'a', 'Admin', '2022-10-18 16:03:01', NULL, NULL, 1),
(11, 1, 0, '2022000011', '2022-10-25', '1', 'ddf', '1160996.00', '0.00', '0.00', '0.00', '1160996.00', '50000.00', '1110996.00', 49677000, 'a', 'Admin', '2022-10-25 12:30:57', NULL, NULL, 1),
(12, 7, 0, '2022000012', '2022-10-26', '1', '', '125000.00', '0.00', '0.00', '0.00', '125000.00', '120000.00', '5000.00', 90000, 'a', 'Admin', '2022-10-26 18:09:54', NULL, NULL, 1),
(13, 9, 0, '2022000013', '2022-10-26', '1', '', '2000000.00', '0.00', '0.00', '0.00', '2000000.00', '0.00', '2000000.00', 2000000, 'a', 'Admin', '2022-10-26 20:41:13', NULL, NULL, 1),
(14, 10, 0, '2022000014', '2022-10-30', '1', '', '2350000.00', '0.00', '0.00', '0.00', '2350000.00', '2350000.00', '0.00', 0, 'a', 'Admin', '2022-10-30 10:30:27', NULL, NULL, 1),
(15, 11, 0, '2022000015', '2022-10-31', '1', '', '109436.65', '0.00', '0.00', '0.00', '109436.65', '109436.65', '0.00', 0, 'a', 'Admin', '2022-10-31 15:53:13', NULL, NULL, 1),
(16, 9, 0, '2022000016', '2022-11-01', '1', '', '1300.00', '0.00', '0.00', '0.00', '1300.00', '0.00', '1300.00', 4000000, 'a', 'Admin', '2022-11-01 18:13:07', NULL, NULL, 1),
(17, 9, 0, '2022000017', '2022-11-05', '1', '', '1793.28', '0.00', '0.00', '0.00', '1793.28', '0.00', '1793.28', 4000000, 'a', 'Admin', '2022-11-05 16:53:41', NULL, NULL, 1),
(18, 9, 0, '2022000018', '2022-11-05', '1', '', '298.88', '0.00', '0.00', '0.00', '298.88', '0.00', '298.88', 4001790, 'a', 'Admin', '2022-11-05 16:59:02', NULL, NULL, 1),
(19, 12, 0, '2022000019', '2022-11-07', '1', '', '230000.00', '0.00', '0.00', '0.00', '230000.00', '230000.00', '0.00', 0, 'a', 'Admin', '2022-11-07 18:55:36', 'Admin', '2022-11-07 19:10:59', 1),
(20, 13, 0, '2022000020', '2022-11-07', '1', '', '440000.00', '0.00', '0.00', '0.00', '440000.00', '440000.00', '0.00', 0, 'a', 'Admin', '2022-11-07 19:15:56', 'Admin', '2022-11-07 19:17:06', 1),
(21, 9, 0, '2022000021', '2022-11-07', '1', '', '210000.00', '0.00', '0.00', '0.00', '210000.00', '0.00', '210000.00', 4002090, 'a', 'Admin', '2022-11-07 20:59:58', NULL, NULL, 1),
(22, 14, 0, '2022000022', '2022-11-09', '6', '', '565000.00', '0.00', '0.00', '0.00', '565000.00', '565000.00', '0.00', 0, 'a', 'Admin', '2022-11-09 10:22:33', NULL, NULL, 6),
(23, 15, 0, '2022000023', '2022-11-09', '1', '', '23000.00', '0.00', '0.00', '0.00', '23000.00', '23000.00', '0.00', 0, 'a', 'Admin', '2022-11-09 13:24:15', NULL, NULL, 1),
(24, 9, 0, '2022000024', '2022-11-13', '1', '', '231000.00', '0.00', '0.00', '0.00', '231000.00', '0.00', '231000.00', 4212090, 'a', 'Admin', '2022-11-13 13:43:30', NULL, NULL, 1),
(25, 16, 0, '2022000025', '2022-11-13', '1', '', '2600.00', '0.00', '0.00', '0.00', '2600.00', '0.00', '2600.00', 0, 'a', 'Admin', '2022-11-13 15:41:38', NULL, NULL, 1),
(26, 9, 0, '2022000026', '2022-11-15', '1', '', '4600000.00', '0.00', '0.00', '0.00', '4600000.00', '0.00', '4600000.00', 4443090, 'a', 'Admin', '2022-11-15 13:46:15', NULL, NULL, 1),
(27, 7, 0, '2022000027', '2022-11-15', '1', '', '2123315.50', '0.00', '0.00', '0.00', '2123315.50', '500000.00', '1623315.50', 90000, 'a', 'Admin', '2022-11-15 13:48:15', NULL, NULL, 1),
(28, 1, 0, '2022000028', '2022-11-15', '1', '', '2203100.00', '0.00', '0.00', '0.00', '2203100.00', '503100.00', '1700000.00', 50771200, 'a', 'Admin', '2022-11-15 13:49:57', NULL, NULL, 1),
(29, 16, 0, '2022000029', '2022-11-16', '1', '', '1000.00', '0.00', '0.00', '0.00', '1000.00', '0.00', '1000.00', 2600, 'a', 'Admin', '2022-11-16 12:35:31', NULL, NULL, 1),
(30, 17, 0, '2022000030', '2022-11-19', '1', '', '7700.00', '0.00', '0.00', '0.00', '7700.00', '6000.00', '1700.00', 0, 'a', 'Admin', '2022-11-19 14:58:49', NULL, NULL, 1),
(31, 18, 0, '2022000031', '2022-11-19', '1', '', '17000.00', '0.00', '0.00', '0.00', '17000.00', '17000.00', '0.00', 0, 'a', 'Admin', '2022-11-19 15:33:42', NULL, NULL, 1),
(32, 19, 0, '2022000032', '2022-11-16', '1', '', '38500.00', '0.00', '0.00', '0.00', '38500.00', '38500.00', '0.00', 0, 'a', 'Admin', '2022-11-19 16:10:47', NULL, NULL, 1),
(33, 20, 0, '2022000033', '2022-11-16', '1', '', '87500.00', '0.00', '0.00', '0.00', '87500.00', '87500.00', '0.00', 0, 'a', 'Admin', '2022-11-19 16:16:41', NULL, NULL, 1),
(34, 17, 0, '2022000034', '2022-11-19', '1', '', '8500.00', '0.00', '0.00', '0.00', '8500.00', '0.00', '8500.00', 700, 'a', 'Admin', '2022-11-19 17:03:25', NULL, NULL, 1),
(35, 17, 0, '2022000035', '2022-11-19', '1', '', '25500.00', '0.00', '0.00', '0.00', '25500.00', '0.00', '25500.00', 9200, 'a', 'Admin', '2022-11-19 18:38:59', NULL, NULL, 1),
(36, 16, 0, '2022000036', '2022-11-20', '1', '', '2400.00', '0.00', '0.00', '0.00', '2400.00', '0.00', '2400.00', 3600, 'a', 'Admin', '2022-11-20 10:42:28', NULL, NULL, 1),
(37, 23, 0, '2022000037', '2022-11-20', '1', '', '42127.14', '0.00', '0.00', '0.00', '42127.14', '42127.14', '0.00', 0, 'a', 'Admin', '2022-11-20 10:43:39', NULL, NULL, 1),
(38, 21, 0, '2022000038', '2022-11-20', '7', '', '677500.00', '0.00', '0.00', '0.00', '677500.00', '77500.00', '600000.00', 0, 'a', 'Admin', '2022-11-20 10:52:00', NULL, NULL, 7),
(39, 17, 0, '2022000039', '2022-11-21', '1', '', '5000000.00', '0.00', '0.00', '0.00', '5000000.00', '3000000.00', '2000000.00', 34700, 'a', 'Admin', '2022-11-21 17:25:02', NULL, NULL, 1),
(40, 17, 0, '2022000040', '2022-11-21', '1', '', '50000000.00', '0.00', '0.00', '0.00', '50000000.00', '30000000.00', '20000000.00', 2034700, 'a', 'Admin', '2022-11-21 17:42:19', NULL, NULL, 1),
(41, 16, 0, '2022000041', '2022-11-23', '1', '', '250000.00', '0.00', '0.00', '0.00', '250000.00', '0.00', '250000.00', 6000, 'a', 'Admin', '2022-11-23 18:27:37', NULL, NULL, 1),
(42, 24, 0, '2022000042', '2022-11-26', '1', '', '0.00', '0.00', '0.00', '0.00', '286944.00', '0.00', '0.00', 0, 'a', 'Admin', '2022-11-26 17:16:29', NULL, NULL, 1),
(43, 24, 0, '2022000043', '2022-11-26', '1', '', '250000.00', '0.00', '0.00', '0.00', '250000.00', '0.00', '250000.00', 0, 'a', 'Admin', '2022-11-26 20:36:48', NULL, NULL, 1),
(44, 24, 0, '2022000044', '2022-11-27', '1', '', '76860.00', '0.00', '0.00', '0.00', '76860.00', '0.00', '76860.00', 250000, 'a', 'Admin', '2022-11-27 12:57:48', NULL, NULL, 1),
(45, 25, 0, '2022000045', '2022-11-27', '1', '', '117000.00', '0.00', '0.00', '0.00', '117000.00', '50000.00', '67000.00', 0, 'a', 'Admin', '2022-11-27 13:01:21', NULL, NULL, 1),
(46, 25, 0, '2022000046', '2022-11-27', '1', '', '42000.00', '0.00', '0.00', '0.00', '42000.00', '0.00', '42000.00', 67000, 'a', 'Admin', '2022-11-27 13:02:13', NULL, NULL, 1),
(47, 24, 0, '2022000047', '2022-11-28', '1', '', '138060.00', '0.00', '0.00', '0.00', '138060.00', '0.00', '138060.00', 326860, 'a', 'Admin', '2022-11-28 18:45:16', NULL, NULL, 1),
(48, 24, 0, '2022000048', '2022-11-30', '1', '', '25620.00', '0.00', '0.00', '0.00', '25620.00', '0.00', '25620.00', 464920, 'a', 'Admin', '2022-11-30 16:51:40', NULL, NULL, 1),
(49, 26, 0, '2022000049', '2022-12-01', '1', '', '1250.00', '0.00', '0.00', '0.00', '1250.00', '1250.00', '0.00', 0, 'a', 'Admin', '2022-12-01 12:28:11', NULL, NULL, 1),
(50, 27, 0, '2022000050', '2022-12-01', '1', '', '80120.00', '0.00', '0.00', '0.00', '80120.00', '40000.00', '40120.00', 0, 'a', 'Admin', '2022-12-01 12:55:31', NULL, NULL, 1),
(51, 27, 0, '2022000051', '2022-12-04', '1', '', '5000.00', '0.00', '0.00', '0.00', '5000.00', '0.00', '5000.00', 10120, 'a', 'Admin', '2022-12-05 10:25:03', 'Admin', '2022-12-05 10:25:27', 1),
(52, 27, 0, '2022000052', '2022-12-05', '1', '', '4900.00', '0.00', '0.00', '0.00', '4900.00', '0.00', '4900.00', 15120, 'a', 'Admin', '2022-12-05 10:26:31', NULL, NULL, 1),
(53, 27, 0, '2022000053', '2022-12-05', '1', '', '5200.00', '0.00', '0.00', '0.00', '5200.00', '0.00', '5200.00', 20020, 'a', 'Admin', '2022-12-05 10:28:11', NULL, NULL, 1),
(54, 27, 0, '2022000054', '2022-12-06', '1', '', '12550.00', '0.00', '0.00', '0.00', '12550.00', '0.00', '12550.00', 25220, 'a', 'Admin', '2022-12-06 11:06:49', NULL, NULL, 1),
(55, 27, 0, '2022000055', '2022-12-06', '1', '', '50150.00', '0.00', '0.00', '0.00', '50150.00', '0.00', '50150.00', 37770, 'a', 'Admin', '2022-12-06 11:29:10', NULL, NULL, 1),
(56, 17, 0, '2022000056', '2022-12-06', '1', '', '50000.00', '0.00', '0.00', '0.00', '50000.00', '3000.00', '47000.00', 22034700, 'a', 'Admin', '2022-12-06 15:00:55', NULL, NULL, 1),
(57, 27, 0, '2022000057', '2022-12-06', '1', '', '1200.66', '0.00', '0.00', '0.00', '1200.66', '0.00', '1200.66', 87920, 'a', 'Admin', '2022-12-06 15:54:35', NULL, NULL, 1),
(58, 27, 0, '2022000058', '2022-12-06', '1', '', '235000.00', '0.00', '0.00', '0.00', '235000.00', '100000.00', '135000.00', 89120.7, 'a', 'Admin', '2022-12-06 19:47:03', NULL, NULL, 1),
(59, 26, 0, '2022000059', '2022-12-08', '1', '', '25480.00', '0.00', '0.00', '0.00', '25480.00', '20000.00', '5480.00', 0, 'a', 'Admin', '2022-12-08 16:13:39', NULL, NULL, 1),
(60, 27, 0, '2022000060', '2022-12-08', '1', '', '7224.00', '0.00', '0.00', '0.00', '7224.00', '0.00', '7224.00', 224121, 'a', 'Admin', '2022-12-08 16:25:42', NULL, NULL, 1),
(61, 28, 0, '2022000061', '2022-12-10', '1', '', '240000.00', '0.00', '0.00', '0.00', '240000.00', '240000.00', '0.00', 0, 'a', 'Admin', '2022-12-10 12:33:02', NULL, NULL, 1),
(62, 27, 0, '2022000062', '2022-12-10', '1', '', '5033.00', '0.00', '0.00', '0.00', '5033.00', '0.00', '5033.00', 231345, 'a', 'Admin', '2022-12-10 13:33:36', NULL, NULL, 1),
(63, 27, 0, '2022000063', '2022-12-11', '1', '', '60000.00', '0.00', '0.00', '0.00', '60000.00', '0.00', '60000.00', 186378, 'a', 'Admin', '2022-12-11 12:27:05', NULL, NULL, 1),
(64, 1, 0, '2022000064', '2022-12-11', '1', '', '13770.00', '0.00', '0.00', '0.00', '13770.00', '0.00', '13770.00', 52471200, 'a', 'Admin', '2022-12-11 13:11:24', NULL, NULL, 1),
(65, 29, 0, '2022000065', '2022-12-14', '1', '', '200000.00', '0.00', '0.00', '0.00', '200000.00', '200000.00', '0.00', 0, 'a', 'Admin', '2022-12-14 12:27:47', NULL, NULL, 1),
(66, 30, 0, '2022000066', '2022-12-15', '9', '', '60000.00', '0.00', '0.00', '0.00', '60000.00', '60000.00', '0.00', 0, 'a', 'Admin', '2022-12-15 15:53:11', NULL, NULL, 9),
(67, 25, 0, '2022000067', '2022-12-15', '1', '', '1930.00', '0.00', '0.00', '0.00', '1930.00', '0.00', '1930.00', 2000, 'a', 'Admin', '2022-12-15 16:56:53', NULL, NULL, 1),
(68, 31, 0, '2022000068', '2022-12-15', '9', '', '4000.00', '0.00', '0.00', '0.00', '4000.00', '4000.00', '0.00', 0, 'a', 'Zahir Hossain', '2022-12-15 18:25:27', NULL, NULL, 9),
(69, 24, 0, '2022000069', '2022-12-17', '1', '', '16000.00', '0.00', '0.00', '0.00', '16000.00', '0.00', '16000.00', 488540, 'a', 'Admin', '2022-12-17 14:58:36', NULL, NULL, 1),
(70, 25, 0, '2022000070', '2022-12-19', '1', '', '28500.00', '0.00', '0.00', '0.00', '28500.00', '20000.00', '8500.00', 1930, 'a', 'Admin', '2022-12-19 11:44:12', NULL, NULL, 1),
(71, 32, 0, '2022000071', '2022-12-19', '1', '', '1997.00', '3.00', '0.00', '0.00', '2000.00', '1997.00', '0.00', 0, 'a', 'Admin', '2022-12-19 14:26:54', NULL, NULL, 1),
(72, 33, 0, '2022000072', '2022-12-19', '1', '', '4995.00', '5.00', '0.00', '0.00', '5000.00', '4995.00', '0.00', 0, 'a', 'Admin', '2022-12-19 14:28:47', NULL, NULL, 1),
(73, 26, 0, '2022000073', '2022-12-19', '1', '', '0.00', '0.00', '0.00', '0.00', '5000.00', '0.00', '0.00', 1480, 'a', 'Admin', '2022-12-19 14:30:10', NULL, NULL, 1),
(74, 27, 0, '2022000074', '2022-12-19', '1', '', '8101.67', '500.00', '85.17', '0.00', '8516.50', '5000.00', '3101.67', 246378, 'a', 'Admin', '2022-12-19 14:36:39', NULL, NULL, 1),
(75, 27, 0, '2022000075', '2022-12-19', '1', '', '10000.00', '0.00', '0.00', '0.00', '10000.00', '0.00', '10000.00', 249479, 'a', 'Admin', '2022-12-19 17:04:33', NULL, NULL, 1),
(76, 26, 0, '2022000076', '2022-12-19', '1', '', '10000.00', '0.00', '0.00', '0.00', '10000.00', '0.00', '10000.00', 1480, 'a', 'Admin', '2022-12-19 17:05:12', NULL, NULL, 1),
(77, 35, 0, '2022000077', '2022-12-20', '1', '', '142500.00', '0.00', '0.00', '0.00', '142500.00', '0.00', '142500.00', 250000, 'a', 'Admin', '2022-12-20 16:59:07', NULL, NULL, 1),
(78, 34, 0, '2022000078', '2022-12-20', '1', '', '130000.00', '0.00', '0.00', '0.00', '130000.00', '0.00', '130000.00', 300000, 'a', 'Admin', '2022-12-20 17:00:19', NULL, NULL, 1),
(79, 35, 0, '2022000079', '2022-12-20', '1', '', '4250.00', '0.00', '0.00', '0.00', '4250.00', '0.00', '4250.00', 392500, 'a', 'Admin', '2022-12-20 17:02:56', NULL, NULL, 1),
(80, 35, 0, '2022000080', '2022-12-20', '1', '', '7575.00', '0.00', '0.00', '0.00', '7575.00', '0.00', '7575.00', 146750, 'a', 'Admin', '2022-12-20 17:26:25', NULL, NULL, 1),
(81, 35, 0, '2022000081', '2022-12-21', '1', '', '4250.00', '0.00', '0.00', '0.00', '4250.00', '0.00', '4250.00', 4325, 'a', 'Admin', '2022-12-21 09:27:26', NULL, NULL, 1),
(82, 35, 0, '2022000082', '2022-12-21', '1', '', '400000.00', '0.00', '0.00', '0.00', '400000.00', '0.00', '400000.00', 8150, 'a', 'Admin', '2022-12-21 09:30:03', NULL, NULL, 1),
(83, 36, 0, '2022000083', '2022-12-21', '1', '', '50000.00', '0.00', '0.00', '0.00', '50000.00', '50000.00', '0.00', 0, 'a', 'Admin', '2022-12-21 12:51:07', NULL, NULL, 1),
(84, 35, 0, '2022000084', '2022-12-24', '1', '', '750.00', '0.00', '0.00', '0.00', '750.00', '0.00', '750.00', 100000, 'a', 'Admin', '2022-12-24 11:20:14', NULL, NULL, 1),
(85, 25, 0, '2022000085', '2022-12-27', '1', '', '204000.00', '0.00', '0.00', '0.00', '204000.00', '0.00', '204000.00', 9430, 'a', 'Admin', '2022-12-27 13:02:09', NULL, NULL, 1),
(86, 25, 0, '2022000086', '2022-10-11', '1', '', '957600.00', '0.00', '0.00', '0.00', '957600.00', '0.00', '957600.00', -286570, 'a', 'Admin', '2022-12-27 13:11:27', NULL, NULL, 1),
(87, 37, 0, '2022000087', '2022-12-05', '1', '', '1120000.00', '0.00', '0.00', '0.00', '1120000.00', '1120000.00', '0.00', 0, 'a', 'Admin', '2022-12-27 13:11:57', NULL, NULL, 1),
(88, 34, 0, '2022000088', '2022-12-27', '1', '', '750.00', '0.00', '0.00', '0.00', '750.00', '0.00', '750.00', 30000, 'a', 'Admin', '2022-12-27 15:23:36', NULL, NULL, 1),
(89, 40, 0, '2022000089', '2022-12-29', '1', '', '15000.00', '0.00', '0.00', '0.00', '15000.00', '0.00', '15000.00', 0, 'a', 'Admin', '2022-12-29 18:42:01', NULL, NULL, 1),
(90, 40, 0, '2022000090', '2022-12-29', '1', '', '600000.00', '0.00', '0.00', '0.00', '600000.00', '0.00', '600000.00', 15000, 'a', 'Admin', '2022-12-29 18:42:17', NULL, NULL, 1),
(91, 38, 0, '2022000091', '2022-12-29', '1', '', '2500000.00', '0.00', '0.00', '0.00', '2500000.00', '0.00', '2500000.00', 0, 'a', 'Admin', '2022-12-29 18:44:51', NULL, NULL, 1),
(92, 41, 0, '2022000092', '2022-12-30', '1', '', '103000.00', '0.00', '0.00', '0.00', '103000.00', '103000.00', '0.00', 0, 'a', 'Admin', '2022-12-30 11:05:00', NULL, NULL, 1),
(93, 43, 0, '2023000001', '2023-01-01', '1', '', '52500.00', '0.00', '0.00', '500.00', '52000.00', '0.00', '52500.00', 0, 'a', 'Admin', '2023-01-01 16:22:47', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasereturn`
--

CREATE TABLE `tbl_purchasereturn` (
  `PurchaseReturn_SlNo` int(11) NOT NULL,
  `PurchaseMaster_InvoiceNo` varchar(50) NOT NULL,
  `Supplier_IDdNo` int(11) NOT NULL,
  `PurchaseReturn_ReturnDate` date NOT NULL,
  `PurchaseReturn_ReturnAmount` decimal(18,2) NOT NULL,
  `PurchaseReturn_Description` varchar(300) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `PurchaseReturn_brunchID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_purchasereturn`
--

INSERT INTO `tbl_purchasereturn` (`PurchaseReturn_SlNo`, `PurchaseMaster_InvoiceNo`, `Supplier_IDdNo`, `PurchaseReturn_ReturnDate`, `PurchaseReturn_ReturnAmount`, `PurchaseReturn_Description`, `Status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `PurchaseReturn_brunchID`) VALUES
(1, '2022000007', 7, '2022-10-13', '24000.00', '', 'a', 'Admin', '2022-10-13 11:41:43', NULL, NULL, 1),
(2, '2022000081', 35, '2022-12-21', '425.00', '', 'a', 'Admin', '2022-12-21 09:28:06', NULL, NULL, 1),
(3, '2022000082', 35, '2022-12-21', '16000.00', '', 'a', 'Admin', '2022-12-21 09:33:36', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasereturndetails`
--

CREATE TABLE `tbl_purchasereturndetails` (
  `PurchaseReturnDetails_SlNo` int(11) NOT NULL,
  `PurchaseReturn_SlNo` int(11) NOT NULL,
  `PurchaseReturnDetailsProduct_SlNo` int(11) NOT NULL,
  `PurchaseReturnDetails_ReturnQuantity` float NOT NULL,
  `PurchaseReturnDetails_ReturnAmount` decimal(18,2) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `PurchaseReturnDetails_brachid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_purchasereturndetails`
--

INSERT INTO `tbl_purchasereturndetails` (`PurchaseReturnDetails_SlNo`, `PurchaseReturn_SlNo`, `PurchaseReturnDetailsProduct_SlNo`, `PurchaseReturnDetails_ReturnQuantity`, `PurchaseReturnDetails_ReturnAmount`, `Status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `PurchaseReturnDetails_brachid`) VALUES
(1, 1, 15, 20, '24000.00', 'a', 'Admin', '2022-10-13 11:41:43', NULL, NULL, 1),
(2, 2, 55, 5, '425.00', 'a', 'Admin', '2022-12-21 09:28:06', NULL, NULL, 1),
(3, 3, 54, 20, '16000.00', 'a', 'Admin', '2022-12-21 09:33:36', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotaion_customer`
--

CREATE TABLE `tbl_quotaion_customer` (
  `quotation_customer_id` int(11) NOT NULL,
  `customer_name` char(50) NOT NULL,
  `contact_number` varchar(35) NOT NULL,
  `customer_address` text NOT NULL,
  `quation_customer_branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation_details`
--

CREATE TABLE `tbl_quotation_details` (
  `SaleDetails_SlNo` int(11) NOT NULL,
  `SaleMaster_IDNo` int(11) NOT NULL,
  `Product_IDNo` int(11) NOT NULL,
  `SaleDetails_TotalQuantity` float NOT NULL,
  `SaleDetails_Rate` decimal(18,2) NOT NULL,
  `SaleDetails_Discount` decimal(18,2) NOT NULL,
  `SaleDetails_Tax` decimal(18,2) NOT NULL,
  `SaleDetails_Freight` decimal(18,2) NOT NULL,
  `SaleDetails_TotalAmount` decimal(18,2) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `SaleDetails_BranchId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_quotation_details`
--

INSERT INTO `tbl_quotation_details` (`SaleDetails_SlNo`, `SaleMaster_IDNo`, `Product_IDNo`, `SaleDetails_TotalQuantity`, `SaleDetails_Rate`, `SaleDetails_Discount`, `SaleDetails_Tax`, `SaleDetails_Freight`, `SaleDetails_TotalAmount`, `Status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `SaleDetails_BranchId`) VALUES
(1, 1, 13, 2, '27500.00', '0.00', '0.00', '0.00', '55000.00', 'a', 'Admin', '2022-10-18 15:58:16', NULL, NULL, 1),
(2, 1, 18, 5, '2100.00', '0.00', '0.00', '0.00', '10500.00', 'a', 'Admin', '2022-10-18 15:58:16', NULL, NULL, 1),
(3, 1, 20, 5, '100.00', '0.00', '0.00', '0.00', '500.00', 'a', 'Admin', '2022-10-18 15:58:16', NULL, NULL, 1),
(4, 2, 24, 1, '21000.00', '0.00', '0.00', '0.00', '21000.00', 'a', 'Admin', '2022-11-09 13:17:28', NULL, NULL, 1),
(8, 3, 23, 5, '200.00', '0.00', '0.00', '0.00', '1000.00', 'a', 'Admin', '2022-11-09 13:46:06', NULL, NULL, 1),
(9, 3, 22, 5, '122.00', '0.00', '0.00', '0.00', '610.00', 'a', 'Admin', '2022-11-09 13:46:06', NULL, NULL, 1),
(10, 3, 13, 5, '27500.00', '0.00', '0.00', '0.00', '137500.00', 'a', 'Admin', '2022-11-09 13:46:06', NULL, NULL, 1),
(11, 4, 25, 2, '21000.00', '0.00', '0.00', '0.00', '42000.00', 'a', 'Admin', '2022-11-12 14:10:53', NULL, NULL, 1),
(12, 5, 28, 10, '120.00', '0.00', '0.00', '0.00', '1200.00', 'a', 'Admin', '2022-11-16 12:45:53', NULL, NULL, 1),
(13, 6, 34, 2, '230.00', '0.00', '0.00', '0.00', '460.00', 'a', 'Admin', '2022-12-08 14:50:54', NULL, NULL, 1),
(14, 6, 40, 1, '2100.00', '0.00', '0.00', '0.00', '2100.00', 'a', 'Admin', '2022-12-08 14:50:54', NULL, NULL, 1),
(15, 7, 44, 10, '9000.00', '0.00', '0.00', '0.00', '90000.00', 'a', 'Admin', '2022-12-10 17:57:36', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation_master`
--

CREATE TABLE `tbl_quotation_master` (
  `SaleMaster_SlNo` int(11) NOT NULL,
  `SaleMaster_InvoiceNo` varchar(50) NOT NULL,
  `SaleMaster_customer_name` varchar(500) NOT NULL,
  `SaleMaster_customer_mobile` varchar(50) NOT NULL,
  `SaleMaster_customer_address` varchar(1000) NOT NULL,
  `SaleMaster_SaleDate` date NOT NULL,
  `SaleMaster_Description` longtext DEFAULT NULL,
  `SaleMaster_TotalSaleAmount` decimal(18,2) NOT NULL,
  `SaleMaster_TotalDiscountAmount` decimal(18,2) NOT NULL,
  `SaleMaster_TaxAmount` decimal(18,2) NOT NULL,
  `SaleMaster_Freight` decimal(18,2) NOT NULL,
  `SaleMaster_SubTotalAmount` decimal(18,2) NOT NULL,
  `Status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `SaleMaster_branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_quotation_master`
--

INSERT INTO `tbl_quotation_master` (`SaleMaster_SlNo`, `SaleMaster_InvoiceNo`, `SaleMaster_customer_name`, `SaleMaster_customer_mobile`, `SaleMaster_customer_address`, `SaleMaster_SaleDate`, `SaleMaster_Description`, `SaleMaster_TotalSaleAmount`, `SaleMaster_TotalDiscountAmount`, `SaleMaster_TaxAmount`, `SaleMaster_Freight`, `SaleMaster_SubTotalAmount`, `Status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `SaleMaster_branchid`) VALUES
(1, 'Q-202200001', 'Mehedi ', '01743124562', 'Mirpur 10 ', '2022-10-18', NULL, '66000.00', '0.00', '0.00', '0.00', '66000.00', 'a', 'Admin', '2022-10-18 15:58:16', NULL, NULL, 1),
(2, 'Q-202200002', '', '', '', '2022-11-09', NULL, '21000.00', '0.00', '0.00', '0.00', '21000.00', 'a', 'Admin', '2022-11-09 13:17:28', NULL, NULL, 1),
(3, 'Q-202200003', '', '', '', '2022-11-09', NULL, '147543.25', '2000.00', '10433.25', '0.00', '139110.00', 'a', 'Admin', '2022-11-09 13:46:06', NULL, NULL, 1),
(4, 'Q-202200004', '', '', '', '2022-11-12', NULL, '42000.00', '0.00', '0.00', '0.00', '42000.00', 'a', 'Admin', '2022-11-12 14:10:53', NULL, NULL, 1),
(5, 'Q-202200005', 'Hasan Uddin', '0158975206', 'Karim Para', '2022-11-16', NULL, '1200.00', '0.00', '0.00', '0.00', '1200.00', 'a', 'Admin', '2022-11-16 12:45:53', NULL, NULL, 1),
(6, 'Q-202200006', '', '', '', '2022-12-08', NULL, '2560.00', '0.00', '0.00', '0.00', '2560.00', 'a', 'Admin', '2022-12-08 14:50:54', NULL, NULL, 1),
(7, 'Q-202200007', 'zakirul', '0134545648', 'gajni', '2022-12-10', NULL, '76500.00', '13500.00', '0.00', '0.00', '90000.00', 'a', 'Admin', '2022-12-10 17:57:36', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saledetails`
--

CREATE TABLE `tbl_saledetails` (
  `SaleDetails_SlNo` int(11) NOT NULL,
  `SaleMaster_IDNo` int(11) NOT NULL,
  `Product_IDNo` int(11) NOT NULL,
  `SaleDetails_TotalQuantity` float NOT NULL,
  `Purchase_Rate` decimal(18,2) DEFAULT NULL,
  `SaleDetails_Rate` decimal(18,2) NOT NULL,
  `SaleDetails_Discount` decimal(18,2) NOT NULL,
  `Discount_amount` decimal(18,2) DEFAULT NULL,
  `SaleDetails_Tax` decimal(18,2) NOT NULL,
  `SaleDetails_TotalAmount` decimal(18,2) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `SaleDetails_BranchId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_saledetails`
--

INSERT INTO `tbl_saledetails` (`SaleDetails_SlNo`, `SaleMaster_IDNo`, `Product_IDNo`, `SaleDetails_TotalQuantity`, `Purchase_Rate`, `SaleDetails_Rate`, `SaleDetails_Discount`, `Discount_amount`, `SaleDetails_Tax`, `SaleDetails_TotalAmount`, `Status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `SaleDetails_BranchId`) VALUES
(1, 1, 6, 1, '5532.00', '6300.00', '0.00', NULL, '0.00', '6300.00', 'a', 'Admin', '2022-09-24 16:17:47', NULL, NULL, 1),
(2, 2, 4, 2, '11000.00', '13175.00', '0.00', NULL, '0.00', '26350.00', 'a', 'Admin', '2022-09-25 12:32:29', NULL, NULL, 1),
(3, 2, 8, 1, '14000.00', '16000.00', '0.00', NULL, '0.00', '16000.00', 'a', 'Admin', '2022-09-25 12:32:29', NULL, NULL, 1),
(4, 3, 4, 2, '11000.00', '13175.00', '0.00', NULL, '0.00', '26350.00', 'a', 'Admin', '2022-09-25 12:36:46', NULL, NULL, 1),
(5, 3, 8, 1, '14000.00', '16000.00', '0.00', NULL, '0.00', '16000.00', 'a', 'Admin', '2022-09-25 12:36:46', NULL, NULL, 1),
(6, 4, 1, 2, '5604.98', '6300.00', '0.00', NULL, '0.00', '12600.00', 'a', 'Admin', '2022-09-25 13:19:20', NULL, NULL, 1),
(7, 4, 3, 2, '12500.00', '16000.00', '0.00', NULL, '0.00', '32000.00', 'a', 'Admin', '2022-09-25 13:19:20', NULL, NULL, 1),
(8, 5, 3, 1, '12500.00', '16000.00', '0.00', NULL, '0.00', '16000.00', 'a', 'Admin', '2022-09-25 13:20:26', NULL, NULL, 1),
(9, 6, 1, 1, '5604.98', '6300.00', '0.00', NULL, '0.00', '6300.00', 'a', 'Admin', '2022-09-25 19:31:18', NULL, NULL, 1),
(10, 7, 13, 1, '12500.00', '27500.00', '0.00', NULL, '0.00', '27500.00', 'a', 'Admin', '2022-09-25 19:43:03', NULL, NULL, 1),
(11, 8, 13, 5, '12500.00', '27500.00', '0.00', NULL, '0.00', '137500.00', 'a', 'Admin', '2022-09-26 16:46:45', NULL, NULL, 1),
(12, 9, 7, 1, '9387.33', '14000.00', '0.00', NULL, '0.00', '14000.00', 'a', 'Admin', '2022-09-26 16:48:45', NULL, NULL, 1),
(13, 10, 13, 1, '12500.00', '13000.00', '0.00', NULL, '0.00', '13000.00', 'a', 'Admin', '2022-09-27 14:47:38', NULL, NULL, 1),
(14, 11, 13, 1, '12500.00', '27500.00', '0.00', NULL, '0.00', '27500.00', 'a', 'Admin', '2022-09-27 15:46:51', NULL, NULL, 1),
(15, 12, 13, 2, '12500.00', '27500.00', '0.00', NULL, '0.00', '55000.00', 'a', 'Admin', '2022-09-28 17:15:58', NULL, NULL, 1),
(16, 12, 12, 1, '4877.00', '5364.70', '0.00', NULL, '0.00', '5364.70', 'a', 'Admin', '2022-09-28 17:15:58', NULL, NULL, 1),
(17, 13, 14, 5, '5666.67', '4300.00', '0.00', NULL, '0.00', '21500.00', 'a', 'Admin', '2022-10-11 14:42:16', NULL, NULL, 1),
(18, 14, 15, 10, '1200.00', '2370.00', '0.00', NULL, '0.00', '23700.00', 'a', 'Admin', '2022-10-13 11:26:50', NULL, NULL, 1),
(19, 15, 15, 5, '1200.00', '2370.00', '0.00', NULL, '0.00', '11850.00', 'a', 'Admin', '2022-10-13 11:29:52', NULL, NULL, 1),
(20, 16, 2, 1, '5600.00', '6300.00', '0.00', NULL, '0.00', '6300.00', 'a', 'Admin', '2022-10-15 23:01:16', NULL, NULL, 1),
(21, 17, 15, 5, '1200.00', '2370.00', '0.00', NULL, '0.00', '11850.00', 'a', 'Admin', '2022-10-16 10:06:08', NULL, NULL, 1),
(22, 18, 18, 100, '2000.00', '2100.00', '0.00', NULL, '0.00', '210000.00', 'a', 'Admin', '2022-10-16 15:10:53', NULL, NULL, 1),
(23, 18, 19, 200, '2000.00', '2150.00', '0.00', NULL, '0.00', '430000.00', 'a', 'Admin', '2022-10-16 15:10:53', NULL, NULL, 1),
(24, 19, 19, 2, '2000.00', '2100.00', '0.00', NULL, '0.00', '4200.00', 'a', 'Admin', '2022-10-17 15:15:22', NULL, NULL, 1),
(25, 20, 18, 5, '2000.00', '2100.00', '0.00', NULL, '0.00', '10500.00', 'a', 'Admin', '2022-10-18 14:46:04', NULL, NULL, 1),
(26, 20, 19, 5, '2000.00', '2100.00', '0.00', NULL, '0.00', '10500.00', 'a', 'Admin', '2022-10-18 14:46:04', NULL, NULL, 1),
(27, 21, 13, 3, '12500.00', '27500.00', '0.00', NULL, '0.00', '82500.00', 'a', 'Admin', '2022-10-18 16:05:19', NULL, NULL, 1),
(28, 22, 19, 2, '2000.00', '2100.00', '0.00', NULL, '0.00', '4200.00', 'a', 'Admin', '2022-10-19 11:36:26', NULL, NULL, 1),
(29, 22, 13, 5, '12500.00', '27500.00', '0.00', NULL, '0.00', '137500.00', 'a', 'Admin', '2022-10-19 11:36:26', NULL, NULL, 1),
(30, 23, 7, 1, '9387.33', '14000.00', '0.00', NULL, '0.00', '14000.00', 'a', 'Admin', '2022-10-19 16:33:26', NULL, NULL, 1),
(31, 23, 11, 22, '4304.00', '4734.40', '0.00', NULL, '0.00', '104156.80', 'a', 'Admin', '2022-10-19 16:33:26', NULL, NULL, 1),
(32, 24, 19, 1, '2000.00', '2100.00', '0.00', NULL, '0.00', '2100.00', 'a', 'Admin', '2022-10-20 12:08:12', NULL, NULL, 1),
(33, 25, 13, 3, '12500.00', '27500.00', '0.00', NULL, '0.00', '82500.00', 'a', 'Admin', '2022-10-20 14:33:03', NULL, NULL, 1),
(34, 26, 19, 2, '2000.00', '2100.00', '0.00', NULL, '0.00', '4200.00', 'a', 'Admin', '2022-10-22 18:25:47', NULL, NULL, 1),
(35, 27, 13, 2, '12500.00', '27500.00', '0.00', NULL, '0.00', '55000.00', 'a', 'Admin', '2022-10-23 18:28:54', NULL, NULL, 1),
(36, 28, 19, 1, '2000.00', '2100.00', '0.00', NULL, '0.00', '2100.00', 'a', 'Admin', '2022-10-24 17:53:06', NULL, NULL, 1),
(37, 29, 11, 1, '4304.00', '4734.40', '0.00', NULL, '0.00', '4734.40', 'a', 'Admin', '2022-10-24 17:58:59', NULL, NULL, 1),
(38, 29, 14, 1, '74.90', '100.00', '0.00', NULL, '0.00', '100.00', 'a', 'Admin', '2022-10-24 17:58:59', NULL, NULL, 1),
(39, 29, 19, 1, '2000.00', '2100.00', '0.00', NULL, '0.00', '2100.00', 'a', 'Admin', '2022-10-24 17:58:59', NULL, NULL, 1),
(40, 30, 19, 1, '2000.00', '2100.00', '0.00', NULL, '0.00', '2100.00', 'a', 'Admin', '2022-10-24 21:29:13', NULL, NULL, 1),
(41, 31, 13, 2, '12500.00', '27500.00', '0.00', NULL, '0.00', '55000.00', 'a', 'Admin', '2022-10-24 21:31:00', NULL, NULL, 1),
(42, 32, 12, 1, '4877.00', '5364.70', '0.00', NULL, '0.00', '5364.70', 'a', 'Admin', '2022-10-24 21:33:08', NULL, NULL, 1),
(43, 33, 19, 2, '2000.00', '2100.00', '0.00', NULL, '0.00', '4200.00', 'a', 'Admin', '2022-10-24 21:35:16', NULL, NULL, 1),
(44, 34, 19, 5, '2000.00', '2100.00', '0.00', NULL, '0.00', '10500.00', 'a', 'Admin', '2022-10-24 21:39:20', NULL, NULL, 1),
(45, 35, 15, 5, '1200.00', '2370.00', '0.00', NULL, '0.00', '11850.00', 'a', 'Admin', '2022-10-24 21:40:45', NULL, NULL, 1),
(46, 36, 20, 20, '80.00', '110.00', '0.00', NULL, '0.00', '2200.00', 'a', 'Admin', '2022-10-25 12:34:46', NULL, NULL, 1),
(47, 36, 1, 10, '5604.98', '6300.00', '0.00', NULL, '0.00', '63000.00', 'a', 'Admin', '2022-10-25 12:34:46', NULL, NULL, 1),
(48, 37, 15, 12, '1200.00', '2370.00', '0.00', NULL, '0.00', '28440.00', 'a', 'Admin', '2022-10-25 14:04:46', NULL, NULL, 1),
(49, 37, 20, 10, '80.00', '100.00', '0.00', NULL, '0.00', '1000.00', 'a', 'Admin', '2022-10-25 14:04:46', NULL, NULL, 1),
(50, 38, 20, 10, '80.00', '100.00', '0.00', NULL, '0.00', '1000.00', 'a', 'Admin', '2022-10-26 11:07:54', NULL, NULL, 1),
(51, 39, 13, 1, '12500.00', '27500.00', '0.00', NULL, '0.00', '27500.00', 'a', 'Admin', '2022-10-26 19:23:18', NULL, NULL, 1),
(52, 40, 15, 1, '1200.00', '2370.00', '0.00', NULL, '0.00', '2370.00', 'a', 'Admin', '2022-10-26 19:45:55', NULL, NULL, 1),
(53, 40, 20, 2, '80.00', '90.00', '0.00', NULL, '0.00', '180.00', 'a', 'Admin', '2022-10-26 19:45:55', NULL, NULL, 1),
(54, 41, 20, 2, '80.00', '100.00', '0.00', NULL, '0.00', '200.00', 'a', 'Admin', '2022-10-26 19:57:21', NULL, NULL, 1),
(55, 42, 20, 2, '80.00', '100.00', '0.00', NULL, '0.00', '200.00', 'a', 'Admin', '2022-10-26 20:40:26', NULL, NULL, 1),
(56, 43, 13, 2, '12500.00', '27500.00', '0.00', NULL, '0.00', '55000.00', 'a', 'Admin', '2022-10-27 17:47:48', NULL, NULL, 1),
(57, 43, 20, 4, '80.00', '110.00', '0.00', NULL, '0.00', '440.00', 'a', 'Admin', '2022-10-27 17:47:48', NULL, NULL, 1),
(58, 44, 13, 5, '12500.00', '27500.00', '0.00', NULL, '0.00', '137500.00', 'a', 'Admin', '2022-10-27 17:49:49', NULL, NULL, 1),
(59, 44, 20, 10, '80.00', '100.00', '0.00', NULL, '0.00', '1000.00', 'a', 'Admin', '2022-10-27 17:49:49', NULL, NULL, 1),
(60, 45, 13, 100, '12500.00', '27500.00', '0.00', NULL, '0.00', '2750000.00', 'a', 'Admin', '2022-10-30 16:14:21', NULL, NULL, 1),
(61, 45, 15, 10, '1200.00', '2370.00', '0.00', NULL, '0.00', '23700.00', 'a', 'Admin', '2022-10-30 16:14:21', NULL, NULL, 1),
(62, 45, 20, 50, '80.00', '100.00', '0.00', NULL, '0.00', '5000.00', 'a', 'Admin', '2022-10-30 16:14:21', NULL, NULL, 1),
(63, 45, 21, 2, '23500.00', '26500.00', '0.00', NULL, '0.00', '53000.00', 'a', 'Admin', '2022-10-30 16:14:21', NULL, NULL, 1),
(64, 46, 18, 12, '2000.00', '2100.00', '0.00', NULL, '0.00', '25200.00', 'a', 'Admin', '2022-10-30 16:15:01', NULL, NULL, 1),
(65, 46, 15, 12, '1200.00', '2370.00', '0.00', NULL, '0.00', '28440.00', 'a', 'Admin', '2022-10-30 16:15:01', NULL, NULL, 1),
(66, 47, 21, 55, '23500.00', '26500.00', '0.00', NULL, '0.00', '1457500.00', 'a', 'Admin', '2022-10-30 16:29:55', NULL, NULL, 1),
(67, 48, 19, 12, '1914.87', '2100.00', '0.00', NULL, '0.00', '25200.00', 'a', 'Admin', '2022-10-30 16:50:50', NULL, NULL, 1),
(68, 49, 20, 1, '150.00', '200.00', '0.00', NULL, '0.00', '200.00', 'a', 'Admin', '2022-10-31 12:12:46', NULL, NULL, 1),
(69, 49, 21, 1, '23500.00', '26500.00', '0.00', NULL, '0.00', '26500.00', 'a', 'Admin', '2022-10-31 12:12:46', NULL, NULL, 1),
(70, 50, 20, 9, '150.00', '200.00', '0.00', NULL, '0.00', '1800.00', 'a', 'Admin', '2022-10-31 12:35:39', NULL, NULL, 1),
(71, 50, 21, 2, '23500.00', '26500.00', '0.00', NULL, '0.00', '53000.00', 'a', 'Admin', '2022-10-31 12:35:39', NULL, NULL, 1),
(72, 51, 20, 22, '150.00', '200.00', '0.00', NULL, '0.00', '4400.00', 'a', 'Admin', '2022-10-31 12:39:12', NULL, NULL, 1),
(73, 51, 21, 2, '23500.00', '26500.00', '0.00', NULL, '0.00', '53000.00', 'a', 'Admin', '2022-10-31 12:39:12', NULL, NULL, 1),
(74, 52, 21, 22, '23500.00', '26500.00', '0.00', NULL, '0.00', '583000.00', 'a', 'Admin', '2022-10-31 12:57:28', NULL, NULL, 1),
(75, 53, 21, 2, '23500.00', '26500.00', '0.00', NULL, '0.00', '53000.00', 'a', 'Admin', '2022-10-31 13:01:51', NULL, NULL, 1),
(76, 54, 15, 1, '1200.00', '2370.00', '0.00', NULL, '0.00', '2370.00', 'a', 'Admin', '2022-10-31 14:25:54', NULL, NULL, 1),
(77, 55, 18, 1, '2000.00', '2100.00', '0.00', NULL, '0.00', '2100.00', 'a', 'Admin', '2022-10-31 15:47:55', NULL, NULL, 1),
(78, 55, 19, 1, '1914.87', '2100.00', '0.00', NULL, '0.00', '2100.00', 'a', 'Admin', '2022-10-31 15:47:55', NULL, NULL, 1),
(79, 56, 19, 5, '1914.87', '2100.00', '0.00', NULL, '0.00', '10500.00', 'a', 'Admin', '2022-10-31 15:49:27', NULL, NULL, 1),
(80, 57, 21, 2, '23500.00', '26500.00', '0.00', NULL, '0.00', '53000.00', 'a', 'Admin', '2022-11-01 15:30:38', NULL, NULL, 1),
(81, 57, 20, 8, '150.00', '220.00', '0.00', NULL, '0.00', '1760.00', 'a', 'Admin', '2022-11-01 15:30:38', NULL, NULL, 1),
(82, 58, 21, 2, '23500.00', '26500.00', '0.00', NULL, '0.00', '53000.00', 'a', 'Admin', '2022-11-01 15:31:59', NULL, NULL, 1),
(83, 58, 20, 2, '150.00', '200.00', '0.00', NULL, '0.00', '400.00', 'a', 'Admin', '2022-11-01 15:31:59', NULL, NULL, 1),
(84, 59, 20, 1, '150.00', '200.00', '0.00', NULL, '0.00', '200.00', 'a', 'Admin', '2022-11-01 18:05:03', NULL, NULL, 1),
(85, 59, 21, 1, '23500.00', '26500.00', '0.00', NULL, '0.00', '26500.00', 'a', 'Admin', '2022-11-01 18:05:03', NULL, NULL, 1),
(86, 60, 15, 1, '1200.00', '2370.00', '0.00', NULL, '0.00', '2370.00', 'a', 'Admin', '2022-11-02 16:54:03', NULL, NULL, 1),
(87, 60, 20, 7, '149.44', '250.00', '0.00', NULL, '0.00', '1750.00', 'a', 'Admin', '2022-11-02 16:54:03', NULL, NULL, 1),
(88, 61, 21, 1, '23500.00', '26500.00', '0.00', NULL, '0.00', '26500.00', 'a', 'Admin', '2022-11-02 17:16:09', NULL, NULL, 1),
(89, 61, 20, 1, '149.44', '250.00', '0.00', NULL, '0.00', '250.00', 'a', 'Admin', '2022-11-02 17:16:09', NULL, NULL, 1),
(90, 62, 20, 1, '149.44', '250.00', '0.00', NULL, '0.00', '250.00', 'a', 'Admin', '2022-11-05 10:29:14', NULL, NULL, 1),
(91, 63, 20, 2, '149.44', '250.00', '0.00', NULL, '0.00', '500.00', 'a', 'Admin', '2022-11-05 17:04:06', NULL, NULL, 1),
(92, 64, 20, 55, '149.44', '250.00', '0.00', NULL, '0.00', '13750.00', 'a', 'Admin', '2022-11-05 17:33:05', NULL, NULL, 1),
(93, 65, 25, 2, '23000.00', '21000.00', '0.00', NULL, '0.00', '42000.00', 'a', 'Admin', '2022-11-07 19:27:25', NULL, NULL, 1),
(94, 65, 24, 3, '21000.00', '21000.00', '0.00', NULL, '0.00', '63000.00', 'a', 'Admin', '2022-11-07 19:27:25', NULL, NULL, 1),
(95, 66, 24, 2, '21000.00', '22500.00', '0.00', NULL, '0.00', '45000.00', 'a', 'Admin', '2022-11-07 19:29:00', NULL, NULL, 1),
(96, 66, 25, 3, '23000.00', '22500.00', '0.00', NULL, '0.00', '67500.00', 'a', 'Admin', '2022-11-07 19:29:00', NULL, NULL, 1),
(97, 67, 25, 3, '23000.00', '21000.00', '0.00', NULL, '0.00', '63000.00', 'a', 'Admin', '2022-11-08 10:36:53', NULL, NULL, 1),
(98, 68, 11, 1, '4304.00', '4734.40', '0.00', NULL, '0.00', '4734.40', 'a', 'Admin', '2022-11-08 14:55:11', NULL, NULL, 1),
(99, 69, 24, 1, '21000.00', '21000.00', '0.00', NULL, '0.00', '21000.00', 'a', 'Admin', '2022-11-09 09:29:55', NULL, NULL, 1),
(100, 69, 25, 1, '23000.00', '21000.00', '0.00', NULL, '0.00', '21000.00', 'a', 'Admin', '2022-11-09 09:29:55', NULL, NULL, 1),
(101, 70, 21, 1, '23500.00', '26500.00', '0.00', NULL, '0.00', '26500.00', 'a', 'Admin', '2022-11-09 09:35:47', NULL, NULL, 1),
(102, 71, 25, 1, '23000.00', '21000.00', '0.00', NULL, '0.00', '21000.00', 'a', 'Admin', '2022-11-09 13:22:48', NULL, NULL, 1),
(103, 72, 25, 2, '23000.00', '21000.00', '0.00', NULL, '0.00', '42000.00', 'a', 'Admin', '2022-11-10 17:11:32', NULL, NULL, 1),
(104, 73, 21, 1, '23500.00', '26500.00', '0.00', NULL, '0.00', '26500.00', 'a', 'Admin', '2022-11-12 12:58:47', NULL, NULL, 1),
(105, 73, 11, 2, '4304.00', '4734.40', '0.00', NULL, '0.00', '9468.80', 'a', 'Admin', '2022-11-12 12:58:47', NULL, NULL, 1),
(106, 74, 19, 100, '1914.87', '2100.00', '0.00', NULL, '0.00', '210000.00', 'a', 'Admin', '2022-11-12 13:10:19', NULL, NULL, 1),
(107, 75, 20, 1, '149.44', '250.00', '0.00', NULL, '0.00', '250.00', 'a', 'Admin', '2022-11-12 18:26:33', NULL, NULL, 1),
(108, 76, 20, 2, '149.44', '250.00', '0.00', NULL, '0.00', '500.00', 'a', 'Admin', '2022-11-13 12:10:47', NULL, NULL, 1),
(109, 77, 20, 2, '149.44', '250.00', '0.00', NULL, '0.00', '500.00', 'a', 'Admin', '2022-11-13 13:47:32', NULL, NULL, 1),
(110, 78, 14, 24, '74.90', '1000.00', '0.00', NULL, '0.00', '24000.00', 'a', 'Admin', '2022-11-13 15:02:06', NULL, NULL, 1),
(111, 78, 20, 12, '149.44', '250.00', '0.00', NULL, '0.00', '3000.00', 'a', 'Admin', '2022-11-13 15:02:06', NULL, NULL, 1),
(112, 79, 26, 1, '220.00', '250.00', '0.00', NULL, '0.00', '250.00', 'a', 'Admin', '2022-11-13 20:53:45', NULL, NULL, 1),
(113, 80, 15, 1, '1200.00', '2370.00', '0.00', NULL, '0.00', '2370.00', 'a', 'Admin', '2022-11-14 10:00:30', NULL, NULL, 1),
(114, 80, 20, 1, '149.44', '250.00', '0.00', NULL, '0.00', '250.00', 'a', 'Admin', '2022-11-14 10:00:30', NULL, NULL, 1),
(115, 81, 20, 7, '149.44', '250.00', '0.00', NULL, '0.00', '1750.00', 'a', 'Admin', '2022-11-14 11:19:47', NULL, NULL, 1),
(116, 82, 27, 1, '250.00', '300.00', '0.00', NULL, '0.00', '300.00', 'a', 'Admin', '2022-11-14 13:04:13', NULL, NULL, 1),
(117, 83, 27, 1, '250.00', '300.00', '0.00', NULL, '0.00', '300.00', 'a', 'Admin', '2022-11-14 13:05:12', NULL, NULL, 1),
(118, 84, 13, 1, '12500.00', '27500.00', '0.00', NULL, '0.00', '27500.00', 'a', 'Admin', '2022-11-14 13:08:45', NULL, NULL, 1),
(119, 85, 21, 1, '23500.00', '26500.00', '0.00', NULL, '0.00', '26500.00', 'a', 'Admin', '2022-11-14 14:30:23', NULL, NULL, 1),
(120, 85, 25, 1, '23000.00', '25000.00', '0.00', NULL, '0.00', '25000.00', 'a', 'Admin', '2022-11-14 14:30:23', NULL, NULL, 1),
(121, 86, 13, 5, '12500.00', '27500.00', '0.00', NULL, '0.00', '137500.00', 'a', 'Admin', '2022-11-14 17:18:32', NULL, NULL, 1),
(122, 87, 22, 2, '0.00', '122.00', '0.00', NULL, '0.00', '244.00', 'a', 'Admin', '2022-11-15 14:35:50', NULL, NULL, 1),
(123, 88, 26, 1, '220.00', '250.00', '0.00', NULL, '0.00', '250.00', 'a', 'Admin', '2022-11-15 15:53:20', NULL, NULL, 1),
(124, 89, 26, 1, '220.00', '250.00', '0.00', NULL, '0.00', '250.00', 'a', 'Admin', '2022-11-15 17:06:19', NULL, NULL, 1),
(125, 90, 28, 2, '100.00', '120.00', '0.00', NULL, '0.00', '240.00', 'a', 'Admin', '2022-11-16 12:36:48', NULL, NULL, 1),
(126, 91, 26, 1, '220.00', '250.00', '0.00', NULL, '0.00', '250.00', 'a', 'Admin', '2022-11-17 17:01:03', NULL, NULL, 1),
(127, 92, 21, -0.01, '23500.00', '26500.00', '0.00', NULL, '0.00', '-265.00', 'a', 'Admin', '2022-11-17 17:29:47', NULL, NULL, 1),
(128, 93, 13, 12, '12500.00', '27500.00', '0.00', NULL, '0.00', '330000.00', 'a', 'Admin', '2022-11-19 14:37:16', NULL, NULL, 1),
(129, 94, 29, 20, '77.00', '85.00', '0.00', NULL, '0.00', '1700.00', 'a', 'Admin', '2022-11-19 15:05:39', NULL, NULL, 1),
(130, 95, 29, 10, '77.00', '85.00', '0.00', NULL, '0.00', '850.00', 'a', 'Admin', '2022-11-19 15:37:53', NULL, NULL, 1),
(131, 95, 30, 75, '85.00', '90.00', '0.00', NULL, '0.00', '6750.00', 'a', 'Admin', '2022-11-19 15:37:53', NULL, NULL, 1),
(132, 96, 29, 35, '77.00', '85.00', '0.00', NULL, '0.00', '2975.00', 'a', 'Admin', '2022-11-19 16:18:40', NULL, NULL, 1),
(133, 96, 30, 37, '85.00', '90.00', '0.00', NULL, '0.00', '3330.00', 'a', 'Admin', '2022-11-19 16:18:40', NULL, NULL, 1),
(134, 96, 32, 30, '175.00', '250.00', '0.00', NULL, '0.00', '7500.00', 'a', 'Admin', '2022-11-19 16:18:40', NULL, NULL, 1),
(135, 97, 29, 48, '77.00', '85.00', '0.00', NULL, '0.00', '4080.00', 'a', 'Admin', '2022-11-19 16:25:24', NULL, NULL, 1),
(136, 97, 30, 3, '85.00', '90.00', '0.00', NULL, '0.00', '270.00', 'a', 'Admin', '2022-11-19 16:25:24', NULL, NULL, 1),
(137, 97, 32, 60, '175.00', '250.00', '0.00', NULL, '0.00', '15000.00', 'a', 'Admin', '2022-11-19 16:25:24', NULL, NULL, 1),
(138, 98, 25, 1, '23000.00', '21000.00', '0.00', NULL, '0.00', '21000.00', 'a', 'Admin', '2022-11-19 18:31:31', NULL, NULL, 1),
(139, 98, 28, 2, '100.00', '120.00', '0.00', NULL, '0.00', '240.00', 'a', 'Admin', '2022-11-19 18:31:31', NULL, NULL, 1),
(140, 99, 19, 1, '1914.87', '2100.00', '0.00', NULL, '0.00', '2100.00', 'a', 'Admin', '2022-11-19 18:46:15', NULL, NULL, 1),
(141, 99, 28, 1, '100.00', '120.00', '0.00', NULL, '0.00', '120.00', 'a', 'Admin', '2022-11-19 18:46:15', NULL, NULL, 1),
(142, 99, 20, 10, '149.44', '250.00', '0.00', NULL, '0.00', '2500.00', 'a', 'Admin', '2022-11-19 18:46:15', NULL, NULL, 1),
(143, 100, 32, 5, '175.00', '250.00', '0.00', NULL, '0.00', '1250.00', 'a', 'Admin', '2022-11-19 22:21:50', NULL, NULL, 1),
(144, 101, 21, 1, '23500.00', '26500.00', '0.00', NULL, '0.00', '26500.00', 'a', 'Admin', '2022-11-21 15:04:59', NULL, NULL, 1),
(145, 101, 25, 1, '23000.00', '21000.00', '0.00', NULL, '0.00', '21000.00', 'a', 'Admin', '2022-11-21 15:04:59', NULL, NULL, 1),
(146, 102, 28, 1, '100.00', '120.00', '0.00', NULL, '0.00', '120.00', 'a', 'Admin', '2022-11-21 15:15:30', NULL, NULL, 1),
(147, 103, 38, 100000, '5.00', '10.00', '0.00', NULL, '0.00', '1000000.00', 'a', 'Admin', '2022-11-21 17:25:51', NULL, NULL, 1),
(148, 104, 38, 10000000, '5.00', '10.00', '0.00', NULL, '0.00', '100000000.00', 'a', 'Admin', '2022-11-21 17:42:52', NULL, NULL, 1),
(149, 105, 26, 1, '220.00', '250.00', '0.00', NULL, '0.00', '250.00', 'a', 'Admin', '2022-11-22 15:33:52', NULL, NULL, 1),
(150, 105, 29, 10, '77.00', '85.00', '0.00', NULL, '0.00', '850.00', 'a', 'Admin', '2022-11-22 15:33:52', NULL, NULL, 1),
(151, 106, 29, 90, '77.00', '85.00', '0.00', NULL, '0.00', '7650.00', 'a', 'Admin', '2022-11-23 11:45:24', NULL, NULL, 1),
(152, 107, 21, 1, '23500.00', '26500.00', '0.00', NULL, '0.00', '26500.00', 'a', 'Admin', '2022-11-23 18:22:02', NULL, NULL, 1),
(153, 107, 29, 2, '77.00', '85.00', '0.00', NULL, '0.00', '170.00', 'a', 'Admin', '2022-11-23 18:22:02', NULL, NULL, 1),
(154, 108, 37, 2, '2500.00', '3000.00', '0.00', NULL, '0.00', '6000.00', 'a', 'Admin', '2022-11-24 17:53:45', NULL, NULL, 1),
(155, 109, 21, 2, '23500.00', '26500.00', '0.00', NULL, '0.00', '53000.00', 'a', 'Admin', '2022-11-26 12:18:36', NULL, NULL, 1),
(156, 109, 20, 4, '149.44', '250.00', '0.00', NULL, '0.00', '1000.00', 'a', 'Admin', '2022-11-26 12:18:36', NULL, NULL, 1),
(157, 110, 39, 5, '2562.00', '2650.00', '0.00', NULL, '0.00', '13250.00', 'a', 'Admin', '2022-11-26 17:18:24', NULL, NULL, 1),
(158, 111, 30, 3, '85.00', '90.00', '0.00', NULL, '0.00', '270.00', 'a', 'Admin', '2022-11-26 20:10:45', NULL, NULL, 1),
(159, 111, 28, 2, '100.00', '120.00', '0.00', NULL, '0.00', '240.00', 'a', 'Admin', '2022-11-26 20:10:45', NULL, NULL, 1),
(160, 111, 38, 200, '5.00', '10.00', '0.00', NULL, '0.00', '2000.00', 'a', 'Admin', '2022-11-26 20:10:45', NULL, NULL, 1),
(161, 112, 37, 2, '2500.00', '3000.00', '0.00', NULL, '0.00', '6000.00', 'a', 'Admin', '2022-11-27 09:53:21', NULL, NULL, 1),
(162, 113, 38, 100, '5.00', '10.00', '0.00', NULL, '0.00', '1000.00', 'a', 'Admin', '2022-11-27 09:54:38', NULL, NULL, 1),
(163, 114, 29, 98, '77.00', '85.00', '0.00', NULL, '0.00', '8330.00', 'a', 'Admin', '2022-11-27 11:06:51', NULL, NULL, 1),
(164, 115, 38, 20, '5.00', '10.00', '0.00', NULL, '0.00', '200.00', 'a', 'Admin', '2022-11-28 16:17:51', NULL, NULL, 1),
(165, 116, 39, 9, '2562.00', '2800.00', '0.00', NULL, '0.00', '25200.00', 'a', 'Admin', '2022-11-28 19:01:51', NULL, NULL, 1),
(166, 117, 38, 10, '5.00', '10.00', '0.00', NULL, '0.00', '100.00', 'a', 'Admin', '2022-11-29 16:44:04', NULL, NULL, 1),
(167, 117, 37, 4, '2500.00', '3000.00', '0.00', NULL, '0.00', '12000.00', 'a', 'Admin', '2022-11-29 16:44:04', NULL, NULL, 1),
(168, 118, 37, 2, '2500.00', '3000.00', '0.00', NULL, '0.00', '6000.00', 'a', 'Admin', '2022-11-30 11:56:32', NULL, NULL, 1),
(169, 118, 39, 8, '2562.00', '2650.00', '0.00', NULL, '0.00', '21200.00', 'a', 'Admin', '2022-11-30 11:56:32', NULL, NULL, 1),
(170, 119, 28, 1, '100.00', '120.00', '0.00', NULL, '0.00', '120.00', 'a', 'Admin', '2022-11-30 15:11:19', NULL, NULL, 1),
(171, 120, 41, 2, '25.00', '30.00', '0.00', NULL, '0.00', '60.00', 'a', 'Admin', '2022-12-01 12:33:27', NULL, NULL, 1),
(172, 121, 42, 2, '50.00', '70.00', '0.00', NULL, '0.00', '140.00', 'a', 'Admin', '2022-12-01 14:10:09', NULL, NULL, 1),
(173, 122, 39, 5, '2562.00', '2650.00', '0.00', NULL, '0.00', '13250.00', 'a', 'Admin', '2022-12-01 17:25:13', NULL, NULL, 1),
(174, 122, 36, 2, '2850.00', '3500.00', '0.00', NULL, '0.00', '7000.00', 'a', 'Admin', '2022-12-01 17:25:13', NULL, NULL, 1),
(175, 123, 30, 10, '85.00', '90.00', '0.00', NULL, '0.00', '900.00', 'a', 'Admin', '2022-12-03 13:17:27', NULL, NULL, 1),
(176, 123, 37, 2, '2500.00', '3000.00', '0.00', NULL, '0.00', '6000.00', 'a', 'Admin', '2022-12-03 13:17:27', NULL, NULL, 1),
(177, 124, 38, 100, '5.00', '10.00', '0.00', NULL, '0.00', '1000.00', 'a', 'Admin', '2022-12-03 13:44:28', NULL, NULL, 1),
(178, 125, 37, 2, '2500.00', '3000.00', '0.00', NULL, '0.00', '6000.00', 'a', 'Admin', '2022-12-03 16:10:33', NULL, NULL, 1),
(179, 125, 40, 2, '2040.00', '2100.00', '0.00', NULL, '0.00', '4200.00', 'a', 'Admin', '2022-12-03 16:10:33', NULL, NULL, 1),
(180, 126, 30, 4, '85.00', '90.00', '0.00', NULL, '0.00', '360.00', 'a', 'Admin', '2022-12-03 17:41:16', NULL, NULL, 1),
(181, 126, 39, 5, '2562.00', '2650.00', '0.00', NULL, '0.00', '13250.00', 'a', 'Admin', '2022-12-03 17:41:16', NULL, NULL, 1),
(182, 127, 33, 2, '900.00', '1100.00', '0.00', NULL, '0.00', '2200.00', 'a', 'Admin', '2022-12-03 19:12:05', NULL, NULL, 1),
(183, 127, 40, 3, '2040.00', '2100.00', '0.00', NULL, '0.00', '6300.00', 'a', 'Admin', '2022-12-03 19:12:05', NULL, NULL, 1),
(184, 128, 40, 5, '2040.00', '2100.00', '0.00', NULL, '0.00', '10500.00', 'a', 'Admin', '2022-12-03 22:17:32', NULL, NULL, 1),
(185, 128, 33, 8, '900.00', '1200.00', '0.00', NULL, '0.00', '9600.00', 'a', 'Admin', '2022-12-03 22:17:32', NULL, NULL, 1),
(186, 129, 37, 5, '2500.00', '3000.00', '0.00', NULL, '0.00', '15000.00', 'a', 'Admin', '2022-12-04 16:11:21', NULL, NULL, 1),
(187, 130, 41, 2, '25.00', '30.00', '0.00', NULL, '0.00', '60.00', 'a', 'Admin', '2022-12-05 10:46:00', NULL, NULL, 1),
(188, 131, 41, 4, '25.00', '30.00', '0.00', NULL, '0.00', '120.00', 'a', 'Admin', '2022-12-05 10:59:15', NULL, NULL, 1),
(189, 132, 33, 5, '900.00', '1200.00', '0.00', NULL, '0.00', '6000.00', 'a', 'Admin', '2022-12-05 12:12:30', NULL, NULL, 1),
(190, 132, 40, 2, '2040.00', '2100.00', '0.00', NULL, '0.00', '4200.00', 'a', 'Admin', '2022-12-05 12:12:30', NULL, NULL, 1),
(191, 133, 38, 1, '5.00', '10.00', '0.00', NULL, '0.00', '10.00', 'a', 'Admin', '2022-12-05 15:00:05', NULL, NULL, 1),
(192, 134, 14, 4, '74.90', '100.00', '0.00', NULL, '0.00', '400.00', 'a', 'Admin', '2022-12-05 15:38:23', NULL, NULL, 1),
(193, 134, 25, 1, '23000.00', '21000.00', '0.00', NULL, '0.00', '21000.00', 'a', 'Admin', '2022-12-05 15:38:23', NULL, NULL, 1),
(194, 134, 36, 3, '2850.00', '3500.00', '0.00', NULL, '0.00', '10500.00', 'a', 'Admin', '2022-12-05 15:38:23', NULL, NULL, 1),
(195, 134, 39, 4, '2562.00', '2650.00', '0.00', NULL, '0.00', '10600.00', 'a', 'Admin', '2022-12-05 15:38:23', NULL, NULL, 1),
(196, 135, 42, 121, '50.33', '68.00', '0.00', NULL, '0.00', '8228.00', 'a', 'Admin', '2022-12-06 10:32:08', NULL, NULL, 1),
(197, 136, 29, 11, '77.00', '85.00', '0.00', NULL, '0.00', '935.00', 'a', 'Admin', '2022-12-06 10:48:19', NULL, NULL, 1),
(198, 136, 30, 5, '85.00', '90.00', '0.00', NULL, '0.00', '450.00', 'a', 'Admin', '2022-12-06 10:48:19', NULL, NULL, 1),
(199, 136, 42, 12, '50.33', '68.00', '0.00', NULL, '0.00', '816.00', 'a', 'Admin', '2022-12-06 10:48:19', NULL, NULL, 1),
(200, 137, 37, 1, '2500.00', '3000.00', '0.00', NULL, '0.00', '3000.00', 'a', 'Admin', '2022-12-06 10:52:12', NULL, NULL, 1),
(201, 137, 40, 1, '2040.00', '2100.00', '0.00', NULL, '0.00', '2100.00', 'a', 'Admin', '2022-12-06 10:52:12', NULL, NULL, 1),
(202, 138, 36, 1, '2850.00', '3500.00', '0.00', NULL, '0.00', '3500.00', 'a', 'Admin', '2022-12-06 10:57:57', NULL, NULL, 1),
(203, 138, 39, 2, '2562.00', '2650.00', '0.00', NULL, '0.00', '5300.00', 'a', 'Admin', '2022-12-06 10:57:57', NULL, NULL, 1),
(204, 138, 41, 2, '25.00', '30.00', '0.00', NULL, '0.00', '60.00', 'a', 'Admin', '2022-12-06 10:57:57', NULL, NULL, 1),
(205, 139, 37, 2, '2500.00', '3000.00', '0.00', NULL, '0.00', '6000.00', 'a', 'Admin', '2022-12-06 11:24:22', NULL, NULL, 1),
(206, 139, 41, 2, '25.00', '30.00', '0.00', NULL, '0.00', '60.00', 'a', 'Admin', '2022-12-06 11:24:22', NULL, NULL, 1),
(207, 139, 40, 3, '2040.00', '2100.00', '0.00', NULL, '0.00', '6300.00', 'a', 'Admin', '2022-12-06 11:24:22', NULL, NULL, 1),
(208, 140, 36, 1, '2850.00', '2000.00', '0.00', NULL, '0.00', '2000.00', 'a', 'Admin', '2022-12-06 14:36:59', NULL, NULL, 1),
(209, 141, 41, 2, '25.00', '30.00', '0.00', NULL, '0.00', '60.00', 'a', 'Admin', '2022-12-06 14:47:54', NULL, NULL, 1),
(210, 142, 41, 1, '25.00', '30.00', '0.00', NULL, '0.00', '30.00', 'a', 'Admin', '2022-12-06 14:48:51', NULL, NULL, 1),
(211, 143, 43, 1, '500.00', '520.00', '0.00', NULL, '0.00', '520.00', 'a', 'Admin', '2022-12-06 15:05:09', NULL, NULL, 1),
(212, 144, 43, 1, '500.00', '550.00', '0.00', NULL, '0.00', '550.00', 'a', 'Admin', '2022-12-06 15:05:43', NULL, NULL, 1),
(213, 145, 41, 1, '25.00', '30.00', '0.00', NULL, '0.00', '30.00', 'a', 'Admin', '2022-12-06 15:51:32', NULL, NULL, 1),
(214, 146, 40, 2, '2040.00', '2100.00', '0.00', NULL, '0.00', '4200.00', 'a', 'Admin', '2022-12-06 15:52:23', NULL, NULL, 1),
(215, 146, 42, 2, '50.33', '68.00', '0.00', NULL, '0.00', '136.00', 'a', 'Admin', '2022-12-06 15:52:23', NULL, NULL, 1),
(216, 147, 41, 2, '25.00', '30.00', '0.00', NULL, '0.00', '60.00', 'a', 'Admin', '2022-12-06 15:54:20', NULL, NULL, 1),
(217, 147, 42, 5, '50.33', '68.00', '0.00', NULL, '0.00', '340.00', 'a', 'Admin', '2022-12-06 15:54:20', NULL, NULL, 1),
(218, 148, 36, 1, '2850.00', '3500.00', '0.00', NULL, '0.00', '3500.00', 'a', 'Admin', '2022-12-06 19:42:22', NULL, NULL, 1),
(219, 148, 20, 1, '149.44', '250.00', '0.00', NULL, '0.00', '250.00', 'a', 'Admin', '2022-12-06 19:42:22', NULL, NULL, 1),
(220, 149, 19, 1, '1914.87', '2100.00', '0.00', NULL, '0.00', '2100.00', 'a', 'Admin', '2022-12-06 20:14:57', NULL, NULL, 1),
(221, 149, 42, 1, '50.33', '68.00', '0.00', NULL, '0.00', '68.00', 'a', 'Admin', '2022-12-06 20:14:57', NULL, NULL, 1),
(222, 149, 39, 1, '2562.00', '2650.00', '0.00', NULL, '0.00', '2650.00', 'a', 'Admin', '2022-12-06 20:14:57', NULL, NULL, 1),
(223, 150, 36, 1, '2850.00', '3500.00', '0.00', NULL, '0.00', '3500.00', 'a', 'Admin', '2022-12-06 20:17:11', NULL, NULL, 1),
(224, 150, 41, 1, '25.00', '30.00', '0.00', NULL, '0.00', '30.00', 'a', 'Admin', '2022-12-06 20:17:11', NULL, NULL, 1),
(225, 151, 38, 2, '5.00', '10.00', '0.00', NULL, '0.00', '20.00', 'a', 'Admin', '2022-12-07 14:59:19', NULL, NULL, 1),
(226, 152, 23, 1, '0.00', '200.00', '0.00', NULL, '0.00', '200.00', 'a', 'Admin', '2022-12-08 16:16:47', NULL, NULL, 1),
(227, 153, 40, 2, '2040.00', '2100.00', '0.00', NULL, '0.00', '4200.00', 'a', 'Admin', '2022-12-10 12:03:15', NULL, NULL, 1),
(228, 154, 45, 2, '1200.00', '1500.00', '0.00', NULL, '0.00', '3000.00', 'a', 'Admin', '2022-12-10 12:33:44', NULL, NULL, 1),
(229, 155, 37, 2, '2500.00', '3000.00', '0.00', NULL, '0.00', '6000.00', 'a', 'Admin', '2022-12-10 13:23:25', NULL, NULL, 1),
(230, 155, 42, 5, '50.33', '68.00', '0.00', NULL, '0.00', '340.00', 'a', 'Admin', '2022-12-10 13:23:25', NULL, NULL, 1),
(231, 156, 45, 1, '1200.00', '1500.00', '0.00', NULL, '0.00', '1500.00', 'a', 'Admin', '2022-12-11 12:20:08', NULL, NULL, 1),
(232, 157, 42, 1, '50.33', '68.00', '0.00', NULL, '0.00', '68.00', 'a', 'Admin', '2022-12-11 13:13:35', NULL, NULL, 1),
(233, 157, 43, 1, '500.00', '550.00', '0.00', NULL, '0.00', '550.00', 'a', 'Admin', '2022-12-11 13:13:35', NULL, NULL, 1),
(234, 158, 40, 2, '2040.00', '2100.00', '0.00', NULL, '0.00', '4200.00', 'a', 'Admin', '2022-12-12 12:49:01', NULL, NULL, 1),
(235, 158, 45, 2, '1200.00', '1500.00', '0.00', NULL, '0.00', '3000.00', 'a', 'Admin', '2022-12-12 12:49:01', NULL, NULL, 1),
(236, 159, 46, 1, '300.00', '4000.00', '0.00', NULL, '0.00', '4000.00', 'a', 'Admin', '2022-12-13 09:50:22', NULL, NULL, 1),
(237, 160, 45, 1, '1200.00', '1500.00', '0.00', NULL, '0.00', '1500.00', 'a', 'Admin', '2022-12-13 13:10:38', NULL, NULL, 1),
(238, 161, 40, 3, '2040.00', '2100.00', '0.00', NULL, '0.00', '6300.00', 'a', 'Admin', '2022-12-13 16:45:09', NULL, NULL, 1),
(239, 161, 42, 3, '50.33', '68.00', '0.00', NULL, '0.00', '204.00', 'a', 'Admin', '2022-12-13 16:45:09', NULL, NULL, 1),
(240, 162, 30, 5, '85.00', '90.00', '0.00', NULL, '0.00', '450.00', 'a', 'Admin', '2022-12-13 19:23:12', NULL, NULL, 1),
(241, 162, 43, 1, '500.00', '550.00', '0.00', NULL, '0.00', '550.00', 'a', 'Admin', '2022-12-13 19:23:12', NULL, NULL, 1),
(242, 163, 40, 1, '2040.00', '2100.00', '0.00', NULL, '0.00', '2100.00', 'a', 'Admin', '2022-12-14 13:04:26', NULL, NULL, 1),
(243, 163, 46, 4, '300.00', '400.00', '0.00', NULL, '0.00', '1600.00', 'a', 'Admin', '2022-12-14 13:04:26', NULL, NULL, 1),
(244, 164, 46, 1, '300.00', '400.00', '0.00', NULL, '0.00', '400.00', 'a', 'Admin', '2022-12-14 13:33:39', NULL, NULL, 1),
(245, 165, 46, 2, '300.00', '400.00', '0.00', NULL, '0.00', '800.00', 'a', 'Admin', '2022-12-14 13:45:15', NULL, NULL, 1),
(246, 165, 45, 25, '1200.00', '1500.00', '0.00', NULL, '0.00', '37500.00', 'a', 'Admin', '2022-12-14 13:45:15', NULL, NULL, 1),
(247, 166, 44, 5, '6000.00', '9000.00', '0.00', NULL, '0.00', '45000.00', 'a', 'Admin', '2022-12-15 09:59:20', NULL, NULL, 1),
(248, 167, 39, 5, '2562.00', '2650.00', '0.00', NULL, '0.00', '13250.00', 'a', 'Admin', '2022-12-15 09:59:55', NULL, NULL, 1),
(249, 168, 44, 2, '6000.00', '9000.00', '0.00', NULL, '0.00', '18000.00', 'a', 'Admin', '2022-12-15 15:26:34', NULL, NULL, 1),
(250, 168, 42, 4, '50.33', '68.00', '0.00', NULL, '0.00', '272.00', 'a', 'Admin', '2022-12-15 15:26:34', NULL, NULL, 1),
(251, 169, 44, 1, '6000.00', '9000.00', '0.00', NULL, '0.00', '9000.00', 'a', 'Admin', '2022-12-15 15:54:07', NULL, NULL, 9),
(252, 170, 41, 4, '25.00', '30.00', '0.00', NULL, '0.00', '120.00', 'a', 'Admin', '2022-12-15 16:53:24', NULL, NULL, 1),
(253, 170, 38, 3, '5.00', '10.00', '0.00', NULL, '0.00', '30.00', 'a', 'Admin', '2022-12-15 16:53:24', NULL, NULL, 1),
(254, 171, 45, 5, '1200.00', '1500.00', '0.00', NULL, '0.00', '7500.00', 'a', 'Admin', '2022-12-15 18:00:56', NULL, NULL, 1),
(255, 172, 23, 8, '0.00', '200.00', '0.00', NULL, '0.00', '1600.00', 'a', 'Admin', '2022-12-15 18:02:29', NULL, NULL, 1),
(256, 173, 44, 1, '6000.00', '9000.00', '0.00', NULL, '0.00', '9000.00', 'a', 'Zahir Hossain', '2022-12-15 18:15:50', NULL, NULL, 9),
(257, 174, 48, 1, '100.00', '150.00', '0.00', NULL, '0.00', '150.00', 'a', 'Zahir Hossain', '2022-12-15 18:30:52', NULL, NULL, 9),
(258, 174, 51, 1, '100.00', '150.00', '0.00', NULL, '0.00', '150.00', 'a', 'Zahir Hossain', '2022-12-15 18:30:52', NULL, NULL, 9),
(259, 175, 47, 30, '100.00', '30.00', '0.00', NULL, '0.00', '900.00', 'a', 'Admin', '2022-12-16 15:09:51', NULL, NULL, 1),
(260, 175, 45, 2, '1200.00', '1500.00', '0.00', NULL, '0.00', '3000.00', 'a', 'Admin', '2022-12-16 15:09:51', NULL, NULL, 1),
(261, 176, 46, 1, '300.00', '400.00', '0.00', NULL, '0.00', '400.00', 'a', 'Admin', '2022-12-16 18:59:19', NULL, NULL, 1),
(262, 176, 35, 1, '10000.00', '12500.00', '0.00', NULL, '0.00', '12500.00', 'a', 'Admin', '2022-12-16 18:59:19', NULL, NULL, 1),
(263, 176, 40, 1, '2040.00', '2100.00', '0.00', NULL, '0.00', '2100.00', 'a', 'Admin', '2022-12-16 18:59:19', NULL, NULL, 1),
(264, 177, 46, 1, '300.00', '400.00', '0.00', NULL, '0.00', '400.00', 'a', 'Admin', '2022-12-16 20:59:37', NULL, NULL, 1),
(265, 178, 45, 1, '1200.00', '1500.00', '0.00', NULL, '0.00', '1500.00', 'a', 'Admin', '2022-12-16 21:50:45', NULL, NULL, 1),
(266, 179, 44, 1, '6000.00', '9000.00', '0.00', NULL, '0.00', '9000.00', 'a', 'Admin', '2022-12-17 15:40:51', NULL, NULL, 1),
(267, 180, 23, 1, '0.00', '200.00', '0.00', NULL, '0.00', '200.00', 'a', 'Admin', '2022-12-17 16:47:49', NULL, NULL, 1),
(268, 181, 40, 20, '2040.00', '2100.00', '0.00', NULL, '0.00', '42000.00', 'a', 'Admin', '2022-12-19 14:23:21', NULL, NULL, 1),
(269, 181, 41, 20, '25.00', '30.00', '0.00', NULL, '0.00', '600.00', 'a', 'Admin', '2022-12-19 14:23:21', NULL, NULL, 1),
(270, 182, 49, 2, '100.00', '150.00', '0.00', NULL, '0.00', '300.00', 'a', 'Admin', '2022-12-19 17:01:25', NULL, NULL, 1),
(271, 183, 44, 1, '6000.00', '9000.00', '0.00', NULL, '0.00', '9000.00', 'a', 'Admin', '2022-12-19 19:55:22', NULL, NULL, 1),
(272, 184, 44, 1, '6000.00', '9000.00', '0.00', NULL, '0.00', '9000.00', 'a', 'Admin', '2022-12-20 12:10:53', NULL, NULL, 1),
(273, 185, 49, 2, '100.00', '200.00', '0.00', NULL, '0.00', '400.00', 'a', 'Admin', '2022-12-20 15:55:58', NULL, NULL, 1),
(274, 186, 53, 15, '500.00', '700.00', '0.00', NULL, '0.00', '10500.00', 'a', 'Admin', '2022-12-20 17:01:58', NULL, NULL, 1),
(275, 186, 54, 10, '800.00', '1000.00', '0.00', NULL, '0.00', '10000.00', 'a', 'Admin', '2022-12-20 17:01:58', NULL, NULL, 1),
(276, 187, 55, 6, '85.00', '100.00', '0.00', NULL, '0.00', '600.00', 'a', 'Admin', '2022-12-20 17:04:02', NULL, NULL, 1),
(277, 188, 55, 2, '85.00', '100.00', '0.00', NULL, '0.00', '200.00', 'a', 'Admin', '2022-12-20 17:07:23', NULL, NULL, 1),
(278, 189, 56, 20, '75.00', '90.00', '0.00', NULL, '0.00', '1800.00', 'a', 'Admin', '2022-12-20 17:31:42', NULL, NULL, 1),
(279, 190, 56, 5, '75.00', '90.00', '0.00', NULL, '0.00', '450.00', 'a', 'Admin', '2022-12-20 17:37:25', NULL, NULL, 1),
(280, 191, 49, 6, '100.00', '200.00', '0.00', NULL, '0.00', '1200.00', 'a', 'Admin', '2022-12-20 18:00:14', NULL, NULL, 1),
(281, 192, 56, 6, '75.00', '90.00', '0.00', NULL, '0.00', '540.00', 'a', 'Admin', '2022-12-21 09:32:31', NULL, NULL, 1),
(282, 193, 47, 5, '100.00', '1000.00', '0.00', NULL, '0.00', '5000.00', 'a', 'Admin', '2022-12-21 12:31:43', NULL, NULL, 1),
(283, 193, 45, 10, '1200.00', '1500.00', '0.00', NULL, '0.00', '15000.00', 'a', 'Admin', '2022-12-21 12:31:43', NULL, NULL, 1),
(284, 194, 50, 10, '100.00', '150.00', '0.00', NULL, '0.00', '1500.00', 'a', 'Admin', '2022-12-21 12:32:43', NULL, NULL, 1),
(285, 195, 55, 1, '85.00', '100.00', '0.00', NULL, '0.00', '100.00', 'a', 'Admin', '2022-12-22 15:25:06', NULL, NULL, 1),
(286, 196, 55, 5, '85.00', '100.00', '0.00', NULL, '0.00', '500.00', 'a', 'Admin', '2022-12-22 15:28:20', NULL, NULL, 1),
(287, 197, 45, 12, '1200.00', '1500.00', '0.00', NULL, '0.00', '18000.00', 'a', 'Admin', '2022-12-24 14:27:16', NULL, NULL, 1),
(288, 197, 50, 10, '100.00', '150.00', '0.00', NULL, '0.00', '1500.00', 'a', 'Admin', '2022-12-24 14:27:16', NULL, NULL, 1),
(289, 198, 55, 10, '85.00', '100.00', '0.00', NULL, '0.00', '1000.00', 'a', 'Admin', '2022-12-24 14:36:32', NULL, NULL, 1),
(290, 199, 55, 15, '85.00', '100.00', '0.00', NULL, '0.00', '1500.00', 'a', 'Admin', '2022-12-24 15:45:52', NULL, NULL, 1),
(291, 200, 43, 1, '500.00', '550.00', '0.00', NULL, '0.00', '550.00', 'a', 'Admin', '2022-12-26 12:46:48', NULL, NULL, 1),
(292, 200, 48, 1, '100.00', '150.00', '0.00', NULL, '0.00', '150.00', 'a', 'Admin', '2022-12-26 12:46:48', NULL, NULL, 1),
(293, 201, 54, 2, '800.00', '1000.00', '0.00', NULL, '0.00', '2000.00', 'a', 'Admin', '2022-12-26 13:34:04', NULL, NULL, 1),
(294, 201, 53, 2, '500.00', '700.00', '0.00', NULL, '0.00', '1400.00', 'a', 'Admin', '2022-12-26 13:34:04', NULL, NULL, 1),
(295, 202, 53, 1, '500.00', '700.00', '0.00', NULL, '0.00', '700.00', 'a', 'Admin', '2022-12-26 21:29:36', NULL, NULL, 1),
(296, 203, 55, 2, '85.00', '100.00', '0.00', NULL, '0.00', '200.00', 'a', 'Admin', '2022-12-27 15:18:40', NULL, NULL, 1),
(297, 203, 56, 5, '75.00', '90.00', '0.00', NULL, '0.00', '450.00', 'a', 'Admin', '2022-12-27 15:18:40', NULL, NULL, 1),
(298, 204, 30, 1, '85.00', '90.00', '0.00', NULL, '0.00', '90.00', 'a', 'Admin', '2022-12-29 16:07:42', NULL, NULL, 1),
(299, 205, 61, 1, '15000.00', '18000.00', '0.00', NULL, '0.00', '18000.00', 'a', 'Admin', '2022-12-29 18:42:45', NULL, NULL, 1),
(300, 206, 62, 2, '25000.00', '28000.00', '0.00', NULL, '0.00', '56000.00', 'a', 'Admin', '2022-12-29 18:59:23', NULL, NULL, 1),
(301, 207, 61, 3, '15000.00', '18000.00', '0.00', NULL, '0.00', '54000.00', 'a', 'Admin', '2022-12-29 18:59:58', NULL, NULL, 1),
(302, 208, 61, 2, '15000.00', '15756.00', '0.00', NULL, '0.00', '31512.00', 'a', 'Admin', '2022-12-29 19:08:57', NULL, NULL, 1),
(303, 208, 62, 2.8, '25000.00', '28000.00', '0.00', NULL, '0.00', '78400.00', 'a', 'Admin', '2022-12-29 19:08:57', NULL, NULL, 1),
(304, 209, 63, 10, '520.00', '540.00', '0.00', NULL, '0.00', '5400.00', 'a', 'Admin', '2022-12-30 11:06:49', NULL, NULL, 1),
(305, 209, 64, 10, '510.00', '540.00', '0.00', NULL, '0.00', '5400.00', 'a', 'Admin', '2022-12-30 11:06:49', NULL, NULL, 1),
(306, 210, 64, 40, '510.00', '540.00', '0.00', NULL, '0.00', '21600.00', 'a', 'Admin', '2022-12-30 11:09:51', NULL, NULL, 1),
(307, 210, 63, 5, '520.00', '540.00', '0.00', NULL, '0.00', '2700.00', 'a', 'Admin', '2022-12-30 11:09:51', NULL, NULL, 1),
(308, 211, 62, 2, '25000.00', '28000.00', '0.00', NULL, '0.00', '56000.00', 'a', 'Admin', '2022-12-30 11:50:44', NULL, NULL, 1),
(309, 212, 63, 10, '520.00', '540.00', '0.00', NULL, '0.00', '5400.00', 'a', 'Admin', '2022-12-30 12:00:33', NULL, NULL, 1),
(310, 213, 62, 3, '25000.00', '28000.00', '0.00', NULL, '0.00', '84000.00', 'a', 'Admin', '2022-12-30 14:53:28', NULL, NULL, 1),
(311, 214, 63, 1, '520.00', '540.00', '0.00', NULL, '0.00', '540.00', 'a', 'Admin', '2022-12-30 14:54:29', NULL, NULL, 1),
(312, 215, 63, 20, '520.00', '540.00', '0.00', NULL, '0.00', '10800.00', 'a', 'Admin', '2022-12-30 16:01:49', NULL, NULL, 1),
(313, 216, 54, 5, '800.00', '1000.00', '0.00', NULL, '0.00', '5000.00', 'a', 'Admin', '2023-01-01 11:39:30', NULL, NULL, 1),
(314, 216, 64, 15, '510.00', '540.00', '0.00', NULL, '0.00', '8100.00', 'a', 'Admin', '2023-01-01 11:39:30', NULL, NULL, 1),
(315, 216, 63, 10, '520.00', '540.00', '0.00', NULL, '0.00', '5400.00', 'a', 'Admin', '2023-01-01 11:39:30', NULL, NULL, 1),
(319, 217, 55, 20, '85.00', '100.00', '0.00', NULL, '0.00', '2000.00', 'a', 'Admin', '2023-01-01 12:15:56', NULL, NULL, 1),
(320, 217, 53, 10, '500.00', '700.00', '0.00', NULL, '0.00', '7000.00', 'a', 'Admin', '2023-01-01 12:15:56', NULL, NULL, 1),
(321, 217, 64, 16, '510.00', '540.00', '0.00', NULL, '0.00', '8640.00', 'a', 'Admin', '2023-01-01 12:15:56', NULL, NULL, 1),
(322, 218, 63, 15, '520.00', '540.00', '0.00', NULL, '0.00', '8100.00', 'a', 'Admin', '2023-01-01 12:26:31', NULL, NULL, 1),
(323, 218, 55, 10, '85.00', '100.00', '0.00', NULL, '0.00', '1000.00', 'a', 'Admin', '2023-01-01 12:26:31', NULL, NULL, 1),
(324, 218, 56, 10, '75.00', '90.00', '0.00', NULL, '0.00', '900.00', 'a', 'Admin', '2023-01-01 12:26:31', NULL, NULL, 1),
(325, 219, 11, 2, '4304.00', '4734.40', '0.00', NULL, '0.00', '9468.80', 'a', 'Admin', '2023-01-01 20:58:58', NULL, NULL, 1),
(326, 219, 55, 4, '85.00', '100.00', '0.00', NULL, '0.00', '400.00', 'a', 'Admin', '2023-01-01 20:58:58', NULL, NULL, 1),
(327, 219, 63, 9, '520.00', '540.00', '0.00', NULL, '0.00', '4860.00', 'a', 'Admin', '2023-01-01 20:58:58', NULL, NULL, 1),
(328, 219, 64, 10, '510.00', '540.00', '0.00', NULL, '0.00', '5400.00', 'a', 'Admin', '2023-01-01 20:58:58', NULL, NULL, 1),
(329, 220, 55, 5, '85.00', '95.00', '0.00', NULL, '0.00', '475.00', 'a', 'Admin', '2023-01-08 20:24:28', NULL, NULL, 1),
(330, 220, 28, 1, '100.00', '115.00', '0.00', NULL, '0.00', '115.00', 'a', 'Admin', '2023-01-08 20:24:28', NULL, NULL, 1),
(331, 220, 21, 2, '23500.00', '25500.00', '0.00', NULL, '0.00', '51000.00', 'a', 'Admin', '2023-01-08 20:24:28', NULL, NULL, 1),
(332, 220, 43, 2, '500.00', '520.00', '0.00', NULL, '0.00', '1040.00', 'a', 'Admin', '2023-01-08 20:24:28', NULL, NULL, 1),
(333, 221, 23, 2, '0.00', '200.00', '0.00', NULL, '0.00', '400.00', 'a', 'Admin', '2023-01-08 21:29:30', NULL, NULL, 1),
(334, 221, 27, 4, '0.00', '300.00', '0.00', NULL, '0.00', '1200.00', 'a', 'Admin', '2023-01-08 21:29:30', NULL, NULL, 1),
(335, 222, 13, 1, '12500.00', '27200.00', '0.00', NULL, '0.00', '27200.00', 'a', 'Link Up', '2023-01-10 18:09:33', NULL, NULL, 2),
(337, 223, 64, 10, '510.00', '540.00', '0.00', NULL, '0.00', '5400.00', 'a', 'Admin', '2023-02-11 15:53:05', NULL, NULL, 1),
(338, 224, 63, 20, '520.00', '540.00', '0.00', NULL, '0.00', '10800.00', 'a', 'Admin', '2023-02-12 10:36:05', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salereturn`
--

CREATE TABLE `tbl_salereturn` (
  `SaleReturn_SlNo` int(11) NOT NULL,
  `SaleMaster_InvoiceNo` varchar(50) NOT NULL,
  `SaleReturn_ReturnDate` date NOT NULL,
  `SaleReturn_ReturnAmount` decimal(18,2) NOT NULL,
  `SaleReturn_Description` varchar(300) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `SaleReturn_brunchId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_salereturn`
--

INSERT INTO `tbl_salereturn` (`SaleReturn_SlNo`, `SaleMaster_InvoiceNo`, `SaleReturn_ReturnDate`, `SaleReturn_ReturnAmount`, `SaleReturn_Description`, `Status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `SaleReturn_brunchId`) VALUES
(1, '220100008', '2022-09-26', '110000.00', 'Tbhffffbbhbbhbvcccxxv uuffg ', 'a', 'Admin', '2022-11-22 22:43:13', NULL, NULL, 1),
(2, '220100009', '2022-09-26', '14000.00', '', 'a', 'Admin', '2022-09-26 16:51:50', NULL, NULL, 1),
(3, '220100018', '2022-10-16', '42000.00', '', 'a', 'Admin', '2022-10-16 15:12:57', NULL, NULL, 1),
(4, '220100017', '2022-10-24', '4740.00', '', 'a', 'Admin', '2022-10-24 16:57:39', NULL, NULL, 1),
(5, '220100044', '2022-11-14', '27500.00', '', 'a', 'Admin', '2022-11-14 13:05:06', NULL, NULL, 1),
(6, '220100090', '2022-11-16', '120.00', '', 'a', 'Admin', '2022-11-16 12:42:48', NULL, NULL, 1),
(7, '220100085', '2022-11-23', '25000.00', '', 'a', 'Admin', '2022-11-17 11:21:14', NULL, NULL, 1),
(8, '220100094', '2022-11-19', '850.00', '', 'a', 'Admin', '2022-11-19 15:10:50', NULL, NULL, 1),
(9, '220100095', '2022-11-19', '705.00', '', 'a', 'Admin', '2022-11-19 15:42:47', NULL, NULL, 1),
(10, '220100097', '2022-11-16', '2020.00', '', 'a', 'Admin', '2022-11-19 16:26:39', NULL, NULL, 1),
(11, '220100097', '2022-11-16', '2020.00', '', 'a', 'Admin', '2022-11-19 16:33:56', NULL, NULL, 1),
(12, '220100097', '2022-11-19', '675.00', '', 'a', 'Admin', '2022-11-19 18:35:23', NULL, NULL, 1),
(13, '220100111', '2022-11-26', '190.00', '', 'a', 'Admin', '2022-11-26 20:15:11', NULL, NULL, 1),
(14, '220100113', '2022-11-27', '100.00', '', 'a', 'Admin', '2022-11-27 09:55:04', NULL, NULL, 1),
(15, '220100150', '2022-12-08', '3500.00', '', 'a', 'Admin', '2022-12-08 12:13:42', NULL, NULL, 1),
(16, '220100109', '2022-12-12', '26500.00', '', 'a', 'Admin', '2022-12-12 13:25:41', NULL, NULL, 1),
(17, '220100173', '2022-12-17', '400.00', '', 'a', 'Admin', '2022-12-17 20:30:17', NULL, NULL, 1),
(18, '220100170', '2022-12-20', '3000.00', '', 'a', 'Admin', '2022-12-20 16:32:52', NULL, NULL, 1),
(19, '220100183', '2022-12-20', '5500.00', '', 'a', 'Admin', '2022-12-20 17:05:17', NULL, NULL, 1),
(20, '220100184', '2022-12-20', '200.00', '', 'a', 'Admin', '2022-12-20 17:06:03', NULL, NULL, 1),
(21, '220100185', '2022-12-20', '200.00', '', 'a', 'Admin', '2022-12-20 17:09:02', NULL, NULL, 1),
(22, '220100200', '2022-12-27', '190.00', '', 'a', 'Admin', '2022-12-27 15:22:36', NULL, NULL, 1),
(23, '230100001', '2023-01-01', '1000.00', '', 'a', 'Admin', '2023-01-01 12:50:30', NULL, NULL, 1),
(24, '230100001', '2023-01-01', '540.00', '', 'a', 'Admin', '2023-01-01 15:45:15', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salereturndetails`
--

CREATE TABLE `tbl_salereturndetails` (
  `SaleReturnDetails_SlNo` int(11) NOT NULL,
  `SaleReturn_IdNo` int(11) NOT NULL,
  `SaleReturnDetailsProduct_SlNo` int(11) NOT NULL,
  `SaleReturnDetails_ReturnQuantity` float NOT NULL,
  `SaleReturnDetails_ReturnAmount` decimal(18,2) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `SaleReturnDetails_brunchID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_salereturndetails`
--

INSERT INTO `tbl_salereturndetails` (`SaleReturnDetails_SlNo`, `SaleReturn_IdNo`, `SaleReturnDetailsProduct_SlNo`, `SaleReturnDetails_ReturnQuantity`, `SaleReturnDetails_ReturnAmount`, `Status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `SaleReturnDetails_brunchID`) VALUES
(2, 2, 7, 1, '14000.00', 'a', 'Admin', '2022-09-26 16:51:50', NULL, NULL, 1),
(3, 3, 18, 20, '42000.00', 'a', 'Admin', '2022-10-16 15:12:57', NULL, NULL, 1),
(4, 4, 15, 2, '4740.00', 'a', 'Admin', '2022-10-24 16:57:39', NULL, NULL, 1),
(5, 5, 13, 1, '27500.00', 'a', 'Admin', '2022-11-14 13:05:06', NULL, NULL, 1),
(6, 6, 28, 1, '120.00', 'a', 'Admin', '2022-11-16 12:42:48', NULL, NULL, 1),
(7, 7, 25, 1, '25000.00', 'a', 'Admin', '2022-11-17 11:21:14', NULL, NULL, 1),
(8, 8, 29, 10, '850.00', 'a', 'Admin', '2022-11-19 15:10:50', NULL, NULL, 1),
(9, 9, 29, 3, '255.00', 'a', 'Admin', '2022-11-19 15:42:47', NULL, NULL, 1),
(10, 9, 30, 5, '450.00', 'a', 'Admin', '2022-11-19 15:42:47', NULL, NULL, 1),
(11, 10, 29, 8, '680.00', 'a', 'Admin', '2022-11-19 16:26:39', NULL, NULL, 1),
(12, 10, 30, 1, '90.00', 'a', 'Admin', '2022-11-19 16:26:39', NULL, NULL, 1),
(13, 10, 32, 5, '1250.00', 'a', 'Admin', '2022-11-19 16:26:39', NULL, NULL, 1),
(14, 11, 29, 8, '680.00', 'a', 'Admin', '2022-11-19 16:33:56', NULL, NULL, 1),
(15, 11, 30, 1, '90.00', 'a', 'Admin', '2022-11-19 16:33:56', NULL, NULL, 1),
(16, 11, 32, 5, '1250.00', 'a', 'Admin', '2022-11-19 16:33:56', NULL, NULL, 1),
(17, 12, 29, 1, '85.00', 'a', 'Admin', '2022-11-19 18:35:23', NULL, NULL, 1),
(18, 12, 30, 1, '90.00', 'a', 'Admin', '2022-11-19 18:35:23', NULL, NULL, 1),
(19, 12, 32, 2, '500.00', 'a', 'Admin', '2022-11-19 18:35:23', NULL, NULL, 1),
(20, 1, 13, 4, '110000.00', 'a', 'Admin', '2022-11-22 22:43:13', NULL, NULL, 1),
(21, 13, 30, 1, '90.00', 'a', 'Admin', '2022-11-26 20:15:11', NULL, NULL, 1),
(22, 13, 38, 10, '100.00', 'a', 'Admin', '2022-11-26 20:15:11', NULL, NULL, 1),
(23, 14, 38, 10, '100.00', 'a', 'Admin', '2022-11-27 09:55:04', NULL, NULL, 1),
(24, 15, 36, 1, '3500.00', 'a', 'Admin', '2022-12-08 12:13:42', NULL, NULL, 1),
(25, 16, 21, 1, '26500.00', 'a', 'Admin', '2022-12-12 13:25:41', NULL, NULL, 1),
(26, 17, 46, 1, '400.00', 'a', 'Admin', '2022-12-17 20:30:17', NULL, NULL, 1),
(27, 18, 45, 2, '3000.00', 'a', 'Admin', '2022-12-20 16:32:52', NULL, NULL, 1),
(28, 19, 53, 5, '3500.00', 'a', 'Admin', '2022-12-20 17:05:17', NULL, NULL, 1),
(29, 19, 54, 2, '2000.00', 'a', 'Admin', '2022-12-20 17:05:17', NULL, NULL, 1),
(30, 20, 55, 2, '200.00', 'a', 'Admin', '2022-12-20 17:06:03', NULL, NULL, 1),
(31, 21, 55, 2, '200.00', 'a', 'Admin', '2022-12-20 17:09:02', NULL, NULL, 1),
(32, 22, 55, 1, '100.00', 'a', 'Admin', '2022-12-27 15:22:36', NULL, NULL, 1),
(33, 22, 56, 1, '90.00', 'a', 'Admin', '2022-12-27 15:22:36', NULL, NULL, 1),
(34, 23, 54, 1, '1000.00', 'a', 'Admin', '2023-01-01 12:50:30', NULL, NULL, 1),
(35, 24, 64, 1, '540.00', 'a', 'Admin', '2023-01-01 15:45:15', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salesmaster`
--

CREATE TABLE `tbl_salesmaster` (
  `SaleMaster_SlNo` int(11) NOT NULL,
  `SaleMaster_InvoiceNo` varchar(50) NOT NULL,
  `SaleMaster_MemoNo` varchar(155) DEFAULT NULL,
  `SalseCustomer_IDNo` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `SaleMaster_SaleDate` date NOT NULL,
  `SaleMaster_Description` longtext DEFAULT NULL,
  `SaleMaster_SaleType` varchar(50) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT 'Cash',
  `SaleMaster_TotalSaleAmount` decimal(18,2) NOT NULL,
  `SaleMaster_TotalDiscountAmount` decimal(18,2) NOT NULL,
  `SaleMaster_TaxAmount` decimal(18,2) NOT NULL,
  `SaleMaster_Freight` decimal(18,2) DEFAULT 0.00,
  `SaleMaster_SubTotalAmount` decimal(18,2) NOT NULL,
  `SaleMaster_PaidAmount` decimal(18,2) NOT NULL,
  `SaleMaster_DueAmount` decimal(18,2) NOT NULL,
  `SaleMaster_Previous_Due` double(18,2) DEFAULT NULL,
  `Status` char(1) NOT NULL DEFAULT 'a',
  `is_service` varchar(10) NOT NULL DEFAULT 'false',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `SaleMaster_branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_salesmaster`
--

INSERT INTO `tbl_salesmaster` (`SaleMaster_SlNo`, `SaleMaster_InvoiceNo`, `SaleMaster_MemoNo`, `SalseCustomer_IDNo`, `employee_id`, `SaleMaster_SaleDate`, `SaleMaster_Description`, `SaleMaster_SaleType`, `payment_type`, `SaleMaster_TotalSaleAmount`, `SaleMaster_TotalDiscountAmount`, `SaleMaster_TaxAmount`, `SaleMaster_Freight`, `SaleMaster_SubTotalAmount`, `SaleMaster_PaidAmount`, `SaleMaster_DueAmount`, `SaleMaster_Previous_Due`, `Status`, `is_service`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `SaleMaster_branchid`) VALUES
(1, '220100001', NULL, 3, NULL, '2022-09-24', '', 'retail', 'Cash', '6300.00', '0.00', '0.00', '0.00', '6300.00', '6300.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-09-24 16:17:47', NULL, NULL, 1),
(2, '220100002', NULL, 1, NULL, '2022-09-25', '', 'retail', 'Cash', '42000.00', '350.00', '0.00', '0.00', '42350.00', '0.00', '0.00', 1084122.00, 'a', 'false', 'Admin', '2022-09-25 12:32:29', NULL, NULL, 1),
(3, '220100003', NULL, 2, NULL, '2022-09-25', '', 'retail', 'Cash', '42000.00', '350.00', '0.00', '0.00', '42350.00', '42000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-09-25 12:36:46', NULL, NULL, 1),
(4, '220100004', NULL, 5, NULL, '2022-09-25', '', 'retail', 'Cash', '44500.00', '100.00', '0.00', '0.00', '44600.00', '44500.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-09-25 13:19:20', NULL, NULL, 1),
(5, '220100005', NULL, 6, NULL, '2022-09-25', '', 'retail', 'Cash', '16000.00', '0.00', '0.00', '0.00', '16000.00', '16000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-09-25 13:20:26', NULL, NULL, 1),
(6, '220100006', NULL, 7, NULL, '2022-09-25', '', 'retail', 'Cash', '7000.00', '0.00', '0.00', '700.00', '6300.00', '0.00', '7000.00', 0.00, 'a', 'false', 'Admin', '2022-09-25 19:31:18', NULL, NULL, 1),
(7, '220100007', NULL, 8, NULL, '2022-09-25', '', 'retail', 'Cash', '27000.00', '500.00', '0.00', '0.00', '27500.00', '5000.00', '22000.00', 0.00, 'a', 'false', 'Admin', '2022-09-25 19:43:03', NULL, NULL, 1),
(8, '220100008', NULL, 9, NULL, '2022-09-26', '', 'retail', 'Cash', '137500.00', '0.00', '0.00', '0.00', '137500.00', '137500.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-09-26 16:46:45', NULL, NULL, 1),
(9, '220100009', NULL, 10, NULL, '2022-09-26', '', 'retail', 'Cash', '13000.00', '1000.00', '0.00', '0.00', '14000.00', '13000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-09-26 16:48:45', NULL, NULL, 1),
(10, '220100010', NULL, 11, NULL, '2022-09-27', '', 'wholesale', 'Cash', '13000.00', '0.00', '0.00', '0.00', '13000.00', '13000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-09-27 14:47:38', NULL, NULL, 1),
(11, '220100011', NULL, 12, NULL, '2022-09-27', '', 'retail', 'Cash', '28000.00', '0.00', '0.00', '500.00', '27500.00', '15000.00', '13000.00', 0.00, 'a', 'false', 'Admin', '2022-09-27 15:46:51', NULL, NULL, 1),
(12, '220100012', NULL, 8, NULL, '2022-09-28', '', 'retail', 'Cash', '60364.70', '0.00', '0.00', '0.00', '60364.70', '60364.70', '0.00', 17999.00, 'a', 'false', 'Admin', '2022-09-28 17:15:58', NULL, NULL, 1),
(13, '220100013', NULL, 8, NULL, '2022-10-11', '', 'retail', 'Cash', '21500.00', '0.00', '0.00', '0.00', '21500.00', '20000.00', '1500.00', 17999.00, 'a', 'false', 'Admin', '2022-10-11 14:42:16', NULL, NULL, 1),
(14, '220100014', NULL, 13, NULL, '2022-10-13', '', 'retail', 'Cash', '23700.00', '0.00', '0.00', '0.00', '23700.00', '23700.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-13 11:26:50', NULL, NULL, 1),
(15, '220100015', NULL, 14, NULL, '2022-10-13', '', 'retail', 'Cash', '11000.00', '850.00', '0.00', '0.00', '11850.00', '11000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-13 11:29:52', NULL, NULL, 1),
(16, '220100016', NULL, 12, 2, '2022-10-15', '', 'retail', 'Cash', '6300.00', '0.00', '0.00', '0.00', '6300.00', '5000.00', '1300.00', 12000.00, 'a', 'false', 'Admin', '2022-10-15 23:01:16', NULL, NULL, 1),
(17, '220100017', NULL, 15, NULL, '2022-10-16', '', 'retail', 'Cash', '11850.00', '0.00', '0.00', '0.00', '11850.00', '0.00', '11850.00', 0.00, 'a', 'false', 'Admin', '2022-10-16 10:06:08', NULL, NULL, 1),
(18, '220100018', NULL, 15, NULL, '2022-10-16', '', 'retail', 'Cash', '640000.00', '0.00', '0.00', '0.00', '640000.00', '50000.00', '590000.00', 11850.00, 'a', 'false', 'Admin', '2022-10-16 15:10:53', NULL, NULL, 1),
(19, '220100019', NULL, 15, NULL, '2022-10-17', '', 'retail', 'Cash', '4200.00', '0.00', '0.00', '0.00', '4200.00', '0.00', '4200.00', 559850.00, 'a', 'false', 'Admin', '2022-10-17 15:15:22', NULL, NULL, 1),
(20, '220100020', NULL, 16, NULL, '2022-10-18', 'Testing product Sales ', 'retail', 'Cash', '20920.00', '100.00', '0.00', '20.00', '21000.00', '20920.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-18 14:46:04', NULL, NULL, 1),
(21, '220100021', NULL, 17, NULL, '2022-10-18', '', 'retail', 'Cash', '82500.00', '0.00', '0.00', '0.00', '82500.00', '82500.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-18 16:05:19', NULL, NULL, 1),
(22, '220100022', NULL, 12, NULL, '2022-10-19', '', 'retail', 'Cash', '141500.00', '200.00', '0.00', '0.00', '141700.00', '50000.00', '91500.00', 8300.00, 'a', 'false', 'Admin', '2022-10-19 11:36:26', NULL, NULL, 1),
(23, '220100023', NULL, 15, NULL, '2022-10-19', '', 'retail', 'Cash', '118156.80', '0.00', '0.00', '0.00', '118156.80', '0.00', '118156.80', 564000.00, 'a', 'false', 'Admin', '2022-10-19 16:33:26', NULL, NULL, 1),
(24, '220100024', NULL, 15, 3, '2022-10-20', '', 'retail', 'Cash', '2100.00', '0.00', '0.00', '0.00', '2100.00', '0.00', '2100.00', 682156.80, 'a', 'false', 'Admin', '2022-10-20 12:08:12', NULL, NULL, 1),
(25, '220100025', NULL, 15, NULL, '2022-10-20', '', 'retail', 'Cash', '82500.00', '0.00', '0.00', '0.00', '82500.00', '0.00', '82500.00', 684256.80, 'a', 'false', 'Admin', '2022-10-20 14:33:02', NULL, NULL, 1),
(26, '220100026', NULL, 12, 2, '2022-10-22', '', 'retail', 'Cash', '4200.00', '0.00', '0.00', '0.00', '4200.00', '4200.00', '0.00', 99800.00, 'a', 'false', 'Admin', '2022-10-22 18:25:47', NULL, NULL, 1),
(27, '220100027', NULL, 15, NULL, '2022-10-23', '', 'retail', 'Cash', '55000.00', '0.00', '0.00', '0.00', '55000.00', '50000.00', '5000.00', 766756.80, 'a', 'false', 'Admin', '2022-10-23 18:28:54', NULL, NULL, 1),
(28, '220100028', NULL, 18, NULL, '2022-10-24', '', 'retail', 'Cash', '2100.00', '0.00', '0.00', '0.00', '2100.00', '2100.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-24 17:53:06', NULL, NULL, 1),
(29, '220100029', NULL, 19, NULL, '2022-10-24', '', 'retail', 'Cash', '6795.71', '138.69', '0.00', '0.00', '6934.40', '6795.71', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-24 17:58:59', NULL, NULL, 1),
(30, '220100030', NULL, 20, NULL, '2022-10-24', '', 'retail', 'Cash', '2100.00', '0.00', '0.00', '0.00', '2100.00', '2100.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-24 21:29:13', NULL, NULL, 1),
(31, '220100031', NULL, 21, NULL, '2022-10-24', '', 'retail', 'Cash', '55000.00', '0.00', '0.00', '0.00', '55000.00', '55000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-24 21:31:00', NULL, NULL, 1),
(32, '220100032', NULL, 15, NULL, '2022-10-24', '', 'retail', 'Cash', '5257.41', '107.29', '0.00', '0.00', '5364.70', '500.00', '4757.41', 767016.80, 'a', 'false', 'Admin', '2022-10-24 21:33:08', NULL, NULL, 1),
(33, '220100033', NULL, 15, NULL, '2022-10-24', '', 'retail', 'Cash', '4200.00', '0.00', '0.00', '0.00', '4200.00', '771774.21', '-767574.21', 771774.21, 'a', 'false', 'Admin', '2022-10-24 21:35:16', NULL, NULL, 1),
(34, '220100034', NULL, 22, NULL, '2022-10-24', '', 'retail', 'Cash', '10500.00', '0.00', '0.00', '0.00', '10500.00', '500.00', '10000.00', 0.00, 'a', 'false', 'Admin', '2022-10-24 21:39:20', NULL, NULL, 1),
(35, '220100035', NULL, 22, NULL, '2022-10-24', '', 'retail', 'Cash', '11850.00', '0.00', '0.00', '0.00', '11850.00', '21850.00', '-10000.00', 10000.00, 'a', 'false', 'Admin', '2022-10-24 21:40:45', NULL, NULL, 1),
(36, '220100036', NULL, 15, NULL, '2022-10-25', 'drfg', 'retail', 'Cash', '65000.00', '200.00', '0.00', '0.00', '65200.00', '60000.00', '5000.00', 4200.00, 'a', 'false', 'Admin', '2022-10-25 12:34:46', NULL, NULL, 1),
(37, '220100037', NULL, 23, NULL, '2022-10-25', '', 'retail', 'Cash', '29440.00', '0.00', '0.00', '0.00', '29440.00', '29440.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-25 14:04:46', NULL, NULL, 1),
(38, '220100038', NULL, 22, NULL, '2022-10-26', '', 'retail', 'Cash', '1000.00', '0.00', '0.00', '0.00', '1000.00', '0.00', '1000.00', 0.00, 'a', 'false', 'Admin', '2022-10-26 11:07:54', NULL, NULL, 1),
(39, '220100039', NULL, 22, NULL, '2022-10-26', '', 'retail', 'Cash', '29500.00', '0.00', '0.00', '2000.00', '27500.00', '0.00', '29500.00', 1000.00, 'a', 'false', 'Admin', '2022-10-26 19:23:17', NULL, NULL, 1),
(40, '220100040', NULL, 24, NULL, '2022-10-26', '', 'retail', 'Cash', '2500.00', '50.00', '0.00', '0.00', '2550.00', '2500.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-26 19:45:55', NULL, NULL, 1),
(41, '220100041', NULL, 22, NULL, '2022-10-26', '', 'retail', 'Cash', '200.00', '0.00', '0.00', '0.00', '200.00', '0.00', '200.00', 30500.00, 'a', 'false', 'Admin', '2022-10-26 19:57:21', NULL, NULL, 1),
(42, '220100042', NULL, 22, NULL, '2022-10-26', '', 'retail', 'Cash', '200.00', '0.00', '0.00', '0.00', '200.00', '0.00', '200.00', 30700.00, 'a', 'false', 'Admin', '2022-10-26 20:40:26', NULL, NULL, 1),
(43, '220100043', NULL, 25, NULL, '2022-10-27', 'dgry', 'retail', 'Cash', '55440.00', '0.00', '0.00', '0.00', '55440.00', '40000.00', '15440.00', 0.00, 'a', 'false', 'Admin', '2022-10-27 17:47:48', NULL, NULL, 1),
(44, '220100044', NULL, 25, NULL, '2022-10-27', 'grhr', 'retail', 'Cash', '138000.00', '500.00', '0.00', '0.00', '138500.00', '130000.00', '8000.00', 15440.00, 'a', 'false', 'Admin', '2022-10-27 17:49:49', NULL, NULL, 1),
(45, '220100045', NULL, 27, NULL, '2022-10-30', '', 'retail', 'Cash', '2831700.00', '0.00', '0.00', '0.00', '2831700.00', '2831700.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-30 16:14:21', NULL, NULL, 1),
(46, '220100046', NULL, 28, NULL, '2022-10-30', '', 'retail', 'Cash', '53640.00', '0.00', '0.00', '0.00', '53640.00', '53640.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-30 16:15:01', NULL, NULL, 1),
(47, '220100047', NULL, 29, NULL, '2022-10-30', '', 'retail', 'Cash', '1457500.00', '0.00', '0.00', '0.00', '1457500.00', '1457500.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-30 16:29:55', NULL, NULL, 1),
(48, '220100048', NULL, 12, NULL, '2022-10-30', '', 'retail', 'Cash', '25200.00', '0.00', '0.00', '0.00', '25200.00', '20000.00', '5200.00', 89800.00, 'a', 'false', 'Admin', '2022-10-30 16:50:50', NULL, NULL, 1),
(49, '220100049', NULL, 30, NULL, '2022-10-31', '', 'retail', 'Cash', '26700.00', '0.00', '0.00', '0.00', '26700.00', '26700.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-31 12:12:46', NULL, NULL, 1),
(50, '220100050', NULL, 31, NULL, '2022-10-31', '', 'retail', 'Cash', '54800.00', '0.00', '0.00', '0.00', '54800.00', '54800.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-31 12:35:39', NULL, NULL, 1),
(51, '220100051', NULL, 32, NULL, '2022-10-31', '', 'retail', 'Cash', '57400.00', '0.00', '0.00', '0.00', '57400.00', '57400.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-31 12:39:12', NULL, NULL, 1),
(52, '220100052', NULL, 33, NULL, '2022-10-31', '', 'retail', 'Cash', '583000.00', '0.00', '0.00', '0.00', '583000.00', '583000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-31 12:57:28', NULL, NULL, 1),
(53, '220100053', NULL, 34, NULL, '2022-10-31', '', 'retail', 'Cash', '53000.00', '0.00', '0.00', '0.00', '53000.00', '53000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-31 13:01:51', NULL, NULL, 1),
(54, '220100054', NULL, 22, 2, '2022-10-31', '', 'retail', 'Cash', '2500.00', '0.00', '0.00', '130.00', '2370.00', '200.00', '2300.00', 20900.00, 'a', 'false', 'Admin', '2022-10-31 14:25:54', NULL, NULL, 1),
(55, '220100055', NULL, 12, NULL, '2022-10-31', '', 'retail', 'Cash', '4200.00', '0.00', '0.00', '0.00', '4200.00', '3000.00', '1200.00', 45000.00, 'a', 'false', 'Admin', '2022-10-31 15:47:55', NULL, NULL, 1),
(56, '220100056', NULL, 35, NULL, '2022-10-31', '', 'retail', 'Cash', '10500.00', '0.00', '0.00', '0.00', '10500.00', '10500.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-10-31 15:49:27', NULL, NULL, 1),
(57, '220100057', NULL, 36, NULL, '2022-11-01', '', 'retail', 'Cash', '54760.00', '0.00', '0.00', '0.00', '54760.00', '54760.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-01 15:30:37', NULL, NULL, 1),
(58, '220100058', NULL, 37, NULL, '2022-11-01', '', 'retail', 'Cash', '53400.00', '0.00', '0.00', '0.00', '53400.00', '53400.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-01 15:31:59', NULL, NULL, 1),
(59, '220100059', NULL, 38, 3, '2022-11-01', 'lgjksdlfvlsdmgdflmglcxmvlmfdhlkmfgmbm, llfhldfg;,sdg;mlf', 'retail', 'Cash', '24230.00', '2670.00', '0.00', '200.00', '26700.00', '24230.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-01 18:05:03', NULL, NULL, 1),
(60, '220100060', NULL, 39, NULL, '2022-11-02', '', 'retail', 'Cash', '4120.00', '0.00', '0.00', '0.00', '4120.00', '4120.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-02 16:54:03', NULL, NULL, 1),
(61, '220100061', NULL, 22, NULL, '2022-11-02', '', 'retail', 'Cash', '26750.00', '0.00', '0.00', '0.00', '26750.00', '15000.00', '11750.00', 22700.00, 'a', 'false', 'Admin', '2022-11-02 17:16:09', NULL, NULL, 1),
(62, '220100062', NULL, 26, NULL, '2022-11-05', '', 'retail', 'Cash', '250.00', '0.00', '0.00', '0.00', '250.00', '0.00', '250.00', 0.00, 'a', 'false', 'Admin', '2022-11-05 10:29:14', NULL, NULL, 1),
(63, '220100063', NULL, 26, NULL, '2022-11-05', '', 'retail', 'Cash', '500.00', '0.00', '0.00', '0.00', '500.00', '0.00', '500.00', 250.00, 'a', 'false', 'Admin', '2022-11-05 17:04:06', NULL, NULL, 1),
(64, '220100064', NULL, 22, NULL, '2022-11-05', 'trft6y', 'retail', 'Cash', '13750.00', '0.00', '0.00', '0.00', '13750.00', '3000.00', '10750.00', 34450.00, 'a', 'false', 'Admin', '2022-11-05 17:33:05', NULL, NULL, 1),
(65, '220100065', NULL, 40, NULL, '2022-11-07', '', 'retail', 'Cash', '105000.00', '0.00', '0.00', '0.00', '105000.00', '105000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-07 19:27:25', NULL, NULL, 1),
(66, '220100066', NULL, 41, NULL, '2022-11-07', '', 'retail', 'Cash', '112500.00', '0.00', '0.00', '0.00', '112500.00', '112500.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-07 19:29:00', NULL, NULL, 1),
(67, '220100067', NULL, 42, NULL, '2022-11-08', '', 'retail', 'Cash', '63000.00', '0.00', '0.00', '0.00', '63000.00', '63000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-08 10:36:53', NULL, NULL, 1),
(68, '220100068', NULL, 12, NULL, '2022-11-08', '', 'retail', 'Cash', '4734.40', '0.00', '0.00', '0.00', '4734.40', '2000.00', '2734.40', 26200.00, 'a', 'false', 'Admin', '2022-11-08 14:55:11', NULL, NULL, 1),
(69, '220100069', NULL, 43, NULL, '2022-11-09', '', 'retail', 'Cash', '42000.00', '0.00', '0.00', '0.00', '42000.00', '42000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-09 09:29:55', NULL, NULL, 1),
(70, '220100070', NULL, 44, NULL, '2022-11-09', '', 'retail', 'Cash', '25175.00', '1325.00', '0.00', '0.00', '26500.00', '25175.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-09 09:35:47', NULL, NULL, 1),
(71, '220100071', NULL, 45, NULL, '2022-11-09', '', 'retail', 'Cash', '21000.00', '0.00', '0.00', '0.00', '21000.00', '21000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-09 13:22:48', NULL, NULL, 1),
(72, '220100072', NULL, 26, NULL, '2022-11-10', '', 'retail', 'Cash', '42000.00', '0.00', '0.00', '0.00', '42000.00', '0.00', '42000.00', 250.00, 'a', 'false', 'Admin', '2022-11-10 17:11:32', NULL, NULL, 1),
(73, '220100073', NULL, 46, NULL, '2022-11-12', '', 'retail', 'Cash', '35968.80', '0.00', '0.00', '0.00', '35968.80', '35968.80', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-12 12:58:47', NULL, NULL, 1),
(74, '220100074', NULL, 12, NULL, '2022-11-12', '', 'retail', 'Cash', '210000.00', '0.00', '0.00', '0.00', '210000.00', '200000.00', '10000.00', 28934.40, 'a', 'false', 'Admin', '2022-11-12 13:10:19', NULL, NULL, 1),
(75, '220100075', NULL, 26, NULL, '2022-11-12', '', 'retail', 'Cash', '250.00', '0.00', '0.00', '0.00', '250.00', '250.00', '0.00', 42250.00, 'a', 'false', 'Admin', '2022-11-12 18:26:33', NULL, NULL, 1),
(76, '220100076', NULL, 22, NULL, '2022-11-13', '', 'retail', 'Cash', '500.00', '0.00', '0.00', '0.00', '500.00', '200.00', '300.00', 40200.00, 'a', 'false', 'Admin', '2022-11-13 12:10:47', NULL, NULL, 1),
(77, '220100077', NULL, 26, NULL, '2022-11-13', '', 'retail', 'Cash', '500.00', '0.00', '0.00', '0.00', '500.00', '0.00', '500.00', 42250.00, 'a', 'false', 'Admin', '2022-11-13 13:47:32', NULL, NULL, 1),
(78, '220100078', NULL, 15, NULL, '2022-11-13', '', 'retail', 'Cash', '27000.00', '0.00', '0.00', '0.00', '27000.00', '0.00', '27000.00', 0.00, 'a', 'false', 'Admin', '2022-11-13 15:02:06', NULL, NULL, 1),
(79, '220100079', NULL, 47, NULL, '2022-11-13', '', 'retail', 'Cash', '250.00', '0.00', '0.00', '0.00', '250.00', '250.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-13 20:53:45', NULL, NULL, 1),
(80, '220100080', NULL, 48, NULL, '2022-11-14', '', 'retail', 'Cash', '2620.00', '0.00', '0.00', '0.00', '2620.00', '2620.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-14 10:00:30', NULL, NULL, 1),
(81, '220100081', NULL, 25, NULL, '2022-11-14', '', 'retail', 'Cash', '1750.00', '0.00', '0.00', '0.00', '1750.00', '0.00', '1750.00', 0.00, 'a', 'false', 'Admin', '2022-11-14 11:19:47', NULL, NULL, 1),
(82, '220100082', NULL, 49, NULL, '2022-11-14', 'Testing Sales', 'retail', 'Cash', '294.00', '6.00', '0.00', '0.00', '300.00', '294.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-14 13:04:13', NULL, NULL, 1),
(83, '220100083', NULL, 26, NULL, '2022-11-14', 'Due Sales ', 'retail', 'Cash', '294.00', '6.00', '0.00', '0.00', '300.00', '100.00', '194.00', 37750.00, 'a', 'false', 'Admin', '2022-11-14 13:05:12', NULL, NULL, 1),
(84, '220100084', NULL, 50, NULL, '2022-11-14', '', 'retail', 'Cash', '26150.00', '1375.00', '0.00', '25.00', '27500.00', '26150.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-14 13:08:45', NULL, NULL, 1),
(85, '220100085', NULL, 26, NULL, '2022-11-14', '', 'retail', 'Cash', '51500.00', '0.00', '0.00', '0.00', '51500.00', '51500.00', '0.00', 37944.00, 'a', 'false', 'Admin', '2022-11-14 14:30:22', NULL, NULL, 1),
(86, '220100086', NULL, 51, NULL, '2022-11-14', '', 'retail', 'Cash', '132625.00', '6875.00', '0.00', '2000.00', '137500.00', '132000.00', '625.00', 0.00, 'a', 'false', 'Admin', '2022-11-14 17:18:32', NULL, NULL, 1),
(87, '220100087', NULL, 51, NULL, '2022-11-15', '', 'retail', 'Cash', '244.00', '0.00', '0.00', '0.00', '244.00', '0.00', '244.00', 625.00, 'a', 'true', 'Admin', '2022-11-15 14:35:50', NULL, NULL, 1),
(88, '220100088', NULL, 52, NULL, '2022-11-15', '', 'retail', 'Cash', '250.00', '0.00', '0.00', '0.00', '250.00', '250.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-15 15:53:20', NULL, NULL, 1),
(89, '220100089', NULL, 51, NULL, '2022-11-15', '', 'retail', 'Cash', '250.00', '0.00', '0.00', '0.00', '250.00', '0.00', '250.00', 869.00, 'a', 'false', 'Admin', '2022-11-15 17:06:19', NULL, NULL, 1),
(90, '220100090', NULL, 53, NULL, '2022-11-16', '', 'retail', 'Cash', '240.00', '0.00', '0.00', '0.00', '240.00', '0.00', '240.00', 0.00, 'a', 'false', 'Admin', '2022-11-16 12:36:48', NULL, NULL, 1),
(91, '220100091', NULL, 53, NULL, '2022-11-17', '', 'retail', 'Cash', '250.00', '0.00', '0.00', '0.00', '250.00', '0.00', '250.00', 120.00, 'a', 'false', 'Admin', '2022-11-17 17:01:03', NULL, NULL, 1),
(92, '220100092', NULL, 53, NULL, '2022-11-17', '', 'retail', 'Cash', '-265.00', '0.00', '0.00', '0.00', '-265.00', '0.00', '-265.00', 370.00, 'a', 'false', 'Admin', '2022-11-17 17:29:47', NULL, NULL, 1),
(93, '220100093', NULL, 22, NULL, '2022-11-19', '', 'retail', 'Cash', '332000.00', '0.00', '0.00', '2000.00', '330000.00', '0.00', '332000.00', 40500.00, 'a', 'false', 'Admin', '2022-11-19 14:37:16', NULL, NULL, 1),
(94, '220100094', NULL, 54, NULL, '2022-11-19', '', 'retail', 'Cash', '1700.00', '0.00', '0.00', '0.00', '1700.00', '0.00', '1700.00', 10000.00, 'a', 'false', 'Admin', '2022-11-19 15:05:39', NULL, NULL, 1),
(95, '220100095', NULL, 54, NULL, '2022-11-19', '', 'retail', 'Cash', '7600.00', '0.00', '0.00', '0.00', '7600.00', '0.00', '7600.00', 0.00, 'a', 'false', 'Admin', '2022-11-19 15:37:53', NULL, NULL, 1),
(96, '220100096', NULL, 54, NULL, '2022-11-16', '', 'retail', 'Cash', '13805.00', '0.00', '0.00', '0.00', '13805.00', '0.00', '13805.00', 6895.00, 'a', 'false', 'Admin', '2022-11-19 16:18:40', NULL, NULL, 1),
(97, '220100097', NULL, 54, NULL, '2022-11-16', '', 'retail', 'Cash', '19350.00', '0.00', '0.00', '0.00', '19350.00', '0.00', '19350.00', 20700.00, 'a', 'false', 'Admin', '2022-11-19 16:25:24', NULL, NULL, 1),
(98, '220100098', NULL, 55, NULL, '2022-11-19', '', 'retail', 'Cash', '21240.00', '0.00', '0.00', '0.00', '21240.00', '21240.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-19 18:31:31', NULL, NULL, 1),
(99, '220100099', NULL, 25, NULL, '2022-11-19', '', 'retail', 'Cash', '4720.00', '0.00', '0.00', '0.00', '4720.00', '4000.00', '720.00', -25750.00, 'a', 'false', 'Admin', '2022-11-19 18:46:15', NULL, NULL, 1),
(100, '220100100', NULL, 54, NULL, '2022-11-19', '', 'retail', 'Cash', '1250.00', '0.00', '0.00', '0.00', '1250.00', '0.00', '1250.00', 35335.00, 'a', 'false', 'Admin', '2022-11-19 22:21:50', NULL, NULL, 1),
(101, '220100101', NULL, 26, 2, '2022-11-21', '2rguwrgqiuruirhwqiu4uifwqih4ihfqwoihfihtoi3hr3oit', 'retail', 'Cash', '47500.00', '0.00', '0.00', '0.00', '47500.00', '20000.00', '27500.00', 12944.00, 'a', 'false', 'Admin', '2022-11-21 15:04:59', NULL, NULL, 1),
(102, '220100102', NULL, 25, NULL, '2022-11-21', '', 'retail', 'Cash', '120.00', '0.00', '0.00', '0.00', '120.00', '0.00', '120.00', -25030.00, 'a', 'false', 'Admin', '2022-11-21 15:15:30', NULL, NULL, 1),
(103, '220100103', NULL, 56, NULL, '2022-11-21', '', 'retail', 'Cash', '1000000.00', '0.00', '0.00', '0.00', '1000000.00', '1000000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-21 17:25:51', NULL, NULL, 1),
(104, '220100104', NULL, 57, NULL, '2022-11-21', '', 'retail', 'Cash', '100000000.00', '0.00', '0.00', '0.00', '100000000.00', '100000000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-21 17:42:52', NULL, NULL, 1),
(105, '220100105', NULL, 22, NULL, '2022-11-22', 'yt7h8y77u7h6gthy', 'retail', 'Cash', '1100.00', '0.00', '0.00', '0.00', '1100.00', '500.00', '600.00', 372500.00, 'a', 'false', 'Admin', '2022-11-22 15:33:52', NULL, NULL, 1),
(106, '220100106', NULL, 54, NULL, '2022-11-23', '', 'retail', 'Cash', '7650.00', '0.00', '0.00', '0.00', '7650.00', '650.00', '7000.00', 36585.00, 'a', 'false', 'Admin', '2022-11-23 11:45:24', NULL, NULL, 1),
(107, '220100107', NULL, 58, NULL, '2022-11-23', '', 'retail', 'Cash', '26670.00', '0.00', '0.00', '0.00', '26670.00', '26670.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-23 18:22:02', NULL, NULL, 1),
(108, '220100108', NULL, 54, NULL, '2022-11-24', '', 'retail', 'Cash', '6000.00', '0.00', '0.00', '0.00', '6000.00', '0.00', '6000.00', 43585.00, 'a', 'false', 'Admin', '2022-11-24 17:53:45', NULL, NULL, 1),
(109, '220100109', NULL, 51, NULL, '2022-11-26', 'gg', 'retail', 'Cash', '54000.00', '0.00', '0.00', '0.00', '54000.00', '50000.00', '4000.00', 619.00, 'a', 'false', 'Admin', '2022-11-26 12:18:36', NULL, NULL, 1),
(110, '220100110', NULL, 59, NULL, '2022-11-26', '', 'retail', 'Cash', '13600.00', '0.00', '0.00', '350.00', '13250.00', '0.00', '13600.00', 0.00, 'a', 'false', 'Admin', '2022-11-26 17:18:24', NULL, NULL, 1),
(111, '220100111', NULL, 59, NULL, '2022-11-26', '', 'retail', 'Cash', '2510.00', '0.00', '0.00', '0.00', '2510.00', '0.00', '2510.00', 13600.00, 'a', 'false', 'Admin', '2022-11-26 20:10:45', NULL, NULL, 1),
(112, '220100112', NULL, 59, NULL, '2022-11-27', '', 'retail', 'Cash', '6000.00', '0.00', '0.00', '0.00', '6000.00', '0.00', '6000.00', 3920.00, 'a', 'false', 'Admin', '2022-11-27 09:53:21', NULL, NULL, 1),
(113, '220100113', NULL, 59, NULL, '2022-11-27', '', 'retail', 'Cash', '1000.00', '0.00', '0.00', '0.00', '1000.00', '0.00', '1000.00', 9920.00, 'a', 'false', 'Admin', '2022-11-27 09:54:38', NULL, NULL, 1),
(114, '220100114', NULL, 60, NULL, '2022-11-27', '', 'wholesale', 'Cash', '8330.00', '0.00', '0.00', '0.00', '8330.00', '8330.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-27 11:06:51', NULL, NULL, 1),
(115, '220100115', NULL, 15, NULL, '2022-11-28', '', 'retail', 'Cash', '200.00', '0.00', '0.00', '0.00', '200.00', '50.00', '150.00', 17000.00, 'a', 'false', 'Admin', '2022-11-28 16:17:51', NULL, NULL, 1),
(116, '220100116', NULL, 59, NULL, '2022-11-28', '', 'retail', 'Cash', '25800.00', '0.00', '0.00', '600.00', '25200.00', '0.00', '25800.00', 10820.00, 'a', 'false', 'Admin', '2022-11-28 19:01:51', NULL, NULL, 1),
(117, '220100117', NULL, 22, 3, '2022-11-29', '', 'retail', 'Cash', '12100.00', '0.00', '0.00', '0.00', '12100.00', '0.00', '12100.00', 373100.00, 'a', 'false', 'Admin', '2022-11-29 16:44:04', NULL, NULL, 1),
(118, '220100118', NULL, 59, NULL, '2022-11-30', '', 'retail', 'Cash', '27200.00', '0.00', '0.00', '0.00', '27200.00', '0.00', '27200.00', 36620.00, 'a', 'false', 'Admin', '2022-11-30 11:56:32', NULL, NULL, 1),
(119, '220100119', NULL, 61, NULL, '2022-11-30', '', 'retail', 'Cash', '120.00', '0.00', '0.00', '0.00', '120.00', '120.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-11-30 15:11:19', NULL, NULL, 1),
(120, '220100120', NULL, 62, NULL, '2022-12-01', '', 'retail', 'Cash', '60.00', '0.00', '0.00', '0.00', '60.00', '60.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-01 12:33:27', NULL, NULL, 1),
(121, '220100121', NULL, 63, NULL, '2022-12-01', '', 'retail', 'Cash', '140.00', '0.00', '0.00', '0.00', '140.00', '140.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-01 14:10:09', NULL, NULL, 1),
(122, '220100122', NULL, 53, 5, '2022-12-01', '', 'retail', 'Cash', '20250.00', '0.00', '0.00', '0.00', '20250.00', '5000.00', '15250.00', 105.00, 'a', 'false', 'Admin', '2022-12-01 17:25:13', NULL, NULL, 1),
(123, '220100123', NULL, 59, NULL, '2022-12-03', '', 'retail', 'Cash', '6900.00', '0.00', '0.00', '0.00', '6900.00', '6900.00', '0.00', 63820.00, 'a', 'false', 'Admin', '2022-12-03 13:17:27', NULL, NULL, 1),
(124, '220100124', NULL, 12, NULL, '2022-12-03', '', 'retail', 'Cash', '950.00', '50.00', '0.00', '0.00', '1000.00', '0.00', '950.00', 13934.40, 'a', 'false', 'Admin', '2022-12-03 13:44:28', NULL, NULL, 1),
(125, '220100125', NULL, 12, NULL, '2022-12-03', '', 'retail', 'Cash', '10200.00', '0.00', '0.00', '0.00', '10200.00', '7000.00', '3200.00', 14884.40, 'a', 'false', 'Admin', '2022-12-03 16:10:33', NULL, NULL, 1),
(126, '220100126', NULL, 25, 5, '2022-12-03', '', 'retail', 'Cash', '13610.00', '0.00', '0.00', '0.00', '13610.00', '5000.00', '8610.00', -24910.00, 'a', 'false', 'Admin', '2022-12-03 17:41:16', NULL, NULL, 1),
(127, '220100127', NULL, 64, NULL, '2022-12-03', '', 'retail', 'Cash', '8500.00', '0.00', '0.00', '0.00', '8500.00', '8500.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-03 19:12:05', NULL, NULL, 1),
(128, '220100128', NULL, 15, NULL, '2022-12-03', '', 'retail', 'Cash', '20000.00', '100.00', '0.00', '0.00', '20100.00', '0.00', '20000.00', 17150.00, 'a', 'false', 'Admin', '2022-12-03 22:17:32', NULL, NULL, 1),
(129, '220100129', NULL, 59, NULL, '2022-12-04', '', 'retail', 'Cash', '15000.00', '0.00', '0.00', '0.00', '15000.00', '7000.00', '8000.00', 63820.00, 'a', 'false', 'Admin', '2022-12-04 16:11:21', NULL, NULL, 1),
(130, '220100130', NULL, 65, NULL, '2022-12-05', '', 'retail', 'Cash', '60.00', '0.00', '0.00', '0.00', '60.00', '60.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-05 10:46:00', NULL, NULL, 1),
(131, '220100131', NULL, 59, NULL, '2022-12-05', '', 'retail', 'Cash', '120.00', '0.00', '0.00', '0.00', '120.00', '0.00', '120.00', 71820.00, 'a', 'false', 'Admin', '2022-12-05 10:59:15', NULL, NULL, 1),
(132, '220100132', NULL, 54, NULL, '2022-12-05', '', 'retail', 'Cash', '10000.00', '200.00', '0.00', '0.00', '10200.00', '5000.00', '5000.00', 44585.00, 'a', 'false', 'Admin', '2022-12-05 12:12:30', NULL, NULL, 1),
(133, '220100133', NULL, 66, NULL, '2022-12-05', '', 'retail', 'Cash', '10.00', '0.00', '0.00', '0.00', '10.00', '10.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-05 15:00:05', NULL, NULL, 1),
(134, '220100134', NULL, 67, NULL, '2022-12-05', '', 'retail', 'Cash', '42500.00', '0.00', '0.00', '0.00', '42500.00', '42500.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-05 15:38:23', NULL, NULL, 1),
(135, '220100135', NULL, 8, NULL, '2022-12-06', '', 'retail', 'Cash', '8228.00', '0.00', '0.00', '0.00', '8228.00', '0.00', '8228.00', 19000.00, 'a', 'false', 'Admin', '2022-12-06 10:32:08', NULL, NULL, 1),
(136, '220100136', NULL, 59, NULL, '2022-12-06', 'oooooooo', 'retail', 'Cash', '2192.84', '8.16', '0.00', '0.00', '2201.00', '2192.84', '0.00', 71000.00, 'a', 'false', 'Admin', '2022-12-06 10:48:19', NULL, NULL, 1),
(137, '220100137', NULL, 53, NULL, '2022-12-06', '', 'retail', 'Cash', '5100.00', '0.00', '0.00', '0.00', '5100.00', '3000.00', '2100.00', 15355.00, 'a', 'false', 'Admin', '2022-12-06 10:52:12', NULL, NULL, 1),
(138, '220100138', NULL, 53, NULL, '2022-12-06', '', 'retail', 'Cash', '8860.00', '0.00', '0.00', '0.00', '8860.00', '0.00', '8860.00', 17455.00, 'a', 'false', 'Admin', '2022-12-06 10:57:57', NULL, NULL, 1),
(139, '220100139', NULL, 59, NULL, '2022-12-06', '', 'retail', 'Cash', '12236.40', '123.60', '0.00', '0.00', '12360.00', '0.00', '12236.40', 71000.00, 'a', 'false', 'Admin', '2022-12-06 11:24:22', NULL, NULL, 1),
(140, '220100140', NULL, 53, 2, '2022-12-06', '', 'retail', 'Cash', '2000.00', '0.00', '0.00', '0.00', '2000.00', '1400.00', '600.00', 26315.00, 'a', 'false', 'Admin', '2022-12-06 14:36:59', NULL, NULL, 1),
(141, '220100141', NULL, 59, NULL, '2022-12-06', '', 'retail', 'Cash', '60.00', '0.00', '0.00', '0.00', '60.00', '500.00', '-440.00', 83236.40, 'a', 'false', 'Admin', '2022-12-06 14:47:54', NULL, NULL, 1),
(142, '220100142', NULL, 59, NULL, '2022-12-06', '', 'retail', 'Cash', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '30.00', 82796.40, 'a', 'false', 'Admin', '2022-12-06 14:48:51', NULL, NULL, 1),
(143, '220100143', NULL, 0, NULL, '2022-12-06', '', 'retail', 'Cash', '520.00', '0.00', '0.00', '0.00', '520.00', '520.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-06 15:05:09', NULL, NULL, 1),
(144, '220100144', NULL, 54, NULL, '2022-12-06', '', 'retail', 'Cash', '550.00', '0.00', '0.00', '0.00', '550.00', '550.00', '0.00', 39585.00, 'a', 'false', 'Admin', '2022-12-06 15:05:43', NULL, NULL, 1),
(145, '220100145', NULL, 68, NULL, '2022-12-06', '', 'retail', 'Cash', '30.00', '0.00', '0.00', '0.00', '30.00', '30.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-06 15:51:32', NULL, NULL, 1),
(146, '220100146', NULL, 59, NULL, '2022-12-06', '', 'retail', 'Cash', '4336.00', '0.00', '0.00', '0.00', '4336.00', '0.00', '4336.00', 82826.40, 'a', 'false', 'Admin', '2022-12-06 15:52:23', NULL, NULL, 1),
(147, '220100147', NULL, 51, NULL, '2022-12-06', '', 'retail', 'Cash', '400.00', '0.00', '0.00', '0.00', '400.00', '400.00', '0.00', 4119.00, 'a', 'false', 'Admin', '2022-12-06 15:54:20', NULL, NULL, 1),
(148, '220100148', NULL, 69, NULL, '2022-12-06', '', 'retail', 'Cash', '3750.00', '0.00', '0.00', '0.00', '3750.00', '3750.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-06 19:42:22', NULL, NULL, 1),
(149, '220100149', NULL, 70, NULL, '2022-12-06', '', 'retail', 'Cash', '4818.00', '0.00', '0.00', '0.00', '4818.00', '4818.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-06 20:14:57', NULL, NULL, 1),
(150, '220100150', NULL, 71, NULL, '2022-12-06', '', 'retail', 'Cash', '3480.00', '50.00', '0.00', '0.00', '3530.00', '3480.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-06 20:17:11', NULL, NULL, 1),
(151, '220100151', NULL, 72, NULL, '2022-12-07', '', 'retail', 'Cash', '20.00', '0.00', '0.00', '0.00', '20.00', '20.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-07 14:59:19', NULL, NULL, 1),
(152, '220100152', NULL, 26, NULL, '2022-12-08', '', 'retail', 'Cash', '200.00', '0.00', '0.00', '0.00', '200.00', '0.00', '200.00', 25444.00, 'a', 'true', 'Admin', '2022-12-08 16:16:47', NULL, NULL, 1),
(153, '220100153', NULL, 73, NULL, '2022-12-10', '', 'retail', 'Cash', '4200.00', '0.00', '0.00', '0.00', '4200.00', '4200.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-10 12:03:15', NULL, NULL, 1),
(154, '220100154', NULL, 74, NULL, '2022-12-10', '', 'retail', 'Cash', '3000.00', '0.00', '0.00', '0.00', '3000.00', '3000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-10 12:33:44', NULL, NULL, 1),
(155, '220100155', NULL, 22, NULL, '2022-12-10', '', 'retail', 'Cash', '6340.00', '0.00', '0.00', '0.00', '6340.00', '6340.00', '0.00', 385200.00, 'a', 'false', 'Admin', '2022-12-10 13:23:25', NULL, NULL, 1),
(156, '220100156', NULL, 59, NULL, '2022-12-11', '', 'retail', 'Cash', '1500.00', '0.00', '0.00', '0.00', '1500.00', '1500.00', '0.00', 87162.40, 'a', 'false', 'Admin', '2022-12-11 12:20:08', NULL, NULL, 1),
(157, '220100157', NULL, 75, NULL, '2022-12-11', '', 'retail', 'Cash', '618.00', '0.00', '0.00', '0.00', '618.00', '618.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-11 13:13:35', NULL, NULL, 1),
(158, '220100158', NULL, 76, NULL, '2022-12-12', '', 'retail', 'Cash', '7200.00', '0.00', '0.00', '0.00', '7200.00', '7200.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-12 12:49:01', NULL, NULL, 1),
(159, '220100159', NULL, 59, NULL, '2022-12-13', '', 'retail', 'Cash', '4000.00', '0.00', '0.00', '0.00', '4000.00', '2000.00', '2000.00', 87162.40, 'a', 'false', 'Admin', '2022-12-13 09:50:22', NULL, NULL, 1),
(160, '220100160', NULL, 77, NULL, '2022-12-13', '', 'retail', 'Cash', '1500.00', '0.00', '0.00', '0.00', '1500.00', '1500.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-13 13:10:38', NULL, NULL, 1),
(161, '220100161', NULL, 78, NULL, '2022-12-13', '', 'retail', 'Cash', '6504.00', '0.00', '0.00', '0.00', '6504.00', '6504.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-13 16:45:09', NULL, NULL, 1),
(162, '220100162', NULL, 79, NULL, '2022-12-13', 'kutdkutdu', 'retail', 'Cash', '1000.00', '0.00', '0.00', '0.00', '1000.00', '1000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-13 19:23:12', NULL, NULL, 1),
(163, '220100163', NULL, 80, NULL, '2022-12-14', '', 'retail', 'Cash', '3700.00', '0.00', '0.00', '0.00', '3700.00', '3700.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-14 13:04:26', NULL, NULL, 1),
(164, '220100164', NULL, 81, 2, '2022-12-14', '', 'retail', 'Cash', '400.00', '0.00', '0.00', '0.00', '400.00', '400.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-14 13:33:39', NULL, NULL, 1),
(165, '220100165', NULL, 82, NULL, '2022-12-14', '', 'retail', 'Cash', '37920.00', '380.00', '0.00', '0.00', '38300.00', '37920.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-14 13:45:15', NULL, NULL, 1),
(166, '220100166', NULL, 54, NULL, '2022-12-15', '', 'retail', 'Cash', '44885.00', '115.00', '0.00', '0.00', '45000.00', '44885.00', '0.00', 34585.00, 'a', 'false', 'Admin', '2022-12-15 09:59:20', NULL, NULL, 1),
(167, '220100167', NULL, 53, NULL, '2022-12-15', '', 'retail', 'Cash', '12918.75', '331.25', '0.00', '0.00', '13250.00', '0.00', '12918.75', 11915.00, 'a', 'false', 'Admin', '2022-12-15 09:59:55', NULL, NULL, 1),
(168, '220100168', NULL, 25, NULL, '2022-12-15', '', 'retail', 'Cash', '18272.00', '0.00', '0.00', '0.00', '18272.00', '0.00', '18272.00', -16300.00, 'a', 'false', 'Admin', '2022-12-15 15:26:34', NULL, NULL, 1),
(169, '220900001', NULL, 83, NULL, '2022-12-15', '', 'retail', 'Cash', '9000.00', '0.00', '0.00', '0.00', '9000.00', '9000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-15 15:54:07', NULL, NULL, 9),
(170, '220100169', NULL, 51, NULL, '2022-12-15', '', 'retail', 'Cash', '150.00', '0.00', '0.00', '0.00', '150.00', '0.00', '150.00', -22381.00, 'a', 'false', 'Admin', '2022-12-15 16:53:24', NULL, NULL, 1),
(171, '220100170', NULL, 54, NULL, '2022-12-15', '', 'retail', 'Cash', '7500.00', '0.00', '0.00', '0.00', '7500.00', '0.00', '7500.00', 34585.00, 'a', 'false', 'Admin', '2022-12-15 18:00:56', NULL, NULL, 1),
(172, '220100171', NULL, 59, NULL, '2022-12-15', '', 'retail', 'Cash', '1600.00', '0.00', '0.00', '0.00', '1600.00', '0.00', '1600.00', 68162.40, 'a', 'true', 'Admin', '2022-12-15 18:02:29', NULL, NULL, 1),
(173, '220900002', NULL, 84, NULL, '2022-12-15', '', 'retail', 'Cash', '9000.00', '0.00', '0.00', '0.00', '9000.00', '9000.00', '0.00', 0.00, 'a', 'false', 'Zahir Hossain', '2022-12-15 18:15:50', NULL, NULL, 9),
(174, '220900003', NULL, 85, NULL, '2022-12-15', '', 'retail', 'Cash', '300.00', '0.00', '0.00', '0.00', '300.00', '300.00', '0.00', 0.00, 'a', 'false', 'Zahir Hossain', '2022-12-15 18:30:52', NULL, NULL, 9),
(175, '220100172', NULL, 86, NULL, '2022-12-16', '', 'retail', 'Cash', '3900.00', '0.00', '0.00', '0.00', '3900.00', '3900.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-16 15:09:51', NULL, NULL, 1),
(176, '220100173', NULL, 87, NULL, '2022-12-16', '', 'retail', 'Cash', '15000.00', '0.00', '0.00', '0.00', '15000.00', '15000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-16 18:59:19', NULL, NULL, 1),
(177, '220100174', NULL, 53, NULL, '2022-12-16', '', 'retail', 'Cash', '400.00', '0.00', '0.00', '0.00', '400.00', '0.00', '400.00', 24833.75, 'a', 'false', 'Admin', '2022-12-16 20:59:37', NULL, NULL, 1),
(178, '220100175', NULL, 59, NULL, '2022-12-16', '', 'retail', 'Cash', '1500.00', '0.00', '0.00', '0.00', '1500.00', '0.00', '1500.00', 69762.40, 'a', 'false', 'Admin', '2022-12-16 21:50:45', NULL, NULL, 1),
(179, '220100176', NULL, 15, NULL, '2022-12-17', '', 'retail', 'Cash', '9000.00', '0.00', '0.00', '0.00', '9000.00', '0.00', '9000.00', 37150.00, 'a', 'false', 'Admin', '2022-12-17 15:40:51', NULL, NULL, 1),
(180, '220100177', NULL, 12, NULL, '2022-12-17', '', 'retail', 'Cash', '200.00', '0.00', '0.00', '0.00', '200.00', '100.00', '100.00', 8084.40, 'a', 'true', 'Admin', '2022-12-17 16:47:49', NULL, NULL, 1),
(181, '220100178', NULL, 53, NULL, '2022-12-19', '', 'retail', 'Cash', '42174.00', '426.00', '0.00', '0.00', '42600.00', '2000.00', '40174.00', 233.75, 'a', 'false', 'Admin', '2022-12-19 14:23:21', NULL, NULL, 1),
(182, '220100179', NULL, 88, NULL, '2022-12-19', '', 'retail', 'Cash', '250.00', '50.00', '0.00', '0.00', '300.00', '250.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-19 17:01:25', NULL, NULL, 1),
(183, '220100180', NULL, 89, NULL, '2022-12-19', '', 'retail', 'Cash', '9000.00', '0.00', '0.00', '0.00', '9000.00', '9000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-19 19:55:22', NULL, NULL, 1),
(184, '220100181', NULL, 15, NULL, '2022-12-20', '', 'retail', 'Cash', '9000.00', '0.00', '0.00', '0.00', '9000.00', '0.00', '9000.00', 46150.00, 'a', 'false', 'Admin', '2022-12-20 12:10:53', NULL, NULL, 1),
(185, '220100182', NULL, 22, NULL, '2022-12-20', '', 'retail', 'Cash', '400.00', '0.00', '0.00', '0.00', '400.00', '0.00', '400.00', 385200.00, 'a', 'false', 'Admin', '2022-12-20 15:55:58', NULL, NULL, 1),
(186, '220100183', NULL, 90, NULL, '2022-12-20', '', 'retail', 'Cash', '20500.00', '0.00', '0.00', '0.00', '20500.00', '0.00', '20500.00', 50000.00, 'a', 'false', 'Admin', '2022-12-20 17:01:58', NULL, NULL, 1),
(187, '220100184', NULL, 91, NULL, '2022-12-20', '', 'retail', 'Cash', '600.00', '0.00', '0.00', '0.00', '600.00', '450.00', '150.00', 5000.00, 'a', 'false', 'Admin', '2022-12-20 17:04:02', NULL, NULL, 1),
(188, '220100185', NULL, 91, NULL, '2022-12-20', '', 'retail', 'Cash', '200.00', '0.00', '0.00', '0.00', '200.00', '0.00', '200.00', 4950.00, 'a', 'false', 'Admin', '2022-12-20 17:07:23', NULL, NULL, 1),
(189, '220100186', NULL, 92, NULL, '2022-12-20', '', 'retail', 'Cash', '1800.00', '0.00', '0.00', '0.00', '1800.00', '1600.00', '200.00', 0.00, 'a', 'false', 'Admin', '2022-12-20 17:31:42', NULL, NULL, 1),
(190, '220100187', NULL, 92, NULL, '2022-12-20', '', 'retail', 'Cash', '450.00', '0.00', '0.00', '0.00', '450.00', '300.00', '150.00', -100.00, 'a', 'false', 'Admin', '2022-12-20 17:37:25', NULL, NULL, 1),
(191, '220100188', NULL, 93, NULL, '2022-12-20', '', 'retail', 'Cash', '1200.00', '0.00', '0.00', '0.00', '1200.00', '1200.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-20 18:00:14', NULL, NULL, 1),
(192, '220100189', NULL, 94, NULL, '2022-12-21', '', 'retail', 'Cash', '540.00', '0.00', '0.00', '0.00', '540.00', '0.00', '540.00', 5000.00, 'a', 'false', 'Admin', '2022-12-21 09:32:31', NULL, NULL, 1),
(193, '220100190', NULL, 95, NULL, '2022-12-21', '', 'retail', 'Cash', '20000.00', '0.00', '0.00', '0.00', '20000.00', '20000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-21 12:31:43', NULL, NULL, 1),
(194, '220100191', NULL, 12, NULL, '2022-12-21', '', 'retail', 'Cash', '1500.00', '0.00', '0.00', '0.00', '1500.00', '1000.00', '500.00', 8184.40, 'a', 'false', 'Admin', '2022-12-21 12:32:43', NULL, NULL, 1),
(195, '220100192', NULL, 53, NULL, '2022-12-22', '', 'retail', 'Cash', '100.00', '0.00', '0.00', '0.00', '100.00', '100.00', '0.00', 40407.75, 'a', 'false', 'Admin', '2022-12-22 15:25:06', NULL, NULL, 1),
(196, '220100193', NULL, 94, NULL, '2022-12-22', '', 'retail', 'Cash', '500.00', '0.00', '0.00', '0.00', '500.00', '0.00', '500.00', 5540.00, 'a', 'false', 'Admin', '2022-12-22 15:28:20', NULL, NULL, 1),
(197, '220100194', NULL, 94, NULL, '2022-12-24', '', 'retail', 'Cash', '19500.00', '0.00', '0.00', '0.00', '19500.00', '10000.00', '9500.00', 6040.00, 'a', 'false', 'Admin', '2022-12-24 14:27:16', NULL, NULL, 1),
(198, '220100195', NULL, 96, NULL, '2022-12-24', '', 'retail', 'Cash', '1000.00', '0.00', '0.00', '0.00', '1000.00', '1000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-24 14:36:32', NULL, NULL, 1),
(199, '220100196', NULL, 94, NULL, '2022-12-24', '', 'retail', 'Cash', '1500.00', '0.00', '0.00', '0.00', '1500.00', '0.00', '1500.00', 13540.00, 'a', 'false', 'Admin', '2022-12-24 15:45:52', NULL, NULL, 1),
(200, '220100197', NULL, 94, NULL, '2022-12-26', '', 'retail', 'Cash', '500.00', '200.00', '0.00', '0.00', '700.00', '0.00', '500.00', 15040.00, 'a', 'false', 'Admin', '2022-12-26 12:46:48', NULL, NULL, 1),
(201, '220100198', NULL, 94, NULL, '2022-12-26', '', 'retail', 'Cash', '3400.00', '0.00', '0.00', '0.00', '3400.00', '0.00', '3400.00', 15540.00, 'a', 'false', 'Admin', '2022-12-26 13:34:04', NULL, NULL, 1),
(202, '220100199', NULL, 54, 6, '2022-12-26', '', 'retail', 'Cash', '700.00', '0.00', '0.00', '0.00', '700.00', '0.00', '700.00', 37085.00, 'a', 'false', 'Admin', '2022-12-26 21:29:36', NULL, NULL, 1),
(203, '220100200', NULL, 94, 2, '2022-12-27', 'nfjsngsnajdngunasfhn', 'retail', 'Cash', '650.00', '0.00', '0.00', '0.00', '650.00', '300.00', '350.00', 18940.00, 'a', 'false', 'Admin', '2022-12-27 15:18:40', NULL, NULL, 1),
(204, '220100201', NULL, 97, NULL, '2022-12-29', '', 'retail', 'Cash', '90.00', '0.00', '0.00', '0.00', '90.00', '90.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-29 16:07:42', NULL, NULL, 1),
(205, '220100202', NULL, 98, NULL, '2022-12-29', '', 'retail', 'Cash', '18000.00', '0.00', '0.00', '0.00', '18000.00', '18000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-29 18:42:45', NULL, NULL, 1),
(206, '220100203', NULL, 101, NULL, '2022-12-29', '', 'retail', 'Cash', '56000.00', '0.00', '0.00', '0.00', '56000.00', '0.00', '56000.00', 0.00, 'a', 'false', 'Admin', '2022-12-29 18:59:23', NULL, NULL, 1),
(207, '220100204', NULL, 100, NULL, '2022-12-29', '', 'retail', 'Cash', '54000.00', '0.00', '0.00', '0.00', '54000.00', '0.00', '54000.00', 0.00, 'a', 'false', 'Admin', '2022-12-29 18:59:58', NULL, NULL, 1),
(208, '220100205', NULL, 101, NULL, '2022-12-29', '', 'retail', 'Cash', '108712.00', '1200.00', '0.00', '0.00', '109912.00', '108712.00', '0.00', 56000.00, 'a', 'false', 'Admin', '2022-12-29 19:08:57', NULL, NULL, 1),
(209, '220100206', NULL, 12, NULL, '2022-12-30', '', 'retail', 'Cash', '10800.00', '0.00', '0.00', '0.00', '10800.00', '5000.00', '5800.00', 6684.40, 'a', 'false', 'Admin', '2022-12-30 11:06:49', NULL, NULL, 1),
(210, '220100207', NULL, 102, NULL, '2022-12-30', '', 'retail', 'Cash', '24300.00', '0.00', '0.00', '0.00', '24300.00', '24300.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-30 11:09:51', NULL, NULL, 1),
(211, '220100208', NULL, 103, NULL, '2022-12-30', '', 'retail', 'Cash', '56000.00', '0.00', '0.00', '0.00', '56000.00', '56000.00', '0.00', 0.00, 'a', 'false', 'Admin', '2022-12-30 11:50:44', NULL, NULL, 1),
(212, '220100209', NULL, 101, NULL, '2022-12-30', '', 'retail', 'Cash', '5400.00', '0.00', '0.00', '0.00', '5400.00', '0.00', '5400.00', 54000.00, 'a', 'false', 'Admin', '2022-12-30 12:00:33', NULL, NULL, 1),
(213, '220100210', NULL, 104, NULL, '2022-12-30', '', 'retail', 'Cash', '84000.00', '0.00', '0.00', '0.00', '84000.00', '0.00', '84000.00', 5000.00, 'a', 'false', 'Admin', '2022-12-30 14:53:28', NULL, NULL, 1),
(214, '220100211', NULL, 100, NULL, '2022-12-30', '', 'retail', 'Cash', '540.00', '0.00', '0.00', '0.00', '540.00', '300.00', '240.00', 54000.00, 'a', 'false', 'Admin', '2022-12-30 14:54:29', NULL, NULL, 1),
(215, '220100212', NULL, 101, NULL, '2022-12-30', '', 'retail', 'Cash', '11200.00', '0.00', '0.00', '400.00', '10800.00', '0.00', '11200.00', 59400.00, 'a', 'false', 'Admin', '2022-12-30 16:01:49', NULL, NULL, 1),
(216, '230100001', NULL, 105, NULL, '2023-01-01', '', 'retail', 'Cash', '20000.00', '0.00', '0.00', '1500.00', '18500.00', '5000.00', '15000.00', 0.00, 'a', 'false', 'Admin', '2023-01-01 11:39:30', NULL, NULL, 1),
(217, '230100002', NULL, 100, NULL, '2023-01-01', '30 দিনের মধ্যে টাকা  দিবেন।', 'retail', 'Cash', '18000.00', '0.00', '0.00', '360.00', '17640.00', '10000.00', '8000.00', 54240.00, 'a', 'false', 'Admin', '2023-01-01 12:05:36', 'Admin', '2023-01-01 12:15:56', 1),
(218, '230100003', NULL, 105, 6, '2023-01-01', '', 'retail', 'Cash', '10500.00', '0.00', '0.00', '500.00', '10000.00', '20000.00', '-9500.00', 15000.00, 'a', 'false', 'Admin', '2023-01-01 12:26:31', NULL, NULL, 1),
(219, '230100004', NULL, 106, NULL, '2023-01-01', 'সিমেন্ট, বেসিন বাবদ ভাড়া', 'retail', 'Cash', '21128.80', '0.00', '0.00', '1000.00', '20128.80', '1128.00', '20000.80', 0.00, 'a', 'false', 'Admin', '2023-01-01 20:58:58', NULL, NULL, 1),
(220, '230100005', NULL, 107, NULL, '2023-01-08', '', 'wholesale', 'Cash', '52630.00', '0.00', '0.00', '0.00', '52630.00', '30000.00', '22630.00', 0.00, 'a', 'false', 'Admin', '2023-01-08 20:24:28', NULL, NULL, 1),
(221, '230100006', NULL, 105, NULL, '2023-01-08', '', 'retail', 'Cash', '1600.00', '0.00', '0.00', '0.00', '1600.00', '0.00', '1600.00', 2000.00, 'a', 'true', 'Admin', '2023-01-08 21:29:30', NULL, NULL, 1),
(222, '230200001', NULL, 109, NULL, '2023-01-10', '', 'retail', 'Cash', '27200.00', '0.00', '0.00', '0.00', '27200.00', '27200.00', '0.00', 0.00, 'a', 'false', 'Link Up', '2023-01-10 18:09:33', NULL, NULL, 2),
(223, '230100007', 'Test157451', 106, 3, '2023-02-11', 'TEst', 'retail', 'Cash', '5400.00', '0.00', '0.00', '0.00', '5400.00', '5400.00', '0.00', 19500.80, 'a', 'false', 'Admin', '2023-02-11 15:51:01', 'Admin', '2023-02-11 15:53:05', 1),
(224, '230100008', '346456546', 15, NULL, '2023-02-12', 'fgcjhjgmj', 'retail', 'Cash', '10800.00', '0.00', '0.00', '0.00', '10800.00', '10800.00', '0.00', 55150.00, 'a', 'false', 'Admin', '2023-02-12 10:36:05', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms`
--

CREATE TABLE `tbl_sms` (
  `row_id` int(11) NOT NULL,
  `number` varchar(30) NOT NULL,
  `sms_text` varchar(500) NOT NULL,
  `sent_by` int(11) NOT NULL,
  `sent_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_settings`
--

CREATE TABLE `tbl_sms_settings` (
  `sms_enabled` varchar(50) NOT NULL DEFAULT 'false',
  `api_key` varchar(500) DEFAULT NULL,
  `sms_type` varchar(50) NOT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `bulk_url` varchar(1000) DEFAULT NULL,
  `url_2` varchar(1000) DEFAULT NULL,
  `bulk_url_2` varchar(1000) DEFAULT NULL,
  `sender_id` varchar(200) DEFAULT NULL,
  `sender_id_2` varchar(200) DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `sender_name` varchar(200) NOT NULL,
  `sender_phone` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sms_settings`
--

INSERT INTO `tbl_sms_settings` (`sms_enabled`, `api_key`, `sms_type`, `url`, `bulk_url`, `url_2`, `bulk_url_2`, `sender_id`, `sender_id_2`, `user_id`, `password`, `country_code`, `sender_name`, `sender_phone`) VALUES
('false', 'C2003631601c03803cde57.82758523', 'unicode', 'http://esms.linktechbd.com/smsapi', 'http://esms.linktechbd.com/smsapimany', 'http://mshastra.com/sendurl.aspx', 'http://mshastra.com/sendurlcomma.aspx', 'Link-UpTech', 'BigTech Ltd', '20102047', 'BTL@432', '+880', 'Link-Up Technology', '01911-978897');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `Supplier_SlNo` int(11) NOT NULL,
  `Supplier_Code` varchar(50) NOT NULL,
  `Supplier_Name` varchar(150) NOT NULL,
  `Supplier_Type` varchar(50) NOT NULL,
  `Supplier_Phone` varchar(50) NOT NULL,
  `Supplier_Mobile` varchar(15) NOT NULL,
  `Supplier_Email` varchar(50) NOT NULL,
  `Supplier_OfficePhone` varchar(50) NOT NULL,
  `Supplier_Address` varchar(300) NOT NULL,
  `contact_person` varchar(250) DEFAULT NULL,
  `District_SlNo` int(11) NOT NULL,
  `Country_SlNo` int(11) NOT NULL,
  `Supplier_Web` varchar(150) NOT NULL,
  `previous_due` decimal(18,2) NOT NULL,
  `image_name` varchar(1000) DEFAULT NULL,
  `Status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `Supplier_brinchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`Supplier_SlNo`, `Supplier_Code`, `Supplier_Name`, `Supplier_Type`, `Supplier_Phone`, `Supplier_Mobile`, `Supplier_Email`, `Supplier_OfficePhone`, `Supplier_Address`, `contact_person`, `District_SlNo`, `Country_SlNo`, `Supplier_Web`, `previous_due`, `image_name`, `Status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `Supplier_brinchid`) VALUES
(1, 'S00001', 'S&A International', '', '', '01758121718', 'ajmain.tds@gmail.com', '', '3072,Sk.Mujib Road,Agrabad,Chattogram', 'Mohammad Shahedul Islam', 0, 0, '', '7720304.00', 'S00001', 'd', 'Admin', '2022-09-21 19:23:37', 'Admin', '2022-09-23 02:02:13', 1),
(2, 'S00002', 'Leo King International ', '', '', '88029353302', '', '', '5,Bijoy Nagor,Dhaka', '', 0, 0, '', '0.00', NULL, 'd', 'Admin', '2022-09-22 15:59:40', NULL, NULL, 1),
(3, 'S00003', 'HAMIM ELECTONICS ', '', '', '01711153820', 'info@greensony.com', '', 'Plot # 09, Shop # 47 No. Muktijoddha Super Market (3rd Floor), Mirpur-1', 'MD LOKMAN', 0, 0, '', '0.00', NULL, 'd', 'Admin', '2022-09-25 19:35:57', NULL, NULL, 1),
(4, 'S00004', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-10-11 13:28:44', NULL, NULL, 1),
(5, 'S00005', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-10-11 13:29:55', NULL, NULL, 1),
(6, 'S00006', 'H', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-10-12 14:37:11', NULL, NULL, 1),
(7, 'S00007', 'Rakhal Bosak Sharee', '', '', '123456789', '', '', 'tangail', 'Rakhal Bosak Sharee', 0, 0, '', '100000.00', NULL, 'd', 'Admin', '2022-10-13 11:22:07', NULL, NULL, 1),
(8, 'S00008', 'sunny ', '', '', '01877196562', 'md.sany13@gmail.com', '', 'dhanmondi ', 'sunny b', 0, 0, '', '0.00', NULL, 'd', 'Admin', '2022-10-16 12:53:54', NULL, NULL, 1),
(9, 'S00009', 'StarTech ', '', '', '0176555555', '', '', 'Dhaka ', 'Habibur Rahman ', 0, 0, '', '200000.00', NULL, 'a', 'Admin', '2022-10-18 16:01:41', 'Admin', '2022-10-30 18:21:33', 1),
(10, 'S00010', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-10-30 10:30:27', NULL, NULL, 1),
(11, 'S00011', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-10-31 15:53:13', NULL, NULL, 1),
(12, 'S00012', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-11-07 18:55:36', 'Admin', '2022-11-07 19:10:59', 1),
(13, 'S00013', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-11-07 19:15:56', 'Admin', '2022-11-07 19:17:06', 1),
(14, 'S00014', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-11-09 10:22:33', NULL, NULL, 6),
(15, 'S00015', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-11-09 13:24:15', NULL, NULL, 1),
(16, 'S00016', 'Yoko Food', '', '', '4520252', '', '', '', '', 0, 0, '', '0.00', NULL, 'd', 'Admin', '2022-11-13 15:41:10', NULL, NULL, 1),
(17, 'S00017', 'siplu', '', '', '1234567890', '', '', 'moluvibazar', 'hm enterprise', 0, 0, '', '0.00', NULL, 'd', 'Admin', '2022-11-19 14:54:09', 'Admin', '2022-11-19 14:54:09', 1),
(18, 'S00018', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-11-19 15:33:42', NULL, NULL, 1),
(19, 'S00019', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-11-19 16:10:47', NULL, NULL, 1),
(20, 'S00020', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-11-19 16:16:41', NULL, NULL, 1),
(21, 'S00021', 'MM Exports & Imports', '', '', '01345454848', '', '', 'Dhaka- Bangladesh', 'Mr Juwel Rana', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-11-20 10:37:57', NULL, NULL, 7),
(22, 'S00022', 'Rajkumari Enterprize', '', '', '01545484884', '', '', 'Chattogram- Bangladesh', 'Bappa Mazumdar', 0, 0, '', '10000.00', NULL, 'a', 'Admin', '2022-11-20 10:39:34', NULL, NULL, 7),
(23, 'S00023', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-11-20 10:43:39', NULL, NULL, 1),
(24, 'S00024', 'BCL Board Mills Ltd.', '', '', '01313780201', '', '', 'Bogura', 'TMSS', 0, 0, '', '0.00', NULL, 'd', 'Admin', '2022-11-26 17:15:33', NULL, NULL, 1),
(25, 'S00025', 'Rashid Rice Mi', '', '', '8888', '', '', 'jjj', 'hhh', 0, 0, '', '0.00', NULL, 'd', 'Admin', '2022-11-27 13:00:21', NULL, NULL, 1),
(26, 'S00026', 'asad hasan', '', '', '01711236543', '', '', 'sonadanga khulna', 'saiam', 0, 0, '', '0.00', NULL, 'd', 'Admin', '2022-12-01 12:24:07', NULL, NULL, 1),
(27, 'S00027', 'PRAN DEARY', '', '', '01312546578', '', '', ' TOOTPARA ', '', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-12-01 12:49:36', NULL, NULL, 1),
(28, 'S00028', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-12-10 12:33:02', NULL, NULL, 1),
(29, 'S00029', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-12-14 12:27:47', NULL, NULL, 1),
(30, 'S00030', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-12-15 15:53:11', NULL, NULL, 9),
(31, 'S00031', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Zahir Hossain', '2022-12-15 18:25:27', NULL, NULL, 9),
(32, 'S00032', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-12-19 14:26:54', NULL, NULL, 1),
(33, 'S00033', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-12-19 14:28:47', NULL, NULL, 1),
(34, 'S00034', 'Rfl', '', '', '0888888', 'jgjgh@hghg.com', '', 'mirpur 2', 'Robi', 0, 0, '', '300000.00', NULL, 'd', 'Admin', '2022-12-20 16:56:31', NULL, NULL, 1),
(35, 'S00035', 'maruf', '', '', '01917794667', '', '', 'framgate', 'jahid', 0, 0, '', '100000.00', NULL, 'd', 'Admin', '2022-12-20 16:56:46', 'Admin', '2022-12-21 09:26:41', 1),
(36, 'S00036', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-12-21 12:51:07', NULL, NULL, 1),
(37, 'S00037', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-12-27 13:11:57', NULL, NULL, 1),
(38, 'S00038', 'Salman Khan', '', '', '01910796885', '', '', 'Mirpur-10', '', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-12-29 18:31:05', NULL, NULL, 1),
(39, 'S00039', 'Salman Enterprise', '', '', '01978453432', '', '', 'Mirpur 11', '', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-12-29 18:32:29', NULL, NULL, 1),
(40, 'S00040', 'Salman Traders', '', '', '01945987684', '', '', 'Mirpur 13', '', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-12-29 18:33:35', NULL, NULL, 1),
(41, 'S00041', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-12-30 11:05:00', NULL, NULL, 1),
(42, 'S00042', 'Aman Enterprise', '', '', '01710796885', '', '', 'Mirpur 10', 'Amin', 0, 0, '', '50000.00', NULL, 'd', 'Admin', '2022-12-30 12:04:19', NULL, NULL, 1),
(43, 'S00043', 'Sajid enterprise', '', '', '01712879421', '', '', '', 'Mr. Salim khan', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2023-01-01 16:17:42', NULL, NULL, 1),
(44, 'S00044', 'হাওলাদার এন্টারপ্রাইজ', '', '', '01712 16 98 62', '', '', 'বিসিক, পটুয়াখালী।', 'জনাব, মোঃ সুলতান হাজী', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2023-01-01 21:10:19', NULL, NULL, 1),
(45, 'S00045', 'ADB ', '', '', '017100 233 26', '', '', 'হেতালিয়া বাঁধঘাট, পটুয়াখালী।', ' মোঃ মোস্তাফিজুর রহমান (অলি) ', 0, 0, '', '0.00', 'S00045', 'a', 'Admin', '2023-01-01 21:13:13', NULL, NULL, 1),
(46, 'S00046', 'জনাব,মোঃ নাসিম', '', '', '01713 95 83 74', '', '', 'বিসিক , পটুয়াখালী।', '', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2023-01-01 21:15:12', NULL, NULL, 1),
(47, 'S00047', 'TKC FRUITS & VEGETABLE', '', '', '006017889546', '', '', 'SELAYANG INDAH', '', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2023-01-08 20:38:48', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier_payment`
--

CREATE TABLE `tbl_supplier_payment` (
  `SPayment_id` int(11) NOT NULL,
  `SPayment_date` date DEFAULT NULL,
  `SPayment_invoice` varchar(20) DEFAULT NULL,
  `SPayment_customerID` varchar(20) DEFAULT NULL,
  `SPayment_TransactionType` varchar(25) DEFAULT NULL,
  `SPayment_amount` decimal(18,2) DEFAULT NULL,
  `SPayment_Paymentby` varchar(20) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `SPayment_notes` varchar(225) DEFAULT NULL,
  `SPayment_brunchid` int(11) DEFAULT NULL,
  `SPayment_status` varchar(2) DEFAULT NULL,
  `SPayment_Addby` varchar(100) DEFAULT NULL,
  `SPayment_AddDAte` date DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `SPayment_UpdateDAte` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_supplier_payment`
--

INSERT INTO `tbl_supplier_payment` (`SPayment_id`, `SPayment_date`, `SPayment_invoice`, `SPayment_customerID`, `SPayment_TransactionType`, `SPayment_amount`, `SPayment_Paymentby`, `account_id`, `SPayment_notes`, `SPayment_brunchid`, `SPayment_status`, `SPayment_Addby`, `SPayment_AddDAte`, `update_by`, `SPayment_UpdateDAte`) VALUES
(1, '2022-09-24', 'TR00001', '1', 'CP', '200000.00', 'cash', NULL, 'Isalami bank2001', 1, 'a', 'Admin', '2022-09-24', NULL, NULL),
(2, '2022-09-24', 'TR00002', '1', 'CP', '10000.00', 'cash', NULL, 'cash', 1, 'a', 'Admin', '2022-09-24', NULL, NULL),
(3, '2022-09-24', 'TR00003', '1', 'CP', '2000.00', 'bank', 1, 'AB jgjjg120', 1, 'a', 'Admin', '2022-09-24', NULL, NULL),
(4, '2022-10-13', 'TR00004', '7', 'CP', '10000.00', 'cash', NULL, 'by bkash', 1, 'a', 'Admin', '2022-10-13', NULL, NULL),
(5, '2022-10-18', 'TR00005', '9', 'CP', '600000.00', 'cash', NULL, '', 1, 'a', 'Admin', '2022-10-18', NULL, NULL),
(6, '2022-11-01', 'TR00006', '9', 'CP', '1300.00', 'cash', NULL, '', 1, 'a', 'Admin', '2022-11-01', NULL, NULL),
(7, '2022-11-09', 'TR00007', '7', 'CP', '5000.00', 'bank', 2, 'mhfsdxhmgx', 1, 'a', 'Admin', '2022-11-09', NULL, NULL),
(8, '2022-11-19', 'TR00008', '17', 'CP', '1000.00', 'cash', NULL, '', 1, 'a', 'Admin', '2022-11-19', NULL, NULL),
(9, '2022-11-23', 'TR00009', '16', 'CP', '20000.00', 'bank', 1, '', 1, 'a', 'Admin', '2022-11-23', NULL, NULL),
(10, '2022-11-28', 'TR00010', '3', 'CP', '5000.00', 'cash', NULL, 'yhvj', 1, 'a', 'Admin', '2022-11-28', NULL, NULL),
(11, '2022-12-01', 'TR00011', '27', 'CP', '10000.00', 'cash', NULL, '', 1, 'a', 'Admin', '2022-12-01', NULL, NULL),
(12, '2022-12-03', 'TR00012', '27', 'CP', '20000.00', 'bank', 1, 'Cheque 2222', 1, 'a', 'Admin', '2022-12-03', NULL, NULL),
(13, '2022-12-03', 'TR00013', '25', 'CP', '5000.00', 'cash', NULL, '', 1, 'a', 'Admin', '2022-12-03', NULL, NULL),
(14, '2022-12-05', 'TR00014', '16', 'CP', '100000.00', 'bank', 1, '', 1, 'a', 'Admin', '2022-12-05', NULL, NULL),
(15, '2022-12-06', 'TR00015', '9', 'CP', '1000000.00', 'cash', NULL, '', 1, 'a', 'Admin', '2022-12-06', NULL, NULL),
(16, '2022-12-10', 'TR00016', '27', 'CP', '50000.00', 'bank', 1, 'yvhgvujh', 1, 'a', 'Admin', '2022-12-10', NULL, NULL),
(17, '2022-12-11', 'TR00017', '24', 'CP', '2000.00', 'bank', 1, '', 1, 'a', 'Admin', '2022-12-11', NULL, NULL),
(18, '2022-12-12', 'TR00018', '26', 'CP', '2000.00', 'cash', NULL, '', 1, 'a', 'Admin', '2022-12-12', NULL, NULL),
(19, '2022-12-13', 'TR00019', '25', 'CP', '100000.00', 'bank', 1, '', 1, 'a', 'Admin', '2022-12-13', NULL, NULL),
(20, '2022-12-13', 'TR00020', '25', 'CP', '2000.00', 'bank', 1, '', 1, 'a', 'Admin', '2022-12-13', NULL, NULL),
(21, '2022-12-17', 'TR00021', '26', 'CP', '2000.00', 'cash', NULL, 'cash', 1, 'a', 'Admin', '2022-12-17', NULL, NULL),
(22, '2022-12-19', 'TR00022', '25', 'CP', '2000.00', 'cash', NULL, '', 1, 'a', 'Admin', '2022-12-19', NULL, NULL),
(23, '2022-12-20', 'TR00023', '25', 'CP', '1000.00', 'cash', NULL, '', 1, 'a', 'Admin', '2022-12-20', NULL, NULL),
(24, '2022-12-20', 'TR00024', '35', 'CP', '250000.00', 'cash', NULL, 'due payment', 1, 'a', 'Admin', '2022-12-20', NULL, NULL),
(25, '2022-12-20', 'TR00025', '34', 'CP', '400000.00', 'cash', NULL, '', 1, 'a', 'Admin', '2022-12-20', NULL, NULL),
(26, '2022-12-21', 'TR00026', '35', 'CP', '292150.00', 'bank', 2, '', 1, 'a', 'Admin', '2022-12-21', NULL, NULL),
(27, '2022-12-27', 'TR00027', '25', 'CP', '500000.00', 'bank', 1, '', 1, 'a', 'Admin', '2022-12-27', NULL, NULL),
(28, '2022-12-29', 'TR00028', '34', 'CP', '10000.00', 'bank', 1, 'hjggfyhghf', 1, 'a', 'Admin', '2022-12-29', NULL, NULL),
(29, '2022-12-30', 'TR00029', '26', 'CP', '5000.00', 'cash', NULL, '', 1, 'a', 'Admin', '2022-12-30', NULL, NULL),
(30, '2022-12-30', 'TR00030', '40', 'CP', '100000.00', 'cash', NULL, '', 1, 'a', 'Admin', '2022-12-30', NULL, NULL),
(31, '2023-01-01', 'TR00031', '43', 'CR', '105000.00', 'cash', NULL, '', 1, 'a', 'Admin', '2023-01-01', 0, '2023-01-01'),
(32, '2023-01-01', 'TR00032', '43', 'CP', '157500.00', 'cash', NULL, '', 1, 'a', 'Admin', '2023-01-01', NULL, NULL),
(33, '2023-01-11', 'TR00033', '22', 'CP', '1000.00', 'cash', NULL, '', 7, 'a', 'Link Up', '2023-01-11', NULL, NULL),
(34, '2023-01-11', 'TR00034', '40', 'CP', '500.00', 'cash', NULL, '', 1, 'a', 'Link Up', '2023-01-11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transferdetails`
--

CREATE TABLE `tbl_transferdetails` (
  `transferdetails_id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `purchase_rate` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total` decimal(18,2) NOT NULL DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transferdetails`
--

INSERT INTO `tbl_transferdetails` (`transferdetails_id`, `transfer_id`, `product_id`, `quantity`, `purchase_rate`, `total`) VALUES
(1, 1, 13, 1, '12500.00', '12500.00'),
(2, 1, 1, 1, '5604.98', '5604.98'),
(3, 2, 29, 17, '77.00', '1309.00'),
(4, 3, 42, 4, '50.33', '201.32'),
(5, 4, 45, 10, '1200.00', '12000.00'),
(6, 5, 45, 10, '1200.00', '12000.00'),
(7, 6, 45, 5, '1200.00', '6000.00'),
(8, 7, 50, 25, '100.00', '2500.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfermaster`
--

CREATE TABLE `tbl_transfermaster` (
  `transfer_id` int(11) NOT NULL,
  `transfer_date` date NOT NULL,
  `transfer_by` int(11) NOT NULL,
  `transfer_from` int(11) NOT NULL,
  `transfer_to` int(11) NOT NULL,
  `total_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `note` varchar(500) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `added_datetime` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transfermaster`
--

INSERT INTO `tbl_transfermaster` (`transfer_id`, `transfer_date`, `transfer_by`, `transfer_from`, `transfer_to`, `total_amount`, `note`, `added_by`, `added_datetime`, `updated_by`, `updated_datetime`) VALUES
(1, '2022-09-27', 1, 1, 2, '18104.98', '', 0, '0000-00-00 00:00:00', NULL, NULL),
(2, '2022-11-20', 3, 1, 3, '1309.00', '', 0, '0000-00-00 00:00:00', NULL, NULL),
(3, '2022-12-10', 6, 1, 5, '201.32', '', 0, '0000-00-00 00:00:00', NULL, NULL),
(4, '2022-12-12', 3, 1, 7, '12000.00', '', 0, '0000-00-00 00:00:00', NULL, NULL),
(5, '2022-12-12', 3, 1, 7, '12000.00', '', 0, '0000-00-00 00:00:00', NULL, NULL),
(6, '2022-12-12', 3, 1, 5, '6000.00', '', 0, '0000-00-00 00:00:00', NULL, NULL),
(7, '2022-12-19', 3, 1, 6, '2500.00', '', 0, '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit`
--

CREATE TABLE `tbl_unit` (
  `Unit_SlNo` int(11) NOT NULL,
  `Unit_Name` varchar(150) NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_unit`
--

INSERT INTO `tbl_unit` (`Unit_SlNo`, `Unit_Name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`) VALUES
(1, 'PCS', 'd', NULL, NULL, NULL, NULL),
(2, 'SFT ', 'a', 'Admin', '2022-09-22 16:02:02', NULL, NULL),
(3, 'Sheet', 'd', 'Admin', '2022-10-16 14:59:48', NULL, NULL),
(4, 'Bag', 'd', 'Admin', '2022-10-29 17:22:40', NULL, NULL),
(5, 'Catton', 'd', 'Admin', '2022-11-13 15:38:41', NULL, NULL),
(6, 'Box', 'd', 'Admin', '2022-11-20 10:43:37', NULL, NULL),
(7, 'meter', 'd', 'Admin', '2022-12-14 12:26:56', NULL, NULL),
(8, 'ব্যাগ', 'a', 'Admin', '2023-01-01 20:30:03', NULL, NULL),
(9, 'ফ্যারা', 'a', 'Admin', '2023-01-01 20:33:07', NULL, NULL),
(10, 'কেজি', 'a', 'Admin', '2023-01-01 20:33:38', NULL, NULL),
(11, 'বস্তা', 'a', 'Admin', '2023-01-01 21:22:22', NULL, NULL),
(12, 'CNT', 'a', 'Admin', '2023-01-08 20:41:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `User_SlNo` int(11) NOT NULL,
  `User_ID` varchar(50) NOT NULL,
  `FullName` varchar(150) NOT NULL,
  `User_Name` varchar(150) NOT NULL,
  `UserEmail` varchar(200) NOT NULL,
  `userBrunch_id` int(11) NOT NULL,
  `User_Password` varchar(50) NOT NULL,
  `UserType` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `verifycode` int(11) NOT NULL,
  `image_name` varchar(1000) DEFAULT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `Brunch_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`User_SlNo`, `User_ID`, `FullName`, `User_Name`, `UserEmail`, `userBrunch_id`, `User_Password`, `UserType`, `status`, `verifycode`, `image_name`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `Brunch_ID`) VALUES
(1, 'U0001', 'Admin', 'admin', 'admin@host.com', 1, 'c4ca4238a0b923820dcc509a6f75849b', 'm', 'a', 1, '1.png', NULL, '2023-01-19 12:41:40', NULL, NULL, 1),
(2, '', 'Md Forhad Hossain', 'forhad', 'forhadlinkteck@gmail.com', 1, '81dc9bdb52d04dc20036dbd8313ed055', 'u', 'a', 0, NULL, NULL, '2022-10-18 13:03:27', NULL, NULL, 1),
(3, '', 'Link Up', 'linkup', 'linkup@gmail.com', 2, 'c4ca4238a0b923820dcc509a6f75849b', 'm', 'a', 0, '3.png', NULL, '2022-12-15 20:15:34', NULL, NULL, 2),
(4, '', 'Lalon ', 'lolon', 'lalon@gmail.com', 1, 'c4ca4238a0b923820dcc509a6f75849b', 'u', 'a', 0, NULL, NULL, '2022-10-18 16:55:44', NULL, NULL, 1),
(5, '', 'Md Juwel', 'Saler', 'salaer@gmail.com', 3, 'c81e728d9d4c2f636f067f89cc14862c', 'u', 'a', 0, NULL, NULL, '2022-10-24 17:37:23', NULL, NULL, 3),
(6, '', 'Laky', 'laky', 'laky@gmail.com', 5, 'c4ca4238a0b923820dcc509a6f75849b', 'e', 'a', 0, NULL, NULL, '2022-12-22 13:38:29', NULL, NULL, 5),
(7, '', 'test', 'test', 'test', 1, '0cbc6611f5540bd0809a388dc95a615b', 'm', 'a', 0, NULL, NULL, '2022-12-01 16:49:19', NULL, NULL, 1),
(8, '', 'Admin', 'Zahir', 'Admin@gmail.com', 8, '81dc9bdb52d04dc20036dbd8313ed055', 'a', 'a', 0, NULL, NULL, '2022-12-03 21:05:33', NULL, NULL, 8),
(9, '', 'Md Ariful ', 'mohon', 'mohonarif1@gmail.com', 2, 'e10adc3949ba59abbe56e057f20f883e', 'u', 'a', 0, NULL, NULL, '2022-12-13 10:33:30', NULL, NULL, 2),
(10, '', 'Zahir Hossain', 'admin1', 'Zahir@gmail.com', 9, 'c4ca4238a0b923820dcc509a6f75849b', 'a', 'a', 0, NULL, NULL, '2022-12-15 15:51:57', NULL, NULL, 9),
(11, '', 'Al amin', 'a', 'alamin@gmail.com', 1, '202cb962ac59075b964b07152d234b70', 'u', 'a', 0, NULL, NULL, '2022-12-17 15:00:05', NULL, NULL, 1),
(12, '', 'Monju ', 'monju', 'mdmonjurashid@gmail.com', 1, '2028d95822df7f10a5e7cefa22ae90c4', 'u', 'a', 0, NULL, NULL, '2022-12-24 15:30:33', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_access`
--

CREATE TABLE `tbl_user_access` (
  `access_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `access` text NOT NULL,
  `saved_by` int(11) NOT NULL,
  `saved_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_access`
--

INSERT INTO `tbl_user_access` (`access_id`, `user_id`, `access`, `saved_by`, `saved_datetime`) VALUES
(1, 2, '[\"sales\\/product\",\"sales\\/service\",\"salesReturn\",\"salesrecord\",\"currentStock\",\"quotation\",\"cashTransaction\",\"bank_transactions\",\"customerPaymentPage\",\"supplierPayment\",\"cash_view\",\"account\",\"bank_accounts\",\"check\\/entry\",\"check\\/list\",\"check\\/reminder\\/list\",\"check\\/pending\\/list\",\"check\\/dis\\/list\",\"check\\/paid\\/list\",\"salesinvoice\",\"returnList\",\"sale_return_details\",\"customerDue\",\"customerPaymentReport\",\"customer_payment_history\",\"customerlist\",\"price_list\",\"quotation_invoice_report\",\"quotation_record\",\"TransactionReport\",\"bank_transaction_report\",\"cash_ledger\",\"bank_ledger\",\"cashStatment\",\"balance_sheet\",\"BalanceSheet\",\"profitLoss\",\"day_book\",\"purchase\",\"purchaseReturns\",\"purchaseRecord\",\"AssetsEntry\",\"salary_payment\",\"employee\",\"emplists\\/all\",\"emplists\\/active\",\"emplists\\/deactive\",\"designation\",\"depertment\",\"month\",\"salary_payment_report\",\"loan_transactions\",\"loan_view\",\"loan_transaction_report\",\"loan_ledger\",\"loan_accounts\",\"investment_transactions\",\"investment_view\",\"investment_transaction_report\",\"investment_ledger\",\"investment_accounts\",\"assets_report\",\"purchaseInvoice\",\"supplierDue\",\"supplierPaymentReport\",\"supplierList\",\"returnsList\",\"purchase_return_details\",\"reorder_list\",\"sms\",\"product\",\"productlist\",\"product_ledger\",\"damageEntry\",\"damageList\",\"product_transfer\",\"transfer_list\",\"received_list\",\"customer\",\"supplier\",\"category\",\"unit\",\"area\",\"companyProfile\",\"user\",\"database_backup\",\"graph\"]', 1, '2022-10-18 16:58:33'),
(2, 4, '[\"sales\\/product\",\"sales\\/service\",\"salesReturn\",\"salesrecord\",\"currentStock\",\"quotation\",\"salesinvoice\",\"returnList\",\"sale_return_details\",\"customerDue\",\"customerPaymentReport\",\"customer_payment_history\",\"customerlist\",\"price_list\",\"quotation_invoice_report\",\"quotation_record\"]', 1, '2022-10-18 20:56:13'),
(3, 5, '[]', 1, '2022-12-15 22:10:05'),
(4, 6, '[\"sales\\/product\",\"quotation\",\"currentStock\",\"salesrecord\",\"salesReturn\",\"sales\\/service\",\"sms\",\"product\",\"productlist\",\"product_ledger\",\"damageEntry\",\"damageList\",\"product_transfer\",\"transfer_list\",\"received_list\",\"customer\",\"supplier\",\"category\",\"unit\",\"area\",\"companyProfile\",\"user\",\"database_backup\",\"graph\",\"cashTransaction\",\"bank_transactions\",\"customerPaymentPage\",\"supplierPayment\",\"cash_view\",\"account\",\"bank_accounts\",\"check\\/entry\",\"check\\/list\",\"check\\/reminder\\/list\",\"check\\/pending\\/list\",\"check\\/dis\\/list\",\"check\\/paid\\/list\",\"salesinvoice\",\"returnList\",\"sale_return_details\",\"customerDue\",\"customerPaymentReport\",\"customer_payment_history\",\"customerlist\",\"price_list\",\"quotation_invoice_report\",\"quotation_record\",\"TransactionReport\",\"bank_transaction_report\",\"cash_ledger\",\"bank_ledger\",\"cashStatment\",\"balance_sheet\",\"BalanceSheet\",\"profitLoss\",\"day_book\",\"purchase\",\"purchaseReturns\",\"purchaseRecord\",\"AssetsEntry\",\"salary_payment\",\"employee\",\"emplists\\/all\",\"emplists\\/active\",\"emplists\\/deactive\",\"designation\",\"depertment\",\"month\",\"salary_payment_report\",\"loan_transactions\",\"loan_view\",\"loan_transaction_report\",\"loan_ledger\",\"loan_accounts\",\"investment_transactions\",\"investment_view\",\"investment_transaction_report\",\"investment_ledger\",\"investment_accounts\",\"assets_report\",\"purchaseInvoice\",\"supplierDue\",\"supplierPaymentReport\",\"supplierList\",\"returnsList\",\"purchase_return_details\",\"reorder_list\"]', 1, '2022-12-22 18:41:15'),
(5, 9, '[\"sales\\/product\",\"sales\\/service\",\"salesReturn\",\"salesrecord\",\"currentStock\",\"quotation\"]', 1, '2022-12-13 15:36:46'),
(6, 11, '[\"investment_ledger\"]', 1, '2022-12-17 20:00:38'),
(7, 12, '[\"sales\\/product\",\"salesReturn\",\"salesrecord\",\"customerPaymentPage\",\"supplierPayment\",\"cash_view\",\"bank_accounts\",\"check\\/entry\",\"check\\/list\",\"check\\/reminder\\/list\",\"check\\/pending\\/list\",\"check\\/dis\\/list\",\"check\\/paid\\/list\",\"salesinvoice\",\"customerDue\",\"customerPaymentReport\",\"customer_payment_history\",\"customerlist\",\"price_list\",\"TransactionReport\",\"bank_transaction_report\",\"cash_ledger\",\"bank_ledger\",\"cashStatment\",\"balance_sheet\",\"BalanceSheet\",\"profitLoss\",\"day_book\",\"purchase\",\"purchaseRecord\",\"emplists\\/active\",\"designation\",\"depertment\",\"purchaseInvoice\",\"supplierDue\",\"supplierPaymentReport\",\"supplierList\",\"returnsList\",\"purchase_return_details\",\"sms\",\"product\",\"productlist\",\"product_ledger\",\"damageEntry\",\"damageList\",\"product_transfer\",\"transfer_list\",\"received_list\",\"customer\",\"supplier\",\"category\",\"unit\",\"area\",\"companyProfile\",\"user\",\"database_backup\",\"graph\",\"bank_transactions\",\"account\",\"cashTransaction\",\"employee\"]', 1, '2022-12-24 20:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_activity`
--

CREATE TABLE `tbl_user_activity` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime DEFAULT NULL,
  `status` char(2) NOT NULL DEFAULT 'a',
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_activity`
--

INSERT INTO `tbl_user_activity` (`id`, `user_id`, `ip_address`, `login_time`, `logout_time`, `status`, `branch_id`) VALUES
(1, 1, '103.159.73.252', '2022-09-20 19:03:15', NULL, 'a', 1),
(2, 1, '103.159.73.252', '2022-09-21 10:27:37', NULL, 'a', 1),
(3, 1, '137.59.155.131', '2022-09-21 13:21:54', '2022-09-21 13:23:06', 'a', 1),
(4, 1, '137.59.155.131', '2022-09-21 13:23:15', '2022-09-21 13:23:47', 'a', 1),
(5, 1, '43.245.123.182', '2022-09-21 14:57:46', NULL, 'a', 1),
(6, 1, '43.245.123.182', '2022-09-21 14:58:14', NULL, 'a', 1),
(7, 1, '37.111.236.148', '2022-09-21 15:50:13', NULL, 'a', 1),
(8, 1, '37.111.236.148', '2022-09-21 15:51:31', NULL, 'a', 1),
(9, 1, '103.111.226.53', '2022-09-21 15:53:20', NULL, 'a', 1),
(10, 1, '103.111.226.53', '2022-09-21 17:56:51', NULL, 'a', 1),
(11, 1, '103.159.73.252', '2022-09-21 18:25:51', NULL, 'a', 1),
(12, 1, '37.111.196.168', '2022-09-22 10:59:55', '2022-09-22 11:40:27', 'a', 1),
(13, 1, '202.134.14.139', '2022-09-22 12:07:57', NULL, 'a', 1),
(14, 1, '103.111.226.53', '2022-09-22 12:09:57', NULL, 'a', 1),
(15, 1, '103.159.73.252', '2022-09-22 12:16:58', NULL, 'a', 1),
(16, 1, '103.159.73.252', '2022-09-22 12:45:52', NULL, 'a', 1),
(17, 1, '103.159.73.252', '2022-09-22 14:33:32', NULL, 'a', 1),
(18, 1, '37.111.210.194', '2022-09-22 14:36:51', NULL, 'a', 1),
(19, 1, '37.111.210.194', '2022-09-22 14:50:00', NULL, 'a', 1),
(20, 1, '202.134.14.154', '2022-09-22 18:29:57', NULL, 'a', 1),
(21, 1, '202.134.14.154', '2022-09-22 18:57:06', NULL, 'a', 1),
(22, 1, '45.125.220.232', '2022-09-23 01:22:49', NULL, 'a', 1),
(23, 1, '27.147.243.54', '2022-09-23 01:43:15', NULL, 'a', 1),
(24, 1, '27.147.243.54', '2022-09-23 01:44:17', NULL, 'a', 1),
(25, 1, '202.134.14.141', '2022-09-23 16:24:53', NULL, 'a', 1),
(26, 1, '103.92.214.22', '2022-09-23 19:17:32', NULL, 'a', 1),
(27, 1, '103.92.214.22', '2022-09-24 00:48:40', NULL, 'a', 1),
(28, 1, '103.159.73.252', '2022-09-24 09:44:35', NULL, 'a', 1),
(29, 1, '103.159.73.252', '2022-09-24 10:32:17', NULL, 'a', 1),
(30, 1, '103.159.73.252', '2022-09-24 13:10:33', NULL, 'a', 1),
(31, 1, '103.198.133.30', '2022-09-24 14:20:08', NULL, 'a', 1),
(32, 1, '43.245.123.7', '2022-09-24 15:53:57', NULL, 'a', 1),
(33, 1, '103.159.73.252', '2022-09-24 16:50:22', NULL, 'a', 1),
(34, 1, '103.159.73.252', '2022-09-24 16:56:16', NULL, 'a', 1),
(35, 1, '103.159.73.252', '2022-09-24 16:58:45', NULL, 'a', 1),
(36, 1, '103.159.73.252', '2022-09-24 17:13:27', NULL, 'a', 1),
(37, 1, '45.125.220.232', '2022-09-24 22:45:31', NULL, 'a', 1),
(38, 1, '54.36.113.199', '2022-09-25 00:59:05', NULL, 'a', 1),
(39, 1, '103.92.214.22', '2022-09-25 02:10:38', NULL, 'a', 1),
(40, 1, '103.159.73.252', '2022-09-25 09:24:10', NULL, 'a', 1),
(41, 1, '103.159.73.252', '2022-09-25 09:24:21', NULL, 'a', 1),
(42, 1, '103.159.73.252', '2022-09-25 10:51:38', NULL, 'a', 1),
(43, 1, '103.17.38.197', '2022-09-25 12:23:02', NULL, 'a', 1),
(44, 1, '114.130.185.8', '2022-09-25 12:57:14', NULL, 'a', 1),
(45, 1, '114.130.185.8', '2022-09-25 13:08:25', NULL, 'a', 1),
(46, 1, '103.154.158.44', '2022-09-25 14:34:01', NULL, 'a', 1),
(47, 1, '37.111.211.75', '2022-09-25 16:06:15', NULL, 'a', 1),
(48, 1, '103.159.73.252', '2022-09-25 17:55:57', '2022-09-25 18:19:30', 'a', 1),
(49, 1, '103.120.33.26', '2022-09-25 19:17:48', NULL, 'a', 1),
(50, 1, '103.159.73.252', '2022-09-25 19:30:07', '2022-09-25 19:32:37', 'a', 1),
(51, 1, '103.159.73.252', '2022-09-26 11:47:21', NULL, 'a', 1),
(52, 1, '103.159.73.252', '2022-09-26 12:03:56', NULL, 'a', 1),
(53, 1, '103.120.33.26', '2022-09-26 12:54:57', NULL, 'a', 1),
(54, 1, '103.159.73.252', '2022-09-26 15:01:26', NULL, 'a', 1),
(55, 1, '103.159.73.253', '2022-09-26 16:41:12', NULL, 'a', 1),
(56, 1, '103.120.33.26', '2022-09-26 17:52:09', NULL, 'a', 1),
(57, 1, '185.180.223.243', '2022-09-27 01:15:55', NULL, 'a', 1),
(58, 1, '103.120.33.26', '2022-09-27 11:47:38', NULL, 'a', 1),
(59, 1, '103.187.24.4', '2022-09-27 13:47:36', '2022-09-27 13:48:06', 'a', 1),
(60, 1, '119.18.147.216', '2022-09-27 13:57:19', NULL, 'a', 1),
(61, 1, '103.67.158.125', '2022-09-27 14:35:28', NULL, 'a', 1),
(62, 1, '103.85.158.124', '2022-09-27 22:37:23', NULL, 'a', 1),
(63, 1, '27.147.243.54', '2022-09-28 00:49:09', '2022-09-28 01:01:31', 'a', 1),
(64, 1, '103.92.214.29', '2022-09-28 00:49:46', NULL, 'a', 1),
(65, 1, '103.242.22.254', '2022-09-28 13:20:10', NULL, 'a', 1),
(66, 1, '103.159.73.252', '2022-09-28 14:26:26', '2022-09-28 17:36:21', 'a', 1),
(67, 1, '103.159.73.252', '2022-09-28 17:36:28', '2022-09-28 17:56:44', 'a', 1),
(68, 2, '103.159.73.252', '2022-09-28 17:56:54', '2022-09-28 17:57:32', 'a', 1),
(69, 2, '103.159.73.252', '2022-09-28 17:57:44', '2022-09-28 17:58:06', 'a', 1),
(70, 1, '103.159.73.252', '2022-10-10 12:04:52', NULL, 'a', 1),
(71, 1, '103.159.73.252', '2022-10-10 12:10:07', NULL, 'a', 1),
(72, 1, '103.159.73.252', '2022-10-10 16:55:35', NULL, 'a', 1),
(73, 1, '27.147.186.199', '2022-10-10 18:18:11', NULL, 'a', 1),
(74, 1, '27.147.243.54', '2022-10-10 18:20:35', NULL, 'a', 1),
(75, 1, '103.159.73.252', '2022-10-11 09:34:00', NULL, 'a', 1),
(76, 1, '43.245.122.110', '2022-10-11 12:55:22', NULL, 'a', 1),
(77, 1, '103.134.255.131', '2022-10-11 13:06:47', NULL, 'a', 1),
(78, 1, '103.134.255.131', '2022-10-11 13:09:41', NULL, 'a', 1),
(79, 1, '103.159.73.252', '2022-10-11 13:19:15', NULL, 'a', 1),
(80, 1, '103.67.157.175', '2022-10-11 15:31:58', '2022-10-11 15:39:58', 'a', 1),
(81, 1, '103.134.255.131', '2022-10-11 18:41:46', NULL, 'a', 1),
(82, 1, '103.159.73.252', '2022-10-11 19:09:54', NULL, 'a', 1),
(83, 1, '103.134.255.131', '2022-10-11 19:28:57', NULL, 'a', 1),
(84, 1, '103.112.54.247', '2022-10-11 20:29:45', NULL, 'a', 1),
(85, 1, '27.147.243.54', '2022-10-12 00:40:38', NULL, 'a', 1),
(86, 1, '103.159.73.252', '2022-10-12 11:32:27', NULL, 'a', 1),
(87, 1, '103.134.255.128', '2022-10-12 13:58:18', NULL, 'a', 1),
(88, 1, '103.159.73.252', '2022-10-12 17:08:28', NULL, 'a', 1),
(89, 1, '119.18.147.216', '2022-10-12 17:26:32', NULL, 'a', 1),
(90, 1, '103.159.73.252', '2022-10-12 17:26:43', '2022-10-12 17:27:59', 'a', 1),
(91, 1, '27.147.243.54', '2022-10-12 21:37:14', NULL, 'a', 1),
(92, 1, '103.159.73.252', '2022-10-13 09:16:00', NULL, 'a', 1),
(93, 1, '103.159.73.250', '2022-10-13 11:18:24', '2022-10-13 13:26:39', 'a', 1),
(94, 1, '103.159.73.252', '2022-10-13 11:38:13', NULL, 'a', 1),
(95, 1, '43.245.122.29', '2022-10-13 17:01:48', NULL, 'a', 1),
(96, 1, '37.111.206.212', '2022-10-14 16:22:17', NULL, 'a', 1),
(97, 1, '37.111.205.137', '2022-10-15 14:38:55', NULL, 'a', 1),
(98, 1, '182.48.89.165', '2022-10-15 22:53:33', '2022-10-15 23:13:11', 'a', 1),
(99, 1, '37.111.214.106', '2022-10-15 23:17:15', NULL, 'a', 1),
(100, 1, '103.127.94.107', '2022-10-16 02:23:46', NULL, 'a', 1),
(101, 1, '103.159.73.252', '2022-10-16 10:03:33', NULL, 'a', 1),
(102, 1, '103.134.40.152', '2022-10-16 12:48:34', NULL, 'a', 1),
(103, 1, '103.67.158.192', '2022-10-16 13:21:24', NULL, 'a', 1),
(104, 1, '103.159.73.252', '2022-10-16 13:41:55', NULL, 'a', 1),
(105, 1, '103.159.73.252', '2022-10-16 14:42:07', NULL, 'a', 1),
(106, 1, '103.141.208.18', '2022-10-16 14:47:48', NULL, 'a', 1),
(107, 1, '45.125.220.232', '2022-10-16 23:42:20', NULL, 'a', 1),
(110, 1, '103.159.73.252', '2022-10-17 12:29:45', NULL, 'a', 1),
(111, 1, '103.134.255.128', '2022-10-17 12:37:41', NULL, 'a', 1),
(112, 1, '103.59.38.60', '2022-10-17 13:04:50', NULL, 'a', 1),
(113, 1, '37.111.212.65', '2022-10-17 13:38:09', NULL, 'a', 1),
(114, 1, '103.159.73.252', '2022-10-17 15:13:17', NULL, 'a', 1),
(115, 1, '103.159.73.252', '2022-10-17 15:53:49', NULL, 'a', 1),
(116, 1, '103.159.73.252', '2022-10-17 15:58:50', NULL, 'a', 1),
(117, 1, '103.159.73.252', '2022-10-17 16:59:08', NULL, 'a', 1),
(118, 1, '27.147.243.54', '2022-10-18 09:54:06', NULL, 'a', 1),
(119, 1, '103.159.73.252', '2022-10-18 11:02:07', NULL, 'a', 1),
(120, 1, '37.111.207.70', '2022-10-18 11:26:54', NULL, 'a', 1),
(121, 1, '202.86.221.100', '2022-10-18 11:46:35', NULL, 'a', 1),
(122, 1, '37.111.212.8', '2022-10-18 11:48:20', NULL, 'a', 1),
(123, 1, '43.251.85.185', '2022-10-18 11:59:20', NULL, 'a', 1),
(124, 1, '103.159.73.252', '2022-10-18 12:55:21', '2022-10-18 13:04:00', 'a', 1),
(125, 2, '103.159.73.252', '2022-10-18 13:04:04', '2022-10-18 13:04:42', 'a', 1),
(126, 1, '103.159.73.252', '2022-10-18 13:04:46', NULL, 'a', 1),
(127, 1, '37.111.207.70', '2022-10-18 14:38:17', '2022-10-18 14:38:37', 'a', 1),
(128, 1, '37.111.207.70', '2022-10-18 14:38:47', '2022-10-18 16:56:18', 'a', 1),
(129, 1, '103.242.23.177', '2022-10-18 15:12:25', NULL, 'a', 1),
(130, 1, '37.111.207.70', '2022-10-18 16:29:26', NULL, 'a', 1),
(131, 1, '103.159.73.252', '2022-10-18 16:51:30', NULL, 'a', 1),
(132, 4, '37.111.207.70', '2022-10-18 16:56:31', '2022-10-18 16:56:55', 'a', 1),
(133, 1, '37.111.207.70', '2022-10-18 16:57:02', NULL, 'a', 1),
(134, 1, '103.159.73.252', '2022-10-18 17:16:04', NULL, 'a', 1),
(135, 1, '43.250.80.230', '2022-10-18 21:13:57', NULL, 'a', 1),
(136, 1, '103.114.96.141', '2022-10-19 00:53:38', NULL, 'a', 1),
(137, 1, '103.92.214.16', '2022-10-19 02:47:38', NULL, 'a', 1),
(138, 1, '103.159.73.252', '2022-10-19 09:12:12', NULL, 'a', 1),
(139, 1, '103.159.73.252', '2022-10-19 10:19:32', NULL, 'a', 1),
(140, 1, '103.92.161.19', '2022-10-19 11:16:22', NULL, 'a', 1),
(141, 1, '103.159.73.252', '2022-10-19 14:36:50', NULL, 'a', 1),
(142, 1, '103.159.73.252', '2022-10-19 14:41:34', NULL, 'a', 1),
(143, 1, '103.253.45.170', '2022-10-19 15:43:32', NULL, 'a', 1),
(144, 1, '103.253.46.168', '2022-10-19 16:00:08', NULL, 'a', 1),
(145, 1, '103.159.73.252', '2022-10-19 16:18:46', NULL, 'a', 1),
(146, 1, '103.154.158.44', '2022-10-19 16:57:31', NULL, 'a', 1),
(147, 1, '106.0.53.224', '2022-10-19 17:38:55', NULL, 'a', 1),
(148, 1, '103.154.158.44', '2022-10-19 18:35:57', NULL, 'a', 1),
(149, 1, '103.13.132.234', '2022-10-19 20:35:59', NULL, 'a', 1),
(150, 1, '43.250.80.230', '2022-10-20 00:21:36', NULL, 'a', 1),
(151, 1, '119.30.32.191', '2022-10-20 00:23:43', NULL, 'a', 1),
(152, 1, '103.159.73.250', '2022-10-20 09:27:13', NULL, 'a', 1),
(153, 1, '103.159.73.252', '2022-10-20 12:03:13', NULL, 'a', 1),
(154, 1, '103.159.73.252', '2022-10-20 13:09:43', NULL, 'a', 1),
(155, 1, '103.159.73.252', '2022-10-20 14:32:29', NULL, 'a', 1),
(156, 1, '103.92.214.29', '2022-10-21 00:56:10', NULL, 'a', 1),
(157, 1, '103.159.73.252', '2022-10-22 12:21:39', NULL, 'a', 1),
(158, 1, '103.159.73.252', '2022-10-22 12:21:39', NULL, 'a', 1),
(159, 1, '103.159.73.252', '2022-10-22 15:59:35', NULL, 'a', 1),
(160, 1, '103.112.169.110', '2022-10-22 16:34:45', NULL, 'a', 1),
(161, 1, '87.101.193.149', '2022-10-22 18:24:54', NULL, 'a', 1),
(162, 1, '103.13.132.234', '2022-10-22 19:13:12', NULL, 'a', 1),
(163, 1, '27.147.243.54', '2022-10-22 20:21:03', '2022-10-22 20:32:29', 'a', 1),
(164, 1, '45.125.220.232', '2022-10-22 22:32:31', NULL, 'a', 1),
(165, 1, '103.159.73.252', '2022-10-23 12:23:05', '2022-10-23 12:25:07', 'a', 1),
(166, 1, '103.91.128.88', '2022-10-23 12:26:31', NULL, 'a', 1),
(167, 1, '103.91.128.88', '2022-10-23 12:27:14', NULL, 'a', 1),
(168, 1, '103.91.128.88', '2022-10-23 12:27:48', NULL, 'a', 1),
(169, 1, '103.91.128.88', '2022-10-23 12:34:55', NULL, 'a', 1),
(170, 1, '27.147.160.206', '2022-10-23 12:39:52', NULL, 'a', 1),
(171, 1, '103.159.73.252', '2022-10-23 12:46:16', NULL, 'a', 1),
(172, 1, '27.147.160.206', '2022-10-23 12:47:13', NULL, 'a', 1),
(173, 1, '27.147.160.206', '2022-10-23 12:52:23', '2022-10-23 12:55:05', 'a', 1),
(174, 1, '27.147.160.206', '2022-10-23 12:55:14', NULL, 'a', 1),
(175, 1, '27.147.160.206', '2022-10-23 13:14:19', NULL, 'a', 1),
(176, 1, '27.147.160.206', '2022-10-23 13:14:50', NULL, 'a', 1),
(177, 1, '27.147.160.206', '2022-10-23 13:17:06', NULL, 'a', 1),
(178, 1, '27.147.160.206', '2022-10-23 13:38:50', NULL, 'a', 1),
(179, 1, '103.159.73.252', '2022-10-23 14:18:52', NULL, 'a', 1),
(180, 1, '27.147.160.206', '2022-10-23 14:55:44', NULL, 'a', 1),
(181, 1, '180.149.232.102', '2022-10-23 16:47:31', NULL, 'a', 1),
(182, 1, '180.149.232.102', '2022-10-23 17:02:13', NULL, 'a', 1),
(183, 1, '180.149.232.102', '2022-10-23 17:08:47', NULL, 'a', 1),
(184, 1, '45.115.113.94', '2022-10-23 17:26:39', NULL, 'a', 1),
(185, 1, '103.135.254.181', '2022-10-23 17:38:11', NULL, 'a', 1),
(186, 1, '116.58.202.172', '2022-10-23 18:12:08', NULL, 'a', 1),
(187, 1, '27.147.160.206', '2022-10-23 19:08:15', NULL, 'a', 1),
(188, 1, '103.135.254.181', '2022-10-23 19:34:12', NULL, 'a', 1),
(189, 1, '45.118.60.65', '2022-10-23 19:38:15', NULL, 'a', 1),
(190, 1, '45.118.60.65', '2022-10-23 23:27:06', NULL, 'a', 1),
(191, 1, '103.159.73.252', '2022-10-24 13:58:02', NULL, 'a', 1),
(192, 1, '103.159.73.252', '2022-10-24 15:58:40', NULL, 'a', 1),
(193, 1, '27.147.160.206', '2022-10-24 16:46:19', NULL, 'a', 1),
(194, 1, '27.147.160.206', '2022-10-24 16:52:25', NULL, 'a', 1),
(195, 1, '27.147.160.206', '2022-10-24 16:54:40', '2022-10-24 17:38:49', 'a', 1),
(196, 1, '27.147.160.206', '2022-10-24 17:00:31', NULL, 'a', 1),
(197, 1, '27.147.160.206', '2022-10-24 17:07:09', NULL, 'a', 1),
(198, 5, '27.147.160.206', '2022-10-24 17:39:07', NULL, 'a', 3),
(199, 5, '27.147.160.206', '2022-10-24 17:39:35', '2022-10-24 17:40:42', 'a', 3),
(200, 1, '27.147.160.206', '2022-10-24 17:40:45', NULL, 'a', 1),
(201, 1, '27.147.160.206', '2022-10-24 21:26:55', NULL, 'a', 1),
(202, 1, '103.159.73.252', '2022-10-25 10:17:05', NULL, 'a', 1),
(203, 1, '27.147.196.33', '2022-10-25 12:24:04', NULL, 'a', 1),
(204, 1, '202.134.9.152', '2022-10-25 13:59:17', NULL, 'a', 1),
(205, 1, '103.13.132.234', '2022-10-25 16:59:39', NULL, 'a', 1),
(206, 1, '103.159.73.252', '2022-10-25 17:22:57', NULL, 'a', 1),
(207, 1, '103.159.73.252', '2022-10-25 17:35:21', NULL, 'a', 1),
(208, 1, '103.92.214.23', '2022-10-26 01:21:40', NULL, 'a', 1),
(209, 1, '103.159.73.254', '2022-10-26 09:28:25', NULL, 'a', 1),
(210, 1, '103.159.73.252', '2022-10-26 10:52:58', NULL, 'a', 1),
(211, 1, '116.58.203.255', '2022-10-26 11:22:04', NULL, 'a', 1),
(212, 1, '103.121.105.127', '2022-10-26 13:25:52', NULL, 'a', 1),
(213, 1, '103.121.105.127', '2022-10-26 13:54:36', NULL, 'a', 1),
(214, 1, '103.121.105.127', '2022-10-26 14:13:34', NULL, 'a', 1),
(215, 1, '103.121.105.127', '2022-10-26 14:38:17', NULL, 'a', 1),
(216, 1, '103.121.105.127', '2022-10-26 14:46:23', NULL, 'a', 1),
(217, 1, '103.159.73.252', '2022-10-26 15:38:10', NULL, 'a', 1),
(218, 1, '103.132.154.5', '2022-10-26 16:14:39', NULL, 'a', 1),
(219, 1, '103.159.73.252', '2022-10-26 16:28:48', NULL, 'a', 1),
(220, 1, '103.166.47.51', '2022-10-26 17:57:30', NULL, 'a', 1),
(221, 1, '103.159.73.252', '2022-10-26 17:57:41', NULL, 'a', 1),
(222, 1, '103.166.47.51', '2022-10-26 17:58:55', NULL, 'a', 1),
(223, 1, '27.147.160.206', '2022-10-26 18:07:06', NULL, 'a', 1),
(224, 1, '103.113.226.206', '2022-10-26 18:22:56', NULL, 'a', 1),
(225, 1, '103.159.73.252', '2022-10-26 19:35:53', NULL, 'a', 1),
(226, 1, '103.113.226.206', '2022-10-26 19:35:57', NULL, 'a', 1),
(227, 1, '103.113.226.206', '2022-10-26 19:36:40', NULL, 'a', 1),
(228, 1, '103.113.226.206', '2022-10-26 19:39:42', NULL, 'a', 1),
(229, 1, '123.253.215.149', '2022-10-26 20:40:01', NULL, 'a', 1),
(230, 1, '103.159.73.252', '2022-10-27 11:33:20', NULL, 'a', 1),
(231, 1, '103.159.73.252', '2022-10-27 16:55:12', NULL, 'a', 1),
(232, 1, '115.42.55.143', '2022-10-27 17:45:26', NULL, 'a', 1),
(233, 1, '103.159.73.252', '2022-10-27 18:09:20', NULL, 'a', 1),
(234, 1, '172.56.161.83', '2022-10-28 00:28:52', NULL, 'a', 1),
(235, 1, '103.217.111.130', '2022-10-28 00:31:01', NULL, 'a', 1),
(236, 1, '27.147.243.54', '2022-10-28 12:59:01', '2022-10-28 13:02:46', 'a', 1),
(237, 1, '103.92.214.16', '2022-10-28 21:37:21', NULL, 'a', 1),
(238, 1, '103.159.73.252', '2022-10-29 10:09:44', NULL, 'a', 1),
(239, 1, '118.179.118.81', '2022-10-29 11:03:17', NULL, 'a', 1),
(240, 1, '103.237.36.131', '2022-10-29 14:33:04', NULL, 'a', 1),
(241, 1, '103.242.23.191', '2022-10-29 16:05:30', NULL, 'a', 1),
(242, 1, '103.159.73.252', '2022-10-29 16:48:36', '2022-10-29 16:48:57', 'a', 1),
(243, 1, '103.51.2.139', '2022-10-29 16:49:18', NULL, 'a', 1),
(244, 1, '103.51.2.139', '2022-10-29 18:22:18', NULL, 'a', 1),
(245, 1, '103.237.36.131', '2022-10-29 22:32:56', NULL, 'a', 1),
(246, 1, '103.159.73.252', '2022-10-30 09:49:27', NULL, 'a', 1),
(247, 1, '103.159.73.252', '2022-10-30 10:11:11', NULL, 'a', 1),
(248, 1, '103.159.73.252', '2022-10-30 10:16:48', NULL, 'a', 1),
(249, 1, '103.159.73.252', '2022-10-30 10:24:49', NULL, 'a', 1),
(250, 1, '103.159.73.252', '2022-10-30 10:25:21', NULL, 'a', 1),
(251, 1, '103.159.73.252', '2022-10-30 10:37:44', NULL, 'a', 1),
(252, 1, '103.159.73.252', '2022-10-30 10:41:05', NULL, 'a', 1),
(253, 1, '103.159.73.252', '2022-10-30 11:09:37', NULL, 'a', 1),
(254, 1, '103.159.73.252', '2022-10-30 11:40:57', NULL, 'a', 1),
(255, 1, '103.253.44.72', '2022-10-30 13:12:01', NULL, 'a', 1),
(256, 1, '37.111.205.218', '2022-10-30 13:58:17', NULL, 'a', 1),
(257, 1, '116.206.254.39', '2022-10-30 16:05:20', NULL, 'a', 1),
(258, 1, '103.136.63.22', '2022-10-30 16:10:15', NULL, 'a', 1),
(259, 1, '103.159.73.31', '2022-10-30 16:11:47', NULL, 'a', 1),
(260, 1, '103.159.73.31', '2022-10-30 16:49:36', NULL, 'a', 1),
(261, 1, '103.159.73.31', '2022-10-30 17:44:52', NULL, 'a', 1),
(262, 1, '103.159.73.31', '2022-10-31 09:26:44', NULL, 'a', 1),
(263, 1, '103.159.73.31', '2022-10-31 11:21:30', '2022-10-31 13:25:27', 'a', 1),
(264, 1, '43.251.85.185', '2022-10-31 11:29:37', NULL, 'a', 1),
(265, 1, '103.159.73.31', '2022-10-31 11:47:01', NULL, 'a', 1),
(266, 1, '43.251.85.185', '2022-10-31 11:54:37', '2022-10-31 12:56:10', 'a', 1),
(267, 1, '103.192.156.139', '2022-10-31 12:11:00', NULL, 'a', 1),
(268, 1, '43.251.85.185', '2022-10-31 12:57:07', NULL, 'a', 1),
(269, 1, '103.159.73.31', '2022-10-31 14:12:52', NULL, 'a', 1),
(270, 1, '103.159.73.31', '2022-10-31 14:24:54', NULL, 'a', 1),
(271, 1, '37.111.215.40', '2022-10-31 15:39:19', NULL, 'a', 1),
(272, 1, '43.245.123.14', '2022-10-31 16:19:58', NULL, 'a', 1),
(273, 1, '103.159.73.31', '2022-10-31 16:29:04', NULL, 'a', 1),
(274, 1, '103.159.73.31', '2022-10-31 17:55:44', NULL, 'a', 1),
(275, 1, '103.92.214.16', '2022-11-01 01:15:30', NULL, 'a', 1),
(276, 1, '103.159.73.31', '2022-11-01 11:44:57', NULL, 'a', 1),
(277, 1, '103.67.157.67', '2022-11-01 15:23:31', NULL, 'a', 1),
(278, 1, '103.108.145.185', '2022-11-01 15:58:11', NULL, 'a', 1),
(279, 1, '103.209.198.16', '2022-11-01 17:03:55', NULL, 'a', 1),
(280, 1, '103.115.243.167', '2022-11-01 18:00:15', NULL, 'a', 1),
(281, 1, '103.92.214.16', '2022-11-01 23:39:39', NULL, 'a', 1),
(282, 1, '103.135.254.236', '2022-11-02 06:43:42', NULL, 'a', 1),
(283, 1, '103.4.119.10', '2022-11-02 16:13:21', NULL, 'a', 1),
(284, 1, '103.159.73.31', '2022-11-02 16:48:43', NULL, 'a', 1),
(285, 1, '202.134.14.137', '2022-11-02 17:14:04', NULL, 'a', 1),
(286, 1, '103.159.73.31', '2022-11-02 19:45:41', NULL, 'a', 1),
(287, 1, '103.159.73.31', '2022-11-03 09:53:28', NULL, 'a', 1),
(288, 1, '103.159.73.31', '2022-11-03 09:58:13', NULL, 'a', 1),
(289, 1, '103.159.73.31', '2022-11-03 10:52:04', NULL, 'a', 1),
(290, 1, '103.221.55.106', '2022-11-03 11:46:18', NULL, 'a', 1),
(291, 1, '103.159.73.31', '2022-11-03 14:38:48', NULL, 'a', 1),
(292, 1, '103.159.73.31', '2022-11-03 14:41:36', NULL, 'a', 1),
(293, 1, '103.159.73.31', '2022-11-03 16:53:16', NULL, 'a', 1),
(294, 1, '103.100.234.105', '2022-11-03 19:03:52', NULL, 'a', 1),
(295, 1, '103.159.73.31', '2022-11-03 19:20:36', NULL, 'a', 1),
(296, 1, '27.147.243.54', '2022-11-03 19:36:37', '2022-11-03 19:39:02', 'a', 1),
(297, 1, '103.159.73.31', '2022-11-05 10:28:32', NULL, 'a', 1),
(298, 1, '103.159.73.31', '2022-11-05 14:42:43', NULL, 'a', 1),
(299, 1, '103.159.73.31', '2022-11-05 16:53:14', NULL, 'a', 1),
(300, 1, '103.67.157.174', '2022-11-05 17:23:26', NULL, 'a', 1),
(301, 1, '103.159.73.31', '2022-11-06 11:12:20', NULL, 'a', 1),
(302, 1, '103.141.208.18', '2022-11-06 11:32:28', NULL, 'a', 1),
(303, 1, '27.147.160.206', '2022-11-06 12:13:20', NULL, 'a', 1),
(304, 1, '103.67.156.32', '2022-11-06 14:55:17', NULL, 'a', 1),
(305, 1, '103.159.73.31', '2022-11-06 15:26:15', NULL, 'a', 1),
(306, 1, '103.159.73.31', '2022-11-06 15:47:23', NULL, 'a', 1),
(307, 1, '43.245.123.41', '2022-11-06 16:55:41', NULL, 'a', 1),
(308, 1, '103.159.73.31', '2022-11-06 18:25:51', NULL, 'a', 1),
(309, 1, '103.159.73.31', '2022-11-06 18:33:43', NULL, 'a', 1),
(310, 1, '103.159.73.31', '2022-11-07 10:37:06', NULL, 'a', 1),
(311, 1, '103.159.73.31', '2022-11-07 10:43:38', NULL, 'a', 1),
(312, 1, '103.159.73.31', '2022-11-07 17:44:25', NULL, 'a', 1),
(313, 1, '103.159.73.31', '2022-11-07 17:44:26', NULL, 'a', 1),
(314, 1, '103.159.73.31', '2022-11-07 17:53:28', NULL, 'a', 1),
(315, 1, '119.30.41.121', '2022-11-07 18:02:22', NULL, 'a', 1),
(316, 1, '43.245.122.67', '2022-11-07 18:05:28', NULL, 'a', 1),
(317, 1, '103.237.36.128', '2022-11-07 18:38:57', NULL, 'a', 1),
(318, 1, '103.253.45.226', '2022-11-07 19:00:58', NULL, 'a', 1),
(319, 1, '27.147.160.206', '2022-11-07 20:24:55', NULL, 'a', 1),
(320, 1, '118.179.222.94', '2022-11-07 20:56:56', NULL, 'a', 1),
(321, 1, '103.159.73.31', '2022-11-08 09:25:14', NULL, 'a', 1),
(322, 1, '103.159.73.31', '2022-11-08 10:30:35', NULL, 'a', 1),
(323, 1, '103.159.73.31', '2022-11-08 10:36:31', NULL, 'a', 1),
(324, 1, '114.130.185.76', '2022-11-08 11:51:52', '2022-11-08 12:07:44', 'a', 1),
(325, 1, '103.159.73.31', '2022-11-08 13:20:30', NULL, 'a', 1),
(326, 1, '103.109.212.74', '2022-11-08 14:52:23', NULL, 'a', 1),
(327, 1, '180.149.232.102', '2022-11-08 18:30:45', NULL, 'a', 1),
(328, 1, '27.147.243.54', '2022-11-09 00:04:36', '2022-11-09 00:05:20', 'a', 1),
(329, 1, '202.134.9.138', '2022-11-09 09:03:18', NULL, 'a', 1),
(330, 1, '103.159.73.31', '2022-11-09 09:26:13', NULL, 'a', 1),
(331, 1, '103.159.73.31', '2022-11-09 09:29:43', NULL, 'a', 1),
(332, 1, '103.159.73.31', '2022-11-09 09:42:18', NULL, 'a', 1),
(333, 1, '103.159.73.31', '2022-11-09 11:26:34', '2022-11-09 11:27:49', 'a', 1),
(334, 1, '103.253.45.83', '2022-11-09 13:14:23', NULL, 'a', 1),
(335, 1, '103.159.73.31', '2022-11-09 16:05:18', NULL, 'a', 1),
(336, 1, '202.134.9.138', '2022-11-09 19:49:28', NULL, 'a', 1),
(337, 1, '103.92.214.19', '2022-11-10 02:01:47', NULL, 'a', 1),
(338, 1, '5.31.218.41', '2022-11-10 08:21:38', NULL, 'a', 1),
(339, 1, '103.159.73.31', '2022-11-10 09:25:26', NULL, 'a', 1),
(340, 1, '103.242.23.182', '2022-11-10 12:00:17', NULL, 'a', 1),
(341, 1, '103.159.73.31', '2022-11-10 12:06:27', NULL, 'a', 1),
(342, 1, '103.159.73.31', '2022-11-10 12:54:03', NULL, 'a', 1),
(343, 1, '103.159.73.31', '2022-11-10 13:46:22', NULL, 'a', 1),
(344, 1, '103.242.23.182', '2022-11-10 14:08:38', NULL, 'a', 1),
(345, 1, '103.159.73.31', '2022-11-10 14:53:46', NULL, 'a', 1),
(346, 1, '103.159.73.31', '2022-11-10 14:54:24', NULL, 'a', 1),
(347, 1, '103.184.95.4', '2022-11-10 14:55:02', '2022-11-10 15:20:29', 'a', 1),
(348, 1, '103.159.73.31', '2022-11-10 15:28:53', NULL, 'a', 1),
(349, 1, '94.205.10.116', '2022-11-10 16:28:02', NULL, 'a', 1),
(350, 1, '103.85.238.40', '2022-11-10 17:10:20', '2022-11-10 17:18:07', 'a', 1),
(351, 1, '103.85.238.40', '2022-11-10 17:28:39', NULL, 'a', 1),
(352, 1, '27.147.243.54', '2022-11-11 17:31:17', '2022-11-11 17:33:57', 'a', 1),
(353, 1, '27.147.243.54', '2022-11-11 17:35:08', NULL, 'a', 1),
(354, 1, '114.130.185.79', '2022-11-12 11:43:28', NULL, 'a', 1),
(355, 1, '45.127.49.148', '2022-11-12 12:56:49', '2022-11-12 14:16:40', 'a', 1),
(356, 1, '175.29.168.165', '2022-11-12 12:57:00', NULL, 'a', 1),
(357, 1, '103.85.238.40', '2022-11-12 18:24:34', NULL, 'a', 1),
(358, 1, '103.92.214.19', '2022-11-13 00:16:13', NULL, 'a', 1),
(359, 1, '103.159.73.31', '2022-11-13 10:36:24', NULL, 'a', 1),
(360, 1, '103.159.73.31', '2022-11-13 11:16:30', NULL, 'a', 1),
(361, 1, '103.85.238.40', '2022-11-13 11:27:47', NULL, 'a', 1),
(362, 1, '59.153.103.59', '2022-11-13 12:06:45', NULL, 'a', 1),
(363, 1, '103.159.73.31', '2022-11-13 12:56:00', NULL, 'a', 1),
(364, 1, '103.159.73.31', '2022-11-13 12:59:02', '2022-11-13 13:06:34', 'a', 1),
(365, 1, '103.159.73.31', '2022-11-13 13:16:36', NULL, 'a', 1),
(366, 1, '103.159.73.31', '2022-11-13 13:32:40', NULL, 'a', 1),
(367, 1, '103.136.202.121', '2022-11-13 14:16:45', NULL, 'a', 1),
(368, 1, '202.134.10.134', '2022-11-13 14:36:24', NULL, 'a', 1),
(369, 1, '103.159.73.31', '2022-11-13 14:53:04', '2022-11-13 15:13:02', 'a', 1),
(370, 1, '116.58.201.254', '2022-11-13 14:57:09', NULL, 'a', 1),
(371, 1, '103.159.73.31', '2022-11-13 15:13:08', NULL, 'a', 1),
(372, 1, '103.159.73.31', '2022-11-13 15:35:36', NULL, 'a', 1),
(373, 1, '103.159.73.31', '2022-11-13 16:23:04', NULL, 'a', 1),
(374, 1, '103.6.251.205', '2022-11-13 16:52:06', NULL, 'a', 1),
(375, 1, '123.253.215.41', '2022-11-13 20:50:33', NULL, 'a', 1),
(376, 1, '123.0.26.230', '2022-11-14 09:27:11', NULL, 'a', 1),
(377, 1, '103.159.73.31', '2022-11-14 09:56:44', NULL, 'a', 1),
(378, 1, '103.159.73.31', '2022-11-14 09:57:19', '2022-11-14 14:47:09', 'a', 1),
(379, 1, '59.153.19.145', '2022-11-14 10:43:34', NULL, 'a', 1),
(380, 1, '103.159.73.31', '2022-11-14 11:42:04', NULL, 'a', 1),
(381, 1, '103.159.73.31', '2022-11-14 12:36:50', NULL, 'a', 1),
(382, 1, '103.159.73.31', '2022-11-14 12:52:49', NULL, 'a', 1),
(383, 1, '103.159.73.31', '2022-11-14 13:01:42', NULL, 'a', 1),
(384, 1, '103.159.73.31', '2022-11-14 13:03:08', NULL, 'a', 1),
(385, 1, '103.159.73.31', '2022-11-14 13:22:26', NULL, 'a', 1),
(386, 1, '103.232.100.200', '2022-11-14 14:25:43', NULL, 'a', 1),
(387, 1, '103.159.73.31', '2022-11-14 14:47:25', NULL, 'a', 1),
(388, 1, '103.159.73.31', '2022-11-14 15:25:00', NULL, 'a', 1),
(389, 1, '103.159.73.31', '2022-11-14 15:25:04', NULL, 'a', 1),
(390, 1, '103.159.73.31', '2022-11-14 15:48:14', NULL, 'a', 1),
(391, 1, '103.159.73.31', '2022-11-14 15:49:02', NULL, 'a', 1),
(392, 1, '103.159.73.31', '2022-11-14 15:49:26', NULL, 'a', 1),
(393, 1, '103.159.73.31', '2022-11-14 15:49:30', NULL, 'a', 1),
(394, 1, '103.159.73.31', '2022-11-14 15:49:36', NULL, 'a', 1),
(395, 1, '103.159.73.31', '2022-11-14 15:49:40', NULL, 'a', 1),
(396, 1, '103.159.73.31', '2022-11-14 15:50:29', NULL, 'a', 1),
(397, 1, '103.159.73.31', '2022-11-14 15:51:19', NULL, 'a', 1),
(398, 1, '103.92.214.19', '2022-11-15 00:20:48', NULL, 'a', 1),
(399, 1, '103.159.73.31', '2022-11-15 09:10:27', '2022-11-15 09:12:31', 'a', 1),
(400, 1, '103.159.73.31', '2022-11-15 09:23:18', NULL, 'a', 1),
(401, 1, '103.159.73.31', '2022-11-15 09:49:23', NULL, 'a', 1),
(402, 1, '103.159.73.31', '2022-11-15 11:33:40', NULL, 'a', 1),
(403, 1, '103.159.73.31', '2022-11-15 11:42:37', NULL, 'a', 1),
(404, 1, '103.133.200.236', '2022-11-15 13:12:39', NULL, 'a', 1),
(405, 1, '103.159.73.31', '2022-11-15 14:18:32', NULL, 'a', 1),
(406, 1, '103.159.73.31', '2022-11-15 14:31:16', NULL, 'a', 1),
(407, 1, '202.94.165.65', '2022-11-15 15:50:07', NULL, 'a', 1),
(408, 1, '103.205.132.206', '2022-11-15 17:02:11', NULL, 'a', 1),
(409, 1, '103.159.73.31', '2022-11-15 17:03:42', NULL, 'a', 1),
(410, 1, '103.116.167.216', '2022-11-15 18:39:48', NULL, 'a', 1),
(411, 1, '27.147.243.54', '2022-11-16 02:13:59', NULL, 'a', 1),
(412, 1, '103.159.73.31', '2022-11-16 09:43:09', NULL, 'a', 1),
(413, 1, '103.159.73.31', '2022-11-16 09:47:49', NULL, 'a', 1),
(414, 1, '103.159.73.31', '2022-11-16 11:56:02', NULL, 'a', 1),
(415, 1, '103.159.73.31', '2022-11-16 12:11:53', NULL, 'a', 1),
(416, 1, '202.134.10.140', '2022-11-16 12:56:14', NULL, 'a', 1),
(417, 1, '42.0.7.241', '2022-11-16 13:12:00', '2022-11-16 13:12:21', 'a', 1),
(418, 1, '103.159.73.31', '2022-11-16 14:24:04', NULL, 'a', 1),
(419, 1, '103.159.73.31', '2022-11-16 14:59:33', NULL, 'a', 1),
(420, 1, '103.159.73.31', '2022-11-16 15:54:15', NULL, 'a', 1),
(421, 1, '103.159.73.31', '2022-11-16 16:07:06', NULL, 'a', 1),
(422, 1, '103.92.214.19', '2022-11-16 23:27:53', NULL, 'a', 1),
(423, 1, '103.159.73.31', '2022-11-17 09:24:08', NULL, 'a', 1),
(424, 1, '103.159.73.31', '2022-11-17 09:26:24', NULL, 'a', 1),
(425, 1, '103.109.56.147', '2022-11-17 11:05:50', NULL, 'a', 1),
(426, 1, '103.159.73.31', '2022-11-17 11:20:42', NULL, 'a', 1),
(427, 1, '202.86.221.228', '2022-11-17 11:39:10', NULL, 'a', 1),
(428, 1, '103.159.73.31', '2022-11-17 15:07:48', NULL, 'a', 1),
(429, 1, '116.58.201.248', '2022-11-17 16:32:59', NULL, 'a', 1),
(430, 1, '116.58.201.248', '2022-11-17 16:34:27', NULL, 'a', 1),
(431, 1, '103.107.123.219', '2022-11-17 16:53:59', NULL, 'a', 1),
(432, 1, '103.159.73.31', '2022-11-17 17:27:00', NULL, 'a', 1),
(433, 1, '116.58.201.248', '2022-11-17 19:16:46', NULL, 'a', 1),
(434, 1, '116.58.201.248', '2022-11-17 19:18:01', NULL, 'a', 1),
(435, 1, '116.58.201.248', '2022-11-17 19:37:17', NULL, 'a', 1),
(436, 1, '103.107.123.219', '2022-11-17 20:03:19', NULL, 'a', 1),
(437, 1, '116.58.201.248', '2022-11-17 21:42:32', NULL, 'a', 1),
(438, 1, '103.92.214.19', '2022-11-18 00:24:19', NULL, 'a', 1),
(439, 1, '27.147.243.54', '2022-11-18 03:40:42', '2022-11-18 03:47:28', 'a', 1),
(440, 1, '27.147.243.54', '2022-11-18 09:26:28', NULL, 'a', 1),
(441, 1, '103.6.251.204', '2022-11-18 10:59:26', NULL, 'a', 1),
(442, 1, '103.6.251.204', '2022-11-18 11:01:53', NULL, 'a', 1),
(443, 1, '103.107.123.219', '2022-11-18 11:02:24', NULL, 'a', 1),
(444, 1, '103.107.123.219', '2022-11-18 11:02:49', NULL, 'a', 1),
(445, 1, '27.147.243.54', '2022-11-18 16:26:31', NULL, 'a', 1),
(446, 1, '103.159.73.31', '2022-11-19 09:24:18', NULL, 'a', 1),
(447, 1, '103.159.73.31', '2022-11-19 09:40:38', NULL, 'a', 1),
(448, 1, '116.58.201.248', '2022-11-19 10:26:39', NULL, 'a', 1),
(449, 1, '116.58.201.248', '2022-11-19 10:56:51', NULL, 'a', 1),
(450, 1, '103.159.73.31', '2022-11-19 11:22:09', NULL, 'a', 1),
(451, 1, '59.153.19.145', '2022-11-19 12:29:50', NULL, 'a', 1),
(452, 1, '59.153.19.145', '2022-11-19 12:29:51', NULL, 'a', 1),
(453, 1, '103.159.73.31', '2022-11-19 13:18:16', NULL, 'a', 1),
(454, 1, '103.159.73.31', '2022-11-19 14:25:18', NULL, 'a', 1),
(455, 1, '45.251.228.247', '2022-11-19 14:27:23', NULL, 'a', 1),
(456, 1, '202.134.10.135', '2022-11-19 14:43:32', NULL, 'a', 1),
(457, 1, '202.91.43.111', '2022-11-19 14:45:43', NULL, 'a', 1),
(458, 1, '103.133.79.85', '2022-11-19 15:09:12', NULL, 'a', 1),
(459, 1, '45.251.228.247', '2022-11-19 15:11:04', NULL, 'a', 1),
(460, 1, '103.159.73.31', '2022-11-19 15:41:00', NULL, 'a', 1),
(461, 1, '202.134.10.130', '2022-11-19 16:08:17', NULL, 'a', 1),
(462, 1, '103.161.71.232', '2022-11-19 16:43:44', NULL, 'a', 1),
(463, 1, '45.251.228.247', '2022-11-19 17:06:09', '2022-11-19 17:14:43', 'a', 1),
(464, 1, '103.164.232.74', '2022-11-19 18:25:51', NULL, 'a', 1),
(465, 1, '103.159.73.31', '2022-11-19 18:35:13', NULL, 'a', 1),
(466, 1, '37.111.200.183', '2022-11-19 19:03:14', NULL, 'a', 1),
(467, 1, '37.111.200.183', '2022-11-19 19:03:30', '2022-11-19 19:05:20', 'a', 1),
(468, 1, '37.111.200.183', '2022-11-19 19:05:32', NULL, 'a', 1),
(469, 1, '118.179.222.94', '2022-11-19 21:54:22', '2022-11-19 22:22:01', 'a', 1),
(470, 1, '118.179.222.94', '2022-11-19 22:22:08', NULL, 'a', 1),
(471, 1, '202.134.10.130', '2022-11-19 23:05:40', NULL, 'a', 1),
(472, 1, '103.92.214.19', '2022-11-20 01:06:00', NULL, 'a', 1),
(473, 1, '103.161.71.232', '2022-11-20 07:56:34', '2022-11-20 07:56:45', 'a', 1),
(474, 1, '103.159.73.31', '2022-11-20 09:20:05', NULL, 'a', 1),
(475, 1, '103.159.73.31', '2022-11-20 09:26:08', NULL, 'a', 1),
(476, 1, '103.159.73.31', '2022-11-20 10:16:30', NULL, 'a', 1),
(477, 1, '103.159.73.31', '2022-11-20 10:36:49', '2022-11-20 11:25:03', 'a', 1),
(478, 1, '103.159.73.31', '2022-11-20 11:25:13', NULL, 'a', 1),
(479, 1, '202.86.222.18', '2022-11-20 17:12:07', NULL, 'a', 1),
(480, 1, '202.86.222.18', '2022-11-20 17:12:48', NULL, 'a', 1),
(481, 1, '103.159.73.31', '2022-11-21 09:14:11', NULL, 'a', 1),
(482, 1, '103.159.73.31', '2022-11-21 09:16:11', NULL, 'a', 1),
(483, 1, '103.159.73.31', '2022-11-21 09:27:30', NULL, 'a', 1),
(484, 1, '103.159.73.31', '2022-11-21 10:04:42', NULL, 'a', 1),
(485, 1, '103.159.73.31', '2022-11-21 10:25:56', NULL, 'a', 1),
(486, 1, '37.111.215.19', '2022-11-21 15:01:39', NULL, 'a', 1),
(487, 1, '202.134.14.144', '2022-11-21 16:16:49', NULL, 'a', 1),
(488, 1, '103.159.73.31', '2022-11-21 16:30:16', NULL, 'a', 1),
(489, 1, '103.159.73.31', '2022-11-21 17:19:15', NULL, 'a', 1),
(490, 1, '103.101.253.4', '2022-11-21 23:39:27', '2022-11-21 23:42:58', 'a', 1),
(491, 1, '103.92.214.19', '2022-11-22 00:19:26', NULL, 'a', 1),
(492, 1, '27.147.243.54', '2022-11-22 02:23:39', '2022-11-22 02:49:54', 'a', 1),
(493, 1, '103.159.73.31', '2022-11-22 09:15:57', NULL, 'a', 1),
(494, 1, '103.159.73.31', '2022-11-22 09:19:20', NULL, 'a', 1),
(495, 1, '103.159.73.31', '2022-11-22 09:32:21', NULL, 'a', 1),
(496, 1, '182.160.113.177', '2022-11-22 12:22:00', NULL, 'a', 1),
(497, 1, '37.111.198.140', '2022-11-22 15:30:36', '2022-11-22 16:11:32', 'a', 1),
(498, 1, '37.111.198.140', '2022-11-22 16:11:42', NULL, 'a', 1),
(499, 1, '103.168.207.106', '2022-11-22 17:35:11', NULL, 'a', 1),
(500, 1, '27.147.243.54', '2022-11-22 22:34:21', NULL, 'a', 1),
(501, 1, '27.147.243.54', '2022-11-22 22:40:07', NULL, 'a', 1),
(502, 1, '103.161.71.232', '2022-11-23 08:37:04', '2022-11-23 08:54:08', 'a', 1),
(503, 1, '103.159.73.31', '2022-11-23 11:01:28', '2022-11-23 11:01:38', 'a', 1),
(504, 1, '103.159.73.31', '2022-11-23 11:42:00', NULL, 'a', 1),
(505, 1, '103.161.71.232', '2022-11-23 12:15:13', NULL, 'a', 1),
(506, 1, '103.159.73.31', '2022-11-23 12:43:09', NULL, 'a', 1),
(507, 1, '103.85.232.28', '2022-11-23 18:18:42', NULL, 'a', 1),
(508, 1, '103.92.214.19', '2022-11-24 00:49:47', NULL, 'a', 1),
(509, 1, '27.147.243.54', '2022-11-24 01:01:34', NULL, 'a', 1),
(510, 1, '27.147.243.54', '2022-11-24 01:33:30', NULL, 'a', 1),
(511, 1, '103.159.73.31', '2022-11-24 11:52:07', NULL, 'a', 1),
(512, 1, '103.159.73.31', '2022-11-24 14:49:05', NULL, 'a', 1),
(513, 1, '103.159.73.31', '2022-11-24 17:48:27', '2022-11-24 17:50:19', 'a', 1),
(514, 1, '103.159.73.31', '2022-11-24 17:50:44', '2022-11-24 17:51:53', 'a', 1),
(515, 1, '103.159.73.31', '2022-11-24 17:52:08', NULL, 'a', 1),
(516, 1, '103.161.71.232', '2022-11-25 08:55:56', NULL, 'a', 1),
(517, 1, '103.92.214.19', '2022-11-25 16:59:58', NULL, 'a', 1),
(518, 1, '116.206.91.195', '2022-11-25 22:07:09', '2022-11-25 22:09:29', 'a', 1),
(519, 1, '103.92.214.19', '2022-11-26 04:41:02', NULL, 'a', 1),
(520, 1, '103.159.73.31', '2022-11-26 09:18:32', NULL, 'a', 1),
(521, 1, '103.159.73.31', '2022-11-26 10:20:20', NULL, 'a', 1),
(522, 1, '103.159.73.31', '2022-11-26 10:28:56', '2022-11-26 10:29:21', 'a', 1),
(523, 1, '103.159.73.31', '2022-11-26 11:17:08', NULL, 'a', 1),
(524, 1, '103.159.73.31', '2022-11-26 11:17:26', '2022-11-26 11:53:35', 'a', 1),
(525, 1, '103.159.73.31', '2022-11-26 11:25:34', '2022-11-26 11:28:29', 'a', 1),
(526, 1, '103.159.73.31', '2022-11-26 11:46:50', NULL, 'a', 1),
(527, 1, '27.147.243.54', '2022-11-26 12:06:45', NULL, 'a', 1),
(528, 1, '43.245.123.206', '2022-11-26 12:09:25', '2022-11-26 12:33:44', 'a', 1),
(529, 1, '103.159.73.31', '2022-11-26 12:29:58', '2022-11-26 12:30:20', 'a', 1),
(530, 1, '114.130.184.41', '2022-11-26 13:49:31', '2022-11-26 13:59:24', 'a', 1),
(531, 1, '114.130.184.41', '2022-11-26 13:49:47', NULL, 'a', 1),
(532, 1, '114.130.184.41', '2022-11-26 14:45:33', NULL, 'a', 1),
(533, 1, '114.130.184.41', '2022-11-26 15:01:10', '2022-11-26 15:01:28', 'a', 1),
(534, 1, '103.159.73.31', '2022-11-26 15:15:18', NULL, 'a', 1),
(535, 1, '202.134.13.130', '2022-11-26 15:22:08', NULL, 'a', 1),
(536, 1, '103.159.73.31', '2022-11-26 15:39:56', NULL, 'a', 1),
(537, 1, '114.130.184.41', '2022-11-26 16:50:52', '2022-11-26 17:23:03', 'a', 1),
(538, 1, '114.130.184.31', '2022-11-26 17:39:13', NULL, 'a', 1),
(539, 1, '103.159.73.31', '2022-11-26 18:34:02', NULL, 'a', 1),
(540, 1, '114.130.184.41', '2022-11-26 20:09:15', NULL, 'a', 1),
(541, 1, '103.159.73.31', '2022-11-26 20:37:31', NULL, 'a', 1),
(542, 1, '103.92.214.19', '2022-11-27 03:20:34', NULL, 'a', 1),
(543, 1, '103.159.73.31', '2022-11-27 09:36:03', NULL, 'a', 1),
(544, 1, '103.159.73.31', '2022-11-27 09:43:01', NULL, 'a', 1),
(545, 1, '114.130.184.31', '2022-11-27 10:00:57', NULL, 'a', 1),
(546, 1, '103.161.71.232', '2022-11-27 11:04:09', NULL, 'a', 1),
(547, 1, '114.130.184.31', '2022-11-27 12:55:36', NULL, 'a', 1),
(548, 1, '116.58.200.60', '2022-11-27 12:55:59', NULL, 'a', 1),
(549, 1, '103.159.73.31', '2022-11-27 13:05:06', NULL, 'a', 1),
(550, 1, '103.159.73.31', '2022-11-27 14:54:37', NULL, 'a', 1),
(551, 1, '114.130.184.41', '2022-11-27 15:31:16', NULL, 'a', 1),
(552, 1, '103.159.73.31', '2022-11-27 16:43:55', NULL, 'a', 1),
(553, 1, '103.159.73.31', '2022-11-27 17:24:13', '2022-11-27 17:58:15', 'a', 1),
(554, 1, '116.206.91.195', '2022-11-27 23:57:49', NULL, 'a', 1),
(555, 1, '103.92.214.19', '2022-11-28 00:21:56', NULL, 'a', 1),
(556, 1, '103.159.73.31', '2022-11-28 11:23:11', NULL, 'a', 1),
(557, 1, '114.130.184.41', '2022-11-28 11:28:59', NULL, 'a', 1),
(558, 1, '114.130.184.41', '2022-11-28 11:29:01', NULL, 'a', 1),
(559, 1, '103.159.73.31', '2022-11-28 15:51:50', NULL, 'a', 1),
(560, 1, '103.159.73.31', '2022-11-28 16:07:45', NULL, 'a', 1),
(561, 1, '27.147.160.206', '2022-11-28 18:17:05', NULL, 'a', 1),
(562, 1, '114.130.184.41', '2022-11-28 18:39:30', NULL, 'a', 1),
(563, 1, '114.130.184.41', '2022-11-28 18:49:18', '2022-11-28 19:06:14', 'a', 1),
(564, 1, '114.130.184.41', '2022-11-28 18:50:00', NULL, 'a', 1),
(565, 1, '103.92.214.19', '2022-11-29 00:15:51', NULL, 'a', 1),
(566, 1, '27.147.243.54', '2022-11-29 01:22:41', '2022-11-29 01:28:54', 'a', 1),
(567, 1, '103.159.73.31', '2022-11-29 09:31:21', NULL, 'a', 1),
(568, 1, '103.159.73.31', '2022-11-29 10:32:35', NULL, 'a', 1),
(569, 1, '202.134.10.138', '2022-11-29 10:35:16', NULL, 'a', 1),
(570, 1, '103.159.73.31', '2022-11-29 10:43:45', NULL, 'a', 1),
(571, 1, '103.159.73.31', '2022-11-29 11:49:56', NULL, 'a', 1),
(572, 1, '114.130.184.41', '2022-11-29 13:44:06', NULL, 'a', 1),
(573, 1, '27.147.176.130', '2022-11-29 14:52:44', '2022-11-29 14:54:11', 'a', 1),
(574, 1, '43.251.85.185', '2022-11-29 15:18:50', NULL, 'a', 1),
(575, 1, '103.179.238.206', '2022-11-29 16:42:31', NULL, 'a', 1),
(576, 1, '103.159.73.31', '2022-11-29 17:43:12', NULL, 'a', 1),
(577, 1, '27.147.160.206', '2022-11-29 17:48:10', NULL, 'a', 1),
(578, 1, '103.92.214.19', '2022-11-29 23:16:55', NULL, 'a', 1),
(579, 1, '27.147.243.54', '2022-11-30 00:41:25', NULL, 'a', 1),
(580, 1, '103.159.73.31', '2022-11-30 11:05:32', NULL, 'a', 1),
(581, 1, '103.159.73.31', '2022-11-30 11:55:03', NULL, 'a', 1),
(582, 1, '103.231.162.83', '2022-11-30 15:02:03', NULL, 'a', 1),
(583, 1, '202.134.14.139', '2022-11-30 15:37:36', NULL, 'a', 1),
(584, 1, '202.134.14.139', '2022-11-30 15:39:33', NULL, 'a', 1),
(585, 1, '43.245.123.184', '2022-11-30 16:35:35', NULL, 'a', 1),
(586, 1, '103.205.134.54', '2022-11-30 19:16:42', NULL, 'a', 1),
(622, 1, '103.92.214.24', '2022-12-05 07:01:42', NULL, 'a', 1),
(623, 1, '103.159.73.31', '2022-12-05 09:46:27', NULL, 'a', 1),
(624, 1, '103.159.73.31', '2022-12-05 10:24:10', NULL, 'a', 1),
(625, 1, '103.159.73.31', '2022-12-05 10:45:24', NULL, 'a', 1),
(626, 1, '103.159.73.31', '2022-12-05 10:58:55', NULL, 'a', 1),
(627, 1, '103.159.73.31', '2022-12-05 11:48:03', NULL, 'a', 1),
(628, 1, '103.214.219.31', '2022-12-05 12:04:57', NULL, 'a', 1),
(629, 1, '103.159.73.31', '2022-12-05 14:57:28', NULL, 'a', 1),
(630, 1, '103.85.193.34', '2022-12-05 15:05:16', NULL, 'a', 1),
(631, 1, '103.96.89.122', '2022-12-05 15:34:08', NULL, 'a', 1),
(632, 1, '103.96.89.122', '2022-12-05 15:37:30', NULL, 'a', 1),
(633, 1, '103.159.73.31', '2022-12-05 15:50:50', NULL, 'a', 1),
(634, 1, '103.159.73.31', '2022-12-05 16:37:49', NULL, 'a', 1),
(635, 1, '103.159.73.31', '2022-12-05 20:57:20', NULL, 'a', 1),
(636, 1, '103.92.214.16', '2022-12-06 00:11:43', NULL, 'a', 1),
(637, 1, '103.159.73.31', '2022-12-06 09:38:45', NULL, 'a', 1),
(638, 1, '103.159.73.31', '2022-12-06 10:23:10', NULL, 'a', 1),
(639, 1, '103.159.73.31', '2022-12-06 11:20:20', NULL, 'a', 1),
(640, 1, '103.159.73.31', '2022-12-06 11:25:08', NULL, 'a', 1),
(641, 1, '103.140.24.4', '2022-12-06 14:34:07', NULL, 'a', 1),
(642, 1, '103.109.96.115', '2022-12-06 15:47:53', NULL, 'a', 1),
(643, 1, '103.10.53.250', '2022-12-06 15:48:38', NULL, 'a', 1),
(644, 1, '103.159.73.31', '2022-12-06 15:51:41', NULL, 'a', 1),
(645, 1, '103.159.73.31', '2022-12-06 16:29:19', NULL, 'a', 1),
(646, 1, '116.58.200.44', '2022-12-06 16:48:07', NULL, 'a', 1),
(647, 1, '116.58.200.44', '2022-12-06 16:48:58', NULL, 'a', 1),
(648, 1, '103.127.179.46', '2022-12-06 19:39:14', NULL, 'a', 1),
(649, 1, '103.51.2.74', '2022-12-06 20:20:01', NULL, 'a', 1),
(650, 1, '103.51.2.74', '2022-12-06 20:38:34', NULL, 'a', 1),
(651, 1, '103.58.74.130', '2022-12-07 00:54:28', NULL, 'a', 1),
(652, 1, '103.51.2.74', '2022-12-07 01:31:51', NULL, 'a', 1),
(653, 1, '103.51.2.74', '2022-12-07 01:32:33', NULL, 'a', 1),
(654, 1, '103.92.214.16', '2022-12-07 03:55:54', NULL, 'a', 1),
(655, 1, '103.159.73.31', '2022-12-07 10:23:45', NULL, 'a', 1),
(656, 1, '103.159.73.31', '2022-12-07 10:28:27', NULL, 'a', 1),
(657, 1, '103.159.73.31', '2022-12-07 10:36:58', NULL, 'a', 1),
(658, 1, '103.127.179.46', '2022-12-07 11:35:50', NULL, 'a', 1),
(659, 1, '103.127.179.46', '2022-12-07 11:59:27', NULL, 'a', 1),
(660, 1, '103.159.73.31', '2022-12-07 12:07:46', NULL, 'a', 1),
(661, 1, '103.159.73.31', '2022-12-07 12:21:24', NULL, 'a', 1),
(662, 1, '103.144.161.13', '2022-12-07 13:07:09', NULL, 'a', 1),
(663, 1, '103.159.73.31', '2022-12-07 13:19:36', NULL, 'a', 1),
(664, 1, '103.159.73.31', '2022-12-07 13:40:13', NULL, 'a', 1),
(665, 1, '103.159.73.31', '2022-12-07 14:55:10', NULL, 'a', 1),
(666, 1, '103.159.73.31', '2022-12-07 15:05:12', NULL, 'a', 1),
(667, 1, '103.133.200.236', '2022-12-07 15:18:19', NULL, 'a', 1),
(668, 1, '103.159.73.31', '2022-12-07 15:35:51', NULL, 'a', 1),
(669, 1, '103.159.73.31', '2022-12-07 18:41:35', NULL, 'a', 1),
(670, 1, '89.39.107.170', '2022-12-07 20:46:06', NULL, 'a', 1),
(671, 1, '103.159.73.31', '2022-12-07 21:45:06', NULL, 'a', 1),
(672, 1, '119.30.47.243', '2022-12-07 22:30:22', NULL, 'a', 1),
(673, 1, '119.30.47.243', '2022-12-07 22:38:02', NULL, 'a', 1),
(674, 1, '118.179.95.193', '2022-12-07 23:28:27', NULL, 'a', 1),
(675, 1, '119.30.47.243', '2022-12-08 00:10:08', NULL, 'a', 1),
(676, 1, '103.159.73.31', '2022-12-08 09:21:27', NULL, 'a', 1),
(677, 1, '119.30.47.234', '2022-12-08 09:44:44', NULL, 'a', 1),
(678, 1, '103.159.73.31', '2022-12-08 12:05:55', NULL, 'a', 1),
(679, 1, '103.127.179.46', '2022-12-08 12:10:59', NULL, 'a', 1),
(680, 1, '103.159.73.31', '2022-12-08 12:24:52', NULL, 'a', 1),
(681, 1, '103.159.73.31', '2022-12-08 12:41:10', NULL, 'a', 1),
(682, 1, '103.159.73.31', '2022-12-08 12:50:38', NULL, 'a', 1),
(683, 1, '103.159.73.31', '2022-12-08 13:13:42', NULL, 'a', 1),
(684, 1, '103.159.73.31', '2022-12-08 14:00:36', NULL, 'a', 1),
(685, 1, '103.159.73.31', '2022-12-08 14:36:05', NULL, 'a', 1),
(686, 1, '103.161.68.216', '2022-12-08 14:45:55', NULL, 'a', 1),
(687, 1, '103.159.73.31', '2022-12-08 14:52:49', NULL, 'a', 1),
(688, 1, '103.159.73.31', '2022-12-08 15:44:52', NULL, 'a', 1),
(689, 1, '103.159.73.31', '2022-12-08 15:55:42', NULL, 'a', 1),
(690, 1, '103.159.73.31', '2022-12-08 18:39:43', NULL, 'a', 1),
(691, 1, '103.51.2.10', '2022-12-08 18:53:52', NULL, 'a', 1),
(692, 1, '116.206.91.195', '2022-12-08 21:21:39', NULL, 'a', 1),
(693, 1, '160.202.144.7', '2022-12-08 22:17:21', NULL, 'a', 1),
(694, 1, '116.206.91.195', '2022-12-09 04:40:32', NULL, 'a', 1),
(695, 1, '103.59.178.225', '2022-12-09 20:34:37', NULL, 'a', 1),
(696, 1, '103.59.178.225', '2022-12-09 20:45:21', NULL, 'a', 1),
(697, 1, '103.159.73.31', '2022-12-10 10:01:56', NULL, 'a', 1),
(698, 1, '103.159.73.31', '2022-12-10 10:41:02', NULL, 'a', 1),
(699, 1, '103.159.73.31', '2022-12-10 10:50:18', NULL, 'a', 1),
(700, 1, '103.159.73.31', '2022-12-10 11:15:41', NULL, 'a', 1),
(701, 1, '103.159.73.31', '2022-12-10 11:26:08', NULL, 'a', 1),
(702, 1, '116.58.200.155', '2022-12-10 12:00:41', NULL, 'a', 1),
(703, 1, '103.203.95.212', '2022-12-10 13:09:55', '2022-12-10 13:10:03', 'a', 1),
(704, 1, '103.203.95.212', '2022-12-10 13:10:36', NULL, 'a', 1),
(705, 1, '103.159.73.31', '2022-12-10 15:21:05', NULL, 'a', 1),
(706, 1, '103.159.73.31', '2022-12-10 16:01:01', NULL, 'a', 1),
(707, 1, '103.159.73.31', '2022-12-10 16:33:37', NULL, 'a', 1),
(708, 1, '103.159.73.31', '2022-12-10 17:52:58', NULL, 'a', 1),
(709, 1, '116.206.91.195', '2022-12-10 20:24:55', NULL, 'a', 1),
(710, 1, '116.206.91.195', '2022-12-10 23:53:25', NULL, 'a', 1),
(711, 1, '103.159.73.31', '2022-12-11 09:21:06', NULL, 'a', 1),
(712, 1, '103.216.56.106', '2022-12-11 12:11:47', NULL, 'a', 1),
(713, 1, '103.159.73.31', '2022-12-11 13:00:44', NULL, 'a', 1),
(714, 1, '103.216.56.106', '2022-12-11 13:16:12', NULL, 'a', 1),
(715, 1, '103.159.73.31', '2022-12-11 14:42:49', NULL, 'a', 1),
(716, 1, '103.159.73.31', '2022-12-11 16:03:32', NULL, 'a', 1),
(717, 1, '103.216.56.106', '2022-12-11 21:21:59', NULL, 'a', 1),
(718, 1, '116.206.91.195', '2022-12-11 21:57:33', NULL, 'a', 1),
(719, 1, '103.159.73.31', '2022-12-12 09:29:05', NULL, 'a', 1),
(720, 1, '103.159.73.31', '2022-12-12 10:04:09', NULL, 'a', 1),
(721, 1, '103.159.73.31', '2022-12-12 10:05:36', NULL, 'a', 1),
(722, 1, '37.111.211.180', '2022-12-12 11:01:08', NULL, 'a', 1),
(723, 1, '103.182.213.32', '2022-12-12 12:15:13', NULL, 'a', 1),
(724, 1, '36.255.53.236', '2022-12-12 12:42:23', NULL, 'a', 1),
(725, 1, '103.159.73.31', '2022-12-12 14:33:38', NULL, 'a', 1),
(726, 1, '103.159.73.31', '2022-12-12 16:08:40', NULL, 'a', 1),
(727, 1, '203.95.220.2', '2022-12-12 20:17:46', NULL, 'a', 1),
(728, 1, '103.216.56.106', '2022-12-12 21:18:01', NULL, 'a', 1),
(729, 1, '103.216.56.106', '2022-12-12 21:31:16', NULL, 'a', 1),
(730, 1, '103.216.56.106', '2022-12-12 21:31:16', NULL, 'a', 1),
(731, 1, '103.216.56.106', '2022-12-12 21:32:50', NULL, 'a', 1),
(732, 1, '103.216.56.106', '2022-12-12 21:32:50', NULL, 'a', 1),
(733, 1, '160.202.144.7', '2022-12-12 22:58:28', NULL, 'a', 1),
(734, 1, '103.154.158.44', '2022-12-13 09:18:31', NULL, 'a', 1),
(735, 1, '103.154.158.44', '2022-12-13 09:49:23', NULL, 'a', 1),
(736, 1, '103.154.158.44', '2022-12-13 09:52:26', '2022-12-13 10:34:38', 'a', 1),
(737, 1, '103.154.158.44', '2022-12-13 10:07:33', '2022-12-13 11:02:01', 'a', 1),
(738, 9, '103.154.158.44', '2022-12-13 10:34:53', '2022-12-13 10:35:53', 'a', 2),
(739, 1, '103.154.158.44', '2022-12-13 10:36:06', NULL, 'a', 1),
(740, 1, '103.159.73.31', '2022-12-13 10:53:07', NULL, 'a', 1),
(741, 1, '103.159.73.31', '2022-12-13 11:43:35', NULL, 'a', 1),
(742, 1, '180.148.212.54', '2022-12-13 11:51:34', '2022-12-13 13:07:16', 'a', 1),
(743, 1, '103.159.73.31', '2022-12-13 12:03:45', NULL, 'a', 1),
(744, 1, '103.159.73.31', '2022-12-13 12:56:03', NULL, 'a', 1),
(745, 1, '103.237.36.188', '2022-12-13 13:07:25', NULL, 'a', 1),
(746, 1, '103.107.123.220', '2022-12-13 13:18:27', NULL, 'a', 1),
(747, 1, '103.181.43.3', '2022-12-13 16:43:00', NULL, 'a', 1),
(748, 1, '103.216.56.107', '2022-12-13 18:49:01', NULL, 'a', 1),
(749, 1, '43.250.80.228', '2022-12-13 19:07:09', NULL, 'a', 1),
(750, 1, '103.172.29.159', '2022-12-13 19:16:50', NULL, 'a', 1),
(751, 1, '103.159.73.31', '2022-12-13 20:06:36', NULL, 'a', 1),
(752, 1, '116.206.91.195', '2022-12-13 21:11:49', NULL, 'a', 1),
(753, 1, '103.92.214.19', '2022-12-14 00:33:28', NULL, 'a', 1),
(754, 1, '103.159.73.31', '2022-12-14 09:37:11', NULL, 'a', 1),
(755, 1, '103.159.73.31', '2022-12-14 10:51:15', NULL, 'a', 1),
(756, 1, '103.159.73.31', '2022-12-14 10:53:08', NULL, 'a', 1),
(757, 1, '103.242.20.240', '2022-12-14 11:40:24', NULL, 'a', 1),
(758, 1, '119.148.101.114', '2022-12-14 12:26:25', NULL, 'a', 1),
(759, 1, '27.147.133.190', '2022-12-14 12:49:59', NULL, 'a', 1),
(760, 1, '103.159.73.31', '2022-12-14 12:58:30', NULL, 'a', 1),
(761, 1, '103.172.29.155', '2022-12-14 13:06:15', NULL, 'a', 1),
(762, 1, '103.172.29.157', '2022-12-14 13:07:00', NULL, 'a', 1),
(763, 1, '103.159.73.31', '2022-12-14 13:30:55', NULL, 'a', 1),
(764, 1, '157.119.49.42', '2022-12-14 14:18:06', NULL, 'a', 1),
(765, 1, '27.147.201.35', '2022-12-14 14:31:42', NULL, 'a', 1),
(766, 1, '103.117.143.67', '2022-12-14 14:35:33', NULL, 'a', 1),
(767, 1, '37.111.200.208', '2022-12-14 15:01:33', NULL, 'a', 1),
(768, 1, '103.159.73.31', '2022-12-14 15:42:29', NULL, 'a', 1),
(769, 1, '103.159.73.31', '2022-12-14 16:51:16', NULL, 'a', 1),
(770, 1, '103.242.23.191', '2022-12-14 17:38:58', NULL, 'a', 1),
(771, 1, '116.206.91.195', '2022-12-14 20:28:09', NULL, 'a', 1),
(772, 1, '37.111.200.208', '2022-12-14 20:56:17', NULL, 'a', 1),
(773, 1, '103.159.73.31', '2022-12-15 09:58:50', NULL, 'a', 1),
(774, 1, '103.159.73.31', '2022-12-15 11:24:16', NULL, 'a', 1),
(775, 1, '103.120.223.210', '2022-12-15 12:00:08', NULL, 'a', 1),
(776, 1, '103.159.73.31', '2022-12-15 13:41:46', NULL, 'a', 1),
(777, 1, '103.159.73.31', '2022-12-15 13:44:28', NULL, 'a', 1),
(778, 1, '103.159.73.31', '2022-12-15 13:52:03', NULL, 'a', 1),
(779, 1, '103.159.73.31', '2022-12-15 15:20:01', NULL, 'a', 1),
(780, 1, '103.159.73.31', '2022-12-15 15:43:24', NULL, 'a', 1),
(781, 1, '103.159.73.31', '2022-12-15 15:44:25', NULL, 'a', 1),
(782, 1, '103.159.73.31', '2022-12-15 15:58:23', NULL, 'a', 1),
(783, 1, '103.159.73.31', '2022-12-15 16:50:07', NULL, 'a', 1),
(784, 1, '103.159.73.31', '2022-12-15 16:55:25', NULL, 'a', 1),
(785, 1, '103.216.56.104', '2022-12-15 17:17:57', NULL, 'a', 1),
(786, 1, '103.242.23.188', '2022-12-15 17:55:41', NULL, 'a', 1),
(787, 1, '103.159.73.31', '2022-12-15 17:57:29', NULL, 'a', 1),
(788, 10, '105.8.1.12', '2022-12-15 18:15:12', '2022-12-15 18:37:25', 'a', 9),
(789, 1, '105.8.1.12', '2022-12-15 18:37:35', NULL, 'a', 1),
(790, 1, '103.172.29.156', '2022-12-15 19:49:58', NULL, 'a', 1),
(791, 1, '103.172.29.154', '2022-12-16 14:59:43', NULL, 'a', 1),
(792, 1, '103.172.29.158', '2022-12-16 15:51:46', NULL, 'a', 1),
(793, 1, '116.206.91.195', '2022-12-16 16:23:09', NULL, 'a', 1),
(794, 1, '103.156.126.79', '2022-12-16 18:10:06', NULL, 'a', 1),
(795, 1, '103.156.126.79', '2022-12-16 18:10:44', NULL, 'a', 1),
(796, 1, '202.134.14.159', '2022-12-16 18:58:16', NULL, 'a', 1),
(797, 1, '190.2.132.224', '2022-12-16 19:59:48', NULL, 'a', 1),
(798, 1, '43.250.80.228', '2022-12-16 20:58:58', NULL, 'a', 1),
(799, 1, '116.206.91.195', '2022-12-16 22:45:12', NULL, 'a', 1),
(800, 1, '103.159.73.31', '2022-12-17 11:43:49', NULL, 'a', 1),
(801, 1, '103.157.93.18', '2022-12-17 12:35:03', NULL, 'a', 1),
(802, 1, '103.172.29.153', '2022-12-17 12:43:17', NULL, 'a', 1),
(803, 1, '103.172.29.154', '2022-12-17 12:44:39', NULL, 'a', 1),
(804, 1, '103.159.73.31', '2022-12-17 13:12:18', NULL, 'a', 1),
(805, 1, '103.159.73.31', '2022-12-17 14:46:02', NULL, 'a', 1),
(806, 11, '103.67.158.160', '2022-12-17 15:02:30', NULL, 'a', 1),
(807, 1, '103.159.73.31', '2022-12-17 16:04:58', NULL, 'a', 1),
(808, 1, '103.159.73.31', '2022-12-17 16:43:34', NULL, 'a', 1),
(809, 1, '103.159.73.31', '2022-12-17 18:11:15', NULL, 'a', 1),
(810, 1, '103.159.73.31', '2022-12-17 18:48:04', NULL, 'a', 1),
(811, 1, '103.159.73.31', '2022-12-17 19:29:58', NULL, 'a', 1),
(812, 1, '103.159.73.31', '2022-12-18 09:45:16', NULL, 'a', 1),
(813, 1, '103.159.73.31', '2022-12-18 10:54:31', NULL, 'a', 1),
(814, 1, '103.159.73.31', '2022-12-18 11:27:41', NULL, 'a', 1),
(815, 1, '103.159.73.31', '2022-12-18 11:28:16', NULL, 'a', 1),
(816, 1, '103.159.73.31', '2022-12-18 16:02:52', NULL, 'a', 1);
INSERT INTO `tbl_user_activity` (`id`, `user_id`, `ip_address`, `login_time`, `logout_time`, `status`, `branch_id`) VALUES
(817, 1, '103.67.158.154', '2022-12-18 18:03:02', NULL, 'a', 1),
(818, 1, '103.172.29.152', '2022-12-19 09:19:55', NULL, 'a', 1),
(819, 1, '103.159.73.31', '2022-12-19 09:36:36', NULL, 'a', 1),
(820, 1, '103.159.73.31', '2022-12-19 09:40:21', NULL, 'a', 1),
(821, 1, '103.159.73.31', '2022-12-19 09:49:37', NULL, 'a', 1),
(822, 1, '103.159.73.31', '2022-12-19 10:51:12', NULL, 'a', 1),
(823, 1, '103.159.73.31', '2022-12-19 12:39:18', NULL, 'a', 1),
(824, 1, '202.134.14.132', '2022-12-19 15:08:38', NULL, 'a', 1),
(825, 1, '103.159.73.31', '2022-12-19 15:16:36', NULL, 'a', 1),
(826, 1, '103.159.73.31', '2022-12-19 15:31:27', NULL, 'a', 1),
(827, 1, '103.159.73.31', '2022-12-19 16:58:23', NULL, 'a', 1),
(828, 1, '103.159.73.31', '2022-12-19 16:59:04', '2022-12-19 17:09:34', 'a', 1),
(829, 1, '103.159.73.31', '2022-12-19 17:09:38', NULL, 'a', 1),
(830, 1, '103.159.73.31', '2022-12-19 18:10:36', NULL, 'a', 1),
(831, 1, '103.159.73.31', '2022-12-19 18:12:07', NULL, 'a', 1),
(832, 1, '103.159.73.31', '2022-12-19 19:14:52', NULL, 'a', 1),
(833, 1, '103.159.73.31', '2022-12-19 19:50:05', NULL, 'a', 1),
(834, 1, '103.159.73.31', '2022-12-20 09:13:41', NULL, 'a', 1),
(835, 1, '103.159.73.31', '2022-12-20 09:26:31', NULL, 'a', 1),
(836, 1, '103.188.136.55', '2022-12-20 11:53:34', NULL, 'a', 1),
(837, 1, '59.152.100.30', '2022-12-20 12:08:55', NULL, 'a', 1),
(838, 1, '116.204.143.75', '2022-12-20 14:36:47', '2022-12-20 14:43:02', 'a', 1),
(839, 1, '103.159.73.31', '2022-12-20 15:35:10', NULL, 'a', 1),
(840, 1, '103.159.73.31', '2022-12-20 15:54:32', NULL, 'a', 1),
(841, 1, '202.134.14.148', '2022-12-20 15:56:20', NULL, 'a', 1),
(842, 1, '103.159.73.31', '2022-12-20 16:04:27', NULL, 'a', 1),
(843, 1, '103.186.52.132', '2022-12-20 16:18:05', NULL, 'a', 1),
(844, 1, '103.159.73.31', '2022-12-20 16:48:29', NULL, 'a', 1),
(845, 1, '103.159.73.31', '2022-12-20 16:48:47', NULL, 'a', 1),
(846, 1, '103.159.73.31', '2022-12-20 17:00:18', NULL, 'a', 1),
(847, 1, '103.159.73.31', '2022-12-20 17:05:52', NULL, 'a', 1),
(848, 1, '103.159.73.31', '2022-12-20 17:57:02', NULL, 'a', 1),
(849, 1, '103.159.73.31', '2022-12-21 09:12:05', NULL, 'a', 1),
(850, 1, '103.159.73.31', '2022-12-21 10:20:31', NULL, 'a', 1),
(851, 1, '43.224.118.253', '2022-12-21 12:27:43', NULL, 'a', 1),
(852, 1, '103.159.73.31', '2022-12-21 13:24:57', NULL, 'a', 1),
(853, 1, '103.159.73.31', '2022-12-21 15:54:03', NULL, 'a', 1),
(854, 1, '157.119.49.42', '2022-12-21 18:11:58', NULL, 'a', 1),
(855, 1, '123.253.215.41', '2022-12-21 22:43:16', NULL, 'a', 1),
(856, 1, '103.159.73.31', '2022-12-22 10:52:38', NULL, 'a', 1),
(857, 1, '103.159.73.31', '2022-12-22 12:12:29', NULL, 'a', 1),
(858, 1, '103.159.73.31', '2022-12-22 13:37:41', '2022-12-22 13:38:37', 'a', 1),
(859, 1, '103.159.73.31', '2022-12-22 13:38:42', '2022-12-22 13:39:57', 'a', 1),
(860, 6, '103.159.73.31', '2022-12-22 13:40:06', '2022-12-22 13:40:56', 'a', 5),
(861, 1, '103.159.73.31', '2022-12-22 13:40:59', '2022-12-22 13:41:19', 'a', 1),
(862, 6, '103.159.73.31', '2022-12-22 13:41:27', NULL, 'a', 5),
(863, 1, '103.159.73.31', '2022-12-22 15:20:33', NULL, 'a', 1),
(864, 1, '116.58.201.250', '2022-12-22 16:47:40', NULL, 'a', 1),
(865, 1, '103.159.73.31', '2022-12-22 17:59:51', NULL, 'a', 1),
(866, 1, '116.206.91.195', '2022-12-23 00:08:31', NULL, 'a', 1),
(867, 1, '103.159.73.31', '2022-12-24 09:26:54', NULL, 'a', 1),
(868, 1, '103.159.73.31', '2022-12-24 09:37:48', NULL, 'a', 1),
(869, 1, '103.159.73.31', '2022-12-24 11:03:34', NULL, 'a', 1),
(870, 1, '103.159.73.31', '2022-12-24 11:05:40', NULL, 'a', 1),
(871, 1, '103.203.95.212', '2022-12-24 11:06:10', '2022-12-24 11:13:45', 'a', 1),
(872, 1, '103.203.95.212', '2022-12-24 11:16:14', NULL, 'a', 1),
(873, 1, '43.245.123.35', '2022-12-24 11:56:58', NULL, 'a', 1),
(874, 1, '103.159.73.31', '2022-12-24 12:32:12', '2022-12-24 13:13:18', 'a', 1),
(875, 1, '103.159.73.31', '2022-12-24 13:13:29', NULL, 'a', 1),
(876, 1, '37.111.220.33', '2022-12-24 13:41:00', NULL, 'a', 1),
(877, 1, '114.130.184.157', '2022-12-24 14:14:47', NULL, 'a', 1),
(878, 1, '103.108.178.250', '2022-12-24 15:25:34', '2022-12-24 15:39:09', 'a', 1),
(879, 12, '103.108.178.250', '2022-12-24 15:39:25', '2022-12-24 16:20:00', 'a', 1),
(880, 1, '103.31.179.48', '2022-12-24 15:39:43', NULL, 'a', 1),
(881, 1, '103.108.178.250', '2022-12-24 16:20:10', NULL, 'a', 1),
(882, 1, '103.159.73.31', '2022-12-24 16:20:42', NULL, 'a', 1),
(883, 1, '103.159.73.31', '2022-12-24 16:23:15', NULL, 'a', 1),
(884, 1, '103.172.29.154', '2022-12-25 11:51:08', NULL, 'a', 1),
(885, 1, '118.179.171.225', '2022-12-25 14:14:42', NULL, 'a', 1),
(886, 1, '103.159.73.31', '2022-12-26 09:33:40', NULL, 'a', 1),
(887, 1, '103.159.73.31', '2022-12-26 11:45:31', NULL, 'a', 1),
(888, 1, '103.67.158.139', '2022-12-26 12:36:59', NULL, 'a', 1),
(889, 1, '45.120.39.89', '2022-12-26 12:42:23', NULL, 'a', 1),
(890, 1, '27.147.201.244', '2022-12-26 12:50:30', NULL, 'a', 1),
(891, 1, '103.176.174.23', '2022-12-26 13:29:25', NULL, 'a', 1),
(892, 1, '103.159.73.31', '2022-12-26 13:59:51', NULL, 'a', 1),
(893, 1, '103.159.73.31', '2022-12-26 16:30:32', NULL, 'a', 1),
(894, 1, '103.159.73.31', '2022-12-26 16:50:44', NULL, 'a', 1),
(895, 1, '108.191.125.195', '2022-12-26 21:28:58', NULL, 'a', 1),
(896, 1, '103.159.73.31', '2022-12-27 09:31:35', NULL, 'a', 1),
(897, 1, '103.159.73.31', '2022-12-27 09:49:28', NULL, 'a', 1),
(898, 1, '103.159.73.31', '2022-12-27 11:52:18', NULL, 'a', 1),
(899, 1, '113.212.111.181', '2022-12-27 13:00:00', NULL, 'a', 1),
(900, 1, '103.153.66.227', '2022-12-27 15:14:15', NULL, 'a', 1),
(901, 1, '103.159.73.31', '2022-12-27 16:12:26', NULL, 'a', 1),
(902, 3, '103.159.73.31', '2022-12-27 17:04:28', NULL, 'a', 2),
(903, 1, '103.78.188.129', '2022-12-27 19:29:57', NULL, 'a', 1),
(904, 1, '203.112.213.78', '2022-12-27 20:50:17', NULL, 'a', 1),
(905, 1, '103.159.73.31', '2022-12-29 10:02:52', NULL, 'a', 1),
(906, 1, '103.172.29.156', '2022-12-29 10:43:50', NULL, 'a', 1),
(907, 1, '116.58.205.250', '2022-12-29 12:36:47', NULL, 'a', 1),
(908, 1, '103.159.73.31', '2022-12-29 14:16:10', NULL, 'a', 1),
(909, 1, '103.159.73.31', '2022-12-29 15:21:06', NULL, 'a', 1),
(910, 1, '103.209.197.73', '2022-12-29 16:02:56', NULL, 'a', 1),
(911, 1, '103.188.136.50', '2022-12-29 16:03:28', NULL, 'a', 1),
(912, 1, '103.153.66.227', '2022-12-29 16:09:34', NULL, 'a', 1),
(913, 1, '103.159.73.31', '2022-12-29 18:26:53', '2022-12-29 18:39:24', 'a', 1),
(914, 1, '103.159.73.31', '2022-12-29 18:29:19', NULL, 'a', 1),
(915, 1, '103.159.73.31', '2022-12-30 10:19:53', NULL, 'a', 1),
(916, 1, '103.159.73.31', '2022-12-30 10:46:12', NULL, 'a', 1),
(917, 1, '59.153.19.149', '2022-12-30 11:00:43', NULL, 'a', 1),
(918, 1, '103.159.73.31', '2022-12-30 11:12:01', NULL, 'a', 1),
(919, 1, '59.153.19.149', '2022-12-30 11:32:27', '2022-12-30 11:54:35', 'a', 1),
(920, 1, '59.153.19.149', '2022-12-30 11:55:23', NULL, 'a', 1),
(921, 1, '103.159.73.31', '2022-12-30 13:25:37', '2022-12-30 13:26:53', 'a', 1),
(922, 1, '103.159.73.31', '2022-12-30 14:43:50', NULL, 'a', 1),
(923, 1, '103.159.73.31', '2022-12-30 15:39:12', NULL, 'a', 1),
(924, 1, '59.153.19.149', '2022-12-30 15:43:53', NULL, 'a', 1),
(925, 1, '103.159.73.31', '2022-12-30 15:58:31', NULL, 'a', 1),
(926, 1, '103.159.73.31', '2022-12-30 17:41:39', NULL, 'a', 1),
(927, 1, '103.159.73.31', '2022-12-30 18:30:12', NULL, 'a', 1),
(928, 1, '103.159.73.31', '2022-12-31 09:19:10', NULL, 'a', 1),
(929, 1, '116.58.205.248', '2022-12-31 10:40:16', NULL, 'a', 1),
(930, 1, '103.159.73.31', '2022-12-31 12:14:21', NULL, 'a', 1),
(931, 1, '157.119.49.82', '2022-12-31 13:04:44', NULL, 'a', 1),
(932, 1, '103.158.159.117', '2022-12-31 14:09:18', NULL, 'a', 1),
(933, 3, '103.159.73.31', '2022-12-31 14:27:53', NULL, 'a', 2),
(934, 1, '103.159.73.31', '2023-01-01 09:38:31', NULL, 'a', 1),
(935, 3, '103.159.73.31', '2023-01-01 09:47:03', NULL, 'a', 2),
(936, 1, '37.111.232.97', '2023-01-01 11:20:56', NULL, 'a', 1),
(937, 1, '37.111.232.97', '2023-01-01 11:21:55', NULL, 'a', 1),
(938, 1, '103.159.73.31', '2023-01-01 11:49:13', NULL, 'a', 1),
(939, 1, '103.159.73.31', '2023-01-01 13:20:05', NULL, 'a', 1),
(940, 1, '103.159.73.31', '2023-01-01 15:18:39', NULL, 'a', 1),
(941, 1, '103.164.233.54', '2023-01-01 17:33:24', NULL, 'a', 1),
(942, 1, '59.153.19.149', '2023-01-01 19:33:46', '2023-01-01 21:47:40', 'a', 1),
(943, 3, '103.159.73.31', '2023-01-03 12:31:15', NULL, 'a', 2),
(944, 3, '103.159.73.31', '2023-01-03 12:31:18', NULL, 'a', 2),
(945, 3, '103.159.73.31', '2023-01-04 18:21:19', NULL, 'a', 2),
(946, 3, '103.159.73.31', '2023-01-05 09:50:40', '2023-01-05 09:53:34', 'a', 2),
(947, 3, '116.206.91.194', '2023-01-06 17:34:24', NULL, 'a', 2),
(948, 1, '103.159.73.31', '2023-01-08 19:25:27', NULL, 'a', 1),
(949, 1, '175.136.210.131', '2023-01-08 19:26:34', NULL, 'a', 1),
(950, 1, '175.136.210.131', '2023-01-08 20:17:56', '2023-01-08 21:10:36', 'a', 1),
(951, 1, '175.136.210.131', '2023-01-08 21:11:17', NULL, 'a', 1),
(952, 1, '175.136.210.131', '2023-01-09 09:21:50', NULL, 'a', 1),
(953, 1, '175.136.210.131', '2023-01-09 13:45:01', NULL, 'a', 1),
(954, 3, '103.159.73.31', '2023-01-09 15:05:45', NULL, 'a', 2),
(955, 1, '175.136.210.131', '2023-01-10 13:30:54', NULL, 'a', 1),
(956, 1, '103.159.73.31', '2023-01-10 17:28:37', NULL, 'a', 1),
(957, 3, '103.159.73.31', '2023-01-10 18:08:30', NULL, 'a', 2),
(958, 1, '175.136.210.131', '2023-01-10 22:41:29', NULL, 'a', 1),
(959, 3, '103.159.73.31', '2023-01-11 09:35:28', NULL, 'a', 2),
(960, 3, '103.159.73.31', '2023-01-11 10:09:05', NULL, 'a', 2),
(961, 3, '103.159.73.31', '2023-01-11 10:09:42', NULL, 'a', 2),
(962, 3, '103.159.73.31', '2023-01-11 10:21:49', NULL, 'a', 2),
(963, 3, '::1', '2023-01-19 12:22:33', NULL, 'a', 2),
(964, 3, '::1', '2023-01-19 12:40:56', '2023-01-19 12:42:36', 'a', 2),
(965, 1, '::1', '2023-01-19 12:42:41', '2023-01-19 12:44:18', 'a', 1),
(966, 1, '::1', '2023-01-19 12:44:35', '2023-01-19 12:44:46', 'a', 1),
(967, 1, '::1', '2023-01-19 12:44:57', NULL, 'a', 1),
(968, 1, '::1', '2023-02-11 15:28:14', NULL, 'a', 1),
(969, 1, '::1', '2023-02-12 09:26:41', '2023-02-12 11:22:34', 'a', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`Acc_SlNo`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  ADD PRIMARY KEY (`as_id`),
  ADD KEY `as_date` (`as_date`),
  ADD KEY `status` (`status`),
  ADD KEY `branchid` (`branchid`);

--
-- Indexes for table `tbl_bank_accounts`
--
ALTER TABLE `tbl_bank_accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_bank_transactions`
--
ALTER TABLE `tbl_bank_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `transaction_date` (`transaction_date`),
  ADD KEY `transaction_type` (`transaction_type`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_SiNo`),
  ADD KEY `ProductCategory_SlNo` (`ProductCategory_SlNo`),
  ADD KEY `status` (`status`),
  ADD KEY `brand_branchid` (`brand_branchid`);

--
-- Indexes for table `tbl_brunch`
--
ALTER TABLE `tbl_brunch`
  ADD PRIMARY KEY (`brunch_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_cashtransaction`
--
ALTER TABLE `tbl_cashtransaction`
  ADD PRIMARY KEY (`Tr_SlNo`),
  ADD KEY `Tr_SlNo` (`Tr_SlNo`),
  ADD KEY `Tr_Id` (`Tr_Id`),
  ADD KEY `Tr_date` (`Tr_date`),
  ADD KEY `Tr_Type` (`Tr_Type`),
  ADD KEY `Acc_SlID` (`Acc_SlID`),
  ADD KEY `status` (`status`),
  ADD KEY `Tr_branchid` (`Tr_branchid`);

--
-- Indexes for table `tbl_checks`
--
ALTER TABLE `tbl_checks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cus_id` (`cus_id`),
  ADD KEY `SM_id` (`SM_id`),
  ADD KEY `date` (`date`),
  ADD KEY `remid_date` (`remid_date`),
  ADD KEY `check_status` (`check_status`),
  ADD KEY `status` (`status`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_SiNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`Company_SlNo`),
  ADD KEY `Invoice_Type` (`Invoice_Type`),
  ADD KEY `print_type` (`print_type`),
  ADD KEY `company_BrunchId` (`company_BrunchId`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`Country_SlNo`),
  ADD KEY `Status` (`Status`);

--
-- Indexes for table `tbl_currentinventory`
--
ALTER TABLE `tbl_currentinventory`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `transfer_from_quantity` (`transfer_from_quantity`),
  ADD KEY `transfer_to_quantity` (`transfer_to_quantity`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`Customer_SlNo`),
  ADD KEY `Customer_Code` (`Customer_Code`),
  ADD KEY `Customer_Mobile` (`Customer_Mobile`),
  ADD KEY `Customer_Type` (`Customer_Type`),
  ADD KEY `Country_SlNo` (`Country_SlNo`),
  ADD KEY `area_ID` (`area_ID`),
  ADD KEY `status` (`status`),
  ADD KEY `Customer_brunchid` (`Customer_brunchid`);

--
-- Indexes for table `tbl_customer_payment`
--
ALTER TABLE `tbl_customer_payment`
  ADD PRIMARY KEY (`CPayment_id`),
  ADD KEY `CPayment_date` (`CPayment_date`),
  ADD KEY `CPayment_invoice` (`CPayment_invoice`),
  ADD KEY `CPayment_customerID` (`CPayment_customerID`),
  ADD KEY `CPayment_TransactionType` (`CPayment_TransactionType`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `CPayment_brunchid` (`CPayment_brunchid`),
  ADD KEY `CPayment_status` (`CPayment_status`);

--
-- Indexes for table `tbl_damage`
--
ALTER TABLE `tbl_damage`
  ADD PRIMARY KEY (`Damage_SlNo`),
  ADD KEY `Damage_InvoiceNo` (`Damage_InvoiceNo`),
  ADD KEY `Damage_Date` (`Damage_Date`),
  ADD KEY `status` (`status`),
  ADD KEY `Damage_brunchid` (`Damage_brunchid`);

--
-- Indexes for table `tbl_damagedetails`
--
ALTER TABLE `tbl_damagedetails`
  ADD PRIMARY KEY (`DamageDetails_SlNo`),
  ADD KEY `Damage_SlNo` (`Damage_SlNo`),
  ADD KEY `Product_SlNo` (`Product_SlNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`Department_SlNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  ADD PRIMARY KEY (`Designation_SlNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`District_SlNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`Employee_SlNo`),
  ADD KEY `Designation_ID` (`Designation_ID`),
  ADD KEY `Department_ID` (`Department_ID`),
  ADD KEY `Employee_ID` (`Employee_ID`),
  ADD KEY `status` (`status`),
  ADD KEY `Employee_brinchid` (`Employee_brinchid`);

--
-- Indexes for table `tbl_employee_payment`
--
ALTER TABLE `tbl_employee_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_date` (`payment_date`),
  ADD KEY `month_id` (`month_id`),
  ADD KEY `status` (`status`),
  ADD KEY `paymentBranch_id` (`branch_id`),
  ADD KEY `saved_by` (`saved_by`);

--
-- Indexes for table `tbl_employee_payment_details`
--
ALTER TABLE `tbl_employee_payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `branch_id` (`branch_id`) USING BTREE,
  ADD KEY `payment_id` (`payment_id`) USING BTREE,
  ADD KEY `employee_id` (`employee_id`) USING BTREE,
  ADD KEY `saved_by` (`saved_by`) USING BTREE;

--
-- Indexes for table `tbl_expense_head`
--
ALTER TABLE `tbl_expense_head`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_investment_account`
--
ALTER TABLE `tbl_investment_account`
  ADD PRIMARY KEY (`Acc_SlNo`),
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `branch_id` (`branch_id`) USING BTREE,
  ADD KEY `Acc_Code` (`Acc_Code`) USING BTREE;

--
-- Indexes for table `tbl_investment_transactions`
--
ALTER TABLE `tbl_investment_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `transaction_date` (`transaction_date`),
  ADD KEY `transaction_type` (`transaction_type`),
  ADD KEY `status` (`status`),
  ADD KEY `saved_by` (`saved_by`) USING BTREE,
  ADD KEY `account_id` (`account_id`) USING BTREE;

--
-- Indexes for table `tbl_loan_accounts`
--
ALTER TABLE `tbl_loan_accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `save_date` (`save_date`),
  ADD KEY `branch_id` (`branch_id`) USING BTREE,
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_loan_transactions`
--
ALTER TABLE `tbl_loan_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `transaction_date` (`transaction_date`),
  ADD KEY `transaction_type` (`transaction_type`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `status` (`status`),
  ADD KEY `saved_by` (`saved_by`) USING BTREE;

--
-- Indexes for table `tbl_month`
--
ALTER TABLE `tbl_month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`Product_SlNo`),
  ADD UNIQUE KEY `Product_Code` (`Product_Code`),
  ADD KEY `ProductCategory_ID` (`ProductCategory_ID`),
  ADD KEY `is_service` (`is_service`),
  ADD KEY `Unit_ID` (`Unit_ID`),
  ADD KEY `status` (`status`),
  ADD KEY `Product_branchid` (`Product_branchid`);

--
-- Indexes for table `tbl_productcategory`
--
ALTER TABLE `tbl_productcategory`
  ADD PRIMARY KEY (`ProductCategory_SlNo`),
  ADD KEY `status` (`status`),
  ADD KEY `category_branchid` (`category_branchid`);

--
-- Indexes for table `tbl_purchasedetails`
--
ALTER TABLE `tbl_purchasedetails`
  ADD PRIMARY KEY (`PurchaseDetails_SlNo`),
  ADD KEY `PurchaseMaster_IDNo` (`PurchaseMaster_IDNo`),
  ADD KEY `Product_IDNo` (`Product_IDNo`),
  ADD KEY `Status` (`Status`),
  ADD KEY `PurchaseDetails_branchID` (`PurchaseDetails_branchID`);

--
-- Indexes for table `tbl_purchasemaster`
--
ALTER TABLE `tbl_purchasemaster`
  ADD PRIMARY KEY (`PurchaseMaster_SlNo`),
  ADD KEY `Supplier_SlNo` (`Supplier_SlNo`),
  ADD KEY `Employee_SlNo` (`Employee_SlNo`),
  ADD KEY `PurchaseMaster_InvoiceNo` (`PurchaseMaster_InvoiceNo`),
  ADD KEY `PurchaseMaster_OrderDate` (`PurchaseMaster_OrderDate`),
  ADD KEY `status` (`status`),
  ADD KEY `PurchaseMaster_BranchID` (`PurchaseMaster_BranchID`);

--
-- Indexes for table `tbl_purchasereturn`
--
ALTER TABLE `tbl_purchasereturn`
  ADD PRIMARY KEY (`PurchaseReturn_SlNo`),
  ADD KEY `PurchaseMaster_InvoiceNo` (`PurchaseMaster_InvoiceNo`),
  ADD KEY `Supplier_IDdNo` (`Supplier_IDdNo`),
  ADD KEY `PurchaseReturn_ReturnDate` (`PurchaseReturn_ReturnDate`),
  ADD KEY `Status` (`Status`),
  ADD KEY `PurchaseReturn_brunchID` (`PurchaseReturn_brunchID`);

--
-- Indexes for table `tbl_purchasereturndetails`
--
ALTER TABLE `tbl_purchasereturndetails`
  ADD PRIMARY KEY (`PurchaseReturnDetails_SlNo`),
  ADD KEY `PurchaseReturn_SlNo` (`PurchaseReturn_SlNo`),
  ADD KEY `PurchaseReturnDetailsProduct_SlNo` (`PurchaseReturnDetailsProduct_SlNo`),
  ADD KEY `Status` (`Status`),
  ADD KEY `PurchaseReturnDetails_brachid` (`PurchaseReturnDetails_brachid`);

--
-- Indexes for table `tbl_quotaion_customer`
--
ALTER TABLE `tbl_quotaion_customer`
  ADD PRIMARY KEY (`quotation_customer_id`),
  ADD KEY `quation_customer_branchid` (`quation_customer_branchid`);

--
-- Indexes for table `tbl_quotation_details`
--
ALTER TABLE `tbl_quotation_details`
  ADD PRIMARY KEY (`SaleDetails_SlNo`),
  ADD KEY `SaleMaster_IDNo` (`SaleMaster_IDNo`),
  ADD KEY `Product_IDNo` (`Product_IDNo`),
  ADD KEY `Status` (`Status`),
  ADD KEY `SaleDetails_BranchId` (`SaleDetails_BranchId`);

--
-- Indexes for table `tbl_quotation_master`
--
ALTER TABLE `tbl_quotation_master`
  ADD PRIMARY KEY (`SaleMaster_SlNo`),
  ADD KEY `SaleMaster_InvoiceNo` (`SaleMaster_InvoiceNo`),
  ADD KEY `SaleMaster_SaleDate` (`SaleMaster_SaleDate`),
  ADD KEY `Status` (`Status`),
  ADD KEY `SaleMaster_branchid` (`SaleMaster_branchid`);

--
-- Indexes for table `tbl_saledetails`
--
ALTER TABLE `tbl_saledetails`
  ADD PRIMARY KEY (`SaleDetails_SlNo`),
  ADD KEY `SaleMaster_IDNo` (`SaleMaster_IDNo`),
  ADD KEY `Product_IDNo` (`Product_IDNo`),
  ADD KEY `Status` (`Status`),
  ADD KEY `SaleDetails_BranchId` (`SaleDetails_BranchId`);

--
-- Indexes for table `tbl_salereturn`
--
ALTER TABLE `tbl_salereturn`
  ADD PRIMARY KEY (`SaleReturn_SlNo`),
  ADD KEY `SaleMaster_InvoiceNo` (`SaleMaster_InvoiceNo`),
  ADD KEY `SaleReturn_ReturnDate` (`SaleReturn_ReturnDate`),
  ADD KEY `Status` (`Status`),
  ADD KEY `SaleReturn_brunchId` (`SaleReturn_brunchId`);

--
-- Indexes for table `tbl_salereturndetails`
--
ALTER TABLE `tbl_salereturndetails`
  ADD PRIMARY KEY (`SaleReturnDetails_SlNo`),
  ADD KEY `SaleReturn_IdNo` (`SaleReturn_IdNo`),
  ADD KEY `SaleReturnDetailsProduct_SlNo` (`SaleReturnDetailsProduct_SlNo`),
  ADD KEY `Status` (`Status`),
  ADD KEY `SaleReturnDetails_brunchID` (`SaleReturnDetails_brunchID`);

--
-- Indexes for table `tbl_salesmaster`
--
ALTER TABLE `tbl_salesmaster`
  ADD PRIMARY KEY (`SaleMaster_SlNo`),
  ADD KEY `SaleMaster_InvoiceNo` (`SaleMaster_InvoiceNo`),
  ADD KEY `SalseCustomer_IDNo` (`SalseCustomer_IDNo`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `SaleMaster_SaleDate` (`SaleMaster_SaleDate`),
  ADD KEY `Status` (`Status`),
  ADD KEY `is_service` (`is_service`),
  ADD KEY `SaleMaster_branchid` (`SaleMaster_branchid`);

--
-- Indexes for table `tbl_sms`
--
ALTER TABLE `tbl_sms`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`Supplier_SlNo`),
  ADD KEY `Supplier_Code` (`Supplier_Code`),
  ADD KEY `Supplier_Mobile` (`Supplier_Mobile`),
  ADD KEY `District_SlNo` (`District_SlNo`),
  ADD KEY `Country_SlNo` (`Country_SlNo`),
  ADD KEY `Status` (`Status`),
  ADD KEY `Supplier_brinchid` (`Supplier_brinchid`);

--
-- Indexes for table `tbl_supplier_payment`
--
ALTER TABLE `tbl_supplier_payment`
  ADD PRIMARY KEY (`SPayment_id`),
  ADD KEY `SPayment_date` (`SPayment_date`),
  ADD KEY `SPayment_invoice` (`SPayment_invoice`),
  ADD KEY `SPayment_customerID` (`SPayment_customerID`),
  ADD KEY `SPayment_TransactionType` (`SPayment_TransactionType`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `SPayment_brunchid` (`SPayment_brunchid`),
  ADD KEY `SPayment_status` (`SPayment_status`);

--
-- Indexes for table `tbl_transferdetails`
--
ALTER TABLE `tbl_transferdetails`
  ADD PRIMARY KEY (`transferdetails_id`),
  ADD KEY `transfer_id` (`transfer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tbl_transfermaster`
--
ALTER TABLE `tbl_transfermaster`
  ADD PRIMARY KEY (`transfer_id`),
  ADD KEY `transfer_date` (`transfer_date`),
  ADD KEY `transfer_from` (`transfer_from`),
  ADD KEY `transfer_to` (`transfer_to`);

--
-- Indexes for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  ADD PRIMARY KEY (`Unit_SlNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`User_SlNo`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `User_Name` (`User_Name`),
  ADD KEY `User_Password` (`User_Password`),
  ADD KEY `UserType` (`UserType`),
  ADD KEY `status` (`status`),
  ADD KEY `Brunch_ID` (`Brunch_ID`);

--
-- Indexes for table `tbl_user_access`
--
ALTER TABLE `tbl_user_access`
  ADD PRIMARY KEY (`access_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_user_activity`
--
ALTER TABLE `tbl_user_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `branch_id` (`branch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `Acc_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_bank_accounts`
--
ALTER TABLE `tbl_bank_accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_bank_transactions`
--
ALTER TABLE `tbl_bank_transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_SiNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_brunch`
--
ALTER TABLE `tbl_brunch`
  MODIFY `brunch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_cashtransaction`
--
ALTER TABLE `tbl_cashtransaction`
  MODIFY `Tr_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `tbl_checks`
--
ALTER TABLE `tbl_checks`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_SiNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `Company_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `Country_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_currentinventory`
--
ALTER TABLE `tbl_currentinventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `Customer_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `tbl_customer_payment`
--
ALTER TABLE `tbl_customer_payment`
  MODIFY `CPayment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_damage`
--
ALTER TABLE `tbl_damage`
  MODIFY `Damage_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_damagedetails`
--
ALTER TABLE `tbl_damagedetails`
  MODIFY `DamageDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `Department_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  MODIFY `Designation_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `District_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `Employee_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_employee_payment`
--
ALTER TABLE `tbl_employee_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_employee_payment_details`
--
ALTER TABLE `tbl_employee_payment_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_expense_head`
--
ALTER TABLE `tbl_expense_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_investment_account`
--
ALTER TABLE `tbl_investment_account`
  MODIFY `Acc_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_investment_transactions`
--
ALTER TABLE `tbl_investment_transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_loan_accounts`
--
ALTER TABLE `tbl_loan_accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_loan_transactions`
--
ALTER TABLE `tbl_loan_transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_month`
--
ALTER TABLE `tbl_month`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `Product_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_productcategory`
--
ALTER TABLE `tbl_productcategory`
  MODIFY `ProductCategory_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_purchasedetails`
--
ALTER TABLE `tbl_purchasedetails`
  MODIFY `PurchaseDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `tbl_purchasemaster`
--
ALTER TABLE `tbl_purchasemaster`
  MODIFY `PurchaseMaster_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tbl_purchasereturn`
--
ALTER TABLE `tbl_purchasereturn`
  MODIFY `PurchaseReturn_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_purchasereturndetails`
--
ALTER TABLE `tbl_purchasereturndetails`
  MODIFY `PurchaseReturnDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_quotaion_customer`
--
ALTER TABLE `tbl_quotaion_customer`
  MODIFY `quotation_customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_quotation_details`
--
ALTER TABLE `tbl_quotation_details`
  MODIFY `SaleDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_quotation_master`
--
ALTER TABLE `tbl_quotation_master`
  MODIFY `SaleMaster_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_saledetails`
--
ALTER TABLE `tbl_saledetails`
  MODIFY `SaleDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT for table `tbl_salereturn`
--
ALTER TABLE `tbl_salereturn`
  MODIFY `SaleReturn_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_salereturndetails`
--
ALTER TABLE `tbl_salereturndetails`
  MODIFY `SaleReturnDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_salesmaster`
--
ALTER TABLE `tbl_salesmaster`
  MODIFY `SaleMaster_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `tbl_sms`
--
ALTER TABLE `tbl_sms`
  MODIFY `row_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `Supplier_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_supplier_payment`
--
ALTER TABLE `tbl_supplier_payment`
  MODIFY `SPayment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_transferdetails`
--
ALTER TABLE `tbl_transferdetails`
  MODIFY `transferdetails_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_transfermaster`
--
ALTER TABLE `tbl_transfermaster`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  MODIFY `Unit_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `User_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_user_access`
--
ALTER TABLE `tbl_user_access`
  MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user_activity`
--
ALTER TABLE `tbl_user_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=970;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
