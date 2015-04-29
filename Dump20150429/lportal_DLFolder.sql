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
-- Table structure for table `DLFolder`
--

DROP TABLE IF EXISTS `DLFolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mountPoint` tinyint(4) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `defaultFileEntryTypeId` bigint(20) DEFAULT NULL,
  `hidden_` tinyint(4) DEFAULT NULL,
  `overrideFileEntryTypes` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_902FD874` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_3CC1DED2` (`uuid_`,`groupId`),
  KEY `IX_A74DB14C` (`companyId`),
  KEY `IX_E79BE432` (`companyId`,`status`),
  KEY `IX_F2EA1ACE` (`groupId`),
  KEY `IX_F78286C5` (`groupId`,`mountPoint`,`parentFolderId`,`hidden_`),
  KEY `IX_C88430AB` (`groupId`,`mountPoint`,`parentFolderId`,`hidden_`,`status`),
  KEY `IX_49C37475` (`groupId`,`parentFolderId`),
  KEY `IX_CE360BF6` (`groupId`,`parentFolderId`,`hidden_`,`status`),
  KEY `IX_51556082` (`parentFolderId`,`name`),
  KEY `IX_EE29C715` (`repositoryId`),
  KEY `IX_CBC408D8` (`uuid_`),
  KEY `IX_DA448450` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFolder`
--

LOCK TABLES `DLFolder` WRITE;
/*!40000 ALTER TABLE `DLFolder` DISABLE KEYS */;
INSERT INTO `DLFolder` VALUES ('85ddde60-a906-4d08-acab-a155eda39406',13414,10182,10155,10159,'','2015-03-10 23:43:02','2015-03-10 23:43:02',13413,1,0,'/13414/','189','','2015-03-10 23:43:02',0,1,0,0,0,'',NULL),('52c354e7-f638-4a46-b15b-bc11bfe93abc',13415,10182,10155,10435,'Edicson Morales','2015-03-10 23:43:02','2015-03-10 23:43:02',13413,0,13414,'/13414/13415/','13411','','2015-03-10 23:43:02',0,0,0,0,0,'',NULL),('f5277efa-241b-496a-a767-9406678ce1f1',32902,13037,10155,10159,'','2015-04-21 09:44:30','2015-04-21 09:44:30',32901,1,0,'/32902/','20','','2015-04-22 06:41:56',0,1,0,0,0,'',NULL),('4547def2-e88c-41c3-adfc-31f1751bb2fc',32903,13037,10155,18811,'company15','2015-04-21 09:44:30','2015-04-21 09:44:30',32901,0,32902,'/32902/32903/','18811','','2015-04-21 09:44:31',0,0,0,0,0,'',NULL),('fd8c2986-73be-4714-9c42-58d5fdbcc3d9',32904,13037,10155,18811,'company15','2015-04-21 09:44:31','2015-04-21 09:44:31',32901,0,32903,'/32902/32903/32904/','com.liferay.portlet.usersadmin.action.EditUserPortraitAction','','2015-04-21 10:39:07',0,0,0,0,0,'',NULL),('f14c721c-34b9-484a-b2bd-a413090e1f5a',33002,13037,10155,10435,'Edicson Morales','2015-04-22 06:41:56','2015-04-22 06:41:56',32901,0,32902,'/32902/33002/','10435','','2015-04-22 06:41:57',0,0,0,0,0,'',NULL),('6fda9ad8-f1b0-4a4c-be24-2f42a15a7382',33003,13037,10155,10435,'Edicson Morales','2015-04-22 06:41:57','2015-04-22 06:41:57',32901,0,33002,'/32902/33002/33003/','com.liferay.portlet.usersadmin.action.EditUserPortraitAction','','2015-04-22 06:50:59',0,0,0,0,0,'',NULL);
/*!40000 ALTER TABLE `DLFolder` ENABLE KEYS */;
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
