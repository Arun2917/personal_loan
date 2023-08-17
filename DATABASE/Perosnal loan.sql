-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.0.67-community-nt - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for personal_loan
CREATE DATABASE IF NOT EXISTS `personal_loan` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `personal_loan`;

-- Dumping structure for table personal_loan.loanapplication
CREATE TABLE IF NOT EXISTS `loanapplication` (
  `lid` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `uemail` varchar(50) default NULL,
  `cash` varchar(50) default NULL,
  `duration` varchar(50) default NULL,
  `adate` varchar(50) default NULL,
  `status` varchar(50) default NULL,
  `irate` varchar(50) default '0',
  `idproof` varchar(2000) default '0',
  `finalstatus` varchar(2000) default '0',
  PRIMARY KEY  (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table personal_loan.loanhistory
CREATE TABLE IF NOT EXISTS `loanhistory` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `uname` varchar(50) default NULL,
  `cash` varchar(50) default NULL,
  `duration` varchar(50) default NULL,
  `rate` varchar(50) default NULL,
  `status` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table personal_loan.user
CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(11) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL default '0',
  `email` varchar(50) NOT NULL default '0',
  `phone` varchar(50) NOT NULL default '0',
  `password` varchar(50) NOT NULL default '0',
  `rdate` varchar(50) NOT NULL default '0',
  `pic` varchar(2000) NOT NULL default '0',
  `gender` varchar(2000) NOT NULL default '',
  `dob` varchar(2000) NOT NULL default '',
  `address` varchar(1000) NOT NULL default '',
  `occupation` varchar(100) NOT NULL default '',
  `bname` varchar(100) NOT NULL default '',
  `ifsc` varchar(100) NOT NULL default '',
  `accnum` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
