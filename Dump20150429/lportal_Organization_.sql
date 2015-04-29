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
  PRIMARY KEY (`organizationId`),
  UNIQUE KEY `IX_E301BDF5` (`companyId`,`name`),
  KEY `IX_834BCEB6` (`companyId`),
  KEY `IX_418E4522` (`companyId`,`parentOrganizationId`),
  KEY `IX_396D6B42` (`uuid_`),
  KEY `IX_A9D85BA6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organization_`
--

LOCK TABLES `Organization_` WRITE;
/*!40000 ALTER TABLE `Organization_` DISABLE KEYS */;
INSERT INTO `Organization_` VALUES ('40172d60-f9ca-46c7-9f93-1b9c8a868e90',10442,10155,10159,'','2015-03-06 08:13:26','2015-03-06 08:13:26',0,'/10442/','Liferay, Inc.','regular-organization',1,0,0,12017,''),('eeeb6c2e-e27d-4579-bd75-eeebb8176ba3',10458,10155,10159,'','2015-03-06 08:13:26','2015-03-06 08:13:26',10442,'/10442/10458/','Liferay Chicago','location',1,19014,19,12017,''),('37ff5cd2-b033-4baf-8d06-548844fff9b5',10532,10155,10159,'','2015-03-06 08:13:29','2015-03-06 08:13:29',10442,'/10442/10532/','Liferay Consulting','regular-organization',1,19005,19,12017,''),('d2c764e3-66ed-42c8-94bc-d7218ba3b621',10536,10155,10159,'','2015-03-06 08:13:29','2015-03-06 08:13:29',10442,'/10442/10536/','Liferay Dalian','location',1,0,2,12017,''),('477a9287-b5f9-4317-bc80-d4296b8e7ca3',10610,10155,10159,'','2015-03-06 08:13:31','2015-03-06 08:13:31',10442,'/10442/10610/','Liferay Engineering','regular-organization',1,19005,19,12017,''),('51d7df88-2c2a-499d-9b48-d581fe956f6b',10614,10155,10159,'','2015-03-06 08:13:31','2015-03-06 08:13:31',10442,'/10442/10614/','Liferay Frankfurt','location',1,0,4,12017,''),('12c4a195-8a77-48d3-ab3f-c06cfcdcc2a7',10688,10155,10159,'','2015-03-06 08:13:33','2015-03-06 08:13:33',10442,'/10442/10688/','Liferay Hong Kong','location',1,0,2,12017,''),('2063fbb9-2088-490b-b063-3adf522d7366',10762,10155,10159,'','2015-03-06 08:13:36','2015-03-06 08:13:36',10442,'/10442/10762/','Liferay Kuala Lumpur','location',1,0,135,12017,''),('1f2d2a99-2a3a-410e-9508-3d8f198a2a67',10836,10155,10159,'','2015-03-06 08:13:38','2015-03-06 08:13:38',10442,'/10442/10836/','Liferay Los Angeles','location',1,19005,19,12017,''),('4528f562-f1df-41a6-99d6-fcadbb0032f2',10910,10155,10159,'','2015-03-06 08:13:40','2015-03-06 08:13:40',10442,'/10442/10910/','Liferay Madrid','location',1,0,15,12017,''),('e675b7f8-d6ab-41de-aa45-87aeabbc7b55',10984,10155,10159,'','2015-03-06 08:13:42','2015-03-06 08:13:42',10442,'/10442/10984/','Liferay Marketing','regular-organization',1,19005,19,12017,''),('70ba99ef-84ff-441b-b0b4-61595dd0622a',10988,10155,10159,'','2015-03-06 08:13:42','2015-03-06 08:13:42',10442,'/10442/10988/','Liferay New York','location',1,19033,19,12017,''),('3ef8a1e7-a213-458e-b8d9-c7a652a51201',11062,10155,10159,'','2015-03-06 08:13:44','2015-03-06 08:13:44',10442,'/10442/11062/','Liferay Saint Paulo','location',1,0,48,12017,''),('38dfc87a-813b-4511-8b74-d38ac3d71792',11136,10155,10159,'','2015-03-06 08:13:46','2015-03-06 08:13:46',10442,'/10442/11136/','Liferay Sales','regular-organization',1,19005,19,12017,''),('85381354-f299-4be9-ac66-7f372569ac64',11140,10155,10159,'','2015-03-06 08:13:46','2015-03-06 08:13:46',10442,'/10442/11140/','Liferay San Francisco','location',1,19005,19,12017,''),('86b7ff83-6cc2-46cc-ae50-fe023d11dd8f',11214,10155,10159,'','2015-03-06 08:13:48','2015-03-06 08:13:48',10442,'/10442/11214/','Liferay Support','regular-organization',1,19005,19,12017,'');
/*!40000 ALTER TABLE `Organization_` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-29 19:28:20
