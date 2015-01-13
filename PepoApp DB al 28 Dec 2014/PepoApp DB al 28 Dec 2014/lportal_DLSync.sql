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
-- Table structure for table `DLSync`
--

DROP TABLE IF EXISTS `DLSync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLSync` (
  `syncId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `fileId` bigint(20) DEFAULT NULL,
  `fileUuid` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `event` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`syncId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLSync`
--

LOCK TABLES `DLSync` WRITE;
/*!40000 ALTER TABLE `DLSync` DISABLE KEYS */;
INSERT INTO `DLSync` VALUES (10529,10253,'2014-06-11 21:09:37','2014-06-11 21:09:37',10522,'867828ab-3df1-4277-8d04-725b9c0c7ccd',10279,0,'welcome_bg_3','','add','file','1.0'),(10539,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10531,'5bafa385-7019-4bd2-a8be-0c24d9ad0aca',10279,0,'welcome_bg_7','','add','file','1.0'),(10547,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10540,'75c64424-0896-4709-8e4a-6431d8ce5d19',10279,0,'welcome_bg_11','','add','file','1.0'),(10558,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10548,'0ed6ed2a-b1ce-4f93-bb01-8b98b0bdd6f9',10279,0,'welcome_bg_12','','add','file','1.0'),(10570,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10559,'addc1724-be5f-4dce-914c-4d3ecac83f6e',10279,0,'welcome_bg_5','','add','file','1.0'),(10583,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10575,'b7c8cae8-97f5-4fc2-b18b-5dff73214c7a',10279,0,'welcome_bg_10','','add','file','1.0'),(10602,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10591,'af82a1a5-cda0-4a81-a781-456307acb33d',10279,0,'welcome_bg_2','','add','file','1.0'),(10614,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10603,'546ad8bc-3aec-488d-951f-ce5c84472786',10279,0,'welcome_bg_13','','add','file','1.0'),(10626,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10615,'adb27b76-47f0-487f-bbb5-f53a80696c62',10279,0,'welcome_bg_9','','add','file','1.0'),(10638,10253,'2014-06-11 21:09:39','2014-06-11 21:09:39',10627,'7a39b107-66d5-48af-a019-0e6bd719a1d0',10279,0,'welcome_bg_1','','add','file','1.0'),(10650,10253,'2014-06-11 21:09:39','2014-06-11 21:09:39',10639,'91c5cd03-b85c-4621-bee5-90ba8ccd35ef',10279,0,'welcome_bg_4','','add','file','1.0'),(10662,10253,'2014-06-11 21:09:39','2014-06-11 21:09:39',10651,'049d5164-f2a6-4b7e-9cfa-2f71d6f2257b',10279,0,'welcome_bg_8','','add','file','1.0'),(10674,10253,'2014-06-11 21:09:39','2014-06-11 21:09:39',10663,'e9235cdb-1b9e-4f7c-83b7-080a8aa4e67a',10279,0,'welcome_bg_6','','add','file','1.0');
/*!40000 ALTER TABLE `DLSync` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-28  9:52:17
