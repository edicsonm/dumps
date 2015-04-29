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
-- Table structure for table `AnnouncementsDelivery`
--

DROP TABLE IF EXISTS `AnnouncementsDelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnouncementsDelivery` (
  `deliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `email` tinyint(4) DEFAULT NULL,
  `sms` tinyint(4) DEFAULT NULL,
  `website` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`deliveryId`),
  UNIQUE KEY `IX_BA4413D5` (`userId`,`type_`),
  KEY `IX_6EDB9600` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsDelivery`
--

LOCK TABLES `AnnouncementsDelivery` WRITE;
/*!40000 ALTER TABLE `AnnouncementsDelivery` DISABLE KEYS */;
INSERT INTO `AnnouncementsDelivery` VALUES (11668,10155,11661,'general',0,0,0),(11669,10155,11661,'news',0,0,0),(11670,10155,11661,'test',0,0,0),(12939,10155,10540,'general',0,0,1),(12940,10155,10540,'news',0,0,1),(12941,10155,10540,'test',0,0,1),(12956,10155,12949,'general',0,0,0),(12957,10155,12949,'news',0,0,0),(12958,10155,12949,'test',0,0,0),(16718,10155,16711,'general',0,0,0),(16719,10155,16711,'news',0,0,0),(16720,10155,16711,'test',0,0,0),(16723,10155,10435,'general',0,0,1),(16724,10155,10435,'news',0,0,1),(16725,10155,10435,'test',0,0,1),(17426,10155,17415,'general',0,0,1),(17427,10155,17415,'news',0,0,1),(17428,10155,17415,'test',0,0,1),(17440,10155,17429,'general',0,0,1),(17441,10155,17429,'news',0,0,1),(17442,10155,17429,'test',0,0,1),(17465,10155,17458,'general',0,0,0),(17466,10155,17458,'news',0,0,0),(17467,10155,17458,'test',0,0,0),(19136,10155,19120,'general',0,0,1),(19137,10155,19120,'news',0,0,1),(19138,10155,19120,'test',0,0,1),(19408,10155,19401,'general',0,0,0),(19409,10155,19401,'news',0,0,0),(19410,10155,19401,'test',0,0,0),(31801,10155,17911,'general',0,0,1),(31802,10155,17911,'news',0,0,1),(31803,10155,17911,'test',0,0,1),(32021,10155,18811,'general',0,0,1),(32022,10155,18811,'news',0,0,1),(32023,10155,18811,'test',0,0,1);
/*!40000 ALTER TABLE `AnnouncementsDelivery` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-29 19:28:22
