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
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_EB9BDE28` (`uuid_`,`groupId`),
  KEY `IX_E3BAF436` (`companyId`),
  KEY `IX_50BF1038` (`groupId`),
  KEY `IX_AE4B50C2` (`uuid_`),
  KEY `IX_3A9C0626` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMContent`
--

LOCK TABLES `DDMContent` WRITE;
/*!40000 ALTER TABLE `DDMContent` DISABLE KEYS */;
INSERT INTO `DDMContent` VALUES ('7f6d9e90-6776-4f01-81d1-8301e2bae2e8',11882,10182,10155,10159,'','2015-03-06 20:56:23','2015-03-06 20:56:23','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[8 8 8 8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n</root>'),('770a1888-20dc-469f-87f6-3d383d98ef3c',11896,10182,10155,10159,'','2015-03-06 20:56:23','2015-03-06 20:56:23','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[8 8 8 8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n</root>'),('e731d688-3a9b-46f4-b315-72666adec666',11910,10182,10155,10159,'','2015-03-06 20:56:24','2015-03-06 20:56:24','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[8 8 8 8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n</root>'),('6786f487-05d0-4a83-8fad-28bdd8878f1a',11922,10182,10155,10159,'','2015-03-06 20:56:24','2015-03-06 20:56:24','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[8 8 8 8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n</root>'),('e4e851b0-e3da-4a17-9546-a39fc79e7f3b',11941,10182,10155,10159,'','2015-03-06 20:56:25','2015-03-06 20:56:25','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_LAST_MODIFIED\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[2013-08-28T22:33:19Z]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[application/pdf]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"MSOffice_LAST_SAVED\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[2013-08-28T22:33:19Z]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"DublinCore_CREATED\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[2013-08-28T22:30:43Z]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"DublinCore_MODIFIED\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[2013-08-28T22:33:19Z]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"MSOffice_CREATION_DATE\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[2013-08-28T22:30:43Z]]></dynamic-content>\n	</dynamic-element>\n</root>'),('abaf333a-a361-4ca7-9431-8bd667fc48c0',11950,10182,10155,10159,'','2015-03-06 20:56:26','2015-03-06 20:56:26','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[8 8 8 8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"es_ES\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n</root>');
/*!40000 ALTER TABLE `DDMContent` ENABLE KEYS */;
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
