CREATE DATABASE  IF NOT EXISTS `lportal` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lportal`;
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
-- Table structure for table `Account_`
--

DROP TABLE IF EXISTS `Account_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Account_` (
  `accountId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentAccountId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `legalName` varchar(75) DEFAULT NULL,
  `legalId` varchar(75) DEFAULT NULL,
  `legalType` varchar(75) DEFAULT NULL,
  `sicCode` varchar(75) DEFAULT NULL,
  `tickerSymbol` varchar(75) DEFAULT NULL,
  `industry` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `size_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account_`
--

LOCK TABLES `Account_` WRITE;
/*!40000 ALTER TABLE `Account_` DISABLE KEYS */;
INSERT INTO `Account_` VALUES (20157,20155,0,'','2015-05-20 07:43:10','2015-05-20 08:09:26',0,'BillingBuddy','','','','','','','','');
/*!40000 ALTER TABLE `Account_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `uuid_` varchar(75) DEFAULT NULL,
  `addressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `street1` varchar(75) DEFAULT NULL,
  `street2` varchar(75) DEFAULT NULL,
  `street3` varchar(75) DEFAULT NULL,
  `city` varchar(75) DEFAULT NULL,
  `zip` varchar(75) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `mailing` tinyint(4) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`deliveryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsDelivery`
--

LOCK TABLES `AnnouncementsDelivery` WRITE;
/*!40000 ALTER TABLE `AnnouncementsDelivery` DISABLE KEYS */;
INSERT INTO `AnnouncementsDelivery` VALUES (20767,20155,20435,'general',0,0,1),(20768,20155,20435,'general',0,0,1),(20769,20155,20435,'news',0,0,1),(20770,20155,20435,'news',0,0,1),(20771,20155,20435,'test',0,0,1),(20772,20155,20435,'test',0,0,1),(20828,20155,20818,'general',1,0,1),(20829,20155,20818,'news',1,0,1),(20830,20155,20818,'test',1,0,1),(20922,20155,20912,'general',0,0,1),(20923,20155,20912,'news',0,0,1),(20924,20155,20912,'test',0,0,1),(34703,20155,22351,'general',0,0,1),(34704,20155,22351,'news',0,0,1),(34705,20155,22351,'test',0,0,1);
/*!40000 ALTER TABLE `AnnouncementsDelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnnouncementsEntry`
--

DROP TABLE IF EXISTS `AnnouncementsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnouncementsEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `content` longtext,
  `url` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `alert` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsEntry`
--

LOCK TABLES `AnnouncementsEntry` WRITE;
/*!40000 ALTER TABLE `AnnouncementsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnouncementsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnnouncementsFlag`
--

DROP TABLE IF EXISTS `AnnouncementsFlag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnouncementsFlag` (
  `flagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`flagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsFlag`
--

LOCK TABLES `AnnouncementsFlag` WRITE;
/*!40000 ALTER TABLE `AnnouncementsFlag` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnouncementsFlag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetCategory`
--

DROP TABLE IF EXISTS `AssetCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetCategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `leftCategoryId` bigint(20) DEFAULT NULL,
  `rightCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `vocabularyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetCategory`
--

LOCK TABLES `AssetCategory` WRITE;
/*!40000 ALTER TABLE `AssetCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetCategoryProperty`
--

DROP TABLE IF EXISTS `AssetCategoryProperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetCategoryProperty` (
  `categoryPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`categoryPropertyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetCategoryProperty`
--

LOCK TABLES `AssetCategoryProperty` WRITE;
/*!40000 ALTER TABLE `AssetCategoryProperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetCategoryProperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetEntries_AssetCategories`
--

DROP TABLE IF EXISTS `AssetEntries_AssetCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetEntries_AssetCategories` (
  `categoryId` bigint(20) NOT NULL,
  `entryId` bigint(20) NOT NULL,
  PRIMARY KEY (`categoryId`,`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetEntries_AssetCategories`
--

LOCK TABLES `AssetEntries_AssetCategories` WRITE;
/*!40000 ALTER TABLE `AssetEntries_AssetCategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetEntries_AssetCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetEntries_AssetTags`
--

DROP TABLE IF EXISTS `AssetEntries_AssetTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetEntries_AssetTags` (
  `entryId` bigint(20) NOT NULL,
  `tagId` bigint(20) NOT NULL,
  PRIMARY KEY (`entryId`,`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetEntries_AssetTags`
--

LOCK TABLES `AssetEntries_AssetTags` WRITE;
/*!40000 ALTER TABLE `AssetEntries_AssetTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetEntries_AssetTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetEntry`
--

DROP TABLE IF EXISTS `AssetEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetEntry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `classTypeId` bigint(20) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `summary` longtext,
  `url` longtext,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetEntry`
--

LOCK TABLES `AssetEntry` WRITE;
/*!40000 ALTER TABLE `AssetEntry` DISABLE KEYS */;
INSERT INTO `AssetEntry` VALUES (20180,20173,20155,20159,'','2015-05-20 07:43:12','2015-05-20 07:43:12',20116,20178,'7efd4713-7838-415e-b640-39ca7f095091',0,0,NULL,NULL,NULL,NULL,'text/html','20176','','','','',0,0,0,0),(20205,20195,20155,20199,'Test Test','2015-05-20 07:43:13','2015-05-20 07:43:13',20005,20199,'8621b4b3-ec56-4536-8318-a9884d8b27b3',0,0,NULL,NULL,NULL,NULL,'','Test Test','','','','',0,0,0,0),(20327,20319,20155,20159,'','2015-05-20 07:43:19','2015-05-20 07:43:19',20116,20324,'8f9af9dd-a5ec-471a-b6bc-a68e1eb81ba0',0,0,NULL,NULL,NULL,NULL,'text/html','20322','','','','',0,0,0,0),(20338,20331,20155,20159,'','2015-05-20 07:43:21','2015-05-20 07:43:21',20116,20336,'37e8ec72-457c-436c-b56d-1c538552be36',0,0,NULL,NULL,NULL,NULL,'text/html','20334','','','','',0,0,0,0),(20348,20341,20155,20159,'','2015-05-20 07:43:23','2015-05-20 07:43:23',20116,20346,'2cae3da6-967b-4193-9a7e-654e8e31d4c3',0,0,NULL,NULL,NULL,NULL,'text/html','20344','','','','',0,0,0,0),(20367,20352,20155,20159,'','2015-05-20 07:43:25','2015-05-20 07:43:25',20116,20365,'c26dc680-39fd-41ad-ac35-164f703cbc1f',0,0,NULL,NULL,NULL,NULL,'text/html','20363','','','','',0,0,0,0),(20375,20352,20155,20159,'','2015-05-20 07:43:26','2015-05-20 07:43:26',20116,20373,'fd9f5326-de7d-4014-9b3c-a126cc8d61cf',0,0,NULL,NULL,NULL,NULL,'text/html','20371','','','','',0,0,0,0),(20393,20378,20155,20159,'','2015-05-20 07:43:29','2015-05-20 07:43:29',20116,20391,'d7833cc9-ec11-4210-8f2f-ea91d1ca4d7b',0,0,NULL,NULL,NULL,NULL,'text/html','20389','','','','',0,0,0,0),(20402,20378,20155,20159,'','2015-05-20 07:43:31','2015-05-20 07:43:31',20116,20400,'b06c42fa-c88b-422b-aff0-72e53223cf7a',0,0,NULL,NULL,NULL,NULL,'text/html','20398','','','','',0,0,0,0),(20410,20378,20155,20159,'','2015-05-20 07:43:32','2015-05-20 07:43:32',20116,20408,'d0284969-e988-469c-88c2-754c5d91b67b',0,0,NULL,NULL,NULL,NULL,'text/html','20406','','','','',0,0,0,0),(20441,20195,20155,20435,'Edicson Morales','2015-05-20 07:44:49','2015-05-20 11:44:07',20005,20435,'fd83913a-bcce-4daf-b2f7-7de14087919f',0,0,NULL,NULL,NULL,NULL,'','Edicson Morales','','','','',0,0,0,0),(20532,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20011,20530,'b49a2b96-1101-4803-b6f5-c0998ae2f2e9',0,1,NULL,NULL,NULL,NULL,'image/png','welcome_cube','','','','',0,0,0,4),(20535,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20116,20533,'09eeb331-41d1-4a76-bd8d-55191d5cab21',0,0,NULL,NULL,NULL,NULL,'text/html','20530','','','','',0,0,0,0),(20542,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20011,20539,'bda75511-974f-4f5b-b5e3-2f7cac05d489',0,1,NULL,NULL,NULL,NULL,'image/png','welcome_ee','','','','',0,0,0,4),(20545,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20116,20543,'e86ed958-a980-48d8-a170-bf636959ea02',0,0,NULL,NULL,NULL,NULL,'text/html','20539','','','','',0,0,0,0),(20553,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20011,20550,'8f2bd2cf-8528-432e-b831-f3274c081f3d',0,1,NULL,NULL,NULL,NULL,'image/png','welcome_community','','','','',0,0,0,4),(20557,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20116,20555,'d3e53160-fbab-4fa8-ae95-5a72b898fdcb',0,0,NULL,NULL,NULL,NULL,'text/html','20550','','','','',0,0,0,0),(20568,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20011,20566,'1573d3b8-56bf-456b-84c4-e1b4671520cd',0,1,NULL,NULL,NULL,NULL,'image/png','welcome_learn','','','','',0,0,0,4),(20575,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20116,20569,'bcbfd4c9-cb4e-437d-a3b8-11da7c3b4272',0,0,NULL,NULL,NULL,NULL,'text/html','20566','','','','',0,0,0,0),(20582,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',20011,20579,'d68147cf-0ce3-4d8c-8591-f99236f7a5a2',0,1,NULL,NULL,NULL,NULL,'application/pdf','helpful_links_for_using_liferay_portal','','','','',0,0,0,0),(20586,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',20116,20583,'5aa72ae0-8dda-4965-9d97-91b0feecad5d',0,0,NULL,NULL,NULL,NULL,'text/html','20579','','','','',0,0,0,0),(20594,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',20011,20592,'4afe454b-1e25-4143-a77e-457e0d021001',0,1,NULL,NULL,NULL,NULL,'image/png','welcome_tools','','','','',0,0,0,4),(20597,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',20116,20595,'098f61d1-f38c-49f8-bba4-ecec59ecb9af',0,0,NULL,NULL,NULL,NULL,'text/html','20592','','','','',0,0,0,0),(20607,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',20109,20605,'3ac9dc16-9e81-4b3d-a7a1-1174c6d1c000',20601,1,NULL,NULL,'2010-02-01 00:00:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Welcome</Title></root>','','','','',0,0,0,7),(20610,20182,20155,20159,'','2015-05-20 07:45:52','2015-05-20 07:45:52',20116,20608,'0eea17bf-983f-4e06-a1c2-562b0e45046f',0,0,NULL,NULL,NULL,NULL,'text/html','20605','','','','',0,0,0,0),(20627,20182,20155,20159,'','2015-05-20 07:45:53','2015-05-20 07:45:53',20116,20625,'13404416-3830-476c-8b91-baecadf83ab1',0,0,NULL,NULL,NULL,NULL,'text/html','20623','','','','',0,0,0,0),(20712,20692,20155,20435,'Edicson Morales','2015-05-20 07:54:25','2015-05-20 07:54:25',20505,20703,'8fe7a84e-93af-4d0b-bba3-b26354db02f7',0,1,NULL,NULL,NULL,NULL,'text','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Administration</Name></root>','','','','',0,0,0,0),(20754,20195,20155,20159,'','2015-05-20 08:05:59','2015-05-20 09:56:36',20001,20182,'',0,0,NULL,NULL,NULL,NULL,'','BillingBuddy','','','','',0,0,0,0),(20826,20195,20155,20159,'','2015-05-20 10:03:13','2015-05-20 21:23:44',20005,20818,'a9eb13c0-c7d4-490e-b4c9-29272f634ace',0,0,NULL,NULL,NULL,NULL,'','Company1','','','','',0,0,0,0),(20920,20195,20155,20159,'','2015-05-20 10:10:32','2015-05-20 10:18:45',20005,20912,'097c0c5e-e077-4018-8de1-371b0d641ac6',0,0,NULL,NULL,NULL,NULL,'','Company2','','','','',0,0,0,0),(22359,20195,20155,20159,'','2015-05-20 12:31:14','2015-05-20 21:21:37',20005,22351,'d3d27da0-9acc-4ec5-a9b5-9ae1cc876972',0,0,NULL,NULL,NULL,NULL,'','Company3','','','','',0,0,0,0),(35239,35232,20155,20435,'Edicson Morales','2015-05-21 10:39:49','2015-05-21 10:39:49',20116,35237,'9fc06221-21b6-4252-9bc4-27a4bfe8c818',0,0,NULL,NULL,NULL,NULL,'text/html','35235','','','','',0,0,0,0),(35252,35232,20155,20435,'Edicson Morales','2015-05-21 10:40:07','2015-05-21 10:40:07',20505,35243,'7df9450f-d657-4738-b9fe-c753b033453f',0,1,NULL,NULL,NULL,NULL,'text','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Customer</Name></root>','','','','',0,0,0,0),(35259,20182,20155,20435,'Edicson Morales','2015-05-21 10:42:12','2015-05-21 10:42:12',20116,35257,'c7a40cbb-018c-4ca6-af4a-b0673a02e8a3',0,0,NULL,NULL,NULL,NULL,'text/html','35255','','','','',0,0,0,0),(37319,37312,20155,20435,'Edicson Morales','2015-05-28 13:21:58','2015-05-28 13:21:58',20116,37317,'633f2462-6547-438c-a727-dedd78250c37',0,0,NULL,NULL,NULL,NULL,'text/html','37315','','','','',0,0,0,0),(37332,37312,20155,20435,'Edicson Morales','2015-05-28 13:22:16','2015-05-28 13:22:16',20505,37323,'95a75511-be6d-4ebb-a5f3-81706757523f',0,1,NULL,NULL,NULL,NULL,'text','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Logs</Name></root>','','','','',0,0,0,0),(37352,37345,20155,20435,'Edicson Morales','2015-05-28 13:25:51','2015-05-28 13:25:51',20116,37350,'373918d0-4053-4f38-8bfe-9ca2abaa658c',0,0,NULL,NULL,NULL,NULL,'text/html','37348','','','','',0,0,0,0),(37365,37345,20155,20435,'Edicson Morales','2015-05-28 13:25:57','2015-05-28 13:25:57',20505,37356,'a5ac9074-6215-413e-8395-6ee2a575d618',0,1,NULL,NULL,NULL,NULL,'text','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Administration</Name></root>','','','','',0,0,0,0),(37372,20182,20155,20435,'Edicson Morales','2015-05-28 13:27:51','2015-05-28 13:27:51',20116,37370,'98b8f82d-f4eb-45cb-8e90-720e2a0c2250',0,0,NULL,NULL,NULL,NULL,'text/html','37368','','','','',0,0,0,0),(37380,20182,20155,20435,'Edicson Morales','2015-05-28 13:28:04','2015-05-28 13:28:04',20116,37378,'b56d67a3-8133-4f28-9179-6fda1e5188a8',0,0,NULL,NULL,NULL,NULL,'text/html','37376','','','','',0,0,0,0),(39809,20631,20155,20159,'','2015-05-29 19:03:27','2015-05-29 19:03:27',20116,39807,'ca70a9b5-c1e7-4b03-8ba1-5e8a89bb8914',0,0,NULL,NULL,NULL,NULL,'text/html','39805','','','','',0,0,0,0);
/*!40000 ALTER TABLE `AssetEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetLink`
--

DROP TABLE IF EXISTS `AssetLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetLink` (
  `linkId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId1` bigint(20) DEFAULT NULL,
  `entryId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`linkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetLink`
--

LOCK TABLES `AssetLink` WRITE;
/*!40000 ALTER TABLE `AssetLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetTag`
--

DROP TABLE IF EXISTS `AssetTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetTag` (
  `tagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetTag`
--

LOCK TABLES `AssetTag` WRITE;
/*!40000 ALTER TABLE `AssetTag` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetTagProperty`
--

DROP TABLE IF EXISTS `AssetTagProperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetTagProperty` (
  `tagPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tagPropertyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetTagProperty`
--

LOCK TABLES `AssetTagProperty` WRITE;
/*!40000 ALTER TABLE `AssetTagProperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTagProperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetTagStats`
--

DROP TABLE IF EXISTS `AssetTagStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetTagStats` (
  `tagStatsId` bigint(20) NOT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagStatsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetTagStats`
--

LOCK TABLES `AssetTagStats` WRITE;
/*!40000 ALTER TABLE `AssetTagStats` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTagStats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetVocabulary`
--

DROP TABLE IF EXISTS `AssetVocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetVocabulary` (
  `uuid_` varchar(75) DEFAULT NULL,
  `vocabularyId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `settings_` longtext,
  PRIMARY KEY (`vocabularyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetVocabulary`
--

LOCK TABLES `AssetVocabulary` WRITE;
/*!40000 ALTER TABLE `AssetVocabulary` DISABLE KEYS */;
INSERT INTO `AssetVocabulary` VALUES ('013d2e90-4479-4f38-98d3-8a3ed2c2d721',20326,20195,20155,20159,'','2015-05-20 07:43:19','2015-05-20 07:43:19','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','','');
/*!40000 ALTER TABLE `AssetVocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BackgroundTask`
--

DROP TABLE IF EXISTS `BackgroundTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BackgroundTask` (
  `backgroundTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `servletContextNames` varchar(255) DEFAULT NULL,
  `taskExecutorClassName` varchar(200) DEFAULT NULL,
  `taskContext` longtext,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusMessage` longtext,
  PRIMARY KEY (`backgroundTaskId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BackgroundTask`
--

LOCK TABLES `BackgroundTask` WRITE;
/*!40000 ALTER TABLE `BackgroundTask` DISABLE KEYS */;
/*!40000 ALTER TABLE `BackgroundTask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogsEntry`
--

DROP TABLE IF EXISTS `BlogsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogsEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `displayDate` datetime DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `allowTrackbacks` tinyint(4) DEFAULT NULL,
  `trackbacks` longtext,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogsEntry`
--

LOCK TABLES `BlogsEntry` WRITE;
/*!40000 ALTER TABLE `BlogsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogsStatsUser`
--

DROP TABLE IF EXISTS `BlogsStatsUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogsStatsUser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `entryCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `ratingsTotalEntries` int(11) DEFAULT NULL,
  `ratingsTotalScore` double DEFAULT NULL,
  `ratingsAverageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogsStatsUser`
--

LOCK TABLES `BlogsStatsUser` WRITE;
/*!40000 ALTER TABLE `BlogsStatsUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogsStatsUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookmarksEntry`
--

DROP TABLE IF EXISTS `BookmarksEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BookmarksEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `description` longtext,
  `visits` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookmarksEntry`
--

LOCK TABLES `BookmarksEntry` WRITE;
/*!40000 ALTER TABLE `BookmarksEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `BookmarksEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookmarksFolder`
--

DROP TABLE IF EXISTS `BookmarksFolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BookmarksFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookmarksFolder`
--

LOCK TABLES `BookmarksFolder` WRITE;
/*!40000 ALTER TABLE `BookmarksFolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `BookmarksFolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BrowserTracker`
--

DROP TABLE IF EXISTS `BrowserTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BrowserTracker` (
  `browserTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `browserKey` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`browserTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BrowserTracker`
--

LOCK TABLES `BrowserTracker` WRITE;
/*!40000 ALTER TABLE `BrowserTracker` DISABLE KEYS */;
INSERT INTO `BrowserTracker` VALUES (20664,20435,47268677792),(20927,20818,1120739740069),(20928,20912,877619129351);
/*!40000 ALTER TABLE `BrowserTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CalEvent`
--

DROP TABLE IF EXISTS `CalEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalEvent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `eventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `location` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `durationHour` int(11) DEFAULT NULL,
  `durationMinute` int(11) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `timeZoneSensitive` tinyint(4) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `repeating` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `remindBy` int(11) DEFAULT NULL,
  `firstReminder` int(11) DEFAULT NULL,
  `secondReminder` int(11) DEFAULT NULL,
  PRIMARY KEY (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalEvent`
--

LOCK TABLES `CalEvent` WRITE;
/*!40000 ALTER TABLE `CalEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `CalEvent` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Calendar`
--

LOCK TABLES `Calendar` WRITE;
/*!40000 ALTER TABLE `Calendar` DISABLE KEYS */;
INSERT INTO `Calendar` VALUES ('6bcce005-1b7a-4e4f-af7e-6f6048179827',35245,35232,20155,20435,'Edicson Morales','2015-05-21 10:40:08','2015-05-21 10:40:08',104,35243,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Customer</Name></root>','',14247526,1,0,0),('bd5ea5ac-25bb-40e9-a0af-8fc71e96e8e2',37325,37312,20155,20435,'Edicson Morales','2015-05-28 13:22:17','2015-05-28 13:22:17',204,37323,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Logs</Name></root>','',14247526,1,0,0),('bcf85802-eea9-4409-812e-977b0f28517b',37358,37345,20155,20435,'Edicson Morales','2015-05-28 13:25:57','2015-05-28 13:25:57',208,37356,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Administration</Name></root>','',14247526,1,0,0);
/*!40000 ALTER TABLE `Calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CalendarBooking`
--

DROP TABLE IF EXISTS `CalendarBooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarBooking` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarBookingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `calendarId` bigint(20) DEFAULT NULL,
  `calendarResourceId` bigint(20) DEFAULT NULL,
  `parentCalendarBookingId` bigint(20) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `location` longtext,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `firstReminder` bigint(20) DEFAULT NULL,
  `firstReminderType` varchar(75) DEFAULT NULL,
  `secondReminder` bigint(20) DEFAULT NULL,
  `secondReminderType` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`calendarBookingId`),
  UNIQUE KEY `IX_113A264E` (`calendarId`,`parentCalendarBookingId`),
  UNIQUE KEY `IX_F4C61797` (`uuid_`,`groupId`),
  KEY `IX_D300DFCE` (`calendarId`),
  KEY `IX_470170B4` (`calendarId`,`status`),
  KEY `IX_B198FFC` (`calendarResourceId`),
  KEY `IX_57EBF55B` (`parentCalendarBookingId`),
  KEY `IX_F7B8A941` (`parentCalendarBookingId`,`status`),
  KEY `IX_22DFDB49` (`resourceBlockId`),
  KEY `IX_F6E8EE73` (`uuid_`),
  KEY `IX_A21D9FD5` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalendarBooking`
--

LOCK TABLES `CalendarBooking` WRITE;
/*!40000 ALTER TABLE `CalendarBooking` DISABLE KEYS */;
/*!40000 ALTER TABLE `CalendarBooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CalendarNotificationTemplate`
--

DROP TABLE IF EXISTS `CalendarNotificationTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarNotificationTemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarNotificationTemplateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `calendarId` bigint(20) DEFAULT NULL,
  `notificationType` varchar(75) DEFAULT NULL,
  `notificationTypeSettings` varchar(75) DEFAULT NULL,
  `notificationTemplateType` varchar(75) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  PRIMARY KEY (`calendarNotificationTemplateId`),
  UNIQUE KEY `IX_4012E97F` (`uuid_`,`groupId`),
  KEY `IX_A412E5B6` (`calendarId`),
  KEY `IX_7727A482` (`calendarId`,`notificationType`,`notificationTemplateType`),
  KEY `IX_A2D4D78B` (`uuid_`),
  KEY `IX_4D7D97BD` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalendarNotificationTemplate`
--

LOCK TABLES `CalendarNotificationTemplate` WRITE;
/*!40000 ALTER TABLE `CalendarNotificationTemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `CalendarNotificationTemplate` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalendarResource`
--

LOCK TABLES `CalendarResource` WRITE;
/*!40000 ALTER TABLE `CalendarResource` DISABLE KEYS */;
INSERT INTO `CalendarResource` VALUES ('7df9450f-d657-4738-b9fe-c753b033453f',35243,35232,20155,20435,'Edicson Morales','2015-05-21 10:40:07','2015-05-21 10:40:07',101,20001,35232,'','35243','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Customer</Name></root>','',1),('95a75511-be6d-4ebb-a5f3-81706757523f',37323,37312,20155,20435,'Edicson Morales','2015-05-28 13:22:16','2015-05-28 13:22:16',201,20001,37312,'','37323','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Logs</Name></root>','',1),('a5ac9074-6215-413e-8395-6ee2a575d618',37356,37345,20155,20435,'Edicson Morales','2015-05-28 13:25:57','2015-05-28 13:25:57',205,20001,37345,'','37356','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Administration</Name></root>','',1);
/*!40000 ALTER TABLE `CalendarResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClassName_`
--

DROP TABLE IF EXISTS `ClassName_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClassName_` (
  `classNameId` bigint(20) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClassName_`
--

LOCK TABLES `ClassName_` WRITE;
/*!40000 ALTER TABLE `ClassName_` DISABLE KEYS */;
INSERT INTO `ClassName_` VALUES (20001,'com.liferay.portal.model.Group'),(20002,'com.liferay.portal.model.Layout'),(20003,'com.liferay.portal.model.Organization'),(20004,'com.liferay.portal.model.Role'),(20005,'com.liferay.portal.model.User'),(20006,'com.liferay.portal.model.UserGroup'),(20007,'com.liferay.portlet.blogs.model.BlogsEntry'),(20008,'com.liferay.portlet.bookmarks.model.BookmarksEntry'),(20009,'com.liferay.portlet.bookmarks.model.BookmarksFolder'),(20010,'com.liferay.portlet.calendar.model.CalEvent'),(20011,'com.liferay.portlet.documentlibrary.model.DLFileEntry'),(20012,'com.liferay.portlet.documentlibrary.model.DLFolder'),(20013,'com.liferay.portlet.journal.model.JournalFolder'),(20014,'com.liferay.portlet.messageboards.model.MBMessage'),(20015,'com.liferay.portlet.messageboards.model.MBThread'),(20016,'com.liferay.portlet.wiki.model.WikiPage'),(20017,'com.liferay.counter.model.Counter'),(20018,'com.liferay.portal.kernel.workflow.WorkflowTask'),(20019,'com.liferay.portal.model.Account'),(20020,'com.liferay.portal.model.Address'),(20021,'com.liferay.portal.model.BackgroundTask'),(20022,'com.liferay.portal.model.BrowserTracker'),(20023,'com.liferay.portal.model.ClassName'),(20024,'com.liferay.portal.model.ClusterGroup'),(20025,'com.liferay.portal.model.Company'),(20026,'com.liferay.portal.model.Contact'),(20027,'com.liferay.portal.model.Country'),(20028,'com.liferay.portal.model.EmailAddress'),(20029,'com.liferay.portal.model.Image'),(20030,'com.liferay.portal.model.LayoutBranch'),(20031,'com.liferay.portal.model.LayoutFriendlyURL'),(20032,'com.liferay.portal.model.LayoutPrototype'),(20033,'com.liferay.portal.model.LayoutRevision'),(20034,'com.liferay.portal.model.LayoutSet'),(20035,'com.liferay.portal.model.LayoutSetBranch'),(20036,'com.liferay.portal.model.LayoutSetPrototype'),(20037,'com.liferay.portal.model.ListType'),(20038,'com.liferay.portal.model.Lock'),(20039,'com.liferay.portal.model.MembershipRequest'),(20040,'com.liferay.portal.model.OrgGroupRole'),(20041,'com.liferay.portal.model.OrgLabor'),(20042,'com.liferay.portal.model.PasswordPolicy'),(20043,'com.liferay.portal.model.PasswordPolicyRel'),(20044,'com.liferay.portal.model.PasswordTracker'),(20045,'com.liferay.portal.model.Phone'),(20046,'com.liferay.portal.model.PluginSetting'),(20047,'com.liferay.portal.model.PortalPreferences'),(20048,'com.liferay.portal.model.Portlet'),(20049,'com.liferay.portal.model.PortletItem'),(20050,'com.liferay.portal.model.PortletPreferences'),(20051,'com.liferay.portal.model.Region'),(20052,'com.liferay.portal.model.Release'),(20053,'com.liferay.portal.model.Repository'),(20054,'com.liferay.portal.model.RepositoryEntry'),(20055,'com.liferay.portal.model.ResourceAction'),(20056,'com.liferay.portal.model.ResourceBlock'),(20057,'com.liferay.portal.model.ResourceBlockPermission'),(20058,'com.liferay.portal.model.ResourcePermission'),(20059,'com.liferay.portal.model.ResourceTypePermission'),(20060,'com.liferay.portal.model.ServiceComponent'),(20061,'com.liferay.portal.model.Shard'),(20062,'com.liferay.portal.model.Subscription'),(20063,'com.liferay.portal.model.SystemEvent'),(20064,'com.liferay.portal.model.Team'),(20065,'com.liferay.portal.model.Ticket'),(20066,'com.liferay.portal.model.UserGroupGroupRole'),(20067,'com.liferay.portal.model.UserGroupRole'),(20068,'com.liferay.portal.model.UserIdMapper'),(20069,'com.liferay.portal.model.UserNotificationDelivery'),(20070,'com.liferay.portal.model.UserNotificationEvent'),(20071,'com.liferay.portal.model.UserTracker'),(20072,'com.liferay.portal.model.UserTrackerPath'),(20073,'com.liferay.portal.model.VirtualHost'),(20074,'com.liferay.portal.model.WebDAVProps'),(20075,'com.liferay.portal.model.Website'),(20076,'com.liferay.portal.model.WorkflowDefinitionLink'),(20077,'com.liferay.portal.model.WorkflowInstanceLink'),(20078,'com.liferay.portlet.announcements.model.AnnouncementsDelivery'),(20079,'com.liferay.portlet.announcements.model.AnnouncementsEntry'),(20080,'com.liferay.portlet.announcements.model.AnnouncementsFlag'),(20081,'com.liferay.portlet.asset.model.AssetCategory'),(20082,'com.liferay.portlet.asset.model.AssetCategoryProperty'),(20083,'com.liferay.portlet.asset.model.AssetEntry'),(20084,'com.liferay.portlet.asset.model.AssetLink'),(20085,'com.liferay.portlet.asset.model.AssetTag'),(20086,'com.liferay.portlet.asset.model.AssetTagProperty'),(20087,'com.liferay.portlet.asset.model.AssetTagStats'),(20088,'com.liferay.portlet.asset.model.AssetVocabulary'),(20089,'com.liferay.portlet.blogs.model.BlogsStatsUser'),(20090,'com.liferay.portlet.documentlibrary.model.DLContent'),(20091,'com.liferay.portlet.documentlibrary.model.DLFileEntryMetadata'),(20092,'com.liferay.portlet.documentlibrary.model.DLFileEntryType'),(20093,'com.liferay.portlet.documentlibrary.model.DLFileRank'),(20094,'com.liferay.portlet.documentlibrary.model.DLFileShortcut'),(20095,'com.liferay.portlet.documentlibrary.model.DLFileVersion'),(20096,'com.liferay.portlet.documentlibrary.model.DLSyncEvent'),(20097,'com.liferay.portlet.dynamicdatalists.model.DDLRecord'),(20098,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet'),(20099,'com.liferay.portlet.dynamicdatalists.model.DDLRecordVersion'),(20100,'com.liferay.portlet.dynamicdatamapping.model.DDMContent'),(20101,'com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink'),(20102,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure'),(20103,'com.liferay.portlet.dynamicdatamapping.model.DDMStructureLink'),(20104,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate'),(20105,'com.liferay.portlet.expando.model.ExpandoColumn'),(20106,'com.liferay.portlet.expando.model.ExpandoRow'),(20107,'com.liferay.portlet.expando.model.ExpandoTable'),(20108,'com.liferay.portlet.expando.model.ExpandoValue'),(20109,'com.liferay.portlet.journal.model.JournalArticle'),(20110,'com.liferay.portlet.journal.model.JournalArticleImage'),(20111,'com.liferay.portlet.journal.model.JournalArticleResource'),(20112,'com.liferay.portlet.journal.model.JournalContentSearch'),(20113,'com.liferay.portlet.journal.model.JournalFeed'),(20114,'com.liferay.portlet.messageboards.model.MBBan'),(20115,'com.liferay.portlet.messageboards.model.MBCategory'),(20116,'com.liferay.portlet.messageboards.model.MBDiscussion'),(20117,'com.liferay.portlet.messageboards.model.MBMailingList'),(20118,'com.liferay.portlet.messageboards.model.MBStatsUser'),(20119,'com.liferay.portlet.messageboards.model.MBThreadFlag'),(20120,'com.liferay.portlet.mobiledevicerules.model.MDRAction'),(20121,'com.liferay.portlet.mobiledevicerules.model.MDRRule'),(20122,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup'),(20123,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance'),(20124,'com.liferay.portlet.polls.model.PollsChoice'),(20125,'com.liferay.portlet.polls.model.PollsQuestion'),(20126,'com.liferay.portlet.polls.model.PollsVote'),(20127,'com.liferay.portlet.ratings.model.RatingsEntry'),(20128,'com.liferay.portlet.ratings.model.RatingsStats'),(20129,'com.liferay.portlet.shopping.model.ShoppingCart'),(20130,'com.liferay.portlet.shopping.model.ShoppingCategory'),(20131,'com.liferay.portlet.shopping.model.ShoppingCoupon'),(20132,'com.liferay.portlet.shopping.model.ShoppingItem'),(20133,'com.liferay.portlet.shopping.model.ShoppingItemField'),(20134,'com.liferay.portlet.shopping.model.ShoppingItemPrice'),(20135,'com.liferay.portlet.shopping.model.ShoppingOrder'),(20136,'com.liferay.portlet.shopping.model.ShoppingOrderItem'),(20137,'com.liferay.portlet.social.model.SocialActivity'),(20138,'com.liferay.portlet.social.model.SocialActivityAchievement'),(20139,'com.liferay.portlet.social.model.SocialActivityCounter'),(20140,'com.liferay.portlet.social.model.SocialActivityLimit'),(20141,'com.liferay.portlet.social.model.SocialActivitySet'),(20142,'com.liferay.portlet.social.model.SocialActivitySetting'),(20143,'com.liferay.portlet.social.model.SocialRelation'),(20144,'com.liferay.portlet.social.model.SocialRequest'),(20145,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion'),(20146,'com.liferay.portlet.softwarecatalog.model.SCLicense'),(20147,'com.liferay.portlet.softwarecatalog.model.SCProductEntry'),(20148,'com.liferay.portlet.softwarecatalog.model.SCProductScreenshot'),(20149,'com.liferay.portlet.softwarecatalog.model.SCProductVersion'),(20150,'com.liferay.portlet.trash.model.TrashEntry'),(20151,'com.liferay.portlet.trash.model.TrashVersion'),(20152,'com.liferay.portlet.wiki.model.WikiNode'),(20153,'com.liferay.portlet.wiki.model.WikiPageResource'),(20191,'com.liferay.portal.model.UserPersonalSite'),(20316,'com.liferay.portlet.documentlibrary.util.RawMetadataProcessor'),(20426,'com.liferay.portal.kernel.repository.model.FileEntry'),(20443,'com.liferay.marketplace.model.App'),(20444,'com.liferay.marketplace.model.Module'),(20449,'com.liferay.sync.model.SyncDLObject'),(20451,'com.liferay.portal.workflow.kaleo.model.KaleoAction'),(20452,'com.liferay.portal.workflow.kaleo.model.KaleoCondition'),(20453,'com.liferay.portal.workflow.kaleo.model.KaleoDefinition'),(20454,'com.liferay.portal.workflow.kaleo.model.KaleoInstance'),(20455,'com.liferay.portal.workflow.kaleo.model.KaleoInstanceToken'),(20456,'com.liferay.portal.workflow.kaleo.model.KaleoLog'),(20457,'com.liferay.portal.workflow.kaleo.model.KaleoNode'),(20458,'com.liferay.portal.workflow.kaleo.model.KaleoNotification'),(20459,'com.liferay.portal.workflow.kaleo.model.KaleoNotificationRecipient'),(20460,'com.liferay.portal.workflow.kaleo.model.KaleoTask'),(20461,'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignment'),(20462,'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignmentInstance'),(20463,'com.liferay.portal.workflow.kaleo.model.KaleoTaskInstanceToken'),(20464,'com.liferay.portal.workflow.kaleo.model.KaleoTimer'),(20465,'com.liferay.portal.workflow.kaleo.model.KaleoTimerInstanceToken'),(20466,'com.liferay.portal.workflow.kaleo.model.KaleoTransition'),(20470,'com.liferay.notifications.model.UserNotificationEvent'),(20502,'com.liferay.calendar.model.Calendar'),(20503,'com.liferay.calendar.model.CalendarBooking'),(20504,'com.liferay.calendar.model.CalendarNotificationTemplate'),(20505,'com.liferay.calendar.model.CalendarResource'),(20525,'com.liferay.opensocial.model.Gadget'),(20526,'com.liferay.opensocial.model.OAuthConsumer'),(20527,'com.liferay.opensocial.model.OAuthToken'),(20529,'com.liferay.portal.repository.liferayrepository.LiferayRepository');
/*!40000 ALTER TABLE `ClassName_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClusterGroup`
--

DROP TABLE IF EXISTS `ClusterGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClusterGroup` (
  `clusterGroupId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `clusterNodeIds` varchar(75) DEFAULT NULL,
  `wholeCluster` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`clusterGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClusterGroup`
--

LOCK TABLES `ClusterGroup` WRITE;
/*!40000 ALTER TABLE `ClusterGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClusterGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `companyId` bigint(20) NOT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `webId` varchar(75) DEFAULT NULL,
  `key_` longtext,
  `mx` varchar(75) DEFAULT NULL,
  `homeURL` longtext,
  `logoId` bigint(20) DEFAULT NULL,
  `system` tinyint(4) DEFAULT NULL,
  `maxUsers` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES (20155,20157,'liferay.com','rO0ABXNyAB9qYXZheC5jcnlwdG8uc3BlYy5TZWNyZXRLZXlTcGVjW0cLZuIwYU0CAAJMAAlhbGdvcml0aG10ABJMamF2YS9sYW5nL1N0cmluZztbAANrZXl0AAJbQnhwdAADQUVTdXIAAltCrPMX+AYIVOACAAB4cAAAABCLjYNvQRUJj3CQCTKfV2hy','billingbuddy.com','/group/guest/administration',0,0,0,1);
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contact_`
--

DROP TABLE IF EXISTS `Contact_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contact_` (
  `contactId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `parentContactId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `prefixId` int(11) DEFAULT NULL,
  `suffixId` int(11) DEFAULT NULL,
  `male` tinyint(4) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `smsSn` varchar(75) DEFAULT NULL,
  `aimSn` varchar(75) DEFAULT NULL,
  `facebookSn` varchar(75) DEFAULT NULL,
  `icqSn` varchar(75) DEFAULT NULL,
  `jabberSn` varchar(75) DEFAULT NULL,
  `msnSn` varchar(75) DEFAULT NULL,
  `mySpaceSn` varchar(75) DEFAULT NULL,
  `skypeSn` varchar(75) DEFAULT NULL,
  `twitterSn` varchar(75) DEFAULT NULL,
  `ymSn` varchar(75) DEFAULT NULL,
  `employeeStatusId` varchar(75) DEFAULT NULL,
  `employeeNumber` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobClass` varchar(75) DEFAULT NULL,
  `hoursOfOperation` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contactId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contact_`
--

LOCK TABLES `Contact_` WRITE;
/*!40000 ALTER TABLE `Contact_` DISABLE KEYS */;
INSERT INTO `Contact_` VALUES (20160,20155,20159,'','2015-05-20 07:43:10','2015-05-20 07:43:10',20005,20159,20157,0,'default@liferay.com','','','',0,0,1,'2015-05-20 07:43:10','','','','','','','','','','','','','','',''),(20200,20155,20199,'','2015-05-20 07:43:13','2015-05-20 07:43:13',20005,20199,20157,0,'test@liferay.com','Test','','Test',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20436,20155,20435,'','2015-05-20 07:44:49','2015-05-20 11:44:07',20005,20435,20157,0,'edicson@billingbuddy.com','Edicson','','Morales',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20819,20155,20159,'','2015-05-20 10:03:13','2015-05-20 21:23:44',20005,20818,20157,0,'company1@billingbuddy.com','Company1','','',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20913,20155,20159,'','2015-05-20 10:10:32','2015-05-20 10:18:45',20005,20912,20157,0,'company2@billingbuddy.com','Company2','','',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(22352,20155,20159,'','2015-05-20 12:31:14','2015-05-20 21:21:37',20005,22351,20157,0,'company3@billingbuddy.com','Company3','','',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `Contact_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Counter`
--

DROP TABLE IF EXISTS `Counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Counter` (
  `name` varchar(75) NOT NULL,
  `currentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Counter`
--

LOCK TABLES `Counter` WRITE;
/*!40000 ALTER TABLE `Counter` DISABLE KEYS */;
INSERT INTO `Counter` VALUES ('com.liferay.counter.model.Counter',40000),('com.liferay.portal.model.Layout#20173#true',1),('com.liferay.portal.model.Layout#20182#false',1),('com.liferay.portal.model.Layout#20182#true',4),('com.liferay.portal.model.Layout#20319#true',1),('com.liferay.portal.model.Layout#20331#true',1),('com.liferay.portal.model.Layout#20341#true',1),('com.liferay.portal.model.Layout#20352#true',2),('com.liferay.portal.model.Layout#20378#true',3),('com.liferay.portal.model.Layout#20631#true',1),('com.liferay.portal.model.Layout#35232#true',1),('com.liferay.portal.model.Layout#37312#true',1),('com.liferay.portal.model.Layout#37345#true',1),('com.liferay.portal.model.ResourceAction',1400),('com.liferay.portal.model.ResourceBlock',300),('com.liferay.portal.model.ResourcePermission',5200),('com.liferay.portlet.documentlibrary.model.DLFileEntry',200);
/*!40000 ALTER TABLE `Counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Country` (
  `countryId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `a2` varchar(75) DEFAULT NULL,
  `a3` varchar(75) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `idd_` varchar(75) DEFAULT NULL,
  `zipRequired` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` VALUES (1,'canada','CA','CAN','124','001',1,1),(2,'china','CN','CHN','156','086',1,1),(3,'france','FR','FRA','250','033',1,1),(4,'germany','DE','DEU','276','049',1,1),(5,'hong-kong','HK','HKG','344','852',1,1),(6,'hungary','HU','HUN','348','036',1,1),(7,'israel','IL','ISR','376','972',1,1),(8,'italy','IT','ITA','380','039',1,1),(9,'japan','JP','JPN','392','081',0,1),(10,'south-korea','KR','KOR','410','082',1,1),(11,'netherlands','NL','NLD','528','031',1,1),(12,'portugal','PT','PRT','620','351',1,1),(13,'russia','RU','RUS','643','007',1,1),(14,'singapore','SG','SGP','702','065',1,1),(15,'spain','ES','ESP','724','034',1,1),(16,'turkey','TR','TUR','792','090',1,1),(17,'vietnam','VN','VNM','704','084',1,1),(18,'united-kingdom','GB','GBR','826','044',1,1),(19,'united-states','US','USA','840','001',1,1),(20,'afghanistan','AF','AFG','4','093',1,1),(21,'albania','AL','ALB','8','355',1,1),(22,'algeria','DZ','DZA','12','213',1,1),(23,'american-samoa','AS','ASM','16','684',1,1),(24,'andorra','AD','AND','20','376',1,1),(25,'angola','AO','AGO','24','244',0,1),(26,'anguilla','AI','AIA','660','264',1,1),(27,'antarctica','AQ','ATA','10','672',1,1),(28,'antigua-barbuda','AG','ATG','28','268',0,1),(29,'argentina','AR','ARG','32','054',1,1),(30,'armenia','AM','ARM','51','374',1,1),(31,'aruba','AW','ABW','533','297',0,1),(32,'australia','AU','AUS','36','061',1,1),(33,'austria','AT','AUT','40','043',1,1),(34,'azerbaijan','AZ','AZE','31','994',1,1),(35,'bahamas','BS','BHS','44','242',0,1),(36,'bahrain','BH','BHR','48','973',1,1),(37,'bangladesh','BD','BGD','50','880',1,1),(38,'barbados','BB','BRB','52','246',1,1),(39,'belarus','BY','BLR','112','375',1,1),(40,'belgium','BE','BEL','56','032',1,1),(41,'belize','BZ','BLZ','84','501',0,1),(42,'benin','BJ','BEN','204','229',0,1),(43,'bermuda','BM','BMU','60','441',1,1),(44,'bhutan','BT','BTN','64','975',1,1),(45,'bolivia','BO','BOL','68','591',1,1),(46,'bosnia-herzegovina','BA','BIH','70','387',1,1),(47,'botswana','BW','BWA','72','267',0,1),(48,'brazil','BR','BRA','76','055',1,1),(49,'british-virgin-islands','VG','VGB','92','284',1,1),(50,'brunei','BN','BRN','96','673',1,1),(51,'bulgaria','BG','BGR','100','359',1,1),(52,'burkina-faso','BF','BFA','854','226',0,1),(53,'burma-myanmar','MM','MMR','104','095',1,1),(54,'burundi','BI','BDI','108','257',0,1),(55,'cambodia','KH','KHM','116','855',1,1),(56,'cameroon','CM','CMR','120','237',1,1),(57,'cape-verde-island','CV','CPV','132','238',1,1),(58,'cayman-islands','KY','CYM','136','345',1,1),(59,'central-african-republic','CF','CAF','140','236',0,1),(60,'chad','TD','TCD','148','235',1,1),(61,'chile','CL','CHL','152','056',1,1),(62,'christmas-island','CX','CXR','162','061',1,1),(63,'cocos-islands','CC','CCK','166','061',1,1),(64,'colombia','CO','COL','170','057',1,1),(65,'comoros','KM','COM','174','269',0,1),(66,'republic-of-congo','CD','COD','180','242',0,1),(67,'democratic-republic-of-congo','CG','COG','178','243',0,1),(68,'cook-islands','CK','COK','184','682',0,1),(69,'costa-rica','CR','CRI','188','506',1,1),(70,'croatia','HR','HRV','191','385',1,1),(71,'cuba','CU','CUB','192','053',1,1),(72,'cyprus','CY','CYP','196','357',1,1),(73,'czech-republic','CZ','CZE','203','420',1,1),(74,'denmark','DK','DNK','208','045',1,1),(75,'djibouti','DJ','DJI','262','253',0,1),(76,'dominica','DM','DMA','212','767',0,1),(77,'dominican-republic','DO','DOM','214','809',1,1),(78,'ecuador','EC','ECU','218','593',1,1),(79,'egypt','EG','EGY','818','020',1,1),(80,'el-salvador','SV','SLV','222','503',1,1),(81,'equatorial-guinea','GQ','GNQ','226','240',0,1),(82,'eritrea','ER','ERI','232','291',0,1),(83,'estonia','EE','EST','233','372',1,1),(84,'ethiopia','ET','ETH','231','251',1,1),(85,'faeroe-islands','FO','FRO','234','298',1,1),(86,'falkland-islands','FK','FLK','238','500',1,1),(87,'fiji-islands','FJ','FJI','242','679',0,1),(88,'finland','FI','FIN','246','358',1,1),(89,'french-guiana','GF','GUF','254','594',1,1),(90,'french-polynesia','PF','PYF','258','689',1,1),(91,'gabon','GA','GAB','266','241',1,1),(92,'gambia','GM','GMB','270','220',0,1),(93,'georgia','GE','GEO','268','995',1,1),(94,'ghana','GH','GHA','288','233',0,1),(95,'gibraltar','GI','GIB','292','350',1,1),(96,'greece','GR','GRC','300','030',1,1),(97,'greenland','GL','GRL','304','299',1,1),(98,'grenada','GD','GRD','308','473',0,1),(99,'guadeloupe','GP','GLP','312','590',1,1),(100,'guam','GU','GUM','316','671',1,1),(101,'guatemala','GT','GTM','320','502',1,1),(102,'guinea','GN','GIN','324','224',0,1),(103,'guinea-bissau','GW','GNB','624','245',1,1),(104,'guyana','GY','GUY','328','592',0,1),(105,'haiti','HT','HTI','332','509',1,1),(106,'honduras','HN','HND','340','504',1,1),(107,'iceland','IS','ISL','352','354',1,1),(108,'india','IN','IND','356','091',1,1),(109,'indonesia','ID','IDN','360','062',1,1),(110,'iran','IR','IRN','364','098',1,1),(111,'iraq','IQ','IRQ','368','964',1,1),(112,'ireland','IE','IRL','372','353',0,1),(113,'ivory-coast','CI','CIV','384','225',1,1),(114,'jamaica','JM','JAM','388','876',1,1),(115,'jordan','JO','JOR','400','962',1,1),(116,'kazakhstan','KZ','KAZ','398','007',1,1),(117,'kenya','KE','KEN','404','254',1,1),(118,'kiribati','KI','KIR','408','686',0,1),(119,'kuwait','KW','KWT','414','965',1,1),(120,'north-korea','KP','PRK','408','850',0,1),(121,'kyrgyzstan','KG','KGZ','471','996',1,1),(122,'laos','LA','LAO','418','856',1,1),(123,'latvia','LV','LVA','428','371',1,1),(124,'lebanon','LB','LBN','422','961',1,1),(125,'lesotho','LS','LSO','426','266',1,1),(126,'liberia','LR','LBR','430','231',1,1),(127,'libya','LY','LBY','434','218',1,1),(128,'liechtenstein','LI','LIE','438','423',1,1),(129,'lithuania','LT','LTU','440','370',1,1),(130,'luxembourg','LU','LUX','442','352',1,1),(131,'macau','MO','MAC','446','853',0,1),(132,'macedonia','MK','MKD','807','389',1,1),(133,'madagascar','MG','MDG','450','261',1,1),(134,'malawi','MW','MWI','454','265',0,1),(135,'malaysia','MY','MYS','458','060',1,1),(136,'maldives','MV','MDV','462','960',1,1),(137,'mali','ML','MLI','466','223',0,1),(138,'malta','MT','MLT','470','356',1,1),(139,'marshall-islands','MH','MHL','584','692',1,1),(140,'martinique','MQ','MTQ','474','596',1,1),(141,'mauritania','MR','MRT','478','222',0,1),(142,'mauritius','MU','MUS','480','230',0,1),(143,'mayotte-island','YT','MYT','175','269',1,1),(144,'mexico','MX','MEX','484','052',1,1),(145,'micronesia','FM','FSM','583','691',1,1),(146,'moldova','MD','MDA','498','373',1,1),(147,'monaco','MC','MCO','492','377',1,1),(148,'mongolia','MN','MNG','496','976',1,1),(149,'montenegro','ME','MNE','499','382',1,1),(150,'montserrat','MS','MSR','500','664',0,1),(151,'morocco','MA','MAR','504','212',1,1),(152,'mozambique','MZ','MOZ','508','258',1,1),(153,'namibia','NA','NAM','516','264',1,1),(154,'nauru','NR','NRU','520','674',0,1),(155,'nepal','NP','NPL','524','977',1,1),(156,'netherlands-antilles','AN','ANT','530','599',1,1),(157,'new-caledonia','NC','NCL','540','687',1,1),(158,'new-zealand','NZ','NZL','554','064',1,1),(159,'nicaragua','NI','NIC','558','505',1,1),(160,'niger','NE','NER','562','227',1,1),(161,'nigeria','NG','NGA','566','234',1,1),(162,'niue','NU','NIU','570','683',0,1),(163,'norfolk-island','NF','NFK','574','672',1,1),(164,'norway','NO','NOR','578','047',1,1),(165,'oman','OM','OMN','512','968',1,1),(166,'pakistan','PK','PAK','586','092',1,1),(167,'palau','PW','PLW','585','680',1,1),(168,'palestine','PS','PSE','275','970',1,1),(169,'panama','PA','PAN','591','507',1,1),(170,'papua-new-guinea','PG','PNG','598','675',1,1),(171,'paraguay','PY','PRY','600','595',1,1),(172,'peru','PE','PER','604','051',1,1),(173,'philippines','PH','PHL','608','063',1,1),(174,'poland','PL','POL','616','048',1,1),(175,'puerto-rico','PR','PRI','630','787',1,1),(176,'qatar','QA','QAT','634','974',0,1),(177,'reunion-island','RE','REU','638','262',1,1),(178,'romania','RO','ROU','642','040',1,1),(179,'rwanda','RW','RWA','646','250',0,1),(180,'st-helena','SH','SHN','654','290',1,1),(181,'st-kitts','KN','KNA','659','869',0,1),(182,'st-lucia','LC','LCA','662','758',0,1),(183,'st-pierre-miquelon','PM','SPM','666','508',1,1),(184,'st-vincent','VC','VCT','670','784',1,1),(185,'san-marino','SM','SMR','674','378',1,1),(186,'sao-tome-principe','ST','STP','678','239',0,1),(187,'saudi-arabia','SA','SAU','682','966',1,1),(188,'senegal','SN','SEN','686','221',1,1),(189,'serbia','RS','SRB','688','381',1,1),(190,'seychelles','SC','SYC','690','248',0,1),(191,'sierra-leone','SL','SLE','694','249',0,1),(192,'slovakia','SK','SVK','703','421',1,1),(193,'slovenia','SI','SVN','705','386',1,1),(194,'solomon-islands','SB','SLB','90','677',0,1),(195,'somalia','SO','SOM','706','252',0,1),(196,'south-africa','ZA','ZAF','710','027',1,1),(197,'sri-lanka','LK','LKA','144','094',1,1),(198,'sudan','SD','SDN','736','095',1,1),(199,'suriname','SR','SUR','740','597',0,1),(200,'swaziland','SZ','SWZ','748','268',1,1),(201,'sweden','SE','SWE','752','046',1,1),(202,'switzerland','CH','CHE','756','041',1,1),(203,'syria','SY','SYR','760','963',0,1),(204,'taiwan','TW','TWN','158','886',1,1),(205,'tajikistan','TJ','TJK','762','992',1,1),(206,'tanzania','TZ','TZA','834','255',0,1),(207,'thailand','TH','THA','764','066',1,1),(208,'togo','TG','TGO','768','228',1,1),(209,'tonga','TO','TON','776','676',0,1),(210,'trinidad-tobago','TT','TTO','780','868',0,1),(211,'tunisia','TN','TUN','788','216',1,1),(212,'turkmenistan','TM','TKM','795','993',1,1),(213,'turks-caicos','TC','TCA','796','649',1,1),(214,'tuvalu','TV','TUV','798','688',0,1),(215,'uganda','UG','UGA','800','256',0,1),(216,'ukraine','UA','UKR','804','380',1,1),(217,'united-arab-emirates','AE','ARE','784','971',0,1),(218,'uruguay','UY','URY','858','598',1,1),(219,'uzbekistan','UZ','UZB','860','998',1,1),(220,'vanuatu','VU','VUT','548','678',0,1),(221,'vatican-city','VA','VAT','336','039',1,1),(222,'venezuela','VE','VEN','862','058',1,1),(223,'wallis-futuna','WF','WLF','876','681',1,1),(224,'western-samoa','WS','WSM','882','685',1,1),(225,'yemen','YE','YEM','887','967',0,1),(226,'zambia','ZM','ZMB','894','260',1,1),(227,'zimbabwe','ZW','ZWE','716','263',0,1),(228,'aland-islands','AX','ALA','248','359',1,1),(229,'bonaire-st-eustatius-saba','BQ','BES','535','599',1,1),(230,'bouvet-island','BV','BVT','74','047',1,1),(231,'british-indian-ocean-territory','IO','IOT','86','246',1,1),(232,'curacao','CW','CUW','531','599',1,1),(233,'french-southern-territories','TF','ATF','260','033',0,1),(234,'guernsey','GG','GGY','831','044',1,1),(235,'heard-island-mcdonald-islands','HM','HMD','334','061',1,1),(236,'isle-of-man','IM','IMN','833','044',1,1),(237,'jersey','JE','JEY','832','044',1,1),(238,'northern-mariana-islands','MP','MNP','580','670',1,1),(239,'pitcairn','PN','PCN','612','649',1,1),(240,'south-georgia-south-sandwich-islands','GS','SGS','239','044',1,1),(241,'south-sudan','SS','SSD','728','211',1,1),(242,'sint-maarten','SX','SXM','534','721',1,1),(243,'st-barthelemy','BL','BLM','652','590',1,1),(244,'st-martin','MF','MAF','663','590',1,1),(245,'tokelau','TK','TKL','772','690',0,1),(246,'timor-leste','TL','TLS','626','670',1,1),(247,'united-states-minor-outlying-islands','UM','UMI','581','699',1,1),(248,'united-states-virgin-islands','VI','VIR','850','340',1,1),(249,'western-sahara','EH','ESH','732','212',1,1);
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CyrusUser`
--

DROP TABLE IF EXISTS `CyrusUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CyrusUser` (
  `userId` varchar(75) NOT NULL,
  `password_` varchar(75) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CyrusUser`
--

LOCK TABLES `CyrusUser` WRITE;
/*!40000 ALTER TABLE `CyrusUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `CyrusUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CyrusVirtual`
--

DROP TABLE IF EXISTS `CyrusVirtual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CyrusVirtual` (
  `emailAddress` varchar(75) NOT NULL,
  `userId` varchar(75) NOT NULL,
  PRIMARY KEY (`emailAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CyrusVirtual`
--

LOCK TABLES `CyrusVirtual` WRITE;
/*!40000 ALTER TABLE `CyrusVirtual` DISABLE KEYS */;
/*!40000 ALTER TABLE `CyrusVirtual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDLRecord`
--

DROP TABLE IF EXISTS `DDLRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDLRecord` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDLRecord`
--

LOCK TABLES `DDLRecord` WRITE;
/*!40000 ALTER TABLE `DDLRecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDLRecordSet`
--

DROP TABLE IF EXISTS `DDLRecordSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDLRecordSet` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `recordSetKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `minDisplayRows` int(11) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDLRecordSet`
--

LOCK TABLES `DDLRecordSet` WRITE;
/*!40000 ALTER TABLE `DDLRecordSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecordSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDLRecordVersion`
--

DROP TABLE IF EXISTS `DDLRecordVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDLRecordVersion` (
  `recordVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `recordId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`recordVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDLRecordVersion`
--

LOCK TABLES `DDLRecordVersion` WRITE;
/*!40000 ALTER TABLE `DDLRecordVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecordVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMContent`
--

DROP TABLE IF EXISTS `DDMContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMContent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xml` longtext,
  PRIMARY KEY (`contentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMContent`
--

LOCK TABLES `DDMContent` WRITE;
/*!40000 ALTER TABLE `DDMContent` DISABLE KEYS */;
INSERT INTO `DDMContent` VALUES ('82a5ca78-50c1-413e-b727-3d973e123db0',20552,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[8 8 8 8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n</root>'),('753e929f-4967-42d3-8db1-fd3e96375b22',20562,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[8 8 8 8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n</root>'),('35d86347-164b-4fd7-ac95-07fbdc3eac02',20572,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[8 8 8 8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n</root>'),('c0924cb7-88f1-4386-8cec-2346b1d3f44f',20585,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[8 8 8 8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n</root>'),('49ee73c1-ed6e-4e34-a7cb-ca93df183e62',20614,20182,20155,20159,'','2015-05-20 07:45:52','2015-05-20 07:45:52','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_LAST_MODIFIED\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[2013-08-28T22:33:19Z]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[application/pdf]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"MSOffice_LAST_SAVED\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[2013-08-28T22:33:19Z]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"DublinCore_CREATED\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[2013-08-28T22:30:43Z]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"DublinCore_MODIFIED\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[2013-08-28T22:33:19Z]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"MSOffice_CREATION_DATE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[2013-08-28T22:30:43Z]]></dynamic-content>\n	</dynamic-element>\n</root>'),('17c42792-6dd9-4278-8700-d481d0bc8e9b',20618,20182,20155,20159,'','2015-05-20 07:45:52','2015-05-20 07:45:52','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[8 8 8 8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n</root>');
/*!40000 ALTER TABLE `DDMContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMStorageLink`
--

DROP TABLE IF EXISTS `DDMStorageLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMStorageLink` (
  `uuid_` varchar(75) DEFAULT NULL,
  `storageLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`storageLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMStorageLink`
--

LOCK TABLES `DDMStorageLink` WRITE;
/*!40000 ALTER TABLE `DDMStorageLink` DISABLE KEYS */;
INSERT INTO `DDMStorageLink` VALUES ('1edac23d-eb54-4ca6-9551-468613455b2d',20554,20100,20552,20317),('a852fc22-3124-4c95-8859-0ee5d36a85de',20563,20100,20562,20317),('93315611-133a-4b88-8792-eaa0a617ea0c',20573,20100,20572,20317),('66b2432c-8cf3-4b91-baa8-d12a9b30c28f',20588,20100,20585,20317),('f35bfcce-8392-4feb-9087-2775c6fa4742',20615,20100,20614,20317),('e85a993a-9464-4ee3-bc59-31281a107735',20619,20100,20618,20317);
/*!40000 ALTER TABLE `DDMStorageLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMStructure`
--

DROP TABLE IF EXISTS `DDMStructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMStructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `structureId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentStructureId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `structureKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  `storageType` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMStructure`
--

LOCK TABLES `DDMStructure` WRITE;
/*!40000 ALTER TABLE `DDMStructure` DISABLE KEYS */;
INSERT INTO `DDMStructure` VALUES ('a43e4e6a-a48a-4a59-8d13-a6ccffbf2079',20305,20195,20155,20159,'','2015-05-20 07:43:16','2015-05-20 07:43:16',0,20091,'LEARNING MODULE METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Learning Module Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Learning Module Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select2235\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select3212\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select4115\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"administration\" type=\"option\" value=\"admin\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Administration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"installation\" type=\"option\" value=\"install\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"configuration\" type=\"option\" value=\"config\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Topics]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select5069\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"beginner\" type=\"option\" value=\"beginner\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Beginner]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intermediate\" type=\"option\" value=\"intermediate\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"advanced\" type=\"option\" value=\"advanced\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Level]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('3d426c38-df7c-4c90-9f25-dfe00a9e3a66',20306,20195,20155,20159,'','2015-05-20 07:43:17','2015-05-20 07:43:17',0,20091,'MARKETING CAMPAIGN THEME METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Campaign Theme Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Campaign Theme Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select2305\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"strong_company\" type=\"option\" value=\"strong\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Strong Company]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"new_product_launch\" type=\"option\" value=\"product\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"company_philosophy\" type=\"option\" value=\"philosophy\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Select]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select3229\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"your_trusted_advisor\" type=\"option\" value=\"advisor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Your Trusted Advisor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"10_years_of_customer_solutions\" type=\"option\" value=\"solutions\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"making_a_difference\" type=\"option\" value=\"difference\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Campaign Theme]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select4282\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"awareness\" type=\"option\" value=\"awareness\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Awareness]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"lead_generation\" type=\"option\" value=\"leads\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"customer_service\" type=\"option\" value=\"service\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Business Goal]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('73d91a45-010b-418d-8553-a592c69c1e8c',20307,20195,20155,20159,'','2015-05-20 07:43:17','2015-05-20 07:43:17',0,20091,'MEETING METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Metadata for meeting</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date3054\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2217\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text4569\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text5638\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea6584\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea7502\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Participants]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('015a8cb5-0d46-44e0-a4e3-68f512b2f37a',20309,20195,20155,20159,'','2015-05-20 07:43:17','2015-05-20 07:43:17',0,20091,'AUTO_7F02888D-9172-46AE-BE12-9700182D8414','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date18949\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Effective Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date20127\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Expiration Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select10264\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"nda\" type=\"option\" value=\"NDA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[NDA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"msa\" type=\"option\" value=\"MSA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"license_agreement\" type=\"option\" value=\"License\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Contract Type]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select4893\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"draft\" type=\"option\" value=\"Draft\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Draft]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"in_review\" type=\"option\" value=\"Review\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"suspended\" type=\"option\" value=\"Suspended\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"signed\" type=\"option\" value=\"Signed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text14822\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Legal Reviewer]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text17700\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Signing Authority]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2087\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Deal Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('abea979e-2e97-4283-a634-a654c89a614d',20311,20195,20155,20159,'','2015-05-20 07:43:18','2015-05-20 07:43:18',0,20091,'AUTO_E42A34AA-8D87-4C52-9686-345093FD190B','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"radio5547\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"radio\">\n		<dynamic-element name=\"yes\" type=\"option\" value=\"yes\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"no\" type=\"option\" value=\"no\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Needs Legal Review]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2033\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Banner Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea2873\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('e117ad8d-8c83-4c7d-9b98-aa81b801e9d5',20313,20195,20155,20159,'','2015-05-20 07:43:18','2015-05-20 07:43:18',0,20091,'AUTO_2E84D837-CF2B-4CD7-84ED-E5737ED4E479','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2082\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Lesson Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2979\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('36e296fa-9cf8-4826-9573-1f0315946276',20315,20195,20155,20159,'','2015-05-20 07:43:18','2015-05-20 07:43:18',0,20091,'AUTO_0F0DD421-FCEA-40AD-B97F-8BE1CAAB5A80','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select2890\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select3864\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select4831\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"website\" type=\"option\" value=\"website\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Website]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"collaboration\" type=\"option\" value=\"collaboration\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intranet\" type=\"option\" value=\"intranet\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Areas of Interest]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select5929\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"acme\" type=\"option\" value=\"acme\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[ACME]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"sevencogs\" type=\"option\" value=\"sevencogs\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"freeplus\" type=\"option\" value=\"freeplus\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Competitors]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text1993\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Prospect Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('1f59eb6b-de55-43c1-bd3d-cb021687b19d',20317,20195,20155,20159,'','2015-05-20 07:43:19','2015-05-20 07:43:19',0,20316,'TIKARAWMETADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">TIKARAWMETADATA</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">TIKARAWMETADATA</Description></root>','<root available-locales=\"en_US\" default-locale=\"en_US\"><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROGRAM_ID\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMAND_LINE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_HISTORY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_TABLE_ID\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_INSTITUTION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_SOURCE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONTACT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROJECT_ID\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONVENTIONS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REFERENCES\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_ACKNOWLEDGEMENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REALIZATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_EXPERIMENT_ID\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_MODEL_NAME_ENGLISH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_URL\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_WORK_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC_TERMS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC_TERMS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC_TERMS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC_TERMS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_FORMAT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_IDENTIFIER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_MODIFIED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CONTRIBUTOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_COVERAGE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.COVERAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CREATOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CREATOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CREATED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CREATED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DESCRIPTION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_LANGUAGE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PUBLISHER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RELATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RELATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RIGHTS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RIGHTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SOURCE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SUBJECT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SUBJECT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TITLE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TITLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LATITUDE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LATITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LONGITUDE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LONGITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_ALTITUDE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.ALTITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_ENCODING\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LANGUAGE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_DISPOSITION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_MD5\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LAST_MODIFIED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_RECIPIENT_ADDRESS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_FROM\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_TO\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_TO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_CC\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_CC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_BCC\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_KEYWORDS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMMENTS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMMENTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_AUTHOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_AUTHOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_NAME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_REVISION_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TEMPLATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TOTAL_TIME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PRESENTATION_FORMAT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_NOTES\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.NOTES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_MANAGER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.MANAGER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_VERSION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_VERSION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CONTENT_STATUS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CATEGORY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CATEGORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMPANY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMPANY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SECURITY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SECURITY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SLIDE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PAGE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PARAGRAPH_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LINE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_WORD_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT_WITH_SPACES\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TABLE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TABLE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_IMAGE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.IMAGE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_OBJECT_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.OBJECT_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_EDIT_TIME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CREATION_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_SAVED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_PRINTED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_USER_DEFINED_METADATA_NAME_PREFIX\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.USER_DEFINED_METADATA_NAME_PREFIX]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_BITS_PER_SAMPLE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_WIDTH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SAMPLES_PER_PIXEL\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FLASH_FIRED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EXPOSURE_TIME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_F_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.F_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FOCAL_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ISO_SPEED_RATINGS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MAKE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MODEL\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SOFTWARE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SOFTWARE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIENTATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIENTATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_HORIZONTAL\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_VERTICAL\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_UNIT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIGINAL_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_RESOURCE_NAME_KEY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_PROTECTED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_EMBEDDED_RELATIONSHIP_ID\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.EMBEDDED_RELATIONSHIP_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_TIKA_MIME_FILE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_MIME_TYPE_MAGIC\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_DURATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.DURATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ABS_PEAK_AUDIO_FILE_PATH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALBUM\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALBUM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALT_TAPE_NAME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ARTIST\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ARTIST]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_RATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_CHANNEL_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_COMPRESSOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COMPOSER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COMPOSER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COPYRIGHT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ENGINEER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ENGINEER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_FILE_DATA_RATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_GENRE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.GENRE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_INSTRUMENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_KEY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOG_COMMENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOOP\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOOP]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_NUMBER_OF_BEATS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_METADATA_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_PULL_DOWN\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELEASE_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCALE_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCENE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCENE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_NAME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SPEAKER_PLACEMENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_STRETCH_MODE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TAPE_NAME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TEMPO\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TEMPO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TIME_SIGNATURE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TRACK_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_MODE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COLOR_SPACE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COMPRESSOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FIELD_ORDER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FRAME_RATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_DEPTH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_ASPECT_RATIO\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element></root>','xml',0),('04300571-cdac-4438-8dea-ae15fc662cd2',20601,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',0,20109,'BASIC-WEB-CONTENT-6.2.3.1','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Basic Web Content - 6.2.3.1</Name></root>','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"html\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"content\" readOnly=\"false\" repeatable=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-text-html\" width=\"small\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Content]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('813c5610-4ed2-4bbb-aced-9ae48993b226',20801,20182,20155,20159,'','2015-05-20 10:00:47','2015-05-20 10:00:47',0,20098,'CONTACTS','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contacts</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contacts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"company\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Company]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"email\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Email]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"firstName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[First Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"imService\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"aol\" type=\"option\" value=\"aol\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[AOL]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"yahoo\" type=\"option\" value=\"yahoo\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yahoo]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"gtalk\" type=\"option\" value=\"gtalk\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[GTalk]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger Service]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"gtalk\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imUserName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"jobTitle\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Job Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"lastName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Last Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"notes\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Notes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneMobile\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Phone (Mobile)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneOffice\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Phone (Office)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('5578e316-be42-435d-bc30-48ec157107cc',20802,20182,20155,20159,'','2015-05-20 10:00:47','2015-05-20 10:00:47',0,20098,'EVENTS','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Events</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Events</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"cost\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Cost]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"eventDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Event Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventTime\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('f74e272e-22a3-4553-a010-f67c0abfb323',20803,20182,20155,20159,'','2015-05-20 10:00:47','2015-05-20 10:00:47',0,20098,'INVENTORY','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Inventory</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Inventory</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"item\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Item]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"purchaseDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Purchase Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"purchasePrice\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Purchase Price]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"quantity\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Quantity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('8695d4c6-1485-4199-b528-0ee0f65b7e22',20804,20182,20155,20159,'','2015-05-20 10:00:47','2015-05-20 10:00:47',0,20098,'ISSUES TRACKING','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Issues Tracking</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Issue Tracking</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"dueDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Due Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"issueId\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Issue ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"severity\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"status\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('fa61bbea-80e5-4fef-907a-b290281cf121',20805,20182,20155,20159,'','2015-05-20 10:00:47','2015-05-20 10:00:47',0,20098,'MEETING MINUTES','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Minutes</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Meeting Minutes</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"author\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"duration\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Duration]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"meetingDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"minutes\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Minutes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('62f2f983-0f0b-46b7-888e-465c1934f776',20806,20182,20155,20159,'','2015-05-20 10:00:48','2015-05-20 10:00:48',0,20098,'TO DO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">To Do</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">To Do</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"endDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[End Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"integer\" fieldNamespace=\"ddm\" name=\"percentComplete\" required=\"false\" showLabel=\"true\" type=\"ddm-integer\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[% Complete]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[0]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"severity\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"startDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Start Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"status\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
/*!40000 ALTER TABLE `DDMStructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMStructureLink`
--

DROP TABLE IF EXISTS `DDMStructureLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMStructureLink` (
  `structureLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`structureLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMStructureLink`
--

LOCK TABLES `DDMStructureLink` WRITE;
/*!40000 ALTER TABLE `DDMStructureLink` DISABLE KEYS */;
INSERT INTO `DDMStructureLink` VALUES (20559,20091,20548,20317),(20564,20091,20561,20317),(20574,20091,20571,20317),(20589,20091,20581,20317),(20616,20091,20613,20317),(20620,20091,20617,20317);
/*!40000 ALTER TABLE `DDMStructureLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMTemplate`
--

DROP TABLE IF EXISTS `DDMTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMTemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `templateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `templateKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `mode_` varchar(75) DEFAULT NULL,
  `language` varchar(75) DEFAULT NULL,
  `script` longtext,
  `cacheable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`templateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMTemplate`
--

LOCK TABLES `DDMTemplate` WRITE;
/*!40000 ALTER TABLE `DDMTemplate` DISABLE KEYS */;
INSERT INTO `DDMTemplate` VALUES ('b687e222-0ab0-4015-956f-f70627a94271',20420,20195,20155,20159,'','2015-05-20 07:43:33','2015-05-20 07:43:33',20007,0,'BLOGS-BASIC-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Basic</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays titles, authors, and abstracts compactly for blog entries.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#list entries as entry>\n	<div class=\"entry\">\n		<#assign viewURL = renderResponse.createRenderURL() />\n\n		${viewURL.setParameter(\"struts_action\", \"/blogs/view_entry\")}\n		${viewURL.setParameter(\"redirect\", currentURL)}\n		${viewURL.setParameter(\"urlTitle\", entry.getUrlTitle())}\n\n		<div class=\"entry-content\">\n			<div class=\"entry-title\">\n				<h2><a href=\"${viewURL}\">${htmlUtil.escape(entry.getTitle())}</a></h2>\n			</div>\n		</div>\n\n		<div class=\"entry-body\">\n			<div class=\"entry-author\">\n				<@liferay.language key=\"written-by\" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}\n			</div>\n\n			<#assign summary = entry.getDescription() />\n\n			<#if (validator.isNull(summary))>\n				<#assign summary = entry.getContent() />\n			</#if>\n\n			${stringUtil.shorten(htmlUtil.stripHtml(summary), 100)}\n\n			<a href=\"${viewURL}\"><@liferay.language key=\"read-more\" /> <span class=\"hide-accessible\"><@liferay.language key=\"about\"/>${htmlUtil.escape(entry.getTitle())}</span> &raquo;</a>\n		</div>\n\n		<div class=\"entry-footer\">\n			<span class=\"entry-date\">\n				${dateUtil.getDate(entry.getCreateDate(), \"dd MMM yyyy - HH:mm:ss\", locale)}\n			</span>\n\n			<#assign blogsEntryClassName = \"com.liferay.portlet.blogs.model.BlogsEntry\" />\n\n			<#if (enableFlags == \"true\")>\n				<@liferay_ui[\"flags\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					contentTitle=entry.getTitle()\n					reportedUserId=entry.getUserId()\n				/>\n			</#if>\n\n			<span class=\"entry-categories\">\n				<@liferay_ui[\"asset-categories-summary\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n\n			<span class=\"entry-tags\">\n				<@liferay_ui[\"asset-tags-summary\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n		</div>\n	</div>\n\n	<div class=\"separator\"><!-- --></div>\n</#list>',0,0,20421,''),('55024851-63ea-44f7-9149-203a9463f805',20422,20195,20155,20159,'','2015-05-20 07:43:34','2015-05-20 07:43:34',20083,0,'ASSET-PUBLISHER-RICH-SUMMARY-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Rich Summary</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays abstracts, icons, related assets, and print/edit actions for assets. Optionally include asset bookmarks and ratings.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#list entries as entry>\n	<#assign entry = entry />\n\n	<#assign assetRenderer = entry.getAssetRenderer() />\n\n	<#assign entryTitle = htmlUtil.escape(assetRenderer.getTitle(locale)) />\n\n	<#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />\n\n	<#if assetLinkBehavior != \"showFullContent\">\n		<#assign viewURL = assetPublisherHelperImpl.getAssetViewURL(renderRequest, renderResponse, entry, true) />\n	</#if>\n\n	<div class=\"asset-abstract\">\n		<div class=\"lfr-meta-actions asset-actions\">\n			<@getPrintIcon />\n\n			<@getFlagsIcon />\n\n			<@getEditIcon />\n		</div>\n\n		<h3 class=\"asset-title\">\n			<a href=\"${viewURL}\"><img alt=\"\" src=\"${assetRenderer.getIconPath(renderRequest)}\" />${entryTitle}</a>\n		</h3>\n\n		<@getMetadataField fieldName=\"tags\" />\n\n		<@getMetadataField fieldName=\"create-date\" />\n\n		<@getMetadataField fieldName=\"view-count\" />\n\n		<div class=\"asset-content\">\n			<@getSocialBookmarks />\n\n			<div class=\"asset-summary\">\n				<@getMetadataField fieldName=\"author\" />\n\n				${htmlUtil.escape(assetRenderer.getSummary(locale))}\n\n				<a href=\"${viewURL}\"><@liferay.language key=\"read-more\" /><span class=\"hide-accessible\"><@liferay.language key=\"about\" />${entryTitle}</span> &raquo;</a>\n			</div>\n\n			<@getRatings />\n\n			<@getRelatedAssets />\n\n			<@getDiscussion />\n		</div>\n	</div>\n\n</#list>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == \"true\")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		${discussionURL.setParameter(\"struts_action\", \"/asset_publisher/\" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui[\"discussion\"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			formAction=discussionURL?string\n			formName=\"fm\" + entry.getClassPK()\n			ratingsEnabled=enableCommentRatings == \"true\"\n			redirect=portalUtil.getCurrentURL(request)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign redirectURL = renderResponse.createRenderURL() />\n\n		${redirectURL.setParameter(\"struts_action\", \"/asset_publisher/add_asset_redirect\")}\n		${redirectURL.setWindowState(\"pop_up\")}\n\n		<#assign editPortletURL = assetRenderer.getURLEdit(renderRequest, renderResponse, windowStateFactory.getWindowState(\"pop_up\"), redirectURL)!\"\" />\n\n		<#if validator.isNotNull(editPortletURL)>\n			<#assign title = languageUtil.format(locale, \"edit-x\", entryTitle) />\n\n			<@liferay_ui[\"icon\"]\n				image=\"edit\"\n				message=title\n				url=\"javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:\'\" + renderResponse.getNamespace() + \"editAsset\', title: \'\" + title + \"\', uri:\'\" + htmlUtil.escapeURL(editPortletURL.toString()) + \"\'});\"\n			/>\n		</#if>\n	</#if>\n</#macro>\n\n<#macro getFlagsIcon>\n	<#if enableFlags == \"true\">\n		<@liferay_ui[\"flags\"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			contentTitle=entry.getTitle(locale)\n			label=false\n			reportedUserId=entry.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getMetadataField\n	fieldName\n>\n	<#if stringUtil.split(metadataFields)?seq_contains(fieldName)>\n		<span class=\"metadata-entry metadata-\"${fieldName}\">\n			<#assign dateFormat = \"dd MMM yyyy - HH:mm:ss\" />\n\n			<#if fieldName == \"author\">\n				<@liferay.language key=\"by\" /> ${portalUtil.getUserName(assetRenderer.getUserId(), assetRenderer.getUserName())}\n			<#elseif fieldName == \"categories\">\n				<@liferay_ui[\"asset-categories-summary\"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == \"create-date\">\n				${dateUtil.getDate(entry.getCreateDate(), dateFormat, locale)}\n			<#elseif fieldName == \"expiration-date\">\n				${dateUtil.getDate(entry.getExpirationDate(), dateFormat, locale)}\n			<#elseif fieldName == \"modified-date\">\n				${dateUtil.getDate(entry.getModifiedDate(), dateFormat, locale)}\n			<#elseif fieldName == \"priority\">\n				${entry.getPriority()}\n			<#elseif fieldName == \"publish-date\">\n				${dateUtil.getDate(entry.getPublishDate(), dateFormat, locale)}\n			<#elseif fieldName == \"tags\">\n				<@liferay_ui[\"asset-tags-summary\"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == \"view-count\">\n				<@liferay_ui[\"icon\"]\n					image=\"history\"\n				/>\n\n				${entry.getViewCount()} <@liferay.language key=\"views\" />\n			</#if>\n		</span>\n	</#if>\n</#macro>\n\n<#macro getPrintIcon>\n	<#if enablePrint == \"true\" >\n		<#assign printURL = renderResponse.createRenderURL() />\n\n		${printURL.setParameter(\"struts_action\", \"/asset_publisher/view_content\")}\n		${printURL.setParameter(\"assetEntryId\", entry.getEntryId()?string)}\n		${printURL.setParameter(\"viewMode\", \"print\")}\n		${printURL.setParameter(\"type\", entry.getAssetRendererFactory().getType())}\n\n		<#if (validator.isNotNull(assetRenderer.getUrlTitle()))>\n			<#if (assetRenderer.getGroupId() != themeDisplay.getScopeGroupId())>\n				${printURL.setParameter(\"groupId\", assetRenderer.getGroupId()?string)}\n			</#if>\n\n			${printURL.setParameter(\"urlTitle\", assetRenderer.getUrlTitle())}\n		</#if>\n\n		${printURL.setWindowState(\"pop_up\")}\n\n		<@liferay_ui[\"icon\"]\n			image=\"print\"\n			message=\"print\"\n			url=\"javascript:Liferay.Util.openWindow({id:\'\" + renderResponse.getNamespace() + \"printAsset\', title: \'\" + languageUtil.format(locale, \"print-x-x\", [\"hide-accessible\", entryTitle]) + \"\', uri: \'\" + htmlUtil.escapeURL(printURL.toString()) + \"\'});\"\n		/>\n	</#if>\n</#macro>\n\n<#macro getRatings>\n	<#if (enableRatings == \"true\")>\n		<div class=\"asset-ratings\">\n			<@liferay_ui[\"ratings\"]\n				className=entry.getClassName()\n				classPK=entry.getClassPK()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if enableRelatedAssets == \"true\">\n		<@liferay_ui[\"asset-links\"]\n			assetEntryId=entry.getEntryId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getSocialBookmarks>\n	<#if enableSocialBookmarks == \"true\">\n		<@liferay_ui[\"social-bookmarks\"]\n			displayStyle=\"${socialBookmarksDisplayStyle}\"\n			target=\"_blank\"\n			title=entry.getTitle(locale)\n			url=viewURL\n		/>\n	</#if>\n</#macro>',0,0,20423,''),('b6ca6860-3fba-4717-9812-2491f1dc8e9e',20424,20195,20155,20159,'','2015-05-20 07:43:34','2015-05-20 07:43:34',20034,0,'SITE-MAP-MULTI-COLUMN-LAYOUT-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Multi Column Layout</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays a column for each top level page. Each column includes the name of a top level page with the page\'s immediate children listed underneath.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n		    <@aui.column columnWidth=25>\n				<div class=\"results-header\">\n					<h3>\n						<#assign layoutURL = portalUtil.getLayoutURL(entry, themeDisplay)>\n\n						<a href=\"${layoutURL}\">${entry.getName(locale)}</a>\n					</h3>\n				</div>\n\n				<#assign pages = entry.getChildren()>\n\n				<@displayPages pages = pages />\n		    </@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayPages\n	pages\n>\n	<#if pages?has_content>\n		<ul class=\"child-pages\">\n			<#list pages as page>\n				<li>\n					<#assign pageLayoutURL = portalUtil.getLayoutURL(page, themeDisplay)>\n\n					<a href=\"${pageLayoutURL}\">${page.getName(locale)}</a>\n\n					<#assign childPages = page.getChildren()>\n\n					<@displayPages pages = childPages />\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>',0,0,20425,''),('691f452c-9d79-465e-b71a-f63ce9a75161',20427,20195,20155,20159,'','2015-05-20 07:43:34','2015-05-20 07:43:34',20426,0,'DOCUMENTLIBRARY-CAROUSEL-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Carousel</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays images in a carousel.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n<#assign liferay_portlet = taglibLiferayHash[\"/WEB-INF/tld/liferay-portlet.tld\"] />\n\n<#if entries?has_content>\n	<style>\n		#<@liferay_portlet.namespace />carousel .carousel-item {\n			background-color: #000;\n			height: 250px;\n			overflow: hidden;\n			text-align: center;\n			width: 700px;\n		}\n\n		#<@liferay_portlet.namespace />carousel .carousel-item img {\n			max-height: 250px;\n			max-width: 700px;\n		}\n	</style>\n\n	<div id=\"<@liferay_portlet.namespace />carousel\">\n		<#assign imageMimeTypes = propsUtil.getArray(\"dl.file.entry.preview.image.mime.types\") />\n\n		<#list entries as entry>\n			<#if imageMimeTypes?seq_contains(entry.getMimeType()) >\n				<div class=\"carousel-item\">\n					<img src=\"${dlUtil.getPreviewURL(entry, entry.getFileVersion(), themeDisplay, \"\")}\" />\n				</div>\n			</#if>\n		</#list>\n	</div>\n\n	<@aui.script use=\"aui-carousel\">\n		new A.Carousel(\n			{\n				contentBox: \'#<@liferay_portlet.namespace />carousel\',\n				height: 250,\n				intervalTime: 2,\n				width: 700\n			}\n		).render();\n	</@aui.script>\n</#if>',0,0,20428,''),('e8eb5b20-7383-4c31-ad99-35b924ef050e',20429,20195,20155,20159,'','2015-05-20 07:43:34','2015-05-20 07:43:34',20016,0,'WIKI-SOCIAL-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Social</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays social bookmarks and ratings for wiki pages and their child pages.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#assign wikiPageClassName = \"com.liferay.portlet.wiki.model.WikiPage\" />\n\n<#assign assetRenderer = assetEntry.getAssetRenderer() />\n\n<div class=\"taglib-header\">\n	<h1 class=\"header-title\">${entry.getTitle()}</h1>\n</div>\n\n<div style=\"float: right;\">\n	<@getEditIcon />\n\n	<@getPageDetailsIcon />\n\n	<@getPrintIcon />\n</div>\n\n<div class=\"wiki-body\">\n	<div class=\"wiki-info\">\n		<span class=\"stats\">${assetEntry.getViewCount()} <@liferay.language key=\"views\" /></span> |\n\n		<span class=\"date\"><@liferay.language key=\"last-modified\" /> ${dateUtil.getDate(entry.getModifiedDate(), \"dd MMM yyyy - HH:mm:ss\", locale)}</span>\n\n		<span class=\"author\"><@liferay.language key=\"by\" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}</span>\n	</div>\n\n	<div class=\"wiki-content\">\n		<@liferay_ui[\"social-bookmarks\"]\n			displayStyle=\"normal\"\n			target=\"_blank\"\n			title=entry.getTitle()\n			url=viewURL\n		/>\n\n		${formattedContent}\n	</div>\n\n	<div class=\"page-actions\">\n		<div class=\"article-actions\">\n			<@getAddChildPageIcon />\n\n			<@getAttatchmentsIcon />\n		</div>\n	</div>\n\n	 <br />\n\n	<@getRatings cssClass=\"page-ratings\" entry=entry />\n\n	<@getRelatedAssets />\n</div>\n\n<div class=\"page-categorization\">\n	<div class=\"page-categories\">\n		<#assign viewCategorizedPagesURL = renderResponse.createRenderURL() />\n\n		${viewCategorizedPagesURL.setParameter(\"struts_action\", \"/wiki/view_categorized_pages\")}\n		${viewCategorizedPagesURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n\n		<@liferay_ui[\"asset-categories-summary\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewCategorizedPagesURL\n		/>\n	</div>\n\n	<div class=\"page-tags\">\n		<#assign viewTaggedPagesURL = renderResponse.createRenderURL() />\n\n		${viewTaggedPagesURL.setParameter(\"struts_action\", \"/wiki/view_tagged_pages\")}\n		${viewTaggedPagesURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n\n		<@liferay_ui[\"asset-tags-summary\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewTaggedPagesURL\n		/>\n	</div>\n</div>\n\n<#assign childPages = entry.getChildPages() />\n\n<#if (childPages?has_content)>\n	<div class=\"child-pages\">\n		<h2><@liferay.language key=\"children-pages\" /></h2>\n\n		<table class=\"taglib-search-iterator\">\n			<tr class=\"portlet-section-header results-header\">\n				<th>\n					<@liferay.language key=\"page\" />\n				</th>\n				<th>\n					<@liferay.language key=\"last-modified\" />\n				</th>\n				<th>\n					<@liferay.language key=\"ratings\" />\n				</th>\n			</tr>\n\n			<#list childPages as childPage>\n				<tr class=\"results-row\">\n					<#assign viewPageURL = renderResponse.createRenderURL() />\n\n					${viewPageURL.setParameter(\"struts_action\", \"/wiki/view\")}\n\n					<#assign childNode = childPage.getNode() />\n\n					${viewPageURL.setParameter(\"nodeName\", childNode.getName())}\n					${viewPageURL.setParameter(\"title\", childPage.getTitle())}\n\n					<td>\n						<a href=\"${viewPageURL}\">${childPage.getTitle()}</a>\n					</td>\n					<td>\n						<a href=\"${viewPageURL}\">${dateUtil.getDate(childPage.getModifiedDate(),\"dd MMM yyyy - HH:mm:ss\", locale)} <@liferay.language key=\"by\" /> ${htmlUtil.escape(portalUtil.getUserName(childPage.getUserId(), childPage.getUserName()))}</a>\n					</td>\n					<td>\n						<@getRatings cssClass=\"child-ratings\" entry=childPage />\n					</td>\n				</tr>\n			</#list>\n		</table>\n	</div>\n</#if>\n\n<@getDiscussion />\n\n<#macro getAddChildPageIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign addPageURL = renderResponse.createRenderURL() />\n\n		${addPageURL.setParameter(\"struts_action\", \"/wiki/edit_page\")}\n		${addPageURL.setParameter(\"redirect\", currentURL)}\n		${addPageURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n		${addPageURL.setParameter(\"title\", \"\")}\n		${addPageURL.setParameter(\"editTitle\", \"1\")}\n		${addPageURL.setParameter(\"parentTitle\", entry.getTitle())}\n\n		<@liferay_ui[\"icon\"]\n			image=\"add_article\"\n			label=true\n			message=\"add-child-page\"\n			url=addPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getAttatchmentsIcon>\n	<#assign viewPageAttachmentsURL = renderResponse.createRenderURL() />\n\n	${viewPageAttachmentsURL.setParameter(\"struts_action\", \"/wiki/view_page_attachments\") }\n\n	<@liferay_ui[\"icon\"]\n		image=\"clip\"\n		label=true\n		message=\'${entry.getAttachmentsFileEntriesCount() + languageUtil.get(locale, \"attachments\")}\'\n		url=viewPageAttachmentsURL?string\n	/>\n</#macro>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == \"true\")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		${discussionURL.setParameter(\"struts_action\", \"/wiki/\" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui[\"discussion\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			formAction=discussionURL?string\n			formName=\"fm2\"\n			ratingsEnabled=enableCommentRatings == \"true\"\n			redirect=currentURL\n			subject=assetRenderer.getTitle(locale)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign editPageURL = renderResponse.createRenderURL() />\n\n		${editPageURL.setParameter(\"struts_action\", \"/wiki/edit_page\")}\n		${editPageURL.setParameter(\"redirect\", currentURL)}\n		${editPageURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n		${editPageURL.setParameter(\"title\", entry.getTitle())}\n\n		<@liferay_ui[\"icon\"]\n			image=\"edit\"\n			message=entry.getTitle()\n			url=editPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getPageDetailsIcon>\n	<#assign viewPageDetailsURL = renderResponse.createRenderURL() />\n\n	${viewPageDetailsURL.setParameter(\"struts_action\", \"/wiki/view_page_details\")}\n	${viewPageDetailsURL.setParameter(\"redirect\", currentURL)}\n\n	<@liferay_ui[\"icon\"]\n		image=\"history\"\n		message=\"details\"\n		url=viewPageDetailsURL?string\n	/>\n</#macro>\n\n<#macro getPrintIcon>\n	<#assign printURL = renderResponse.createRenderURL() />\n\n	${printURL.setParameter(\"viewMode\", \"print\")}\n	${printURL.setWindowState(\"pop_up\")}\n\n	<#assign title = languageUtil.format(locale, \"print-x-x\", [\"hide-accessible\", htmlUtil.escape(assetRenderer.getTitle(locale))]) />\n	<#assign taglibPrintURL = \"javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:\'\" + renderResponse.getNamespace() + \"printAsset\', title: \'\" + title + \"\', uri: \'\" + htmlUtil.escapeURL(printURL.toString()) + \"\'});\" />\n\n	<@liferay_ui[\"icon\"]\n		image=\"print\"\n		message=\"print\"\n		url=taglibPrintURL\n	/>\n</#macro>\n\n<#macro getRatings\n	cssClass\n	entry\n>\n	<#if enablePageRatings == \"true\">\n		<div class=\"${cssClass}\">\n			<@liferay_ui[\"ratings\"]\n				className=wikiPageClassName\n				classPK=entry.getResourcePrimKey()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if assetEntry?? && (enableRelatedAssets == \"true\")>\n		<@liferay_ui[\"asset-links\"]\n			assetEntryId=assetEntry.getEntryId()\n		/>\n	</#if>\n</#macro>',0,0,20430,''),('dfa0097b-4a2a-4c0b-97fb-a225cfffe92d',20431,20195,20155,20159,'','2015-05-20 07:43:34','2015-05-20 07:43:34',20085,0,'ASSET-TAGS-NAVIGATION-COLOR-BY-POPULARITY-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Color by Popularity</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays asset tags colored by popularity: red (high), yellow (medium), and green (low).</Description></root>','display','','ftl','<#if entries?has_content>\n	<ul class=\"tag-items tag-list\">\n		<#assign scopeGroupId = getterUtil.getLong(scopeGroupId, themeDisplay.getScopeGroupId()) />\n		<#assign classNameId = getterUtil.getLong(classNameId, 0) />\n\n		<#assign maxCount = 1 />\n		<#assign minCount = 1 />\n\n		<#list entries as entry>\n			<#assign maxCount = liferay.max(maxCount, entry.getAssetCount()) />\n			<#assign minCount = liferay.min(minCount, entry.getAssetCount()) />\n		</#list>\n\n		<#assign multiplier = 1 />\n\n		<#if maxCount != minCount>\n			<#assign multiplier = 3 / (maxCount - minCount) />\n		</#if>\n\n		<#list entries as entry>\n			<li class=\"taglib-asset-tags-summary\">\n				<#assign popularity = (maxCount - (maxCount - (entry.getAssetCount() - minCount))) * multiplier />\n\n				<#if popularity < 1>\n					<#assign color = \"green\" />\n				<#elseif (popularity >= 1) && (popularity < 2)>\n					<#assign color = \"orange\" />\n				<#else>\n					<#assign color = \"red\" />\n				</#if>\n\n				<#assign tagURL = renderResponse.createRenderURL() />\n\n				${tagURL.setParameter(\"resetCur\", \"true\")}\n				${tagURL.setParameter(\"tag\", entry.getName())}\n\n				<a class =\"tag\" style=\"color: ${color};\" href=\"${tagURL}\">\n					${entry.getName()}\n\n					<#if (showAssetCount == \"true\")>\n						<span class=\"tag-asset-count\">(${count})</span>\n					</#if>\n				</a>\n			</li>\n		</#list>\n	</ul>\n\n	<br style=\"clear: both;\" />\n</#if>',0,0,20432,''),('ad69135c-2edf-4ed7-a54a-0ae9b527d089',20433,20195,20155,20159,'','2015-05-20 07:43:34','2015-05-20 07:43:34',20081,0,'ASSET-CATEGORIES-NAVIGATION-MULTI-COLUMN-LAYOUT-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Multi Column Layout</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays a column for each vocabulary. Each column includes the name of a vocabulary with the vocabulary\'s top level categories listed underneath.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n			<@aui.column columnWidth=25>\n				<div class=\"results-header\">\n					<h3>\n						${entry.getName()}\n					</h3>\n				</div>\n\n				<#assign categories = entry.getCategories()>\n\n				<@displayCategories categories=categories />\n			</@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayCategories\n	categories\n>\n	<#if categories?has_content>\n		<ul class=\"categories\">\n			<#list categories as category>\n				<li>\n					<#assign categoryURL = renderResponse.createRenderURL()>\n\n					${categoryURL.setParameter(\"resetCur\", \"true\")}\n					${categoryURL.setParameter(\"categoryId\", category.getCategoryId()?string)}\n\n					<a href=\"${categoryURL}\">${category.getName()}</a>\n\n					<#if serviceLocator??>\n						<#assign assetCategoryService = serviceLocator.findService(\"com.liferay.portlet.asset.service.AssetCategoryService\")>\n\n						<#assign childCategories = assetCategoryService.getChildCategories(category.getCategoryId())>\n\n						<@displayCategories categories=childCategories />\n					</#if>\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>',0,0,20434,''),('d4c7d382-6cea-4236-8ef6-2a4dd318ec50',20602,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',20102,20601,'BASIC-WEB-CONTENT-6.2.3.1','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Basic Web Content - 6.2.3.1</Name></root>','','display','','vm','${content.getData()}',0,0,20603,'');
/*!40000 ALTER TABLE `DDMTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLContent`
--

DROP TABLE IF EXISTS `DLContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLContent` (
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `path_` varchar(255) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `data_` longblob,
  `size_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLContent`
--

LOCK TABLES `DLContent` WRITE;
/*!40000 ALTER TABLE `DLContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLContent` ENABLE KEYS */;
UNLOCK TABLES;

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
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
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
  `manualCheckInRequired` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fileEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntry`
--

LOCK TABLES `DLFileEntry` WRITE;
/*!40000 ALTER TABLE `DLFileEntry` DISABLE KEYS */;
INSERT INTO `DLFileEntry` VALUES ('b49a2b96-1101-4803-b6f5-c0998ae2f2e9',20530,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',0,0,20182,0,'/0/','1','png','image/png','welcome_cube','','',0,'1.0',452,4,0,0,0,0,0),('bda75511-974f-4f5b-b5e3-2f7cac05d489',20539,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',0,0,20182,0,'/0/','2','png','image/png','welcome_ee','','',0,'1.0',218,4,0,0,0,0,0),('8f2bd2cf-8528-432e-b831-f3274c081f3d',20550,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',0,0,20182,0,'/0/','3','png','image/png','welcome_community','','',0,'1.0',435,4,0,0,0,0,0),('1573d3b8-56bf-456b-84c4-e1b4671520cd',20566,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',0,0,20182,0,'/0/','4','png','image/png','welcome_learn','','',0,'1.0',565,4,0,0,0,0,0),('d68147cf-0ce3-4d8c-8591-f99236f7a5a2',20579,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',0,0,20182,0,'/0/','5','pdf','application/pdf','helpful_links_for_using_liferay_portal','','',0,'1.0',148065,0,0,0,0,0,0),('4afe454b-1e25-4143-a77e-457e0d021001',20592,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',0,0,20182,0,'/0/','6','png','image/png','welcome_tools','','',0,'1.0',528,4,0,0,0,0,0),('98199518-5e23-491e-928a-fcd08687c749',22270,20438,20155,20435,'Edicson Morales','2015-05-20 11:43:28','2015-05-20 11:43:28',0,0,22254,22257,'/22255/22256/22257/','104','','image/jpeg','20435','','',0,'1.0',5523,0,0,0,0,0,0);
/*!40000 ALTER TABLE `DLFileEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryMetadata`
--

DROP TABLE IF EXISTS `DLFileEntryMetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryMetadata` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryMetadataId` bigint(20) NOT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `fileVersionId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryMetadataId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryMetadata`
--

LOCK TABLES `DLFileEntryMetadata` WRITE;
/*!40000 ALTER TABLE `DLFileEntryMetadata` DISABLE KEYS */;
INSERT INTO `DLFileEntryMetadata` VALUES ('8404515c-2d65-47f5-b92f-0473bbb778ac',20548,20552,20317,0,20530,20531),('96cc0fd8-654d-4303-a75d-2066890ca64e',20561,20562,20317,0,20539,20540),('48d7f244-bd05-496e-98f6-8cdad87f848f',20571,20572,20317,0,20550,20551),('6fb64569-a596-422f-ad55-8be2283756bd',20581,20585,20317,0,20566,20567),('db11adc1-b287-4a38-8d7c-a6bad44e8c4d',20613,20614,20317,0,20579,20580),('62bf7f04-fd9f-4131-b35b-12ecff6f21b7',20617,20618,20317,0,20592,20593);
/*!40000 ALTER TABLE `DLFileEntryMetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryType`
--

DROP TABLE IF EXISTS `DLFileEntryType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryType` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `fileEntryTypeKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`fileEntryTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryType`
--

LOCK TABLES `DLFileEntryType` WRITE;
/*!40000 ALTER TABLE `DLFileEntryType` DISABLE KEYS */;
INSERT INTO `DLFileEntryType` VALUES ('dc3113f5-9c89-4e90-9a6c-46a486007089',0,0,0,0,'','2015-05-20 07:43:00','2015-05-20 07:43:00','BASIC-DOCUMENT','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">basic-document</Name></root>',''),('7f02888d-9172-46ae-be12-9700182d8414',20308,20195,20155,20159,'','2015-05-20 07:43:17','2015-05-20 07:43:17','CONTRACT','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>'),('e42a34aa-8d87-4c52-9686-345093fd190b',20310,20195,20155,20159,'','2015-05-20 07:43:18','2015-05-20 07:43:18','MARKETING BANNER','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>'),('2e84d837-cf2b-4cd7-84ed-e5737ed4e479',20312,20195,20155,20159,'','2015-05-20 07:43:18','2015-05-20 07:43:18','ONLINE TRAINING','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>'),('0f0dd421-fcea-40ad-b97f-8be1caab5a80',20314,20195,20155,20159,'','2015-05-20 07:43:18','2015-05-20 07:43:18','SALES PRESENTATION','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>');
/*!40000 ALTER TABLE `DLFileEntryType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryTypes_DDMStructures`
--

DROP TABLE IF EXISTS `DLFileEntryTypes_DDMStructures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryTypes_DDMStructures` (
  `structureId` bigint(20) NOT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  PRIMARY KEY (`structureId`,`fileEntryTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryTypes_DDMStructures`
--

LOCK TABLES `DLFileEntryTypes_DDMStructures` WRITE;
/*!40000 ALTER TABLE `DLFileEntryTypes_DDMStructures` DISABLE KEYS */;
INSERT INTO `DLFileEntryTypes_DDMStructures` VALUES (20305,20312),(20306,20310),(20307,20314),(20309,20308),(20311,20310),(20313,20312),(20315,20314);
/*!40000 ALTER TABLE `DLFileEntryTypes_DDMStructures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryTypes_DLFolders`
--

DROP TABLE IF EXISTS `DLFileEntryTypes_DLFolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryTypes_DLFolders` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `folderId` bigint(20) NOT NULL,
  PRIMARY KEY (`fileEntryTypeId`,`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryTypes_DLFolders`
--

LOCK TABLES `DLFileEntryTypes_DLFolders` WRITE;
/*!40000 ALTER TABLE `DLFileEntryTypes_DLFolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileEntryTypes_DLFolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileRank`
--

DROP TABLE IF EXISTS `DLFileRank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileRank` (
  `fileRankId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fileRankId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileRank`
--

LOCK TABLES `DLFileRank` WRITE;
/*!40000 ALTER TABLE `DLFileRank` DISABLE KEYS */;
INSERT INTO `DLFileRank` VALUES (20659,20182,20155,20435,'2015-05-20 07:51:12',20566,1),(20660,20182,20155,20435,'2015-05-20 07:51:12',20592,1),(20661,20182,20155,20435,'2015-05-20 07:51:12',20539,1),(20662,20182,20155,20435,'2015-05-20 07:51:12',20550,1),(20663,20182,20155,20435,'2015-05-20 07:51:12',20530,1),(20672,20182,20155,20159,'2015-05-20 07:48:28',20566,1),(20673,20182,20155,20159,'2015-05-20 07:48:28',20550,1),(20674,20182,20155,20159,'2015-05-20 07:48:28',20530,1),(20675,20182,20155,20159,'2015-05-20 07:48:28',20592,1),(20676,20182,20155,20159,'2015-05-20 07:48:28',20539,1),(22278,20195,20155,20435,'2015-05-20 11:44:04',22276,1);
/*!40000 ALTER TABLE `DLFileRank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileShortcut`
--

DROP TABLE IF EXISTS `DLFileShortcut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileShortcut` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileShortcutId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `toFileEntryId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileShortcutId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileShortcut`
--

LOCK TABLES `DLFileShortcut` WRITE;
/*!40000 ALTER TABLE `DLFileShortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileShortcut` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`fileVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileVersion`
--

LOCK TABLES `DLFileVersion` WRITE;
/*!40000 ALTER TABLE `DLFileVersion` DISABLE KEYS */;
INSERT INTO `DLFileVersion` VALUES ('8eb1c170-0e8c-42c5-bce4-53dfde5d099f',20531,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20182,0,20530,'/0/','png','image/png','welcome_cube','','','',0,'1.0',452,'',0,20159,'','2015-05-20 07:45:50'),('7673b2f4-5a70-4494-8dbf-168d92fe81f1',20540,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20182,0,20539,'/0/','png','image/png','welcome_ee','','','',0,'1.0',218,'',0,20159,'','2015-05-20 07:45:50'),('79f03133-6fb7-4ccd-bf55-29adfa07ccc9',20551,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20182,0,20550,'/0/','png','image/png','welcome_community','','','',0,'1.0',435,'',0,20159,'','2015-05-20 07:45:50'),('5814ec7c-e5bb-4791-ae14-a97d3c292b6b',20567,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20182,0,20566,'/0/','png','image/png','welcome_learn','','','',0,'1.0',565,'',0,20159,'','2015-05-20 07:45:50'),('1f767cd6-f438-405c-8bd0-a849064e0f17',20580,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',20182,0,20579,'/0/','pdf','application/pdf','helpful_links_for_using_liferay_portal','','','',0,'1.0',148065,'',0,20159,'','2015-05-20 07:45:51'),('af7d7584-1c66-4f36-b70c-f0d32f714086',20593,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',20182,0,20592,'/0/','png','image/png','welcome_tools','','','',0,'1.0',528,'',0,20159,'','2015-05-20 07:45:51'),('edfd7502-a812-44fa-af2c-50ff6e407cda',22271,20438,20155,20435,'Edicson Morales','2015-05-20 11:43:28','2015-05-20 11:43:28',22254,22257,22270,'/22255/22256/22257/','','image/jpeg','20435','','','',0,'1.0',5523,'',0,20435,'Edicson Morales','2015-05-20 11:43:28');
/*!40000 ALTER TABLE `DLFileVersion` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFolder`
--

LOCK TABLES `DLFolder` WRITE;
/*!40000 ALTER TABLE `DLFolder` DISABLE KEYS */;
INSERT INTO `DLFolder` VALUES ('428fbd83-b5f2-4a09-ae6f-5290c2aff4a5',22255,20438,20155,20159,'','2015-05-20 11:41:42','2015-05-20 11:41:42',22254,1,0,'/22255/','20','','2015-05-20 11:41:42',0,1,0,0,0,'',NULL),('c7f54df6-78c2-4d0e-a74a-e2d4049d40a0',22256,20438,20155,20435,'Edicson Morales','2015-05-20 11:41:42','2015-05-20 11:41:42',22254,0,22255,'/22255/22256/','20435','','2015-05-20 11:41:42',0,0,0,0,0,'',NULL),('a5c31fd9-7d5a-4114-bd2e-e0cc60b1897a',22257,20438,20155,20435,'Edicson Morales','2015-05-20 11:41:42','2015-05-20 11:41:42',22254,0,22256,'/22255/22256/22257/','com.liferay.portlet.usersadmin.action.EditUserPortraitAction','','2015-05-20 11:43:28',0,0,0,0,0,'',NULL),('f874903a-e68c-4fbc-9942-aa31afb53e0e',22273,20195,20155,20159,'','2015-05-20 11:44:01','2015-05-20 11:44:01',22272,1,0,'/22273/','20','','2015-05-20 11:44:02',0,1,0,0,0,'',NULL),('738180be-ee83-4612-a4e2-c7d3b0cdc6fd',22274,20195,20155,20435,'Edicson Morales','2015-05-20 11:44:02','2015-05-20 11:44:02',22272,0,22273,'/22273/22274/','20435','','2015-05-20 11:44:02',0,0,0,0,0,'',NULL),('89394937-b43a-49eb-b4d3-5f1cfecaa8ef',22275,20195,20155,20435,'Edicson Morales','2015-05-20 11:44:02','2015-05-20 11:44:02',22272,0,22274,'/22273/22274/22275/','com.liferay.portlet.usersadmin.action.EditUserPortraitAction','','2015-05-20 11:44:02',0,0,0,0,0,'',NULL);
/*!40000 ALTER TABLE `DLFolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLSyncEvent`
--

DROP TABLE IF EXISTS `DLSyncEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLSyncEvent` (
  `syncEventId` bigint(20) NOT NULL,
  `modifiedTime` bigint(20) DEFAULT NULL,
  `event` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`syncEventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLSyncEvent`
--

LOCK TABLES `DLSyncEvent` WRITE;
/*!40000 ALTER TABLE `DLSyncEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLSyncEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmailAddress`
--

DROP TABLE IF EXISTS `EmailAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmailAddress` (
  `uuid_` varchar(75) DEFAULT NULL,
  `emailAddressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`emailAddressId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmailAddress`
--

LOCK TABLES `EmailAddress` WRITE;
/*!40000 ALTER TABLE `EmailAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `EmailAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoColumn`
--

DROP TABLE IF EXISTS `ExpandoColumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoColumn` (
  `columnId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `defaultData` longtext,
  `typeSettings` longtext,
  PRIMARY KEY (`columnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoColumn`
--

LOCK TABLES `ExpandoColumn` WRITE;
/*!40000 ALTER TABLE `ExpandoColumn` DISABLE KEYS */;
INSERT INTO `ExpandoColumn` VALUES (20448,20155,20447,'clientId',15,'',''),(20775,20155,20774,'CompanyName',15,'','height=0\nhidden=0\nindex-type=0\nsecret=0\nvisible-with-update-permission=0\nwidth=0\n');
/*!40000 ALTER TABLE `ExpandoColumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoRow`
--

DROP TABLE IF EXISTS `ExpandoRow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoRow` (
  `rowId_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rowId_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoRow`
--

LOCK TABLES `ExpandoRow` WRITE;
/*!40000 ALTER TABLE `ExpandoRow` DISABLE KEYS */;
INSERT INTO `ExpandoRow` VALUES (20821,20155,'2015-05-20 10:03:13',20774,20818),(20915,20155,'2015-05-20 10:10:32',20774,20912),(22354,20155,'2015-05-20 12:31:14',20774,22351);
/*!40000 ALTER TABLE `ExpandoRow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoTable`
--

DROP TABLE IF EXISTS `ExpandoTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoTable` (
  `tableId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoTable`
--

LOCK TABLES `ExpandoTable` WRITE;
/*!40000 ALTER TABLE `ExpandoTable` DISABLE KEYS */;
INSERT INTO `ExpandoTable` VALUES (20447,20155,20005,'MP'),(20654,20155,20002,'OPEN_SOCIAL_DATA_'),(20655,20155,20005,'OPEN_SOCIAL_DATA_'),(20774,20155,20005,'CUSTOM_FIELDS');
/*!40000 ALTER TABLE `ExpandoTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoValue`
--

DROP TABLE IF EXISTS `ExpandoValue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoValue` (
  `valueId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `columnId` bigint(20) DEFAULT NULL,
  `rowId_` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`valueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoValue`
--

LOCK TABLES `ExpandoValue` WRITE;
/*!40000 ALTER TABLE `ExpandoValue` DISABLE KEYS */;
INSERT INTO `ExpandoValue` VALUES (20822,20155,20774,20775,20821,20005,20818,'Company1'),(20916,20155,20774,20775,20915,20005,20912,'Company2'),(22355,20155,20774,20775,22354,20005,22351,'Company3');
/*!40000 ALTER TABLE `ExpandoValue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_`
--

DROP TABLE IF EXISTS `Group_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `groupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `creatorUserId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentGroupId` bigint(20) DEFAULT NULL,
  `liveGroupId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(150) DEFAULT NULL,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `typeSettings` longtext,
  `manualMembership` tinyint(4) DEFAULT NULL,
  `membershipRestriction` int(11) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `site` tinyint(4) DEFAULT NULL,
  `remoteStagingGroupCount` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_`
--

LOCK TABLES `Group_` WRITE;
/*!40000 ALTER TABLE `Group_` DISABLE KEYS */;
INSERT INTO `Group_` VALUES ('d2a4d873-b763-4418-bec9-acf590559af2',20173,20155,20159,20001,20173,0,0,'/20173/','Control Panel','',3,'',1,0,'/control_panel',0,0,1),('7e6a7e5a-0cc8-42c5-a31d-37852f6f4f36',20182,20155,20159,20001,20182,0,0,'/20182/','Guest','',1,'breadcrumbShowParentGroups=true\ncontentSharingWithChildrenEnabled=-1\ncustomJspServletContextName=Registration-hook\ndirectoryIndexingEnabled=false\nfalse-robots.txt=User-Agent: *_SAFE_NEWLINE_CHARACTER_Disallow:_SAFE_NEWLINE_CHARACTER_Sitemap: http://localhost/sitemap.xml\ninheritLocales=true\nlanguageId=en_US\nlocales=ca_ES,zh_CN,en_US,fi_FI,fr_FR,de_DE,iw_IL,hu_HU,ja_JP,pt_BR,es_ES\nmergeGuestPublicPages=false\ntrashEnabled=true\n',1,0,'/guest',1,0,1),('00d7daae-9365-474f-9c10-b885b6fab316',20192,20155,20159,20191,20159,0,0,'/20192/','User Personal Site','',3,'',1,0,'/personal_site',0,0,1),('45080933-fe6c-40f7-ae4a-5b288e5aa1fa',20195,20155,20159,20025,20155,0,0,'/20195/','20155','',0,'',1,0,'/global',1,0,1),('ddc06d7d-aa2b-4899-a7f1-0671d34f666c',20202,20155,20199,20005,20199,0,0,'/20202/','20199','',0,'',1,0,'/test',0,0,1),('b28be184-984d-4043-af4f-85042b980944',20319,20155,20159,20032,20318,0,0,'/20319/','20318','',0,'',1,0,'/template-20318',0,0,1),('ff6bfee2-2897-4a6a-b49a-6dcc1125be97',20331,20155,20159,20032,20330,0,0,'/20331/','20330','',0,'',1,0,'/template-20330',0,0,1),('34e3f97a-d851-4885-a066-8e64d6efccb4',20341,20155,20159,20032,20340,0,0,'/20341/','20340','',0,'',1,0,'/template-20340',0,0,1),('a4942612-c4e2-4b5f-854d-2ef894fa3fbb',20352,20155,20159,20036,20351,0,0,'/20352/','20351','',0,'',1,0,'/template-20351',0,0,1),('bd8e6d7a-5b56-4a11-a57d-0090bf2a64db',20378,20155,20159,20036,20377,0,0,'/20378/','20377','',0,'',1,0,'/template-20377',0,0,1),('25ca0c2c-8d02-4568-9680-7a1bfc38d64a',20438,20155,20435,20005,20435,0,0,'/20438/','20435','',0,'',1,0,'/edicson',0,0,1),('25a17136-2544-4db0-a7ea-b01021105940',20631,20155,20159,20036,20630,0,0,'/20631/','20630','',0,'',1,0,'/template-20630',0,0,1),('3319615f-9a1f-4135-8e50-725c063d9e06',20763,20155,20435,20006,20762,0,0,'/20763/','20762','',0,'',1,0,'/20762',0,0,1),('ff708687-ec79-4c1f-8545-f3b2d388b8d7',20823,20155,20818,20005,20818,0,0,'/20823/','20818','',0,'',1,0,'/company1',0,0,1),('ec228fb8-013c-4b96-9ef6-0001468bbda5',20917,20155,20912,20005,20912,0,0,'/20917/','20912','',0,'',1,0,'/company2',0,0,1),('63a0415b-c2d6-4be6-b9a3-0d847a1272de',22356,20155,22351,20005,22351,0,0,'/22356/','22351','',0,'',1,0,'/company3',0,0,1),('de7b8ff1-e0e8-4440-8b58-7de922766b05',35232,20155,20435,20032,35231,0,0,'/35232/','35231','',0,'',1,0,'/template-35231',0,0,1),('cbeddda5-2436-4b53-bb6a-1e0540f7f31b',37312,20155,20435,20032,37311,0,0,'/37312/','37311','',0,'',1,0,'/template-37311',0,0,1),('913f323e-fefe-44fe-afdb-673064b655e7',37345,20155,20435,20032,37344,0,0,'/37345/','37344','',0,'',1,0,'/template-37344',0,0,1);
/*!40000 ALTER TABLE `Group_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups_Orgs`
--

DROP TABLE IF EXISTS `Groups_Orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_Orgs` (
  `groupId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_Orgs`
--

LOCK TABLES `Groups_Orgs` WRITE;
/*!40000 ALTER TABLE `Groups_Orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_Orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups_Roles`
--

DROP TABLE IF EXISTS `Groups_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_Roles` (
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_Roles`
--

LOCK TABLES `Groups_Roles` WRITE;
/*!40000 ALTER TABLE `Groups_Roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups_UserGroups`
--

DROP TABLE IF EXISTS `Groups_UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_UserGroups` (
  `groupId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_UserGroups`
--

LOCK TABLES `Groups_UserGroups` WRITE;
/*!40000 ALTER TABLE `Groups_UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Image`
--

DROP TABLE IF EXISTS `Image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Image` (
  `imageId` bigint(20) NOT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `size_` int(11) DEFAULT NULL,
  PRIMARY KEY (`imageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Image`
--

LOCK TABLES `Image` WRITE;
/*!40000 ALTER TABLE `Image` DISABLE KEYS */;
INSERT INTO `Image` VALUES (20678,'2015-05-20 07:51:06','png',80,80,6015),(22279,'2015-05-20 11:44:04','png',80,80,3059);
/*!40000 ALTER TABLE `Image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalArticle`
--

DROP TABLE IF EXISTS `JournalArticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalArticle` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `title` longtext,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `reviewDate` datetime DEFAULT NULL,
  `indexable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalArticle`
--

LOCK TABLES `JournalArticle` WRITE;
/*!40000 ALTER TABLE `JournalArticle` DISABLE KEYS */;
INSERT INTO `JournalArticle` VALUES ('b7f401eb-570d-432b-8fda-86cbb91420be',20604,20605,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',0,0,0,'/0/','WELCOME',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Welcome</Title></root>','welcome','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element name=\"content\" type=\"text_area\" index-type=\"keyword\" index=\"0\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[\n			\n				<style type=\"text/css\">\n					h2.welcome-title {\n						font-size: 35px;\n						margin: 0 0 40px;\n					}\n\n					h4.subtitle {\n						font-size: 24px;\n						line-height: 30px;\n						margin-bottom: 0;\n					}\n\n					.welcome-content {\n						font-size: 15px;\n						margin: 0;\n					}\n\n					.welcome-content a {\n						text-decoration: none;\n					}\n\n					.welcome-content a:hover {\n						text-decoration: underline;\n					}\n\n					.welcome-content .welcome-text {\n						line-height: 22px;\n						margin: 0;\n					}\n\n					.welcome-content .pdf {\n						display: inline-block;\n						margin-top: 25px;\n					}\n\n					.welcome-content .welcome-icon {\n						float: left;\n						margin: 4px 0;\n						padding-right: 38px;\n					}\n\n					@media all and (max-width: 767px) {\n						h2.welcome-title {\n							font-size: 24px;\n						}\n\n						h4.subtitle {\n							margin: 32px 0 4px;\n						}\n\n						.welcome-content-wrapper {\n							text-align: center;\n						}\n\n						.welcome-content .welcome-icon {\n							float: none;\n							padding: 0;\n						}\n					}\n				</style>\n\n				<div class=\"welcome-content-wrapper\">\n					<h2 class=\"welcome-title\">\n						Welcome To Liferay Portal\n					</h2>\n\n					<div class=\"welcome-content\">\n						<img class=\"welcome-icon\" src=\"/documents/20182/0/welcome_cube/b49a2b96-1101-4803-b6f5-c0998ae2f2e9?version=1.0&t=1432107949642\" />\n\n						<h4 class=\"subtitle\">\n							Start\n						</h4>\n\n						<p class=\"welcome-text\">\n							Review our <a href=\"http://www.liferay.com/welcome-start?v1.0\" target=\"_blank\">Quick Start Guide</a> for an overview of Liferay\'s features.\n						</p>\n\n						<div class=\"helper-clearfix\">&nbsp;</div>\n					</div>\n\n					<div class=\"welcome-content\">\n						<img class=\"welcome-icon\" src=\"/documents/20182/0/welcome_learn/1573d3b8-56bf-456b-84c4-e1b4671520cd?version=1.0&t=1432107950350\" />\n\n						<h4 class=\"subtitle\">\n							Learn\n						</h4>\n\n						<p class=\"welcome-text\">\n							Read the official <a href=\"http://www.liferay.com/welcome-learn?v1.0\" target=\"_blank\">Liferay User Guide</a> for detailed information about setting up and configuring Liferay.\n						</p>\n\n						<div class=\"helper-clearfix\">&nbsp;</div>\n					</div>\n\n					<div class=\"welcome-content\">\n						<img class=\"welcome-icon\" src=\"/documents/20182/0/welcome_community/8f2bd2cf-8528-432e-b831-f3274c081f3d?version=1.0&t=1432107950184\" />\n\n						<h4 class=\"subtitle\">\n							Engage\n						</h4>\n\n						<p class=\"welcome-text\">\n							Visit the <a href=\"http://www.liferay.com/welcome-engage?v1.0\" target=\"_blank\">Liferay Community</a> to post questions, find answers, and contribute.\n						</p>\n\n						<div class=\"helper-clearfix\">&nbsp;</div>\n					</div>\n\n					<div class=\"welcome-content\">\n						<img class=\"welcome-icon\" src=\"/documents/20182/0/welcome_tools/4afe454b-1e25-4143-a77e-457e0d021001?version=1.0&t=1432107950924\" />\n\n						<h4 class=\"subtitle\">\n							Develop\n						</h4>\n\n						<p class=\"welcome-text\">\n							Explore our <a href=\"http://www.liferay.com/welcome-develop?v1.0\" target=\"_blank\">Developer Resources</a> to develop apps and more for Liferay Portal.\n						</p>\n\n						<div class=\"helper-clearfix\">&nbsp;</div>\n					</div>\n\n					<div class=\"welcome-content\">\n						<img class=\"welcome-icon\" src=\"/documents/20182/0/welcome_ee/bda75511-974f-4f5b-b5e3-2f7cac05d489?version=1.0&t=1432107949984\" />\n\n						<h4 class=\"subtitle\">\n							Evaluate\n						</h4>\n\n						<p class=\"welcome-text\">\n							Learn more about partners, support, training and other <a href=\"http://www.liferay.com/welcome-evaluate?v1.0\" target=\"_blank\">enterprise level options</a> available for Liferay.\n						</p>\n\n						<a class=\"pdf\" href=\"/documents/20182/0/helpful_links_for_using_liferay_portal/d68147cf-0ce3-4d8c-8591-f99236f7a5a2?version=1.0\">Download this page as a PDF</a>\n					</div>\n				</div>\n			\n		]]></dynamic-content>\n	</dynamic-element>\n</root>','general','BASIC-WEB-CONTENT-6.2.3.1','BASIC-WEB-CONTENT-6.2.3.1','','2010-02-01 00:00:00',NULL,NULL,1,0,20606,'',0,20159,'','2015-05-20 07:45:52');
/*!40000 ALTER TABLE `JournalArticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalArticleImage`
--

DROP TABLE IF EXISTS `JournalArticleImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalArticleImage` (
  `articleImageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `elInstanceId` varchar(75) DEFAULT NULL,
  `elName` varchar(75) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `tempImage` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`articleImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalArticleImage`
--

LOCK TABLES `JournalArticleImage` WRITE;
/*!40000 ALTER TABLE `JournalArticleImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalArticleImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalArticleResource`
--

DROP TABLE IF EXISTS `JournalArticleResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalArticleResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalArticleResource`
--

LOCK TABLES `JournalArticleResource` WRITE;
/*!40000 ALTER TABLE `JournalArticleResource` DISABLE KEYS */;
INSERT INTO `JournalArticleResource` VALUES ('3ac9dc16-9e81-4b3d-a7a1-1174c6d1c000',20605,20182,'WELCOME');
/*!40000 ALTER TABLE `JournalArticleResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalContentSearch`
--

DROP TABLE IF EXISTS `JournalContentSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalContentSearch` (
  `contentSearchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contentSearchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalContentSearch`
--

LOCK TABLES `JournalContentSearch` WRITE;
/*!40000 ALTER TABLE `JournalContentSearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalContentSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalFeed`
--

DROP TABLE IF EXISTS `JournalFeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalFeed` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `feedId` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `rendererTemplateId` varchar(75) DEFAULT NULL,
  `delta` int(11) DEFAULT NULL,
  `orderByCol` varchar(75) DEFAULT NULL,
  `orderByType` varchar(75) DEFAULT NULL,
  `targetLayoutFriendlyUrl` varchar(255) DEFAULT NULL,
  `targetPortletId` varchar(75) DEFAULT NULL,
  `contentField` varchar(75) DEFAULT NULL,
  `feedFormat` varchar(75) DEFAULT NULL,
  `feedVersion` double DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalFeed`
--

LOCK TABLES `JournalFeed` WRITE;
/*!40000 ALTER TABLE `JournalFeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalFeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalFolder`
--

DROP TABLE IF EXISTS `JournalFolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalFolder`
--

LOCK TABLES `JournalFolder` WRITE;
/*!40000 ALTER TABLE `JournalFolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalFolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoAction`
--

DROP TABLE IF EXISTS `KaleoAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoAction` (
  `kaleoActionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `executionType` varchar(20) DEFAULT NULL,
  `script` longtext,
  `scriptLanguage` varchar(75) DEFAULT NULL,
  `scriptRequiredContexts` longtext,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`kaleoActionId`),
  KEY `IX_50E9112C` (`companyId`),
  KEY `IX_170EFD7A` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_4B2545E8` (`kaleoClassName`,`kaleoClassPK`,`executionType`),
  KEY `IX_F95A622` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoAction`
--

LOCK TABLES `KaleoAction` WRITE;
/*!40000 ALTER TABLE `KaleoAction` DISABLE KEYS */;
INSERT INTO `KaleoAction` VALUES (20473,0,20155,20159,'','2015-05-20 07:45:30','2015-05-20 07:45:30','com.liferay.portal.workflow.kaleo.model.KaleoNode',20472,20469,'approved','approve','','onEntry','\n					\n						import com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil;\n						import com.liferay.portal.kernel.workflow.WorkflowConstants;\n\n						WorkflowStatusManagerUtil.updateStatus(WorkflowConstants.toStatus(\"approved\"), workflowContext);\n					\n				','groovy','',0),(20492,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31','com.liferay.portal.workflow.kaleo.model.KaleoNode',20491,20469,'update','reject','','onAssignment','\n					\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"denied\"), workflowContext);\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"pending\"), workflowContext);\n					\n				','javascript','',0);
/*!40000 ALTER TABLE `KaleoAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoCondition`
--

DROP TABLE IF EXISTS `KaleoCondition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoCondition` (
  `kaleoConditionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `script` longtext,
  `scriptLanguage` varchar(75) DEFAULT NULL,
  `scriptRequiredContexts` longtext,
  PRIMARY KEY (`kaleoConditionId`),
  KEY `IX_FEE46067` (`companyId`),
  KEY `IX_DC978A5D` (`kaleoDefinitionId`),
  KEY `IX_86CBD4C` (`kaleoNodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoCondition`
--

LOCK TABLES `KaleoCondition` WRITE;
/*!40000 ALTER TABLE `KaleoCondition` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoCondition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoDefinition`
--

DROP TABLE IF EXISTS `KaleoDefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoDefinition` (
  `kaleoDefinitionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `content` longtext,
  `version` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `startKaleoNodeId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`kaleoDefinitionId`),
  KEY `IX_40B9112F` (`companyId`),
  KEY `IX_408542BA` (`companyId`,`active_`),
  KEY `IX_76C781AE` (`companyId`,`name`),
  KEY `IX_4C23F11B` (`companyId`,`name`,`active_`),
  KEY `IX_EC14F81A` (`companyId`,`name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoDefinition`
--

LOCK TABLES `KaleoDefinition` WRITE;
/*!40000 ALTER TABLE `KaleoDefinition` DISABLE KEYS */;
INSERT INTO `KaleoDefinition` VALUES (20469,0,20155,20159,'','2015-05-20 07:45:30','2015-05-20 07:45:31','Single Approver','Single Approver','A single approver can approve a workflow content.','<?xml version=\"1.0\"?>\n\n<workflow-definition xmlns=\"urn:liferay.com:liferay-workflow_6.2.0\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"urn:liferay.com:liferay-workflow_6.2.0 http://www.liferay.com/dtd/liferay-workflow-definition_6_2_0.xsd\">\n	<name>Single Approver</name>\n	<description>A single approver can approve a workflow content.</description>\n	<version>1</version>\n	<state>\n		<name>created</name>\n		<metadata> <![CDATA[{\"xy\":[36,51]}]]> </metadata>\n		<initial>true</initial>\n		<transitions>\n			<transition>\n				<name>review</name>\n				<target>review</target>\n			</transition>\n		</transitions>\n	</state>\n	<task>\n		<name>update</name>\n		<metadata> <![CDATA[{\"transitions\":{\"resubmit\":{\"bendpoints\":[[303,140]]}},\"xy\":[328,199]}]]> </metadata>\n		<actions>\n			<action>\n				<name>reject</name>\n				<script> <![CDATA[\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"denied\"), workflowContext);\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"pending\"), workflowContext);\n					]]> </script>\n				<script-language>javascript</script-language>\n				<execution-type>onAssignment</execution-type>\n			</action>\n			<notification>\n				<name>Creator Modification Notification</name>\n				<template>Your submission was rejected by ${userName}, please modify and resubmit.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<notification-type>user-notification</notification-type>\n				<execution-type>onAssignment</execution-type>\n			</notification>\n		</actions>\n		<assignments>\n			<user/>\n		</assignments>\n		<transitions>\n			<transition>\n				<name>resubmit</name>\n				<target>review</target>\n			</transition>\n		</transitions>\n	</task>\n	<task>\n		<name>review</name>\n		<metadata> <![CDATA[{\"xy\":[168,36]}]]> </metadata>\n		<actions>\n			<notification>\n				<name>Review Notification</name>\n				<template>${userName} sent you a ${entryType} for review in the workflow.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<notification-type>user-notification</notification-type>\n				<execution-type>onAssignment</execution-type>\n			</notification>\n			<notification>\n				<name>Review Completion Notification</name>\n				<template>Your submission has been reviewed and the reviewer has applied the following ${taskComments}.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<recipients>\n					<user/>\n				</recipients>\n				<execution-type>onExit</execution-type>\n			</notification>\n		</actions>\n		<assignments>\n			<roles>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Administrator</name>\n				</role>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Owner</name>\n				</role>\n				<role>\n					<role-type>regular</role-type>\n					<name>Administrator</name>\n				</role>\n				<role>\n					<role-type>regular</role-type>\n					<name>Portal Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Administrator</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Owner</name>\n				</role>\n			</roles>\n		</assignments>\n		<transitions>\n			<transition>\n				<name>approve</name>\n				<target>approved</target>\n			</transition>\n			<transition>\n				<name>reject</name>\n				<target>update</target>\n				<default>false</default>\n			</transition>\n		</transitions>\n	</task>\n	<state>\n		<name>approved</name>\n		<metadata> <![CDATA[\n				{\"xy\":[380,51]}\n			]]> </metadata>\n		<actions>\n			<action>\n				<name>approve</name>\n				<script> <![CDATA[\n						import com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil;\n						import com.liferay.portal.kernel.workflow.WorkflowConstants;\n\n						WorkflowStatusManagerUtil.updateStatus(WorkflowConstants.toStatus(\"approved\"), workflowContext);\n					]]> </script>\n				<script-language>groovy</script-language>\n				<execution-type>onEntry</execution-type>\n			</action>\n		</actions>\n	</state>\n</workflow-definition>',1,1,20474);
/*!40000 ALTER TABLE `KaleoDefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoInstance`
--

DROP TABLE IF EXISTS `KaleoInstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoInstance` (
  `kaleoInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoDefinitionName` varchar(200) DEFAULT NULL,
  `kaleoDefinitionVersion` int(11) DEFAULT NULL,
  `rootKaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoInstanceId`),
  KEY `IX_58D85ECB` (`className`,`classPK`),
  KEY `IX_5F2FCD2D` (`companyId`),
  KEY `IX_BF5839F8` (`companyId`,`kaleoDefinitionName`,`kaleoDefinitionVersion`,`completionDate`),
  KEY `IX_C6D7A867` (`companyId`,`userId`),
  KEY `IX_4DA4D123` (`kaleoDefinitionId`),
  KEY `IX_ACF16238` (`kaleoDefinitionId`,`completed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoInstance`
--

LOCK TABLES `KaleoInstance` WRITE;
/*!40000 ALTER TABLE `KaleoInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoInstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoInstanceToken`
--

DROP TABLE IF EXISTS `KaleoInstanceToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoInstanceToken` (
  `kaleoInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `parentKaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `currentKaleoNodeId` bigint(20) DEFAULT NULL,
  `currentKaleoNodeName` varchar(200) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`kaleoInstanceTokenId`),
  KEY `IX_153721BE` (`companyId`),
  KEY `IX_4A86923B` (`companyId`,`parentKaleoInstanceTokenId`),
  KEY `IX_360D34D9` (`companyId`,`parentKaleoInstanceTokenId`,`completionDate`),
  KEY `IX_7BDB04B4` (`kaleoDefinitionId`),
  KEY `IX_F42AAFF6` (`kaleoInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoInstanceToken`
--

LOCK TABLES `KaleoInstanceToken` WRITE;
/*!40000 ALTER TABLE `KaleoInstanceToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoInstanceToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoLog`
--

DROP TABLE IF EXISTS `KaleoLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoLog` (
  `kaleoLogId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `terminalKaleoNode` tinyint(4) DEFAULT NULL,
  `kaleoActionId` bigint(20) DEFAULT NULL,
  `kaleoActionName` varchar(200) DEFAULT NULL,
  `kaleoActionDescription` longtext,
  `previousKaleoNodeId` bigint(20) DEFAULT NULL,
  `previousKaleoNodeName` varchar(200) DEFAULT NULL,
  `previousAssigneeClassName` varchar(200) DEFAULT NULL,
  `previousAssigneeClassPK` bigint(20) DEFAULT NULL,
  `currentAssigneeClassName` varchar(200) DEFAULT NULL,
  `currentAssigneeClassPK` bigint(20) DEFAULT NULL,
  `type_` varchar(50) DEFAULT NULL,
  `comment_` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoLogId`),
  KEY `IX_73B5F4DE` (`companyId`),
  KEY `IX_E66A153A` (`kaleoClassName`,`kaleoClassPK`,`kaleoInstanceTokenId`,`type_`),
  KEY `IX_6C64B7D4` (`kaleoDefinitionId`),
  KEY `IX_5BC6AB16` (`kaleoInstanceId`),
  KEY `IX_470B9FF8` (`kaleoInstanceTokenId`,`type_`),
  KEY `IX_B0CDCA38` (`kaleoTaskInstanceTokenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoLog`
--

LOCK TABLES `KaleoLog` WRITE;
/*!40000 ALTER TABLE `KaleoLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoNode`
--

DROP TABLE IF EXISTS `KaleoNode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoNode` (
  `kaleoNodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `type_` varchar(20) DEFAULT NULL,
  `initial_` tinyint(4) DEFAULT NULL,
  `terminal` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kaleoNodeId`),
  KEY `IX_C4E9ACE0` (`companyId`),
  KEY `IX_F28C443E` (`companyId`,`kaleoDefinitionId`),
  KEY `IX_32E94DD6` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoNode`
--

LOCK TABLES `KaleoNode` WRITE;
/*!40000 ALTER TABLE `KaleoNode` DISABLE KEYS */;
INSERT INTO `KaleoNode` VALUES (20472,0,20155,20159,'','2015-05-20 07:45:30','2015-05-20 07:45:30',20469,'approved','\n			\n				{\"xy\":[380,51]}\n			\n		','','STATE',0,1),(20474,0,20155,20159,'','2015-05-20 07:45:30','2015-05-20 07:45:30',20469,'created','\n			{\"xy\":[36,51]}\n		','','STATE',1,0),(20475,0,20155,20159,'','2015-05-20 07:45:30','2015-05-20 07:45:30',20469,'review','\n			{\"xy\":[168,36]}\n		','','TASK',0,0),(20491,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31',20469,'update','\n			{\"transitions\":{\"resubmit\":{\"bendpoints\":[[303,140]]}},\"xy\":[328,199]}\n		','','TASK',0,0);
/*!40000 ALTER TABLE `KaleoNode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoNotification`
--

DROP TABLE IF EXISTS `KaleoNotification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoNotification` (
  `kaleoNotificationId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `executionType` varchar(20) DEFAULT NULL,
  `template` longtext,
  `templateLanguage` varchar(75) DEFAULT NULL,
  `notificationTypes` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kaleoNotificationId`),
  KEY `IX_38829497` (`companyId`),
  KEY `IX_902D342F` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_F3362E93` (`kaleoClassName`,`kaleoClassPK`,`executionType`),
  KEY `IX_4B968E8D` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoNotification`
--

LOCK TABLES `KaleoNotification` WRITE;
/*!40000 ALTER TABLE `KaleoNotification` DISABLE KEYS */;
INSERT INTO `KaleoNotification` VALUES (20476,0,20155,20159,'','2015-05-20 07:45:30','2015-05-20 07:45:30','com.liferay.portal.workflow.kaleo.model.KaleoNode',20475,20469,'review','Review Notification','','onAssignment','${userName} sent you a ${entryType} for review in the workflow.','freemarker','email,user-notification'),(20477,0,20155,20159,'','2015-05-20 07:45:30','2015-05-20 07:45:30','com.liferay.portal.workflow.kaleo.model.KaleoNode',20475,20469,'review','Review Completion Notification','','onExit','\n					Your submission has been reviewed and the reviewer has applied the following ${taskComments}.','freemarker','email'),(20493,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31','com.liferay.portal.workflow.kaleo.model.KaleoNode',20491,20469,'update','Creator Modification Notification','','onAssignment','Your submission was rejected by ${userName}, please modify and resubmit.','freemarker','email,user-notification');
/*!40000 ALTER TABLE `KaleoNotification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoNotificationRecipient`
--

DROP TABLE IF EXISTS `KaleoNotificationRecipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoNotificationRecipient` (
  `kaleoNotificationRecipientId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNotificationId` bigint(20) DEFAULT NULL,
  `recipientClassName` varchar(200) DEFAULT NULL,
  `recipientClassPK` bigint(20) DEFAULT NULL,
  `recipientRoleType` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kaleoNotificationRecipientId`),
  KEY `IX_2C8C4AF4` (`companyId`),
  KEY `IX_AA6697EA` (`kaleoDefinitionId`),
  KEY `IX_7F4FED02` (`kaleoNotificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoNotificationRecipient`
--

LOCK TABLES `KaleoNotificationRecipient` WRITE;
/*!40000 ALTER TABLE `KaleoNotificationRecipient` DISABLE KEYS */;
INSERT INTO `KaleoNotificationRecipient` VALUES (20478,0,20155,20159,'','2015-05-20 07:45:30','2015-05-20 07:45:30',20469,20477,'com.liferay.portal.model.User',0,0,'');
/*!40000 ALTER TABLE `KaleoNotificationRecipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoTask`
--

DROP TABLE IF EXISTS `KaleoTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoTask` (
  `kaleoTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`kaleoTaskId`),
  KEY `IX_E1F8B23D` (`companyId`),
  KEY `IX_3FFA633` (`kaleoDefinitionId`),
  KEY `IX_77B3F1A2` (`kaleoNodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoTask`
--

LOCK TABLES `KaleoTask` WRITE;
/*!40000 ALTER TABLE `KaleoTask` DISABLE KEYS */;
INSERT INTO `KaleoTask` VALUES (20479,0,20155,20159,'','2015-05-20 07:45:30','2015-05-20 07:45:30',20469,20475,'review',''),(20494,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31',20469,20491,'update','');
/*!40000 ALTER TABLE `KaleoTask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoTaskAssignment`
--

DROP TABLE IF EXISTS `KaleoTaskAssignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoTaskAssignment` (
  `kaleoTaskAssignmentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `assigneeClassName` varchar(200) DEFAULT NULL,
  `assigneeClassPK` bigint(20) DEFAULT NULL,
  `assigneeActionId` varchar(75) DEFAULT NULL,
  `assigneeScript` longtext,
  `assigneeScriptLanguage` varchar(75) DEFAULT NULL,
  `assigneeScriptRequiredContexts` longtext,
  PRIMARY KEY (`kaleoTaskAssignmentId`),
  KEY `IX_611732B0` (`companyId`),
  KEY `IX_D835C576` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_1087068E` (`kaleoClassName`,`kaleoClassPK`,`assigneeClassName`),
  KEY `IX_575C03A6` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoTaskAssignment`
--

LOCK TABLES `KaleoTaskAssignment` WRITE;
/*!40000 ALTER TABLE `KaleoTaskAssignment` DISABLE KEYS */;
INSERT INTO `KaleoTaskAssignment` VALUES (20480,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20469,0,'com.liferay.portal.model.Role',20481,'','','',''),(20482,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20469,0,'com.liferay.portal.model.Role',20162,'','','',''),(20483,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20469,0,'com.liferay.portal.model.Role',20167,'','','',''),(20484,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20469,0,'com.liferay.portal.model.Role',20168,'','','',''),(20485,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20469,0,'com.liferay.portal.model.Role',20170,'','','',''),(20486,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20469,0,'com.liferay.portal.model.Role',20487,'','','',''),(20488,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20469,0,'com.liferay.portal.model.Role',20172,'','','',''),(20489,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20469,0,'com.liferay.portal.model.Role',20490,'','','',''),(20495,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31','com.liferay.portal.workflow.kaleo.model.KaleoTask',20494,20469,0,'com.liferay.portal.model.User',0,'','','','');
/*!40000 ALTER TABLE `KaleoTaskAssignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoTaskAssignmentInstance`
--

DROP TABLE IF EXISTS `KaleoTaskAssignmentInstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoTaskAssignmentInstance` (
  `kaleoTaskAssignmentInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskId` bigint(20) DEFAULT NULL,
  `kaleoTaskName` varchar(200) DEFAULT NULL,
  `assigneeClassName` varchar(200) DEFAULT NULL,
  `assigneeClassPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`kaleoTaskAssignmentInstanceId`),
  KEY `IX_945F4EB7` (`assigneeClassName`),
  KEY `IX_3BD436FD` (`assigneeClassName`,`assigneeClassPK`),
  KEY `IX_6E3CDA1B` (`companyId`),
  KEY `IX_38A47B17` (`groupId`,`assigneeClassPK`),
  KEY `IX_C851011` (`kaleoDefinitionId`),
  KEY `IX_67A9EE93` (`kaleoInstanceId`),
  KEY `IX_D4C2235B` (`kaleoTaskInstanceTokenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoTaskAssignmentInstance`
--

LOCK TABLES `KaleoTaskAssignmentInstance` WRITE;
/*!40000 ALTER TABLE `KaleoTaskAssignmentInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoTaskAssignmentInstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoTaskInstanceToken`
--

DROP TABLE IF EXISTS `KaleoTaskInstanceToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoTaskInstanceToken` (
  `kaleoTaskInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskId` bigint(20) DEFAULT NULL,
  `kaleoTaskName` varchar(200) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completionUserId` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoTaskInstanceTokenId`),
  KEY `IX_A3271995` (`className`,`classPK`),
  KEY `IX_997FE723` (`companyId`),
  KEY `IX_608E9519` (`kaleoDefinitionId`),
  KEY `IX_2CE1159B` (`kaleoInstanceId`),
  KEY `IX_B857A115` (`kaleoInstanceId`,`kaleoTaskId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoTaskInstanceToken`
--

LOCK TABLES `KaleoTaskInstanceToken` WRITE;
/*!40000 ALTER TABLE `KaleoTaskInstanceToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoTaskInstanceToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoTimer`
--

DROP TABLE IF EXISTS `KaleoTimer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoTimer` (
  `kaleoTimerId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `blocking` tinyint(4) DEFAULT NULL,
  `description` longtext,
  `duration` double DEFAULT NULL,
  `scale` varchar(75) DEFAULT NULL,
  `recurrenceDuration` double DEFAULT NULL,
  `recurrenceScale` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`kaleoTimerId`),
  KEY `IX_4DE6A889` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_1A479F32` (`kaleoClassName`,`kaleoClassPK`,`blocking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoTimer`
--

LOCK TABLES `KaleoTimer` WRITE;
/*!40000 ALTER TABLE `KaleoTimer` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoTimer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoTimerInstanceToken`
--

DROP TABLE IF EXISTS `KaleoTimerInstanceToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoTimerInstanceToken` (
  `kaleoTimerInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTimerId` bigint(20) DEFAULT NULL,
  `kaleoTimerName` varchar(200) DEFAULT NULL,
  `blocking` tinyint(4) DEFAULT NULL,
  `completionUserId` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoTimerInstanceTokenId`),
  KEY `IX_DB96C55B` (`kaleoInstanceId`),
  KEY `IX_DB279423` (`kaleoInstanceTokenId`,`completed`),
  KEY `IX_9932524C` (`kaleoInstanceTokenId`,`completed`,`blocking`),
  KEY `IX_13A5BA2C` (`kaleoInstanceTokenId`,`kaleoTimerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoTimerInstanceToken`
--

LOCK TABLES `KaleoTimerInstanceToken` WRITE;
/*!40000 ALTER TABLE `KaleoTimerInstanceToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoTimerInstanceToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoTransition`
--

DROP TABLE IF EXISTS `KaleoTransition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoTransition` (
  `kaleoTransitionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `sourceKaleoNodeId` bigint(20) DEFAULT NULL,
  `sourceKaleoNodeName` varchar(200) DEFAULT NULL,
  `targetKaleoNodeId` bigint(20) DEFAULT NULL,
  `targetKaleoNodeName` varchar(200) DEFAULT NULL,
  `defaultTransition` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kaleoTransitionId`),
  KEY `IX_41D6C6D` (`companyId`),
  KEY `IX_479F3063` (`kaleoDefinitionId`),
  KEY `IX_A392DFD2` (`kaleoNodeId`),
  KEY `IX_A38E2194` (`kaleoNodeId`,`defaultTransition`),
  KEY `IX_85268A11` (`kaleoNodeId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoTransition`
--

LOCK TABLES `KaleoTransition` WRITE;
/*!40000 ALTER TABLE `KaleoTransition` DISABLE KEYS */;
INSERT INTO `KaleoTransition` VALUES (20496,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31',20469,20474,'review','',20474,'created',20475,'review',1),(20497,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31',20469,20475,'approve','',20475,'review',20472,'approved',1),(20498,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31',20469,20475,'reject','',20475,'review',20491,'update',0),(20499,0,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31',20469,20491,'resubmit','',20491,'update',20475,'review',1);
/*!40000 ALTER TABLE `KaleoTransition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Layout`
--

DROP TABLE IF EXISTS `Layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Layout` (
  `uuid_` varchar(75) DEFAULT NULL,
  `plid` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `parentLayoutId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `hidden_` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `priority` int(11) DEFAULT NULL,
  `layoutPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  `sourcePrototypeLayoutUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`plid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Layout`
--

LOCK TABLES `Layout` WRITE;
/*!40000 ALTER TABLE `Layout` DISABLE KEYS */;
INSERT INTO `Layout` VALUES ('72b0ce4d-69af-499c-9edc-39d94d70a06c',20176,20173,20155,20159,'','2015-05-20 07:43:12','2015-05-20 07:43:12',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Control Panel</Name></root>','','','','','control_panel','privateLayout=true\n',0,'/manage',0,0,'','','','','',0,'',0,''),('5be6bc0b-7b3b-4930-a49a-11672f3acac0',20322,20319,20155,20159,'','2015-05-20 07:43:19','2015-05-20 07:43:21',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','','','','','portlet','column-1=33,\ncolumn-2=148_INSTANCE_SeyG3ebbnObU,114,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/layout',0,0,'','','','','',0,'',0,''),('5a946dfe-c42b-46d5-944f-02c8900c20ac',20334,20331,20155,20159,'','2015-05-20 07:43:21','2015-05-20 07:43:22',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','','','','','portlet','column-1=141_INSTANCE_jZ2YlHZ5ikMt,122_INSTANCE_O7ytoOKVyF8B,\ncolumn-2=3,101_INSTANCE_FgWr2OKBLSOd,\ndefault-asset-publisher-portlet-id=101_INSTANCE_FgWr2OKBLSOd\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/layout',0,0,'','','','','',0,'',0,''),('87eb9a11-ac09-4097-9dac-679ebbc5d984',20344,20341,20155,20159,'','2015-05-20 07:43:23','2015-05-20 07:43:24',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','column-1=36,\ncolumn-2=122_INSTANCE_tIvnwhnIqNy2,141_INSTANCE_w3B3vvLJjfog,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/layout',0,0,'','','','','',0,'',0,''),('c548c351-bd58-4efe-978b-41d384f476f8',20363,20352,20155,20159,'','2015-05-20 07:43:25','2015-05-20 07:43:26',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','column-1=19,\ncolumn-2=3,59_INSTANCE_GoufcLX8AiM7,180,101_INSTANCE_nRGnD8Aawroy,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('46227755-3554-4d8f-b38e-9df9f514ef16',20371,20352,20155,20159,'','2015-05-20 07:43:26','2015-05-20 07:43:27',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','column-1=36,\ncolumn-2=122_INSTANCE_40L1pdZwLpFD,148_INSTANCE_02gqLoai7sFx,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/wiki',0,0,'','','','','',1,'',0,''),('08c29665-dc8c-427d-b7f2-98121bd72ac3',20389,20378,20155,20159,'','2015-05-20 07:43:29','2015-05-20 07:43:31',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','column-1=116,\ncolumn-2=3,82,101_INSTANCE_nLGpx0BJGpfz,\nlayout-template-id=2_columns_i\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('b1cc2f59-abf3-461c-9f3f-f541cc8c2fa4',20398,20378,20155,20159,'','2015-05-20 07:43:31','2015-05-20 07:43:32',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','column-1=20,\ncolumn-2=101_INSTANCE_gescd2ll4pDY,\nlayout-template-id=1_column\nprivateLayout=true\n',0,'/documents',0,0,'','','','','',1,'',0,''),('f308b4ef-266f-427d-b4f8-87a549475776',20406,20378,20155,20159,'','2015-05-20 07:43:32','2015-05-20 07:43:33',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','column-1=39_INSTANCE_RQoVTsr6Ku1T,\ncolumn-2=39_INSTANCE_VYMMjxrC66yw,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/news',0,0,'','','','','',2,'',0,''),('d16ddbef-0c81-4596-8e96-c1d352edb323',20623,20182,20155,20159,'','2015-05-20 07:45:53','2015-05-20 07:52:28',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Welcome</Title></root>','','','','portlet','column-2=58\nlayout-template-id=2_columns_ii\n',0,'/home',0,0,'','','','','',0,'',0,''),('e95ec087-85a3-4d94-a417-b63f219c6f99',35235,35232,20155,20435,'Edicson Morales','2015-05-21 10:39:49','2015-05-21 10:40:26',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Customer</Name></root>','','','','','portlet','column-2=Customer_WAR_Customerportlet\nlayout-template-id=10_90\nlayoutUpdateable=true\nmerge-fail-count=0\nprivateLayout=true\n',0,'/1',0,0,'classic','','','','',0,'',0,''),('0c48ce0f-6729-4ede-a0b8-184dac8ded7c',35255,20182,20155,20435,'Edicson Morales','2015-05-21 10:42:12','2015-05-21 10:42:13',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Customer</Name></root>','','','','','portlet','column-2=Customer_WAR_Customerportlet\nlast-merge-time=1432204932905\nlayout-template-id=10_90\nlayoutUpdateable=true\nprivateLayout=true\n',0,'/customer',0,0,'classic','','','','',1,'f5e559f6-1259-4946-a39b-2b81dde3a017',1,''),('a03a3097-be96-4d5d-bc77-a0d16db00b3d',37315,37312,20155,20435,'Edicson Morales','2015-05-28 13:21:58','2015-05-28 13:27:20',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Logs</Name></root>','','','','','portlet','column-2=Subscriptions_WAR_Subscriptionsportlet\nlayout-template-id=10_90\nlayoutUpdateable=true\nmerge-fail-count=0\nprivateLayout=true\n',0,'/1',0,0,'classic','','','','',0,'',0,''),('640563a1-7f8c-435c-9ac2-9c68d599aa65',37348,37345,20155,20435,'Edicson Morales','2015-05-28 13:25:51','2015-05-28 13:27:31',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">ScheduledJobs</Name></root>','','','','','portlet','column-2=SchedulerJobs_WAR_SchedulerJobsportlet\nlayout-template-id=10_90\nlayoutUpdateable=true\nmerge-fail-count=0\nprivateLayout=true\n',0,'/1',0,0,'classic','','','','',0,'',0,''),('eadddf49-5848-433a-a6c6-29f53447d67c',37368,20182,20155,20435,'Edicson Morales','2015-05-28 13:27:51','2015-05-28 13:27:52',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">ScheduledJobs</Name></root>','','','','','portlet','column-2=SchedulerJobs_WAR_SchedulerJobsportlet\nlast-merge-time=1432783672101\nlayout-template-id=10_90\nlayoutUpdateable=true\nprivateLayout=true\n',0,'/scheduledjobs',0,0,'classic','','','','',2,'277972c8-565c-470a-be01-d2360cb00c72',1,''),('f309456f-69d9-49ee-8766-eade05ef04e6',37376,20182,20155,20435,'Edicson Morales','2015-05-28 13:28:04','2015-05-28 13:28:05',1,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Logs</Name></root>','','','','','portlet','column-2=Subscriptions_WAR_Subscriptionsportlet\nlast-merge-time=1432783685151\nlayout-template-id=10_90\nlayoutUpdateable=true\nprivateLayout=true\n',0,'/logs',0,0,'classic','','','','',3,'688310b2-ba35-4a93-9cd3-4f1648f48c1c',1,''),('663269db-2e1c-4451-8177-b0024b1cf7b1',39805,20631,20155,20159,'','2015-05-29 19:03:27','2015-05-29 19:03:28',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Welcome</Title></root>','','','','portlet','column-1=58,\ncolumn-2=47,\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,'');
/*!40000 ALTER TABLE `Layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutBranch`
--

DROP TABLE IF EXISTS `LayoutBranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutBranch` (
  `LayoutBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`LayoutBranchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutBranch`
--

LOCK TABLES `LayoutBranch` WRITE;
/*!40000 ALTER TABLE `LayoutBranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutBranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutFriendlyURL`
--

DROP TABLE IF EXISTS `LayoutFriendlyURL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutFriendlyURL` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutFriendlyURLId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`layoutFriendlyURLId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutFriendlyURL`
--

LOCK TABLES `LayoutFriendlyURL` WRITE;
/*!40000 ALTER TABLE `LayoutFriendlyURL` DISABLE KEYS */;
INSERT INTO `LayoutFriendlyURL` VALUES ('25b67eff-74c4-4baf-a293-5e1cd726ab01',20177,20173,20155,20159,'','2015-05-20 07:43:12','2015-05-20 07:43:12',20176,1,'/manage','en_US'),('056f70b9-0735-49fb-acb7-af6562e620b3',20323,20319,20155,20159,'','2015-05-20 07:43:19','2015-05-20 07:43:19',20322,1,'/layout','en_US'),('d1fce659-e09b-4520-ad10-fa600e91b9c6',20335,20331,20155,20159,'','2015-05-20 07:43:21','2015-05-20 07:43:21',20334,1,'/layout','en_US'),('d86895de-278f-4231-8a87-da8ed6d84f07',20345,20341,20155,20159,'','2015-05-20 07:43:23','2015-05-20 07:43:23',20344,1,'/layout','en_US'),('e4691d93-1cc8-4850-8dcf-8b9fe9ca037b',20364,20352,20155,20159,'','2015-05-20 07:43:25','2015-05-20 07:43:25',20363,1,'/home','en_US'),('9cc4725a-0c99-4952-950c-687b0cd99ae6',20372,20352,20155,20159,'','2015-05-20 07:43:26','2015-05-20 07:43:26',20371,1,'/wiki','en_US'),('8fd750cc-dd78-426d-9ddb-eaf4c7cb2dae',20390,20378,20155,20159,'','2015-05-20 07:43:29','2015-05-20 07:43:29',20389,1,'/home','en_US'),('de5028e7-b77f-48a7-b192-b5137ac4fea2',20399,20378,20155,20159,'','2015-05-20 07:43:31','2015-05-20 07:43:31',20398,1,'/documents','en_US'),('05e2c65d-4d3b-4c5a-8970-4ade760cf02e',20407,20378,20155,20159,'','2015-05-20 07:43:32','2015-05-20 07:43:32',20406,1,'/news','en_US'),('0cdd92f8-9dab-4e40-93c7-512bbf8b6ab4',20624,20182,20155,20159,'','2015-05-20 07:45:53','2015-05-20 07:45:53',20623,0,'/home','en_US'),('d2c16065-2f1f-4955-b6fb-873fb3f192f1',35236,35232,20155,20435,'Edicson Morales','2015-05-21 10:39:49','2015-05-21 10:39:49',35235,1,'/1','en_US'),('de5013bb-729f-4e79-8c86-730eacc69297',35256,20182,20155,20435,'Edicson Morales','2015-05-21 10:42:12','2015-05-21 10:42:12',35255,1,'/customer','en_US'),('2ce939a6-1e7f-4356-b8a9-e9489aadaee3',37316,37312,20155,20435,'Edicson Morales','2015-05-28 13:21:58','2015-05-28 13:21:58',37315,1,'/1','en_US'),('ed69bfd0-1987-4497-8083-80136b8ca0d4',37349,37345,20155,20435,'Edicson Morales','2015-05-28 13:25:51','2015-05-28 13:25:51',37348,1,'/1','en_US'),('b9ae267e-8f8f-4f5b-86a5-a7d84a6ff63d',37369,20182,20155,20435,'Edicson Morales','2015-05-28 13:27:51','2015-05-28 13:27:51',37368,1,'/scheduledjobs','en_US'),('bc6df50e-2497-4fa3-b3c9-231015a52a65',37377,20182,20155,20435,'Edicson Morales','2015-05-28 13:28:04','2015-05-28 13:28:04',37376,1,'/logs','en_US'),('e6520ba1-cb3f-46a2-a06f-48cca0aa66cf',39806,20631,20155,20159,'','2015-05-29 19:03:27','2015-05-29 19:03:27',39805,1,'/home','en_US');
/*!40000 ALTER TABLE `LayoutFriendlyURL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutPrototype`
--

DROP TABLE IF EXISTS `LayoutPrototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutPrototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutPrototypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutPrototype`
--

LOCK TABLES `LayoutPrototype` WRITE;
/*!40000 ALTER TABLE `LayoutPrototype` DISABLE KEYS */;
INSERT INTO `LayoutPrototype` VALUES ('f61cd035-0f90-454a-9375-c008f5aced2a',20318,20155,20159,'','2015-05-20 07:43:19','2015-05-20 07:43:19','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.','',1),('77974654-558c-4397-b6cc-b21c9a70a1d6',20330,20155,20159,'','2015-05-20 07:43:21','2015-05-20 07:43:21','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.','',1),('23aaf9aa-6185-462b-bee1-073f63697ee4',20340,20155,20159,'','2015-05-20 07:43:23','2015-05-20 07:43:23','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.','',1),('f5e559f6-1259-4946-a39b-2b81dde3a017',35231,20155,20435,'Edicson Morales','2015-05-21 10:39:49','2015-05-21 10:39:49','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Customer</Name></root>','','',1),('688310b2-ba35-4a93-9cd3-4f1648f48c1c',37311,20155,20435,'Edicson Morales','2015-05-28 13:21:58','2015-05-28 13:27:20','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Logs</Name></root>','','',1),('277972c8-565c-470a-be01-d2360cb00c72',37344,20155,20435,'Edicson Morales','2015-05-28 13:25:50','2015-05-28 13:27:31','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">ScheduledJobs</Name></root>','','',1);
/*!40000 ALTER TABLE `LayoutPrototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutRevision`
--

DROP TABLE IF EXISTS `LayoutRevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutRevision` (
  `layoutRevisionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `layoutBranchId` bigint(20) DEFAULT NULL,
  `parentLayoutRevisionId` bigint(20) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `major` tinyint(4) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `typeSettings` longtext,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`layoutRevisionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutRevision`
--

LOCK TABLES `LayoutRevision` WRITE;
/*!40000 ALTER TABLE `LayoutRevision` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutRevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutSet`
--

DROP TABLE IF EXISTS `LayoutSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutSet` (
  `layoutSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `pageCount` int(11) DEFAULT NULL,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSet`
--

LOCK TABLES `LayoutSet` WRITE;
/*!40000 ALTER TABLE `LayoutSet` DISABLE KEYS */;
INSERT INTO `LayoutSet` VALUES (20174,20173,20155,'2015-05-20 07:43:12','2015-05-20 07:43:12',1,0,0,'classic','01','mobile','01','',1,'','',0),(20175,20173,20155,'2015-05-20 07:43:12','2015-05-20 07:43:12',0,0,0,'classic','01','mobile','01','',0,'','',0),(20183,20182,20155,'2015-05-20 07:43:12','2015-05-28 13:28:09',1,0,0,'ThemeClassic_NewVersion_WAR_ThemeClassic_NewVersiontheme','01','mobile','01','',3,'showSiteName=true\n','',0),(20184,20182,20155,'2015-05-20 07:43:12','2015-05-20 07:51:10',0,1,20678,'ThemeClassic_NewVersion_WAR_ThemeClassic_NewVersiontheme','01','mobile','01','',1,'showSiteName=false\n','',0),(20193,20192,20155,'2015-05-20 07:43:13','2015-05-20 07:43:13',1,0,0,'classic','01','mobile','01','',0,'','',0),(20194,20192,20155,'2015-05-20 07:43:13','2015-05-20 07:43:13',0,0,0,'classic','01','mobile','01','',0,'','',0),(20196,20195,20155,'2015-05-20 07:43:13','2015-05-20 07:43:13',1,0,0,'classic','01','mobile','01','',0,'','',0),(20197,20195,20155,'2015-05-20 07:43:13','2015-05-20 07:43:13',0,0,0,'classic','01','mobile','01','',0,'','',0),(20203,20202,20155,'2015-05-20 07:43:14','2015-05-20 07:43:14',1,0,0,'classic','01','mobile','01','',0,'','',0),(20204,20202,20155,'2015-05-20 07:43:14','2015-05-20 07:43:14',0,0,0,'classic','01','mobile','01','',0,'','',0),(20320,20319,20155,'2015-05-20 07:43:19','2015-05-20 07:43:19',1,0,0,'classic','01','mobile','01','',1,'','',0),(20321,20319,20155,'2015-05-20 07:43:19','2015-05-20 07:43:19',0,0,0,'classic','01','mobile','01','',0,'','',0),(20332,20331,20155,'2015-05-20 07:43:21','2015-05-20 07:43:21',1,0,0,'classic','01','mobile','01','',1,'','',0),(20333,20331,20155,'2015-05-20 07:43:21','2015-05-20 07:43:21',0,0,0,'classic','01','mobile','01','',0,'','',0),(20342,20341,20155,'2015-05-20 07:43:23','2015-05-20 07:43:23',1,0,0,'classic','01','mobile','01','',1,'','',0),(20343,20341,20155,'2015-05-20 07:43:23','2015-05-20 07:43:23',0,0,0,'classic','01','mobile','01','',0,'','',0),(20353,20352,20155,'2015-05-20 07:43:24','2015-05-20 07:43:27',1,0,0,'classic','01','mobile','01','',2,'','',0),(20354,20352,20155,'2015-05-20 07:43:24','2015-05-20 07:43:24',0,0,0,'classic','01','mobile','01','',0,'','',0),(20379,20378,20155,'2015-05-20 07:43:28','2015-05-20 07:43:33',1,0,0,'classic','01','mobile','01','',3,'','',0),(20380,20378,20155,'2015-05-20 07:43:28','2015-05-20 07:43:28',0,0,0,'classic','01','mobile','01','',0,'','',0),(20439,20438,20155,'2015-05-20 07:44:49','2015-05-20 07:44:49',1,0,0,'classic','01','mobile','01','',0,'','',0),(20440,20438,20155,'2015-05-20 07:44:49','2015-05-20 07:44:49',0,0,0,'classic','01','mobile','01','',0,'','',0),(20632,20631,20155,'2015-05-20 07:45:55','2015-05-29 19:03:28',1,0,0,'ThemeClassic_NewVersion_WAR_ThemeClassic_NewVersiontheme','01','mobile','01','',1,'','',0),(20633,20631,20155,'2015-05-20 07:45:55','2015-05-29 19:03:26',0,0,0,'ThemeClassic_NewVersion_WAR_ThemeClassic_NewVersiontheme','01','mobile','01','',0,'','',0),(20764,20763,20155,'2015-05-20 09:12:33','2015-05-20 09:12:33',1,0,0,'classic','01','mobile','01','',0,'','',0),(20765,20763,20155,'2015-05-20 09:12:33','2015-05-20 09:12:33',0,0,0,'classic','01','mobile','01','',0,'','',0),(20824,20823,20155,'2015-05-20 10:03:13','2015-05-20 10:03:13',1,0,0,'classic','01','mobile','01','',0,'','',0),(20825,20823,20155,'2015-05-20 10:03:13','2015-05-20 10:03:13',0,0,0,'classic','01','mobile','01','',0,'','',0),(20918,20917,20155,'2015-05-20 10:10:33','2015-05-20 10:10:33',1,0,0,'classic','01','mobile','01','',0,'','',0),(20919,20917,20155,'2015-05-20 10:10:33','2015-05-20 10:10:33',0,0,0,'classic','01','mobile','01','',0,'','',0),(22357,22356,20155,'2015-05-20 12:31:14','2015-05-20 12:31:14',1,0,0,'classic','01','mobile','01','',0,'','',0),(22358,22356,20155,'2015-05-20 12:31:14','2015-05-20 12:31:14',0,0,0,'classic','01','mobile','01','',0,'','',0),(35233,35232,20155,'2015-05-21 10:39:49','2015-05-21 10:39:49',1,0,0,'classic','01','mobile','01','',1,'','',0),(35234,35232,20155,'2015-05-21 10:39:49','2015-05-21 10:39:49',0,0,0,'classic','01','mobile','01','',0,'','',0),(37313,37312,20155,'2015-05-28 13:21:58','2015-05-28 13:21:58',1,0,0,'classic','01','mobile','01','',1,'','',0),(37314,37312,20155,'2015-05-28 13:21:58','2015-05-28 13:21:58',0,0,0,'classic','01','mobile','01','',0,'','',0),(37346,37345,20155,'2015-05-28 13:25:50','2015-05-28 13:25:51',1,0,0,'classic','01','mobile','01','',1,'','',0),(37347,37345,20155,'2015-05-28 13:25:50','2015-05-28 13:25:50',0,0,0,'classic','01','mobile','01','',0,'','',0);
/*!40000 ALTER TABLE `LayoutSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutSetBranch`
--

DROP TABLE IF EXISTS `LayoutSetBranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutSetBranch` (
  `layoutSetBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetBranchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSetBranch`
--

LOCK TABLES `LayoutSetBranch` WRITE;
/*!40000 ALTER TABLE `LayoutSetBranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutSetBranch` ENABLE KEYS */;
UNLOCK TABLES;

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
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetPrototypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSetPrototype`
--

LOCK TABLES `LayoutSetPrototype` WRITE;
/*!40000 ALTER TABLE `LayoutSetPrototype` DISABLE KEYS */;
INSERT INTO `LayoutSetPrototype` VALUES ('c9a3a8c3-0f04-41f4-840c-fdbc1757ae7f',20351,20155,20159,'','2015-05-20 07:43:24','2015-05-20 08:08:36','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Community Site</Name></root>','Site with Forums and Wiki','layoutsUpdateable=true\n',1),('690bd2e4-3d47-41d8-8564-3fdc45f363eb',20377,20155,20159,'','2015-05-20 07:43:28','2015-05-20 08:08:36','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Intranet Site</Name></root>','Site with Documents and News','layoutsUpdateable=true\n',1),('6e680967-5ac5-451f-a193-6889526da3ef',20630,20155,20159,'','2015-05-20 07:45:55','2015-05-29 19:03:28','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Themeclassic Newversion Theme</Name></root>','','layoutsUpdateable=true\n',1);
/*!40000 ALTER TABLE `LayoutSetPrototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ListType`
--

DROP TABLE IF EXISTS `ListType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ListType` (
  `listTypeId` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`listTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListType`
--

LOCK TABLES `ListType` WRITE;
/*!40000 ALTER TABLE `ListType` DISABLE KEYS */;
INSERT INTO `ListType` VALUES (10000,'billing','com.liferay.portal.model.Account.address'),(10001,'other','com.liferay.portal.model.Account.address'),(10002,'p-o-box','com.liferay.portal.model.Account.address'),(10003,'shipping','com.liferay.portal.model.Account.address'),(10004,'email-address','com.liferay.portal.model.Account.emailAddress'),(10005,'email-address-2','com.liferay.portal.model.Account.emailAddress'),(10006,'email-address-3','com.liferay.portal.model.Account.emailAddress'),(10007,'fax','com.liferay.portal.model.Account.phone'),(10008,'local','com.liferay.portal.model.Account.phone'),(10009,'other','com.liferay.portal.model.Account.phone'),(10010,'toll-free','com.liferay.portal.model.Account.phone'),(10011,'tty','com.liferay.portal.model.Account.phone'),(10012,'intranet','com.liferay.portal.model.Account.website'),(10013,'public','com.liferay.portal.model.Account.website'),(11000,'business','com.liferay.portal.model.Contact.address'),(11001,'other','com.liferay.portal.model.Contact.address'),(11002,'personal','com.liferay.portal.model.Contact.address'),(11003,'email-address','com.liferay.portal.model.Contact.emailAddress'),(11004,'email-address-2','com.liferay.portal.model.Contact.emailAddress'),(11005,'email-address-3','com.liferay.portal.model.Contact.emailAddress'),(11006,'business','com.liferay.portal.model.Contact.phone'),(11007,'business-fax','com.liferay.portal.model.Contact.phone'),(11008,'mobile-phone','com.liferay.portal.model.Contact.phone'),(11009,'other','com.liferay.portal.model.Contact.phone'),(11010,'pager','com.liferay.portal.model.Contact.phone'),(11011,'personal','com.liferay.portal.model.Contact.phone'),(11012,'personal-fax','com.liferay.portal.model.Contact.phone'),(11013,'tty','com.liferay.portal.model.Contact.phone'),(11014,'dr','com.liferay.portal.model.Contact.prefix'),(11015,'mr','com.liferay.portal.model.Contact.prefix'),(11016,'mrs','com.liferay.portal.model.Contact.prefix'),(11017,'ms','com.liferay.portal.model.Contact.prefix'),(11020,'ii','com.liferay.portal.model.Contact.suffix'),(11021,'iii','com.liferay.portal.model.Contact.suffix'),(11022,'iv','com.liferay.portal.model.Contact.suffix'),(11023,'jr','com.liferay.portal.model.Contact.suffix'),(11024,'phd','com.liferay.portal.model.Contact.suffix'),(11025,'sr','com.liferay.portal.model.Contact.suffix'),(11026,'blog','com.liferay.portal.model.Contact.website'),(11027,'business','com.liferay.portal.model.Contact.website'),(11028,'other','com.liferay.portal.model.Contact.website'),(11029,'personal','com.liferay.portal.model.Contact.website'),(12000,'billing','com.liferay.portal.model.Organization.address'),(12001,'other','com.liferay.portal.model.Organization.address'),(12002,'p-o-box','com.liferay.portal.model.Organization.address'),(12003,'shipping','com.liferay.portal.model.Organization.address'),(12004,'email-address','com.liferay.portal.model.Organization.emailAddress'),(12005,'email-address-2','com.liferay.portal.model.Organization.emailAddress'),(12006,'email-address-3','com.liferay.portal.model.Organization.emailAddress'),(12007,'fax','com.liferay.portal.model.Organization.phone'),(12008,'local','com.liferay.portal.model.Organization.phone'),(12009,'other','com.liferay.portal.model.Organization.phone'),(12010,'toll-free','com.liferay.portal.model.Organization.phone'),(12011,'tty','com.liferay.portal.model.Organization.phone'),(12012,'administrative','com.liferay.portal.model.Organization.service'),(12013,'contracts','com.liferay.portal.model.Organization.service'),(12014,'donation','com.liferay.portal.model.Organization.service'),(12015,'retail','com.liferay.portal.model.Organization.service'),(12016,'training','com.liferay.portal.model.Organization.service'),(12017,'full-member','com.liferay.portal.model.Organization.status'),(12018,'provisional-member','com.liferay.portal.model.Organization.status'),(12019,'intranet','com.liferay.portal.model.Organization.website'),(12020,'public','com.liferay.portal.model.Organization.website');
/*!40000 ALTER TABLE `ListType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lock_`
--

DROP TABLE IF EXISTS `Lock_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lock_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `lockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `className` varchar(75) DEFAULT NULL,
  `key_` varchar(200) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `inheritable` tinyint(4) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`lockId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lock_`
--

LOCK TABLES `Lock_` WRITE;
/*!40000 ALTER TABLE `Lock_` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lock_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBBan`
--

DROP TABLE IF EXISTS `MBBan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBBan` (
  `uuid_` varchar(75) DEFAULT NULL,
  `banId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `banUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`banId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBBan`
--

LOCK TABLES `MBBan` WRITE;
/*!40000 ALTER TABLE `MBBan` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBBan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBCategory`
--

DROP TABLE IF EXISTS `MBCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBCategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `displayStyle` varchar(75) DEFAULT NULL,
  `threadCount` int(11) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBCategory`
--

LOCK TABLES `MBCategory` WRITE;
/*!40000 ALTER TABLE `MBCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBDiscussion`
--

DROP TABLE IF EXISTS `MBDiscussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBDiscussion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `discussionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`discussionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBDiscussion`
--

LOCK TABLES `MBDiscussion` WRITE;
/*!40000 ALTER TABLE `MBDiscussion` DISABLE KEYS */;
INSERT INTO `MBDiscussion` VALUES ('26a0a970-13da-4e09-92b1-78755ffd0194',20181,0,0,20159,'','2015-05-20 07:43:12','2015-05-20 07:43:12',20002,20176,20179),('b4cb9b56-1989-4174-813f-9c47b70585b7',20328,0,0,20159,'','2015-05-20 07:43:19','2015-05-20 07:43:19',20002,20322,20325),('89899e75-07a1-41d9-b647-c492d878a8b1',20339,0,0,20159,'','2015-05-20 07:43:21','2015-05-20 07:43:21',20002,20334,20337),('e8470e4a-af7f-43cf-892e-c193bbfd9c32',20349,0,0,20159,'','2015-05-20 07:43:23','2015-05-20 07:43:23',20002,20344,20347),('aab8cdd2-4825-4b49-b55b-b641a85ec45c',20368,0,0,20159,'','2015-05-20 07:43:25','2015-05-20 07:43:25',20002,20363,20366),('09c423c4-687b-43ce-ac8e-cb359d4e42e5',20376,0,0,20159,'','2015-05-20 07:43:26','2015-05-20 07:43:26',20002,20371,20374),('4611536c-7ad7-4ef3-9454-0912101c6d31',20394,0,0,20159,'','2015-05-20 07:43:29','2015-05-20 07:43:29',20002,20389,20392),('22488fa1-73f6-400d-a857-f629139d43f4',20403,0,0,20159,'','2015-05-20 07:43:31','2015-05-20 07:43:31',20002,20398,20401),('64430411-822d-4367-941e-ea00ea21c285',20411,0,0,20159,'','2015-05-20 07:43:32','2015-05-20 07:43:32',20002,20406,20409),('8bf19a2b-2d06-4097-bd89-b86ced696d48',20536,0,0,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20011,20530,20534),('74085da4-7d55-413c-a02e-e3f25ef542ea',20546,0,0,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20011,20539,20544),('e431b598-554d-4144-82b1-ef28f1146248',20558,0,0,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20011,20550,20556),('76489b19-99b8-4bd3-b24f-75ad5e2f2052',20576,0,0,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20011,20566,20570),('86ca4c6e-4659-4494-aaf5-17da16e2a8cc',20587,0,0,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',20011,20579,20584),('c731c7d8-18a0-48c0-9d68-776c119d62e0',20598,0,0,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',20011,20592,20596),('8d6fb114-f2b1-4ad4-a732-a6b6bd0bda4e',20611,0,0,20159,'','2015-05-20 07:45:52','2015-05-20 07:45:52',20109,20605,20609),('afa2cfc6-74f0-4be0-8bb0-c6c51348a1d3',20628,0,0,20159,'','2015-05-20 07:45:53','2015-05-20 07:45:53',20002,20623,20626),('755a5587-6f7d-4469-b70c-7d1dbba1c718',35240,0,0,20435,'Edicson Morales','2015-05-21 10:39:49','2015-05-21 10:39:49',20002,35235,35238),('238bed42-dafc-4b2f-8107-9fd1258fd5b0',35260,0,0,20435,'Edicson Morales','2015-05-21 10:42:12','2015-05-21 10:42:12',20002,35255,35258),('1eb3b8cc-f7e4-4a7c-add9-bfa889982794',37320,0,0,20435,'Edicson Morales','2015-05-28 13:21:59','2015-05-28 13:21:59',20002,37315,37318),('5473c2ee-623f-43f2-affe-956a1e5a99eb',37353,0,0,20435,'Edicson Morales','2015-05-28 13:25:51','2015-05-28 13:25:51',20002,37348,37351),('e588e18f-01f8-4b05-b02c-a8eefc8fdf14',37373,0,0,20435,'Edicson Morales','2015-05-28 13:27:51','2015-05-28 13:27:51',20002,37368,37371),('a7e5ff46-3f9d-4cdb-83ba-061fc5aa30b3',37381,0,0,20435,'Edicson Morales','2015-05-28 13:28:04','2015-05-28 13:28:04',20002,37376,37379),('571e671a-01d7-4abb-95a9-c834d6108a42',39810,0,0,20159,'','2015-05-29 19:03:27','2015-05-29 19:03:27',20002,39805,39808);
/*!40000 ALTER TABLE `MBDiscussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBMailingList`
--

DROP TABLE IF EXISTS `MBMailingList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBMailingList` (
  `uuid_` varchar(75) DEFAULT NULL,
  `mailingListId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `inProtocol` varchar(75) DEFAULT NULL,
  `inServerName` varchar(75) DEFAULT NULL,
  `inServerPort` int(11) DEFAULT NULL,
  `inUseSSL` tinyint(4) DEFAULT NULL,
  `inUserName` varchar(75) DEFAULT NULL,
  `inPassword` varchar(75) DEFAULT NULL,
  `inReadInterval` int(11) DEFAULT NULL,
  `outEmailAddress` varchar(75) DEFAULT NULL,
  `outCustom` tinyint(4) DEFAULT NULL,
  `outServerName` varchar(75) DEFAULT NULL,
  `outServerPort` int(11) DEFAULT NULL,
  `outUseSSL` tinyint(4) DEFAULT NULL,
  `outUserName` varchar(75) DEFAULT NULL,
  `outPassword` varchar(75) DEFAULT NULL,
  `allowAnonymous` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mailingListId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBMailingList`
--

LOCK TABLES `MBMailingList` WRITE;
/*!40000 ALTER TABLE `MBMailingList` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBMailingList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBMessage`
--

DROP TABLE IF EXISTS `MBMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBMessage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `messageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `parentMessageId` bigint(20) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  `format` varchar(75) DEFAULT NULL,
  `anonymous` tinyint(4) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `answer` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBMessage`
--

LOCK TABLES `MBMessage` WRITE;
/*!40000 ALTER TABLE `MBMessage` DISABLE KEYS */;
INSERT INTO `MBMessage` VALUES ('7efd4713-7838-415e-b640-39ca7f095091',20178,20173,20155,20159,'','2015-05-20 07:43:12','2015-05-20 07:43:12',20002,20176,-1,20179,20178,0,'20176','20176','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:43:12'),('8f9af9dd-a5ec-471a-b6bc-a68e1eb81ba0',20324,20319,20155,20159,'','2015-05-20 07:43:19','2015-05-20 07:43:19',20002,20322,-1,20325,20324,0,'20322','20322','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:43:19'),('37e8ec72-457c-436c-b56d-1c538552be36',20336,20331,20155,20159,'','2015-05-20 07:43:21','2015-05-20 07:43:21',20002,20334,-1,20337,20336,0,'20334','20334','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:43:21'),('2cae3da6-967b-4193-9a7e-654e8e31d4c3',20346,20341,20155,20159,'','2015-05-20 07:43:23','2015-05-20 07:43:23',20002,20344,-1,20347,20346,0,'20344','20344','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:43:23'),('c26dc680-39fd-41ad-ac35-164f703cbc1f',20365,20352,20155,20159,'','2015-05-20 07:43:25','2015-05-20 07:43:25',20002,20363,-1,20366,20365,0,'20363','20363','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:43:25'),('fd9f5326-de7d-4014-9b3c-a126cc8d61cf',20373,20352,20155,20159,'','2015-05-20 07:43:26','2015-05-20 07:43:26',20002,20371,-1,20374,20373,0,'20371','20371','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:43:26'),('d7833cc9-ec11-4210-8f2f-ea91d1ca4d7b',20391,20378,20155,20159,'','2015-05-20 07:43:29','2015-05-20 07:43:29',20002,20389,-1,20392,20391,0,'20389','20389','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:43:29'),('b06c42fa-c88b-422b-aff0-72e53223cf7a',20400,20378,20155,20159,'','2015-05-20 07:43:31','2015-05-20 07:43:31',20002,20398,-1,20401,20400,0,'20398','20398','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:43:31'),('d0284969-e988-469c-88c2-754c5d91b67b',20408,20378,20155,20159,'','2015-05-20 07:43:32','2015-05-20 07:43:32',20002,20406,-1,20409,20408,0,'20406','20406','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:43:32'),('09eeb331-41d1-4a76-bd8d-55191d5cab21',20533,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20011,20530,-1,20534,20533,0,'20530','20530','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:45:50'),('e86ed958-a980-48d8-a170-bf636959ea02',20543,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20011,20539,-1,20544,20543,0,'20539','20539','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:45:50'),('d3e53160-fbab-4fa8-ae95-5a72b898fdcb',20555,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20011,20550,-1,20556,20555,0,'20550','20550','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:45:50'),('bcbfd4c9-cb4e-437d-a3b8-11da7c3b4272',20569,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',20011,20566,-1,20570,20569,0,'20566','20566','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:45:50'),('5aa72ae0-8dda-4965-9d97-91b0feecad5d',20583,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',20011,20579,-1,20584,20583,0,'20579','20579','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:45:51'),('098f61d1-f38c-49f8-bba4-ecec59ecb9af',20595,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',20011,20592,-1,20596,20595,0,'20592','20592','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:45:51'),('0eea17bf-983f-4e06-a1c2-562b0e45046f',20608,20182,20155,20159,'','2015-05-20 07:45:52','2015-05-20 07:45:52',20109,20605,-1,20609,20608,0,'20605','20605','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:45:52'),('13404416-3830-476c-8b91-baecadf83ab1',20625,20182,20155,20159,'','2015-05-20 07:45:53','2015-05-20 07:45:53',20002,20623,-1,20626,20625,0,'20623','20623','bbcode',1,0,0,0,0,20159,'','2015-05-20 07:45:53'),('9fc06221-21b6-4252-9bc4-27a4bfe8c818',35237,35232,20155,20435,'Edicson Morales','2015-05-21 10:39:49','2015-05-21 10:39:49',20002,35235,-1,35238,35237,0,'35235','35235','bbcode',0,0,0,0,0,20435,'Edicson Morales','2015-05-21 10:39:49'),('c7a40cbb-018c-4ca6-af4a-b0673a02e8a3',35257,20182,20155,20435,'Edicson Morales','2015-05-21 10:42:12','2015-05-21 10:42:12',20002,35255,-1,35258,35257,0,'35255','35255','bbcode',0,0,0,0,0,20435,'Edicson Morales','2015-05-21 10:42:12'),('633f2462-6547-438c-a727-dedd78250c37',37317,37312,20155,20435,'Edicson Morales','2015-05-28 13:21:58','2015-05-28 13:21:58',20002,37315,-1,37318,37317,0,'37315','37315','bbcode',0,0,0,0,0,20435,'Edicson Morales','2015-05-28 13:21:59'),('373918d0-4053-4f38-8bfe-9ca2abaa658c',37350,37345,20155,20435,'Edicson Morales','2015-05-28 13:25:51','2015-05-28 13:25:51',20002,37348,-1,37351,37350,0,'37348','37348','bbcode',0,0,0,0,0,20435,'Edicson Morales','2015-05-28 13:25:51'),('98b8f82d-f4eb-45cb-8e90-720e2a0c2250',37370,20182,20155,20435,'Edicson Morales','2015-05-28 13:27:51','2015-05-28 13:27:51',20002,37368,-1,37371,37370,0,'37368','37368','bbcode',0,0,0,0,0,20435,'Edicson Morales','2015-05-28 13:27:51'),('b56d67a3-8133-4f28-9179-6fda1e5188a8',37378,20182,20155,20435,'Edicson Morales','2015-05-28 13:28:04','2015-05-28 13:28:04',20002,37376,-1,37379,37378,0,'37376','37376','bbcode',0,0,0,0,0,20435,'Edicson Morales','2015-05-28 13:28:04'),('ca70a9b5-c1e7-4b03-8ba1-5e8a89bb8914',39807,20631,20155,20159,'','2015-05-29 19:03:27','2015-05-29 19:03:27',20002,39805,-1,39808,39807,0,'39805','39805','bbcode',1,0,0,0,0,20159,'','2015-05-29 19:03:27');
/*!40000 ALTER TABLE `MBMessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBStatsUser`
--

DROP TABLE IF EXISTS `MBStatsUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBStatsUser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`statsUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBStatsUser`
--

LOCK TABLES `MBStatsUser` WRITE;
/*!40000 ALTER TABLE `MBStatsUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBStatsUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBThread`
--

DROP TABLE IF EXISTS `MBThread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBThread` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `rootMessageUserId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `lastPostByUserId` bigint(20) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `question` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`threadId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBThread`
--

LOCK TABLES `MBThread` WRITE;
/*!40000 ALTER TABLE `MBThread` DISABLE KEYS */;
INSERT INTO `MBThread` VALUES ('744d3da8-37df-4655-adf6-5e05ae3a22c3',20179,20173,20155,20159,'','2015-05-20 07:43:12','2015-05-20 07:43:12',-1,20178,20159,1,0,0,'2015-05-20 07:43:12',0,0,0,20159,'','2015-05-20 07:43:12'),('00ba9a40-755d-4547-ba22-bc22cf63c679',20325,20319,20155,20159,'','2015-05-20 07:43:19','2015-05-20 07:43:19',-1,20324,20159,1,0,0,'2015-05-20 07:43:19',0,0,0,20159,'','2015-05-20 07:43:19'),('c7c5e055-62e4-4c17-88a1-69c2ca232820',20337,20331,20155,20159,'','2015-05-20 07:43:21','2015-05-20 07:43:21',-1,20336,20159,1,0,0,'2015-05-20 07:43:21',0,0,0,20159,'','2015-05-20 07:43:21'),('741540e9-b0cb-44fc-a078-54febfa186cf',20347,20341,20155,20159,'','2015-05-20 07:43:23','2015-05-20 07:43:23',-1,20346,20159,1,0,0,'2015-05-20 07:43:23',0,0,0,20159,'','2015-05-20 07:43:23'),('915b90e8-d317-4364-901b-064da9d9c47c',20366,20352,20155,20159,'','2015-05-20 07:43:25','2015-05-20 07:43:25',-1,20365,20159,1,0,0,'2015-05-20 07:43:25',0,0,0,20159,'','2015-05-20 07:43:25'),('4e1f3f7a-5e9f-46b0-97df-f6614d006acb',20374,20352,20155,20159,'','2015-05-20 07:43:26','2015-05-20 07:43:26',-1,20373,20159,1,0,0,'2015-05-20 07:43:26',0,0,0,20159,'','2015-05-20 07:43:26'),('c39f5dd6-c812-4223-b807-7e831dce41d5',20392,20378,20155,20159,'','2015-05-20 07:43:29','2015-05-20 07:43:29',-1,20391,20159,1,0,0,'2015-05-20 07:43:29',0,0,0,20159,'','2015-05-20 07:43:29'),('7352434c-94d3-474f-a3c7-9647b1d2f67a',20401,20378,20155,20159,'','2015-05-20 07:43:31','2015-05-20 07:43:31',-1,20400,20159,1,0,0,'2015-05-20 07:43:31',0,0,0,20159,'','2015-05-20 07:43:31'),('e7ee5cef-8b37-4d56-af88-4e4d45d952cf',20409,20378,20155,20159,'','2015-05-20 07:43:32','2015-05-20 07:43:32',-1,20408,20159,1,0,0,'2015-05-20 07:43:32',0,0,0,20159,'','2015-05-20 07:43:32'),('812cb56f-b48c-426f-b671-bc939f64d976',20534,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',-1,20533,20159,1,0,0,'2015-05-20 07:45:50',0,0,0,20159,'','2015-05-20 07:45:50'),('4027660f-af23-4968-b484-aef28a4059cc',20544,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',-1,20543,20159,1,0,0,'2015-05-20 07:45:50',0,0,0,20159,'','2015-05-20 07:45:50'),('7fb15def-7049-4569-9461-c3a1d000737a',20556,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',-1,20555,20159,1,0,0,'2015-05-20 07:45:50',0,0,0,20159,'','2015-05-20 07:45:50'),('f230f4a0-6a88-48eb-9d04-5b27b3d13705',20570,20182,20155,20159,'','2015-05-20 07:45:50','2015-05-20 07:45:50',-1,20569,20159,1,0,0,'2015-05-20 07:45:50',0,0,0,20159,'','2015-05-20 07:45:50'),('4177f438-bbd6-4a1c-991b-03f1ab6ea121',20584,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',-1,20583,20159,1,0,0,'2015-05-20 07:45:51',0,0,0,20159,'','2015-05-20 07:45:51'),('72997a4c-b28b-4046-8cb9-708d49ec2205',20596,20182,20155,20159,'','2015-05-20 07:45:51','2015-05-20 07:45:51',-1,20595,20159,1,0,0,'2015-05-20 07:45:51',0,0,0,20159,'','2015-05-20 07:45:51'),('b2822623-9c32-4353-ae64-334f154ff5af',20609,20182,20155,20159,'','2015-05-20 07:45:52','2015-05-20 07:45:52',-1,20608,20159,1,0,0,'2015-05-20 07:45:52',0,0,0,20159,'','2015-05-20 07:45:52'),('e52cf154-b401-4f5e-afbc-98d229f1a37d',20626,20182,20155,20159,'','2015-05-20 07:45:53','2015-05-20 07:45:53',-1,20625,20159,1,0,0,'2015-05-20 07:45:53',0,0,0,20159,'','2015-05-20 07:45:53'),('1da92558-d952-40b7-80f9-15cf708d2f58',35238,35232,20155,20435,'Edicson Morales','2015-05-21 10:39:49','2015-05-21 10:39:49',-1,35237,20435,1,0,20435,'2015-05-21 10:39:49',0,0,0,20435,'Edicson Morales','2015-05-21 10:39:49'),('336c1844-2d31-4a82-a9fe-f728af97f7d5',35258,20182,20155,20435,'Edicson Morales','2015-05-21 10:42:12','2015-05-21 10:42:12',-1,35257,20435,1,0,20435,'2015-05-21 10:42:12',0,0,0,20435,'Edicson Morales','2015-05-21 10:42:12'),('c339486c-a04e-4b43-8e1e-5cc1b8c37191',37318,37312,20155,20435,'Edicson Morales','2015-05-28 13:21:58','2015-05-28 13:21:59',-1,37317,20435,1,0,20435,'2015-05-28 13:21:59',0,0,0,20435,'Edicson Morales','2015-05-28 13:21:59'),('9f2471bb-3d6a-4951-a313-50594d23767a',37351,37345,20155,20435,'Edicson Morales','2015-05-28 13:25:51','2015-05-28 13:25:51',-1,37350,20435,1,0,20435,'2015-05-28 13:25:51',0,0,0,20435,'Edicson Morales','2015-05-28 13:25:51'),('de394c2f-298c-497d-96d9-567c3946f04d',37371,20182,20155,20435,'Edicson Morales','2015-05-28 13:27:51','2015-05-28 13:27:51',-1,37370,20435,1,0,20435,'2015-05-28 13:27:51',0,0,0,20435,'Edicson Morales','2015-05-28 13:27:51'),('cbf6e8b6-398e-4887-ac6b-9a80793cb054',37379,20182,20155,20435,'Edicson Morales','2015-05-28 13:28:04','2015-05-28 13:28:04',-1,37378,20435,1,0,20435,'2015-05-28 13:28:04',0,0,0,20435,'Edicson Morales','2015-05-28 13:28:04'),('c968337a-ec10-41db-b498-95608ebf66bd',39808,20631,20155,20159,'','2015-05-29 19:03:27','2015-05-29 19:03:27',-1,39807,20159,1,0,0,'2015-05-29 19:03:27',0,0,0,20159,'','2015-05-29 19:03:27');
/*!40000 ALTER TABLE `MBThread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBThreadFlag`
--

DROP TABLE IF EXISTS `MBThreadFlag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBThreadFlag` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadFlagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`threadFlagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBThreadFlag`
--

LOCK TABLES `MBThreadFlag` WRITE;
/*!40000 ALTER TABLE `MBThreadFlag` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBThreadFlag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRAction`
--

DROP TABLE IF EXISTS `MDRAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRAction` (
  `uuid_` varchar(75) DEFAULT NULL,
  `actionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`actionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRAction`
--

LOCK TABLES `MDRAction` WRITE;
/*!40000 ALTER TABLE `MDRAction` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRRule`
--

DROP TABLE IF EXISTS `MDRRule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRRule` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`ruleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRRule`
--

LOCK TABLES `MDRRule` WRITE;
/*!40000 ALTER TABLE `MDRRule` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRRule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRRuleGroup`
--

DROP TABLE IF EXISTS `MDRRuleGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRRuleGroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`ruleGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRRuleGroup`
--

LOCK TABLES `MDRRuleGroup` WRITE;
/*!40000 ALTER TABLE `MDRRuleGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRRuleGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRRuleGroupInstance`
--

DROP TABLE IF EXISTS `MDRRuleGroupInstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRRuleGroupInstance` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ruleGroupInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRRuleGroupInstance`
--

LOCK TABLES `MDRRuleGroupInstance` WRITE;
/*!40000 ALTER TABLE `MDRRuleGroupInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRRuleGroupInstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Marketplace_App`
--

DROP TABLE IF EXISTS `Marketplace_App`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Marketplace_App` (
  `uuid_` varchar(75) DEFAULT NULL,
  `appId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `remoteAppId` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `category` varchar(75) DEFAULT NULL,
  `iconURL` longtext,
  `version` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`appId`),
  KEY `IX_94A7EF25` (`category`),
  KEY `IX_865B7BD5` (`companyId`),
  KEY `IX_20F14D93` (`remoteAppId`),
  KEY `IX_3E667FE1` (`uuid_`),
  KEY `IX_A7807DA7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Marketplace_App`
--

LOCK TABLES `Marketplace_App` WRITE;
/*!40000 ALTER TABLE `Marketplace_App` DISABLE KEYS */;
/*!40000 ALTER TABLE `Marketplace_App` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Marketplace_Module`
--

DROP TABLE IF EXISTS `Marketplace_Module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Marketplace_Module` (
  `uuid_` varchar(75) DEFAULT NULL,
  `moduleId` bigint(20) NOT NULL,
  `appId` bigint(20) DEFAULT NULL,
  `bundleSymbolicName` varchar(500) DEFAULT NULL,
  `bundleVersion` varchar(75) DEFAULT NULL,
  `contextName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`moduleId`),
  KEY `IX_7DC16D26` (`appId`),
  KEY `IX_C6938724` (`appId`,`contextName`),
  KEY `IX_F2F1E964` (`contextName`),
  KEY `IX_A7EFD80E` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Marketplace_Module`
--

LOCK TABLES `Marketplace_Module` WRITE;
/*!40000 ALTER TABLE `Marketplace_Module` DISABLE KEYS */;
/*!40000 ALTER TABLE `Marketplace_Module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MembershipRequest`
--

DROP TABLE IF EXISTS `MembershipRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MembershipRequest` (
  `membershipRequestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `comments` longtext,
  `replyComments` longtext,
  `replyDate` datetime DEFAULT NULL,
  `replierUserId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`membershipRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MembershipRequest`
--

LOCK TABLES `MembershipRequest` WRITE;
/*!40000 ALTER TABLE `MembershipRequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `MembershipRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Notifications_UserNotificationEvent`
--

DROP TABLE IF EXISTS `Notifications_UserNotificationEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notifications_UserNotificationEvent` (
  `notificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userNotificationEventId` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `delivered` tinyint(4) DEFAULT NULL,
  `actionRequired` tinyint(4) DEFAULT NULL,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`notificationEventId`),
  UNIQUE KEY `IX_DC9FCEDC` (`userNotificationEventId`),
  KEY `IX_93C52776` (`userId`,`actionRequired`),
  KEY `IX_36E5AE4C` (`userId`,`actionRequired`,`archived`),
  KEY `IX_73C065F0` (`userId`,`delivered`,`actionRequired`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Notifications_UserNotificationEvent`
--

LOCK TABLES `Notifications_UserNotificationEvent` WRITE;
/*!40000 ALTER TABLE `Notifications_UserNotificationEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `Notifications_UserNotificationEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OpenSocial_Gadget`
--

DROP TABLE IF EXISTS `OpenSocial_Gadget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OpenSocial_Gadget` (
  `uuid_` varchar(75) DEFAULT NULL,
  `gadgetId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `portletCategoryNames` longtext,
  PRIMARY KEY (`gadgetId`),
  KEY `IX_729869EE` (`companyId`),
  KEY `IX_E1F8627A` (`uuid_`),
  KEY `IX_3C79316E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OpenSocial_Gadget`
--

LOCK TABLES `OpenSocial_Gadget` WRITE;
/*!40000 ALTER TABLE `OpenSocial_Gadget` DISABLE KEYS */;
/*!40000 ALTER TABLE `OpenSocial_Gadget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OpenSocial_OAuthConsumer`
--

DROP TABLE IF EXISTS `OpenSocial_OAuthConsumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OpenSocial_OAuthConsumer` (
  `oAuthConsumerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `gadgetKey` varchar(75) DEFAULT NULL,
  `serviceName` varchar(75) DEFAULT NULL,
  `consumerKey` varchar(75) DEFAULT NULL,
  `consumerSecret` longtext,
  `keyType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`oAuthConsumerId`),
  KEY `IX_47206618` (`gadgetKey`),
  KEY `IX_8E715BF8` (`gadgetKey`,`serviceName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OpenSocial_OAuthConsumer`
--

LOCK TABLES `OpenSocial_OAuthConsumer` WRITE;
/*!40000 ALTER TABLE `OpenSocial_OAuthConsumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `OpenSocial_OAuthConsumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OpenSocial_OAuthToken`
--

DROP TABLE IF EXISTS `OpenSocial_OAuthToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OpenSocial_OAuthToken` (
  `oAuthTokenId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `gadgetKey` varchar(75) DEFAULT NULL,
  `serviceName` varchar(75) DEFAULT NULL,
  `moduleId` bigint(20) DEFAULT NULL,
  `accessToken` varchar(75) DEFAULT NULL,
  `tokenName` varchar(75) DEFAULT NULL,
  `tokenSecret` varchar(75) DEFAULT NULL,
  `sessionHandle` varchar(75) DEFAULT NULL,
  `expiration` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`oAuthTokenId`),
  KEY `IX_6C8CCC3D` (`gadgetKey`,`serviceName`),
  KEY `IX_CDD35402` (`userId`,`gadgetKey`,`serviceName`,`moduleId`,`tokenName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OpenSocial_OAuthToken`
--

LOCK TABLES `OpenSocial_OAuthToken` WRITE;
/*!40000 ALTER TABLE `OpenSocial_OAuthToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `OpenSocial_OAuthToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrgGroupRole`
--

DROP TABLE IF EXISTS `OrgGroupRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrgGroupRole` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrgGroupRole`
--

LOCK TABLES `OrgGroupRole` WRITE;
/*!40000 ALTER TABLE `OrgGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrgGroupRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrgLabor`
--

DROP TABLE IF EXISTS `OrgLabor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrgLabor` (
  `orgLaborId` bigint(20) NOT NULL,
  `organizationId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sunOpen` int(11) DEFAULT NULL,
  `sunClose` int(11) DEFAULT NULL,
  `monOpen` int(11) DEFAULT NULL,
  `monClose` int(11) DEFAULT NULL,
  `tueOpen` int(11) DEFAULT NULL,
  `tueClose` int(11) DEFAULT NULL,
  `wedOpen` int(11) DEFAULT NULL,
  `wedClose` int(11) DEFAULT NULL,
  `thuOpen` int(11) DEFAULT NULL,
  `thuClose` int(11) DEFAULT NULL,
  `friOpen` int(11) DEFAULT NULL,
  `friClose` int(11) DEFAULT NULL,
  `satOpen` int(11) DEFAULT NULL,
  `satClose` int(11) DEFAULT NULL,
  PRIMARY KEY (`orgLaborId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrgLabor`
--

LOCK TABLES `OrgLabor` WRITE;
/*!40000 ALTER TABLE `OrgLabor` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrgLabor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Organization_`
--

DROP TABLE IF EXISTS `Organization_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Organization_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `organizationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentOrganizationId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `recursable` tinyint(4) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organization_`
--

LOCK TABLES `Organization_` WRITE;
/*!40000 ALTER TABLE `Organization_` DISABLE KEYS */;
/*!40000 ALTER TABLE `Organization_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasswordPolicy`
--

DROP TABLE IF EXISTS `PasswordPolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasswordPolicy` (
  `uuid_` varchar(75) DEFAULT NULL,
  `passwordPolicyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultPolicy` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeable` tinyint(4) DEFAULT NULL,
  `changeRequired` tinyint(4) DEFAULT NULL,
  `minAge` bigint(20) DEFAULT NULL,
  `checkSyntax` tinyint(4) DEFAULT NULL,
  `allowDictionaryWords` tinyint(4) DEFAULT NULL,
  `minAlphanumeric` int(11) DEFAULT NULL,
  `minLength` int(11) DEFAULT NULL,
  `minLowerCase` int(11) DEFAULT NULL,
  `minNumbers` int(11) DEFAULT NULL,
  `minSymbols` int(11) DEFAULT NULL,
  `minUpperCase` int(11) DEFAULT NULL,
  `regex` varchar(75) DEFAULT NULL,
  `history` tinyint(4) DEFAULT NULL,
  `historyCount` int(11) DEFAULT NULL,
  `expireable` tinyint(4) DEFAULT NULL,
  `maxAge` bigint(20) DEFAULT NULL,
  `warningTime` bigint(20) DEFAULT NULL,
  `graceLimit` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `maxFailure` int(11) DEFAULT NULL,
  `lockoutDuration` bigint(20) DEFAULT NULL,
  `requireUnlock` tinyint(4) DEFAULT NULL,
  `resetFailureCount` bigint(20) DEFAULT NULL,
  `resetTicketMaxAge` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordPolicy`
--

LOCK TABLES `PasswordPolicy` WRITE;
/*!40000 ALTER TABLE `PasswordPolicy` DISABLE KEYS */;
INSERT INTO `PasswordPolicy` VALUES ('cca2bb0e-ca18-45e4-a250-a81210eb82df',20198,20155,20159,'','2015-05-20 07:43:13','2015-05-20 07:43:13',1,'Default Password Policy','Default Password Policy',1,1,0,0,1,0,6,0,1,0,1,'(?=.{4})(?:[a-zA-Z0-9]*)',0,6,0,8640000,86400,0,0,3,0,1,600,86400);
/*!40000 ALTER TABLE `PasswordPolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasswordPolicyRel`
--

DROP TABLE IF EXISTS `PasswordPolicyRel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasswordPolicyRel` (
  `passwordPolicyRelId` bigint(20) NOT NULL,
  `passwordPolicyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyRelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordPolicyRel`
--

LOCK TABLES `PasswordPolicyRel` WRITE;
/*!40000 ALTER TABLE `PasswordPolicyRel` DISABLE KEYS */;
INSERT INTO `PasswordPolicyRel` VALUES (20201,20198,20005,20199),(20437,20198,20005,20435),(20820,20198,20005,20818),(20914,20198,20005,20912),(22353,20198,20005,22351);
/*!40000 ALTER TABLE `PasswordPolicyRel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasswordTracker`
--

DROP TABLE IF EXISTS `PasswordTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasswordTracker` (
  `passwordTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`passwordTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordTracker`
--

LOCK TABLES `PasswordTracker` WRITE;
/*!40000 ALTER TABLE `PasswordTracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `PasswordTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Phone`
--

DROP TABLE IF EXISTS `Phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Phone` (
  `uuid_` varchar(75) DEFAULT NULL,
  `phoneId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`phoneId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Phone`
--

LOCK TABLES `Phone` WRITE;
/*!40000 ALTER TABLE `Phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `Phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PluginSetting`
--

DROP TABLE IF EXISTS `PluginSetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PluginSetting` (
  `pluginSettingId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `pluginId` varchar(75) DEFAULT NULL,
  `pluginType` varchar(75) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pluginSettingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PluginSetting`
--

LOCK TABLES `PluginSetting` WRITE;
/*!40000 ALTER TABLE `PluginSetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `PluginSetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PollsChoice`
--

DROP TABLE IF EXISTS `PollsChoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PollsChoice` (
  `uuid_` varchar(75) DEFAULT NULL,
  `choiceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`choiceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PollsChoice`
--

LOCK TABLES `PollsChoice` WRITE;
/*!40000 ALTER TABLE `PollsChoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsChoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PollsQuestion`
--

DROP TABLE IF EXISTS `PollsQuestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PollsQuestion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `questionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `expirationDate` datetime DEFAULT NULL,
  `lastVoteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`questionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PollsQuestion`
--

LOCK TABLES `PollsQuestion` WRITE;
/*!40000 ALTER TABLE `PollsQuestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsQuestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PollsVote`
--

DROP TABLE IF EXISTS `PollsVote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PollsVote` (
  `uuid_` varchar(75) DEFAULT NULL,
  `voteId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `choiceId` bigint(20) DEFAULT NULL,
  `voteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`voteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PollsVote`
--

LOCK TABLES `PollsVote` WRITE;
/*!40000 ALTER TABLE `PollsVote` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsVote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PortalPreferences`
--

DROP TABLE IF EXISTS `PortalPreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PortalPreferences` (
  `portalPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portalPreferencesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortalPreferences`
--

LOCK TABLES `PortalPreferences` WRITE;
/*!40000 ALTER TABLE `PortalPreferences` DISABLE KEYS */;
INSERT INTO `PortalPreferences` VALUES (20154,0,1,'<portlet-preferences><preference><name>mail.session.mail.advanced.properties</name><value></value></preference><preference><name>mail.session.mail.pop3.port</name><value>110</value></preference><preference><name>mail.session.mail.pop3.password</name><value>Col54226</value></preference><preference><name>mail.session.mail.smtp.host</name><value>smtp.gmail.com</value></preference><preference><name>mail.session.mail.pop3.user</name><value>edicson@billingbuddy.com</value></preference><preference><name>mail.session.mail.store.protocol</name><value>pop3</value></preference><preference><name>mail.session.mail.pop3.host</name><value>localhost</value></preference><preference><name>mail.session.mail.transport.protocol</name><value>smtps</value></preference><preference><name>mail.session.mail</name><value>true</value></preference><preference><name>mail.session.mail.smtp.user</name><value>noreply@billingbuddy.com</value></preference><preference><name>mail.session.mail.smtp.password</name><value>BillingBuddy15</value></preference><preference><name>mail.session.mail.smtp.port</name><value>465</value></preference></portlet-preferences>'),(20161,20155,1,'<portlet-preferences><preference><name>default.landing.page.path</name><value>/group/guest/administration</value></preference><preference><name>admin.email.verification.subject</name><value>[$PORTAL_URL$]: Email Address Verification</value></preference><preference><name>admin.email.password.reset.subject</name><value>[$PORTAL_URL$]: Reset Your Password</value></preference><preference><name>company.security.strangers.verify</name><value>true</value></preference><preference><name>admin.email.password.sent.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Your new password for [$PORTAL_URL$] is [$USER_PASSWORD$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]The request for a new password was made from [$REMOTE_ADDRESS$] / [$REMOTE_HOST$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>admin.email.user.added.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Welcome! You recently created an account at [$PORTAL_URL$]. Your password is [$USER_PASSWORD$]. Enjoy!&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>company.security.strangers</name><value>true</value></preference><preference><name>admin.email.verification.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Please verify your email address for [$PORTAL_URL$] at [$EMAIL_VERIFICATION_URL$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Your verification code is [$EMAIL_VERIFICATION_CODE$] Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>admin.email.password.reset.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]You can reset your password for [$PORTAL_URL$] at [$PASSWORD_RESET_URL$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]The request for a new password was made from [$REMOTE_ADDRESS$] / [$REMOTE_HOST$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>admin.default.role.names</name><value>Power User[$NEW_LINE$]User</value></preference><preference><name>admin.analytics.types</name><value>google[$NEW_LINE$]piwik</value></preference><preference><name>company.security.auth.type</name><value>emailAddress</value></preference><preference><name>admin.email.user.added.subject</name><value>[$PORTAL_URL$]: Your New Account</value></preference><preference><name>admin.email.password.sent.subject</name><value>[$PORTAL_URL$]: Your New Password</value></preference><preference><name>company.security.send.password</name><value>true</value></preference><preference><name>locales</name><value>ca_ES,zh_CN,en_US,fi_FI,fr_FR,de_DE,iw_IL,hu_HU,ja_JP,pt_BR,es_ES</value></preference><preference><name>ldap.server.ids</name><value></value></preference><preference><name>company.security.site.logo</name><value>true</value></preference><preference><name>admin.email.user.added.no.password.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Welcome! You recently created an account at [$PORTAL_URL$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>company.security.auto.login</name><value>true</value></preference><preference><name>company.security.strangers.with.mx</name><value>true</value></preference></portlet-preferences>'),(20656,20435,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#_145_portletCategory7</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_addpanel_tab</name><value>applications</value></preference><preference><name>125#users-order-by-col</name><value>last-name</value></preference><preference><name>com.liferay.portal.util.SessionClicks#_145_portletCategory8</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#_145_portletCategory1</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#_145_portletCategory2</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-site_administration.content</name><value>closed</value></preference><preference><name>com.liferay.portal.util.SessionClicks#_145_portletCategory0</name><value>closed</value></preference><preference><name>com.liferay.portal.util.SessionClicks#usersAdminUsersPanel</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-site_administration.pages</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-site_administration.configuration</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_toggle_controls</name><value>visible</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_addpanel_displaystyle</name><value>list</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-site_administration.users</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#p_auth</name><value>O2ul0tI1</value></preference><preference><name>125#users-order-by-type</name><value>asc</value></preference><preference><name>com.liferay.portal.util.SessionClicks#dockbarMessagesHidden</name><value>1</value></preference></portlet-preferences>'),(20671,20159,4,'<portlet-preferences />'),(20832,20818,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#liferay_toggle_controls</name><value>hidden</value></preference><preference><name>com.liferay.portal.util.SessionClicks#p_auth</name><value>3fdsrEGj</value></preference></portlet-preferences>'),(20926,20912,4,'<portlet-preferences />');
/*!40000 ALTER TABLE `PortalPreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Portlet`
--

DROP TABLE IF EXISTS `Portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Portlet` (
  `id_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Portlet`
--

LOCK TABLES `Portlet` WRITE;
/*!40000 ALTER TABLE `Portlet` DISABLE KEYS */;
INSERT INTO `Portlet` VALUES (20207,20155,'193','',1),(20208,20155,'194','',1),(20209,20155,'110','',1),(20210,20155,'114','',1),(20211,20155,'115','',1),(20212,20155,'116','',1),(20213,20155,'118','',1),(20214,20155,'97','',1),(20215,20155,'98','',0),(20216,20155,'11','',1),(20217,20155,'99','',1),(20218,20155,'15','',1),(20219,20155,'16','',1),(20220,20155,'19','',1),(20221,20155,'121','',1),(20222,20155,'122','',1),(20223,20155,'3','',1),(20224,20155,'125','',1),(20225,20155,'127','',1),(20226,20155,'128','',1),(20227,20155,'129','',1),(20228,20155,'9','',1),(20229,20155,'20','',1),(20230,20155,'23','',1),(20231,20155,'25','',1),(20232,20155,'26','',1),(20233,20155,'27','',1),(20234,20155,'28','',1),(20235,20155,'29','',1),(20236,20155,'130','',1),(20237,20155,'131','',1),(20238,20155,'132','',1),(20239,20155,'134','',1),(20240,20155,'135','',1),(20241,20155,'137','',1),(20242,20155,'30','',1),(20243,20155,'31','',1),(20244,20155,'33','',1),(20245,20155,'34','',1),(20246,20155,'36','',1),(20247,20155,'39','',1),(20248,20155,'141','',1),(20249,20155,'143','',1),(20250,20155,'146','',1),(20251,20155,'147','',1),(20252,20155,'148','',1),(20253,20155,'149','',1),(20254,20155,'47','',1),(20255,20155,'48','',1),(20256,20155,'150','',1),(20257,20155,'151','',1),(20258,20155,'152','',1),(20259,20155,'153','',1),(20260,20155,'154','',1),(20261,20155,'157','',1),(20262,20155,'158','',1),(20263,20155,'50','',1),(20264,20155,'54','',1),(20265,20155,'56','',1),(20266,20155,'58','',1),(20267,20155,'59','',1),(20268,20155,'161','',1),(20269,20155,'162','',1),(20270,20155,'164','',1),(20271,20155,'166','',1),(20272,20155,'167','',1),(20273,20155,'169','',1),(20274,20155,'61','',1),(20275,20155,'62','',0),(20276,20155,'64','',1),(20277,20155,'66','',1),(20278,20155,'67','',1),(20279,20155,'173','',0),(20280,20155,'175','',1),(20281,20155,'176','',1),(20282,20155,'178','',1),(20283,20155,'179','',1),(20284,20155,'70','',1),(20285,20155,'71','',1),(20286,20155,'73','',1),(20287,20155,'77','',1),(20288,20155,'180','',1),(20289,20155,'181','',1),(20290,20155,'182','',1),(20291,20155,'183','',1),(20292,20155,'184','',1),(20293,20155,'186','',1),(20294,20155,'187','',1),(20295,20155,'100','',1),(20296,20155,'188','',1),(20297,20155,'101','',1),(20298,20155,'102','',1),(20299,20155,'107','',1),(20300,20155,'108','',1),(20301,20155,'82','',1),(20302,20155,'83','',1),(20303,20155,'84','',1),(20304,20155,'85','',1),(20501,20155,'1_WAR_notificationsportlet','',1),(20508,20155,'1_WAR_calendarportlet','',1),(20509,20155,'1_WAR_webformportlet','',1),(20510,20155,'dockbarnotificationaction_WAR_DockBarCustomNotificationportlet','',1),(20650,20155,'1_WAR_opensocialportlet','',1),(20651,20155,'2_WAR_opensocialportlet','',1),(20652,20155,'3_WAR_opensocialportlet','',1),(20653,20155,'4_WAR_opensocialportlet','',1),(20756,20155,'SchedulerJobs_WAR_SchedulerJobsportlet','',1),(34715,20155,'Susbcription_WAR_Suscriptionportlet','',1),(34720,20155,'Subscriptions_WAR_Subscriptionsportlet','',1),(35227,20155,'Customer_WAR_Customerportlet','',1);
/*!40000 ALTER TABLE `Portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PortletItem`
--

DROP TABLE IF EXISTS `PortletItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PortletItem` (
  `portletItemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`portletItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortletItem`
--

LOCK TABLES `PortletItem` WRITE;
/*!40000 ALTER TABLE `PortletItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `PortletItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PortletPreferences`
--

DROP TABLE IF EXISTS `PortletPreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PortletPreferences` (
  `portletPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portletPreferencesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortletPreferences`
--

LOCK TABLES `PortletPreferences` WRITE;
/*!40000 ALTER TABLE `PortletPreferences` DISABLE KEYS */;
INSERT INTO `PortletPreferences` VALUES (20329,0,3,20322,'148_INSTANCE_SeyG3ebbnObU','<portlet-preferences><preference><name>displayStyle</name><value>cloud</value></preference><preference><name>showAssetCount</name><value>true</value></preference><preference><name>maxAssetTags</name><value>10</value></preference><preference><name>showZeroAssetCount</name><value>false</value></preference><preference><name>classNameId</name><value>20007</value></preference></portlet-preferences>'),(20350,0,3,20344,'141_INSTANCE_w3B3vvLJjfog','<portlet-preferences><preference><name>showAssetCount</name><value>true</value></preference><preference><name>classNameId</name><value>20016</value></preference></portlet-preferences>'),(20369,0,3,20363,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(20370,0,3,20363,'101_INSTANCE_nRGnD8Aawroy','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference><preference><name>anyAssetType</name><value>false</value></preference></portlet-preferences>'),(20395,0,3,20389,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(20396,0,3,20389,'82','<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),(20397,0,3,20389,'101_INSTANCE_nLGpx0BJGpfz','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),(20404,0,3,20398,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(20405,0,3,20398,'101_INSTANCE_gescd2ll4pDY','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference><preference><name>anyAssetType</name><value>false</value></preference></portlet-preferences>'),(20412,0,3,20406,'39_INSTANCE_RQoVTsr6Ku1T','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference></portlet-preferences>'),(20413,0,3,20406,'39_INSTANCE_VYMMjxrC66yw','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference></portlet-preferences>'),(20538,20182,2,0,'20','<portlet-preferences />'),(20612,20182,2,0,'15','<portlet-preferences />'),(20657,0,3,20623,'145','<portlet-preferences />'),(20658,0,3,20623,'2_WAR_notificationsportlet','<portlet-preferences />'),(20665,0,3,20176,'190','<portlet-preferences />'),(20666,0,3,20176,'145','<portlet-preferences />'),(20667,0,3,20176,'2_WAR_notificationsportlet','<portlet-preferences />'),(20668,0,3,20176,'134','<portlet-preferences />'),(20669,0,3,20176,'160','<portlet-preferences />'),(20670,0,3,20176,'156','<portlet-preferences />'),(20677,0,3,20623,'58','<portlet-preferences />'),(20689,0,3,20176,'165','<portlet-preferences />'),(20690,0,3,20176,'146','<portlet-preferences />'),(20748,0,3,20176,'2','<portlet-preferences />'),(20749,0,3,20176,'174','<portlet-preferences />'),(20750,0,3,20176,'128','<portlet-preferences />'),(20752,0,3,20176,'153','<portlet-preferences />'),(20753,0,3,20176,'158','<portlet-preferences />'),(20755,0,3,20176,'130','<portlet-preferences />'),(20761,0,3,20176,'127','<portlet-preferences />'),(20766,0,3,20176,'125','<portlet-preferences />'),(20773,0,3,20176,'139','<portlet-preferences />'),(20817,0,3,20176,'86','<portlet-preferences />'),(22286,0,3,20176,'135','<portlet-preferences />'),(22287,0,3,20176,'137','<portlet-preferences />'),(34721,0,3,20176,'149','<portlet-preferences />'),(35241,0,3,35235,'145','<portlet-preferences />'),(35242,0,3,35235,'2_WAR_notificationsportlet','<portlet-preferences />'),(35253,0,3,35235,'Customer_WAR_Customerportlet','<portlet-preferences />'),(35262,0,3,35255,'Customer_WAR_Customerportlet','<portlet-preferences />'),(35263,0,3,35255,'145','<portlet-preferences />'),(35264,0,3,35255,'2_WAR_notificationsportlet','<portlet-preferences />'),(37321,0,3,37315,'145','<portlet-preferences />'),(37322,0,3,37315,'2_WAR_notificationsportlet','<portlet-preferences />'),(37333,0,3,37315,'Subscriptions_WAR_Subscriptionsportlet','<portlet-preferences />'),(37354,0,3,37348,'145','<portlet-preferences />'),(37355,0,3,37348,'2_WAR_notificationsportlet','<portlet-preferences />'),(37367,0,3,37348,'SchedulerJobs_WAR_SchedulerJobsportlet','<portlet-preferences />'),(37375,0,3,37368,'SchedulerJobs_WAR_SchedulerJobsportlet','<portlet-preferences />'),(37383,0,3,37376,'Subscriptions_WAR_Subscriptionsportlet','<portlet-preferences />'),(37384,0,3,37368,'145','<portlet-preferences />'),(37385,0,3,37368,'2_WAR_notificationsportlet','<portlet-preferences />'),(37386,0,3,37376,'145','<portlet-preferences />'),(37387,0,3,37376,'2_WAR_notificationsportlet','<portlet-preferences />');
/*!40000 ALTER TABLE `PortletPreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QUARTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QUARTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` longblob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_CALENDARS`
--

LOCK TABLES `QUARTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_CRON_TRIGGERS`
--

LOCK TABLES `QUARTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` tinyint(4) DEFAULT NULL,
  `REQUESTS_RECOVERY` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IX_BE3835E5` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_4BD722BM` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_204D31E8` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IX_339E078M` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IX_5005E3AF` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_BC2F03B0` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QUARTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QUARTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` tinyint(4) NOT NULL,
  `IS_NONCONCURRENT` tinyint(4) NOT NULL,
  `IS_UPDATE_DATA` tinyint(4) NOT NULL,
  `REQUESTS_RECOVERY` tinyint(4) NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_88328984` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_779BCA37` (`SCHED_NAME`,`REQUESTS_RECOVERY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_JOB_DETAILS`
--

LOCK TABLES `QUARTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_LOCKS`
--

DROP TABLE IF EXISTS `QUARTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_LOCKS`
--

LOCK TABLES `QUARTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_LOCKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QUARTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QUARTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QUARTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SCHEDULER_STATE`
--

LOCK TABLES `QUARTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QUARTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` tinyint(4) DEFAULT NULL,
  `BOOL_PROP_2` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QUARTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` int(11) DEFAULT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_186442A4` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_1BA1F9DC` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_91CA7CCE` (`SCHED_NAME`,`TRIGGER_GROUP`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_D219AFDE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_A85822A0` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_8AA50BE1` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_EEFE382A` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IX_F026CF4C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IX_F2DD7C7E` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_1F92813C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`MISFIRE_INSTR`),
  KEY `IX_99108B6E` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IX_CD7132D0` (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_TRIGGERS`
--

LOCK TABLES `QUARTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RatingsEntry`
--

DROP TABLE IF EXISTS `RatingsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RatingsEntry` (
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RatingsEntry`
--

LOCK TABLES `RatingsEntry` WRITE;
/*!40000 ALTER TABLE `RatingsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `RatingsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RatingsStats`
--

DROP TABLE IF EXISTS `RatingsStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RatingsStats` (
  `statsId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `totalScore` double DEFAULT NULL,
  `averageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RatingsStats`
--

LOCK TABLES `RatingsStats` WRITE;
/*!40000 ALTER TABLE `RatingsStats` DISABLE KEYS */;
/*!40000 ALTER TABLE `RatingsStats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Region`
--

DROP TABLE IF EXISTS `Region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Region` (
  `regionId` bigint(20) NOT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `regionCode` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`regionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Region`
--

LOCK TABLES `Region` WRITE;
/*!40000 ALTER TABLE `Region` DISABLE KEYS */;
INSERT INTO `Region` VALUES (1001,1,'AB','Alberta',1),(1002,1,'BC','British Columbia',1),(1003,1,'MB','Manitoba',1),(1004,1,'NB','New Brunswick',1),(1005,1,'NL','Newfoundland and Labrador',1),(1006,1,'NT','Northwest Territories',1),(1007,1,'NS','Nova Scotia',1),(1008,1,'NU','Nunavut',1),(1009,1,'ON','Ontario',1),(1010,1,'PE','Prince Edward Island',1),(1011,1,'QC','Quebec',1),(1012,1,'SK','Saskatchewan',1),(1013,1,'YT','Yukon',1),(2001,2,'CN-34','Anhui',1),(2002,2,'CN-92','Aomen',1),(2003,2,'CN-11','Beijing',1),(2004,2,'CN-50','Chongqing',1),(2005,2,'CN-35','Fujian',1),(2006,2,'CN-62','Gansu',1),(2007,2,'CN-44','Guangdong',1),(2008,2,'CN-45','Guangxi',1),(2009,2,'CN-52','Guizhou',1),(2010,2,'CN-46','Hainan',1),(2011,2,'CN-13','Hebei',1),(2012,2,'CN-23','Heilongjiang',1),(2013,2,'CN-41','Henan',1),(2014,2,'CN-42','Hubei',1),(2015,2,'CN-43','Hunan',1),(2016,2,'CN-32','Jiangsu',1),(2017,2,'CN-36','Jiangxi',1),(2018,2,'CN-22','Jilin',1),(2019,2,'CN-21','Liaoning',1),(2020,2,'CN-15','Nei Mongol',1),(2021,2,'CN-64','Ningxia',1),(2022,2,'CN-63','Qinghai',1),(2023,2,'CN-61','Shaanxi',1),(2024,2,'CN-37','Shandong',1),(2025,2,'CN-31','Shanghai',1),(2026,2,'CN-14','Shanxi',1),(2027,2,'CN-51','Sichuan',1),(2028,2,'CN-71','Taiwan',1),(2029,2,'CN-12','Tianjin',1),(2030,2,'CN-91','Xianggang',1),(2031,2,'CN-65','Xinjiang',1),(2032,2,'CN-54','Xizang',1),(2033,2,'CN-53','Yunnan',1),(2034,2,'CN-33','Zhejiang',1),(3001,3,'A','Alsace',1),(3002,3,'B','Aquitaine',1),(3003,3,'C','Auvergne',1),(3004,3,'P','Basse-Normandie',1),(3005,3,'D','Bourgogne',1),(3006,3,'E','Bretagne',1),(3007,3,'F','Centre',1),(3008,3,'G','Champagne-Ardenne',1),(3009,3,'H','Corse',1),(3010,3,'GF','Guyane',1),(3011,3,'I','Franche Comté',1),(3012,3,'GP','Guadeloupe',1),(3013,3,'Q','Haute-Normandie',1),(3014,3,'J','Île-de-France',1),(3015,3,'K','Languedoc-Roussillon',1),(3016,3,'L','Limousin',1),(3017,3,'M','Lorraine',1),(3018,3,'MQ','Martinique',1),(3019,3,'N','Midi-Pyrénées',1),(3020,3,'O','Nord Pas de Calais',1),(3021,3,'R','Pays de la Loire',1),(3022,3,'S','Picardie',1),(3023,3,'T','Poitou-Charentes',1),(3024,3,'U','Provence-Alpes-Côte-d\'Azur',1),(3025,3,'RE','Réunion',1),(3026,3,'V','Rhône-Alpes',1),(4001,4,'BW','Baden-Württemberg',1),(4002,4,'BY','Bayern',1),(4003,4,'BE','Berlin',1),(4004,4,'BB','Brandenburg',1),(4005,4,'HB','Bremen',1),(4006,4,'HH','Hamburg',1),(4007,4,'HE','Hessen',1),(4008,4,'MV','Mecklenburg-Vorpommern',1),(4009,4,'NI','Niedersachsen',1),(4010,4,'NW','Nordrhein-Westfalen',1),(4011,4,'RP','Rheinland-Pfalz',1),(4012,4,'SL','Saarland',1),(4013,4,'SN','Sachsen',1),(4014,4,'ST','Sachsen-Anhalt',1),(4015,4,'SH','Schleswig-Holstein',1),(4016,4,'TH','Thüringen',1),(8001,8,'AG','Agrigento',1),(8002,8,'AL','Alessandria',1),(8003,8,'AN','Ancona',1),(8004,8,'AO','Aosta',1),(8005,8,'AR','Arezzo',1),(8006,8,'AP','Ascoli Piceno',1),(8007,8,'AT','Asti',1),(8008,8,'AV','Avellino',1),(8009,8,'BA','Bari',1),(8010,8,'BT','Barletta-Andria-Trani',1),(8011,8,'BL','Belluno',1),(8012,8,'BN','Benevento',1),(8013,8,'BG','Bergamo',1),(8014,8,'BI','Biella',1),(8015,8,'BO','Bologna',1),(8016,8,'BZ','Bolzano',1),(8017,8,'BS','Brescia',1),(8018,8,'BR','Brindisi',1),(8019,8,'CA','Cagliari',1),(8020,8,'CL','Caltanissetta',1),(8021,8,'CB','Campobasso',1),(8022,8,'CI','Carbonia-Iglesias',1),(8023,8,'CE','Caserta',1),(8024,8,'CT','Catania',1),(8025,8,'CZ','Catanzaro',1),(8026,8,'CH','Chieti',1),(8027,8,'CO','Como',1),(8028,8,'CS','Cosenza',1),(8029,8,'CR','Cremona',1),(8030,8,'KR','Crotone',1),(8031,8,'CN','Cuneo',1),(8032,8,'EN','Enna',1),(8033,8,'FM','Fermo',1),(8034,8,'FE','Ferrara',1),(8035,8,'FI','Firenze',1),(8036,8,'FG','Foggia',1),(8037,8,'FC','Forli-Cesena',1),(8038,8,'FR','Frosinone',1),(8039,8,'GE','Genova',1),(8040,8,'GO','Gorizia',1),(8041,8,'GR','Grosseto',1),(8042,8,'IM','Imperia',1),(8043,8,'IS','Isernia',1),(8044,8,'AQ','L\'Aquila',1),(8045,8,'SP','La Spezia',1),(8046,8,'LT','Latina',1),(8047,8,'LE','Lecce',1),(8048,8,'LC','Lecco',1),(8049,8,'LI','Livorno',1),(8050,8,'LO','Lodi',1),(8051,8,'LU','Lucca',1),(8052,8,'MC','Macerata',1),(8053,8,'MN','Mantova',1),(8054,8,'MS','Massa-Carrara',1),(8055,8,'MT','Matera',1),(8056,8,'MA','Medio Campidano',1),(8057,8,'ME','Messina',1),(8058,8,'MI','Milano',1),(8059,8,'MO','Modena',1),(8060,8,'MB','Monza e Brianza',1),(8061,8,'NA','Napoli',1),(8062,8,'NO','Novara',1),(8063,8,'NU','Nuoro',1),(8064,8,'OG','Ogliastra',1),(8065,8,'OT','Olbia-Tempio',1),(8066,8,'OR','Oristano',1),(8067,8,'PD','Padova',1),(8068,8,'PA','Palermo',1),(8069,8,'PR','Parma',1),(8070,8,'PV','Pavia',1),(8071,8,'PG','Perugia',1),(8072,8,'PU','Pesaro e Urbino',1),(8073,8,'PE','Pescara',1),(8074,8,'PC','Piacenza',1),(8075,8,'PI','Pisa',1),(8076,8,'PT','Pistoia',1),(8077,8,'PN','Pordenone',1),(8078,8,'PZ','Potenza',1),(8079,8,'PO','Prato',1),(8080,8,'RG','Ragusa',1),(8081,8,'RA','Ravenna',1),(8082,8,'RC','Reggio Calabria',1),(8083,8,'RE','Reggio Emilia',1),(8084,8,'RI','Rieti',1),(8085,8,'RN','Rimini',1),(8086,8,'RM','Roma',1),(8087,8,'RO','Rovigo',1),(8088,8,'SA','Salerno',1),(8089,8,'SS','Sassari',1),(8090,8,'SV','Savona',1),(8091,8,'SI','Siena',1),(8092,8,'SR','Siracusa',1),(8093,8,'SO','Sondrio',1),(8094,8,'TA','Taranto',1),(8095,8,'TE','Teramo',1),(8096,8,'TR','Terni',1),(8097,8,'TO','Torino',1),(8098,8,'TP','Trapani',1),(8099,8,'TN','Trento',1),(8100,8,'TV','Treviso',1),(8101,8,'TS','Trieste',1),(8102,8,'UD','Udine',1),(8103,8,'VA','Varese',1),(8104,8,'VE','Venezia',1),(8105,8,'VB','Verbano-Cusio-Ossola',1),(8106,8,'VC','Vercelli',1),(8107,8,'VR','Verona',1),(8108,8,'VV','Vibo Valentia',1),(8109,8,'VI','Vicenza',1),(8110,8,'VT','Viterbo',1),(11001,11,'DR','Drenthe',1),(11002,11,'FL','Flevoland',1),(11003,11,'FR','Friesland',1),(11004,11,'GE','Gelderland',1),(11005,11,'GR','Groningen',1),(11006,11,'LI','Limburg',1),(11007,11,'NB','Noord-Brabant',1),(11008,11,'NH','Noord-Holland',1),(11009,11,'OV','Overijssel',1),(11010,11,'UT','Utrecht',1),(11011,11,'ZE','Zeeland',1),(11012,11,'ZH','Zuid-Holland',1),(15001,15,'AN','Andalusia',1),(15002,15,'AR','Aragon',1),(15003,15,'AS','Asturias',1),(15004,15,'IB','Balearic Islands',1),(15005,15,'PV','Basque Country',1),(15006,15,'CN','Canary Islands',1),(15007,15,'CB','Cantabria',1),(15008,15,'CL','Castile and Leon',1),(15009,15,'CM','Castile-La Mancha',1),(15010,15,'CT','Catalonia',1),(15011,15,'CE','Ceuta',1),(15012,15,'EX','Extremadura',1),(15013,15,'GA','Galicia',1),(15014,15,'LO','La Rioja',1),(15015,15,'M','Madrid',1),(15016,15,'ML','Melilla',1),(15017,15,'MU','Murcia',1),(15018,15,'NA','Navarra',1),(15019,15,'VC','Valencia',1),(19001,19,'AL','Alabama',1),(19002,19,'AK','Alaska',1),(19003,19,'AZ','Arizona',1),(19004,19,'AR','Arkansas',1),(19005,19,'CA','California',1),(19006,19,'CO','Colorado',1),(19007,19,'CT','Connecticut',1),(19008,19,'DC','District of Columbia',1),(19009,19,'DE','Delaware',1),(19010,19,'FL','Florida',1),(19011,19,'GA','Georgia',1),(19012,19,'HI','Hawaii',1),(19013,19,'ID','Idaho',1),(19014,19,'IL','Illinois',1),(19015,19,'IN','Indiana',1),(19016,19,'IA','Iowa',1),(19017,19,'KS','Kansas',1),(19018,19,'KY','Kentucky ',1),(19019,19,'LA','Louisiana ',1),(19020,19,'ME','Maine',1),(19021,19,'MD','Maryland',1),(19022,19,'MA','Massachusetts',1),(19023,19,'MI','Michigan',1),(19024,19,'MN','Minnesota',1),(19025,19,'MS','Mississippi',1),(19026,19,'MO','Missouri',1),(19027,19,'MT','Montana',1),(19028,19,'NE','Nebraska',1),(19029,19,'NV','Nevada',1),(19030,19,'NH','New Hampshire',1),(19031,19,'NJ','New Jersey',1),(19032,19,'NM','New Mexico',1),(19033,19,'NY','New York',1),(19034,19,'NC','North Carolina',1),(19035,19,'ND','North Dakota',1),(19036,19,'OH','Ohio',1),(19037,19,'OK','Oklahoma ',1),(19038,19,'OR','Oregon',1),(19039,19,'PA','Pennsylvania',1),(19040,19,'PR','Puerto Rico',1),(19041,19,'RI','Rhode Island',1),(19042,19,'SC','South Carolina',1),(19043,19,'SD','South Dakota',1),(19044,19,'TN','Tennessee',1),(19045,19,'TX','Texas',1),(19046,19,'UT','Utah',1),(19047,19,'VT','Vermont',1),(19048,19,'VA','Virginia',1),(19049,19,'WA','Washington',1),(19050,19,'WV','West Virginia',1),(19051,19,'WI','Wisconsin',1),(19052,19,'WY','Wyoming',1),(32001,32,'ACT','Australian Capital Territory',1),(32002,32,'NSW','New South Wales',1),(32003,32,'NT','Northern Territory',1),(32004,32,'QLD','Queensland',1),(32005,32,'SA','South Australia',1),(32006,32,'TAS','Tasmania',1),(32007,32,'VIC','Victoria',1),(32008,32,'WA','Western Australia',1),(144001,144,'MX-AGS','Aguascalientes',1),(144002,144,'MX-BCN','Baja California',1),(144003,144,'MX-BCS','Baja California Sur',1),(144004,144,'MX-CAM','Campeche',1),(144005,144,'MX-CHP','Chiapas',1),(144006,144,'MX-CHI','Chihuahua',1),(144007,144,'MX-COA','Coahuila',1),(144008,144,'MX-COL','Colima',1),(144009,144,'MX-DUR','Durango',1),(144010,144,'MX-GTO','Guanajuato',1),(144011,144,'MX-GRO','Guerrero',1),(144012,144,'MX-HGO','Hidalgo',1),(144013,144,'MX-JAL','Jalisco',1),(144014,144,'MX-MEX','Mexico',1),(144015,144,'MX-MIC','Michoacan',1),(144016,144,'MX-MOR','Morelos',1),(144017,144,'MX-NAY','Nayarit',1),(144018,144,'MX-NLE','Nuevo Leon',1),(144019,144,'MX-OAX','Oaxaca',1),(144020,144,'MX-PUE','Puebla',1),(144021,144,'MX-QRO','Queretaro',1),(144023,144,'MX-ROO','Quintana Roo',1),(144024,144,'MX-SLP','San Luis Potosí',1),(144025,144,'MX-SIN','Sinaloa',1),(144026,144,'MX-SON','Sonora',1),(144027,144,'MX-TAB','Tabasco',1),(144028,144,'MX-TAM','Tamaulipas',1),(144029,144,'MX-TLX','Tlaxcala',1),(144030,144,'MX-VER','Veracruz',1),(144031,144,'MX-YUC','Yucatan',1),(144032,144,'MX-ZAC','Zacatecas',1),(164001,164,'01','Østfold',1),(164002,164,'02','Akershus',1),(164003,164,'03','Oslo',1),(164004,164,'04','Hedmark',1),(164005,164,'05','Oppland',1),(164006,164,'06','Buskerud',1),(164007,164,'07','Vestfold',1),(164008,164,'08','Telemark',1),(164009,164,'09','Aust-Agder',1),(164010,164,'10','Vest-Agder',1),(164011,164,'11','Rogaland',1),(164012,164,'12','Hordaland',1),(164013,164,'14','Sogn og Fjordane',1),(164014,164,'15','Møre of Romsdal',1),(164015,164,'16','Sør-Trøndelag',1),(164016,164,'17','Nord-Trøndelag',1),(164017,164,'18','Nordland',1),(164018,164,'19','Troms',1),(164019,164,'20','Finnmark',1),(202001,202,'AG','Aargau',1),(202002,202,'AR','Appenzell Ausserrhoden',1),(202003,202,'AI','Appenzell Innerrhoden',1),(202004,202,'BL','Basel-Landschaft',1),(202005,202,'BS','Basel-Stadt',1),(202006,202,'BE','Bern',1),(202007,202,'FR','Fribourg',1),(202008,202,'GE','Geneva',1),(202009,202,'GL','Glarus',1),(202010,202,'GR','Graubünden',1),(202011,202,'JU','Jura',1),(202012,202,'LU','Lucerne',1),(202013,202,'NE','Neuchâtel',1),(202014,202,'NW','Nidwalden',1),(202015,202,'OW','Obwalden',1),(202016,202,'SH','Schaffhausen',1),(202017,202,'SZ','Schwyz',1),(202018,202,'SO','Solothurn',1),(202019,202,'SG','St. Gallen',1),(202020,202,'TG','Thurgau',1),(202021,202,'TI','Ticino',1),(202022,202,'UR','Uri',1),(202023,202,'VS','Valais',1),(202024,202,'VD','Vaud',1),(202025,202,'ZG','Zug',1),(202026,202,'ZH','Zürich',1);
/*!40000 ALTER TABLE `Region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Release_`
--

DROP TABLE IF EXISTS `Release_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Release_` (
  `releaseId` bigint(20) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `servletContextName` varchar(75) DEFAULT NULL,
  `buildNumber` int(11) DEFAULT NULL,
  `buildDate` datetime DEFAULT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `state_` int(11) DEFAULT NULL,
  `testString` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`releaseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Release_`
--

LOCK TABLES `Release_` WRITE;
/*!40000 ALTER TABLE `Release_` DISABLE KEYS */;
INSERT INTO `Release_` VALUES (1,'2015-05-20 17:41:32','2015-05-29 19:02:41','portal',6203,'2015-05-29 19:02:41',1,0,'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.'),(20446,'2015-05-20 07:44:55','2015-05-29 19:02:59','marketplace-portlet',100,NULL,1,0,''),(20468,'2015-05-20 07:45:27','2015-05-29 19:03:05','kaleo-web',110,NULL,1,0,''),(20500,'2015-05-20 07:45:33','2015-05-29 19:03:06','notifications-portlet',110,NULL,1,0,''),(20507,'2015-05-20 07:45:46','2015-05-29 19:03:14','calendar-portlet',100,NULL,1,0,'');
/*!40000 ALTER TABLE `Release_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Repository`
--

DROP TABLE IF EXISTS `Repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Repository` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `portletId` varchar(200) DEFAULT NULL,
  `typeSettings` longtext,
  `dlFolderId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`repositoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Repository`
--

LOCK TABLES `Repository` WRITE;
/*!40000 ALTER TABLE `Repository` DISABLE KEYS */;
INSERT INTO `Repository` VALUES ('eaccce6d-5aac-4aef-bfa8-87a97443e99d',22254,20438,20155,20159,'','2015-05-20 11:41:42','2015-05-20 11:41:42',20529,'20','','20','',22255),('13d6907c-a37e-4f1f-b62a-a52e1590cb78',22272,20195,20155,20159,'','2015-05-20 11:44:01','2015-05-20 11:44:01',20529,'20','','20','',22273);
/*!40000 ALTER TABLE `Repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RepositoryEntry`
--

DROP TABLE IF EXISTS `RepositoryEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RepositoryEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mappedId` varchar(75) DEFAULT NULL,
  `manualCheckInRequired` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`repositoryEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RepositoryEntry`
--

LOCK TABLES `RepositoryEntry` WRITE;
/*!40000 ALTER TABLE `RepositoryEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `RepositoryEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceAction`
--

DROP TABLE IF EXISTS `ResourceAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceAction` (
  `resourceActionId` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `bitwiseValue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceActionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceAction`
--

LOCK TABLES `ResourceAction` WRITE;
/*!40000 ALTER TABLE `ResourceAction` DISABLE KEYS */;
INSERT INTO `ResourceAction` VALUES (1,'com.liferay.portlet.polls','ADD_QUESTION',2),(2,'com.liferay.portlet.polls','PERMISSIONS',4),(3,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','DELETE',2),(4,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','PERMISSIONS',4),(5,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','UPDATE',8),(6,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','VIEW',1),(7,'com.liferay.portal.model.LayoutSetBranch','DELETE',2),(8,'com.liferay.portal.model.LayoutSetBranch','MERGE',4),(9,'com.liferay.portal.model.LayoutSetBranch','PERMISSIONS',8),(10,'com.liferay.portal.model.LayoutSetBranch','UPDATE',16),(11,'com.liferay.portlet.journal.model.JournalArticle','ADD_DISCUSSION',2),(12,'com.liferay.portlet.journal.model.JournalArticle','DELETE',4),(13,'com.liferay.portlet.journal.model.JournalArticle','DELETE_DISCUSSION',8),(14,'com.liferay.portlet.journal.model.JournalArticle','EXPIRE',16),(15,'com.liferay.portlet.journal.model.JournalArticle','PERMISSIONS',32),(16,'com.liferay.portlet.journal.model.JournalArticle','UPDATE',64),(17,'com.liferay.portlet.journal.model.JournalArticle','UPDATE_DISCUSSION',128),(18,'com.liferay.portlet.journal.model.JournalArticle','VIEW',1),(19,'com.liferay.portal.model.Team','ASSIGN_MEMBERS',2),(20,'com.liferay.portal.model.Team','DELETE',4),(21,'com.liferay.portal.model.Team','PERMISSIONS',8),(22,'com.liferay.portal.model.Team','UPDATE',16),(23,'com.liferay.portal.model.Team','VIEW',1),(24,'com.liferay.portlet.dynamicdatalists','ADD_RECORD_SET',2),(25,'com.liferay.portlet.dynamicdatalists','ADD_STRUCTURE',4),(26,'com.liferay.portlet.dynamicdatalists','ADD_TEMPLATE',8),(27,'com.liferay.portlet.dynamicdatalists','PERMISSIONS',16),(28,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE',2),(29,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','PERMISSIONS',4),(30,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE',8),(31,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','VIEW',1),(32,'com.liferay.portlet.expando.model.ExpandoColumn','DELETE',2),(33,'com.liferay.portlet.expando.model.ExpandoColumn','PERMISSIONS',4),(34,'com.liferay.portlet.expando.model.ExpandoColumn','UPDATE',8),(35,'com.liferay.portlet.expando.model.ExpandoColumn','VIEW',1),(36,'com.liferay.portlet.polls.model.PollsQuestion','ADD_VOTE',2),(37,'com.liferay.portlet.polls.model.PollsQuestion','DELETE',4),(38,'com.liferay.portlet.polls.model.PollsQuestion','PERMISSIONS',8),(39,'com.liferay.portlet.polls.model.PollsQuestion','UPDATE',16),(40,'com.liferay.portlet.polls.model.PollsQuestion','VIEW',1),(41,'com.liferay.portlet.documentlibrary.model.DLFolder','ACCESS',2),(42,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_DOCUMENT',4),(43,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SHORTCUT',8),(44,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SUBFOLDER',16),(45,'com.liferay.portlet.documentlibrary.model.DLFolder','DELETE',32),(46,'com.liferay.portlet.documentlibrary.model.DLFolder','PERMISSIONS',64),(47,'com.liferay.portlet.documentlibrary.model.DLFolder','UPDATE',128),(48,'com.liferay.portlet.documentlibrary.model.DLFolder','VIEW',1),(49,'com.liferay.portal.model.User','DELETE',2),(50,'com.liferay.portal.model.User','IMPERSONATE',4),(51,'com.liferay.portal.model.User','PERMISSIONS',8),(52,'com.liferay.portal.model.User','UPDATE',16),(53,'com.liferay.portal.model.User','VIEW',1),(54,'com.liferay.portlet.asset.model.AssetTag','DELETE',2),(55,'com.liferay.portlet.asset.model.AssetTag','PERMISSIONS',4),(56,'com.liferay.portlet.asset.model.AssetTag','UPDATE',8),(57,'com.liferay.portlet.asset.model.AssetTag','VIEW',1),(58,'com.liferay.portlet.calendar','ADD_EVENT',2),(59,'com.liferay.portlet.calendar','EXPORT_ALL_EVENTS',4),(60,'com.liferay.portlet.calendar','PERMISSIONS',8),(61,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','DELETE',2),(62,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','PERMISSIONS',4),(63,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','UPDATE',8),(64,'com.liferay.portlet.journal.model.JournalFeed','DELETE',2),(65,'com.liferay.portlet.journal.model.JournalFeed','PERMISSIONS',4),(66,'com.liferay.portlet.journal.model.JournalFeed','UPDATE',8),(67,'com.liferay.portlet.journal.model.JournalFeed','VIEW',1),(68,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ACCESS',2),(69,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_ENTRY',4),(70,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_SUBFOLDER',8),(71,'com.liferay.portlet.bookmarks.model.BookmarksFolder','DELETE',16),(72,'com.liferay.portlet.bookmarks.model.BookmarksFolder','PERMISSIONS',32),(73,'com.liferay.portlet.bookmarks.model.BookmarksFolder','SUBSCRIBE',64),(74,'com.liferay.portlet.bookmarks.model.BookmarksFolder','UPDATE',128),(75,'com.liferay.portlet.bookmarks.model.BookmarksFolder','VIEW',1),(76,'com.liferay.portlet.messageboards.model.MBThread','SUBSCRIBE',2),(77,'com.liferay.portlet.messageboards.model.MBThread','VIEW',1),(78,'com.liferay.portlet.messageboards.model.MBThread','PERMISSIONS',4),(79,'com.liferay.portal.model.LayoutPrototype','DELETE',2),(80,'com.liferay.portal.model.LayoutPrototype','PERMISSIONS',4),(81,'com.liferay.portal.model.LayoutPrototype','UPDATE',8),(82,'com.liferay.portal.model.LayoutPrototype','VIEW',1),(83,'com.liferay.portlet.messageboards','ADD_CATEGORY',2),(84,'com.liferay.portlet.messageboards','ADD_FILE',4),(85,'com.liferay.portlet.messageboards','ADD_MESSAGE',8),(86,'com.liferay.portlet.messageboards','BAN_USER',16),(87,'com.liferay.portlet.messageboards','MOVE_THREAD',32),(88,'com.liferay.portlet.messageboards','LOCK_THREAD',64),(89,'com.liferay.portlet.messageboards','PERMISSIONS',128),(90,'com.liferay.portlet.messageboards','REPLY_TO_MESSAGE',256),(91,'com.liferay.portlet.messageboards','SUBSCRIBE',512),(92,'com.liferay.portlet.messageboards','UPDATE_THREAD_PRIORITY',1024),(93,'com.liferay.portlet.messageboards','VIEW',1),(94,'com.liferay.portlet.bookmarks','ADD_ENTRY',2),(95,'com.liferay.portlet.bookmarks','ADD_FOLDER',4),(96,'com.liferay.portlet.bookmarks','PERMISSIONS',8),(97,'com.liferay.portlet.bookmarks','SUBSCRIBE',16),(98,'com.liferay.portlet.bookmarks','VIEW',1),(99,'com.liferay.portlet.softwarecatalog','ADD_FRAMEWORK_VERSION',2),(100,'com.liferay.portlet.softwarecatalog','ADD_PRODUCT_ENTRY',4),(101,'com.liferay.portlet.softwarecatalog','PERMISSIONS',8),(102,'com.liferay.portlet.wiki.model.WikiNode','ADD_ATTACHMENT',2),(103,'com.liferay.portlet.wiki.model.WikiNode','ADD_PAGE',4),(104,'com.liferay.portlet.wiki.model.WikiNode','DELETE',8),(105,'com.liferay.portlet.wiki.model.WikiNode','IMPORT',16),(106,'com.liferay.portlet.wiki.model.WikiNode','PERMISSIONS',32),(107,'com.liferay.portlet.wiki.model.WikiNode','SUBSCRIBE',64),(108,'com.liferay.portlet.wiki.model.WikiNode','UPDATE',128),(109,'com.liferay.portlet.wiki.model.WikiNode','VIEW',1),(110,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT',2),(111,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT_TYPE',4),(112,'com.liferay.portlet.documentlibrary','ADD_FOLDER',8),(113,'com.liferay.portlet.documentlibrary','ADD_REPOSITORY',16),(114,'com.liferay.portlet.documentlibrary','ADD_STRUCTURE',32),(115,'com.liferay.portlet.documentlibrary','ADD_SHORTCUT',64),(116,'com.liferay.portlet.documentlibrary','PERMISSIONS',128),(117,'com.liferay.portlet.documentlibrary','SUBSCRIBE',256),(118,'com.liferay.portlet.documentlibrary','UPDATE',512),(119,'com.liferay.portlet.documentlibrary','VIEW',1),(120,'com.liferay.portlet.calendar.model.CalEvent','ADD_DISCUSSION',2),(121,'com.liferay.portlet.calendar.model.CalEvent','DELETE',4),(122,'com.liferay.portlet.calendar.model.CalEvent','DELETE_DISCUSSION',8),(123,'com.liferay.portlet.calendar.model.CalEvent','PERMISSIONS',16),(124,'com.liferay.portlet.calendar.model.CalEvent','UPDATE',32),(125,'com.liferay.portlet.calendar.model.CalEvent','UPDATE_DISCUSSION',64),(126,'com.liferay.portlet.calendar.model.CalEvent','VIEW',1),(127,'com.liferay.portlet.softwarecatalog.model.SCLicense','DELETE',2),(128,'com.liferay.portlet.softwarecatalog.model.SCLicense','PERMISSIONS',4),(129,'com.liferay.portlet.softwarecatalog.model.SCLicense','UPDATE',8),(130,'com.liferay.portlet.softwarecatalog.model.SCLicense','VIEW',1),(131,'com.liferay.portal.model.Organization','ADD_ORGANIZATION',2),(132,'com.liferay.portal.model.Organization','ASSIGN_MEMBERS',4),(133,'com.liferay.portal.model.Organization','ASSIGN_USER_ROLES',8),(134,'com.liferay.portal.model.Organization','DELETE',16),(135,'com.liferay.portal.model.Organization','MANAGE_ANNOUNCEMENTS',32),(136,'com.liferay.portal.model.Organization','MANAGE_SUBORGANIZATIONS',64),(137,'com.liferay.portal.model.Organization','MANAGE_USERS',128),(138,'com.liferay.portal.model.Organization','PERMISSIONS',256),(139,'com.liferay.portal.model.Organization','UPDATE',512),(140,'com.liferay.portal.model.Organization','VIEW',1),(141,'com.liferay.portal.model.Organization','VIEW_MEMBERS',1024),(142,'com.liferay.portal.model.Group','ADD_COMMUNITY',2),(143,'com.liferay.portal.model.Group','ADD_LAYOUT',4),(144,'com.liferay.portal.model.Group','ADD_LAYOUT_BRANCH',8),(145,'com.liferay.portal.model.Group','ADD_LAYOUT_SET_BRANCH',16),(146,'com.liferay.portal.model.Group','ASSIGN_MEMBERS',32),(147,'com.liferay.portal.model.Group','ASSIGN_USER_ROLES',64),(148,'com.liferay.portal.model.Group','CONFIGURE_PORTLETS',128),(149,'com.liferay.portal.model.Group','DELETE',256),(150,'com.liferay.portal.model.Group','EXPORT_IMPORT_LAYOUTS',512),(151,'com.liferay.portal.model.Group','EXPORT_IMPORT_PORTLET_INFO',1024),(152,'com.liferay.portal.model.Group','MANAGE_ANNOUNCEMENTS',2048),(153,'com.liferay.portal.model.Group','MANAGE_ARCHIVED_SETUPS',4096),(154,'com.liferay.portal.model.Group','MANAGE_LAYOUTS',8192),(155,'com.liferay.portal.model.Group','MANAGE_STAGING',16384),(156,'com.liferay.portal.model.Group','MANAGE_SUBGROUPS',32768),(157,'com.liferay.portal.model.Group','MANAGE_TEAMS',65536),(158,'com.liferay.portal.model.Group','PERMISSIONS',131072),(159,'com.liferay.portal.model.Group','PREVIEW_IN_DEVICE',262144),(160,'com.liferay.portal.model.Group','PUBLISH_STAGING',524288),(161,'com.liferay.portal.model.Group','PUBLISH_TO_REMOTE',1048576),(162,'com.liferay.portal.model.Group','UPDATE',2097152),(163,'com.liferay.portal.model.Group','VIEW',1),(164,'com.liferay.portal.model.Group','VIEW_MEMBERS',4194304),(165,'com.liferay.portal.model.Group','VIEW_SITE_ADMINISTRATION',8388608),(166,'com.liferay.portal.model.Group','VIEW_STAGING',16777216),(167,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_ITEM',2),(168,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_SUBCATEGORY',4),(169,'com.liferay.portlet.shopping.model.ShoppingCategory','DELETE',8),(170,'com.liferay.portlet.shopping.model.ShoppingCategory','PERMISSIONS',16),(171,'com.liferay.portlet.shopping.model.ShoppingCategory','UPDATE',32),(172,'com.liferay.portlet.shopping.model.ShoppingCategory','VIEW',1),(173,'com.liferay.portlet.shopping.model.ShoppingOrder','DELETE',2),(174,'com.liferay.portlet.shopping.model.ShoppingOrder','PERMISSIONS',4),(175,'com.liferay.portlet.shopping.model.ShoppingOrder','UPDATE',8),(176,'com.liferay.portlet.shopping.model.ShoppingOrder','VIEW',1),(177,'com.liferay.portlet.journal.model.JournalFolder','ACCESS',2),(178,'com.liferay.portlet.journal.model.JournalFolder','ADD_ARTICLE',4),(179,'com.liferay.portlet.journal.model.JournalFolder','ADD_SUBFOLDER',8),(180,'com.liferay.portlet.journal.model.JournalFolder','DELETE',16),(181,'com.liferay.portlet.journal.model.JournalFolder','PERMISSIONS',32),(182,'com.liferay.portlet.journal.model.JournalFolder','UPDATE',64),(183,'com.liferay.portlet.journal.model.JournalFolder','VIEW',1),(184,'com.liferay.portlet.wiki.model.WikiPage','ADD_DISCUSSION',2),(185,'com.liferay.portlet.wiki.model.WikiPage','DELETE',4),(186,'com.liferay.portlet.wiki.model.WikiPage','DELETE_DISCUSSION',8),(187,'com.liferay.portlet.wiki.model.WikiPage','PERMISSIONS',16),(188,'com.liferay.portlet.wiki.model.WikiPage','SUBSCRIBE',32),(189,'com.liferay.portlet.wiki.model.WikiPage','UPDATE',64),(190,'com.liferay.portlet.wiki.model.WikiPage','UPDATE_DISCUSSION',128),(191,'com.liferay.portlet.wiki.model.WikiPage','VIEW',1),(192,'com.liferay.portlet.asset.model.AssetCategory','ADD_CATEGORY',2),(193,'com.liferay.portlet.asset.model.AssetCategory','DELETE',4),(194,'com.liferay.portlet.asset.model.AssetCategory','PERMISSIONS',8),(195,'com.liferay.portlet.asset.model.AssetCategory','UPDATE',16),(196,'com.liferay.portlet.asset.model.AssetCategory','VIEW',1),(197,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','DELETE',2),(198,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','PERMISSIONS',4),(199,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','UPDATE',8),(200,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','VIEW',1),(201,'com.liferay.portlet.shopping.model.ShoppingItem','DELETE',2),(202,'com.liferay.portlet.shopping.model.ShoppingItem','PERMISSIONS',4),(203,'com.liferay.portlet.shopping.model.ShoppingItem','UPDATE',8),(204,'com.liferay.portlet.shopping.model.ShoppingItem','VIEW',1),(205,'com.liferay.portlet.blogs.model.BlogsEntry','ADD_DISCUSSION',2),(206,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE',4),(207,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE_DISCUSSION',8),(208,'com.liferay.portlet.blogs.model.BlogsEntry','PERMISSIONS',16),(209,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE',32),(210,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE_DISCUSSION',64),(211,'com.liferay.portlet.blogs.model.BlogsEntry','VIEW',1),(212,'com.liferay.portal.model.PasswordPolicy','ASSIGN_MEMBERS',2),(213,'com.liferay.portal.model.PasswordPolicy','DELETE',4),(214,'com.liferay.portal.model.PasswordPolicy','PERMISSIONS',8),(215,'com.liferay.portal.model.PasswordPolicy','UPDATE',16),(216,'com.liferay.portal.model.PasswordPolicy','VIEW',1),(217,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','ADD_RECORD',2),(218,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','DELETE',4),(219,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','PERMISSIONS',8),(220,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','UPDATE',16),(221,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','VIEW',1),(222,'com.liferay.portlet.shopping','ADD_CATEGORY',2),(223,'com.liferay.portlet.shopping','ADD_ITEM',4),(224,'com.liferay.portlet.shopping','MANAGE_COUPONS',8),(225,'com.liferay.portlet.shopping','MANAGE_ORDERS',16),(226,'com.liferay.portlet.shopping','PERMISSIONS',32),(227,'com.liferay.portlet.shopping','VIEW',1),(228,'com.liferay.portlet.wiki','ADD_NODE',2),(229,'com.liferay.portlet.wiki','PERMISSIONS',4),(230,'com.liferay.portlet.blogs','ADD_ENTRY',2),(231,'com.liferay.portlet.blogs','PERMISSIONS',4),(232,'com.liferay.portlet.blogs','SUBSCRIBE',8),(233,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','DELETE',2),(234,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','PERMISSIONS',4),(235,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','UPDATE',8),(236,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','VIEW',1),(237,'com.liferay.portlet.asset.model.AssetVocabulary','DELETE',2),(238,'com.liferay.portlet.asset.model.AssetVocabulary','PERMISSIONS',4),(239,'com.liferay.portlet.asset.model.AssetVocabulary','UPDATE',8),(240,'com.liferay.portlet.asset.model.AssetVocabulary','VIEW',1),(241,'com.liferay.portlet.bookmarks.model.BookmarksEntry','DELETE',2),(242,'com.liferay.portlet.bookmarks.model.BookmarksEntry','PERMISSIONS',4),(243,'com.liferay.portlet.bookmarks.model.BookmarksEntry','SUBSCRIBE',8),(244,'com.liferay.portlet.bookmarks.model.BookmarksEntry','UPDATE',16),(245,'com.liferay.portlet.bookmarks.model.BookmarksEntry','VIEW',1),(246,'com.liferay.portlet.journal.model.JournalStructure','DELETE',2),(247,'com.liferay.portlet.journal.model.JournalStructure','PERMISSIONS',4),(248,'com.liferay.portlet.journal.model.JournalStructure','UPDATE',8),(249,'com.liferay.portlet.journal.model.JournalStructure','VIEW',1),(250,'com.liferay.portlet.documentlibrary.model.DLFileEntry','ADD_DISCUSSION',2),(251,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE',4),(252,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE_DISCUSSION',8),(253,'com.liferay.portlet.documentlibrary.model.DLFileEntry','OVERRIDE_CHECKOUT',16),(254,'com.liferay.portlet.documentlibrary.model.DLFileEntry','PERMISSIONS',32),(255,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE',64),(256,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE_DISCUSSION',128),(257,'com.liferay.portlet.documentlibrary.model.DLFileEntry','VIEW',1),(258,'com.liferay.portlet.messageboards.model.MBMessage','DELETE',2),(259,'com.liferay.portlet.messageboards.model.MBMessage','PERMISSIONS',4),(260,'com.liferay.portlet.messageboards.model.MBMessage','SUBSCRIBE',8),(261,'com.liferay.portlet.messageboards.model.MBMessage','UPDATE',16),(262,'com.liferay.portlet.messageboards.model.MBMessage','VIEW',1),(263,'com.liferay.portlet.journal','ADD_ARTICLE',2),(264,'com.liferay.portlet.journal','ADD_FEED',4),(265,'com.liferay.portlet.journal','ADD_FOLDER',8),(266,'com.liferay.portlet.journal','ADD_STRUCTURE',16),(267,'com.liferay.portlet.journal','ADD_TEMPLATE',32),(268,'com.liferay.portlet.journal','SUBSCRIBE',64),(269,'com.liferay.portlet.journal','VIEW',1),(270,'com.liferay.portlet.journal','PERMISSIONS',128),(271,'com.liferay.portal.model.LayoutSetPrototype','DELETE',2),(272,'com.liferay.portal.model.LayoutSetPrototype','PERMISSIONS',4),(273,'com.liferay.portal.model.LayoutSetPrototype','UPDATE',8),(274,'com.liferay.portal.model.LayoutSetPrototype','VIEW',1),(275,'com.liferay.portal.model.UserGroup','ASSIGN_MEMBERS',2),(276,'com.liferay.portal.model.UserGroup','DELETE',4),(277,'com.liferay.portal.model.UserGroup','MANAGE_ANNOUNCEMENTS',8),(278,'com.liferay.portal.model.UserGroup','PERMISSIONS',16),(279,'com.liferay.portal.model.UserGroup','UPDATE',32),(280,'com.liferay.portal.model.UserGroup','VIEW',1),(281,'com.liferay.portal.model.UserGroup','VIEW_MEMBERS',64),(282,'com.liferay.portal.model.Role','ASSIGN_MEMBERS',2),(283,'com.liferay.portal.model.Role','DEFINE_PERMISSIONS',4),(284,'com.liferay.portal.model.Role','DELETE',8),(285,'com.liferay.portal.model.Role','MANAGE_ANNOUNCEMENTS',16),(286,'com.liferay.portal.model.Role','PERMISSIONS',32),(287,'com.liferay.portal.model.Role','UPDATE',64),(288,'com.liferay.portal.model.Role','VIEW',1),(289,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','DELETE',2),(290,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','PERMISSIONS',4),(291,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','UPDATE',8),(292,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','VIEW',1),(293,'com.liferay.portal.model.Layout','ADD_DISCUSSION',2),(294,'com.liferay.portal.model.Layout','ADD_LAYOUT',4),(295,'com.liferay.portal.model.Layout','CONFIGURE_PORTLETS',8),(296,'com.liferay.portal.model.Layout','CUSTOMIZE',16),(297,'com.liferay.portal.model.Layout','DELETE',32),(298,'com.liferay.portal.model.Layout','DELETE_DISCUSSION',64),(299,'com.liferay.portal.model.Layout','PERMISSIONS',128),(300,'com.liferay.portal.model.Layout','UPDATE',256),(301,'com.liferay.portal.model.Layout','UPDATE_DISCUSSION',512),(302,'com.liferay.portal.model.Layout','VIEW',1),(303,'com.liferay.portlet.asset','ADD_TAG',2),(304,'com.liferay.portlet.asset','PERMISSIONS',4),(305,'com.liferay.portlet.asset','ADD_CATEGORY',8),(306,'com.liferay.portlet.asset','ADD_VOCABULARY',16),(307,'com.liferay.portlet.messageboards.model.MBCategory','ADD_FILE',2),(308,'com.liferay.portlet.messageboards.model.MBCategory','ADD_MESSAGE',4),(309,'com.liferay.portlet.messageboards.model.MBCategory','ADD_SUBCATEGORY',8),(310,'com.liferay.portlet.messageboards.model.MBCategory','DELETE',16),(311,'com.liferay.portlet.messageboards.model.MBCategory','LOCK_THREAD',32),(312,'com.liferay.portlet.messageboards.model.MBCategory','MOVE_THREAD',64),(313,'com.liferay.portlet.messageboards.model.MBCategory','PERMISSIONS',128),(314,'com.liferay.portlet.messageboards.model.MBCategory','REPLY_TO_MESSAGE',256),(315,'com.liferay.portlet.messageboards.model.MBCategory','SUBSCRIBE',512),(316,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE',1024),(317,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE_THREAD_PRIORITY',2048),(318,'com.liferay.portlet.messageboards.model.MBCategory','VIEW',1),(319,'com.liferay.portlet.journal.model.JournalTemplate','DELETE',2),(320,'com.liferay.portlet.journal.model.JournalTemplate','PERMISSIONS',4),(321,'com.liferay.portlet.journal.model.JournalTemplate','UPDATE',8),(322,'com.liferay.portlet.journal.model.JournalTemplate','VIEW',1),(323,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','ADD_DISCUSSION',2),(324,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE',4),(325,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE_DISCUSSION',8),(326,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','PERMISSIONS',16),(327,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE',32),(328,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE_DISCUSSION',64),(329,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','VIEW',1),(330,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP',2),(331,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP_INSTANCE',4),(332,'com.liferay.portlet.mobiledevicerules','CONFIGURATION',8),(333,'com.liferay.portlet.mobiledevicerules','VIEW',1),(334,'com.liferay.portlet.mobiledevicerules','PERMISSIONS',16),(335,'com.liferay.portal.model.LayoutBranch','DELETE',2),(336,'com.liferay.portal.model.LayoutBranch','PERMISSIONS',4),(337,'com.liferay.portal.model.LayoutBranch','UPDATE',8),(338,'com.liferay.portlet.announcements.model.AnnouncementsEntry','DELETE',2),(339,'com.liferay.portlet.announcements.model.AnnouncementsEntry','UPDATE',4),(340,'com.liferay.portlet.announcements.model.AnnouncementsEntry','VIEW',1),(341,'com.liferay.portlet.announcements.model.AnnouncementsEntry','PERMISSIONS',8),(342,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','DELETE',2),(343,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','PERMISSIONS',4),(344,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','UPDATE',8),(345,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','VIEW',1),(346,'25','ACCESS_IN_CONTROL_PANEL',2),(347,'25','CONFIGURATION',4),(348,'25','VIEW',1),(349,'25','PERMISSIONS',8),(350,'25','PREFERENCES',16),(351,'28','ACCESS_IN_CONTROL_PANEL',2),(352,'28','ADD_TO_PAGE',4),(353,'28','CONFIGURATION',8),(354,'28','VIEW',1),(355,'28','PERMISSIONS',16),(356,'28','PREFERENCES',32),(357,'174','ADD_TO_PAGE',2),(358,'174','CONFIGURATION',4),(359,'174','PERMISSIONS',8),(360,'174','PREFERENCES',16),(361,'174','VIEW',1),(362,'110','ADD_TO_PAGE',2),(363,'110','CONFIGURATION',4),(364,'110','PERMISSIONS',8),(365,'110','PREFERENCES',16),(366,'110','VIEW',1),(367,'154','ACCESS_IN_CONTROL_PANEL',2),(368,'154','CONFIGURATION',4),(369,'154','VIEW',1),(370,'154','PERMISSIONS',8),(371,'154','PREFERENCES',16),(372,'134','ACCESS_IN_CONTROL_PANEL',2),(373,'134','CONFIGURATION',4),(374,'134','VIEW',1),(375,'134','PERMISSIONS',8),(376,'134','PREFERENCES',16),(377,'156','ADD_TO_PAGE',2),(378,'156','CONFIGURATION',4),(379,'156','PERMISSIONS',8),(380,'156','PREFERENCES',16),(381,'156','VIEW',1),(382,'178','CONFIGURATION',2),(383,'178','VIEW',1),(384,'178','ADD_TO_PAGE',4),(385,'178','PERMISSIONS',8),(386,'178','PREFERENCES',16),(387,'139','ACCESS_IN_CONTROL_PANEL',2),(388,'139','ADD_EXPANDO',4),(389,'139','CONFIGURATION',8),(390,'139','VIEW',1),(391,'139','PERMISSIONS',16),(392,'139','PREFERENCES',32),(393,'31','ADD_TO_PAGE',2),(394,'31','CONFIGURATION',4),(395,'31','PERMISSIONS',8),(396,'31','PREFERENCES',16),(397,'31','VIEW',1),(398,'98','ACCESS_IN_CONTROL_PANEL',2),(399,'98','ADD_TO_PAGE',4),(400,'98','CONFIGURATION',8),(401,'98','VIEW',1),(402,'98','PERMISSIONS',16),(403,'98','PREFERENCES',32),(404,'99','ACCESS_IN_CONTROL_PANEL',2),(405,'99','CONFIGURATION',4),(406,'99','VIEW',1),(407,'99','PERMISSIONS',8),(408,'99','PREFERENCES',16),(409,'33','ADD_PORTLET_DISPLAY_TEMPLATE',2),(410,'33','ADD_TO_PAGE',4),(411,'33','CONFIGURATION',8),(412,'33','VIEW',1),(413,'33','PERMISSIONS',16),(414,'33','PREFERENCES',32),(415,'34','ADD_TO_PAGE',2),(416,'34','CONFIGURATION',4),(417,'34','VIEW',1),(418,'34','PERMISSIONS',8),(419,'34','PREFERENCES',16),(420,'36','ADD_PORTLET_DISPLAY_TEMPLATE',2),(421,'36','ADD_TO_PAGE',4),(422,'36','CONFIGURATION',8),(423,'36','VIEW',1),(424,'36','PERMISSIONS',16),(425,'36','PREFERENCES',32),(426,'15','ACCESS_IN_CONTROL_PANEL',2),(427,'15','ADD_TO_PAGE',4),(428,'15','CONFIGURATION',8),(429,'15','VIEW',1),(430,'15','PERMISSIONS',16),(431,'15','PREFERENCES',32),(432,'59','ADD_TO_PAGE',2),(433,'59','CONFIGURATION',4),(434,'59','PERMISSIONS',8),(435,'59','PREFERENCES',16),(436,'59','VIEW',1),(437,'19','ADD_TO_PAGE',2),(438,'19','CONFIGURATION',4),(439,'19','VIEW',1),(440,'19','PERMISSIONS',8),(441,'19','PREFERENCES',16),(442,'161','ACCESS_IN_CONTROL_PANEL',2),(443,'161','CONFIGURATION',4),(444,'161','VIEW',1),(445,'161','PERMISSIONS',8),(446,'161','PREFERENCES',16),(447,'162','ACCESS_IN_CONTROL_PANEL',2),(448,'162','CONFIGURATION',4),(449,'162','VIEW',1),(450,'162','PERMISSIONS',8),(451,'162','PREFERENCES',16),(452,'165','ADD_TO_PAGE',2),(453,'165','CONFIGURATION',4),(454,'165','PERMISSIONS',8),(455,'165','PREFERENCES',16),(456,'165','VIEW',1),(457,'166','ACCESS_IN_CONTROL_PANEL',2),(458,'166','ADD_TO_PAGE',4),(459,'166','CONFIGURATION',8),(460,'166','VIEW',1),(461,'166','PERMISSIONS',16),(462,'166','PREFERENCES',32),(463,'167','ACCESS_IN_CONTROL_PANEL',2),(464,'167','ADD_TO_PAGE',4),(465,'167','CONFIGURATION',8),(466,'167','VIEW',1),(467,'167','PERMISSIONS',16),(468,'167','PREFERENCES',32),(469,'146','ACCESS_IN_CONTROL_PANEL',2),(470,'146','CONFIGURATION',4),(471,'146','VIEW',1),(472,'146','PERMISSIONS',8),(473,'146','PREFERENCES',16),(474,'125','ACCESS_IN_CONTROL_PANEL',2),(475,'125','CONFIGURATION',4),(476,'125','EXPORT_USER',8),(477,'125','VIEW',1),(478,'125','PERMISSIONS',16),(479,'125','PREFERENCES',32),(480,'147','ACCESS_IN_CONTROL_PANEL',2),(481,'147','CONFIGURATION',4),(482,'147','VIEW',1),(483,'147','PERMISSIONS',8),(484,'147','PREFERENCES',16),(485,'169','ADD_TO_PAGE',2),(486,'169','CONFIGURATION',4),(487,'169','PERMISSIONS',8),(488,'169','PREFERENCES',16),(489,'169','VIEW',1),(490,'149','ACCESS_IN_CONTROL_PANEL',2),(491,'149','CONFIGURATION',4),(492,'149','VIEW',1),(493,'149','PERMISSIONS',8),(494,'149','PREFERENCES',16),(495,'127','ADD_TO_PAGE',2),(496,'127','CONFIGURATION',4),(497,'127','PERMISSIONS',8),(498,'127','PREFERENCES',16),(499,'127','VIEW',1),(500,'128','ACCESS_IN_CONTROL_PANEL',2),(501,'128','CONFIGURATION',4),(502,'128','VIEW',1),(503,'128','PERMISSIONS',8),(504,'128','PREFERENCES',16),(505,'129','ACCESS_IN_CONTROL_PANEL',2),(506,'129','CONFIGURATION',4),(507,'129','VIEW',1),(508,'129','PERMISSIONS',8),(509,'129','PREFERENCES',16),(510,'8','ACCESS_IN_CONTROL_PANEL',2),(511,'8','ADD_TO_PAGE',4),(512,'8','CONFIGURATION',8),(513,'8','VIEW',1),(514,'8','PERMISSIONS',16),(515,'8','PREFERENCES',32),(516,'83','ADD_ENTRY',2),(517,'83','ADD_TO_PAGE',4),(518,'83','CONFIGURATION',8),(519,'83','VIEW',1),(520,'83','PERMISSIONS',16),(521,'83','PREFERENCES',32),(522,'84','ADD_ENTRY',2),(523,'84','ADD_TO_PAGE',4),(524,'84','CONFIGURATION',8),(525,'84','VIEW',1),(526,'84','PERMISSIONS',16),(527,'84','PREFERENCES',32),(528,'20','ACCESS_IN_CONTROL_PANEL',2),(529,'20','ADD_PORTLET_DISPLAY_TEMPLATE',4),(530,'20','ADD_TO_PAGE',8),(531,'20','CONFIGURATION',16),(532,'20','VIEW',1),(533,'20','PERMISSIONS',32),(534,'20','PREFERENCES',64),(535,'88','VIEW',1),(536,'88','ADD_TO_PAGE',2),(537,'88','CONFIGURATION',4),(538,'88','PERMISSIONS',8),(539,'88','PREFERENCES',16),(540,'88','ACCESS_IN_CONTROL_PANEL',32),(541,'190','VIEW',1),(542,'190','ADD_TO_PAGE',2),(543,'190','CONFIGURATION',4),(544,'190','PERMISSIONS',8),(545,'190','PREFERENCES',16),(546,'190','ACCESS_IN_CONTROL_PANEL',32),(547,'191','VIEW',1),(548,'191','ADD_TO_PAGE',2),(549,'191','CONFIGURATION',4),(550,'191','PERMISSIONS',8),(551,'191','PREFERENCES',16),(552,'191','ACCESS_IN_CONTROL_PANEL',32),(553,'192','VIEW',1),(554,'192','ADD_TO_PAGE',2),(555,'192','CONFIGURATION',4),(556,'192','PERMISSIONS',8),(557,'192','PREFERENCES',16),(558,'192','ACCESS_IN_CONTROL_PANEL',32),(559,'193','VIEW',1),(560,'193','ADD_TO_PAGE',2),(561,'193','CONFIGURATION',4),(562,'193','PERMISSIONS',8),(563,'193','PREFERENCES',16),(564,'193','ACCESS_IN_CONTROL_PANEL',32),(565,'194','VIEW',1),(566,'194','ADD_TO_PAGE',2),(567,'194','CONFIGURATION',4),(568,'194','PERMISSIONS',8),(569,'194','PREFERENCES',16),(570,'194','ACCESS_IN_CONTROL_PANEL',32),(571,'110','ACCESS_IN_CONTROL_PANEL',32),(572,'113','VIEW',1),(573,'113','ADD_TO_PAGE',2),(574,'113','CONFIGURATION',4),(575,'113','PERMISSIONS',8),(576,'113','PREFERENCES',16),(577,'113','ACCESS_IN_CONTROL_PANEL',32),(578,'114','VIEW',1),(579,'114','ADD_TO_PAGE',2),(580,'114','CONFIGURATION',4),(581,'114','PERMISSIONS',8),(582,'114','PREFERENCES',16),(583,'114','ACCESS_IN_CONTROL_PANEL',32),(584,'115','VIEW',1),(585,'115','ADD_TO_PAGE',2),(586,'115','CONFIGURATION',4),(587,'115','PERMISSIONS',8),(588,'115','PREFERENCES',16),(589,'115','ACCESS_IN_CONTROL_PANEL',32),(590,'116','VIEW',1),(591,'116','ADD_TO_PAGE',2),(592,'116','CONFIGURATION',4),(593,'116','PERMISSIONS',8),(594,'116','PREFERENCES',16),(595,'116','ACCESS_IN_CONTROL_PANEL',32),(596,'90','ADD_COMMUNITY',2),(597,'90','ADD_GENERAL_ANNOUNCEMENTS',4),(598,'90','ADD_LAYOUT_PROTOTYPE',8),(599,'90','ADD_LAYOUT_SET_PROTOTYPE',16),(600,'90','ADD_LICENSE',32),(601,'90','ADD_ORGANIZATION',64),(602,'90','ADD_PASSWORD_POLICY',128),(603,'90','ADD_ROLE',256),(604,'90','ADD_USER',512),(605,'90','ADD_USER_GROUP',1024),(606,'90','CONFIGURATION',2048),(607,'90','EXPORT_USER',4096),(608,'90','IMPERSONATE',8192),(609,'90','UNLINK_LAYOUT_SET_PROTOTYPE',16384),(610,'90','VIEW_CONTROL_PANEL',32768),(611,'90','ADD_TO_PAGE',65536),(612,'90','PERMISSIONS',131072),(613,'90','PREFERENCES',262144),(614,'90','VIEW',1),(615,'90','ACCESS_IN_CONTROL_PANEL',524288),(616,'118','VIEW',1),(617,'118','ADD_TO_PAGE',2),(618,'118','CONFIGURATION',4),(619,'118','PERMISSIONS',8),(620,'118','PREFERENCES',16),(621,'118','ACCESS_IN_CONTROL_PANEL',32),(622,'119','VIEW',1),(623,'119','ADD_TO_PAGE',2),(624,'119','CONFIGURATION',4),(625,'119','PERMISSIONS',8),(626,'119','PREFERENCES',16),(627,'119','ACCESS_IN_CONTROL_PANEL',32),(628,'97','VIEW',1),(629,'97','ADD_TO_PAGE',2),(630,'97','CONFIGURATION',4),(631,'97','PERMISSIONS',8),(632,'97','PREFERENCES',16),(633,'97','ACCESS_IN_CONTROL_PANEL',32),(634,'11','ADD_TO_PAGE',2),(635,'11','CONFIGURATION',4),(636,'11','VIEW',1),(637,'11','PERMISSIONS',8),(638,'11','PREFERENCES',16),(639,'11','ACCESS_IN_CONTROL_PANEL',32),(640,'16','VIEW',1),(641,'16','GUEST_PREFERENCES',2),(642,'16','PREFERENCES',4),(643,'16','ADD_TO_PAGE',8),(644,'16','CONFIGURATION',16),(645,'16','PERMISSIONS',32),(646,'16','ACCESS_IN_CONTROL_PANEL',64),(647,'19','ACCESS_IN_CONTROL_PANEL',32),(648,'121','VIEW',1),(649,'121','ADD_TO_PAGE',2),(650,'121','CONFIGURATION',4),(651,'121','PERMISSIONS',8),(652,'121','PREFERENCES',16),(653,'121','ACCESS_IN_CONTROL_PANEL',32),(654,'122','ADD_PORTLET_DISPLAY_TEMPLATE',2),(655,'122','CONFIGURATION',4),(656,'122','VIEW',1),(657,'122','ADD_TO_PAGE',8),(658,'122','PERMISSIONS',16),(659,'122','PREFERENCES',32),(660,'122','ACCESS_IN_CONTROL_PANEL',64),(661,'2','ACCESS_IN_CONTROL_PANEL',2),(662,'2','CONFIGURATION',4),(663,'2','VIEW',1),(664,'2','PERMISSIONS',8),(665,'2','PREFERENCES',16),(666,'3','VIEW',1),(667,'3','ADD_TO_PAGE',2),(668,'3','CONFIGURATION',4),(669,'3','PERMISSIONS',8),(670,'3','PREFERENCES',16),(671,'3','ACCESS_IN_CONTROL_PANEL',32),(672,'124','VIEW',1),(673,'124','ADD_TO_PAGE',2),(674,'124','CONFIGURATION',4),(675,'124','PERMISSIONS',8),(676,'124','PREFERENCES',16),(677,'124','ACCESS_IN_CONTROL_PANEL',32),(678,'127','ACCESS_IN_CONTROL_PANEL',32),(679,'9','VIEW',1),(680,'9','ADD_TO_PAGE',2),(681,'9','CONFIGURATION',4),(682,'9','PERMISSIONS',8),(683,'9','PREFERENCES',16),(684,'9','ACCESS_IN_CONTROL_PANEL',32),(685,'23','VIEW',1),(686,'23','ADD_TO_PAGE',2),(687,'23','CONFIGURATION',4),(688,'23','PERMISSIONS',8),(689,'23','PREFERENCES',16),(690,'23','ACCESS_IN_CONTROL_PANEL',32),(691,'26','VIEW',1),(692,'26','ADD_TO_PAGE',2),(693,'26','CONFIGURATION',4),(694,'26','PERMISSIONS',8),(695,'26','PREFERENCES',16),(696,'26','ACCESS_IN_CONTROL_PANEL',32),(697,'27','VIEW',1),(698,'27','ADD_TO_PAGE',2),(699,'27','CONFIGURATION',4),(700,'27','PERMISSIONS',8),(701,'27','PREFERENCES',16),(702,'27','ACCESS_IN_CONTROL_PANEL',32),(703,'29','ADD_TO_PAGE',2),(704,'29','CONFIGURATION',4),(705,'29','VIEW',1),(706,'29','PERMISSIONS',8),(707,'29','PREFERENCES',16),(708,'29','ACCESS_IN_CONTROL_PANEL',32),(709,'130','ACCESS_IN_CONTROL_PANEL',2),(710,'130','CONFIGURATION',4),(711,'130','VIEW',1),(712,'130','PERMISSIONS',8),(713,'130','PREFERENCES',16),(714,'131','ACCESS_IN_CONTROL_PANEL',2),(715,'131','CONFIGURATION',4),(716,'131','VIEW',1),(717,'131','PERMISSIONS',8),(718,'131','PREFERENCES',16),(719,'132','ACCESS_IN_CONTROL_PANEL',2),(720,'132','CONFIGURATION',4),(721,'132','VIEW',1),(722,'132','PERMISSIONS',8),(723,'132','PREFERENCES',16),(724,'133','VIEW',1),(725,'133','ADD_TO_PAGE',2),(726,'133','CONFIGURATION',4),(727,'133','PERMISSIONS',8),(728,'133','PREFERENCES',16),(729,'133','ACCESS_IN_CONTROL_PANEL',32),(730,'135','ACCESS_IN_CONTROL_PANEL',2),(731,'135','CONFIGURATION',4),(732,'135','VIEW',1),(733,'135','PERMISSIONS',8),(734,'135','PREFERENCES',16),(735,'137','ACCESS_IN_CONTROL_PANEL',2),(736,'137','CONFIGURATION',4),(737,'137','VIEW',1),(738,'137','PERMISSIONS',8),(739,'137','PREFERENCES',16),(740,'30','VIEW',1),(741,'30','ADD_TO_PAGE',2),(742,'30','CONFIGURATION',4),(743,'30','PERMISSIONS',8),(744,'30','PREFERENCES',16),(745,'30','ACCESS_IN_CONTROL_PANEL',32),(746,'31','ACCESS_IN_CONTROL_PANEL',32),(747,'33','ACCESS_IN_CONTROL_PANEL',64),(748,'34','ACCESS_IN_CONTROL_PANEL',32),(749,'36','ACCESS_IN_CONTROL_PANEL',64),(750,'39','VIEW',1),(751,'39','ADD_TO_PAGE',2),(752,'39','CONFIGURATION',4),(753,'39','PERMISSIONS',8),(754,'39','PREFERENCES',16),(755,'39','ACCESS_IN_CONTROL_PANEL',32),(756,'140','ACCESS_IN_CONTROL_PANEL',2),(757,'140','CONFIGURATION',4),(758,'140','VIEW',1),(759,'140','PERMISSIONS',8),(760,'140','PREFERENCES',16),(761,'141','ADD_PORTLET_DISPLAY_TEMPLATE',2),(762,'141','CONFIGURATION',4),(763,'141','VIEW',1),(764,'141','ADD_TO_PAGE',8),(765,'141','PERMISSIONS',16),(766,'141','PREFERENCES',32),(767,'141','ACCESS_IN_CONTROL_PANEL',64),(768,'142','VIEW',1),(769,'142','ADD_TO_PAGE',2),(770,'142','CONFIGURATION',4),(771,'142','PERMISSIONS',8),(772,'142','PREFERENCES',16),(773,'142','ACCESS_IN_CONTROL_PANEL',32),(774,'143','VIEW',1),(775,'143','ADD_TO_PAGE',2),(776,'143','CONFIGURATION',4),(777,'143','PERMISSIONS',8),(778,'143','PREFERENCES',16),(779,'143','ACCESS_IN_CONTROL_PANEL',32),(780,'145','VIEW',1),(781,'145','ADD_TO_PAGE',2),(782,'145','CONFIGURATION',4),(783,'145','PERMISSIONS',8),(784,'145','PREFERENCES',16),(785,'145','ACCESS_IN_CONTROL_PANEL',32),(786,'148','VIEW',1),(787,'148','ADD_TO_PAGE',2),(788,'148','CONFIGURATION',4),(789,'148','PERMISSIONS',8),(790,'148','PREFERENCES',16),(791,'148','ACCESS_IN_CONTROL_PANEL',32),(792,'47','VIEW',1),(793,'47','ADD_TO_PAGE',2),(794,'47','CONFIGURATION',4),(795,'47','PERMISSIONS',8),(796,'47','PREFERENCES',16),(797,'47','ACCESS_IN_CONTROL_PANEL',32),(798,'48','VIEW',1),(799,'48','ADD_TO_PAGE',2),(800,'48','CONFIGURATION',4),(801,'48','PERMISSIONS',8),(802,'48','PREFERENCES',16),(803,'48','ACCESS_IN_CONTROL_PANEL',32),(804,'49','VIEW',1),(805,'49','ADD_TO_PAGE',2),(806,'49','CONFIGURATION',4),(807,'49','PERMISSIONS',8),(808,'49','PREFERENCES',16),(809,'49','ACCESS_IN_CONTROL_PANEL',32),(810,'150','ACCESS_IN_CONTROL_PANEL',2),(811,'150','CONFIGURATION',4),(812,'150','VIEW',1),(813,'150','PERMISSIONS',8),(814,'150','PREFERENCES',16),(815,'151','ACCESS_IN_CONTROL_PANEL',2),(816,'151','CONFIGURATION',4),(817,'151','VIEW',1),(818,'151','PERMISSIONS',8),(819,'151','PREFERENCES',16),(820,'152','ACCESS_IN_CONTROL_PANEL',2),(821,'152','CONFIGURATION',4),(822,'152','VIEW',1),(823,'152','PERMISSIONS',8),(824,'152','PREFERENCES',16),(825,'153','ACCESS_IN_CONTROL_PANEL',2),(826,'153','ADD_TO_PAGE',4),(827,'153','CONFIGURATION',8),(828,'153','VIEW',1),(829,'153','PERMISSIONS',16),(830,'153','PREFERENCES',32),(831,'156','ACCESS_IN_CONTROL_PANEL',32),(832,'157','ACCESS_IN_CONTROL_PANEL',2),(833,'157','CONFIGURATION',4),(834,'157','VIEW',1),(835,'157','PERMISSIONS',8),(836,'157','PREFERENCES',16),(837,'158','ACCESS_IN_CONTROL_PANEL',2),(838,'158','ADD_TO_PAGE',4),(839,'158','CONFIGURATION',8),(840,'158','VIEW',1),(841,'158','PERMISSIONS',16),(842,'158','PREFERENCES',32),(843,'50','VIEW',1),(844,'50','ADD_TO_PAGE',2),(845,'50','CONFIGURATION',4),(846,'50','PERMISSIONS',8),(847,'50','PREFERENCES',16),(848,'50','ACCESS_IN_CONTROL_PANEL',32),(849,'54','VIEW',1),(850,'54','ADD_TO_PAGE',2),(851,'54','CONFIGURATION',4),(852,'54','PERMISSIONS',8),(853,'54','PREFERENCES',16),(854,'54','ACCESS_IN_CONTROL_PANEL',32),(855,'56','ADD_TO_PAGE',2),(856,'56','CONFIGURATION',4),(857,'56','VIEW',1),(858,'56','PERMISSIONS',8),(859,'56','PREFERENCES',16),(860,'56','ACCESS_IN_CONTROL_PANEL',32),(861,'58','ADD_TO_PAGE',2),(862,'58','CONFIGURATION',4),(863,'58','VIEW',1),(864,'58','PERMISSIONS',8),(865,'58','PREFERENCES',16),(866,'58','ACCESS_IN_CONTROL_PANEL',32),(867,'59','ACCESS_IN_CONTROL_PANEL',32),(868,'160','VIEW',1),(869,'160','ADD_TO_PAGE',2),(870,'160','CONFIGURATION',4),(871,'160','PERMISSIONS',8),(872,'160','PREFERENCES',16),(873,'160','ACCESS_IN_CONTROL_PANEL',32),(874,'164','VIEW',1),(875,'164','ADD_TO_PAGE',2),(876,'164','CONFIGURATION',4),(877,'164','PERMISSIONS',8),(878,'164','PREFERENCES',16),(879,'164','ACCESS_IN_CONTROL_PANEL',32),(880,'165','ACCESS_IN_CONTROL_PANEL',32),(881,'169','ACCESS_IN_CONTROL_PANEL',32),(882,'61','VIEW',1),(883,'61','ADD_TO_PAGE',2),(884,'61','CONFIGURATION',4),(885,'61','PERMISSIONS',8),(886,'61','PREFERENCES',16),(887,'61','ACCESS_IN_CONTROL_PANEL',32),(888,'62','VIEW',1),(889,'62','ADD_TO_PAGE',2),(890,'62','CONFIGURATION',4),(891,'62','PERMISSIONS',8),(892,'62','PREFERENCES',16),(893,'62','ACCESS_IN_CONTROL_PANEL',32),(894,'64','VIEW',1),(895,'64','ADD_TO_PAGE',2),(896,'64','CONFIGURATION',4),(897,'64','PERMISSIONS',8),(898,'64','PREFERENCES',16),(899,'64','ACCESS_IN_CONTROL_PANEL',32),(900,'66','VIEW',1),(901,'66','ADD_TO_PAGE',2),(902,'66','CONFIGURATION',4),(903,'66','PERMISSIONS',8),(904,'66','PREFERENCES',16),(905,'66','ACCESS_IN_CONTROL_PANEL',32),(906,'67','VIEW',1),(907,'67','ADD_TO_PAGE',2),(908,'67','CONFIGURATION',4),(909,'67','PERMISSIONS',8),(910,'67','PREFERENCES',16),(911,'67','ACCESS_IN_CONTROL_PANEL',32),(912,'170','VIEW',1),(913,'170','ADD_TO_PAGE',2),(914,'170','CONFIGURATION',4),(915,'170','PERMISSIONS',8),(916,'170','PREFERENCES',16),(917,'170','ACCESS_IN_CONTROL_PANEL',32),(918,'172','VIEW',1),(919,'172','ADD_TO_PAGE',2),(920,'172','CONFIGURATION',4),(921,'172','PERMISSIONS',8),(922,'172','PREFERENCES',16),(923,'172','ACCESS_IN_CONTROL_PANEL',32),(924,'173','VIEW',1),(925,'173','ADD_TO_PAGE',2),(926,'173','CONFIGURATION',4),(927,'173','PERMISSIONS',8),(928,'173','PREFERENCES',16),(929,'173','ACCESS_IN_CONTROL_PANEL',32),(930,'174','ACCESS_IN_CONTROL_PANEL',32),(931,'175','VIEW',1),(932,'175','ADD_TO_PAGE',2),(933,'175','CONFIGURATION',4),(934,'175','PERMISSIONS',8),(935,'175','PREFERENCES',16),(936,'175','ACCESS_IN_CONTROL_PANEL',32),(937,'176','VIEW',1),(938,'176','ADD_TO_PAGE',2),(939,'176','CONFIGURATION',4),(940,'176','PERMISSIONS',8),(941,'176','PREFERENCES',16),(942,'176','ACCESS_IN_CONTROL_PANEL',32),(943,'178','ACCESS_IN_CONTROL_PANEL',32),(944,'179','ACCESS_IN_CONTROL_PANEL',2),(945,'179','CONFIGURATION',4),(946,'179','VIEW',1),(947,'179','PERMISSIONS',8),(948,'179','PREFERENCES',16),(949,'70','VIEW',1),(950,'70','ADD_TO_PAGE',2),(951,'70','CONFIGURATION',4),(952,'70','PERMISSIONS',8),(953,'70','PREFERENCES',16),(954,'70','ACCESS_IN_CONTROL_PANEL',32),(955,'71','ADD_TO_PAGE',2),(956,'71','CONFIGURATION',4),(957,'71','VIEW',1),(958,'71','PERMISSIONS',8),(959,'71','PREFERENCES',16),(960,'71','ACCESS_IN_CONTROL_PANEL',32),(961,'73','ADD_TO_PAGE',2),(962,'73','CONFIGURATION',4),(963,'73','VIEW',1),(964,'73','PERMISSIONS',8),(965,'73','PREFERENCES',16),(966,'73','ACCESS_IN_CONTROL_PANEL',32),(967,'77','VIEW',1),(968,'77','ADD_TO_PAGE',2),(969,'77','CONFIGURATION',4),(970,'77','PERMISSIONS',8),(971,'77','PREFERENCES',16),(972,'77','ACCESS_IN_CONTROL_PANEL',32),(973,'180','VIEW',1),(974,'180','ADD_TO_PAGE',2),(975,'180','CONFIGURATION',4),(976,'180','PERMISSIONS',8),(977,'180','PREFERENCES',16),(978,'180','ACCESS_IN_CONTROL_PANEL',32),(979,'181','VIEW',1),(980,'181','ADD_TO_PAGE',2),(981,'181','CONFIGURATION',4),(982,'181','PERMISSIONS',8),(983,'181','PREFERENCES',16),(984,'181','ACCESS_IN_CONTROL_PANEL',32),(985,'182','VIEW',1),(986,'182','ADD_TO_PAGE',2),(987,'182','CONFIGURATION',4),(988,'182','PERMISSIONS',8),(989,'182','PREFERENCES',16),(990,'182','ACCESS_IN_CONTROL_PANEL',32),(991,'183','VIEW',1),(992,'183','ADD_TO_PAGE',2),(993,'183','CONFIGURATION',4),(994,'183','PERMISSIONS',8),(995,'183','PREFERENCES',16),(996,'183','ACCESS_IN_CONTROL_PANEL',32),(997,'184','ADD_TO_PAGE',2),(998,'184','CONFIGURATION',4),(999,'184','VIEW',1),(1000,'184','PERMISSIONS',8),(1001,'184','PREFERENCES',16),(1002,'184','ACCESS_IN_CONTROL_PANEL',32),(1003,'185','VIEW',1),(1004,'185','ADD_TO_PAGE',2),(1005,'185','CONFIGURATION',4),(1006,'185','PERMISSIONS',8),(1007,'185','PREFERENCES',16),(1008,'185','ACCESS_IN_CONTROL_PANEL',32),(1009,'186','ADD_TO_PAGE',2),(1010,'186','CONFIGURATION',4),(1011,'186','VIEW',1),(1012,'186','PERMISSIONS',8),(1013,'186','PREFERENCES',16),(1014,'186','ACCESS_IN_CONTROL_PANEL',32),(1015,'187','ADD_TO_PAGE',2),(1016,'187','CONFIGURATION',4),(1017,'187','VIEW',1),(1018,'187','PERMISSIONS',8),(1019,'187','PREFERENCES',16),(1020,'187','ACCESS_IN_CONTROL_PANEL',32),(1021,'100','VIEW',1),(1022,'100','ADD_TO_PAGE',2),(1023,'100','CONFIGURATION',4),(1024,'100','PERMISSIONS',8),(1025,'100','PREFERENCES',16),(1026,'100','ACCESS_IN_CONTROL_PANEL',32),(1027,'188','ADD_TO_PAGE',2),(1028,'188','CONFIGURATION',4),(1029,'188','VIEW',1),(1030,'188','PERMISSIONS',8),(1031,'188','PREFERENCES',16),(1032,'188','ACCESS_IN_CONTROL_PANEL',32),(1033,'101','ADD_PORTLET_DISPLAY_TEMPLATE',2),(1034,'101','ADD_TO_PAGE',4),(1035,'101','CONFIGURATION',8),(1036,'101','SUBSCRIBE',16),(1037,'101','VIEW',1),(1038,'101','PERMISSIONS',32),(1039,'101','PREFERENCES',64),(1040,'101','ACCESS_IN_CONTROL_PANEL',128),(1041,'102','VIEW',1),(1042,'102','ADD_TO_PAGE',2),(1043,'102','CONFIGURATION',4),(1044,'102','PERMISSIONS',8),(1045,'102','PREFERENCES',16),(1046,'102','ACCESS_IN_CONTROL_PANEL',32),(1047,'103','VIEW',1),(1048,'103','ADD_TO_PAGE',2),(1049,'103','CONFIGURATION',4),(1050,'103','PERMISSIONS',8),(1051,'103','PREFERENCES',16),(1052,'103','ACCESS_IN_CONTROL_PANEL',32),(1053,'107','VIEW',1),(1054,'107','ADD_TO_PAGE',2),(1055,'107','CONFIGURATION',4),(1056,'107','PERMISSIONS',8),(1057,'107','PREFERENCES',16),(1058,'107','ACCESS_IN_CONTROL_PANEL',32),(1059,'108','VIEW',1),(1060,'108','ADD_TO_PAGE',2),(1061,'108','CONFIGURATION',4),(1062,'108','PERMISSIONS',8),(1063,'108','PREFERENCES',16),(1064,'108','ACCESS_IN_CONTROL_PANEL',32),(1065,'82','VIEW',1),(1066,'82','ADD_TO_PAGE',2),(1067,'82','CONFIGURATION',4),(1068,'82','PERMISSIONS',8),(1069,'82','PREFERENCES',16),(1070,'82','ACCESS_IN_CONTROL_PANEL',32),(1071,'83','ACCESS_IN_CONTROL_PANEL',64),(1072,'84','ACCESS_IN_CONTROL_PANEL',64),(1073,'85','ADD_TO_PAGE',2),(1074,'85','CONFIGURATION',4),(1075,'85','VIEW',1),(1076,'85','PERMISSIONS',8),(1077,'85','PREFERENCES',16),(1078,'85','ADD_PORTLET_DISPLAY_TEMPLATE',32),(1079,'85','ACCESS_IN_CONTROL_PANEL',64),(1080,'86','VIEW',1),(1081,'86','ADD_TO_PAGE',2),(1082,'86','CONFIGURATION',4),(1083,'86','PERMISSIONS',8),(1084,'86','PREFERENCES',16),(1085,'86','ACCESS_IN_CONTROL_PANEL',32),(1086,'1_WAR_marketplaceportlet','VIEW',1),(1087,'1_WAR_marketplaceportlet','ADD_TO_PAGE',2),(1088,'1_WAR_marketplaceportlet','CONFIGURATION',4),(1089,'1_WAR_marketplaceportlet','PERMISSIONS',8),(1090,'1_WAR_marketplaceportlet','PREFERENCES',16),(1091,'1_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',32),(1092,'3_WAR_marketplaceportlet','VIEW',1),(1093,'3_WAR_marketplaceportlet','ADD_TO_PAGE',2),(1094,'3_WAR_marketplaceportlet','CONFIGURATION',4),(1095,'3_WAR_marketplaceportlet','PERMISSIONS',8),(1096,'3_WAR_marketplaceportlet','PREFERENCES',16),(1097,'3_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',32),(1098,'2_WAR_marketplaceportlet','VIEW',1),(1099,'2_WAR_marketplaceportlet','ADD_TO_PAGE',2),(1100,'2_WAR_marketplaceportlet','CONFIGURATION',4),(1101,'2_WAR_marketplaceportlet','PERMISSIONS',8),(1102,'2_WAR_marketplaceportlet','PREFERENCES',16),(1103,'2_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',32),(1104,'2_WAR_notificationsportlet','VIEW',1),(1105,'2_WAR_notificationsportlet','ADD_TO_PAGE',2),(1106,'2_WAR_notificationsportlet','CONFIGURATION',4),(1107,'2_WAR_notificationsportlet','PERMISSIONS',8),(1108,'2_WAR_notificationsportlet','PREFERENCES',16),(1109,'2_WAR_notificationsportlet','ACCESS_IN_CONTROL_PANEL',32),(1110,'1_WAR_notificationsportlet','VIEW',1),(1111,'1_WAR_notificationsportlet','ADD_TO_PAGE',2),(1112,'1_WAR_notificationsportlet','CONFIGURATION',4),(1113,'1_WAR_notificationsportlet','PERMISSIONS',8),(1114,'1_WAR_notificationsportlet','PREFERENCES',16),(1115,'1_WAR_notificationsportlet','ACCESS_IN_CONTROL_PANEL',32),(1116,'1_WAR_calendarportlet','ACCESS_IN_CONTROL_PANEL',2),(1117,'1_WAR_calendarportlet','ADD_TO_PAGE',4),(1118,'1_WAR_calendarportlet','CONFIGURATION',8),(1119,'1_WAR_calendarportlet','VIEW',1),(1120,'1_WAR_calendarportlet','PERMISSIONS',16),(1121,'1_WAR_calendarportlet','PREFERENCES',32),(1122,'com.liferay.calendar.model.CalendarResource','ADD_CALENDAR',2),(1123,'com.liferay.calendar.model.CalendarResource','DELETE',4),(1124,'com.liferay.calendar.model.CalendarResource','UPDATE',8),(1125,'com.liferay.calendar.model.CalendarResource','VIEW',1),(1126,'com.liferay.calendar.model.CalendarResource','PERMISSIONS',16),(1127,'com.liferay.calendar.model.CalendarBooking','ADD_DISCUSSION',2),(1128,'com.liferay.calendar.model.CalendarBooking','DELETE_DISCUSSION',4),(1129,'com.liferay.calendar.model.CalendarBooking','PERMISSIONS',8),(1130,'com.liferay.calendar.model.CalendarBooking','UPDATE_DISCUSSION',16),(1131,'com.liferay.calendar','ADD_RESOURCE',2),(1132,'com.liferay.calendar','PERMISSIONS',4),(1133,'com.liferay.calendar.model.Calendar','DELETE',2),(1134,'com.liferay.calendar.model.Calendar','MANAGE_BOOKINGS',4),(1135,'com.liferay.calendar.model.Calendar','PERMISSIONS',8),(1136,'com.liferay.calendar.model.Calendar','UPDATE',16),(1137,'com.liferay.calendar.model.Calendar','VIEW',1),(1138,'com.liferay.calendar.model.Calendar','VIEW_BOOKING_DETAILS',32),(1139,'1_WAR_webformportlet','VIEW',1),(1140,'1_WAR_webformportlet','ADD_TO_PAGE',2),(1141,'1_WAR_webformportlet','CONFIGURATION',4),(1142,'1_WAR_webformportlet','PERMISSIONS',8),(1143,'1_WAR_webformportlet','PREFERENCES',16),(1144,'1_WAR_webformportlet','ACCESS_IN_CONTROL_PANEL',32),(1145,'dockbarnotificationaction_WAR_DockBarCustomNotificationportlet','VIEW',1),(1146,'dockbarnotificationaction_WAR_DockBarCustomNotificationportlet','ADD_TO_PAGE',2),(1147,'dockbarnotificationaction_WAR_DockBarCustomNotificationportlet','CONFIGURATION',4),(1148,'dockbarnotificationaction_WAR_DockBarCustomNotificationportlet','PERMISSIONS',8),(1149,'dockbarnotificationaction_WAR_DockBarCustomNotificationportlet','PREFERENCES',16),(1150,'dockbarnotificationaction_WAR_DockBarCustomNotificationportlet','ACCESS_IN_CONTROL_PANEL',32),(1151,'1_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',2),(1152,'1_WAR_opensocialportlet','CONFIGURATION',4),(1153,'1_WAR_opensocialportlet','VIEW',1),(1154,'1_WAR_opensocialportlet','PERMISSIONS',8),(1155,'1_WAR_opensocialportlet','PREFERENCES',16),(1156,'com.liferay.opensocial.model.Gadget','DELETE',2),(1157,'com.liferay.opensocial.model.Gadget','PERMISSIONS',4),(1158,'com.liferay.opensocial.model.Gadget','UPDATE',8),(1159,'com.liferay.opensocial.model.Gadget','VIEW',1),(1160,'com.liferay.opensocial','PERMISSIONS',2),(1161,'com.liferay.opensocial','PUBLISH_GADGET',4),(1162,'2_WAR_opensocialportlet','ADD_TO_PAGE',2),(1163,'2_WAR_opensocialportlet','CONFIGURATION',4),(1164,'2_WAR_opensocialportlet','VIEW',1),(1165,'2_WAR_opensocialportlet','PERMISSIONS',8),(1166,'2_WAR_opensocialportlet','PREFERENCES',16),(1167,'2_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',32),(1168,'3_WAR_opensocialportlet','ADD_TO_PAGE',2),(1169,'3_WAR_opensocialportlet','CONFIGURATION',4),(1170,'3_WAR_opensocialportlet','VIEW',1),(1171,'3_WAR_opensocialportlet','PERMISSIONS',8),(1172,'3_WAR_opensocialportlet','PREFERENCES',16),(1173,'3_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',32),(1174,'4_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',2),(1175,'4_WAR_opensocialportlet','CONFIGURATION',4),(1176,'4_WAR_opensocialportlet','VIEW',1),(1177,'4_WAR_opensocialportlet','PERMISSIONS',8),(1178,'4_WAR_opensocialportlet','PREFERENCES',16),(1179,'SchedulerJobs_WAR_SchedulerJobsportlet','VIEW',1),(1180,'SchedulerJobs_WAR_SchedulerJobsportlet','ADD_TO_PAGE',2),(1181,'SchedulerJobs_WAR_SchedulerJobsportlet','CONFIGURATION',4),(1182,'SchedulerJobs_WAR_SchedulerJobsportlet','PERMISSIONS',8),(1183,'SchedulerJobs_WAR_SchedulerJobsportlet','PREFERENCES',16),(1184,'SchedulerJobs_WAR_SchedulerJobsportlet','ACCESS_IN_CONTROL_PANEL',32),(1201,'Susbcription_WAR_Suscriptionportlet','VIEW',1),(1202,'Susbcription_WAR_Suscriptionportlet','ADD_TO_PAGE',2),(1203,'Susbcription_WAR_Suscriptionportlet','CONFIGURATION',4),(1204,'Susbcription_WAR_Suscriptionportlet','PERMISSIONS',8),(1205,'Susbcription_WAR_Suscriptionportlet','PREFERENCES',16),(1206,'Susbcription_WAR_Suscriptionportlet','ACCESS_IN_CONTROL_PANEL',32),(1207,'Subscriptions_WAR_Subscriptionsportlet','VIEW',1),(1208,'Subscriptions_WAR_Subscriptionsportlet','ADD_TO_PAGE',2),(1209,'Subscriptions_WAR_Subscriptionsportlet','CONFIGURATION',4),(1210,'Subscriptions_WAR_Subscriptionsportlet','PERMISSIONS',8),(1211,'Subscriptions_WAR_Subscriptionsportlet','PREFERENCES',16),(1212,'Subscriptions_WAR_Subscriptionsportlet','ACCESS_IN_CONTROL_PANEL',32),(1301,'Customer_WAR_Customerportlet','VIEW',1),(1302,'Customer_WAR_Customerportlet','ADD_TO_PAGE',2),(1303,'Customer_WAR_Customerportlet','CONFIGURATION',4),(1304,'Customer_WAR_Customerportlet','PERMISSIONS',8),(1305,'Customer_WAR_Customerportlet','PREFERENCES',16),(1306,'Customer_WAR_Customerportlet','ACCESS_IN_CONTROL_PANEL',32);
/*!40000 ALTER TABLE `ResourceAction` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`resourceBlockId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceBlock`
--

LOCK TABLES `ResourceBlock` WRITE;
/*!40000 ALTER TABLE `ResourceBlock` DISABLE KEYS */;
INSERT INTO `ResourceBlock` VALUES (101,20155,35232,'com.liferay.calendar.model.CalendarResource','0e3875dce3bb9b14fcb987ed2366069a2b4b03be',1),(104,20155,35232,'com.liferay.calendar.model.Calendar','2ae2fa8381158f5a91ddcb6cedc99f1082cb30d7',1),(201,20155,37312,'com.liferay.calendar.model.CalendarResource','0e3875dce3bb9b14fcb987ed2366069a2b4b03be',1),(204,20155,37312,'com.liferay.calendar.model.Calendar','2ae2fa8381158f5a91ddcb6cedc99f1082cb30d7',1),(205,20155,37345,'com.liferay.calendar.model.CalendarResource','0e3875dce3bb9b14fcb987ed2366069a2b4b03be',1),(208,20155,37345,'com.liferay.calendar.model.Calendar','2ae2fa8381158f5a91ddcb6cedc99f1082cb30d7',1);
/*!40000 ALTER TABLE `ResourceBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceBlockPermission`
--

DROP TABLE IF EXISTS `ResourceBlockPermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceBlockPermission` (
  `resourceBlockPermissionId` bigint(20) NOT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockPermissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceBlockPermission`
--

LOCK TABLES `ResourceBlockPermission` WRITE;
/*!40000 ALTER TABLE `ResourceBlockPermission` DISABLE KEYS */;
INSERT INTO `ResourceBlockPermission` VALUES (20704,1,20164,31),(20706,2,20164,63),(20707,3,20164,63),(20708,3,20171,1),(20709,4,20163,1),(20710,4,20164,63),(20711,4,20171,1),(35244,101,20164,31),(35246,102,20164,63),(35247,103,20164,63),(35248,103,20171,1),(35249,104,20163,1),(35250,104,20164,63),(35251,104,20171,1),(37324,201,20164,31),(37326,202,20164,63),(37327,203,20164,63),(37328,203,20171,1),(37329,204,20163,1),(37330,204,20164,63),(37331,204,20171,1),(37357,205,20164,31),(37359,206,20164,63),(37360,207,20164,63),(37361,207,20171,1),(37362,208,20163,1),(37363,208,20164,63),(37364,208,20171,1);
/*!40000 ALTER TABLE `ResourceBlockPermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourcePermission`
--

DROP TABLE IF EXISTS `ResourcePermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourcePermission` (
  `resourcePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourcePermissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourcePermission`
--

LOCK TABLES `ResourcePermission` WRITE;
/*!40000 ALTER TABLE `ResourcePermission` DISABLE KEYS */;
INSERT INTO `ResourcePermission` VALUES (1,20155,'2',1,'20155',20166,0,2),(2,20155,'140',1,'20155',20166,0,2),(3,20155,'158',1,'20155',20166,0,6),(4,20155,'153',1,'20155',20166,0,6),(5,20155,'com.liferay.portal.model.Role',4,'20162',20166,0,1),(6,20155,'com.liferay.portal.model.Role',4,'20163',20166,0,1),(7,20155,'com.liferay.portal.model.Role',4,'20164',20166,0,1),(8,20155,'com.liferay.portal.model.Role',4,'20165',20166,0,1),(9,20155,'com.liferay.portal.model.Role',4,'20166',20166,0,1),(10,20155,'com.liferay.portal.model.Role',4,'20167',20166,0,1),(11,20155,'com.liferay.portal.model.Role',4,'20168',20166,0,1),(12,20155,'com.liferay.portal.model.Role',4,'20169',20166,0,1),(13,20155,'com.liferay.portal.model.Role',4,'20170',20166,0,1),(14,20155,'com.liferay.portal.model.Role',4,'20171',20166,0,1),(15,20155,'com.liferay.portal.model.Role',4,'20172',20166,0,1),(16,20155,'com.liferay.portal.model.Layout',4,'20176',20164,20159,1023),(17,20155,'com.liferay.portal.model.Layout',4,'20176',20171,0,19),(18,20155,'com.liferay.portal.model.Layout',4,'20176',20163,0,1),(22,20155,'193',2,'20192',20166,0,1),(23,20155,'194',2,'20192',20166,0,1),(24,20155,'110',2,'20192',20166,0,1),(25,20155,'114',2,'20192',20166,0,1),(26,20155,'115',2,'20192',20166,0,1),(27,20155,'116',2,'20192',20166,0,1),(28,20155,'118',2,'20192',20166,0,1),(29,20155,'97',2,'20192',20166,0,1),(30,20155,'98',2,'20192',20166,0,1),(31,20155,'11',2,'20192',20166,0,1),(32,20155,'99',2,'20192',20166,0,1),(33,20155,'15',2,'20192',20166,0,1),(34,20155,'16',2,'20192',20166,0,1),(35,20155,'19',2,'20192',20166,0,1),(36,20155,'121',2,'20192',20166,0,1),(37,20155,'122',2,'20192',20166,0,1),(38,20155,'3',2,'20192',20166,0,1),(39,20155,'125',2,'20192',20166,0,1),(40,20155,'127',2,'20192',20166,0,1),(41,20155,'128',2,'20192',20166,0,1),(42,20155,'129',2,'20192',20166,0,1),(43,20155,'9',2,'20192',20166,0,1),(44,20155,'20',2,'20192',20166,0,1),(45,20155,'23',2,'20192',20166,0,1),(46,20155,'25',2,'20192',20166,0,1),(47,20155,'26',2,'20192',20166,0,1),(48,20155,'27',2,'20192',20166,0,1),(49,20155,'28',2,'20192',20166,0,1),(50,20155,'29',2,'20192',20166,0,1),(51,20155,'130',2,'20192',20166,0,1),(52,20155,'131',2,'20192',20166,0,1),(53,20155,'132',2,'20192',20166,0,1),(54,20155,'134',2,'20192',20166,0,1),(55,20155,'135',2,'20192',20166,0,1),(56,20155,'137',2,'20192',20166,0,1),(57,20155,'30',2,'20192',20166,0,1),(58,20155,'31',2,'20192',20166,0,1),(59,20155,'33',2,'20192',20166,0,1),(60,20155,'34',2,'20192',20166,0,1),(61,20155,'36',2,'20192',20166,0,1),(62,20155,'39',2,'20192',20166,0,1),(63,20155,'141',2,'20192',20166,0,1),(64,20155,'143',2,'20192',20166,0,1),(65,20155,'146',2,'20192',20166,0,1),(66,20155,'147',2,'20192',20166,0,1),(67,20155,'148',2,'20192',20166,0,1),(68,20155,'149',2,'20192',20166,0,1),(69,20155,'47',2,'20192',20166,0,1),(70,20155,'48',2,'20192',20166,0,1),(71,20155,'150',2,'20192',20166,0,1),(72,20155,'151',2,'20192',20166,0,1),(73,20155,'152',2,'20192',20166,0,1),(74,20155,'153',2,'20192',20166,0,1),(75,20155,'154',2,'20192',20166,0,1),(76,20155,'157',2,'20192',20166,0,1),(77,20155,'158',2,'20192',20166,0,1),(78,20155,'50',2,'20192',20166,0,1),(79,20155,'54',2,'20192',20166,0,1),(80,20155,'56',2,'20192',20166,0,1),(81,20155,'58',2,'20192',20166,0,1),(82,20155,'59',2,'20192',20166,0,1),(83,20155,'161',2,'20192',20166,0,1),(84,20155,'162',2,'20192',20166,0,1),(85,20155,'164',2,'20192',20166,0,1),(86,20155,'166',2,'20192',20166,0,1),(87,20155,'167',2,'20192',20166,0,1),(88,20155,'169',2,'20192',20166,0,1),(89,20155,'61',2,'20192',20166,0,1),(90,20155,'62',2,'20192',20166,0,1),(91,20155,'64',2,'20192',20166,0,1),(92,20155,'66',2,'20192',20166,0,1),(93,20155,'67',2,'20192',20166,0,1),(94,20155,'173',2,'20192',20166,0,1),(95,20155,'175',2,'20192',20166,0,1),(96,20155,'176',2,'20192',20166,0,1),(97,20155,'178',2,'20192',20166,0,1),(98,20155,'179',2,'20192',20166,0,1),(99,20155,'70',2,'20192',20166,0,1),(100,20155,'71',2,'20192',20166,0,1),(101,20155,'73',2,'20192',20166,0,1),(102,20155,'77',2,'20192',20166,0,1),(103,20155,'180',2,'20192',20166,0,1),(104,20155,'181',2,'20192',20166,0,1),(105,20155,'182',2,'20192',20166,0,1),(106,20155,'183',2,'20192',20166,0,1),(107,20155,'184',2,'20192',20166,0,1),(108,20155,'186',2,'20192',20166,0,1),(109,20155,'187',2,'20192',20166,0,1),(110,20155,'100',2,'20192',20166,0,1),(111,20155,'188',2,'20192',20166,0,1),(112,20155,'101',2,'20192',20166,0,1),(113,20155,'102',2,'20192',20166,0,1),(114,20155,'107',2,'20192',20166,0,1),(115,20155,'108',2,'20192',20166,0,1),(116,20155,'82',2,'20192',20166,0,1),(117,20155,'83',2,'20192',20166,0,1),(118,20155,'84',2,'20192',20166,0,1),(119,20155,'85',2,'20192',20166,0,1),(120,20155,'com.liferay.portal.model.Layout',2,'20192',20166,0,1),(121,20155,'com.liferay.portlet.blogs',2,'20192',20166,0,14),(122,20155,'98',2,'20192',20165,0,2),(123,20155,'99',2,'20192',20165,0,2),(124,20155,'15',2,'20192',20165,0,2),(125,20155,'20',2,'20192',20165,0,2),(126,20155,'25',2,'20192',20165,0,2),(127,20155,'28',2,'20192',20165,0,2),(128,20155,'147',2,'20192',20165,0,2),(129,20155,'152',2,'20192',20165,0,2),(130,20155,'154',2,'20192',20165,0,2),(131,20155,'161',2,'20192',20165,0,2),(132,20155,'162',2,'20192',20165,0,2),(133,20155,'167',2,'20192',20165,0,2),(134,20155,'173',2,'20192',20165,0,32),(135,20155,'178',2,'20192',20165,0,32),(136,20155,'179',2,'20192',20165,0,2),(137,20155,'182',2,'20192',20165,0,32),(138,20155,'183',2,'20192',20165,0,32),(139,20155,'com.liferay.portal.model.Group',2,'20192',20165,0,8396800),(140,20155,'com.liferay.portlet.asset',2,'20192',20165,0,30),(141,20155,'com.liferay.portlet.blogs',2,'20192',20165,0,14),(142,20155,'com.liferay.portlet.bookmarks',2,'20192',20165,0,31),(143,20155,'com.liferay.portlet.documentlibrary',2,'20192',20165,0,1023),(144,20155,'com.liferay.portlet.journal',2,'20192',20165,0,255),(145,20155,'com.liferay.portlet.messageboards',2,'20192',20165,0,2047),(146,20155,'com.liferay.portlet.polls',2,'20192',20165,0,6),(147,20155,'com.liferay.portlet.wiki',2,'20192',20165,0,6),(148,20155,'com.liferay.portal.model.User',4,'20199',20164,20199,31),(149,20155,'193',1,'20155',20163,0,2),(150,20155,'193',1,'20155',20165,0,2),(151,20155,'193',1,'20155',20166,0,2),(152,20155,'194',1,'20155',20163,0,2),(153,20155,'194',1,'20155',20165,0,2),(154,20155,'194',1,'20155',20166,0,2),(155,20155,'110',1,'20155',20165,0,2),(156,20155,'110',1,'20155',20166,0,2),(157,20155,'114',1,'20155',20163,0,2),(158,20155,'114',1,'20155',20165,0,2),(159,20155,'114',1,'20155',20166,0,2),(160,20155,'115',1,'20155',20163,0,2),(161,20155,'115',1,'20155',20165,0,2),(162,20155,'115',1,'20155',20166,0,2),(163,20155,'116',1,'20155',20163,0,2),(164,20155,'116',1,'20155',20165,0,2),(165,20155,'116',1,'20155',20166,0,2),(166,20155,'118',1,'20155',20163,0,2),(167,20155,'118',1,'20155',20165,0,2),(168,20155,'118',1,'20155',20166,0,2),(169,20155,'97',1,'20155',20165,0,2),(170,20155,'97',1,'20155',20166,0,2),(171,20155,'98',1,'20155',20165,0,4),(172,20155,'98',1,'20155',20166,0,4),(173,20155,'11',1,'20155',20165,0,2),(174,20155,'11',1,'20155',20166,0,2),(175,20155,'15',1,'20155',20165,0,4),(176,20155,'15',1,'20155',20166,0,4),(177,20155,'16',1,'20155',20165,0,8),(178,20155,'16',1,'20155',20166,0,8),(179,20155,'19',1,'20155',20165,0,2),(180,20155,'19',1,'20155',20166,0,2),(181,20155,'121',1,'20155',20163,0,2),(182,20155,'121',1,'20155',20165,0,2),(183,20155,'121',1,'20155',20166,0,2),(184,20155,'122',1,'20155',20163,0,8),(185,20155,'122',1,'20155',20165,0,8),(186,20155,'122',1,'20155',20166,0,8),(187,20155,'3',1,'20155',20163,0,2),(188,20155,'3',1,'20155',20165,0,2),(189,20155,'3',1,'20155',20166,0,2),(190,20155,'127',1,'20155',20162,0,2),(191,20155,'9',1,'20155',20162,0,2),(192,20155,'20',1,'20155',20163,0,8),(193,20155,'20',1,'20155',20165,0,8),(194,20155,'20',1,'20155',20166,0,8),(195,20155,'23',1,'20155',20165,0,2),(196,20155,'23',1,'20155',20166,0,2),(197,20155,'26',1,'20155',20165,0,2),(198,20155,'26',1,'20155',20166,0,2),(199,20155,'27',1,'20155',20165,0,2),(200,20155,'27',1,'20155',20166,0,2),(201,20155,'28',1,'20155',20165,0,4),(202,20155,'28',1,'20155',20166,0,4),(203,20155,'29',1,'20155',20165,0,2),(204,20155,'29',1,'20155',20166,0,2),(205,20155,'30',1,'20155',20165,0,2),(206,20155,'30',1,'20155',20166,0,2),(207,20155,'31',1,'20155',20163,0,2),(208,20155,'31',1,'20155',20165,0,2),(209,20155,'31',1,'20155',20166,0,2),(210,20155,'33',1,'20155',20163,0,4),(211,20155,'33',1,'20155',20165,0,4),(212,20155,'33',1,'20155',20166,0,4),(213,20155,'34',1,'20155',20165,0,2),(214,20155,'34',1,'20155',20166,0,2),(215,20155,'36',1,'20155',20165,0,4),(216,20155,'36',1,'20155',20166,0,4),(217,20155,'39',1,'20155',20165,0,2),(218,20155,'39',1,'20155',20166,0,2),(219,20155,'141',1,'20155',20163,0,8),(220,20155,'141',1,'20155',20165,0,8),(221,20155,'141',1,'20155',20166,0,8),(222,20155,'143',1,'20155',20163,0,2),(223,20155,'143',1,'20155',20165,0,2),(224,20155,'143',1,'20155',20166,0,2),(225,20155,'148',1,'20155',20163,0,2),(226,20155,'148',1,'20155',20165,0,2),(227,20155,'148',1,'20155',20166,0,2),(228,20155,'47',1,'20155',20163,0,2),(229,20155,'47',1,'20155',20165,0,2),(230,20155,'47',1,'20155',20166,0,2),(231,20155,'48',1,'20155',20165,0,2),(232,20155,'48',1,'20155',20166,0,2),(233,20155,'153',1,'20155',20165,0,4),(234,20155,'158',1,'20155',20165,0,4),(235,20155,'50',1,'20155',20163,0,2),(236,20155,'50',1,'20155',20165,0,2),(237,20155,'50',1,'20155',20166,0,2),(238,20155,'54',1,'20155',20165,0,2),(239,20155,'54',1,'20155',20166,0,2),(240,20155,'56',1,'20155',20163,0,2),(241,20155,'56',1,'20155',20165,0,2),(242,20155,'56',1,'20155',20166,0,2),(243,20155,'58',1,'20155',20163,0,2),(244,20155,'58',1,'20155',20165,0,2),(245,20155,'58',1,'20155',20166,0,2),(246,20155,'59',1,'20155',20165,0,2),(247,20155,'59',1,'20155',20166,0,2),(248,20155,'164',1,'20155',20163,0,2),(249,20155,'164',1,'20155',20165,0,2),(250,20155,'164',1,'20155',20166,0,2),(251,20155,'166',1,'20155',20165,0,4),(252,20155,'166',1,'20155',20166,0,4),(253,20155,'167',1,'20155',20165,0,4),(254,20155,'167',1,'20155',20166,0,4),(255,20155,'169',1,'20155',20165,0,2),(256,20155,'169',1,'20155',20166,0,2),(257,20155,'61',1,'20155',20165,0,2),(258,20155,'61',1,'20155',20166,0,2),(259,20155,'62',1,'20155',20165,0,2),(260,20155,'62',1,'20155',20166,0,2),(261,20155,'64',1,'20155',20163,0,2),(262,20155,'64',1,'20155',20165,0,2),(263,20155,'64',1,'20155',20166,0,2),(264,20155,'66',1,'20155',20165,0,2),(265,20155,'66',1,'20155',20166,0,2),(266,20155,'67',1,'20155',20165,0,2),(267,20155,'67',1,'20155',20166,0,2),(268,20155,'173',1,'20155',20163,0,2),(269,20155,'173',1,'20155',20165,0,2),(270,20155,'173',1,'20155',20166,0,2),(271,20155,'175',1,'20155',20163,0,2),(272,20155,'175',1,'20155',20165,0,2),(273,20155,'175',1,'20155',20166,0,2),(274,20155,'176',1,'20155',20162,0,2),(275,20155,'178',1,'20155',20165,0,4),(276,20155,'178',1,'20155',20166,0,4),(277,20155,'70',1,'20155',20165,0,2),(278,20155,'70',1,'20155',20166,0,2),(279,20155,'71',1,'20155',20163,0,2),(280,20155,'71',1,'20155',20165,0,2),(281,20155,'71',1,'20155',20166,0,2),(282,20155,'73',1,'20155',20163,0,2),(283,20155,'73',1,'20155',20165,0,2),(284,20155,'73',1,'20155',20166,0,2),(285,20155,'77',1,'20155',20163,0,2),(286,20155,'77',1,'20155',20165,0,2),(287,20155,'77',1,'20155',20166,0,2),(288,20155,'180',1,'20155',20163,0,2),(289,20155,'180',1,'20155',20165,0,2),(290,20155,'180',1,'20155',20166,0,2),(291,20155,'181',1,'20155',20163,0,2),(292,20155,'181',1,'20155',20165,0,2),(293,20155,'181',1,'20155',20166,0,2),(294,20155,'182',1,'20155',20165,0,2),(295,20155,'182',1,'20155',20166,0,2),(296,20155,'183',1,'20155',20162,0,2),(297,20155,'184',1,'20155',20163,0,2),(298,20155,'184',1,'20155',20165,0,2),(299,20155,'184',1,'20155',20166,0,2),(300,20155,'186',1,'20155',20165,0,2),(301,20155,'186',1,'20155',20166,0,2),(302,20155,'187',1,'20155',20165,0,2),(303,20155,'187',1,'20155',20166,0,2),(304,20155,'100',1,'20155',20165,0,2),(305,20155,'100',1,'20155',20166,0,2),(306,20155,'188',1,'20155',20165,0,2),(307,20155,'188',1,'20155',20166,0,2),(308,20155,'101',1,'20155',20163,0,4),(309,20155,'101',1,'20155',20165,0,4),(310,20155,'101',1,'20155',20166,0,4),(311,20155,'102',1,'20155',20162,0,2),(312,20155,'107',1,'20155',20165,0,2),(313,20155,'107',1,'20155',20166,0,2),(314,20155,'108',1,'20155',20165,0,2),(315,20155,'108',1,'20155',20166,0,2),(316,20155,'82',1,'20155',20163,0,2),(317,20155,'82',1,'20155',20165,0,2),(318,20155,'82',1,'20155',20166,0,2),(319,20155,'83',1,'20155',20165,0,4),(320,20155,'83',1,'20155',20166,0,4),(321,20155,'84',1,'20155',20165,0,4),(322,20155,'84',1,'20155',20166,0,4),(323,20155,'85',1,'20155',20163,0,2),(324,20155,'85',1,'20155',20165,0,2),(325,20155,'85',1,'20155',20166,0,2),(326,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20305',20164,20159,15),(327,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20305',20166,0,1),(328,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20305',20163,0,1),(329,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20306',20164,20159,15),(330,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20306',20166,0,1),(331,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20306',20163,0,1),(332,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20307',20164,20159,15),(333,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20307',20166,0,1),(334,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20307',20163,0,1),(335,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20309',20164,20159,15),(336,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20309',20166,0,1),(337,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20309',20163,0,1),(338,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20308',20164,20159,15),(339,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20308',20166,0,1),(340,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20308',20163,0,1),(341,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20311',20164,20159,15),(342,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20311',20166,0,1),(343,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20311',20163,0,1),(344,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20310',20164,20159,15),(345,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20310',20166,0,1),(346,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20310',20163,0,1),(347,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20313',20164,20159,15),(348,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20313',20166,0,1),(349,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20313',20163,0,1),(350,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20312',20164,20159,15),(351,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20312',20166,0,1),(352,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20312',20163,0,1),(353,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20315',20164,20159,15),(354,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20315',20166,0,1),(355,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20315',20163,0,1),(356,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20314',20164,20159,15),(357,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20314',20166,0,1),(358,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20314',20163,0,1),(359,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20317',20164,20159,15),(360,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20317',20166,0,1),(361,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20317',20163,0,1),(362,20155,'com.liferay.portal.model.LayoutPrototype',4,'20318',20164,20159,15),(363,20155,'com.liferay.portal.model.Layout',4,'20322',20164,20159,1023),(364,20155,'com.liferay.portal.model.Layout',4,'20322',20171,0,19),(365,20155,'com.liferay.portlet.asset.model.AssetVocabulary',4,'20326',20164,20159,15),(366,20155,'33',4,'20322_LAYOUT_33',20164,0,127),(367,20155,'33',4,'20322_LAYOUT_33',20171,0,1),(368,20155,'33',4,'20322_LAYOUT_33',20163,0,1),(369,20155,'com.liferay.portlet.blogs',4,'20319',20164,0,14),(370,20155,'148',4,'20322_LAYOUT_148_INSTANCE_SeyG3ebbnObU',20164,0,63),(371,20155,'148',4,'20322_LAYOUT_148_INSTANCE_SeyG3ebbnObU',20171,0,1),(372,20155,'148',4,'20322_LAYOUT_148_INSTANCE_SeyG3ebbnObU',20163,0,1),(373,20155,'114',4,'20322_LAYOUT_114',20164,0,63),(374,20155,'114',4,'20322_LAYOUT_114',20171,0,1),(375,20155,'114',4,'20322_LAYOUT_114',20163,0,1),(376,20155,'com.liferay.portal.model.LayoutPrototype',4,'20330',20164,20159,15),(377,20155,'com.liferay.portal.model.Layout',4,'20334',20164,20159,1023),(378,20155,'com.liferay.portal.model.Layout',4,'20334',20171,0,19),(379,20155,'141',4,'20334_LAYOUT_141_INSTANCE_jZ2YlHZ5ikMt',20164,0,127),(380,20155,'141',4,'20334_LAYOUT_141_INSTANCE_jZ2YlHZ5ikMt',20171,0,1),(381,20155,'141',4,'20334_LAYOUT_141_INSTANCE_jZ2YlHZ5ikMt',20163,0,1),(382,20155,'122',4,'20334_LAYOUT_122_INSTANCE_O7ytoOKVyF8B',20164,0,127),(383,20155,'122',4,'20334_LAYOUT_122_INSTANCE_O7ytoOKVyF8B',20171,0,1),(384,20155,'122',4,'20334_LAYOUT_122_INSTANCE_O7ytoOKVyF8B',20163,0,1),(385,20155,'3',4,'20334_LAYOUT_3',20164,0,63),(386,20155,'3',4,'20334_LAYOUT_3',20171,0,1),(387,20155,'3',4,'20334_LAYOUT_3',20163,0,1),(388,20155,'101',4,'20334_LAYOUT_101_INSTANCE_FgWr2OKBLSOd',20164,0,255),(389,20155,'101',4,'20334_LAYOUT_101_INSTANCE_FgWr2OKBLSOd',20171,0,17),(390,20155,'101',4,'20334_LAYOUT_101_INSTANCE_FgWr2OKBLSOd',20163,0,1),(391,20155,'com.liferay.portal.model.LayoutPrototype',4,'20340',20164,20159,15),(392,20155,'com.liferay.portal.model.Layout',4,'20344',20164,20159,1023),(393,20155,'com.liferay.portal.model.Layout',4,'20344',20171,0,19),(394,20155,'36',4,'20344_LAYOUT_36',20164,0,127),(395,20155,'36',4,'20344_LAYOUT_36',20171,0,1),(396,20155,'36',4,'20344_LAYOUT_36',20163,0,1),(397,20155,'com.liferay.portlet.wiki',4,'20341',20164,0,6),(398,20155,'122',4,'20344_LAYOUT_122_INSTANCE_tIvnwhnIqNy2',20164,0,127),(399,20155,'122',4,'20344_LAYOUT_122_INSTANCE_tIvnwhnIqNy2',20171,0,1),(400,20155,'122',4,'20344_LAYOUT_122_INSTANCE_tIvnwhnIqNy2',20163,0,1),(401,20155,'141',4,'20344_LAYOUT_141_INSTANCE_w3B3vvLJjfog',20164,0,127),(402,20155,'141',4,'20344_LAYOUT_141_INSTANCE_w3B3vvLJjfog',20171,0,1),(403,20155,'141',4,'20344_LAYOUT_141_INSTANCE_w3B3vvLJjfog',20163,0,1),(404,20155,'com.liferay.portal.model.LayoutSetPrototype',4,'20351',20164,20159,15),(408,20155,'com.liferay.portal.model.Layout',4,'20363',20164,20159,1023),(409,20155,'com.liferay.portal.model.Layout',4,'20363',20171,0,19),(410,20155,'com.liferay.portal.model.Layout',4,'20363',20163,0,1),(411,20155,'19',4,'20363_LAYOUT_19',20164,0,63),(412,20155,'19',4,'20363_LAYOUT_19',20171,0,1),(413,20155,'19',4,'20363_LAYOUT_19',20163,0,1),(414,20155,'com.liferay.portlet.messageboards',4,'20352',20164,0,2047),(415,20155,'com.liferay.portlet.messageboards',4,'20352',20171,0,781),(416,20155,'com.liferay.portlet.messageboards',4,'20352',20163,0,1),(417,20155,'3',4,'20363_LAYOUT_3',20164,0,63),(418,20155,'3',4,'20363_LAYOUT_3',20171,0,1),(419,20155,'3',4,'20363_LAYOUT_3',20163,0,1),(420,20155,'59',4,'20363_LAYOUT_59_INSTANCE_GoufcLX8AiM7',20164,0,63),(421,20155,'59',4,'20363_LAYOUT_59_INSTANCE_GoufcLX8AiM7',20171,0,1),(422,20155,'59',4,'20363_LAYOUT_59_INSTANCE_GoufcLX8AiM7',20163,0,1),(423,20155,'com.liferay.portlet.polls',4,'20352',20164,0,6),(424,20155,'180',4,'20363_LAYOUT_180',20164,0,63),(425,20155,'180',4,'20363_LAYOUT_180',20171,0,1),(426,20155,'180',4,'20363_LAYOUT_180',20163,0,1),(427,20155,'101',4,'20363_LAYOUT_101_INSTANCE_nRGnD8Aawroy',20164,0,255),(428,20155,'101',4,'20363_LAYOUT_101_INSTANCE_nRGnD8Aawroy',20171,0,17),(429,20155,'101',4,'20363_LAYOUT_101_INSTANCE_nRGnD8Aawroy',20163,0,1),(430,20155,'com.liferay.portal.model.Layout',4,'20371',20164,20159,1023),(431,20155,'com.liferay.portal.model.Layout',4,'20371',20171,0,19),(432,20155,'com.liferay.portal.model.Layout',4,'20371',20163,0,1),(433,20155,'36',4,'20371_LAYOUT_36',20164,0,127),(434,20155,'36',4,'20371_LAYOUT_36',20171,0,1),(435,20155,'36',4,'20371_LAYOUT_36',20163,0,1),(436,20155,'com.liferay.portlet.wiki',4,'20352',20164,0,6),(437,20155,'122',4,'20371_LAYOUT_122_INSTANCE_40L1pdZwLpFD',20164,0,127),(438,20155,'122',4,'20371_LAYOUT_122_INSTANCE_40L1pdZwLpFD',20171,0,1),(439,20155,'122',4,'20371_LAYOUT_122_INSTANCE_40L1pdZwLpFD',20163,0,1),(440,20155,'148',4,'20371_LAYOUT_148_INSTANCE_02gqLoai7sFx',20164,0,63),(441,20155,'148',4,'20371_LAYOUT_148_INSTANCE_02gqLoai7sFx',20171,0,1),(442,20155,'148',4,'20371_LAYOUT_148_INSTANCE_02gqLoai7sFx',20163,0,1),(443,20155,'com.liferay.portal.model.LayoutSetPrototype',4,'20377',20164,20159,15),(447,20155,'com.liferay.portal.model.Layout',4,'20389',20164,20159,1023),(448,20155,'com.liferay.portal.model.Layout',4,'20389',20171,0,19),(449,20155,'com.liferay.portal.model.Layout',4,'20389',20163,0,1),(450,20155,'116',4,'20389_LAYOUT_116',20164,0,63),(451,20155,'116',4,'20389_LAYOUT_116',20171,0,1),(452,20155,'116',4,'20389_LAYOUT_116',20163,0,1),(453,20155,'3',4,'20389_LAYOUT_3',20164,0,63),(454,20155,'3',4,'20389_LAYOUT_3',20171,0,1),(455,20155,'3',4,'20389_LAYOUT_3',20163,0,1),(456,20155,'82',4,'20389_LAYOUT_82',20164,0,63),(457,20155,'82',4,'20389_LAYOUT_82',20171,0,1),(458,20155,'82',4,'20389_LAYOUT_82',20163,0,1),(459,20155,'101',4,'20389_LAYOUT_101_INSTANCE_nLGpx0BJGpfz',20164,0,255),(460,20155,'101',4,'20389_LAYOUT_101_INSTANCE_nLGpx0BJGpfz',20171,0,17),(461,20155,'101',4,'20389_LAYOUT_101_INSTANCE_nLGpx0BJGpfz',20163,0,1),(462,20155,'com.liferay.portal.model.Layout',4,'20398',20164,20159,1023),(463,20155,'com.liferay.portal.model.Layout',4,'20398',20171,0,19),(464,20155,'com.liferay.portal.model.Layout',4,'20398',20163,0,1),(465,20155,'20',4,'20398_LAYOUT_20',20164,0,127),(466,20155,'20',4,'20398_LAYOUT_20',20171,0,1),(467,20155,'20',4,'20398_LAYOUT_20',20163,0,1),(468,20155,'com.liferay.portlet.documentlibrary',4,'20378',20164,0,1023),(469,20155,'com.liferay.portlet.documentlibrary',4,'20378',20171,0,331),(470,20155,'com.liferay.portlet.documentlibrary',4,'20378',20163,0,1),(471,20155,'101',4,'20398_LAYOUT_101_INSTANCE_gescd2ll4pDY',20164,0,255),(472,20155,'101',4,'20398_LAYOUT_101_INSTANCE_gescd2ll4pDY',20171,0,17),(473,20155,'101',4,'20398_LAYOUT_101_INSTANCE_gescd2ll4pDY',20163,0,1),(474,20155,'com.liferay.portal.model.Layout',4,'20406',20164,20159,1023),(475,20155,'com.liferay.portal.model.Layout',4,'20406',20171,0,19),(476,20155,'com.liferay.portal.model.Layout',4,'20406',20163,0,1),(477,20155,'39',4,'20406_LAYOUT_39_INSTANCE_RQoVTsr6Ku1T',20164,0,63),(478,20155,'39',4,'20406_LAYOUT_39_INSTANCE_RQoVTsr6Ku1T',20171,0,1),(479,20155,'39',4,'20406_LAYOUT_39_INSTANCE_RQoVTsr6Ku1T',20163,0,1),(480,20155,'39',4,'20406_LAYOUT_39_INSTANCE_VYMMjxrC66yw',20164,0,63),(481,20155,'39',4,'20406_LAYOUT_39_INSTANCE_VYMMjxrC66yw',20171,0,1),(482,20155,'39',4,'20406_LAYOUT_39_INSTANCE_VYMMjxrC66yw',20163,0,1),(489,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20420',20164,20159,15),(490,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20422',20164,20159,15),(491,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20424',20164,20159,15),(492,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20427',20164,20159,15),(493,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20429',20164,20159,15),(494,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20431',20164,20159,15),(495,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20433',20164,20159,15),(496,20155,'com.liferay.portal.model.User',4,'20435',20164,20435,31),(497,20155,'com.liferay.portlet.expando.model.ExpandoColumn',4,'20448',20164,0,15),(498,20155,'1_WAR_notificationsportlet',1,'20155',20162,0,2),(499,20155,'1_WAR_notificationsportlet',1,'20155',20163,0,2),(500,20155,'1_WAR_notificationsportlet',1,'20155',20165,0,2),(501,20155,'1_WAR_notificationsportlet',1,'20155',20166,0,2),(502,20155,'1_WAR_calendarportlet',1,'20155',20162,0,4),(503,20155,'1_WAR_calendarportlet',1,'20155',20163,0,4),(504,20155,'1_WAR_calendarportlet',1,'20155',20165,0,4),(505,20155,'1_WAR_calendarportlet',1,'20155',20166,0,4),(506,20155,'1_WAR_webformportlet',1,'20155',20162,0,2),(507,20155,'1_WAR_webformportlet',1,'20155',20163,0,2),(508,20155,'1_WAR_webformportlet',1,'20155',20165,0,2),(509,20155,'1_WAR_webformportlet',1,'20155',20166,0,2),(510,20155,'dockbarnotificationaction_WAR_DockBarCustomNotificationportlet',1,'20155',20162,0,2),(511,20155,'dockbarnotificationaction_WAR_DockBarCustomNotificationportlet',1,'20155',20163,0,2),(512,20155,'dockbarnotificationaction_WAR_DockBarCustomNotificationportlet',1,'20155',20165,0,2),(513,20155,'dockbarnotificationaction_WAR_DockBarCustomNotificationportlet',1,'20155',20166,0,2),(514,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20530',20164,20159,255),(515,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20530',20171,0,3),(516,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20530',20163,0,3),(517,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20539',20164,20159,255),(518,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20539',20171,0,3),(519,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20539',20163,0,3),(520,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20550',20164,20159,255),(521,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20550',20171,0,3),(522,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20550',20163,0,3),(523,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20566',20164,20159,255),(524,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20566',20171,0,3),(525,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20566',20163,0,3),(526,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20579',20164,20159,255),(527,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20579',20171,0,3),(528,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20579',20163,0,3),(529,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20592',20164,20159,255),(530,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20592',20171,0,3),(531,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20592',20163,0,3),(532,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20601',20164,20159,15),(533,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20601',20171,0,1),(534,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20601',20163,0,1),(535,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20602',20164,20159,15),(536,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20602',20171,0,1),(537,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20602',20163,0,1),(538,20155,'com.liferay.portlet.journal.model.JournalArticle',4,'20605',20164,20159,255),(539,20155,'com.liferay.portlet.journal.model.JournalArticle',4,'20605',20171,0,3),(540,20155,'com.liferay.portlet.journal.model.JournalArticle',4,'20605',20163,0,3),(541,20155,'com.liferay.portal.model.Layout',4,'20623',20164,20159,1023),(542,20155,'com.liferay.portal.model.Layout',4,'20623',20171,0,19),(543,20155,'com.liferay.portal.model.Layout',4,'20623',20163,0,1),(544,20155,'com.liferay.portal.model.LayoutSetPrototype',4,'20630',20164,20159,15),(551,20155,'2_WAR_opensocialportlet',1,'20155',20162,0,2),(552,20155,'2_WAR_opensocialportlet',1,'20155',20163,0,2),(553,20155,'2_WAR_opensocialportlet',1,'20155',20165,0,2),(554,20155,'2_WAR_opensocialportlet',1,'20155',20166,0,2),(555,20155,'3_WAR_opensocialportlet',1,'20155',20162,0,2),(556,20155,'3_WAR_opensocialportlet',1,'20155',20163,0,2),(557,20155,'3_WAR_opensocialportlet',1,'20155',20165,0,2),(558,20155,'3_WAR_opensocialportlet',1,'20155',20166,0,2),(559,20155,'145',4,'20623_LAYOUT_145',20164,0,63),(560,20155,'145',4,'20623_LAYOUT_145',20171,0,1),(561,20155,'145',4,'20623_LAYOUT_145',20163,0,1),(562,20155,'58',4,'20623_LAYOUT_58',20164,0,63),(563,20155,'58',4,'20623_LAYOUT_58',20171,0,1),(564,20155,'58',4,'20623_LAYOUT_58',20163,0,1),(568,20155,'com.liferay.portlet.journal',4,'20182',20164,0,255),(569,20155,'com.liferay.portlet.journal',4,'20182',20171,0,1),(570,20155,'com.liferay.portlet.journal',4,'20182',20163,0,1),(571,20155,'2_WAR_notificationsportlet',4,'20623_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(572,20155,'2_WAR_notificationsportlet',4,'20623_LAYOUT_2_WAR_notificationsportlet',20171,0,1),(573,20155,'2_WAR_notificationsportlet',4,'20623_LAYOUT_2_WAR_notificationsportlet',20163,0,1),(574,20155,'com.liferay.portlet.documentlibrary',4,'20182',20164,0,1023),(575,20155,'com.liferay.portlet.documentlibrary',4,'20182',20164,0,1023),(576,20155,'com.liferay.portlet.documentlibrary',4,'20182',20171,0,331),(577,20155,'com.liferay.portlet.documentlibrary',4,'20182',20171,0,331),(578,20155,'com.liferay.portlet.documentlibrary',4,'20182',20163,0,1),(579,20155,'com.liferay.portlet.documentlibrary',4,'20182',20163,0,1),(583,20155,'49',4,'20623_LAYOUT_49',20164,0,63),(584,20155,'49',4,'20623_LAYOUT_49',20171,0,1),(585,20155,'49',4,'20623_LAYOUT_49',20163,0,1),(614,20155,'com.liferay.portal.model.Role',4,'20751',20164,20435,127),(615,20155,'1_WAR_notificationsportlet',4,'20623_LAYOUT_1_WAR_notificationsportlet',20164,0,63),(616,20155,'1_WAR_notificationsportlet',4,'20623_LAYOUT_1_WAR_notificationsportlet',20171,0,1),(617,20155,'1_WAR_notificationsportlet',4,'20623_LAYOUT_1_WAR_notificationsportlet',20163,0,1),(620,20155,'SchedulerJobs_WAR_SchedulerJobsportlet',1,'20155',20162,0,2),(621,20155,'SchedulerJobs_WAR_SchedulerJobsportlet',1,'20155',20163,0,2),(622,20155,'SchedulerJobs_WAR_SchedulerJobsportlet',1,'20155',20165,0,2),(623,20155,'SchedulerJobs_WAR_SchedulerJobsportlet',1,'20155',20166,0,2),(629,20155,'com.liferay.portal.model.UserGroup',4,'20762',20164,20435,127),(630,20155,'com.liferay.portlet.expando.model.ExpandoColumn',4,'20775',20164,0,15),(701,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20801',20164,20159,15),(702,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20802',20164,20159,15),(703,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20803',20164,20159,15),(704,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20804',20164,20159,15),(705,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20805',20164,20159,15),(706,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20806',20164,20159,15),(710,20155,'com.liferay.portlet.expando.model.ExpandoColumn',4,'20775',20163,0,9),(711,20155,'com.liferay.portal.model.User',4,'20818',20164,20159,31),(804,20155,'com.liferay.portal.model.User',4,'20912',20164,20159,31),(805,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22255',20164,20159,255),(806,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22255',20165,0,29),(807,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22255',20163,0,1),(808,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22256',20164,20435,255),(809,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22256',20165,0,29),(810,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22256',20163,0,1),(811,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22257',20164,20435,255),(812,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22257',20165,0,29),(813,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22257',20163,0,1),(823,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'22270',20164,20435,255),(824,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'22270',20165,0,3),(825,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'22270',20163,0,3),(826,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22273',20164,20159,255),(827,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22273',20166,0,29),(828,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22273',20163,0,1),(829,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22274',20164,20435,255),(830,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22274',20166,0,29),(831,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22274',20163,0,1),(832,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22275',20164,20435,255),(833,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22275',20166,0,29),(834,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22275',20163,0,1),(904,20155,'com.liferay.portal.model.User',4,'22351',20164,20159,31),(1304,20155,'Susbcription_WAR_Suscriptionportlet',1,'20155',20162,0,2),(1305,20155,'Susbcription_WAR_Suscriptionportlet',1,'20155',20163,0,2),(1306,20155,'Susbcription_WAR_Suscriptionportlet',1,'20155',20165,0,2),(1307,20155,'Susbcription_WAR_Suscriptionportlet',1,'20155',20166,0,2),(1313,20155,'com.liferay.portal.model.Role',4,'34719',20164,20435,127),(1314,20155,'Subscriptions_WAR_Subscriptionsportlet',1,'20155',20162,0,2),(1315,20155,'Subscriptions_WAR_Subscriptionsportlet',1,'20155',20163,0,2),(1316,20155,'Subscriptions_WAR_Subscriptionsportlet',1,'20155',20165,0,2),(1317,20155,'Subscriptions_WAR_Subscriptionsportlet',1,'20155',20166,0,2),(1804,20155,'Customer_WAR_Customerportlet',1,'20155',20162,0,2),(1805,20155,'Customer_WAR_Customerportlet',1,'20155',20165,0,2),(1814,20155,'com.liferay.portal.model.LayoutPrototype',4,'35231',20164,20435,15),(1815,20155,'com.liferay.portal.model.Layout',4,'35235',20164,20435,1023),(1816,20155,'com.liferay.portal.model.Layout',4,'35235',20171,0,19),(1817,20155,'145',4,'35235_LAYOUT_145',20164,0,63),(1818,20155,'145',4,'35235_LAYOUT_145',20171,0,1),(1819,20155,'145',4,'35235_LAYOUT_145',20163,0,1),(1820,20155,'2_WAR_notificationsportlet',4,'35235_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(1821,20155,'2_WAR_notificationsportlet',4,'35235_LAYOUT_2_WAR_notificationsportlet',20171,0,1),(1822,20155,'2_WAR_notificationsportlet',4,'35235_LAYOUT_2_WAR_notificationsportlet',20163,0,1),(1823,20155,'com.liferay.portlet.journal',4,'35232',20164,0,255),(1824,20155,'com.liferay.portlet.journal',4,'35232',20171,0,1),(1825,20155,'com.liferay.portlet.journal',4,'35232',20163,0,1),(1826,20155,'com.liferay.portlet.documentlibrary',4,'35232',20164,0,1023),(1827,20155,'com.liferay.portlet.documentlibrary',4,'35232',20171,0,331),(1828,20155,'com.liferay.portlet.documentlibrary',4,'35232',20163,0,1),(1829,20155,'Customer_WAR_Customerportlet',4,'35235_LAYOUT_Customer_WAR_Customerportlet',20164,0,63),(1830,20155,'Customer_WAR_Customerportlet',4,'35235_LAYOUT_Customer_WAR_Customerportlet',20171,0,1),(1831,20155,'Customer_WAR_Customerportlet',4,'35235_LAYOUT_Customer_WAR_Customerportlet',20163,0,1),(1832,20155,'com.liferay.portal.model.Layout',4,'35255',20164,20435,1023),(1833,20155,'com.liferay.portal.model.Layout',4,'35255',20171,0,19),(1834,20155,'Customer_WAR_Customerportlet',4,'35255_LAYOUT_Customer_WAR_Customerportlet',20164,0,63),(1835,20155,'Customer_WAR_Customerportlet',4,'35255_LAYOUT_Customer_WAR_Customerportlet',20171,0,1),(1836,20155,'145',4,'35255_LAYOUT_145',20164,0,63),(1837,20155,'145',4,'35255_LAYOUT_145',20171,0,1),(1838,20155,'2_WAR_notificationsportlet',4,'35255_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(1839,20155,'2_WAR_notificationsportlet',4,'35255_LAYOUT_2_WAR_notificationsportlet',20171,0,1),(3604,20155,'com.liferay.portal.model.LayoutPrototype',4,'37311',20164,20435,15),(3605,20155,'com.liferay.portal.model.Layout',4,'37315',20164,20435,1023),(3606,20155,'com.liferay.portal.model.Layout',4,'37315',20171,0,19),(3607,20155,'145',4,'37315_LAYOUT_145',20164,0,63),(3608,20155,'145',4,'37315_LAYOUT_145',20171,0,1),(3609,20155,'145',4,'37315_LAYOUT_145',20163,0,1),(3610,20155,'2_WAR_notificationsportlet',4,'37315_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(3611,20155,'2_WAR_notificationsportlet',4,'37315_LAYOUT_2_WAR_notificationsportlet',20171,0,1),(3612,20155,'2_WAR_notificationsportlet',4,'37315_LAYOUT_2_WAR_notificationsportlet',20163,0,1),(3613,20155,'com.liferay.portlet.journal',4,'37312',20164,0,255),(3614,20155,'com.liferay.portlet.journal',4,'37312',20171,0,1),(3615,20155,'com.liferay.portlet.journal',4,'37312',20163,0,1),(3616,20155,'com.liferay.portlet.documentlibrary',4,'37312',20164,0,1023),(3617,20155,'com.liferay.portlet.documentlibrary',4,'37312',20171,0,331),(3618,20155,'com.liferay.portlet.documentlibrary',4,'37312',20163,0,1),(3619,20155,'Subscriptions_WAR_Subscriptionsportlet',4,'37315_LAYOUT_Subscriptions_WAR_Subscriptionsportlet',20164,0,63),(3620,20155,'Subscriptions_WAR_Subscriptionsportlet',4,'37315_LAYOUT_Subscriptions_WAR_Subscriptionsportlet',20171,0,1),(3621,20155,'Subscriptions_WAR_Subscriptionsportlet',4,'37315_LAYOUT_Subscriptions_WAR_Subscriptionsportlet',20163,0,1),(3622,20155,'com.liferay.portal.model.LayoutPrototype',4,'37344',20164,20435,15),(3623,20155,'com.liferay.portal.model.Layout',4,'37348',20164,20435,1023),(3624,20155,'com.liferay.portal.model.Layout',4,'37348',20171,0,19),(3625,20155,'145',4,'37348_LAYOUT_145',20164,0,63),(3626,20155,'145',4,'37348_LAYOUT_145',20171,0,1),(3627,20155,'145',4,'37348_LAYOUT_145',20163,0,1),(3628,20155,'2_WAR_notificationsportlet',4,'37348_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(3629,20155,'2_WAR_notificationsportlet',4,'37348_LAYOUT_2_WAR_notificationsportlet',20171,0,1),(3630,20155,'2_WAR_notificationsportlet',4,'37348_LAYOUT_2_WAR_notificationsportlet',20163,0,1),(3631,20155,'com.liferay.portlet.journal',4,'37345',20164,0,255),(3632,20155,'com.liferay.portlet.journal',4,'37345',20171,0,1),(3633,20155,'com.liferay.portlet.journal',4,'37345',20163,0,1),(3634,20155,'com.liferay.portlet.documentlibrary',4,'37345',20164,0,1023),(3635,20155,'com.liferay.portlet.documentlibrary',4,'37345',20171,0,331),(3636,20155,'com.liferay.portlet.documentlibrary',4,'37345',20163,0,1),(3640,20155,'SchedulerJobs_WAR_SchedulerJobsportlet',4,'37348_LAYOUT_SchedulerJobs_WAR_SchedulerJobsportlet',20164,0,63),(3641,20155,'SchedulerJobs_WAR_SchedulerJobsportlet',4,'37348_LAYOUT_SchedulerJobs_WAR_SchedulerJobsportlet',20171,0,1),(3642,20155,'SchedulerJobs_WAR_SchedulerJobsportlet',4,'37348_LAYOUT_SchedulerJobs_WAR_SchedulerJobsportlet',20163,0,1),(3643,20155,'com.liferay.portal.model.Layout',4,'37368',20164,20435,1023),(3644,20155,'com.liferay.portal.model.Layout',4,'37368',20171,0,19),(3645,20155,'SchedulerJobs_WAR_SchedulerJobsportlet',4,'37368_LAYOUT_SchedulerJobs_WAR_SchedulerJobsportlet',20164,0,63),(3646,20155,'SchedulerJobs_WAR_SchedulerJobsportlet',4,'37368_LAYOUT_SchedulerJobs_WAR_SchedulerJobsportlet',20171,0,1),(3647,20155,'com.liferay.portal.model.Layout',4,'37376',20164,20435,1023),(3648,20155,'com.liferay.portal.model.Layout',4,'37376',20171,0,19),(3649,20155,'Subscriptions_WAR_Subscriptionsportlet',4,'37376_LAYOUT_Subscriptions_WAR_Subscriptionsportlet',20164,0,63),(3650,20155,'Subscriptions_WAR_Subscriptionsportlet',4,'37376_LAYOUT_Subscriptions_WAR_Subscriptionsportlet',20171,0,1),(3651,20155,'145',4,'37368_LAYOUT_145',20164,0,63),(3652,20155,'145',4,'37368_LAYOUT_145',20171,0,1),(3653,20155,'2_WAR_notificationsportlet',4,'37368_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(3654,20155,'2_WAR_notificationsportlet',4,'37368_LAYOUT_2_WAR_notificationsportlet',20171,0,1),(3655,20155,'145',4,'37376_LAYOUT_145',20164,0,63),(3656,20155,'145',4,'37376_LAYOUT_145',20171,0,1),(3657,20155,'2_WAR_notificationsportlet',4,'37376_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(3658,20155,'2_WAR_notificationsportlet',4,'37376_LAYOUT_2_WAR_notificationsportlet',20171,0,1),(3659,20155,'1_WAR_notificationsportlet',4,'37368_LAYOUT_1_WAR_notificationsportlet',20164,0,63),(3660,20155,'1_WAR_notificationsportlet',4,'37368_LAYOUT_1_WAR_notificationsportlet',20171,0,1),(3704,20155,'49',4,'37368_LAYOUT_49',20164,0,63),(3705,20155,'49',4,'37368_LAYOUT_49',20171,0,1),(5101,20155,'com.liferay.portal.model.Layout',4,'39805',20164,20159,1023),(5102,20155,'com.liferay.portal.model.Layout',4,'39805',20171,0,19),(5103,20155,'com.liferay.portal.model.Layout',4,'39805',20163,0,1),(5104,20155,'1_WAR_notificationsportlet',4,'35255_LAYOUT_1_WAR_notificationsportlet',20164,0,63),(5105,20155,'1_WAR_notificationsportlet',4,'35255_LAYOUT_1_WAR_notificationsportlet',20171,0,1);
/*!40000 ALTER TABLE `ResourcePermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceTypePermission`
--

DROP TABLE IF EXISTS `ResourceTypePermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceTypePermission` (
  `resourceTypePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceTypePermissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceTypePermission`
--

LOCK TABLES `ResourceTypePermission` WRITE;
/*!40000 ALTER TABLE `ResourceTypePermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResourceTypePermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role_`
--

DROP TABLE IF EXISTS `Role_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Role_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `subtype` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role_`
--

LOCK TABLES `Role_` WRITE;
/*!40000 ALTER TABLE `Role_` DISABLE KEYS */;
INSERT INTO `Role_` VALUES ('e68b3f87-6191-4f1f-8d35-7acfc1397d71',20162,20155,20159,'','2015-05-20 07:43:11','2015-05-20 07:43:11',20004,20162,'Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Administrators are super users who can do anything.</Description></root>',1,''),('c69af161-2857-4090-97e8-e23cf5663f76',20163,20155,20159,'','2015-05-20 07:43:11','2015-05-20 07:43:11',20004,20163,'Guest','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Unauthenticated users always have this role.</Description></root>',1,''),('6fbd8a7c-bcb6-4094-bbab-d9d7b0a0ca7d',20164,20155,20159,'','2015-05-20 07:43:11','2015-05-20 07:43:11',20004,20164,'Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This is an implied role with respect to the objects users create.</Description></root>',1,''),('beea3f7c-2f82-4820-b2c1-f31b1483f372',20165,20155,20159,'','2015-05-20 07:43:11','2015-05-20 07:43:11',20004,20165,'Power User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Power Users have their own personal site.</Description></root>',1,''),('24ba1afa-44c3-48ad-a1f4-ba32a37276fd',20166,20155,20159,'','2015-05-20 07:43:11','2015-05-20 07:43:11',20004,20166,'User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Authenticated users should be assigned this role.</Description></root>',1,''),('3dd91274-2ee3-41cf-b159-26407710b746',20167,20155,20159,'','2015-05-20 07:43:11','2015-05-20 07:43:11',20004,20167,'Organization Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.</Description></root>',3,''),('e1e296cc-118e-4365-94ed-1afecdb5316f',20168,20155,20159,'','2015-05-20 07:43:11','2015-05-20 07:43:11',20004,20168,'Organization Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Owners are super users of their organization and can assign organization roles to users.</Description></root>',3,''),('1dfed15c-2b51-4d64-898f-0a990cf56ed3',20169,20155,20159,'','2015-05-20 07:43:11','2015-05-20 07:43:11',20004,20169,'Organization User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to an organization have this role within that organization.</Description></root>',3,''),('4c93481e-158d-494b-87cf-8d504f779e7c',20170,20155,20159,'','2015-05-20 07:43:11','2015-05-20 07:43:11',20004,20170,'Site Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Administrators are super users of their site but cannot make other users into Site Administrators.</Description></root>',2,''),('46f4d033-3ce6-4f66-9d16-01fa6ea968f5',20171,20155,20159,'','2015-05-20 07:43:11','2015-05-20 07:43:11',20004,20171,'Site Member','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to a site have this role within that site.</Description></root>',2,''),('08599fa4-6f88-40ac-9d71-1ff91f48ea30',20172,20155,20159,'','2015-05-20 07:43:11','2015-05-20 07:43:11',20004,20172,'Site Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Owners are super users of their site and can assign site roles to users.</Description></root>',2,''),('cbff5275-2c9c-42e3-9d91-89700387d5ee',20481,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31',20004,20481,'Organization Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',3,''),('270f76f8-33f4-4d0e-b736-ed56f50da265',20487,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31',20004,20487,'Site Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',2,''),('9b490ee0-c10e-4e3b-9ab0-28c3362930ae',20490,20155,20159,'','2015-05-20 07:45:31','2015-05-20 07:45:31',20004,20490,'Portal Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',1,''),('03651d61-4b97-4883-aed0-2d509bc9a611',20751,20155,20435,'Edicson Morales','2015-05-20 07:59:53','2015-05-20 07:59:53',20004,20751,'BillingBuddyAdministrator','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">BillingBuddyAdministrator</Title></root>','',1,''),('f4ebd00c-b57c-408d-94f1-940a08b6eb3d',34719,20155,20435,'Edicson Morales','2015-05-20 21:53:40','2015-05-20 21:53:40',20004,34719,'MerchantAdministrator','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">MerchantAdministrator</Title></root>','',1,'');
/*!40000 ALTER TABLE `Role_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCFrameworkVersi_SCProductVers`
--

DROP TABLE IF EXISTS `SCFrameworkVersi_SCProductVers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCFrameworkVersi_SCProductVers` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `productVersionId` bigint(20) NOT NULL,
  PRIMARY KEY (`frameworkVersionId`,`productVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCFrameworkVersi_SCProductVers`
--

LOCK TABLES `SCFrameworkVersi_SCProductVers` WRITE;
/*!40000 ALTER TABLE `SCFrameworkVersi_SCProductVers` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCFrameworkVersi_SCProductVers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCFrameworkVersion`
--

DROP TABLE IF EXISTS `SCFrameworkVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCFrameworkVersion` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`frameworkVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCFrameworkVersion`
--

LOCK TABLES `SCFrameworkVersion` WRITE;
/*!40000 ALTER TABLE `SCFrameworkVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCFrameworkVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCLicense`
--

DROP TABLE IF EXISTS `SCLicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCLicense` (
  `licenseId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `openSource` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `recommended` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`licenseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCLicense`
--

LOCK TABLES `SCLicense` WRITE;
/*!40000 ALTER TABLE `SCLicense` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCLicense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCLicenses_SCProductEntries`
--

DROP TABLE IF EXISTS `SCLicenses_SCProductEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCLicenses_SCProductEntries` (
  `licenseId` bigint(20) NOT NULL,
  `productEntryId` bigint(20) NOT NULL,
  PRIMARY KEY (`licenseId`,`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCLicenses_SCProductEntries`
--

LOCK TABLES `SCLicenses_SCProductEntries` WRITE;
/*!40000 ALTER TABLE `SCLicenses_SCProductEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCLicenses_SCProductEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCProductEntry`
--

DROP TABLE IF EXISTS `SCProductEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCProductEntry` (
  `productEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `shortDescription` longtext,
  `longDescription` longtext,
  `pageURL` longtext,
  `author` varchar(75) DEFAULT NULL,
  `repoGroupId` varchar(75) DEFAULT NULL,
  `repoArtifactId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCProductEntry`
--

LOCK TABLES `SCProductEntry` WRITE;
/*!40000 ALTER TABLE `SCProductEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCProductScreenshot`
--

DROP TABLE IF EXISTS `SCProductScreenshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCProductScreenshot` (
  `productScreenshotId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `thumbnailId` bigint(20) DEFAULT NULL,
  `fullImageId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`productScreenshotId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCProductScreenshot`
--

LOCK TABLES `SCProductScreenshot` WRITE;
/*!40000 ALTER TABLE `SCProductScreenshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductScreenshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCProductVersion`
--

DROP TABLE IF EXISTS `SCProductVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCProductVersion` (
  `productVersionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `changeLog` longtext,
  `downloadPageURL` longtext,
  `directDownloadURL` varchar(2000) DEFAULT NULL,
  `repoStoreArtifact` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`productVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCProductVersion`
--

LOCK TABLES `SCProductVersion` WRITE;
/*!40000 ALTER TABLE `SCProductVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ServiceComponent`
--

DROP TABLE IF EXISTS `ServiceComponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ServiceComponent` (
  `serviceComponentId` bigint(20) NOT NULL,
  `buildNamespace` varchar(75) DEFAULT NULL,
  `buildNumber` bigint(20) DEFAULT NULL,
  `buildDate` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`serviceComponentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServiceComponent`
--

LOCK TABLES `ServiceComponent` WRITE;
/*!40000 ALTER TABLE `ServiceComponent` DISABLE KEYS */;
INSERT INTO `ServiceComponent` VALUES (20445,'Marketplace',4,1410828214125,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Marketplace_App (\n	uuid_ VARCHAR(75) null,\n	appId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	remoteAppId LONG,\n	title VARCHAR(75) null,\n	description STRING null,\n	category VARCHAR(75) null,\n	iconURL STRING null,\n	version VARCHAR(75) null\n);\n\ncreate table Marketplace_Module (\n	uuid_ VARCHAR(75) null,\n	moduleId LONG not null primary key,\n	appId LONG,\n	bundleSymbolicName VARCHAR(500) null,\n	bundleVersion VARCHAR(75) null,\n	contextName VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_94A7EF25 on Marketplace_App (category);\ncreate index IX_865B7BD5 on Marketplace_App (companyId);\ncreate index IX_20F14D93 on Marketplace_App (remoteAppId);\ncreate index IX_3E667FE1 on Marketplace_App (uuid_);\ncreate index IX_A7807DA7 on Marketplace_App (uuid_, companyId);\n\ncreate index IX_7DC16D26 on Marketplace_Module (appId);\ncreate index IX_5848F52D on Marketplace_Module (appId, bundleSymbolicName, bundleVersion);\ncreate index IX_C6938724 on Marketplace_Module (appId, contextName);\ncreate index IX_DD03D499 on Marketplace_Module (bundleSymbolicName);\ncreate index IX_F2F1E964 on Marketplace_Module (contextName);\ncreate index IX_A7EFD80E on Marketplace_Module (uuid_);]]></indexes-sql>\n</data>'),(20450,'Sync',1,1368486568278,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table SyncDLObject (\n	objectId LONG not null primary key,\n	companyId LONG,\n	createTime LONG,\n	modifiedTime LONG,\n	repositoryId LONG,\n	parentFolderId LONG,\n	name VARCHAR(255) null,\n	extension VARCHAR(75) null,\n	mimeType VARCHAR(75) null,\n	description STRING null,\n	changeLog VARCHAR(75) null,\n	extraSettings TEXT null,\n	version VARCHAR(75) null,\n	size_ LONG,\n	checksum VARCHAR(75) null,\n	event VARCHAR(75) null,\n	lockExpirationDate DATE null,\n	lockUserId LONG,\n	lockUserName VARCHAR(75) null,\n	type_ VARCHAR(75) null,\n	typePK LONG,\n	typeUuid VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_7F996123 on SyncDLObject (companyId, modifiedTime, repositoryId);\ncreate unique index IX_69ADEDD1 on SyncDLObject (typePK);]]></indexes-sql>\n</data>'),(20467,'Kaleo',8,1425595080483,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table KaleoAction (\n	kaleoActionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	name VARCHAR(200) null,\n	description STRING null,\n	executionType VARCHAR(20) null,\n	script TEXT null,\n	scriptLanguage VARCHAR(75) null,\n	scriptRequiredContexts STRING null,\n	priority INTEGER\n);\n\ncreate table KaleoCondition (\n	kaleoConditionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	script TEXT null,\n	scriptLanguage VARCHAR(75) null,\n	scriptRequiredContexts STRING null\n);\n\ncreate table KaleoDefinition (\n	kaleoDefinitionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(200) null,\n	title STRING null,\n	description STRING null,\n	content TEXT null,\n	version INTEGER,\n	active_ BOOLEAN,\n	startKaleoNodeId LONG\n);\n\ncreate table KaleoInstance (\n	kaleoInstanceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoDefinitionName VARCHAR(200) null,\n	kaleoDefinitionVersion INTEGER,\n	rootKaleoInstanceTokenId LONG,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoInstanceToken (\n	kaleoInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	parentKaleoInstanceTokenId LONG,\n	currentKaleoNodeId LONG,\n	currentKaleoNodeName VARCHAR(200) null,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null\n);\n\ncreate table KaleoLog (\n	kaleoLogId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	terminalKaleoNode BOOLEAN,\n	kaleoActionId LONG,\n	kaleoActionName VARCHAR(200) null,\n	kaleoActionDescription STRING null,\n	previousKaleoNodeId LONG,\n	previousKaleoNodeName VARCHAR(200) null,\n	previousAssigneeClassName VARCHAR(200) null,\n	previousAssigneeClassPK LONG,\n	currentAssigneeClassName VARCHAR(200) null,\n	currentAssigneeClassPK LONG,\n	type_ VARCHAR(50) null,\n	comment_ TEXT null,\n	startDate DATE null,\n	endDate DATE null,\n	duration LONG,\n	workflowContext TEXT null\n);\n\ncreate table KaleoNode (\n	kaleoNodeId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	name VARCHAR(200) null,\n	metadata STRING null,\n	description STRING null,\n	type_ VARCHAR(20) null,\n	initial_ BOOLEAN,\n	terminal BOOLEAN\n);\n\ncreate table KaleoNotification (\n	kaleoNotificationId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	name VARCHAR(200) null,\n	description STRING null,\n	executionType VARCHAR(20) null,\n	template TEXT null,\n	templateLanguage VARCHAR(75) null,\n	notificationTypes VARCHAR(25) null\n);\n\ncreate table KaleoNotificationRecipient (\n	kaleoNotificationRecipientId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNotificationId LONG,\n	recipientClassName VARCHAR(200) null,\n	recipientClassPK LONG,\n	recipientRoleType INTEGER,\n	address VARCHAR(255) null\n);\n\ncreate table KaleoTask (\n	kaleoTaskId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	name VARCHAR(200) null,\n	description STRING null\n);\n\ncreate table KaleoTaskAssignment (\n	kaleoTaskAssignmentId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	assigneeClassName VARCHAR(200) null,\n	assigneeClassPK LONG,\n	assigneeActionId VARCHAR(75) null,\n	assigneeScript TEXT null,\n	assigneeScriptLanguage VARCHAR(75) null,\n	assigneeScriptRequiredContexts STRING null\n);\n\ncreate table KaleoTaskAssignmentInstance (\n	kaleoTaskAssignmentInstanceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoTaskId LONG,\n	kaleoTaskName VARCHAR(200) null,\n	assigneeClassName VARCHAR(200) null,\n	assigneeClassPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null\n);\n\ncreate table KaleoTaskInstanceToken (\n	kaleoTaskInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskId LONG,\n	kaleoTaskName VARCHAR(200) null,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completionUserId LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	dueDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoTimer (\n	kaleoTimerId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	name VARCHAR(75) null,\n	blocking BOOLEAN,\n	description STRING null,\n	duration DOUBLE,\n	scale VARCHAR(75) null,\n	recurrenceDuration DOUBLE,\n	recurrenceScale VARCHAR(75) null\n);\n\ncreate table KaleoTimerInstanceToken (\n	kaleoTimerInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoTimerId LONG,\n	kaleoTimerName VARCHAR(200) null,\n	blocking BOOLEAN,\n	completionUserId LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoTransition (\n	kaleoTransitionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	name VARCHAR(200) null,\n	description STRING null,\n	sourceKaleoNodeId LONG,\n	sourceKaleoNodeName VARCHAR(200) null,\n	targetKaleoNodeId LONG,\n	targetKaleoNodeName VARCHAR(200) null,\n	defaultTransition BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_50E9112C on KaleoAction (companyId);\ncreate index IX_170EFD7A on KaleoAction (kaleoClassName, kaleoClassPK);\ncreate index IX_4B2545E8 on KaleoAction (kaleoClassName, kaleoClassPK, executionType);\ncreate index IX_F95A622 on KaleoAction (kaleoDefinitionId);\n\ncreate index IX_FEE46067 on KaleoCondition (companyId);\ncreate index IX_DC978A5D on KaleoCondition (kaleoDefinitionId);\ncreate index IX_86CBD4C on KaleoCondition (kaleoNodeId);\n\ncreate index IX_40B9112F on KaleoDefinition (companyId);\ncreate index IX_408542BA on KaleoDefinition (companyId, active_);\ncreate index IX_76C781AE on KaleoDefinition (companyId, name);\ncreate index IX_4C23F11B on KaleoDefinition (companyId, name, active_);\ncreate index IX_EC14F81A on KaleoDefinition (companyId, name, version);\n\ncreate index IX_58D85ECB on KaleoInstance (className, classPK);\ncreate index IX_5F2FCD2D on KaleoInstance (companyId);\ncreate index IX_BF5839F8 on KaleoInstance (companyId, kaleoDefinitionName, kaleoDefinitionVersion, completionDate);\ncreate index IX_C6D7A867 on KaleoInstance (companyId, userId);\ncreate index IX_4DA4D123 on KaleoInstance (kaleoDefinitionId);\ncreate index IX_ACF16238 on KaleoInstance (kaleoDefinitionId, completed);\n\ncreate index IX_153721BE on KaleoInstanceToken (companyId);\ncreate index IX_4A86923B on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId);\ncreate index IX_360D34D9 on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId, completionDate);\ncreate index IX_7BDB04B4 on KaleoInstanceToken (kaleoDefinitionId);\ncreate index IX_F42AAFF6 on KaleoInstanceToken (kaleoInstanceId);\n\ncreate index IX_73B5F4DE on KaleoLog (companyId);\ncreate index IX_E66A153A on KaleoLog (kaleoClassName, kaleoClassPK, kaleoInstanceTokenId, type_);\ncreate index IX_6C64B7D4 on KaleoLog (kaleoDefinitionId);\ncreate index IX_5BC6AB16 on KaleoLog (kaleoInstanceId);\ncreate index IX_470B9FF8 on KaleoLog (kaleoInstanceTokenId, type_);\ncreate index IX_B0CDCA38 on KaleoLog (kaleoTaskInstanceTokenId);\n\ncreate index IX_C4E9ACE0 on KaleoNode (companyId);\ncreate index IX_F28C443E on KaleoNode (companyId, kaleoDefinitionId);\ncreate index IX_32E94DD6 on KaleoNode (kaleoDefinitionId);\n\ncreate index IX_38829497 on KaleoNotification (companyId);\ncreate index IX_902D342F on KaleoNotification (kaleoClassName, kaleoClassPK);\ncreate index IX_F3362E93 on KaleoNotification (kaleoClassName, kaleoClassPK, executionType);\ncreate index IX_4B968E8D on KaleoNotification (kaleoDefinitionId);\n\ncreate index IX_2C8C4AF4 on KaleoNotificationRecipient (companyId);\ncreate index IX_AA6697EA on KaleoNotificationRecipient (kaleoDefinitionId);\ncreate index IX_7F4FED02 on KaleoNotificationRecipient (kaleoNotificationId);\n\ncreate index IX_E1F8B23D on KaleoTask (companyId);\ncreate index IX_3FFA633 on KaleoTask (kaleoDefinitionId);\ncreate index IX_77B3F1A2 on KaleoTask (kaleoNodeId);\n\ncreate index IX_611732B0 on KaleoTaskAssignment (companyId);\ncreate index IX_D835C576 on KaleoTaskAssignment (kaleoClassName, kaleoClassPK);\ncreate index IX_1087068E on KaleoTaskAssignment (kaleoClassName, kaleoClassPK, assigneeClassName);\ncreate index IX_575C03A6 on KaleoTaskAssignment (kaleoDefinitionId);\n\ncreate index IX_945F4EB7 on KaleoTaskAssignmentInstance (assigneeClassName);\ncreate index IX_3BD436FD on KaleoTaskAssignmentInstance (assigneeClassName, assigneeClassPK);\ncreate index IX_6E3CDA1B on KaleoTaskAssignmentInstance (companyId);\ncreate index IX_38A47B17 on KaleoTaskAssignmentInstance (groupId, assigneeClassPK);\ncreate index IX_C851011 on KaleoTaskAssignmentInstance (kaleoDefinitionId);\ncreate index IX_67A9EE93 on KaleoTaskAssignmentInstance (kaleoInstanceId);\ncreate index IX_D4C2235B on KaleoTaskAssignmentInstance (kaleoTaskInstanceTokenId);\n\ncreate index IX_A3271995 on KaleoTaskInstanceToken (className, classPK);\ncreate index IX_997FE723 on KaleoTaskInstanceToken (companyId);\ncreate index IX_608E9519 on KaleoTaskInstanceToken (kaleoDefinitionId);\ncreate index IX_2CE1159B on KaleoTaskInstanceToken (kaleoInstanceId);\ncreate index IX_B857A115 on KaleoTaskInstanceToken (kaleoInstanceId, kaleoTaskId);\n\ncreate index IX_4DE6A889 on KaleoTimer (kaleoClassName, kaleoClassPK);\ncreate index IX_1A479F32 on KaleoTimer (kaleoClassName, kaleoClassPK, blocking);\n\ncreate index IX_DB96C55B on KaleoTimerInstanceToken (kaleoInstanceId);\ncreate index IX_DB279423 on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed);\ncreate index IX_9932524C on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed, blocking);\ncreate index IX_13A5BA2C on KaleoTimerInstanceToken (kaleoInstanceTokenId, kaleoTimerId);\n\ncreate index IX_41D6C6D on KaleoTransition (companyId);\ncreate index IX_479F3063 on KaleoTransition (kaleoDefinitionId);\ncreate index IX_A392DFD2 on KaleoTransition (kaleoNodeId);\ncreate index IX_A38E2194 on KaleoTransition (kaleoNodeId, defaultTransition);\ncreate index IX_85268A11 on KaleoTransition (kaleoNodeId, name);]]></indexes-sql>\n</data>'),(20471,'Notification',1,1409250476826,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Notifications_UserNotificationEvent (\n	notificationEventId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userNotificationEventId LONG,\n	timestamp LONG,\n	delivered BOOLEAN,\n	actionRequired BOOLEAN,\n	archived BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_93C52776 on Notifications_UserNotificationEvent (userId, actionRequired);\ncreate index IX_36E5AE4C on Notifications_UserNotificationEvent (userId, actionRequired, archived);\ncreate index IX_73C065F0 on Notifications_UserNotificationEvent (userId, delivered, actionRequired);\ncreate unique index IX_DC9FCEDC on Notifications_UserNotificationEvent (userNotificationEventId);]]></indexes-sql>\n</data>'),(20506,'Calendar',2,1397685647889,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Calendar (\n	uuid_ VARCHAR(75) null,\n	calendarId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	calendarResourceId LONG,\n	name STRING null,\n	description STRING null,\n	color INTEGER,\n	defaultCalendar BOOLEAN,\n	enableComments BOOLEAN,\n	enableRatings BOOLEAN\n);\n\ncreate table CalendarBooking (\n	uuid_ VARCHAR(75) null,\n	calendarBookingId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	calendarId LONG,\n	calendarResourceId LONG,\n	parentCalendarBookingId LONG,\n	title STRING null,\n	description TEXT null,\n	location STRING null,\n	startTime LONG,\n	endTime LONG,\n	allDay BOOLEAN,\n	recurrence STRING null,\n	firstReminder LONG,\n	firstReminderType VARCHAR(75) null,\n	secondReminder LONG,\n	secondReminderType VARCHAR(75) null,\n	status INTEGER,\n	statusByUserId LONG,\n	statusByUserName VARCHAR(75) null,\n	statusDate DATE null\n);\n\ncreate table CalendarNotificationTemplate (\n	uuid_ VARCHAR(75) null,\n	calendarNotificationTemplateId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	calendarId LONG,\n	notificationType VARCHAR(75) null,\n	notificationTypeSettings VARCHAR(75) null,\n	notificationTemplateType VARCHAR(75) null,\n	subject VARCHAR(75) null,\n	body TEXT null\n);\n\ncreate table CalendarResource (\n	uuid_ VARCHAR(75) null,\n	calendarResourceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	classNameId LONG,\n	classPK LONG,\n	classUuid VARCHAR(75) null,\n	code_ VARCHAR(75) null,\n	name STRING null,\n	description STRING null,\n	active_ BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_B53EB0E1 on Calendar (groupId, calendarResourceId);\ncreate index IX_97FC174E on Calendar (groupId, calendarResourceId, defaultCalendar);\ncreate index IX_F0FAF226 on Calendar (resourceBlockId);\ncreate index IX_96C8590 on Calendar (uuid_);\ncreate index IX_97656498 on Calendar (uuid_, companyId);\ncreate unique index IX_3AE311A on Calendar (uuid_, groupId);\n\ncreate index IX_D300DFCE on CalendarBooking (calendarId);\ncreate unique index IX_113A264E on CalendarBooking (calendarId, parentCalendarBookingId);\ncreate index IX_470170B4 on CalendarBooking (calendarId, status);\ncreate index IX_B198FFC on CalendarBooking (calendarResourceId);\ncreate index IX_57EBF55B on CalendarBooking (parentCalendarBookingId);\ncreate index IX_F7B8A941 on CalendarBooking (parentCalendarBookingId, status);\ncreate index IX_22DFDB49 on CalendarBooking (resourceBlockId);\ncreate index IX_F6E8EE73 on CalendarBooking (uuid_);\ncreate index IX_A21D9FD5 on CalendarBooking (uuid_, companyId);\ncreate unique index IX_F4C61797 on CalendarBooking (uuid_, groupId);\n\ncreate index IX_A412E5B6 on CalendarNotificationTemplate (calendarId);\ncreate index IX_7727A482 on CalendarNotificationTemplate (calendarId, notificationType, notificationTemplateType);\ncreate index IX_A2D4D78B on CalendarNotificationTemplate (uuid_);\ncreate index IX_4D7D97BD on CalendarNotificationTemplate (uuid_, companyId);\ncreate unique index IX_4012E97F on CalendarNotificationTemplate (uuid_, groupId);\n\ncreate index IX_76DDD0F7 on CalendarResource (active_);\ncreate unique index IX_16A12327 on CalendarResource (classNameId, classPK);\ncreate index IX_4470A59D on CalendarResource (companyId, code_, active_);\ncreate index IX_2C5184D4 on CalendarResource (companyId, name, active_);\ncreate index IX_1243D698 on CalendarResource (groupId);\ncreate index IX_40678371 on CalendarResource (groupId, active_);\ncreate index IX_55C2F8AA on CalendarResource (groupId, code_);\ncreate index IX_B9EA8C92 on CalendarResource (groupId, name, active_);\ncreate index IX_8BCB4D38 on CalendarResource (resourceBlockId);\ncreate index IX_150E2F22 on CalendarResource (uuid_);\ncreate index IX_56A06BC6 on CalendarResource (uuid_, companyId);\ncreate unique index IX_4ABD2BC8 on CalendarResource (uuid_, groupId);]]></indexes-sql>\n</data>'),(20528,'OpenSocial',4,1343264401607,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table OpenSocial_Gadget (\n	uuid_ VARCHAR(75) null,\n	gadgetId LONG not null primary key,\n	companyId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(75) null,\n	url STRING null,\n	portletCategoryNames STRING null\n);\n\ncreate table OpenSocial_OAuthConsumer (\n	oAuthConsumerId LONG not null primary key,\n	companyId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	gadgetKey VARCHAR(75) null,\n	serviceName VARCHAR(75) null,\n	consumerKey VARCHAR(75) null,\n	consumerSecret TEXT null,\n	keyType VARCHAR(75) null\n);\n\ncreate table OpenSocial_OAuthToken (\n	oAuthTokenId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	gadgetKey VARCHAR(75) null,\n	serviceName VARCHAR(75) null,\n	moduleId LONG,\n	accessToken VARCHAR(75) null,\n	tokenName VARCHAR(75) null,\n	tokenSecret VARCHAR(75) null,\n	sessionHandle VARCHAR(75) null,\n	expiration LONG\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_729869EE on OpenSocial_Gadget (companyId);\ncreate unique index IX_A6A89EB1 on OpenSocial_Gadget (companyId, url);\ncreate index IX_E1F8627A on OpenSocial_Gadget (uuid_);\ncreate index IX_3C79316E on OpenSocial_Gadget (uuid_, companyId);\n\ncreate index IX_47206618 on OpenSocial_OAuthConsumer (gadgetKey);\ncreate index IX_8E715BF8 on OpenSocial_OAuthConsumer (gadgetKey, serviceName);\n\ncreate index IX_6C8CCC3D on OpenSocial_OAuthToken (gadgetKey, serviceName);\ncreate index IX_CDD35402 on OpenSocial_OAuthToken (userId, gadgetKey, serviceName, moduleId, tokenName);]]></indexes-sql>\n</data>');
/*!40000 ALTER TABLE `ServiceComponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shard`
--

DROP TABLE IF EXISTS `Shard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Shard` (
  `shardId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`shardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shard`
--

LOCK TABLES `Shard` WRITE;
/*!40000 ALTER TABLE `Shard` DISABLE KEYS */;
INSERT INTO `Shard` VALUES (20156,20025,20155,'default');
/*!40000 ALTER TABLE `Shard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCart`
--

DROP TABLE IF EXISTS `ShoppingCart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingCart` (
  `cartId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `itemIds` longtext,
  `couponCodes` varchar(75) DEFAULT NULL,
  `altShipping` int(11) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCart`
--

LOCK TABLES `ShoppingCart` WRITE;
/*!40000 ALTER TABLE `ShoppingCart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCategory`
--

DROP TABLE IF EXISTS `ShoppingCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingCategory` (
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCategory`
--

LOCK TABLES `ShoppingCategory` WRITE;
/*!40000 ALTER TABLE `ShoppingCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCoupon`
--

DROP TABLE IF EXISTS `ShoppingCoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingCoupon` (
  `couponId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `limitCategories` longtext,
  `limitSkus` longtext,
  `minOrder` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discountType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`couponId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCoupon`
--

LOCK TABLES `ShoppingCoupon` WRITE;
/*!40000 ALTER TABLE `ShoppingCoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCoupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingItem`
--

DROP TABLE IF EXISTS `ShoppingItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingItem` (
  `itemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `fields_` tinyint(4) DEFAULT NULL,
  `fieldsQuantities` longtext,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `stockQuantity` int(11) DEFAULT NULL,
  `featured_` tinyint(4) DEFAULT NULL,
  `sale_` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `mediumImage` tinyint(4) DEFAULT NULL,
  `mediumImageId` bigint(20) DEFAULT NULL,
  `mediumImageURL` longtext,
  `largeImage` tinyint(4) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `largeImageURL` longtext,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingItem`
--

LOCK TABLES `ShoppingItem` WRITE;
/*!40000 ALTER TABLE `ShoppingItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingItemField`
--

DROP TABLE IF EXISTS `ShoppingItemField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingItemField` (
  `itemFieldId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `values_` longtext,
  `description` longtext,
  PRIMARY KEY (`itemFieldId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingItemField`
--

LOCK TABLES `ShoppingItemField` WRITE;
/*!40000 ALTER TABLE `ShoppingItemField` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItemField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingItemPrice`
--

DROP TABLE IF EXISTS `ShoppingItemPrice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingItemPrice` (
  `itemPriceId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemPriceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingItemPrice`
--

LOCK TABLES `ShoppingItemPrice` WRITE;
/*!40000 ALTER TABLE `ShoppingItemPrice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItemPrice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingOrder`
--

DROP TABLE IF EXISTS `ShoppingOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingOrder` (
  `orderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `altShipping` varchar(75) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  `insurance` double DEFAULT NULL,
  `couponCodes` varchar(75) DEFAULT NULL,
  `couponDiscount` double DEFAULT NULL,
  `billingFirstName` varchar(75) DEFAULT NULL,
  `billingLastName` varchar(75) DEFAULT NULL,
  `billingEmailAddress` varchar(75) DEFAULT NULL,
  `billingCompany` varchar(75) DEFAULT NULL,
  `billingStreet` varchar(75) DEFAULT NULL,
  `billingCity` varchar(75) DEFAULT NULL,
  `billingState` varchar(75) DEFAULT NULL,
  `billingZip` varchar(75) DEFAULT NULL,
  `billingCountry` varchar(75) DEFAULT NULL,
  `billingPhone` varchar(75) DEFAULT NULL,
  `shipToBilling` tinyint(4) DEFAULT NULL,
  `shippingFirstName` varchar(75) DEFAULT NULL,
  `shippingLastName` varchar(75) DEFAULT NULL,
  `shippingEmailAddress` varchar(75) DEFAULT NULL,
  `shippingCompany` varchar(75) DEFAULT NULL,
  `shippingStreet` varchar(75) DEFAULT NULL,
  `shippingCity` varchar(75) DEFAULT NULL,
  `shippingState` varchar(75) DEFAULT NULL,
  `shippingZip` varchar(75) DEFAULT NULL,
  `shippingCountry` varchar(75) DEFAULT NULL,
  `shippingPhone` varchar(75) DEFAULT NULL,
  `ccName` varchar(75) DEFAULT NULL,
  `ccType` varchar(75) DEFAULT NULL,
  `ccNumber` varchar(75) DEFAULT NULL,
  `ccExpMonth` int(11) DEFAULT NULL,
  `ccExpYear` int(11) DEFAULT NULL,
  `ccVerNumber` varchar(75) DEFAULT NULL,
  `comments` longtext,
  `ppTxnId` varchar(75) DEFAULT NULL,
  `ppPaymentStatus` varchar(75) DEFAULT NULL,
  `ppPaymentGross` double DEFAULT NULL,
  `ppReceiverEmail` varchar(75) DEFAULT NULL,
  `ppPayerEmail` varchar(75) DEFAULT NULL,
  `sendOrderEmail` tinyint(4) DEFAULT NULL,
  `sendShippingEmail` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingOrder`
--

LOCK TABLES `ShoppingOrder` WRITE;
/*!40000 ALTER TABLE `ShoppingOrder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingOrderItem`
--

DROP TABLE IF EXISTS `ShoppingOrderItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingOrderItem` (
  `orderItemId` bigint(20) NOT NULL,
  `orderId` bigint(20) DEFAULT NULL,
  `itemId` varchar(75) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `shippedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingOrderItem`
--

LOCK TABLES `ShoppingOrderItem` WRITE;
/*!40000 ALTER TABLE `ShoppingOrderItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingOrderItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivity`
--

DROP TABLE IF EXISTS `SocialActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivity` (
  `activityId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `activitySetId` bigint(20) DEFAULT NULL,
  `mirrorActivityId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentClassNameId` bigint(20) DEFAULT NULL,
  `parentClassPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`activityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivity`
--

LOCK TABLES `SocialActivity` WRITE;
/*!40000 ALTER TABLE `SocialActivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivityAchievement`
--

DROP TABLE IF EXISTS `SocialActivityAchievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivityAchievement` (
  `activityAchievementId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `firstInGroup` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityAchievementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivityAchievement`
--

LOCK TABLES `SocialActivityAchievement` WRITE;
/*!40000 ALTER TABLE `SocialActivityAchievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityAchievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivityCounter`
--

DROP TABLE IF EXISTS `SocialActivityCounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivityCounter` (
  `activityCounterId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `currentValue` int(11) DEFAULT NULL,
  `totalValue` int(11) DEFAULT NULL,
  `graceValue` int(11) DEFAULT NULL,
  `startPeriod` int(11) DEFAULT NULL,
  `endPeriod` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityCounterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivityCounter`
--

LOCK TABLES `SocialActivityCounter` WRITE;
/*!40000 ALTER TABLE `SocialActivityCounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityCounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivityLimit`
--

DROP TABLE IF EXISTS `SocialActivityLimit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivityLimit` (
  `activityLimitId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `activityCounterName` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`activityLimitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivityLimit`
--

LOCK TABLES `SocialActivityLimit` WRITE;
/*!40000 ALTER TABLE `SocialActivityLimit` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityLimit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivitySet`
--

DROP TABLE IF EXISTS `SocialActivitySet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivitySet` (
  `activitySetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `activityCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`activitySetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivitySet`
--

LOCK TABLES `SocialActivitySet` WRITE;
/*!40000 ALTER TABLE `SocialActivitySet` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivitySet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivitySetting`
--

DROP TABLE IF EXISTS `SocialActivitySetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivitySetting` (
  `activitySettingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`activitySettingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivitySetting`
--

LOCK TABLES `SocialActivitySetting` WRITE;
/*!40000 ALTER TABLE `SocialActivitySetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivitySetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialRelation`
--

DROP TABLE IF EXISTS `SocialRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialRelation` (
  `uuid_` varchar(75) DEFAULT NULL,
  `relationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `userId1` bigint(20) DEFAULT NULL,
  `userId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`relationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialRelation`
--

LOCK TABLES `SocialRelation` WRITE;
/*!40000 ALTER TABLE `SocialRelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialRelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialRequest`
--

DROP TABLE IF EXISTS `SocialRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialRequest` (
  `uuid_` varchar(75) DEFAULT NULL,
  `requestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`requestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialRequest`
--

LOCK TABLES `SocialRequest` WRITE;
/*!40000 ALTER TABLE `SocialRequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscription`
--

DROP TABLE IF EXISTS `Subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subscription` (
  `subscriptionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `frequency` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`subscriptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscription`
--

LOCK TABLES `Subscription` WRITE;
/*!40000 ALTER TABLE `Subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `Subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SyncDLObject`
--

DROP TABLE IF EXISTS `SyncDLObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SyncDLObject` (
  `objectId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  `modifiedTime` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `checksum` varchar(75) DEFAULT NULL,
  `event` varchar(75) DEFAULT NULL,
  `lockExpirationDate` datetime DEFAULT NULL,
  `lockUserId` bigint(20) DEFAULT NULL,
  `lockUserName` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `typeUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`objectId`),
  UNIQUE KEY `IX_69ADEDD1` (`typePK`),
  KEY `IX_7F996123` (`companyId`,`modifiedTime`,`repositoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SyncDLObject`
--

LOCK TABLES `SyncDLObject` WRITE;
/*!40000 ALTER TABLE `SyncDLObject` DISABLE KEYS */;
INSERT INTO `SyncDLObject` VALUES (20541,20155,1432107949763,1432107949763,20182,0,'welcome_cube','png','image/png','','','','1.0',452,'u7ezbZ5yW4ulWfonrR5PWzJicp4=','add',NULL,0,'','file',20530,'b49a2b96-1101-4803-b6f5-c0998ae2f2e9'),(20549,20155,1432107950018,1432107950018,20182,0,'welcome_ee','png','image/png','','','','1.0',218,'bAZ1F0qHRb1PCB42YiADy/l4ABI=','add',NULL,0,'','file',20539,'bda75511-974f-4f5b-b5e3-2f7cac05d489'),(20565,20155,1432107950221,1432107950221,20182,0,'welcome_community','png','image/png','','','','1.0',435,'MRLiI1X3aES3j3bNEXOaoJK6CbA=','add',NULL,0,'','file',20550,'8f2bd2cf-8528-432e-b831-f3274c081f3d'),(20578,20155,1432107950393,1432107950393,20182,0,'welcome_learn','png','image/png','','','','1.0',565,'VN9lePxKZwl+N76+bzYB4oeMgg4=','add',NULL,0,'','file',20566,'1573d3b8-56bf-456b-84c4-e1b4671520cd'),(20591,20155,1432107950625,1432107950625,20182,0,'helpful_links_for_using_liferay_portal','pdf','application/pdf','','','','1.0',148065,'UMErxgdyPxLp8QXdkDJ75XNBbWA=','add',NULL,0,'','file',20579,'d68147cf-0ce3-4d8c-8591-f99236f7a5a2'),(20600,20155,1432107950977,1432107950977,20182,0,'welcome_tools','png','image/png','','','','1.0',528,'M0/IPjARFwXLT/FpD6vPuE+zotA=','add',NULL,0,'','file',20592,'4afe454b-1e25-4143-a77e-457e0d021001');
/*!40000 ALTER TABLE `SyncDLObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemEvent`
--

DROP TABLE IF EXISTS `SystemEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemEvent` (
  `systemEventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `referrerClassNameId` bigint(20) DEFAULT NULL,
  `parentSystemEventId` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  PRIMARY KEY (`systemEventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemEvent`
--

LOCK TABLES `SystemEvent` WRITE;
/*!40000 ALTER TABLE `SystemEvent` DISABLE KEYS */;
INSERT INTO `SystemEvent` VALUES (20513,20182,20155,0,'','2015-05-20 07:45:49',20102,20414,'cbfd8c37-4447-4725-8283-d3bf64059766',20098,0,20514,1,''),(20515,20182,20155,0,'','2015-05-20 07:45:49',20102,20415,'53fd7065-38f9-40e7-8bf0-7407bbe3ba9f',20098,0,20516,1,''),(20517,20182,20155,0,'','2015-05-20 07:45:49',20102,20416,'32cee075-12cc-4dab-b844-bce727e51d74',20098,0,20518,1,''),(20519,20182,20155,0,'','2015-05-20 07:45:49',20102,20417,'c51105d4-b014-4373-858e-0f667bcfbf6c',20098,0,20520,1,''),(20521,20182,20155,0,'','2015-05-20 07:45:49',20102,20418,'98d7b6a7-4fc4-444a-9b3a-523396db4ea1',20098,0,20522,1,''),(20523,20182,20155,0,'','2015-05-20 07:45:49',20102,20419,'1776deaf-6875-440e-b71d-2ce252437171',20098,0,20524,1,''),(37335,20182,20155,20435,'Edicson Morales','2015-05-28 13:25:14',20002,20714,'d99e8975-1094-4093-bfa4-b82cb01cdd7c',0,0,37336,1,'{\"privateLayout\":\"true\"}'),(37342,20692,20155,20435,'Edicson Morales','2015-05-28 13:25:43',20505,20703,'8fe7a84e-93af-4d0b-bba3-b26354db02f7',20001,0,37343,1,'');
/*!40000 ALTER TABLE `SystemEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Team`
--

DROP TABLE IF EXISTS `Team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Team` (
  `teamId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`teamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Team`
--

LOCK TABLES `Team` WRITE;
/*!40000 ALTER TABLE `Team` DISABLE KEYS */;
/*!40000 ALTER TABLE `Team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ticket`
--

DROP TABLE IF EXISTS `Ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ticket` (
  `ticketId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraInfo` longtext,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ticketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ticket`
--

LOCK TABLES `Ticket` WRITE;
/*!40000 ALTER TABLE `Ticket` DISABLE KEYS */;
INSERT INTO `Ticket` VALUES (20206,20155,'2015-05-20 07:43:14',20005,20199,'d991fdfe-a41f-41c1-8ac7-d57f63159c3d',1,'test@liferay.com',NULL),(20442,20155,'2015-05-20 07:44:49',20005,20435,'f7497010-fbf8-4b7b-bf79-5af81cf17775',1,'edicson@billingbuddy.com',NULL),(20827,20155,'2015-05-20 10:03:14',20005,20818,'e13ffa30-00de-42e2-821d-30cc35f8b83c',1,'company1@billingbuddy.com',NULL),(20831,20155,'2015-05-20 10:04:31',20005,20818,'ebf1d197-786a-4fa4-b464-065c2803e07d',1,'company1@billingbuddy.com',NULL),(20911,20155,'2015-05-20 10:09:59',20005,20818,'7b556200-5848-44f9-a6b6-1c8102d8fe01',1,'company1@billingbuddy.com',NULL),(20921,20155,'2015-05-20 10:10:33',20005,20912,'c9e2ac5b-d85c-4aee-8052-00579d95c5ab',1,'company2@billingbuddy.com',NULL),(20925,20155,'2015-05-20 10:13:44',20005,20912,'17becc54-a84b-487a-97db-b32544bcb345',1,'company2@billingbuddy.com',NULL),(22360,20155,'2015-05-20 12:31:15',20005,22351,'dff3d983-2720-46e2-92be-10bcbd07c38b',1,'company3@billingbuddy.com',NULL),(34706,20155,'2015-05-20 21:21:37',20005,22351,'4424e424-cfc0-4c4b-8b19-7f1c688526f9',1,'company3@billingbuddy.com',NULL);
/*!40000 ALTER TABLE `Ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TrashEntry`
--

DROP TABLE IF EXISTS `TrashEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TrashEntry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TrashEntry`
--

LOCK TABLES `TrashEntry` WRITE;
/*!40000 ALTER TABLE `TrashEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `TrashEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TrashVersion`
--

DROP TABLE IF EXISTS `TrashVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TrashVersion` (
  `versionId` bigint(20) NOT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`versionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TrashVersion`
--

LOCK TABLES `TrashVersion` WRITE;
/*!40000 ALTER TABLE `TrashVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `TrashVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroup`
--

DROP TABLE IF EXISTS `UserGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userGroupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentUserGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `addedByLDAPImport` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroup`
--

LOCK TABLES `UserGroup` WRITE;
/*!40000 ALTER TABLE `UserGroup` DISABLE KEYS */;
INSERT INTO `UserGroup` VALUES ('8688bafe-79eb-4308-b398-6e8e1ca36c69',20762,20155,20435,'Edicson Morales','2015-05-20 09:12:33','2015-05-20 09:12:33',0,'BillingBuddyAdministratorSubscriptions','',0);
/*!40000 ALTER TABLE `UserGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroupGroupRole`
--

DROP TABLE IF EXISTS `UserGroupGroupRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroupGroupRole` (
  `userGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`groupId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroupGroupRole`
--

LOCK TABLES `UserGroupGroupRole` WRITE;
/*!40000 ALTER TABLE `UserGroupGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroupGroupRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroupRole`
--

DROP TABLE IF EXISTS `UserGroupRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroupRole` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`groupId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroupRole`
--

LOCK TABLES `UserGroupRole` WRITE;
/*!40000 ALTER TABLE `UserGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroupRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups_Teams`
--

DROP TABLE IF EXISTS `UserGroups_Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups_Teams` (
  `teamId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups_Teams`
--

LOCK TABLES `UserGroups_Teams` WRITE;
/*!40000 ALTER TABLE `UserGroups_Teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroups_Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserIdMapper`
--

DROP TABLE IF EXISTS `UserIdMapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserIdMapper` (
  `userIdMapperId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `externalUserId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`userIdMapperId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserIdMapper`
--

LOCK TABLES `UserIdMapper` WRITE;
/*!40000 ALTER TABLE `UserIdMapper` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserIdMapper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserNotificationDelivery`
--

DROP TABLE IF EXISTS `UserNotificationDelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserNotificationDelivery` (
  `userNotificationDeliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `notificationType` int(11) DEFAULT NULL,
  `deliveryType` int(11) DEFAULT NULL,
  `deliver` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationDeliveryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserNotificationDelivery`
--

LOCK TABLES `UserNotificationDelivery` WRITE;
/*!40000 ALTER TABLE `UserNotificationDelivery` DISABLE KEYS */;
INSERT INTO `UserNotificationDelivery` VALUES (39903,20155,20435,'33',0,0,10002,1),(39904,20155,20435,'33',0,1,10002,1),(39905,20155,20435,'28',0,0,10002,1),(39906,20155,20435,'28',0,1,10002,1),(39907,20155,20435,'20',0,0,10002,1),(39908,20155,20435,'20',0,1,10002,1),(39909,20155,20435,'19',0,0,10002,1),(39910,20155,20435,'19',0,1,10002,1),(39911,20155,20435,'15',0,0,10002,1),(39912,20155,20435,'15',0,1,10002,1),(39913,20155,20435,'36',0,0,10002,1),(39914,20155,20435,'36',0,1,10002,1),(39915,20155,20435,'SchedulerJobs_WAR_SchedulerJobsportlet',0,0,10000,1),(39916,20155,20435,'SchedulerJobs_WAR_SchedulerJobsportlet',0,0,10002,1),(39917,20155,20435,'dockbarnotificationaction_WAR_DockBarCustomNotificationportlet',0,0,10000,1),(39918,20155,20435,'dockbarnotificationaction_WAR_DockBarCustomNotificationportlet',0,0,10002,1);
/*!40000 ALTER TABLE `UserNotificationDelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserNotificationEvent`
--

DROP TABLE IF EXISTS `UserNotificationEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserNotificationEvent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userNotificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `deliverBy` bigint(20) DEFAULT NULL,
  `delivered` tinyint(4) DEFAULT NULL,
  `payload` longtext,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationEventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserNotificationEvent`
--

LOCK TABLES `UserNotificationEvent` WRITE;
/*!40000 ALTER TABLE `UserNotificationEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserNotificationEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserTracker`
--

DROP TABLE IF EXISTS `UserTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserTracker` (
  `userTrackerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `sessionId` varchar(200) DEFAULT NULL,
  `remoteAddr` varchar(75) DEFAULT NULL,
  `remoteHost` varchar(75) DEFAULT NULL,
  `userAgent` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserTracker`
--

LOCK TABLES `UserTracker` WRITE;
/*!40000 ALTER TABLE `UserTracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserTrackerPath`
--

DROP TABLE IF EXISTS `UserTrackerPath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserTrackerPath` (
  `userTrackerPathId` bigint(20) NOT NULL,
  `userTrackerId` bigint(20) DEFAULT NULL,
  `path_` longtext,
  `pathDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userTrackerPathId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserTrackerPath`
--

LOCK TABLES `UserTrackerPath` WRITE;
/*!40000 ALTER TABLE `UserTrackerPath` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserTrackerPath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_`
--

DROP TABLE IF EXISTS `User_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultUser` tinyint(4) DEFAULT NULL,
  `contactId` bigint(20) DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  `passwordEncrypted` tinyint(4) DEFAULT NULL,
  `passwordReset` tinyint(4) DEFAULT NULL,
  `passwordModifiedDate` datetime DEFAULT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `reminderQueryQuestion` varchar(75) DEFAULT NULL,
  `reminderQueryAnswer` varchar(75) DEFAULT NULL,
  `graceLoginCount` int(11) DEFAULT NULL,
  `screenName` varchar(75) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `facebookId` bigint(20) DEFAULT NULL,
  `ldapServerId` bigint(20) DEFAULT NULL,
  `openId` varchar(1024) DEFAULT NULL,
  `portraitId` bigint(20) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `greeting` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `loginIP` varchar(75) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginIP` varchar(75) DEFAULT NULL,
  `lastFailedLoginDate` datetime DEFAULT NULL,
  `failedLoginAttempts` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `agreedToTermsOfUse` tinyint(4) DEFAULT NULL,
  `emailAddressVerified` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_`
--

LOCK TABLES `User_` WRITE;
/*!40000 ALTER TABLE `User_` DISABLE KEYS */;
INSERT INTO `User_` VALUES ('1c971bc1-610c-4afb-b37c-af91f23a9154',20159,20155,'2015-05-20 07:43:10','2015-05-20 07:43:10',1,20160,'password',0,0,NULL,'5533ed38b5e33c076a804bb4bca644f9,9590828507537743bc166fef8cff8748,9590828507537743bc166fef8cff8748','','',0,'20159','default@liferay.com',0,0,'',0,'en_US','UTC','Welcome!','','','','','','2015-05-20 07:43:10','',NULL,'',NULL,0,0,NULL,1,0,0),('8621b4b3-ec56-4536-8318-a9884d8b27b3',20199,20155,'2015-05-20 07:43:13','2015-05-20 07:43:13',0,20200,'AAAAoAAB9ACoE/82l9CnB3DFaOmDkbIzvazJt3StkMaVYoHQ',1,0,NULL,'','','',0,'test','test@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test Test!','','Test','','Test','','2015-05-20 07:43:14','','2015-05-20 07:43:14','',NULL,0,0,NULL,0,1,5),('fd83913a-bcce-4daf-b2f7-7de14087919f',20435,20155,'2015-05-20 07:44:49','2015-05-20 11:44:07',0,20436,'AAAAoAAB9ACH+/kMbsDlIZIVuKD+2ZQBeEhhdnTbnKGfMSMj',1,0,'2015-05-20 07:46:23','220f20ce6eb815c3d11c868a87d45b3f,80cd783f0184c857e4d7dd98bf723db9,9ae7000fffafd4cf3dd6e6d289faaf5a','what-is-your-father\'s-middle-name','Caro',0,'edicson','edicson@billingbuddy.com',0,-1,'',22279,'en_US','UTC','Welcome Edicson Morales!','','Edicson','','Morales','','2015-05-29 19:23:04','127.0.0.1','2015-05-29 17:59:36','127.0.0.1','2015-05-20 12:34:20',0,0,NULL,1,1,0),('a9eb13c0-c7d4-490e-b4c9-29272f634ace',20818,20155,'2015-05-20 10:03:13','2015-05-20 21:23:44',0,20819,'AAAAoAAB9ADScoQ4TAjiDbCsZIL51d0T7q+JAoU3iqr7iOJi',1,0,'2015-05-20 10:09:59','218e2a84185277009de4d659ce7e6ee8,5a63749d0ac5e6a56224b7b7e19a1426,636647070c343aa6f0f2cbc11d3c4017','what-is-your-father\'s-middle-name','Caro',0,'company1','company1@billingbuddy.com',0,-1,'',0,'en_US','UTC','Welcome Company1!','','Company1','','','','2015-05-28 13:24:08','127.0.0.1','2015-05-25 19:24:39','127.0.0.1','2015-05-20 21:22:40',0,0,NULL,1,1,0),('097c0c5e-e077-4018-8de1-371b0d641ac6',20912,20155,'2015-05-20 10:10:32','2015-05-20 10:18:45',0,20913,'AAAAoAAB9AC+62+SHV/QaJ6pZy8K/Nm8rxWMpsV/rmysoOg9',1,0,'2015-05-20 10:13:44','a900a30249008a481199a5d2011fc2c4,1f089f68f0d557d9ad49fcdf8444cf14,13d3704f1d7d11ca5eaa48f554242b31','what-is-your-father\'s-middle-name','Caro',0,'company2','company2@billingbuddy.com',0,-1,'',0,'en_US','UTC','Welcome Company2!','','Company2','','','','2015-05-20 10:16:49','127.0.0.1','2015-05-20 10:13:54','127.0.0.1','2015-05-20 11:17:06',1,0,NULL,1,1,0),('d3d27da0-9acc-4ec5-a9b5-9ae1cc876972',22351,20155,'2015-05-20 12:31:14','2015-05-20 21:21:37',0,22352,'AAAAoAAB9ADyLd1xW9FtiFyFywocWfQsUUQp0+l9zGEcRQHB',1,1,'2015-05-20 12:31:15','','','',0,'company3','company3@billingbuddy.com',0,-1,'',0,'en_US','UTC','Welcome Company3!','','Company3','','','',NULL,'',NULL,'',NULL,0,0,NULL,0,0,0);
/*!40000 ALTER TABLE `User_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Groups`
--

DROP TABLE IF EXISTS `Users_Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Groups` (
  `groupId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Groups`
--

LOCK TABLES `Users_Groups` WRITE;
/*!40000 ALTER TABLE `Users_Groups` DISABLE KEYS */;
INSERT INTO `Users_Groups` VALUES (20182,20199),(20182,20435),(20182,20818),(20182,20912);
/*!40000 ALTER TABLE `Users_Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Orgs`
--

DROP TABLE IF EXISTS `Users_Orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Orgs` (
  `organizationId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Orgs`
--

LOCK TABLES `Users_Orgs` WRITE;
/*!40000 ALTER TABLE `Users_Orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_Orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Roles`
--

DROP TABLE IF EXISTS `Users_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Roles` (
  `roleId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Roles`
--

LOCK TABLES `Users_Roles` WRITE;
/*!40000 ALTER TABLE `Users_Roles` DISABLE KEYS */;
INSERT INTO `Users_Roles` VALUES (20162,20199),(20162,20435),(20163,20159),(20165,20199),(20165,20435),(20165,20818),(20165,20912),(20165,22351),(20166,20199),(20166,20435),(20166,20818),(20166,20912),(20166,22351),(20751,20435),(20751,20818),(34719,20435),(34719,20818);
/*!40000 ALTER TABLE `Users_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Teams`
--

DROP TABLE IF EXISTS `Users_Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Teams` (
  `teamId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Teams`
--

LOCK TABLES `Users_Teams` WRITE;
/*!40000 ALTER TABLE `Users_Teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_UserGroups`
--

DROP TABLE IF EXISTS `Users_UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_UserGroups` (
  `userId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_UserGroups`
--

LOCK TABLES `Users_UserGroups` WRITE;
/*!40000 ALTER TABLE `Users_UserGroups` DISABLE KEYS */;
INSERT INTO `Users_UserGroups` VALUES (20435,20762);
/*!40000 ALTER TABLE `Users_UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualHost`
--

DROP TABLE IF EXISTS `VirtualHost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualHost` (
  `virtualHostId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `layoutSetId` bigint(20) DEFAULT NULL,
  `hostname` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`virtualHostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualHost`
--

LOCK TABLES `VirtualHost` WRITE;
/*!40000 ALTER TABLE `VirtualHost` DISABLE KEYS */;
INSERT INTO `VirtualHost` VALUES (20158,20155,0,'localhost');
/*!40000 ALTER TABLE `VirtualHost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WebDAVProps`
--

DROP TABLE IF EXISTS `WebDAVProps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WebDAVProps` (
  `webDavPropsId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `props` longtext,
  PRIMARY KEY (`webDavPropsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WebDAVProps`
--

LOCK TABLES `WebDAVProps` WRITE;
/*!40000 ALTER TABLE `WebDAVProps` DISABLE KEYS */;
/*!40000 ALTER TABLE `WebDAVProps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website`
--

DROP TABLE IF EXISTS `Website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website` (
  `uuid_` varchar(75) DEFAULT NULL,
  `websiteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `url` longtext,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`websiteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website`
--

LOCK TABLES `Website` WRITE;
/*!40000 ALTER TABLE `Website` DISABLE KEYS */;
/*!40000 ALTER TABLE `Website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WikiNode`
--

DROP TABLE IF EXISTS `WikiNode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WikiNode` (
  `uuid_` varchar(75) DEFAULT NULL,
  `nodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`nodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WikiNode`
--

LOCK TABLES `WikiNode` WRITE;
/*!40000 ALTER TABLE `WikiNode` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiNode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WikiPage`
--

DROP TABLE IF EXISTS `WikiPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WikiPage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `pageId` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `minorEdit` tinyint(4) DEFAULT NULL,
  `content` longtext,
  `summary` longtext,
  `format` varchar(75) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `parentTitle` varchar(255) DEFAULT NULL,
  `redirectTitle` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WikiPage`
--

LOCK TABLES `WikiPage` WRITE;
/*!40000 ALTER TABLE `WikiPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WikiPageResource`
--

DROP TABLE IF EXISTS `WikiPageResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WikiPageResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WikiPageResource`
--

LOCK TABLES `WikiPageResource` WRITE;
/*!40000 ALTER TABLE `WikiPageResource` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiPageResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowDefinitionLink`
--

DROP TABLE IF EXISTS `WorkflowDefinitionLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowDefinitionLink` (
  `workflowDefinitionLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `workflowDefinitionName` varchar(75) DEFAULT NULL,
  `workflowDefinitionVersion` int(11) DEFAULT NULL,
  PRIMARY KEY (`workflowDefinitionLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowDefinitionLink`
--

LOCK TABLES `WorkflowDefinitionLink` WRITE;
/*!40000 ALTER TABLE `WorkflowDefinitionLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowDefinitionLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowInstanceLink`
--

DROP TABLE IF EXISTS `WorkflowInstanceLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowInstanceLink` (
  `workflowInstanceLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `workflowInstanceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`workflowInstanceLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowInstanceLink`
--

LOCK TABLES `WorkflowInstanceLink` WRITE;
/*!40000 ALTER TABLE `WorkflowInstanceLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowInstanceLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lportal'
--

--
-- Dumping routines for database 'lportal'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-29 21:48:11
