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
  `treePath` longtext,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `checksum` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileVersionId`),
  UNIQUE KEY `IX_E2815081` (`fileEntryId`,`version`),
  UNIQUE KEY `IX_C99B2650` (`uuid_`,`groupId`),
  KEY `IX_F389330E` (`companyId`),
  KEY `IX_A0A283F4` (`companyId`,`status`),
  KEY `IX_C68DC967` (`fileEntryId`),
  KEY `IX_D47BB14D` (`fileEntryId`,`status`),
  KEY `IX_DFD809D3` (`groupId`,`folderId`,`status`),
  KEY `IX_9BE769ED` (`groupId`,`folderId`,`title`,`version`),
  KEY `IX_FFB3395C` (`mimeType`),
  KEY `IX_4BFABB9A` (`uuid_`),
  KEY `IX_95E9E44E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileVersion`
--

LOCK TABLES `DLFileVersion` WRITE;
/*!40000 ALTER TABLE `DLFileVersion` DISABLE KEYS */;
INSERT INTO `DLFileVersion` VALUES ('12ee69c4-8501-4524-a870-e9119228517f',11870,10182,10155,10159,'','2015-03-06 20:56:22','2015-03-06 20:56:22',10182,0,11869,'/0/','png','image/png','welcome_cube','','','',0,'1.0',452,'',0,10159,'','2015-03-06 20:56:23'),('d7531ac2-fce9-4d80-af84-867ac6bb062e',11880,10182,10155,10159,'','2015-03-06 20:56:23','2015-03-06 20:56:23',10182,0,11879,'/0/','png','image/png','welcome_ee','','','',0,'1.0',218,'',0,10159,'','2015-03-06 20:56:23'),('8b7a1340-ab73-4df2-ba56-095bee8339a3',11895,10182,10155,10159,'','2015-03-06 20:56:23','2015-03-06 20:56:23',10182,0,11894,'/0/','png','image/png','welcome_community','','','',0,'1.0',435,'',0,10159,'','2015-03-06 20:56:24'),('a8d2a2a6-1315-4ce1-8c11-005398f3a14a',11908,10182,10155,10159,'','2015-03-06 20:56:24','2015-03-06 20:56:24',10182,0,11907,'/0/','png','image/png','welcome_learn','','','',0,'1.0',565,'',0,10159,'','2015-03-06 20:56:24'),('5850a1b8-b905-4879-87a4-b93e30ad3121',11926,10182,10155,10159,'','2015-03-06 20:56:24','2015-03-06 20:56:24',10182,0,11925,'/0/','pdf','application/pdf','helpful_links_for_using_liferay_portal','','','',0,'1.0',148065,'',0,10159,'','2015-03-06 20:56:24'),('30e7455d-d422-4a25-b3ab-9c7f9b0f763a',11936,10182,10155,10159,'','2015-03-06 20:56:25','2015-03-06 20:56:25',10182,0,11935,'/0/','png','image/png','welcome_tools','','','',0,'1.0',528,'',0,10159,'','2015-03-06 20:56:25'),('b0c1212c-3a43-4ff5-9489-d88e94a018cf',13417,10182,10155,10435,'Edicson Morales','2015-03-10 23:43:02','2015-03-10 23:43:02',13413,13415,13416,'/13414/13415/','lar','application/zip','Site_Members_Directory-201503102342.portlet.lar','','','',0,'1.0',2502,'',0,10435,'Edicson Morales','2015-03-10 23:43:02');
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

-- Dump completed on 2015-04-29 19:28:21
