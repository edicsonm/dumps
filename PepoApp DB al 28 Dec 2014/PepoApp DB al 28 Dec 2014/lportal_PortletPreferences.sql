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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortletPreferences`
--

LOCK TABLES `PortletPreferences` WRITE;
/*!40000 ALTER TABLE `PortletPreferences` DISABLE KEYS */;
INSERT INTO `PortletPreferences` VALUES (10451,0,3,10446,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10457,0,3,10452,'101_INSTANCE_sX9IkmDTYQWq','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10109</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),(10477,0,3,10472,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10478,0,3,10472,'82','<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),(10479,0,3,10472,'101_INSTANCE_YKL9Ihv1t3XH','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),(10485,0,3,10480,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10491,0,3,10486,'101_INSTANCE_cZZpL979qao6','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10109</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),(10497,0,3,10492,'39_INSTANCE_SGrtnUVY7c9J','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference></portlet-preferences>'),(10498,0,3,10492,'39_INSTANCE_bzn1R6XCZreC','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference></portlet-preferences>'),(10687,10279,2,0,'15','<portlet-preferences />'),(10729,0,3,10274,'160','<portlet-preferences />'),(10730,0,3,10274,'145','<portlet-preferences />'),(10731,0,3,10274,'49','<portlet-preferences />'),(10732,0,3,10274,'165','<portlet-preferences />'),(10733,0,3,10274,'156','<portlet-preferences />'),(10802,0,3,10274,'137','<portlet-preferences />'),(10803,0,3,10274,'135','<portlet-preferences />'),(10804,0,3,10274,'125','<portlet-preferences />'),(10805,0,3,10274,'134','<portlet-preferences />'),(10806,0,3,10274,'149','<portlet-preferences />'),(10807,0,3,10274,'146','<portlet-preferences />'),(10901,0,3,10274,'1_WAR_marketplaceportlet','<portlet-preferences />'),(10952,0,3,10907,'103','<portlet-preferences />'),(10953,0,3,10907,'145','<portlet-preferences />'),(10954,0,3,10274,'88','<portlet-preferences />'),(10955,0,3,10274,'130','<portlet-preferences />'),(11001,0,3,10907,'49','<portlet-preferences />'),(11002,0,3,10916,'103','<portlet-preferences />'),(11003,0,3,10916,'145','<portlet-preferences />'),(11010,0,3,11004,'103','<portlet-preferences />'),(11011,0,3,10907,'87','<portlet-preferences />'),(11012,0,3,10907,'58','<portlet-preferences />'),(11014,0,3,11004,'58','<portlet-preferences />'),(11015,0,3,11004,'145','<portlet-preferences />'),(11201,0,3,10274,'136','<portlet-preferences />'),(11202,0,3,10274,'127','<portlet-preferences />'),(11217,0,3,10274,'2','<portlet-preferences />'),(11218,0,3,10274,'174','<portlet-preferences />'),(11219,0,3,11004,'49','<portlet-preferences />'),(11232,0,3,11226,'103','<portlet-preferences />'),(11233,0,3,11226,'145','<portlet-preferences />'),(11252,0,3,11234,'103','<portlet-preferences />'),(11253,0,3,11234,'145','<portlet-preferences />'),(11254,0,3,11240,'103','<portlet-preferences />'),(11255,0,3,11240,'145','<portlet-preferences />'),(11256,0,3,11246,'103','<portlet-preferences />'),(11257,0,3,11246,'145','<portlet-preferences />'),(11311,0,3,11306,'103','<portlet-preferences />'),(11312,0,3,11306,'145','<portlet-preferences />'),(11313,0,3,10943,'103','<portlet-preferences />'),(11314,0,3,10943,'145','<portlet-preferences />'),(11315,0,3,10934,'103','<portlet-preferences />'),(11316,0,3,10934,'145','<portlet-preferences />'),(11317,0,3,10925,'103','<portlet-preferences />'),(11318,0,3,10925,'145','<portlet-preferences />'),(11320,0,3,11306,'87','<portlet-preferences />'),(11321,0,3,11306,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet','<portlet-preferences />'),(11332,0,3,11326,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet','<portlet-preferences />'),(11333,0,3,11326,'103','<portlet-preferences />'),(11438,0,3,11406,'103','<portlet-preferences />'),(11439,0,3,11406,'145','<portlet-preferences />'),(11440,0,3,11406,'87','<portlet-preferences />'),(11442,0,3,11406,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet','<portlet-preferences />'),(11449,0,3,11443,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet','<portlet-preferences />'),(11450,0,3,11443,'103','<portlet-preferences />'),(11453,0,3,10274,'132','<portlet-preferences />'),(11501,0,3,11433,'103','<portlet-preferences />'),(11502,0,3,11433,'145','<portlet-preferences />'),(11503,0,3,11433,'87','<portlet-preferences />'),(11505,0,3,11433,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet','<portlet-preferences />'),(11512,0,3,11506,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet','<portlet-preferences />'),(11513,0,3,11506,'103','<portlet-preferences />'),(11514,0,3,11415,'103','<portlet-preferences />'),(11515,0,3,11415,'145','<portlet-preferences />'),(11602,0,3,11415,'87','<portlet-preferences />'),(11603,0,3,11415,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet','<portlet-preferences />'),(11610,0,3,11604,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet','<portlet-preferences />'),(11611,0,3,11604,'103','<portlet-preferences />'),(11701,0,3,11226,'58','<portlet-preferences />'),(11702,0,3,11443,'49','<portlet-preferences />'),(11802,0,3,10907,'mygreeting_WAR_mygreetingportlet','<portlet-preferences />'),(11804,0,3,11004,'mygreeting_WAR_mygreetingportlet','<portlet-preferences />'),(11907,0,3,11901,'103','<portlet-preferences />'),(11908,0,3,11424,'103','<portlet-preferences />'),(11909,0,3,11424,'145','<portlet-preferences />'),(11910,0,3,11424,'87','<portlet-preferences />'),(12002,0,3,11424,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet','<portlet-preferences />'),(12004,0,3,11901,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet','<portlet-preferences />'),(12101,0,3,11326,'49','<portlet-preferences />');
/*!40000 ALTER TABLE `PortletPreferences` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-28  9:52:19
