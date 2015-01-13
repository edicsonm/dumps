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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Portlet`
--

LOCK TABLES `Portlet` WRITE;
/*!40000 ALTER TABLE `Portlet` DISABLE KEYS */;
INSERT INTO `Portlet` VALUES (10302,10253,'98','',1),(10303,10253,'66','',1),(10304,10253,'180','',1),(10305,10253,'27','',1),(10306,10253,'152','',1),(10307,10253,'134','',1),(10308,10253,'130','',1),(10309,10253,'122','',1),(10310,10253,'36','',1),(10311,10253,'26','',1),(10312,10253,'104','',1),(10313,10253,'175','',1),(10314,10253,'64','',1),(10315,10253,'153','',1),(10316,10253,'129','',1),(10317,10253,'179','',1),(10318,10253,'173','',1),(10319,10253,'100','',1),(10320,10253,'19','',1),(10321,10253,'157','',1),(10322,10253,'181','',1),(10323,10253,'128','',1),(10324,10253,'154','',1),(10325,10253,'148','',1),(10326,10253,'11','',1),(10327,10253,'29','',1),(10328,10253,'158','',1),(10329,10253,'178','',1),(10330,10253,'8','',1),(10331,10253,'58','',1),(10332,10253,'71','',1),(10333,10253,'97','',1),(10334,10253,'39','',1),(10335,10253,'177','',1),(10336,10253,'85','',1),(10337,10253,'118','',1),(10338,10253,'107','',1),(10339,10253,'30','',1),(10340,10253,'147','',1),(10341,10253,'48','',1),(10342,10253,'125','',1),(10343,10253,'161','',1),(10344,10253,'146','',1),(10345,10253,'62','',1),(10346,10253,'162','',1),(10347,10253,'176','',1),(10348,10253,'108','',1),(10349,10253,'84','',1),(10350,10253,'101','',1),(10351,10253,'121','',1),(10352,10253,'143','',1),(10353,10253,'77','',1),(10354,10253,'167','',1),(10355,10253,'115','',1),(10356,10253,'56','',1),(10357,10253,'111','',1),(10358,10253,'3','',1),(10359,10253,'20','',1),(10360,10253,'16','',1),(10361,10253,'23','',1),(10362,10253,'83','',1),(10363,10253,'99','',1),(10364,10253,'70','',1),(10365,10253,'164','',1),(10366,10253,'141','',1),(10367,10253,'9','',1),(10368,10253,'28','',1),(10369,10253,'137','',1),(10370,10253,'15','',1),(10371,10253,'47','',1),(10372,10253,'116','',1),(10373,10253,'82','',1),(10374,10253,'151','',1),(10375,10253,'54','',1),(10376,10253,'34','',1),(10377,10253,'132','',1),(10378,10253,'169','',1),(10379,10253,'61','',1),(10380,10253,'73','',1),(10381,10253,'136','',1),(10382,10253,'50','',1),(10383,10253,'127','',1),(10384,10253,'31','',1),(10385,10253,'25','',1),(10386,10253,'166','',1),(10387,10253,'33','',1),(10388,10253,'150','',1),(10389,10253,'114','',1),(10390,10253,'149','',1),(10391,10253,'67','',1),(10392,10253,'110','',1),(10393,10253,'59','',1),(10394,10253,'135','',1),(10395,10253,'131','',1),(10396,10253,'102','',1),(11301,10253,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet','',1),(11441,10253,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet','',1),(11451,10253,'FormularioRaza_WAR_FormularioRegistroRazaportlet','',1),(11452,10253,'\"FormularioRegistroRaza\"_WAR_FormularioRegistroRazaportlet','',1),(11504,10253,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet','',1),(11601,10253,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet','',1),(11801,10253,'mygreeting_WAR_mygreetingportlet','',1),(12001,10253,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet','',1);
/*!40000 ALTER TABLE `Portlet` ENABLE KEYS */;
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
