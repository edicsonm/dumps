-- MySQL dump 10.13  Distrib 5.6.19, for Linux (x86_64)
--
-- Host: localhost    Database: lportal
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `ResourceBlock`
--

DROP TABLE IF EXISTS `ResourceBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceBlock` (
  `resourceBlockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `permissionsHash` varchar(75) DEFAULT NULL,
  `referenceCount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockId`),
  UNIQUE KEY `IX_AEEA209C` (`companyId`,`groupId`,`name`,`permissionsHash`),
  KEY `IX_DA30B086` (`companyId`,`groupId`,`name`),
  KEY `IX_2D4CC782` (`companyId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceBlock`
--

LOCK TABLES `ResourceBlock` WRITE;
/*!40000 ALTER TABLE `ResourceBlock` DISABLE KEYS */;
INSERT INTO `ResourceBlock` VALUES (101,10155,10182,'com.liferay.calendar.model.CalendarResource','a4fbfec8150bc3ea4d91841df523ca4f561c8c17',1),(104,10155,10182,'com.liferay.calendar.model.Calendar','15b1c38f0777e19af9a6988dae3130a535100e3c',1),(105,10155,11985,'com.liferay.calendar.model.CalendarResource','a4fbfec8150bc3ea4d91841df523ca4f561c8c17',1),(108,10155,11985,'com.liferay.calendar.model.Calendar','15b1c38f0777e19af9a6988dae3130a535100e3c',1),(201,10155,13420,'com.liferay.calendar.model.CalendarResource','a4fbfec8150bc3ea4d91841df523ca4f561c8c17',1),(204,10155,13420,'com.liferay.calendar.model.Calendar','15b1c38f0777e19af9a6988dae3130a535100e3c',1),(301,10155,14022,'com.liferay.calendar.model.CalendarResource','a4fbfec8150bc3ea4d91841df523ca4f561c8c17',1),(304,10155,14022,'com.liferay.calendar.model.Calendar','15b1c38f0777e19af9a6988dae3130a535100e3c',1),(401,10155,14843,'com.liferay.calendar.model.CalendarResource','a4fbfec8150bc3ea4d91841df523ca4f561c8c17',1),(404,10155,14843,'com.liferay.calendar.model.Calendar','15b1c38f0777e19af9a6988dae3130a535100e3c',1),(501,10155,14923,'com.liferay.calendar.model.CalendarResource','a4fbfec8150bc3ea4d91841df523ca4f561c8c17',1),(504,10155,14923,'com.liferay.calendar.model.Calendar','15b1c38f0777e19af9a6988dae3130a535100e3c',1),(601,10155,16809,'com.liferay.calendar.model.CalendarResource','a4fbfec8150bc3ea4d91841df523ca4f561c8c17',1),(604,10155,16809,'com.liferay.calendar.model.Calendar','15b1c38f0777e19af9a6988dae3130a535100e3c',1),(605,10155,13037,'com.liferay.calendar.model.CalendarResource','a4fbfec8150bc3ea4d91841df523ca4f561c8c17',1),(608,10155,13037,'com.liferay.calendar.model.Calendar','15b1c38f0777e19af9a6988dae3130a535100e3c',1),(801,10155,23332,'com.liferay.calendar.model.CalendarResource','a4fbfec8150bc3ea4d91841df523ca4f561c8c17',1),(804,10155,23332,'com.liferay.calendar.model.Calendar','15b1c38f0777e19af9a6988dae3130a535100e3c',1),(901,10155,24303,'com.liferay.calendar.model.CalendarResource','a4fbfec8150bc3ea4d91841df523ca4f561c8c17',1),(904,10155,24303,'com.liferay.calendar.model.Calendar','15b1c38f0777e19af9a6988dae3130a535100e3c',1),(1001,10155,26323,'com.liferay.calendar.model.CalendarResource','a4fbfec8150bc3ea4d91841df523ca4f561c8c17',1),(1004,10155,26323,'com.liferay.calendar.model.Calendar','15b1c38f0777e19af9a6988dae3130a535100e3c',1),(1101,10155,30272,'com.liferay.calendar.model.CalendarResource','a4fbfec8150bc3ea4d91841df523ca4f561c8c17',1),(1104,10155,30272,'com.liferay.calendar.model.Calendar','15b1c38f0777e19af9a6988dae3130a535100e3c',1),(1201,10155,31602,'com.liferay.calendar.model.CalendarResource','a4fbfec8150bc3ea4d91841df523ca4f561c8c17',1),(1204,10155,31602,'com.liferay.calendar.model.Calendar','15b1c38f0777e19af9a6988dae3130a535100e3c',1);
/*!40000 ALTER TABLE `ResourceBlock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-29 19:28:19
