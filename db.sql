# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     23cp175_crowd_funding_db
# Server version:               5.1.73-community
# Server OS:                    Win32
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2023-10-23 14:14:20
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for 23cp175_crowd_funding_db
CREATE DATABASE IF NOT EXISTS `23cp175_crowd_funding_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `23cp175_crowd_funding_db`;


# Dumping structure for table 23cp175_crowd_funding_db.tblaa
CREATE TABLE IF NOT EXISTS `tblaa` (
  `A_id` int(10) NOT NULL AUTO_INCREMENT,
  `A_Name` text,
  `A_Email_ID` text,
  `A_Password` text,
  `A_Gender` text,
  `A_Mobile` text,
  `A_Role` text,
  `A_BirthDate` text,
  PRIMARY KEY (`A_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

# Dumping data for table 23cp175_crowd_funding_db.tblaa: 2 rows
/*!40000 ALTER TABLE `tblaa` DISABLE KEYS */;
INSERT INTO `tblaa` (`A_id`, `A_Name`, `A_Email_ID`, `A_Password`, `A_Gender`, `A_Mobile`, `A_Role`, `A_BirthDate`) VALUES (2, 'raj', 'raj@gmail.com', 'Ra@123456', 'Male', '9874563210', 'Admin', '2000-02-02'), (3, 'admin', 'ad@gmail.com', 'Aa@1234', 'Male', '9876543210', 'Agriculture', '2006-02-03');
/*!40000 ALTER TABLE `tblaa` ENABLE KEYS */;


# Dumping structure for table 23cp175_crowd_funding_db.tblowner
CREATE TABLE IF NOT EXISTS `tblowner` (
  `O_id` int(10) NOT NULL AUTO_INCREMENT,
  `O_Name` text,
  `O_Email_ID` text,
  `O_Password` text,
  `O_Gender` text,
  `O_Mobile` text,
  `O_Role` text,
  `Birth_Date` text,
  PRIMARY KEY (`O_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table 23cp175_crowd_funding_db.tblowner: 2 rows
/*!40000 ALTER TABLE `tblowner` DISABLE KEYS */;
INSERT INTO `tblowner` (`O_id`, `O_Name`, `O_Email_ID`, `O_Password`, `O_Gender`, `O_Mobile`, `O_Role`, `Birth_Date`) VALUES (1, 'jitu', 'jitu@gmail.com', 'Jp@123', 'Male', '8888888888', 'IT_Dept', '2000-02-01'), (2, 'ganesh', 'om@gmail.com', 'Om@12345', 'Male', '7777777777', 'Agriculture', '1991-12-05');
/*!40000 ALTER TABLE `tblowner` ENABLE KEYS */;


# Dumping structure for table 23cp175_crowd_funding_db.tbluser
CREATE TABLE IF NOT EXISTS `tbluser` (
  `U_id` int(10) NOT NULL AUTO_INCREMENT,
  `U_Name` text,
  `U_Email_ID` text,
  `U_Password` text,
  `U_Gender` text,
  `U_Mobile` text,
  `Birth_Date` text,
  PRIMARY KEY (`U_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


# Dumping data for table 23cp175_crowd_funding_db.tbluser: 2 rows
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` (`U_id`, `U_Name`, `U_Email_ID`, `U_Password`, `U_Gender`, `U_Mobile`, `Birth_Date`) VALUES (1, 'om', 'om@gmail.com', 'Om@123', 'Male', '8888888888', '2000-03-31'), (2, 'john', 'jadhavpravin920@gmail.com', 'Ja@123', 'Male', '9876543210', '2000-12-31');
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;


# Dumping structure for table 23cp175_crowd_funding_db.tbl_user_fund_info
CREATE TABLE IF NOT EXISTS `tbl_user_fund_info` (
  `F_ID` int(11) NOT NULL AUTO_INCREMENT,
  `U_Name` text,
  `U_Email_ID` text,
  `U_Fund_name` text,
  `U_Fund_cost` text,
  PRIMARY KEY (`F_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# Dumping data for table 23cp175_crowd_funding_db.tbl_user_fund_info: 1 rows
/*!40000 ALTER TABLE `tbl_user_fund_info` DISABLE KEYS */;
INSERT INTO `tbl_user_fund_info` (`F_ID`, `U_Name`, `U_Email_ID`, `U_Fund_name`, `U_Fund_cost`) VALUES (1, 'john', 'jadhavpravin920@gmail.com', 'Agriculture', '100000');
/*!40000 ALTER TABLE `tbl_user_fund_info` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
