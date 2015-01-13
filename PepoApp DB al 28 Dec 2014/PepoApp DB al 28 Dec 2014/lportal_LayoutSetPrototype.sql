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
-- Table structure for table `LayoutSetPrototype`
--

DROP TABLE IF EXISTS `LayoutSetPrototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutSetPrototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetPrototypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSetPrototype`
--

LOCK TABLES `LayoutSetPrototype` WRITE;
/*!40000 ALTER TABLE `LayoutSetPrototype` DISABLE KEYS */;
INSERT INTO `LayoutSetPrototype` VALUES ('8d3029fe-1437-4207-b826-6d75c097d0db',10437,10253,'2014-06-11 21:08:30','2014-07-22 10:48:24','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Community Site</Name></root>','Site with Forums, Calendar and Wiki','layoutsUpdateable=true\n',1),('82be87f6-6867-4b3d-92c2-d58d8f127fb7',10463,10253,'2014-06-11 21:08:31','2014-07-22 10:48:24','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Intranet Site</Name></root>','Site with Documents, Calendar and News','layoutsUpdateable=true\n',1);
/*!40000 ALTER TABLE `LayoutSetPrototype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-28  9:52:16
