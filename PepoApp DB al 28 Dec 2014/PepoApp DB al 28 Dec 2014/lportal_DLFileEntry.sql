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
-- Table structure for table `DLFileEntry`
--

DROP TABLE IF EXISTS `DLFileEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `readCount` int(11) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `custom1ImageId` bigint(20) DEFAULT NULL,
  `custom2ImageId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntry`
--

LOCK TABLES `DLFileEntry` WRITE;
/*!40000 ALTER TABLE `DLFileEntry` DISABLE KEYS */;
INSERT INTO `DLFileEntry` VALUES ('867828ab-3df1-4277-8d04-725b9c0c7ccd',10522,10279,10253,10257,'',10257,'','2014-06-11 21:09:37','2014-06-11 21:09:37',10279,0,'1','jpg','image/jpeg','welcome_bg_3','','',0,'1.0',65684,0,0,0,0,0),('5bafa385-7019-4bd2-a8be-0c24d9ad0aca',10531,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'2','jpg','image/jpeg','welcome_bg_7','','',0,'1.0',68705,2,0,0,0,0),('75c64424-0896-4709-8e4a-6431d8ce5d19',10540,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'3','jpg','image/jpeg','welcome_bg_11','','',0,'1.0',43583,0,0,0,0,0),('0ed6ed2a-b1ce-4f93-bb01-8b98b0bdd6f9',10548,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'4','jpg','image/jpeg','welcome_bg_12','','',0,'1.0',46446,0,0,0,0,0),('addc1724-be5f-4dce-914c-4d3ecac83f6e',10559,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'5','jpg','image/jpeg','welcome_bg_5','','',0,'1.0',40022,2,0,0,0,0),('b7c8cae8-97f5-4fc2-b18b-5dff73214c7a',10575,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'6','png','image/png','welcome_bg_10','','',0,'1.0',27139,0,0,0,0,0),('af82a1a5-cda0-4a81-a781-456307acb33d',10591,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'7','jpg','image/jpeg','welcome_bg_2','','',0,'1.0',72911,2,0,0,0,0),('546ad8bc-3aec-488d-951f-ce5c84472786',10603,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'8','jpg','image/jpeg','welcome_bg_13','','',0,'1.0',33632,0,0,0,0,0),('adb27b76-47f0-487f-bbb5-f53a80696c62',10615,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'9','jpg','image/jpeg','welcome_bg_9','','',0,'1.0',50215,4,0,0,0,0),('7a39b107-66d5-48af-a019-0e6bd719a1d0',10627,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'10','jpg','image/jpeg','welcome_bg_1','','',0,'1.0',54277,4,0,0,0,0),('91c5cd03-b85c-4621-bee5-90ba8ccd35ef',10639,10279,10253,10257,'',10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10279,0,'11','jpg','image/jpeg','welcome_bg_4','','',0,'1.0',62483,2,0,0,0,0),('049d5164-f2a6-4b7e-9cfa-2f71d6f2257b',10651,10279,10253,10257,'',10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10279,0,'12','jpg','image/jpeg','welcome_bg_8','','',0,'1.0',43664,5,0,0,0,0),('e9235cdb-1b9e-4f7c-83b7-080a8aa4e67a',10663,10279,10253,10257,'',10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10279,0,'13','jpg','image/jpeg','welcome_bg_6','','',0,'1.0',45456,0,0,0,0,0);
/*!40000 ALTER TABLE `DLFileEntry` ENABLE KEYS */;
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
