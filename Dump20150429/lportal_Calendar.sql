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
-- Table structure for table `Calendar`
--

DROP TABLE IF EXISTS `Calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Calendar` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `calendarResourceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `color` int(11) DEFAULT NULL,
  `defaultCalendar` tinyint(4) DEFAULT NULL,
  `enableComments` tinyint(4) DEFAULT NULL,
  `enableRatings` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`calendarId`),
  UNIQUE KEY `IX_3AE311A` (`uuid_`,`groupId`),
  KEY `IX_B53EB0E1` (`groupId`,`calendarResourceId`),
  KEY `IX_97FC174E` (`groupId`,`calendarResourceId`,`defaultCalendar`),
  KEY `IX_F0FAF226` (`resourceBlockId`),
  KEY `IX_96C8590` (`uuid_`),
  KEY `IX_97656498` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Calendar`
--

LOCK TABLES `Calendar` WRITE;
/*!40000 ALTER TABLE `Calendar` DISABLE KEYS */;
INSERT INTO `Calendar` VALUES ('6e0aec3d-2dc2-45af-9418-6625dc0ca992',11955,10182,10155,10159,'','2015-03-06 21:01:23','2015-03-06 21:01:23',104,11953,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Liferay</Name></root>','',14247526,1,0,0),('2a5835e8-d88e-4470-9e98-9510051af062',11998,11985,10155,10435,'Edicson Morales','2015-03-06 21:43:18','2015-03-06 21:43:18',108,11996,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Administration</Name></root>','',14247526,1,0,0),('663caee1-9657-4351-b6a5-96fca31a6446',13433,13420,10155,10435,'Edicson Morales','2015-03-11 00:14:53','2015-03-11 00:14:53',204,13431,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Merchant</Name></root>','',14247526,1,0,0),('63ae7622-4f87-4412-a439-af29b9fdce35',14035,14022,10155,10435,'Edicson Morales','2015-03-12 08:35:11','2015-03-12 08:35:11',304,14033,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Reports</Name></root>','',14247526,1,0,0),('30ceadfc-e965-4d06-9477-256dc8712682',14856,14843,10155,10435,'Edicson Morales','2015-03-13 08:08:42','2015-03-13 08:08:42',404,14854,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Payments</Name></root>','',14247526,1,0,0),('dc4a6af0-25e4-49f4-92e3-0f21d74b3ca9',14936,14923,10155,10435,'Edicson Morales','2015-03-13 08:25:41','2015-03-13 08:25:41',504,14934,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Transactions</Name></root>','',14247526,1,0,0),('38144b1e-e2ff-45cb-9dda-e6978eade39c',16822,16809,10155,10435,'Edicson Morales','2015-03-15 22:51:55','2015-03-15 22:51:55',604,16820,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Home</Name></root>','',14247526,1,0,0),('bbaa7e0e-c6fb-4b56-89d1-12d7a9ab7c35',16835,13037,10155,10435,'Edicson Morales','2015-03-15 22:52:35','2015-03-15 22:52:35',608,16833,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">BillingBuddy</Name></root>','',14247526,1,0,0),('8f857df3-f503-4e42-9984-aed6943f08b6',23345,23332,10155,10435,'Edicson Morales','2015-03-26 09:01:00','2015-03-26 09:01:00',804,23343,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Restrictions</Name></root>','',14247526,1,0,0),('5eed257b-c2fb-4b26-8709-e28c27d00785',24316,24303,10155,10435,'Edicson Morales','2015-03-28 05:00:36','2015-03-28 05:00:36',904,24314,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Refounds</Name></root>','',14247526,1,0,0),('af9f033f-739f-490a-b28b-b94d1341ae23',26336,26323,10155,10435,'Edicson Morales','2015-04-04 00:29:26','2015-04-04 00:29:26',1004,26334,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Test</Name></root>','',14247526,1,0,0),('50919d86-0e31-4edd-8afd-a2e4adb1eced',30285,30272,10155,10435,'Edicson Morales','2015-04-09 07:48:08','2015-04-09 07:48:08',1104,30283,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">PaymentPageBillingBuddy</Name></root>','',14247526,1,0,0),('64a80c01-ec1f-4b95-aeaf-b9a703481756',31615,31602,10155,10435,'Edicson Morales','2015-04-15 09:06:28','2015-04-15 09:06:28',1204,31613,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Customers</Name></root>','',14247526,1,0,0);
/*!40000 ALTER TABLE `Calendar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-29 19:28:23
