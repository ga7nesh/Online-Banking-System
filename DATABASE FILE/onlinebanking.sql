-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2022 at 06:22 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinebanking`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `AccountNo` varchar(12) NOT NULL,
  `Balance` varchar(100) NOT NULL,
  `SavingBalance` varchar(100) NOT NULL,
  `SavingTarget` varchar(100) NOT NULL,
  `AccountType` text NOT NULL,
  `State` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `AccountNo`, `Balance`, `SavingBalance`, `SavingTarget`, `AccountType`, `State`) VALUES
(1, '417210931070', '921', '0.0', '', 'Saving', 0),
(2, '428211056080', '100.0', '0.0', '', 'Saving', 0),
(3, '430211112350', '400', '0.0', '', 'Saving', 0),
(4, '410211023120', '0.0', '0.0', '', 'Saving', 0),
(5, '410211027350', '2169', '0.0', '', 'Saving', 0),
(6, '410211106420', '1900', '215', '1000', 'Saving', 0),
(7, '521211855380', '100', '', '', 'Saving', 0),
(8, '525211930120', '3620', '700', '2000', 'Saving', 0),
(9, '65210906260', '0.0', '', '', 'Saving', 0),
(10, '731211034570', '0.0', '0.0', '', 'Saving', 0),
(11, '805210624200', '4412', '0.0', '', 'Saving', 0),
(12, '425221558410', '6425', '12500', '35600', 'Saving', 0),
(13, '425221845170', '1471', '0.0', '', 'Saving', 0),
(14, '730221507250', '649', '0.0', '', 'Saving', 0),
(15, '122222194134', '1702', '0.0', '', 'Saving', 0),
(16, '122222200124', '5237', '8025', '36500', 'Saving', 0),
(17, '122322183652', '0.0', '0.0', '', 'Saving', 0),
(18, '122322183932', '0.0', '0.0', '', 'Saving', 0),
(19, '122322184118', '0.0', '0.0', '', 'Saving', 0),
(20, '122322184302', '0.0', '0.0', '', 'Saving', 0),
(21, '122322184450', '0.0', '0.0', '', 'Saving', 0),
(22, '122322184639', '0.0', '0.0', '', 'Saving', 0),
(23, '122322184938', '0.0', '0.0', '', 'Saving', 0),
(24, '122422110346', '0.0', '0.0', '', 'Saving', 0),
(25, '122422110545', '0.0', '0.0', '', 'Saving', 0),
(26, '122422110958', '0.0', '0.0', '', 'Saving', 0),
(27, '122422111754', '0.0', '0.0', '', 'Saving', 0),
(28, '122422174135', '3606', '0.0', '', 'Saving', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `srNo` int(11) NOT NULL,
  `AccountNo` varchar(12) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `CardNo` varchar(16) NOT NULL,
  `cvv` int(3) NOT NULL,
  `IssuedDate` varchar(20) NOT NULL,
  `ExpiryDate` varchar(20) NOT NULL,
  `Status` varchar(12) NOT NULL,
  `Verified` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`srNo`, `AccountNo`, `Name`, `CardNo`, `cvv`, `IssuedDate`, `ExpiryDate`, `Status`, `Verified`) VALUES
(16, '410211106420', 'HARRY DENN', '0273121091056041', 743, '31/07/21', '07/31', 'Active', 'Yes'),
(19, '525211930120', 'ANTONIO CONLEY', '5273121092425052', 542, '', '', 'Inactive', 'No'),
(20, '731211034570', 'LEEYA DAVIS', '1273121103631073', 803, '', '', 'Inactive', 'No'),
(22, '805210624200', 'EMMA CAPEL', '5280521063021080', 797, '05/08/21', '08/31', 'Active', 'Yes'),
(23, '425221558410', 'CHRISTINE MOORE', '5242522192735042', 711, '', '', 'Inactive', 'No'),
(24, '425221845170', 'TERRY  RIVERA', '5212242217243504', 577, '', '', 'Inactive', 'No'),
(25, '122222200124', 'PEGGY CLAYTON', '2212242217462601', 359, '24/12/22', '12/32', 'Active', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `customer_detail`
--

CREATE TABLE `customer_detail` (
  `C_No` int(11) NOT NULL,
  `Account_No` varchar(12) NOT NULL,
  `C_First_Name` text NOT NULL,
  `C_Last_Name` text NOT NULL,
  `Gender` text NOT NULL,
  `C_Father_Name` text NOT NULL,
  `C_Mother_Name` text NOT NULL,
  `C_Birth_Date` date NOT NULL,
  `C_Citizenship_No` varchar(12) NOT NULL,
  `C_Pan_No` varchar(10) NOT NULL,
  `C_Mobile_No` varchar(10) NOT NULL,
  `C_Email` varchar(191) NOT NULL,
  `C_Pincode` varchar(6) NOT NULL,
  `C_Citizenship_Doc` varchar(191) NOT NULL,
  `C_Pan_Doc` varchar(191) NOT NULL,
  `Create_Date` date DEFAULT NULL,
  `ProfileColor` varchar(100) NOT NULL,
  `ProfileImage` varchar(191) NOT NULL,
  `Bio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_detail`
--

INSERT INTO `customer_detail` (`C_No`, `Account_No`, `C_First_Name`, `C_Last_Name`, `Gender`, `C_Father_Name`, `C_Mother_Name`, `C_Birth_Date`, `C_Citizenship_No`, `C_Pan_No`, `C_Mobile_No`, `C_Email`, `C_Pincode`, `C_Citizenship_Doc`, `C_Pan_Doc`, `Create_Date`, `ProfileColor`, `ProfileImage`, `Bio`) VALUES
(1, '410211023120', 'OBS', 'Admin', 'Male', 'Jarvis', 'Friday', '1986-03-21', '123456789011', 'CASTR0123N', '3785554500', 'admin@mail.com', '123456', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2021-03-15', 'Blue', 'customer_data/Profile_Img/adminplaceholder.png', ''),
(2, '410211027350', 'William', 'Porter', 'Male', 'Dennis', 'Tania', '1999-05-01', '123456789012', 'CASTR007T', '1234567890', 'wporter@mail.com', '123456', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2021-03-15', 'yellow', '', 'codeastro.com'),
(3, '410211106420', 'Harry', 'Denn', 'Male', 'Jonny', 'Camelia', '1982-01-10', '123456789013', 'WERTY1234Q', '9044327865', 'harryd@mail.com', '123456', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2021-03-15', 'skyblue', '', 'codeastro.com'),
(4, '417210931070', 'Linda', 'Cross', '', 'Joseph', 'Lily', '1989-04-18', '123456789017', 'ASDFG1234W', '8877994432', 'lindac@mail.com', '123456', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2021-04-17', 'Pink', '', ''),
(5, '428211056080', 'Susanne', 'Coggins', '', 'Michael', 'Sasha', '1995-01-28', '123456789020', 'WERTY1234I', '4466239877', 'susanne@mail.com', '112345', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2021-04-17', 'Orange', '', 'codeastro.com'),
(6, '430211112350', 'Ryan', 'Conn', '', 'Colin', 'Sarah', '1990-09-30', '123456789022', 'WERTY1234R', '1234557890', 'ryancc@mail.com', '112345', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2021-04-30', 'Red', '', ''),
(7, '521211855380', 'Brian', 'Johnson', '', 'Andy', 'Gwenn', '1995-01-21', '123456789018', 'OLXEW1234E', '7634564421', 'brian@mail.com', '435306', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2021-05-21', '#5aeb8f', '', ''),
(8, '525211930120', 'Antonio', 'Conley', 'Male', 'Anthony', 'Lizabeth', '2002-10-28', '123456789021', 'KKLLR3245E', '8899456612', 'antonio@mail.com', '425303', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2021-05-21', '#b87b84', '', 'codeastro.com'),
(9, '65210906260', 'Brandon', 'Davidson', '', 'Rick', 'Aleena', '1999-12-29', '123456789001', 'ASDFP1234L', '2266889944', 'brandond@mail.com', '123456', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2021-05-21', '#dec47a', '', ''),
(10, '731211034570', 'Leeya', 'Davis', 'Female', 'Johnn', 'Liz', '1998-07-28', '123456789009', 'ASDFG1234P', '5588094476', 'leeyad@mail.com', '123456', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2021-05-21', '#f9a652', '', 'codeastro.com'),
(11, '805210624200', 'Emma', 'Capel', 'Female', 'Jeoff', 'Sussane', '1998-01-05', '123456789007', 'ASDFG1234Y', '5588094476', 'emmac@mail.com', '123456', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2021-08-05', '#3916d7', '', 'codeastro.com'),
(12, '425221558410', 'Christine', 'Moore', 'Female', 'Jamies Moore', 'Elizabeth Moore', '1991-01-12', '444444444400', 'ABCTY1234D', '7741114470', 'christine@mail.com', '123456', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2021-08-05', '#624edb', '', 'codeastro.com'),
(13, '425221845170', 'Terry ', 'Rivera', 'Not Available', 'John Rivera', 'Elley Rivera', '1988-12-10', '444494444469', 'ABCTY1006D', '7778887777', 'terryy@mail.com', '777777', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2021-08-05', '#471acb', '', ''),
(14, '730221507250', 'John', 'Stuart', 'Not Available', 'Henry Stuart', 'Lilly Stuart', '1991-12-12', '124494404469', 'AXCTY1556D', '7850001451', 'johnstuart@mail.com', '123455', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2021-08-05', '#c6b8dc', '', 'codeastro.com'),
(15, '122222194134', 'John', 'Parmer', 'Not Available', 'Daniel K Parmer', 'Martha Parmer', '1989-01-12', '100012457896', 'CASTR0234D', '7412223562', 'johnparmer@mail.com', '101111', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2022-12-20', '#03b1c8', '', ''),
(16, '122222200124', 'Peggy', 'Clayton', 'Female', 'Thomas Clayton', 'Marie Clayton', '1989-12-12', '197855554520', 'CASTR0777T', '7412225656', 'peggy@mail.com', '100025', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2022-12-20', '#6c01a6', '', 'codeastro.com'),
(17, '122322183652', 'Jonathon', 'Wright', 'Not Available', 'Martin Wright', 'Clara Wright', '1985-12-11', '101011114458', 'CASTR0111Q', '7412360000', 'jonathon@mail.com', '444400', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2022-12-23', '#08ecee', '', ''),
(18, '122322183932', 'Joe', 'Melmberg', 'Not Available', 'Kelvin Melmberg', 'Liza Melmberg', '1990-12-19', '101254589655', 'CASTR0555P', '7458882210', 'joe@mail.com', '404045', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2022-12-23', '#e0cafa', '', ''),
(19, '122322184118', 'Charles', 'Johnson', 'Not Available', 'Matthew L Johnson', 'Clara Johnson', '1994-12-05', '104444785699', 'CASTR0787Y', '7896665200', 'charles@mail.com', '741250', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2022-12-23', '#944d1f', '', ''),
(20, '122322184302', 'Tracy', 'Morrison', 'Not Available', 'Johnson Morrison', 'Layla Morrison', '1989-12-19', '147855555520', 'CASTR0696P', '7896665656', 'tracy@mail.com', '555505', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2022-12-23', '#e0010d', '', ''),
(21, '122322184450', 'Alan', 'Woodall', 'Not Available', 'Michael Woodall', 'Stella Woodall', '1995-02-25', '320000145896', 'CASTR0690Z', '7458885450', 'alan@mail.com', '200026', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2022-12-23', '#d69ac7', '', ''),
(22, '122322184639', 'Ronald', 'Bradt', 'Not Available', 'Steven Bradt', 'Emily Bradt', '1997-05-01', '101011114589', 'CASTR0444T', '7412225254', 'ronald@mail.com', '200014', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2022-12-23', '#a4d8c6', '', ''),
(23, '122322184938', 'Jerry', 'Brown', 'Not Available', 'Steeve Brown', 'Millie Brown', '1998-09-28', '102587456666', 'CASTR0545I', '7454540025', 'jerry@mail.com', '200024', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2022-12-23', '#0ed7de', '', ''),
(24, '122422110346', 'Gerald', 'Wesley', 'Not Available', 'Matt Wesley', 'Stiffany Wesley', '1995-01-26', '104785666650', 'CASTR0555Q', '7104110002', 'gerald@mail.com', '200025', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2022-12-24', '#188800', '', ''),
(25, '122422110545', 'Irene', 'Haas', 'Not Available', 'John Haas', 'Elle Haas', '1990-09-12', '400025600012', 'CASTR0696T', '7001456969', 'irene@mail.com', '200240', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2022-12-24', '#fbcd85', '', ''),
(26, '122422110958', 'Ethan', 'Mount', 'Not Available', 'Stephen M Mount', 'Stella Mount', '1978-02-12', '301200000012', 'CASTR0007T', '7450002125', 'ethan@mail.com', '200017', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2022-12-24', '#769af1', '', ''),
(27, '122422111754', 'Dean', 'Radcliff', 'Not Available', 'Morgan Radcliff', 'Lizzie Radclif', '1989-05-30', '200014569612', 'CASTR0011I', '7896665650', 'dean@mail.com', '200058', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2022-12-24', '#ca797a', '', ''),
(28, '122422174135', 'Test', 'Account', 'Not Available', 'Test Account Father', 'Test Account Mother', '1992-05-19', '101022545800', 'CASTR0557L', '7774520025', 'testaccount@mail.com', '200085', 'customer_data/Citizenship_doc/362x23912222022194134.png', 'customer_data/Pan_doc/362x23912222022200124.png', '2022-12-24', '#78b5e7', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `AccountNo` varchar(12) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `State` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `AccountNo`, `Username`, `Password`, `Status`, `State`) VALUES
(16, '122222194134', 'johnparmer', 'd00f5d5217896fb7fd601412cb890830', 'Active', 0),
(17, '122222200124', 'peggyclayton', 'd00f5d5217896fb7fd601412cb890830', 'Active', 0),
(18, '122322183652', 'jonathon', 'd00f5d5217896fb7fd601412cb890830', 'Inactive', 0),
(19, '122322183932', 'joeberg', 'd00f5d5217896fb7fd601412cb890830', 'Inactive', 0),
(20, '122322184118', 'charles', 'd00f5d5217896fb7fd601412cb890830', 'Inactive', 0),
(21, '122322184302', 'tracym', 'd00f5d5217896fb7fd601412cb890830', 'Inactive', 0),
(22, '122322184450', 'alanwood', 'd00f5d5217896fb7fd601412cb890830', 'Inactive', 0),
(23, '122322184639', 'ronald', 'd00f5d5217896fb7fd601412cb890830', 'Inactive', 0),
(24, '122322184938', 'jerryb', 'd00f5d5217896fb7fd601412cb890830', 'Inactive', 0),
(25, '122422110346', 'gerald', 'd00f5d5217896fb7fd601412cb890830', 'Inactive', 0),
(26, '122422110545', 'ireneh', 'd00f5d5217896fb7fd601412cb890830', 'Inactive', 0),
(27, '122422110958', 'ethann', 'd00f5d5217896fb7fd601412cb890830', 'Inactive', 0),
(28, '122422111754', 'dradcliff', 'd00f5d5217896fb7fd601412cb890830', 'Inactive', 0),
(29, '122422174135', 'testaccount', 'd00f5d5217896fb7fd601412cb890830', 'Active', 0),
(1, '410211023120', 'admin', 'f2d0ff370380124029c2b807a924156c', 'Super', 1),
(2, '410211027350', 'williamp', 'd00f5d5217896fb7fd601412cb890830', 'Active', 0),
(3, '410211106420', 'harrydenn', 'd00f5d5217896fb7fd601412cb890830', 'Active', 0),
(4, '417210931070', 'lindacross', 'd00f5d5217896fb7fd601412cb890830', 'Active', 0),
(13, '425221558410', 'christine', '5d6c0616bd1271b1527d03139e60753c', 'Active', 0),
(14, '425221845170', 'terry10', '5d6c0616bd1271b1527d03139e60753c', 'Active', 0),
(6, '428211056080', 'sussanne', 'd00f5d5217896fb7fd601412cb890830', 'Active', 0),
(7, '430211112350', 'ryanconn', 'd00f5d5217896fb7fd601412cb890830', 'Active', 0),
(8, '521211855380', 'brianj', '044568cbbe7dc05fcbd6f801676ac972', 'Deactivated', 0),
(9, '525211930120', 'antonio', '044568cbbe7dc05fcbd6f801676ac972', 'Active', 0),
(10, '65210906260', 'brandon101', '044568cbbe7dc05fcbd6f801676ac972', 'Inactive', 0),
(15, '730221507250', 'johnstuart', 'd00f5d5217896fb7fd601412cb890830', 'Active', 0),
(11, '731211034570', 'leeyadavis', '044568cbbe7dc05fcbd6f801676ac972', 'Active', 0),
(12, '805210624200', 'emmacapel', 'd00f5d5217896fb7fd601412cb890830', 'Active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `AccountNo` varchar(12) NOT NULL,
  `FAccountNo` varchar(12) NOT NULL,
  `Name` text NOT NULL,
  `Amount` varchar(100) NOT NULL,
  `Debit` varchar(100) NOT NULL,
  `Credit` varchar(100) NOT NULL,
  `Date` datetime DEFAULT CURRENT_TIMESTAMP,
  `Status` text NOT NULL,
  `ProfileColor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `AccountNo`, `FAccountNo`, `Name`, `Amount`, `Debit`, `Credit`, `Date`, `Status`, `ProfileColor`) VALUES
(2, '410211106420', '412211317400', 'Harry Denn', '100', '0.0', '100', '2021-04-16 00:00:00', 'Credited', 'skyblue'),
(4, '412211317400', '410211106420', 'Harry Denn', '-100', '100', '0.0', '2021-04-16 00:00:00', 'Debited', 'skyblue'),
(6, '412211317400', '410211106420', 'Harry Denn', '100', '0.0', '100', '2021-04-16 00:00:00', 'Credited', 'skyblue'),
(9, '412211317400', '410211106420', 'Harry Denn', '-200', '200', '0.0', '2021-05-16 00:00:00', 'Debited', 'skyblue'),
(10, '410211106420', 'NA', 'BANKING SYSTEM', '200', '0.0', '200', '2021-05-16 00:00:00', 'Credited', 'blue'),
(11, '410211106420', 'NA', 'BANKING SYSTEM', '400', '0.0', '400', '2021-05-16 00:00:00', 'Credited', 'blue'),
(12, '412211317400', 'NA', 'BANKING SYSTEM', '300', '0.0', '300', '2021-05-16 00:00:00', 'Credited', 'blue'),
(13, '410211106420', 'NA', 'BANKING SYSTEM', '-100', '100', '0.0', '2021-05-16 00:00:00', 'Debited', 'blue'),
(14, '410211106420', 'NA', 'BANKING SYSTEM', '-100', '100', '0.0', '2021-05-16 00:00:00', 'Debited', 'blue'),
(16, '412211317400', '410211106420', 'Harry Denn', '-200', '200', '0.0', '2021-05-21 00:00:00', 'Debited', 'skyblue'),
(17, '410211106420', 'NA', 'BANKING SYSTEM', '-300', '300', '0.0', '2021-05-21 00:00:00', 'Debited', 'blue'),
(18, '412211317400', '410211106420', 'Harry Denn', '200', '0.0', '200', '2021-05-21 00:00:00', 'Credited', 'skyblue'),
(20, '410211106420', 'NA', 'BANKING SYSTEM', '-100', '100', '0.0', '2021-05-21 00:00:00', 'Debited', 'blue'),
(22, '412211317400', '410211106420', 'Harry Denn', '-175', '175', '0.0', '2021-05-21 00:00:00', 'Debited', 'skyblue'),
(23, '410211106420', 'NA', 'BANKING SYSTEM', '-100', '100', '0.0', '2021-05-21 00:00:00', 'Debited', 'blue'),
(24, '412211317400', 'NA', 'BANKING SYSTEM', '400', '0.0', '400', '2021-05-21 00:00:00', 'Credited', 'blue'),
(25, '412211317400', 'NA', 'BANKING SYSTEM', '-110', '110', '0.0', '2021-05-21 00:00:00', 'Debited', 'blue'),
(26, '521211855380', 'NA', 'BANKING SYSTEM', '1000', '0.0', '1000', '2021-05-21 00:00:00', 'Credited', 'blue'),
(27, '521211855380', '410211106420', 'Harry Denn', '400', '0.0', '400', '2021-05-21 00:00:00', 'Credited', 'skyblue'),
(28, '410211106420', '521211855380', 'Brian Johnson', '-400', '400', '0.0', '2021-05-21 00:00:00', 'Debited', '#5aeb8f'),
(29, '410211106420', '521211855380', 'Brian Johnson', '1300', '0.0', '1300', '2021-05-21 00:00:00', 'Credited', '#5aeb8f'),
(30, '521211855380', '410211106420', 'Harry Denn', '-1300', '1300', '0.0', '2021-05-21 00:00:00', 'Debited', 'skyblue'),
(31, '410211106420', 'NA', 'BANKING SYSTEM', '500', '0.0', '500', '2021-05-22 00:00:00', 'Credited', 'blue'),
(32, '410211106420', 'NA', 'BANKING SYSTEM', '200', '0.0', '200', '2021-05-22 00:00:00', 'Credited', 'blue'),
(33, '410211106420', 'NA', 'BANKING SYSTEM', '-100', '100', '0.0', '2021-05-22 00:00:00', 'Debited', 'blue'),
(34, '412211317400', '410211106420', 'Harry Denn', '20', '0.0', '20', '2021-05-23 00:00:00', 'Credited', 'skyblue'),
(36, '412211317400', '410211106420', 'Harry Denn', '10', '0.0', '10', '2021-05-23 00:00:00', 'Credited', 'skyblue'),
(38, '412211317400', '410211106420', 'Harry Denn', '10', '0.0', '10', '2021-05-23 00:00:00', 'Credited', 'skyblue'),
(40, '412211317400', '410211106420', 'Harry Denn', '44', '0.0', '44', '2021-05-23 00:00:00', 'Credited', 'skyblue'),
(42, '412211317400', '410211106420', 'Harry Denn', '11', '0.0', '11', '2021-05-23 00:00:00', 'Credited', 'skyblue'),
(44, '412211317400', '410211106420', 'Harry Denn', '12', '0.0', '12', '2021-05-23 00:00:00', 'Credited', 'skyblue'),
(46, '412211317400', '410211106420', 'Harry Denn', '10', '0.0', '10', '2021-05-23 00:00:00', 'Credited', 'skyblue'),
(49, '412211317400', '410211106420', 'Harry Denn', '-200', '200', '0.0', '2021-05-23 00:00:00', 'Debited', 'skyblue'),
(51, '412211317400', '417210931070', 'Linda Cross', '-111', '111', '0.0', '2021-05-25 00:00:00', 'Debited', 'Pink'),
(55, '525211930120', 'NA', 'BANKING SYSTEM', '5000', '0.0', '5000', '2021-05-25 00:00:00', 'Credited', 'blue'),
(56, '412211317400', '525211930120', 'Antonio Conley', '1000', '0.0', '1000', '2021-05-25 00:00:00', 'Credited', '#b87b84'),
(58, '412211317400', '525211930120', 'Antonio Conley', '10', '0.0', '10', '2021-05-25 00:00:00', 'Credited', '#b87b84'),
(60, '410211106420', '525211930120', 'Antonio Conley', '20', '0.0', '20', '2021-05-25 00:00:00', 'Credited', '#b87b84'),
(61, '525211930120', '410211106420', 'Harry Denn', '-20', '20', '0.0', '2021-05-25 00:00:00', 'Debited', 'skyblue'),
(62, '412211317400', '525211930120', 'Antonio Conley', '20', '0.0', '20', '2021-05-25 00:00:00', 'Credited', '#b87b84'),
(64, '412211317400', '525211930120', 'Antonio Conley', '30', '0.0', '30', '2021-05-25 00:00:00', 'Credited', '#b87b84'),
(66, '412211317400', '525211930120', 'Antonio Conley', '200', '0.0', '200', '2021-05-25 00:00:00', 'Credited', '#b87b84'),
(71, '412211317400', '410211106420', 'Harry Denn', '-30', '30', '0.0', '2021-05-26 00:00:00', 'Debited', 'skyblue'),
(73, '412211317400', '410211106420', 'Harry Denn', '-1000', '	 1000', '0.0', '2021-05-26 00:00:00', 'Debited', 'skyblue'),
(75, '412211317400', '410211106420', 'Harry Denn', '-40', '40', '0.0', '2021-05-26 00:00:00', 'Debited', 'skyblue'),
(76, '412211317400', '410211106420', 'Harry Denn', '1000', '0.0', '1000', '2021-05-26 00:00:00', 'Credited', 'skyblue'),
(79, '412211317400', '410211106420', 'Harry Denn', '-500', '500', '0.0', '2021-05-26 00:00:00', 'Debited', 'skyblue'),
(80, '412211317400', '410211106420', 'Harry Denn', '1400', '0.0', '1400', '2021-05-26 00:00:00', 'Credited', 'skyblue'),
(82, '412211317400', '525211930120', 'Antonio Conley', '400', '0.0', '400', '2021-05-26 00:00:00', 'Credited', '#b87b84'),
(85, '412211317400', '430211112350', 'Ryan Conn', '-400', '400', '0.0', '2021-05-26 00:00:00', 'Debited', 'Red'),
(87, '412211317400', '410211106420', 'Harry Denn', '-30', '30', '0.0', '2021-05-26 00:00:00', 'Debited', 'skyblue'),
(89, '412211317400', '410211106420', 'Harry Denn', '-200', '200', '0.0', '2021-05-28 00:00:00', 'Debited', 'skyblue'),
(91, '412211317400', '410211106420', 'Harry Denn', '-30', '30', '0.0', '2021-06-03 00:00:00', 'Debited', 'skyblue'),
(92, '412211317400', 'NA', 'BANKING SYSTEM', '5000', '0.0', '5000', '2021-06-05 00:00:00', 'Credited', 'blue'),
(94, '412211317400', '410211106420', 'Harry Denn', '-100', '100', '0.0', '2021-06-05 00:00:00', 'Debited', 'skyblue'),
(95, '412211317400', 'NA', 'BANKING SYSTEM', '200', '0.0', '	 200', '2021-06-05 00:00:00', 'Credited', 'blue'),
(96, '412211317400', 'NA', 'BANKING SYSTEM', '-100', '100', '0.0', '2021-06-05 00:00:00', 'Debited', 'blue'),
(97, '412211317400', 'NA', 'BANKING SYSTEM', '400', '0.0', '400', '2021-06-05 00:00:00', 'Credited', 'blue'),
(98, '606211350260', 'NA', 'BANKING SYSTEM', '1000', '0.0', '	 1000', '2021-06-06 00:00:00', 'Credited', 'blue'),
(99, '606211350260', 'NA', 'BANKING SYSTEM', '-999', '999', '0.0', '2021-06-06 00:00:00', 'Debited', 'blue'),
(100, '412211317400', '410211106420', 'Harry Denn', '200', '0.0', '200', '2021-06-06 00:00:00', 'Credited', 'skyblue'),
(103, '412211317400', '410211106420', 'Harry Denn', '-1000', '1000', '0.0', '2021-06-06 00:00:00', 'Debited', 'skyblue'),
(104, '410211106420', 'NA', 'BANKING SYSTEM', '-300', '300', '0.0', '2021-06-06 00:00:00', 'Debited', 'blue'),
(105, '410211106420', 'NA', 'BANKING SYSTEM', '2000', '0.0', '2000', '2021-06-06 00:00:00', 'Credited', 'blue'),
(107, '412211317400', '410211106420', 'Harry Denn', '-20', '20', '0.0', '2021-06-29 00:00:00', 'Debited', 'skyblue'),
(108, '410211106420', '525211930120', 'Antonio Conley', '300', '0.0', '300', '2021-07-31 00:00:00', 'Credited', '#b87b84'),
(109, '525211930120', '410211106420', 'Harry Denn', '-300', '300', '0.0', '2021-07-31 00:00:00', 'Debited', 'skyblue'),
(110, '525211930120', '410211106420', 'Harry Denn', '1000', '0.0', '1000', '2021-07-31 00:00:00', 'Credited', 'skyblue'),
(111, '410211106420', '525211930120', 'Antonio Conley', '-1000', '1000', '0.0', '2021-07-31 00:00:00', 'Debited', '#b87b84'),
(112, '525211930120', '410211106420', 'Harry Denn', '200', '0.0', '200', '2021-08-04 00:00:00', 'Credited', 'skyblue'),
(113, '410211106420', '525211930120', 'Antonio Conley', '-200', '200', '0.0', '2021-08-04 00:00:00', 'Debited', '#b87b84'),
(114, '804211817510', 'NA', 'BANKING SYSTEM', '10000', '0.0', '10000', '2021-08-04 00:00:00', 'Credited', 'blue'),
(115, '804211817510', 'NA', 'BANKING SYSTEM', '-10000', '10000', '0.0', '2021-08-04 00:00:00', 'Debited', 'blue'),
(116, '525211930120', '410211106420', 'Harry Denn', '100', '0.0', '100', '2021-08-05 00:00:00', 'Credited', 'skyblue'),
(117, '410211106420', '525211930120', 'Antonio Conley', '-100', '100', '0.0', '2021-08-05 00:00:00', 'Debited', '#b87b84'),
(118, '805210624200', 'NA', 'BANKING SYSTEM', '5000', '0.0', '5000', '2021-08-05 00:00:00', 'Credited', 'blue'),
(120, '805210624200', '410211106420', 'Harry Denn', '-200', '200', '0.0', '2021-08-05 00:00:00', 'Debited', 'skyblue'),
(121, '805210624200', 'NA', 'BANKING SYSTEM', '-100', '100', '0.0', '2021-08-05 00:00:00', 'Debited', 'blue'),
(122, '425221558410', 'NA', 'BANKING SYSTEM', '7100', '0.0', '7100', NULL, 'Credited', 'blue'),
(123, '425221558410', 'NA', 'BANKING SYSTEM', '1200', '0.0', '1200', NULL, 'Credited', 'blue'),
(124, '425221558410', 'NA', 'BANKING SYSTEM', '1200', '0.0', '1200', NULL, 'Credited', 'blue'),
(125, '425221558410', 'NA', 'BANKING SYSTEM', '555', '0.0', '555', NULL, 'Credited', 'blue'),
(126, '425221558410', 'NA', 'BANKING SYSTEM', '500', '0.0', '500', NULL, 'Credited', 'blue'),
(127, '425221558410', 'NA', 'BANKING SYSTEM', '500', '0.0', '500', NULL, 'Credited', 'blue'),
(128, '425221558410', 'NA', 'BANKING SYSTEM', '500', '0.0', '500', NULL, 'Credited', 'blue'),
(129, '425221558410', 'NA', 'BANKING SYSTEM', '555', '0.0', '555', NULL, 'Credited', 'blue'),
(130, '425221558410', 'NA', 'BANKING SYSTEM', '500', '0.0', '500', NULL, 'Credited', 'blue'),
(131, '425221558410', 'NA', 'BANKING SYSTEM', '550', '0.0', '550', NULL, 'Credited', 'blue'),
(132, '425221558410', 'NA', 'BANKING SYSTEM', '5555', '0.0', '5555', NULL, 'Credited', 'blue'),
(133, '425221558410', 'NA', 'BANKING SYSTEM', '500', '0.0', '500', NULL, 'Credited', 'blue'),
(134, '425221558410', 'NA', 'BANKING SYSTEM', '1200', '0.0', '1200', '2022-04-25 12:07:28', 'Credited', 'blue'),
(135, '425221845170', '425221558410', 'Christine Moore', '970', '0.0', '970', '2022-04-25 22:36:53', 'Credited', '#624edb'),
(136, '425221558410', '425221845170', 'Terry  Rivera', '-970', '970', '0.0', '2022-04-25 22:36:53', 'Debited', '#471acb'),
(137, '730221507250', '425221558410', 'Christine Moore', '300', '0.0', '300', '2022-07-30 18:54:33', 'Credited', '#624edb'),
(138, '425221558410', '730221507250', 'John Stuart', '-300', '300', '0.0', '2022-07-30 18:54:33', 'Debited', '#c6b8dc'),
(139, '730221507250', '425221558410', 'Christine Moore', '10', '0.0', '10', '2022-07-30 19:01:55', 'Credited', '#624edb'),
(140, '425221558410', '730221507250', 'John Stuart', '-10', '10', '0.0', '2022-07-30 19:01:55', 'Debited', '#c6b8dc'),
(141, '425221845170', '425221558410', 'Christine Moore', '15', '0.0', '15', '2022-07-30 19:07:12', 'Credited', '#624edb'),
(142, '425221558410', '425221845170', 'Terry  Rivera', '-15', '15', '0.0', '2022-07-30 19:07:12', 'Debited', '#471acb'),
(143, '122222200124', 'NA', 'BANKING SYSTEM', '1265', '0.0', '1265', '2022-12-23 00:59:00', 'Credited', 'blue'),
(144, '122222200124', '425221558410', 'Christine Moore', '195', '0.0', '195', '2022-12-23 01:05:19', 'Credited', '#624edb'),
(145, '425221558410', '122222200124', 'Peggy Clayton', '-195', '195', '0.0', '2022-12-23 01:05:19', 'Debited', '#6c01a6'),
(146, '805210624200', '122222200124', 'Peggy Clayton', '112', '0.0', '112', '2022-12-23 01:06:04', 'Credited', '#6c01a6'),
(147, '122222200124', '805210624200', 'Emma Capel', '-112', '112', '0.0', '2022-12-23 01:06:04', 'Debited', '#3916d7'),
(148, '730221507250', '122222200124', 'Peggy Clayton', '339', '0.0', '339', '2022-12-23 01:07:39', 'Credited', '#6c01a6'),
(149, '122222200124', '730221507250', 'John Stuart', '-339', '339', '0.0', '2022-12-23 01:07:39', 'Debited', '#c6b8dc'),
(150, '425221845170', '122222200124', 'Peggy Clayton', '486', '0.0', '486', '2022-12-24 00:38:51', 'Credited', '#6c01a6'),
(151, '122222200124', '425221845170', 'Terry  Rivera', '-486', '486', '0.0', '2022-12-24 00:38:51', 'Debited', '#471acb'),
(152, '122222200124', 'NA', 'BANKING SYSTEM', '8950', '0.0', '8950', '2022-12-24 16:42:28', 'Credited', 'blue'),
(153, '410211027350', '122222200124', 'Peggy Clayton', '2169', '0.0', '2169', '2022-12-24 16:43:31', 'Credited', '#6c01a6'),
(154, '122222200124', '410211027350', 'William Porter', '-2169', '2169', '0.0', '2022-12-24 16:43:31', 'Debited', 'yellow'),
(155, '417210931070', '122222200124', 'Peggy Clayton', '710', '0.0', '710', '2022-12-24 16:44:43', 'Credited', '#6c01a6'),
(156, '122222200124', '417210931070', 'Linda Cross', '-710', '710', '0.0', '2022-12-24 16:44:43', 'Debited', 'Pink'),
(157, '122222194134', '805210624200', 'Emma Capel', '550', '0.0', '550', '2022-12-24 21:56:36', 'Credited', '#3916d7'),
(158, '805210624200', '122222194134', 'John Parmer', '-550', '550', '0.0', '2022-12-24 21:56:36', 'Debited', '#03b1c8'),
(159, '805210624200', '122222200124', 'Peggy Clayton', '150', '0.0', '150', '2022-12-24 22:28:07', 'Credited', '#6c01a6'),
(160, '122222200124', '805210624200', 'Emma Capel', '-150', '150', '0.0', '2022-12-24 22:28:07', 'Debited', '#3916d7'),
(161, '122222194134', '122222200124', 'Peggy Clayton', '1152', '0.0', '1152', '2022-12-24 22:28:46', 'Credited', '#6c01a6'),
(162, '122222200124', '122222194134', 'John Parmer', '-1152', '1152', '0.0', '2022-12-24 22:28:46', 'Debited', '#03b1c8'),
(163, '122222200124', 'NA', 'BANKING SYSTEM', '3510', '0.0', '3510', '2022-12-24 22:34:05', 'Credited', 'blue'),
(164, '122422174135', 'NA', 'BANKING SYSTEM', '9566', '0.0', '9566', '2022-12-24 22:34:34', 'Credited', 'blue'),
(165, '122422174135', 'NA', 'BANKING SYSTEM', '-1500', '1500', '0.0', '2022-12-24 22:34:50', 'Debited', 'blue'),
(166, '122222200124', '122422174135', 'Test Account', '3350', '0.0', '3350', '2022-12-24 22:35:50', 'Credited', '#78b5e7'),
(167, '122422174135', '122222200124', 'Peggy Clayton', '-3350', '3350', '0.0', '2022-12-24 22:35:50', 'Debited', '#6c01a6'),
(168, '425221845170', '525211930120', 'Antonio Conley', '100', '0.0', '100', '2022-12-24 22:43:14', 'Credited', '#b87b84'),
(169, '525211930120', '425221845170', 'Terry  Rivera', '-100', '100', '0.0', '2022-12-24 22:43:14', 'Debited', '#471acb'),
(170, '525211930120', '425221845170', 'Terry  Rivera', '100', '0.0', '100', '2022-12-24 22:44:09', 'Credited', '#471acb'),
(171, '425221845170', '525211930120', 'Antonio Conley', '-100', '100', '0.0', '2022-12-24 22:44:09', 'Debited', '#b87b84'),
(172, '122222200124', '122422174135', 'Test Account', '1110', '0.0', '1110', '2022-12-24 22:46:03', 'Credited', '#78b5e7'),
(173, '122422174135', '122222200124', 'Peggy Clayton', '-1110', '1110', '0.0', '2022-12-24 22:46:03', 'Debited', '#6c01a6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `AccountNo` (`AccountNo`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`srNo`),
  ADD UNIQUE KEY `AccountNo` (`AccountNo`),
  ADD UNIQUE KEY `CardNo` (`CardNo`);

--
-- Indexes for table `customer_detail`
--
ALTER TABLE `customer_detail`
  ADD PRIMARY KEY (`C_No`),
  ADD UNIQUE KEY `Account_No` (`Account_No`),
  ADD UNIQUE KEY `C_Pan_No` (`C_Pan_No`),
  ADD UNIQUE KEY `C_Adhar_No` (`C_Citizenship_No`),
  ADD UNIQUE KEY `C_Email` (`C_Email`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`AccountNo`),
  ADD UNIQUE KEY `Unique` (`ID`),
  ADD UNIQUE KEY `AccountNo` (`AccountNo`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `srNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `customer_detail`
--
ALTER TABLE `customer_detail`
  MODIFY `C_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
