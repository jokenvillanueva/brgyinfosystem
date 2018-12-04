-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2018 at 04:59 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brgydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblblotter`
--

CREATE TABLE `tblblotter` (
  `RECNO` int(11) NOT NULL,
  `RESID` int(11) DEFAULT NULL,
  `FULLNAME` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `DATEBLOTTER` date DEFAULT NULL,
  `TIMEBLOTTER` time DEFAULT NULL,
  `DETAILS` varchar(30) DEFAULT NULL,
  `ENCODER` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblblotter`
--

INSERT INTO `tblblotter` (`RECNO`, `RESID`, `FULLNAME`, `ADDRESS`, `DATEBLOTTER`, `TIMEBLOTTER`, `DETAILS`, `ENCODER`) VALUES
(1, 11, 'dsfdss', 'dsfdsfs', '2018-12-06', '08:10:00', 'dfgds', 'dfds'),
(2, 0, 'VILLANUEVAa, JOKENa Ea', '21 LAHAYz  Santaniana Barangay', '2018-12-03', '12:44:38', 'KINAWATAY BUGASS', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrgyclearance`
--

CREATE TABLE `tblbrgyclearance` (
  `ID` int(11) NOT NULL,
  `RESID` varchar(50) DEFAULT NULL,
  `FULLNAME` varchar(50) DEFAULT NULL,
  `PURPOSE` varchar(30) DEFAULT NULL,
  `DATEGIVEN` date DEFAULT NULL,
  `ORNo` varchar(255) DEFAULT NULL,
  `ISSUEDON` date DEFAULT NULL,
  `ISSUEDAT` varchar(255) DEFAULT NULL,
  `RESCERT` varchar(30) DEFAULT NULL,
  `RESSISSUEDON` date DEFAULT NULL,
  `RESSISSUEDAT` varchar(30) DEFAULT NULL,
  `BRGYCAPTAIN` varchar(60) NOT NULL,
  `ISSUEDBY` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblbrgyclearance`
--

INSERT INTO `tblbrgyclearance` (`ID`, `RESID`, `FULLNAME`, `PURPOSE`, `DATEGIVEN`, `ORNo`, `ISSUEDON`, `ISSUEDAT`, `RESCERT`, `RESSISSUEDON`, `RESSISSUEDAT`, `BRGYCAPTAIN`, `ISSUEDBY`) VALUES
(1, '2', 'EMBANG, CHARLOTTE NANGANs', 'employmenta', '2018-12-07', '143', '2018-12-14', '15s', '12s', '2018-12-14', '13s', 'HOPE', 'GERRY'),
(2, '3', 'VILLANUEVAa, JOKENa Ea', 'EMPLOYMENT', '2018-12-10', '13S', '2018-11-28', '14S', '11S', '2018-11-28', '12S', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrgytax`
--

CREATE TABLE `tblbrgytax` (
  `ID` int(11) NOT NULL,
  `RESID` int(10) DEFAULT NULL,
  `FULLNAME` varchar(100) DEFAULT NULL,
  `BUSINAME` varchar(50) DEFAULT NULL,
  `KINDOFBUS` varchar(50) DEFAULT NULL,
  `NATUREOFBUS` varchar(50) DEFAULT NULL,
  `RESCERTNO` int(11) DEFAULT NULL,
  `ISSUEDON` date DEFAULT NULL,
  `ISSUEDAT` varchar(255) DEFAULT NULL,
  `ORNUM` int(11) DEFAULT NULL,
  `ORISSUEDON` date DEFAULT NULL,
  `ORISSUEDONAT` varchar(50) DEFAULT NULL,
  `TIN` int(11) DEFAULT NULL,
  `CAPTAIN` varchar(30) DEFAULT NULL,
  `LOCATION` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblbrgytax`
--

INSERT INTO `tblbrgytax` (`ID`, `RESID`, `FULLNAME`, `BUSINAME`, `KINDOFBUS`, `NATUREOFBUS`, `RESCERTNO`, `ISSUEDON`, `ISSUEDAT`, `ORNUM`, `ORISSUEDON`, `ORISSUEDONAT`, `TIN`, `CAPTAIN`, `LOCATION`) VALUES
(1, 11, 'd1', 's1', 's1', 's1', 121, '2018-12-14', 'd1', 21, '2018-12-21', 'sad1', 23131, '23fsdf', '1'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, 'VILLANUEVAa, JOKENa Ea', 'ITSC', 'WED', 'PROGRs', 123122, '2018-11-27', 'BSAN DNs', 123456572, '2018-11-28', 'BSAN ASAs', 234562, 'REYLAN DELAPENA', 'ANYWHAREs');

-- --------------------------------------------------------

--
-- Table structure for table `tblcommonmaster`
--

CREATE TABLE `tblcommonmaster` (
  `COMMON_ID` int(11) NOT NULL,
  `COMMONCODE` varchar(30) NOT NULL,
  `CATEGORY` varchar(30) NOT NULL,
  `LISTNAME` varchar(30) NOT NULL,
  `IS_DEFAULT` varchar(3) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcommonmaster`
--

INSERT INTO `tblcommonmaster` (`COMMON_ID`, `COMMONCODE`, `CATEGORY`, `LISTNAME`, `IS_DEFAULT`) VALUES
(1, 'USERTYPECAPTAIN', 'USERTYPE', 'CAPTAIN', 'NO'),
(2, 'USERTYPEADMINISTRATOR', 'USERTYPE', 'ADMINISTRATOR', 'NO'),
(3, 'USERTYPESECRETARY', 'USERTYPE', 'SECRETARY', 'NO'),
(4, 'USERTYPEKAGAWAD', 'USERTYPE', 'KAGAWAD', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `tblctc`
--

CREATE TABLE `tblctc` (
  `ID` int(11) NOT NULL,
  `CtcYear` int(11) DEFAULT NULL,
  `PlaceIssue` varchar(255) DEFAULT NULL,
  `DateIssued` date DEFAULT NULL,
  `Fullname` varchar(255) DEFAULT NULL,
  `CTCNo` varchar(255) DEFAULT NULL,
  `RESID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblctc`
--

INSERT INTO `tblctc` (`ID`, `CtcYear`, `PlaceIssue`, `DateIssued`, `Fullname`, `CTCNo`, `RESID`) VALUES
(1, 2000, 'FGH', '2018-12-12', 'ASD', 'SAD', 21),
(2, 2000, 'sddf', '2018-12-05', 'dff', '34', 23),
(3, 11111, 'dipolog', '2018-11-26', 'VILLANUEVAa, JOKENa Ea', '123456', 3),
(4, 2222, 'SUAY', '2018-11-26', 'EMBANG, CHARLOTTE NANGAN', '2134567', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `EMPID` int(11) NOT NULL,
  `EMPNAME` varchar(60) NOT NULL,
  `EMPADDRESS` text NOT NULL,
  `EMPCONTACT` varchar(20) NOT NULL,
  `EMPPOSITION` varchar(30) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `PASSWRD` text NOT NULL,
  `ACCSTATUS` varchar(5) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`EMPID`, `EMPNAME`, `EMPADDRESS`, `EMPCONTACT`, `EMPPOSITION`, `USERNAME`, `PASSWRD`, `ACCSTATUS`) VALUES
(1, 'ADMIN', 'BINALBAGAN', '092155656', 'ADMINISTRATOR', 'admin', '5c2dd944dde9e08881bef0894fe7b22a5c9c4b06', 'YES'),
(0, 'REYLAN DELAPENA', 'NEGROS', '65132121', 'CAPTAIN', 'reylan', '5c2dd944dde9e08881bef0894fe7b22a5c9c4b06', 'YES'),
(0, 'CHARLOTTE EMBANG', 'PILIPINAS', '12345678', 'SECRETARY', 'cha', '5c2dd944dde9e08881bef0894fe7b22a5c9c4b06', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `tblomplain`
--

CREATE TABLE `tblomplain` (
  `ID` int(11) NOT NULL,
  `CASENO` int(11) DEFAULT NULL,
  `ComplainantFullName` varchar(50) DEFAULT NULL,
  `RespondentFullName` varchar(50) DEFAULT NULL,
  `DateofFiling` date DEFAULT NULL,
  `TimeofFiling` time DEFAULT NULL,
  `NatureOfCase` varchar(20) DEFAULT NULL,
  `Remarks` varchar(20) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `Remarksdet` varchar(255) DEFAULT NULL,
  `encoder` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblomplain`
--

INSERT INTO `tblomplain` (`ID`, `CASENO`, `ComplainantFullName`, `RespondentFullName`, `DateofFiling`, `TimeofFiling`, `NatureOfCase`, `Remarks`, `Details`, `Remarksdet`, `encoder`) VALUES
(1, 1231, 'Diego', 'Armando', '2018-12-03', '18:30:36', 'Murder', 'UNSETTLED', 'basta murder', 'basta murder', 's');

-- --------------------------------------------------------

--
-- Table structure for table `tblpurok`
--

CREATE TABLE `tblpurok` (
  `PRKID` int(11) NOT NULL,
  `PRKNAME` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpurok`
--

INSERT INTO `tblpurok` (`PRKID`, `PRKNAME`) VALUES
(1, 'PUROK UNO'),
(2, 'Santanian'),
(3, 'purok tres'),
(4, 'purok dos'),
(5, 'MBB'),
(6, 'f'),
(7, 'ff g gb g g '),
(8, 'Test lg');

-- --------------------------------------------------------

--
-- Table structure for table `tblresidence`
--

CREATE TABLE `tblresidence` (
  `RESIDENCEID` int(11) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `ext` varchar(30) NOT NULL,
  `NO` varchar(30) NOT NULL,
  `STREET` varchar(30) NOT NULL,
  `PRK` varchar(30) NOT NULL,
  `POB` varchar(30) NOT NULL,
  `DOB` varchar(30) NOT NULL,
  `SEX` varchar(30) NOT NULL,
  `CIVIL` varchar(30) NOT NULL,
  `CITIZENSHIP` varchar(30) NOT NULL,
  `OCCUPATION` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresidence`
--

INSERT INTO `tblresidence` (`RESIDENCEID`, `LNAME`, `FNAME`, `MNAME`, `ext`, `NO`, `STREET`, `PRK`, `POB`, `DOB`, `SEX`, `CIVIL`, `CITIZENSHIP`, `OCCUPATION`) VALUES
(1, 'DELAPENA', 'LEAH', 'VILLANUEVA', '', '1', 'MGB', 'purok dos', 'KABANKALAN', '2000-01-25', 'Male', '', 'FILIPINO', 'NONE'),
(2, 'EMBANG', 'CHARLOTTE', 'NANGAN', 'CH', '2', '23', 'PUROK UNO', 'CAUAYAN', '1995-01-25', 'Male', '', 'FILIPINO', 'TEACHING'),
(3, 'VILLANUEVAa', 'JOKENa', 'Ea', 'JRa', '21', 'LAHAYz', 'Santaniana', 'CADIZa', '2044-06-15', 'Female', 'SINGLE', 'FILIPINOS', 'TEACHINGS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblblotter`
--
ALTER TABLE `tblblotter`
  ADD PRIMARY KEY (`RECNO`);

--
-- Indexes for table `tblbrgyclearance`
--
ALTER TABLE `tblbrgyclearance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbrgytax`
--
ALTER TABLE `tblbrgytax`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblctc`
--
ALTER TABLE `tblctc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblomplain`
--
ALTER TABLE `tblomplain`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpurok`
--
ALTER TABLE `tblpurok`
  ADD PRIMARY KEY (`PRKID`);

--
-- Indexes for table `tblresidence`
--
ALTER TABLE `tblresidence`
  ADD PRIMARY KEY (`RESIDENCEID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblblotter`
--
ALTER TABLE `tblblotter`
  MODIFY `RECNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblbrgyclearance`
--
ALTER TABLE `tblbrgyclearance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblbrgytax`
--
ALTER TABLE `tblbrgytax`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblctc`
--
ALTER TABLE `tblctc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblomplain`
--
ALTER TABLE `tblomplain`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblpurok`
--
ALTER TABLE `tblpurok`
  MODIFY `PRKID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblresidence`
--
ALTER TABLE `tblresidence`
  MODIFY `RESIDENCEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
