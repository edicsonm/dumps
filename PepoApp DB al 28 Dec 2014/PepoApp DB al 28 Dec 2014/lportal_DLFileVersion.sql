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
-- Table structure for table `DLFileVersion`
--

DROP TABLE IF EXISTS `DLFileVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileVersion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileVersion`
--

LOCK TABLES `DLFileVersion` WRITE;
/*!40000 ALTER TABLE `DLFileVersion` DISABLE KEYS */;
INSERT INTO `DLFileVersion` VALUES ('1ef47ba9-55b7-4309-b1e0-7c78cb85a165',10523,10279,10253,10257,'','2014-06-11 21:09:37','2014-06-11 21:09:37',10279,0,10522,'jpg','image/jpeg','welcome_bg_3','','','',0,'1.0',65684,0,10257,'','2014-06-11 21:09:37'),('add27eb8-db5b-474d-988f-50f894c529ab',10532,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10531,'jpg','image/jpeg','welcome_bg_7','','','',0,'1.0',68705,0,10257,'','2014-06-11 21:09:38'),('8976ba04-d26a-4034-9dd1-7c1d58e65e44',10541,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10540,'jpg','image/jpeg','welcome_bg_11','','','',0,'1.0',43583,0,10257,'','2014-06-11 21:09:38'),('021a72b7-a882-4bad-b4ea-852045aa99fd',10549,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10548,'jpg','image/jpeg','welcome_bg_12','','','',0,'1.0',46446,0,10257,'','2014-06-11 21:09:38'),('de3c39fc-b975-4cb9-b5f4-33f4e92f5500',10560,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10559,'jpg','image/jpeg','welcome_bg_5','','','',0,'1.0',40022,0,10257,'','2014-06-11 21:09:38'),('a914bef3-b5cc-432b-a07d-4272ca128283',10576,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10575,'png','image/png','welcome_bg_10','','','',0,'1.0',27139,0,10257,'','2014-06-11 21:09:38'),('2699f6da-1fc5-4065-b374-e9888a92402a',10592,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10591,'jpg','image/jpeg','welcome_bg_2','','','',0,'1.0',72911,0,10257,'','2014-06-11 21:09:38'),('1739307d-d5ed-4c6a-8370-b1f2d38148b6',10605,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10603,'jpg','image/jpeg','welcome_bg_13','','','',0,'1.0',33632,0,10257,'','2014-06-11 21:09:38'),('0c445a7a-c36a-4dfc-941a-f95043cdf1aa',10616,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10615,'jpg','image/jpeg','welcome_bg_9','','','',0,'1.0',50215,0,10257,'','2014-06-11 21:09:38'),('55d16311-4b36-4afd-acea-7c2bfe219a02',10628,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10627,'jpg','image/jpeg','welcome_bg_1','','','',0,'1.0',54277,0,10257,'','2014-06-11 21:09:39'),('9d90a047-f587-4ee0-b884-49d5a6502c68',10640,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10279,0,10639,'jpg','image/jpeg','welcome_bg_4','','','',0,'1.0',62483,0,10257,'','2014-06-11 21:09:39'),('f32de6dc-c3cf-4395-9e20-b7bf539e95ec',10652,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10279,0,10651,'jpg','image/jpeg','welcome_bg_8','','','',0,'1.0',43664,0,10257,'','2014-06-11 21:09:39'),('c831a97d-9f3b-4188-8467-dfc187b5009a',10664,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10279,0,10663,'jpg','image/jpeg','welcome_bg_6','','','',0,'1.0',45456,0,10257,'','2014-06-11 21:09:39');
/*!40000 ALTER TABLE `DLFileVersion` ENABLE KEYS */;
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
