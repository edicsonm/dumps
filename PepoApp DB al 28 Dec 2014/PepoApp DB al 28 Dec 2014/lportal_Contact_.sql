-- MySQL dump 10.13  Distrib 5.6.19, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: lportal
-- ------------------------------------------------------
-- Server version	5.6.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Contact_`
--

DROP TABLE IF EXISTS `Contact_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contact_` (
  `contactId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `parentContactId` bigint(20) DEFAULT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `prefixId` int(11) DEFAULT NULL,
  `suffixId` int(11) DEFAULT NULL,
  `male` tinyint(4) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `smsSn` varchar(75) DEFAULT NULL,
  `aimSn` varchar(75) DEFAULT NULL,
  `facebookSn` varchar(75) DEFAULT NULL,
  `icqSn` varchar(75) DEFAULT NULL,
  `jabberSn` varchar(75) DEFAULT NULL,
  `msnSn` varchar(75) DEFAULT NULL,
  `mySpaceSn` varchar(75) DEFAULT NULL,
  `skypeSn` varchar(75) DEFAULT NULL,
  `twitterSn` varchar(75) DEFAULT NULL,
  `ymSn` varchar(75) DEFAULT NULL,
  `employeeStatusId` varchar(75) DEFAULT NULL,
  `employeeNumber` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobClass` varchar(75) DEFAULT NULL,
  `hoursOfOperation` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contactId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contact_`
--

LOCK TABLES `Contact_` WRITE;
/*!40000 ALTER TABLE `Contact_` DISABLE KEYS */;
INSERT INTO `Contact_` VALUES (10258,10253,10257,'','2014-06-11 21:08:26','2014-06-11 21:08:26',10255,0,'','','',0,0,1,'2014-06-11 21:08:26','','','','','','','','','','','','','','',''),(10296,10253,10295,'','2014-06-11 21:08:28','2014-06-11 21:08:28',10255,0,'Test','','Test',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10507,10253,10506,'','2014-06-11 21:09:36','2014-06-11 21:09:36',10255,0,'Edicson','','Morales',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11204,10253,10506,'Edicson Morales','2014-06-12 18:22:48','2014-06-12 18:25:36',10255,0,'Pepo','','',11015,11025,1,'1970-01-01 00:00:00','','','','','','','','','','','','','Pepo App','','');
/*!40000 ALTER TABLE `Contact_` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-28  9:52:18
