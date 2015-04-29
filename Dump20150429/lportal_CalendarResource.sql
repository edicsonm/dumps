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
-- Table structure for table `CalendarResource`
--

DROP TABLE IF EXISTS `CalendarResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarResourceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`calendarResourceId`),
  UNIQUE KEY `IX_16A12327` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_4ABD2BC8` (`uuid_`,`groupId`),
  KEY `IX_76DDD0F7` (`active_`),
  KEY `IX_4470A59D` (`companyId`,`code_`,`active_`),
  KEY `IX_1243D698` (`groupId`),
  KEY `IX_40678371` (`groupId`,`active_`),
  KEY `IX_55C2F8AA` (`groupId`,`code_`),
  KEY `IX_8BCB4D38` (`resourceBlockId`),
  KEY `IX_150E2F22` (`uuid_`),
  KEY `IX_56A06BC6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalendarResource`
--

LOCK TABLES `CalendarResource` WRITE;
/*!40000 ALTER TABLE `CalendarResource` DISABLE KEYS */;
INSERT INTO `CalendarResource` VALUES ('f3e6af1a-c10d-449a-b0a3-6d28a41ace06',11953,10182,10155,10159,'','2015-03-06 21:01:23','2015-03-06 21:01:23',101,10001,10182,'','11953','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Liferay</Name></root>','',1),('6cba6d9e-3e57-404d-ad2a-aac8a25f06eb',11996,11985,10155,10435,'Edicson Morales','2015-03-06 21:43:18','2015-03-06 21:43:18',105,10001,11985,'','11996','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Administration</Name></root>','',1),('263cdb53-a730-4a0c-bbaa-f06755cfeee8',13431,13420,10155,10435,'Edicson Morales','2015-03-11 00:14:53','2015-03-11 00:14:53',201,10001,13420,'','13431','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Merchant</Name></root>','',1),('63ebecb7-944a-4010-9082-cb53ca92015a',14033,14022,10155,10435,'Edicson Morales','2015-03-12 08:35:10','2015-03-12 08:35:10',301,10001,14022,'','14033','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Reports</Name></root>','',1),('e74a0d74-82ef-4472-8de4-da30133bc95a',14854,14843,10155,10435,'Edicson Morales','2015-03-13 08:08:42','2015-03-13 08:08:42',401,10001,14843,'','14854','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Payments</Name></root>','',1),('86abda89-ace8-4015-a8b7-303fe638fc94',14934,14923,10155,10435,'Edicson Morales','2015-03-13 08:25:41','2015-03-13 08:25:41',501,10001,14923,'','14934','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Transactions</Name></root>','',1),('52d671cc-229b-43de-9869-797db9fc24fd',16820,16809,10155,10435,'Edicson Morales','2015-03-15 22:51:55','2015-03-15 22:51:55',601,10001,16809,'','16820','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Home</Name></root>','',1),('7aa08623-a17b-4126-a032-c7222ffcf9c3',16833,13037,10155,10435,'Edicson Morales','2015-03-15 22:52:35','2015-03-15 22:52:35',605,10001,13037,'','16833','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">BillingBuddy</Name></root>','',1),('de302e98-7f92-4dcf-95d0-4930a658777e',23343,23332,10155,10435,'Edicson Morales','2015-03-26 09:01:00','2015-03-26 09:01:00',801,10001,23332,'','23343','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Restrictions</Name></root>','',1),('0796f428-3eaa-41c5-9f37-9b71aaa5c37d',24314,24303,10155,10435,'Edicson Morales','2015-03-28 05:00:36','2015-03-28 05:00:36',901,10001,24303,'','24314','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Refounds</Name></root>','',1),('a078924c-e7a5-44f4-862f-b029d8cd77f2',26334,26323,10155,10435,'Edicson Morales','2015-04-04 00:29:26','2015-04-04 00:29:26',1001,10001,26323,'','26334','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Test</Name></root>','',1),('faa15fe5-7a1e-4d12-901c-503a35f4e4de',30283,30272,10155,10435,'Edicson Morales','2015-04-09 07:48:08','2015-04-09 07:48:08',1101,10001,30272,'','30283','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">PaymentPageBillingBuddy</Name></root>','',1),('30316f52-081f-40e3-ab58-4b5e822023ce',31613,31602,10155,10435,'Edicson Morales','2015-04-15 09:06:28','2015-04-15 09:06:28',1201,10001,31602,'','31613','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Customers</Name></root>','',1);
/*!40000 ALTER TABLE `CalendarResource` ENABLE KEYS */;
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
