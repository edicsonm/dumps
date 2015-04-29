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
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_12B5E51D` (`companyId`,`portletId`),
  KEY `IX_80CC9508` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Portlet`
--

LOCK TABLES `Portlet` WRITE;
/*!40000 ALTER TABLE `Portlet` DISABLE KEYS */;
INSERT INTO `Portlet` VALUES (10206,10155,'193','',1),(10207,10155,'194','',1),(10208,10155,'110','',1),(10209,10155,'114','',1),(10210,10155,'115','',1),(10211,10155,'116','',1),(10212,10155,'118','',1),(10213,10155,'97','',1),(10214,10155,'98','',0),(10215,10155,'11','',1),(10216,10155,'99','',1),(10217,10155,'15','',1),(10218,10155,'16','',1),(10219,10155,'19','',1),(10220,10155,'121','',1),(10221,10155,'122','',1),(10222,10155,'3','',1),(10223,10155,'125','',1),(10224,10155,'127','',1),(10225,10155,'128','',1),(10226,10155,'129','',1),(10227,10155,'9','',1),(10228,10155,'20','',1),(10229,10155,'23','',1),(10230,10155,'25','',1),(10231,10155,'26','',1),(10232,10155,'27','',1),(10233,10155,'28','',1),(10234,10155,'29','',1),(10235,10155,'130','',1),(10236,10155,'131','',1),(10237,10155,'132','',1),(10238,10155,'134','',1),(10239,10155,'135','',1),(10240,10155,'137','',1),(10241,10155,'30','',1),(10242,10155,'31','',1),(10243,10155,'33','',1),(10244,10155,'34','',1),(10245,10155,'36','',1),(10246,10155,'39','',1),(10247,10155,'141','',1),(10248,10155,'143','',1),(10249,10155,'146','',1),(10250,10155,'147','',1),(10251,10155,'148','',1),(10252,10155,'149','',1),(10253,10155,'47','',1),(10254,10155,'48','',1),(10255,10155,'150','',1),(10256,10155,'151','',1),(10257,10155,'152','',1),(10258,10155,'153','',1),(10259,10155,'154','',1),(10260,10155,'157','',1),(10261,10155,'158','',1),(10262,10155,'50','',1),(10263,10155,'54','',1),(10264,10155,'56','',1),(10265,10155,'58','',1),(10266,10155,'59','',1),(10267,10155,'161','',1),(10268,10155,'162','',1),(10269,10155,'164','',1),(10270,10155,'166','',1),(10271,10155,'167','',1),(10272,10155,'169','',1),(10273,10155,'61','',1),(10274,10155,'62','',0),(10275,10155,'64','',1),(10276,10155,'66','',1),(10277,10155,'67','',1),(10278,10155,'173','',0),(10279,10155,'175','',1),(10280,10155,'176','',1),(10281,10155,'178','',1),(10282,10155,'179','',1),(10283,10155,'70','',1),(10284,10155,'71','',1),(10285,10155,'73','',1),(10286,10155,'77','',1),(10287,10155,'180','',1),(10288,10155,'181','',1),(10289,10155,'182','',1),(10290,10155,'183','',1),(10291,10155,'184','',1),(10292,10155,'186','',1),(10293,10155,'187','',1),(10294,10155,'100','',1),(10295,10155,'188','',1),(10296,10155,'101','',1),(10297,10155,'102','',1),(10298,10155,'107','',1),(10299,10155,'108','',1),(10300,10155,'82','',1),(10301,10155,'83','',1),(10302,10155,'84','',1),(10303,10155,'85','',1),(11241,10155,'1_WAR_opensocialportlet','',1),(11242,10155,'2_WAR_opensocialportlet','',1),(11243,10155,'3_WAR_opensocialportlet','',1),(11244,10155,'4_WAR_opensocialportlet','',1),(11255,10155,'1_WAR_calendarportlet','',1),(11274,10155,'1_WAR_webformportlet','',1),(11278,10155,'1_WAR_notificationsportlet','',1),(11976,10155,'CertificateGeneration_WAR_CertificateGenerationportlet','',1),(11977,10155,'Industry_WAR_Industryportlet','',1),(12931,10155,'BusinessType_WAR_BusinessTypeportlet','',1),(13601,10155,'Merchant_WAR_Merchantportlet','',1),(14043,10155,'ReportAmountbyDay_WAR_ReportAmountbyDayportlet','',1),(14841,10155,'ListPayment_WAR_ListPaymentportlet','',1),(14921,10155,'ReportTransactionsByDay_WAR_ReportTransactionsByDayportlet','',1),(18251,10155,'Plan_WAR_Planportlet','',1),(19211,10155,'1_WAR_samplepermissionsportlet','',1),(19501,10155,'MerchantConfiguration_WAR_MerchantConfigurationportlet','',1),(19901,10155,'BasicPayment_WAR_BasicPaymentportlet','',1),(23421,10155,'RestrictionbyCountry_WAR_RestrictionbyCountryportlet','',1),(24301,10155,'Refund_WAR_Refoundportlet','',1),(24501,10155,'RestrictionbyMerchant_WAR_RestrictionbyMerchantportlet','',1),(24621,10155,'RestrictionbyCreditCard_WAR_RestrictionbyCreditCardportlet','',1),(25001,10155,'ReportChargesbyDay_WAR_ReportChargesbyDayportlet','',1),(25421,10155,'ReportRejectedsByDay_WAR_ReportRejectedsByDayportlet','',1),(25425,10155,'Suscription_WAR_Suscriptionportlet','',1),(25601,10155,'Susbcription_WAR_Suscriptionportlet','',1),(26321,10155,'CRUD_WAR_CRUDportlet','',1),(26346,10155,'StudentLiferayMVC_WAR_StudentLiferayMVCportlet','',1),(28803,10155,'Prueba_WAR_Pruebaportlet','',1),(31501,10155,'Customer_WAR_Customerportlet','',1);
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

-- Dump completed on 2015-04-29 19:28:20
