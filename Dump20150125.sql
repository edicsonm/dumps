-- MySQL dump 10.13  Distrib 5.6.19, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Merchant
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
-- Current Database: `Merchant`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Merchant` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Merchant`;

--
-- Table structure for table `Order`
--

DROP TABLE IF EXISTS `Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order` (
  `Orde_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Auto_ID` bigint(20) unsigned DEFAULT NULL,
  `Orde_Amount` decimal(20,3) DEFAULT NULL,
  PRIMARY KEY (`Orde_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
INSERT INTO `Order` VALUES (1,1202182387,550.760),(2,NULL,550.760),(3,NULL,550.760),(4,NULL,550.760),(5,NULL,550.760),(6,NULL,550.760),(7,NULL,550.760),(8,NULL,550.760),(9,NULL,550.760),(10,NULL,550.760),(11,1202182387,550.760),(12,NULL,550.760),(13,NULL,550.760),(14,NULL,550.760),(15,NULL,550.760),(16,NULL,550.760),(17,1202182387,550.760),(18,1202182387,550.760),(19,1202182387,550.760),(20,1202182387,550.760),(21,NULL,550.760),(22,NULL,550.760),(23,NULL,550.760),(24,NULL,550.760),(25,NULL,550.760),(26,NULL,550.760),(27,NULL,550.760),(28,NULL,550.760),(29,NULL,550.760),(30,NULL,550.760),(31,NULL,550.760),(32,NULL,550.760),(33,NULL,550.760),(34,NULL,550.760),(35,NULL,550.760),(36,NULL,550.760),(37,NULL,550.760),(38,NULL,550.760),(39,NULL,550.760),(40,NULL,550.760),(41,NULL,550.760),(42,NULL,550.760),(43,NULL,550.760),(44,NULL,550.760),(45,NULL,550.760),(46,NULL,550.760),(47,NULL,550.760),(48,NULL,550.760),(49,NULL,550.760),(50,NULL,550.760),(51,NULL,550.760),(52,NULL,550.760),(53,NULL,550.760),(54,NULL,550.760),(55,NULL,550.760),(56,NULL,550.760),(57,NULL,550.760),(58,NULL,550.760),(59,NULL,550.760),(60,NULL,550.760),(61,NULL,550.760),(62,NULL,550.760),(63,NULL,550.760),(64,NULL,550.760),(65,NULL,550.760),(66,NULL,550.760),(67,1202182387,550.760),(68,1202182387,550.760),(69,NULL,550.760),(70,1202182387,550.760),(71,NULL,550.760),(72,1202182387,550.760),(73,1202182387,550.760),(74,1202182387,550.760),(75,1202182387,550.760),(76,1202182387,550.760),(77,1202182387,550.760),(78,1202182387,550.760),(79,NULL,550.760),(80,1202182387,550.760),(81,NULL,550.760),(82,NULL,550.760),(83,NULL,550.760),(84,NULL,550.760),(85,NULL,550.760),(86,NULL,550.760),(87,NULL,550.760),(88,1202182387,550.760),(89,NULL,550.760),(90,1202182387,550.760),(91,NULL,550.760),(92,NULL,550.760),(93,NULL,550.760),(94,NULL,550.760),(95,NULL,550.760),(96,NULL,550.760),(97,NULL,550.760),(98,NULL,550.760),(99,NULL,550.760),(100,NULL,550.760),(101,NULL,550.760),(102,NULL,550.760),(103,NULL,550.760),(104,NULL,550.760),(105,NULL,550.760),(106,NULL,550.760),(107,NULL,550.760),(108,1202182387,550.760),(109,1202182387,550.760),(110,1202182387,550.760),(111,NULL,550.760),(112,NULL,550.760),(113,NULL,550.760),(114,NULL,550.760),(115,NULL,550.760),(116,NULL,550.760),(117,NULL,550.760),(118,NULL,550.760),(119,NULL,550.760),(120,1202182387,550.760),(121,1202182387,550.760),(122,NULL,550.760),(123,NULL,550.760),(124,1202182387,550.760),(125,NULL,550.760),(126,NULL,550.760),(127,NULL,550.760),(128,NULL,550.760),(129,1202182387,550.760),(130,1202182387,550.760),(131,1202182387,550.760),(132,1202182387,550.760),(133,1202182387,550.760),(134,1202182387,550.760),(135,NULL,550.760),(136,1202182387,550.760),(137,1202182387,550.760),(138,1202182387,550.760),(139,1202182387,550.760),(140,NULL,550.760),(141,NULL,550.760),(142,NULL,550.760),(143,NULL,550.760),(144,NULL,550.760),(145,1202182387,550.760),(146,1202182387,550.760),(147,1202182387,550.760),(148,1202182387,550.760),(149,NULL,550.760),(150,NULL,550.760),(151,NULL,550.760),(152,NULL,550.760),(153,NULL,550.760),(154,NULL,550.760),(155,NULL,550.760),(156,NULL,550.760),(157,NULL,550.760),(158,17,550.760),(159,17,550.760),(160,17,550.760),(161,17,550.760),(162,NULL,550.760),(163,17,550.760),(164,17,550.760),(165,NULL,550.760),(166,NULL,550.760),(167,NULL,550.760),(168,18,550.760),(169,19,550.760),(170,20,550.760),(171,21,550.760),(172,22,550.760),(173,23,550.760),(174,NULL,550.760),(175,24,550.760),(176,NULL,550.760),(177,25,550.760),(178,35,550.760),(179,27,150.000),(180,NULL,550.760),(181,37,550.760),(182,33,550.760),(183,36,23.200),(184,NULL,550.760),(185,38,550.760),(186,NULL,530.960),(187,NULL,530.960),(188,41,530.960),(189,43,532.960),(190,44,550.760),(191,17,554.760),(192,17,550.760),(193,17,12.760),(194,17,1312.600),(195,17,432.660);
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Merchant'
--

--
-- Dumping routines for database 'Merchant'
--
/*!50003 DROP PROCEDURE IF EXISTS `PROC_INSERT_ORDER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`27-32-44-176.static.tpgi.com.au` PROCEDURE `PROC_INSERT_ORDER`(
`P_ORDE_AMOUNT` DECIMAL(20,3),
INOUT `P_ORDE_ID` BIGINT(20))
BEGIN
	INSERT INTO `Merchant`.`Order`
	(`Orde_Amount`)
	VALUES
	(P_ORDE_AMOUNT);
	SET P_ORDE_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_ORDER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`27-32-44-176.static.tpgi.com.au` PROCEDURE `PROC_UPDATE_ORDER`(
`P_ORDE_ID` BIGINT(20),
`P_AUTO_ID` VARCHAR(20))
BEGIN
	
	UPDATE `Merchant`.`Order`
	SET
	`Auto_ID` = P_AUTO_ID
	WHERE `Orde_ID` = P_ORDE_ID;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `IPG`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `IPG` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `IPG`;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `Addr_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Addr_Country` char(2) NOT NULL,
  `Addr_State` char(50) DEFAULT NULL,
  `Addr_City` char(50) NOT NULL,
  `Addr_PostalCode` char(20) NOT NULL,
  `Addr_Line1` char(50) NOT NULL,
  `Addr_Line2` char(50) DEFAULT NULL,
  PRIMARY KEY (`Addr_ID`),
  UNIQUE KEY `Addr_ID` (`Addr_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Card`
--

DROP TABLE IF EXISTS `Card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Card` (
  `Card_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Cust_ID` bigint(20) NOT NULL COMMENT 'Customer ID from the table Customer. Can be null is there are not used registred with this card.',
  `Card_IDStripe` char(50) NOT NULL,
  `Card_Brand` char(20) DEFAULT NULL,
  `Card_ExpMonth` int(2) NOT NULL,
  `Card_ExpYear` int(2) NOT NULL,
  `Card_FingerPrint` char(20) DEFAULT NULL COMMENT 'Stripe Field.',
  `Card_Funding` char(20) DEFAULT NULL,
  `Card_Number` varchar(50) NOT NULL,
  `Card_Last4` int(4) NOT NULL,
  `Card_AddressCity` char(50) DEFAULT NULL,
  `Card_AddressCountry` char(50) DEFAULT NULL,
  `Card_AddressState` char(50) DEFAULT NULL,
  `Card_AddressLine1` char(50) DEFAULT NULL,
  `Card_AddressLine2` char(50) DEFAULT NULL,
  `Card_AddressZip` int(10) DEFAULT NULL,
  `Card_Country` char(3) NOT NULL COMMENT 'Country name in ISO format.',
  `Card_BlackListed` enum('','Yes','No') DEFAULT NULL,
  `Card_BlackListedReason` varchar(100) DEFAULT NULL,
  `Card_BlackListedCreateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Card_ID`),
  UNIQUE KEY `Card_ID` (`Card_ID`),
  UNIQUE KEY `Card_IDStripe` (`Card_IDStripe`),
  UNIQUE KEY `Card_Number_UNIQUE` (`Card_Number`),
  KEY `IX_FK_Card_Customer` (`Cust_ID`),
  CONSTRAINT `FK_Card_Customer` FOREIGN KEY (`Cust_ID`) REFERENCES `Customer` (`Cust_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card`
--

LOCK TABLES `Card` WRITE;
/*!40000 ALTER TABLE `Card` DISABLE KEYS */;
INSERT INTO `Card` VALUES (1,1,'card_15D4Pr2eZvKYlo2CLLBvQcUB',NULL,1,2015,NULL,NULL,'4012888888881881',1881,NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(2,1,'card_15Dhss2eZvKYlo2CtHD2SycW','Visa',1,2015,NULL,'credit','4242424242424242',4242,NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Charge`
--

DROP TABLE IF EXISTS `Charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Charge` (
  `Char_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tran_ID` bigint(20) NOT NULL,
  `Card_ID` bigint(20) NOT NULL,
  `Char_IDStripe` varchar(50) NOT NULL,
  `Invo_ID` bigint(20) DEFAULT NULL,
  `Addr_ID` bigint(20) DEFAULT NULL,
  `Char_Amount` decimal(20,0) NOT NULL,
  `Char_Captured` tinyint(1) DEFAULT '0' COMMENT 'A value of zero is considered false. Non-zero values are considered true.',
  `Char_CreateTime` datetime NOT NULL,
  `Char_Currency` char(3) NOT NULL,
  `Char_Paid` tinyint(1) DEFAULT NULL COMMENT 'A value of zero is considered false. Non-zero values are considered true.',
  `Char_Refunded` tinyint(1) DEFAULT NULL COMMENT 'A value of zero is considered false. Non-zero values are considered true.',
  `Char_FailureCode` char(50) DEFAULT NULL,
  `Char_FailureMessage` char(150) DEFAULT NULL,
  `Char_ReceiptEmail` char(50) DEFAULT NULL,
  `Char_ReceiptNumber` char(50) DEFAULT NULL,
  `Char_ProcessTime` varchar(20) NOT NULL,
  PRIMARY KEY (`Char_ID`,`Tran_ID`),
  UNIQUE KEY `Char_ID` (`Char_ID`),
  UNIQUE KEY `Char_IDStripe_UNIQUE` (`Char_IDStripe`),
  KEY `IX_FK_Charges_Card` (`Card_ID`),
  KEY `IX_FK_Charges_Invoice` (`Invo_ID`),
  KEY `IX_FK_Charges_Address` (`Addr_ID`),
  KEY `FK_Charge_Transaction` (`Tran_ID`),
  CONSTRAINT `FK_Charges_Invoice` FOREIGN KEY (`Invo_ID`) REFERENCES `Invoice` (`Invo_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Charge_Address` FOREIGN KEY (`Addr_ID`) REFERENCES `Address` (`Addr_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Charge_Card` FOREIGN KEY (`Card_ID`) REFERENCES `Card` (`Card_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Charge_Transaction` FOREIGN KEY (`Tran_ID`) REFERENCES `Transaction` (`Tran_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Charge`
--

LOCK TABLES `Charge` WRITE;
/*!40000 ALTER TABLE `Charge` DISABLE KEYS */;
INSERT INTO `Charge` VALUES (25,34,2,'ch_14yFyy7eZvKYlo9CQylnRjiq',NULL,NULL,55076,0,'2014-12-25 15:11:25','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(26,35,2,'ch_14yFyy7eZvKYlo9CQylnRjic',NULL,NULL,55076,0,'2014-12-25 15:11:30','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(27,36,1,'ch_14yFyy2eZvKYlo2CQylnRjiq',NULL,NULL,2320,0,'2014-12-25 15:17:56','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(28,37,1,'ch_14yFyy2eZvKYlo2CQylnRjiw',NULL,NULL,55076,0,'2014-12-25 15:20:14','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(29,38,1,'ch_14yFyy2eZvKYlo2CQylnRjiy',NULL,NULL,55076,0,'2014-12-25 15:44:51','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(30,41,1,'ch_15GLvj2eZvKYlo2CRwWqFIAs',NULL,NULL,53096,0,'2015-01-01 22:17:02','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(31,42,1,'ch_15GMF82eZvKYlo2CHT5NlTYm',NULL,NULL,53296,0,'2015-01-01 22:37:04','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(32,43,1,'ch_15GOhj2eZvKYlo2Chz5zrGfs',NULL,NULL,53296,0,'2015-01-02 01:14:45','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(33,44,1,'ch_15GP5Q2eZvKYlo2C6GYDDBFN',NULL,NULL,55076,0,'2015-01-02 01:39:14','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(34,17,1,'ch_15GPc62eZvKYlo2CVorIWf8M',NULL,NULL,55476,0,'2015-01-02 02:13:00','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(35,17,1,'ch_15GPfu2eZvKYlo2C1FgkRWob',NULL,NULL,55476,0,'2015-01-02 02:17:00','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(36,17,1,'ch_15GPlz2eZvKYlo2CMsT6iCkf',NULL,NULL,55476,0,'2015-01-02 02:23:13','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(37,17,1,'ch_15Gjjs2eZvKYlo2CsbbXHuE9',NULL,NULL,55076,0,'2015-01-02 23:42:26','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(38,17,1,'ch_15Gjon2eZvKYlo2CNnRXjWt1',NULL,NULL,1276,0,'2015-01-02 23:47:30','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(39,17,1,'ch_15Gjru2eZvKYlo2CwkbnrI2o',NULL,NULL,131260,0,'2015-01-02 23:50:40','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(40,17,1,'ch_15Gk3W2eZvKYlo2CFKXqcVGV',NULL,NULL,43266,0,'2015-01-03 00:02:40','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(41,17,1,'ch_15MD0P2eZvKYlo2CLQkeHMYx',NULL,NULL,55076,0,'2015-01-18 17:57:54','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(42,17,1,'ch_15MD3S2eZvKYlo2CSdXaCDr6',NULL,NULL,55076,0,'2015-01-18 18:01:03','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(43,17,1,'ch_15MD4p2eZvKYlo2CHYURXmQB',NULL,NULL,55076,0,'2015-01-18 18:02:27','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(44,17,1,'ch_15MD7X2eZvKYlo2ClPjBlTnX',NULL,NULL,55076,0,'2015-01-18 18:05:15','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(45,17,1,'ch_15MDCp2eZvKYlo2CsvQa3h7G',NULL,NULL,55076,0,'2015-01-18 18:10:43','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(46,17,1,'ch_15MDEL2eZvKYlo2CJa4bqOls',NULL,NULL,55076,0,'2015-01-18 18:12:17','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(47,17,1,'ch_15MDFU2eZvKYlo2CezneL8Pf',NULL,NULL,55076,0,'2015-01-18 18:13:28','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(48,17,1,'ch_15MDGB2eZvKYlo2CNFteONkL',NULL,NULL,55076,0,'2015-01-18 18:14:11','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(49,17,1,'ch_15NXGB2eZvKYlo2COJeIz2CZ',NULL,NULL,55076,0,'2015-01-22 09:47:39','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(50,17,1,'ch_15NXI52eZvKYlo2CYRtY2EcK',NULL,NULL,55076,0,'2015-01-22 09:49:37','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(51,17,1,'ch_15NXLp2eZvKYlo2Chg4w2YAY',NULL,NULL,55076,0,'2015-01-22 09:53:30','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(52,17,1,'ch_15NYs32eZvKYlo2C4h3C2b9G',NULL,NULL,55076,0,'2015-01-22 11:30:52','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(53,17,1,'ch_15NYyS2eZvKYlo2COcaFE3yz',NULL,NULL,55076,0,'2015-01-22 11:37:29','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(54,17,1,'ch_15Naqe2eZvKYlo2CS0qLlnZ0',NULL,NULL,55076,0,'2015-01-22 13:37:32','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(55,17,1,'ch_15NbB62eZvKYlo2CTwPN125v',NULL,NULL,55076,0,'2015-01-22 13:58:40','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(56,17,1,'ch_15O00C2eZvKYlo2CtYqzGGKj',NULL,NULL,55076,0,'2015-01-23 16:29:06','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(57,17,1,'ch_15O0EE2eZvKYlo2CCl5gehiR',NULL,NULL,55076,0,'2015-01-23 16:43:35','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(58,17,1,'ch_15O0Fg2eZvKYlo2CU88T6oNH',NULL,NULL,55076,0,'2015-01-23 16:45:04','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(59,17,1,'ch_15O0Ho2eZvKYlo2CJW8ltr1y',NULL,NULL,55076,0,'2015-01-23 16:47:25','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(60,17,1,'ch_15O0Xm2eZvKYlo2CgN0KArMA',NULL,NULL,55076,0,'2015-01-23 17:03:47','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(61,45,1,'ch_15O0qN2eZvKYlo2CZWgXpTVp',NULL,NULL,55076,0,'2015-01-23 17:23:00','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(62,46,1,'ch_15O1bp2eZvKYlo2CYBA8zkqq',NULL,NULL,55076,0,'2015-01-23 18:12:01','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.');
/*!40000 ALTER TABLE `Charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Country` (
  `Coun_Numeric` int(5) NOT NULL,
  `Coun_Alpha_2` varchar(2) NOT NULL,
  `Coun_Alpha_3` varchar(3) NOT NULL,
  `Coun_Name` varchar(100) NOT NULL,
  `Count_ISO_3166-2` varchar(50) NOT NULL,
  UNIQUE KEY `Coun_Alpha_2_UNIQUE` (`Coun_Alpha_2`),
  UNIQUE KEY `Coun_Alpha_3_UNIQUE` (`Coun_Alpha_3`),
  UNIQUE KEY `Coun_Name_UNIQUE` (`Coun_Name`),
  UNIQUE KEY `Count_ISO_3166-2_UNIQUE` (`Count_ISO_3166-2`),
  UNIQUE KEY `Coun_Numeric_UNIQUE` (`Coun_Numeric`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` VALUES (20,'AD','AND','Andorra','ISO 3166-2:AD'),(784,'AE','ARE','United Arab Emirates','ISO 3166-2:AE'),(4,'AF','AFG','Afghanistan','ISO 3166-2:AF'),(28,'AG','ATG','Antigua and Barbuda','ISO 3166-2:AG'),(660,'AI','AIA','Anguilla','ISO 3166-2:AI'),(8,'AL','ALB','Albania','ISO 3166-2:AL'),(51,'AM','ARM','Armenia','ISO 3166-2:AM'),(24,'AO','AGO','Angola','ISO 3166-2:AO'),(10,'AQ','ATA','Antarctica','ISO 3166-2:AQ'),(32,'AR','ARG','Argentina','ISO 3166-2:AR'),(16,'AS','ASM','American Samoa','ISO 3166-2:AS'),(40,'AT','AUT','Austria','ISO 3166-2:AT'),(36,'AU','AUS','Australia','ISO 3166-2:AU'),(533,'AW','ABW','Aruba','ISO 3166-2:AW'),(248,'AX','ALA','Åland Islands','ISO 3166-2:AX'),(31,'AZ','AZE','Azerbaijan','ISO 3166-2:AZ'),(70,'BA','BIH','Bosnia and Herzegovina','ISO 3166-2:BA'),(52,'BB','BRB','Barbados','ISO 3166-2:BB'),(50,'BD','BGD','Bangladesh','ISO 3166-2:BD'),(56,'BE','BEL','Belgium','ISO 3166-2:BE'),(854,'BF','BFA','Burkina Faso','ISO 3166-2:BF'),(100,'BG','BGR','Bulgaria','ISO 3166-2:BG'),(48,'BH','BHR','Bahrain','ISO 3166-2:BH'),(108,'BI','BDI','Burundi','ISO 3166-2:BI'),(204,'BJ','BEN','Benin','ISO 3166-2:BJ'),(652,'BL','BLM','Saint Barthélemy','ISO 3166-2:BL'),(60,'BM','BMU','Bermuda','ISO 3166-2:BM'),(96,'BN','BRN','Brunei Darussalam','ISO 3166-2:BN'),(68,'BO','BOL','Bolivia (Plurinational State of)','ISO 3166-2:BO'),(535,'BQ','BES','Bonaire, Sint Eustatius and Saba','ISO 3166-2:BQ'),(76,'BR','BRA','Brazil','ISO 3166-2:BR'),(44,'BS','BHS','Bahamas','ISO 3166-2:BS'),(64,'BT','BTN','Bhutan','ISO 3166-2:BT'),(74,'BV','BVT','Bouvet Island','ISO 3166-2:BV'),(72,'BW','BWA','Botswana','ISO 3166-2:BW'),(112,'BY','BLR','Belarus','ISO 3166-2:BY'),(84,'BZ','BLZ','Belize','ISO 3166-2:BZ'),(124,'CA','CAN','Canada','ISO 3166-2:CA'),(166,'CC','CCK','Cocos (Keeling) Islands','ISO 3166-2:CC'),(180,'CD','COD','Congo (Democratic Republic of the)','ISO 3166-2:CD'),(140,'CF','CAF','Central African Republic','ISO 3166-2:CF'),(178,'CG','COG','Congo','ISO 3166-2:CG'),(756,'CH','CHE','Switzerland','ISO 3166-2:CH'),(384,'CI','CIV','Côte d\'Ivoire','ISO 3166-2:CI'),(184,'CK','COK','Cook Islands','ISO 3166-2:CK'),(152,'CL','CHL','Chile','ISO 3166-2:CL'),(120,'CM','CMR','Cameroon','ISO 3166-2:CM'),(156,'CN','CHN','China','ISO 3166-2:CN'),(170,'CO','COL','Colombia','ISO 3166-2:CO'),(188,'CR','CRI','Costa Rica','ISO 3166-2:CR'),(192,'CU','CUB','Cuba','ISO 3166-2:CU'),(132,'CV','CPV','Cabo Verde','ISO 3166-2:CV'),(531,'CW','CUW','Curaçao','ISO 3166-2:CW'),(162,'CX','CXR','Christmas Island','ISO 3166-2:CX'),(196,'CY','CYP','Cyprus','ISO 3166-2:CY'),(203,'CZ','CZE','Czech Republic','ISO 3166-2:CZ'),(276,'DE','DEU','Germany','ISO 3166-2:DE'),(262,'DJ','DJI','Djibouti','ISO 3166-2:DJ'),(208,'DK','DNK','Denmark','ISO 3166-2:DK'),(212,'DM','DMA','Dominica','ISO 3166-2:DM'),(214,'DO','DOM','Dominican Republic','ISO 3166-2:DO'),(12,'DZ','DZA','Algeria','ISO 3166-2:DZ'),(218,'EC','ECU','Ecuador','ISO 3166-2:EC'),(233,'EE','EST','Estonia','ISO 3166-2:EE'),(818,'EG','EGY','Egypt','ISO 3166-2:EG'),(732,'EH','ESH','Western Sahara','ISO 3166-2:EH'),(232,'ER','ERI','Eritrea','ISO 3166-2:ER'),(724,'ES','ESP','Spain','ISO 3166-2:ES'),(231,'ET','ETH','Ethiopia','ISO 3166-2:ET'),(246,'FI','FIN','Finland','ISO 3166-2:FI'),(242,'FJ','FJI','Fiji','ISO 3166-2:FJ'),(238,'FK','FLK','Falkland Islands (Malvinas)','ISO 3166-2:FK'),(583,'FM','FSM','Micronesia (Federated States of)','ISO 3166-2:FM'),(234,'FO','FRO','Faroe Islands','ISO 3166-2:FO'),(250,'FR','FRA','France','ISO 3166-2:FR'),(266,'GA','GAB','Gabon','ISO 3166-2:GA'),(826,'GB','GBR','United Kingdom of Great Britain and Northern Ireland','ISO 3166-2:GB'),(308,'GD','GRD','Grenada','ISO 3166-2:GD'),(268,'GE','GEO','Georgia','ISO 3166-2:GE'),(254,'GF','GUF','French Guiana','ISO 3166-2:GF'),(831,'GG','GGY','Guernsey','ISO 3166-2:GG'),(288,'GH','GHA','Ghana','ISO 3166-2:GH'),(292,'GI','GIB','Gibraltar','ISO 3166-2:GI'),(304,'GL','GRL','Greenland','ISO 3166-2:GL'),(270,'GM','GMB','Gambia','ISO 3166-2:GM'),(324,'GN','GIN','Guinea','ISO 3166-2:GN'),(312,'GP','GLP','Guadeloupe','ISO 3166-2:GP'),(226,'GQ','GNQ','Equatorial Guinea','ISO 3166-2:GQ'),(300,'GR','GRC','Greece','ISO 3166-2:GR'),(239,'GS','SGS','South Georgia and the South Sandwich Islands','ISO 3166-2:GS'),(320,'GT','GTM','Guatemala','ISO 3166-2:GT'),(316,'GU','GUM','Guam','ISO 3166-2:GU'),(624,'GW','GNB','Guinea-Bissau','ISO 3166-2:GW'),(328,'GY','GUY','Guyana','ISO 3166-2:GY'),(344,'HK','HKG','Hong Kong','ISO 3166-2:HK'),(334,'HM','HMD','Heard Island and McDonald Islands','ISO 3166-2:HM'),(340,'HN','HND','Honduras','ISO 3166-2:HN'),(191,'HR','HRV','Croatia','ISO 3166-2:HR'),(332,'HT','HTI','Haiti','ISO 3166-2:HT'),(348,'HU','HUN','Hungary','ISO 3166-2:HU'),(360,'ID','IDN','Indonesia','ISO 3166-2:ID'),(372,'IE','IRL','Ireland','ISO 3166-2:IE'),(376,'IL','ISR','Israel','ISO 3166-2:IL'),(833,'IM','IMN','Isle of Man','ISO 3166-2:IM'),(356,'IN','IND','India','ISO 3166-2:IN'),(86,'IO','IOT','British Indian Ocean Territory','ISO 3166-2:IO'),(368,'IQ','IRQ','Iraq','ISO 3166-2:IQ'),(364,'IR','IRN','Iran (Islamic Republic of)','ISO 3166-2:IR'),(352,'IS','ISL','Iceland','ISO 3166-2:IS'),(380,'IT','ITA','Italy','ISO 3166-2:IT'),(832,'JE','JEY','Jersey','ISO 3166-2:JE'),(388,'JM','JAM','Jamaica','ISO 3166-2:JM'),(400,'JO','JOR','Jordan','ISO 3166-2:JO'),(392,'JP','JPN','Japan','ISO 3166-2:JP'),(404,'KE','KEN','Kenya','ISO 3166-2:KE'),(417,'KG','KGZ','Kyrgyzstan','ISO 3166-2:KG'),(116,'KH','KHM','Cambodia','ISO 3166-2:KH'),(296,'KI','KIR','Kiribati','ISO 3166-2:KI'),(174,'KM','COM','Comoros','ISO 3166-2:KM'),(659,'KN','KNA','Saint Kitts and Nevis','ISO 3166-2:KN'),(408,'KP','PRK','Korea (Democratic People\'s Republic of)','ISO 3166-2:KP'),(410,'KR','KOR','Korea (Republic of)','ISO 3166-2:KR'),(414,'KW','KWT','Kuwait','ISO 3166-2:KW'),(136,'KY','CYM','Cayman Islands','ISO 3166-2:KY'),(398,'KZ','KAZ','Kazakhstan','ISO 3166-2:KZ'),(418,'LA','LAO','Lao People\'s Democratic Republic','ISO 3166-2:LA'),(422,'LB','LBN','Lebanon','ISO 3166-2:LB'),(662,'LC','LCA','Saint Lucia','ISO 3166-2:LC'),(438,'LI','LIE','Liechtenstein','ISO 3166-2:LI'),(144,'LK','LKA','Sri Lanka','ISO 3166-2:LK'),(430,'LR','LBR','Liberia','ISO 3166-2:LR'),(426,'LS','LSO','Lesotho','ISO 3166-2:LS'),(440,'LT','LTU','Lithuania','ISO 3166-2:LT'),(442,'LU','LUX','Luxembourg','ISO 3166-2:LU'),(428,'LV','LVA','Latvia','ISO 3166-2:LV'),(434,'LY','LBY','Libya','ISO 3166-2:LY'),(504,'MA','MAR','Morocco','ISO 3166-2:MA'),(492,'MC','MCO','Monaco','ISO 3166-2:MC'),(498,'MD','MDA','Moldova (Republic of)','ISO 3166-2:MD'),(499,'ME','MNE','Montenegro','ISO 3166-2:ME'),(663,'MF','MAF','Saint Martin (French part)','ISO 3166-2:MF'),(450,'MG','MDG','Madagascar','ISO 3166-2:MG'),(584,'MH','MHL','Marshall Islands','ISO 3166-2:MH'),(807,'MK','MKD','Macedonia (the former Yugoslav Republic of)','ISO 3166-2:MK'),(466,'ML','MLI','Mali','ISO 3166-2:ML'),(104,'MM','MMR','Myanmar','ISO 3166-2:MM'),(496,'MN','MNG','Mongolia','ISO 3166-2:MN'),(446,'MO','MAC','Macao','ISO 3166-2:MO'),(580,'MP','MNP','Northern Mariana Islands','ISO 3166-2:MP'),(474,'MQ','MTQ','Martinique','ISO 3166-2:MQ'),(478,'MR','MRT','Mauritania','ISO 3166-2:MR'),(500,'MS','MSR','Montserrat','ISO 3166-2:MS'),(470,'MT','MLT','Malta','ISO 3166-2:MT'),(480,'MU','MUS','Mauritius','ISO 3166-2:MU'),(462,'MV','MDV','Maldives','ISO 3166-2:MV'),(454,'MW','MWI','Malawi','ISO 3166-2:MW'),(484,'MX','MEX','Mexico','ISO 3166-2:MX'),(458,'MY','MYS','Malaysia','ISO 3166-2:MY'),(508,'MZ','MOZ','Mozambique','ISO 3166-2:MZ'),(516,'NA','NAM','Namibia','ISO 3166-2:NA'),(540,'NC','NCL','New Caledonia','ISO 3166-2:NC'),(562,'NE','NER','Niger','ISO 3166-2:NE'),(574,'NF','NFK','Norfolk Island','ISO 3166-2:NF'),(566,'NG','NGA','Nigeria','ISO 3166-2:NG'),(558,'NI','NIC','Nicaragua','ISO 3166-2:NI'),(528,'NL','NLD','Netherlands','ISO 3166-2:NL'),(578,'NO','NOR','Norway','ISO 3166-2:NO'),(524,'NP','NPL','Nepal','ISO 3166-2:NP'),(520,'NR','NRU','Nauru','ISO 3166-2:NR'),(570,'NU','NIU','Niue','ISO 3166-2:NU'),(554,'NZ','NZL','New Zealand','ISO 3166-2:NZ'),(512,'OM','OMN','Oman','ISO 3166-2:OM'),(591,'PA','PAN','Panama','ISO 3166-2:PA'),(604,'PE','PER','Peru','ISO 3166-2:PE'),(258,'PF','PYF','French Polynesia','ISO 3166-2:PF'),(598,'PG','PNG','Papua New Guinea','ISO 3166-2:PG'),(608,'PH','PHL','Philippines','ISO 3166-2:PH'),(586,'PK','PAK','Pakistan','ISO 3166-2:PK'),(616,'PL','POL','Poland','ISO 3166-2:PL'),(666,'PM','SPM','Saint Pierre and Miquelon','ISO 3166-2:PM'),(612,'PN','PCN','Pitcairn','ISO 3166-2:PN'),(630,'PR','PRI','Puerto Rico','ISO 3166-2:PR'),(275,'PS','PSE','Palestine, State of','ISO 3166-2:PS'),(620,'PT','PRT','Portugal','ISO 3166-2:PT'),(585,'PW','PLW','Palau','ISO 3166-2:PW'),(600,'PY','PRY','Paraguay','ISO 3166-2:PY'),(634,'QA','QAT','Qatar','ISO 3166-2:QA'),(638,'RE','REU','Réunion','ISO 3166-2:RE'),(642,'RO','ROU','Romania','ISO 3166-2:RO'),(688,'RS','SRB','Serbia','ISO 3166-2:RS'),(643,'RU','RUS','Russian Federation','ISO 3166-2:RU'),(646,'RW','RWA','Rwanda','ISO 3166-2:RW'),(682,'SA','SAU','Saudi Arabia','ISO 3166-2:SA'),(90,'SB','SLB','Solomon Islands','ISO 3166-2:SB'),(690,'SC','SYC','Seychelles','ISO 3166-2:SC'),(729,'SD','SDN','Sudan','ISO 3166-2:SD'),(752,'SE','SWE','Sweden','ISO 3166-2:SE'),(702,'SG','SGP','Singapore','ISO 3166-2:SG'),(654,'SH','SHN','Saint Helena, Ascension and Tristan da Cunha','ISO 3166-2:SH'),(705,'SI','SVN','Slovenia','ISO 3166-2:SI'),(744,'SJ','SJM','Svalbard and Jan Mayen','ISO 3166-2:SJ'),(703,'SK','SVK','Slovakia','ISO 3166-2:SK'),(694,'SL','SLE','Sierra Leone','ISO 3166-2:SL'),(674,'SM','SMR','San Marino','ISO 3166-2:SM'),(686,'SN','SEN','Senegal','ISO 3166-2:SN'),(706,'SO','SOM','Somalia','ISO 3166-2:SO'),(740,'SR','SUR','Suriname','ISO 3166-2:SR'),(728,'SS','SSD','South Sudan','ISO 3166-2:SS'),(678,'ST','STP','Sao Tome and Principe','ISO 3166-2:ST'),(222,'SV','SLV','El Salvador','ISO 3166-2:SV'),(534,'SX','SXM','Sint Maarten (Dutch part)','ISO 3166-2:SX'),(760,'SY','SYR','Syrian Arab Republic','ISO 3166-2:SY'),(748,'SZ','SWZ','Swaziland','ISO 3166-2:SZ'),(796,'TC','TCA','Turks and Caicos Islands','ISO 3166-2:TC'),(148,'TD','TCD','Chad','ISO 3166-2:TD'),(260,'TF','ATF','French Southern Territories','ISO 3166-2:TF'),(768,'TG','TGO','Togo','ISO 3166-2:TG'),(764,'TH','THA','Thailand','ISO 3166-2:TH'),(762,'TJ','TJK','Tajikistan','ISO 3166-2:TJ'),(772,'TK','TKL','Tokelau','ISO 3166-2:TK'),(626,'TL','TLS','Timor-Leste','ISO 3166-2:TL'),(795,'TM','TKM','Turkmenistan','ISO 3166-2:TM'),(788,'TN','TUN','Tunisia','ISO 3166-2:TN'),(776,'TO','TON','Tonga','ISO 3166-2:TO'),(792,'TR','TUR','Turkey','ISO 3166-2:TR'),(780,'TT','TTO','Trinidad and Tobago','ISO 3166-2:TT'),(798,'TV','TUV','Tuvalu','ISO 3166-2:TV'),(158,'TW','TWN','Taiwan, Province of China','ISO 3166-2:TW'),(834,'TZ','TZA','Tanzania, United Republic of','ISO 3166-2:TZ'),(804,'UA','UKR','Ukraine','ISO 3166-2:UA'),(800,'UG','UGA','Uganda','ISO 3166-2:UG'),(581,'UM','UMI','United States Minor Outlying Islands','ISO 3166-2:UM'),(840,'US','USA','United States of America','ISO 3166-2:US'),(858,'UY','URY','Uruguay','ISO 3166-2:UY'),(860,'UZ','UZB','Uzbekistan','ISO 3166-2:UZ'),(336,'VA','VAT','Holy See','ISO 3166-2:VA'),(670,'VC','VCT','Saint Vincent and the Grenadines','ISO 3166-2:VC'),(862,'VE','VEN','Venezuela (Bolivarian Republic of)','ISO 3166-2:VE'),(92,'VG','VGB','Virgin Islands (British)','ISO 3166-2:VG'),(850,'VI','VIR','Virgin Islands (U.S.)','ISO 3166-2:VI'),(704,'VN','VNM','Viet Nam','ISO 3166-2:VN'),(548,'VU','VUT','Vanuatu','ISO 3166-2:VU'),(876,'WF','WLF','Wallis and Futuna','ISO 3166-2:WF'),(882,'WS','WSM','Samoa','ISO 3166-2:WS'),(887,'YE','YEM','Yemen','ISO 3166-2:YE'),(175,'YT','MYT','Mayotte','ISO 3166-2:YT'),(710,'ZA','ZAF','South Africa','ISO 3166-2:ZA'),(894,'ZM','ZMB','Zambia','ISO 3166-2:ZM'),(716,'ZW','ZWE','Zimbabwe','ISO 3166-2:ZW');
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CountryRestriction`
--

DROP TABLE IF EXISTS `CountryRestriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CountryRestriction` (
  `Core_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Coun_Numeric` int(5) NOT NULL,
  `Core_Value` int(5) NOT NULL DEFAULT '0',
  `Core_Concept` varchar(50) NOT NULL,
  `Core_TimeUnit` varchar(50) NOT NULL,
  `Core_Status` enum('0','1') NOT NULL DEFAULT '0',
  `Core_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Core_ID`),
  KEY `FK_CountryRestrictionCountry_idx` (`Coun_Numeric`),
  CONSTRAINT `FK_CountryRestrictionCountry` FOREIGN KEY (`Coun_Numeric`) REFERENCES `Country` (`Coun_Numeric`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CountryRestriction`
--

LOCK TABLES `CountryRestriction` WRITE;
/*!40000 ALTER TABLE `CountryRestriction` DISABLE KEYS */;
INSERT INTO `CountryRestriction` VALUES (2,24,1300,'Transactions','1440','0','2015-01-15 18:37:19'),(3,24,300,'Amount','1440','0','2015-01-15 17:45:57');
/*!40000 ALTER TABLE `CountryRestriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Currency`
--

DROP TABLE IF EXISTS `Currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Currency` (
  `Curr_NumericCode` int(3) NOT NULL DEFAULT '0',
  `Coun_Numeric` int(5) DEFAULT NULL,
  `Coun_Name` varchar(100) NOT NULL DEFAULT 'NA',
  `Curr_Name` varchar(50) NOT NULL DEFAULT 'NA',
  `Curr_AlphabeticCode` varchar(3) NOT NULL DEFAULT 'NA',
  `Curr_MinorUnit` int(3) NOT NULL DEFAULT '0',
  KEY `FK_Currency_Currency_idx` (`Coun_Name`,`Coun_Numeric`),
  KEY `FK_Currency_Country_Numeric_idx` (`Coun_Numeric`),
  CONSTRAINT `FK_Currency_Country_Numeric` FOREIGN KEY (`Coun_Numeric`) REFERENCES `Country` (`Coun_Numeric`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Currency`
--

LOCK TABLES `Currency` WRITE;
/*!40000 ALTER TABLE `Currency` DISABLE KEYS */;
INSERT INTO `Currency` VALUES (971,4,'Afghanistan','Afghani','AFN',2),(978,248,'Åland Islands','Euro','EUR',2),(8,8,'Albania','Lek','ALL',2),(12,12,'Algeria','Algerian Dinar','DZD',2),(840,16,'American Samoa','US Dollar','USD',2),(978,20,'Andorra','Euro','EUR',2),(973,24,'Angola','Kwanza','AOA',2),(951,660,'Anguilla','East Caribbean Dollar','XCD',2),(951,28,'Antigua and Barbuda','East Caribbean Dollar','XCD',2),(32,32,'Argentina','Argentine Peso','ARS',2),(51,51,'Armenia','Armenian Dram','AMD',2),(533,533,'Aruba','Aruban Florin','AWG',2),(36,36,'Australia','Australian Dollar','AUD',2),(978,40,'Austria','Euro','EUR',2),(944,31,'Azerbaijan','Azerbaijanian Manat','AZN',2),(44,44,'Bahamas','Bahamian Dollar','BSD',2),(48,48,'Bahrain','Bahraini Dinar','BHD',3),(50,50,'Bangladesh','Taka','BDT',2),(52,52,'Barbados','Barbados Dollar','BBD',2),(974,112,'Belarus','Belarussian Ruble','BYR',0),(978,56,'Belgium','Euro','EUR',2),(84,84,'Belize','Belize Dollar','BZD',2),(952,204,'Benin','CFA Franc BCEAO','XOF',0),(60,60,'Bermuda','Bermudian Dollar','BMD',2),(64,64,'Bhutan','Ngultrum','BTN',2),(356,64,'Bhutan','Indian Rupee','INR',2),(840,535,'Bonaire, Sint Eustatius and Saba','US Dollar','USD',2),(977,70,'Bosnia and Herzegovina','Convertible Mark','BAM',2),(72,72,'Botswana','Pula','BWP',2),(578,74,'Bouvet Island','Norwegian Krone','NOK',2),(986,76,'Brazil','Brazilian Real','BRL',2),(840,86,'British Indian Ocean Territory','US Dollar','USD',2),(96,96,'Brunei Darussalam','Brunei Dollar','BND',2),(975,100,'Bulgaria','Bulgarian Lev','BGN',2),(952,854,'Burkina Faso','CFA Franc BCEAO','XOF',0),(108,108,'Burundi','Burundi Franc','BIF',0),(116,116,'Cambodia','Riel','KHR',2),(950,120,'Cameroon','CFA Franc BEAC','XAF',0),(124,124,'Canada','Canadian Dollar','CAD',2),(132,132,'Cabo Verde','Cabo Verde Escudo','CVE',2),(136,136,'Cayman Islands','Cayman Islands Dollar','KYD',2),(950,140,'Central African Republic','CFA Franc BEAC','XAF',0),(950,148,'Chad','CFA Franc BEAC','XAF',0),(990,152,'Chile','Unidad de Fomento','CLF',4),(152,152,'Chile','Chilean Peso','CLP',0),(156,156,'China','Yuan Renminbi','CNY',2),(36,162,'Christmas Island','Australian Dollar','AUD',2),(36,166,'Cocos (Keeling) Islands','Australian Dollar','AUD',2),(170,170,'Colombia','Colombian Peso','COP',2),(970,170,'Colombia','Unidad de Valor Real','COU',2),(174,174,'Comoros','Comoro Franc','KMF',0),(950,178,'Congo','CFA Franc BEAC','XAF',0),(554,184,'Cook Islands','New Zealand Dollar','NZD',2),(188,188,'Costa Rica','Costa Rican Colon','CRC',2),(952,384,'Côte d\'Ivoire','CFA Franc BCEAO','XOF',0),(191,191,'Croatia','Croatian Kuna','HRK',2),(931,192,'Cuba','Peso Convertible','CUC',2),(192,192,'Cuba','Cuban Peso','CUP',2),(532,531,'Curaçao','Netherlands Antillean Guilder','ANG',2),(978,196,'Cyprus','Euro','EUR',2),(203,203,'Czech Republic','Czech Koruna','CZK',2),(208,208,'Denmark','Danish Krone','DKK',2),(262,262,'Djibouti','Djibouti Franc','DJF',0),(951,212,'Dominica','East Caribbean Dollar','XCD',2),(214,214,'Dominican Republic','Dominican Peso','DOP',2),(840,218,'Ecuador','US Dollar','USD',2),(818,818,'Egypt','Egyptian Pound','EGP',2),(222,222,'El Salvador','El Salvador Colon','SVC',2),(840,222,'El Salvador','US Dollar','USD',2),(950,226,'Equatorial Guinea','CFA Franc BEAC','XAF',0),(232,232,'Eritrea','Nakfa','ERN',2),(978,233,'Estonia','Euro','EUR',2),(230,231,'Ethiopia','Ethiopian Birr','ETB',2),(238,238,'Falkland Islands (Malvinas)','Falkland Islands Pound','FKP',2),(208,234,'Faroe Islands','Danish Krone','DKK',2),(242,242,'Fiji','Fiji Dollar','FJD',2),(978,246,'Finland','Euro','EUR',2),(978,250,'France','Euro','EUR',2),(978,254,'French Guiana','Euro','EUR',2),(953,258,'French Polynesia','CFP Franc','XPF',0),(978,260,'French Southern Territories','Euro','EUR',2),(950,266,'Gabon','CFA Franc BEAC','XAF',0),(270,270,'Gambia','Dalasi','GMD',2),(981,268,'Georgia','Lari','GEL',2),(978,276,'Germany','Euro','EUR',2),(936,288,'Ghana','Ghana Cedi','GHS',2),(292,292,'Gibraltar','Gibraltar Pound','GIP',2),(978,300,'Greece','Euro','EUR',2),(208,304,'Greenland','Danish Krone','DKK',2),(951,308,'Grenada','East Caribbean Dollar','XCD',2),(978,312,'Guadeloupe','Euro','EUR',2),(840,316,'Guam','US Dollar','USD',2),(320,320,'Guatemala','Quetzal','GTQ',2),(826,831,'Guernsey','Pound Sterling','GBP',2),(324,324,'Guinea','Guinea Franc','GNF',0),(952,624,'Guinea-Bissau','CFA Franc BCEAO','XOF',0),(328,328,'Guyana','Guyana Dollar','GYD',2),(332,332,'Haiti','Gourde','HTG',2),(840,332,'Haiti','US Dollar','USD',2),(36,334,'Heard Island and McDonald Islands','Australian Dollar','AUD',2),(340,340,'Honduras','Lempira','HNL',2),(344,344,'Hong Kong','Hong Kong Dollar','HKD',2),(348,348,'Hungary','Forint','HUF',2),(352,352,'Iceland','Iceland Krona','ISK',0),(356,356,'India','Indian Rupee','INR',2),(360,360,'Indonesia','Rupiah','IDR',2),(368,368,'Iraq','Iraqi Dinar','IQD',3),(978,372,'Ireland','Euro','EUR',2),(826,833,'Isle of Man','Pound Sterling','GBP',2),(376,376,'Israel','New Israeli Sheqel','ILS',2),(978,380,'Italy','Euro','EUR',2),(388,388,'Jamaica','Jamaican Dollar','JMD',2),(392,392,'Japan','Yen','JPY',0),(826,832,'Jersey','Pound Sterling','GBP',2),(400,400,'Jordan','Jordanian Dinar','JOD',3),(398,398,'Kazakhstan','Tenge','KZT',2),(404,404,'Kenya','Kenyan Shilling','KES',2),(36,296,'Kiribati','Australian Dollar','AUD',2),(414,414,'Kuwait','Kuwaiti Dinar','KWD',3),(417,417,'Kyrgyzstan','Som','KGS',2),(978,428,'Latvia','Euro','EUR',2),(422,422,'Lebanon','Lebanese Pound','LBP',2),(426,426,'Lesotho','Loti','LSL',2),(710,426,'Lesotho','Rand','ZAR',2),(430,430,'Liberia','Liberian Dollar','LRD',2),(434,434,'Libya','Libyan Dinar','LYD',3),(756,438,'Liechtenstein','Swiss Franc','CHF',2),(978,440,'Lithuania','Euro','EUR',2),(978,442,'Luxembourg','Euro','EUR',2),(446,446,'Macao','Pataca','MOP',2),(969,450,'Madagascar','Malagasy Ariary','MGA',2),(454,454,'Malawi','Kwacha','MWK',2),(458,458,'Malaysia','Malaysian Ringgit','MYR',2),(462,462,'Maldives','Rufiyaa','MVR',2),(952,466,'Mali','CFA Franc BCEAO','XOF',0),(978,470,'Malta','Euro','EUR',2),(840,584,'Marshall Islands','US Dollar','USD',2),(978,474,'Martinique','Euro','EUR',2),(478,478,'Mauritania','Ouguiya','MRO',2),(480,480,'Mauritius','Mauritius Rupee','MUR',2),(978,175,'Mayotte','Euro','EUR',2),(484,484,'Mexico','Mexican Peso','MXN',2),(979,484,'Mexico','Mexican Unidad de Inversion (UDI)','MXV',2),(978,492,'Monaco','Euro','EUR',2),(496,496,'Mongolia','Tugrik','MNT',2),(978,499,'Montenegro','Euro','EUR',2),(951,500,'Montserrat','East Caribbean Dollar','XCD',2),(504,504,'Morocco','Moroccan Dirham','MAD',2),(943,508,'Mozambique','Mozambique Metical','MZN',2),(104,104,'Myanmar','Kyat','MMK',2),(516,516,'Namibia','Namibia Dollar','NAD',2),(710,516,'Namibia','Rand','ZAR',2),(36,520,'Nauru','Australian Dollar','AUD',2),(524,524,'Nepal','Nepalese Rupee','NPR',2),(978,528,'Netherlands','Euro','EUR',2),(953,540,'New Caledonia','CFP Franc','XPF',0),(554,554,'New Zealand','New Zealand Dollar','NZD',2),(558,558,'Nicaragua','Cordoba Oro','NIO',2),(952,562,'Niger','CFA Franc BCEAO','XOF',0),(566,566,'Nigeria','Naira','NGN',2),(554,570,'Niue','New Zealand Dollar','NZD',2),(36,574,'Norfolk Island','Australian Dollar','AUD',2),(840,580,'Northern Mariana Islands','US Dollar','USD',2),(578,578,'Norway','Norwegian Krone','NOK',2),(512,512,'Oman','Rial Omani','OMR',3),(586,586,'Pakistan','Pakistan Rupee','PKR',2),(840,585,'Palau','US Dollar','USD',2),(590,591,'Panama','Balboa','PAB',2),(840,591,'Panama','US Dollar','USD',2),(598,598,'Papua New Guinea','Kina','PGK',2),(600,600,'Paraguay','Guarani','PYG',0),(604,604,'Peru','Nuevo Sol','PEN',2),(608,608,'Philippines','Philippine Peso','PHP',2),(554,612,'Pitcairn','New Zealand Dollar','NZD',2),(985,616,'Poland','Zloty','PLN',2),(978,620,'Portugal','Euro','EUR',2),(840,630,'Puerto Rico','US Dollar','USD',2),(634,634,'Qatar','Qatari Rial','QAR',2),(978,638,'Réunion','Euro','EUR',2),(946,642,'Romania','New Romanian Leu','RON',2),(643,643,'Russian Federation','Russian Ruble','RUB',2),(646,646,'Rwanda','Rwanda Franc','RWF',0),(978,652,'Saint Barthélemy','Euro','EUR',2),(951,659,'Saint Kitts and Nevis','East Caribbean Dollar','XCD',2),(951,662,'Saint Lucia','East Caribbean Dollar','XCD',2),(978,663,'Saint Martin (French part)','Euro','EUR',2),(978,666,'Saint Pierre and Miquelon','Euro','EUR',2),(951,670,'Saint Vincent and the Grenadines','East Caribbean Dollar','XCD',2),(882,882,'Samoa','Tala','WST',2),(978,674,'San Marino','Euro','EUR',2),(678,678,'Sao Tome and Principe','Dobra','STD',2),(682,682,'Saudi Arabia','Saudi Riyal','SAR',2),(952,686,'Senegal','CFA Franc BCEAO','XOF',0),(941,688,'Serbia','Serbian Dinar','RSD',2),(690,690,'Seychelles','Seychelles Rupee','SCR',2),(694,694,'Sierra Leone','Leone','SLL',2),(702,702,'Singapore','Singapore Dollar','SGD',2),(532,534,'Sint Maarten (Dutch part)','Netherlands Antillean Guilder','ANG',2),(978,703,'Slovakia','Euro','EUR',2),(978,705,'Slovenia','Euro','EUR',2),(90,90,'Solomon Islands','Solomon Islands Dollar','SBD',2),(706,706,'Somalia','Somali Shilling','SOS',2),(710,710,'South Africa','Rand','ZAR',2),(728,728,'South Sudan','South Sudanese Pound','SSP',2),(978,724,'Spain','Euro','EUR',2),(144,144,'Sri Lanka','Sri Lanka Rupee','LKR',2),(938,729,'Sudan','Sudanese Pound','SDG',2),(968,740,'Suriname','Surinam Dollar','SRD',2),(578,744,'Svalbard and Jan Mayen','Norwegian Krone','NOK',2),(748,748,'Swaziland','Lilangeni','SZL',2),(752,752,'Sweden','Swedish Krona','SEK',2),(947,756,'Switzerland','WIR Euro','CHE',2),(756,756,'Switzerland','Swiss Franc','CHF',2),(948,756,'Switzerland','WIR Franc','CHW',2),(760,760,'Syrian Arab Republic','Syrian Pound','SYP',2),(901,158,'Taiwan, Province of China','New Taiwan Dollar','TWD',2),(972,762,'Tajikistan','Somoni','TJS',2),(834,834,'Tanzania, United Republic of','Tanzanian Shilling','TZS',2),(764,764,'Thailand','Baht','THB',2),(840,626,'Timor-Leste','US Dollar','USD',2),(952,768,'Togo','CFA Franc BCEAO','XOF',0),(554,772,'Tokelau','New Zealand Dollar','NZD',2),(776,776,'Tonga','Pa’anga','TOP',2),(780,780,'Trinidad and Tobago','Trinidad and Tobago Dollar','TTD',2),(788,788,'Tunisia','Tunisian Dinar','TND',3),(949,792,'Turkey','Turkish Lira','TRY',2),(934,795,'Turkmenistan','Turkmenistan New Manat','TMT',2),(840,796,'Turks and Caicos Islands','US Dollar','USD',2),(36,798,'Tuvalu','Australian Dollar','AUD',2),(800,800,'Uganda','Uganda Shilling','UGX',0),(980,804,'Ukraine','Hryvnia','UAH',2),(784,784,'United Arab Emirates','UAE Dirham','AED',2);
/*!40000 ALTER TABLE `Currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Currency_Aux`
--

DROP TABLE IF EXISTS `Currency_Aux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Currency_Aux` (
  `ENTITY` varchar(50) DEFAULT NULL,
  `Currency` varchar(45) DEFAULT NULL,
  `Alphabetic_Code` varchar(45) DEFAULT NULL,
  `Numeric_Code` int(3) DEFAULT NULL,
  `Minor_unit` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Currency_Aux`
--

LOCK TABLES `Currency_Aux` WRITE;
/*!40000 ALTER TABLE `Currency_Aux` DISABLE KEYS */;
INSERT INTO `Currency_Aux` VALUES ('AFGHANISTAN','Afghani','AFN',971,2),('ÅLAND ISLANDS','Euro','EUR',978,2),('ALBANIA','Lek','ALL',8,2),('ALGERIA','Algerian Dinar','DZD',12,2),('AMERICAN SAMOA','US Dollar','USD',840,2),('ANDORRA','Euro','EUR',978,2),('ANGOLA','Kwanza','AOA',973,2),('ANGUILLA','East Caribbean Dollar','XCD',951,2),('ANTIGUA AND BARBUDA','East Caribbean Dollar','XCD',951,2),('ARGENTINA','Argentine Peso','ARS',32,2),('ARMENIA','Armenian Dram','AMD',51,2),('ARUBA','Aruban Florin','AWG',533,2),('AUSTRALIA','Australian Dollar','AUD',36,2),('AUSTRIA','Euro','EUR',978,2),('AZERBAIJAN','Azerbaijanian Manat','AZN',944,2),('BAHAMAS','Bahamian Dollar','BSD',44,2),('BAHRAIN','Bahraini Dinar','BHD',48,3),('BANGLADESH','Taka','BDT',50,2),('BARBADOS','Barbados Dollar','BBD',52,2),('BELARUS','Belarussian Ruble','BYR',974,0),('BELGIUM','Euro','EUR',978,2),('BELIZE','Belize Dollar','BZD',84,2),('BENIN','CFA Franc BCEAO','XOF',952,0),('BERMUDA','Bermudian Dollar','BMD',60,2),('BHUTAN','Ngultrum','BTN',64,2),('BHUTAN','Indian Rupee','INR',356,2),('BOLIVIA, PLURINATIONAL STATE OF','Boliviano','BOB',68,2),('BOLIVIA, PLURINATIONAL STATE OF','Mvdol','BOV',984,2),('BONAIRE, SINT EUSTATIUS AND SABA','US Dollar','USD',840,2),('BOSNIA AND HERZEGOVINA','Convertible Mark','BAM',977,2),('BOTSWANA','Pula','BWP',72,2),('BOUVET ISLAND','Norwegian Krone','NOK',578,2),('BRAZIL','Brazilian Real','BRL',986,2),('BRITISH INDIAN OCEAN TERRITORY','US Dollar','USD',840,2),('BRUNEI DARUSSALAM','Brunei Dollar','BND',96,2),('BULGARIA','Bulgarian Lev','BGN',975,2),('BURKINA FASO','CFA Franc BCEAO','XOF',952,0),('BURUNDI','Burundi Franc','BIF',108,0),('CAMBODIA','Riel','KHR',116,2),('CAMEROON','CFA Franc BEAC','XAF',950,0),('CANADA','Canadian Dollar','CAD',124,2),('CABO VERDE','Cabo Verde Escudo','CVE',132,2),('CAYMAN ISLANDS','Cayman Islands Dollar','KYD',136,2),('CENTRAL AFRICAN REPUBLIC','CFA Franc BEAC','XAF',950,0),('CHAD','CFA Franc BEAC','XAF',950,0),('CHILE','Unidad de Fomento','CLF',990,4),('CHILE','Chilean Peso','CLP',152,0),('CHINA','Yuan Renminbi','CNY',156,2),('CHRISTMAS ISLAND','Australian Dollar','AUD',36,2),('COCOS (KEELING) ISLANDS','Australian Dollar','AUD',36,2),('COLOMBIA','Colombian Peso','COP',170,2),('COLOMBIA','Unidad de Valor Real','COU',970,2),('COMOROS','Comoro Franc','KMF',174,0),('CONGO','CFA Franc BEAC','XAF',950,0),('CONGO, DEMOCRATIC REPUBLIC OF THE ','Congolese Franc','CDF',976,2),('COOK ISLANDS','New Zealand Dollar','NZD',554,2),('COSTA RICA','Costa Rican Colon','CRC',188,2),('CÔTE D\'IVOIRE','CFA Franc BCEAO','XOF',952,0),('CROATIA','Croatian Kuna','HRK',191,2),('CUBA','Peso Convertible','CUC',931,2),('CUBA','Cuban Peso','CUP',192,2),('CURAÇAO','Netherlands Antillean Guilder','ANG',532,2),('CYPRUS','Euro','EUR',978,2),('CZECH REPUBLIC','Czech Koruna','CZK',203,2),('DENMARK','Danish Krone','DKK',208,2),('DJIBOUTI','Djibouti Franc','DJF',262,0),('DOMINICA','East Caribbean Dollar','XCD',951,2),('DOMINICAN REPUBLIC','Dominican Peso','DOP',214,2),('ECUADOR','US Dollar','USD',840,2),('EGYPT','Egyptian Pound','EGP',818,2),('EL SALVADOR','El Salvador Colon','SVC',222,2),('EL SALVADOR','US Dollar','USD',840,2),('EQUATORIAL GUINEA','CFA Franc BEAC','XAF',950,0),('ERITREA','Nakfa','ERN',232,2),('ESTONIA','Euro','EUR',978,2),('ETHIOPIA','Ethiopian Birr','ETB',230,2),('EUROPEAN UNION','Euro','EUR',978,2),('FALKLAND ISLANDS (MALVINAS)','Falkland Islands Pound','FKP',238,2),('FAROE ISLANDS','Danish Krone','DKK',208,2),('FIJI','Fiji Dollar','FJD',242,2),('FINLAND','Euro','EUR',978,2),('FRANCE','Euro','EUR',978,2),('FRENCH GUIANA','Euro','EUR',978,2),('FRENCH POLYNESIA','CFP Franc','XPF',953,0),('FRENCH SOUTHERN TERRITORIES','Euro','EUR',978,2),('GABON','CFA Franc BEAC','XAF',950,0),('GAMBIA','Dalasi','GMD',270,2),('GEORGIA','Lari','GEL',981,2),('GERMANY','Euro','EUR',978,2),('GHANA','Ghana Cedi','GHS',936,2),('GIBRALTAR','Gibraltar Pound','GIP',292,2),('GREECE','Euro','EUR',978,2),('GREENLAND','Danish Krone','DKK',208,2),('GRENADA','East Caribbean Dollar','XCD',951,2),('GUADELOUPE','Euro','EUR',978,2),('GUAM','US Dollar','USD',840,2),('GUATEMALA','Quetzal','GTQ',320,2),('GUERNSEY','Pound Sterling','GBP',826,2),('GUINEA','Guinea Franc','GNF',324,0),('GUINEA-BISSAU','CFA Franc BCEAO','XOF',952,0),('GUYANA','Guyana Dollar','GYD',328,2),('HAITI','Gourde','HTG',332,2),('HAITI','US Dollar','USD',840,2),('HEARD ISLAND AND McDONALD ISLANDS','Australian Dollar','AUD',36,2),('HOLY SEE (VATICAN CITY STATE)','Euro','EUR',978,2),('HONDURAS','Lempira','HNL',340,2),('HONG KONG','Hong Kong Dollar','HKD',344,2),('HUNGARY','Forint','HUF',348,2),('ICELAND','Iceland Krona','ISK',352,0),('INDIA','Indian Rupee','INR',356,2),('INDONESIA','Rupiah','IDR',360,2),('IRAN, ISLAMIC REPUBLIC OF','Iranian Rial','IRR',364,2),('IRAQ','Iraqi Dinar','IQD',368,3),('IRELAND','Euro','EUR',978,2),('ISLE OF MAN','Pound Sterling','GBP',826,2),('ISRAEL','New Israeli Sheqel','ILS',376,2),('ITALY','Euro','EUR',978,2),('JAMAICA','Jamaican Dollar','JMD',388,2),('JAPAN','Yen','JPY',392,0),('JERSEY','Pound Sterling','GBP',826,2),('JORDAN','Jordanian Dinar','JOD',400,3),('KAZAKHSTAN','Tenge','KZT',398,2),('KENYA','Kenyan Shilling','KES',404,2),('KIRIBATI','Australian Dollar','AUD',36,2),('KOREA, DEMOCRATIC PEOPLE’S REPUBLIC OF','North Korean Won','KPW',408,2),('KOREA, REPUBLIC OF','Won','KRW',410,0),('KUWAIT','Kuwaiti Dinar','KWD',414,3),('KYRGYZSTAN','Som','KGS',417,2),('LAO PEOPLE’S DEMOCRATIC REPUBLIC','Kip','LAK',418,2),('LATVIA','Euro','EUR',978,2),('LEBANON','Lebanese Pound','LBP',422,2),('LESOTHO','Loti','LSL',426,2),('LESOTHO','Rand','ZAR',710,2),('LIBERIA','Liberian Dollar','LRD',430,2),('LIBYA','Libyan Dinar','LYD',434,3),('LIECHTENSTEIN','Swiss Franc','CHF',756,2),('LITHUANIA','Euro','EUR',978,2),('LUXEMBOURG','Euro','EUR',978,2),('MACAO','Pataca','MOP',446,2),('MACEDONIA, THE FORMER \nYUGOSLAV REPUBLIC OF','Denar','MKD',807,2),('MADAGASCAR','Malagasy Ariary','MGA',969,2),('MALAWI','Kwacha','MWK',454,2),('MALAYSIA','Malaysian Ringgit','MYR',458,2),('MALDIVES','Rufiyaa','MVR',462,2),('MALI','CFA Franc BCEAO','XOF',952,0),('MALTA','Euro','EUR',978,2),('MARSHALL ISLANDS','US Dollar','USD',840,2),('MARTINIQUE','Euro','EUR',978,2),('MAURITANIA','Ouguiya','MRO',478,2),('MAURITIUS','Mauritius Rupee','MUR',480,2),('MAYOTTE','Euro','EUR',978,2),('MEXICO','Mexican Peso','MXN',484,2),('MEXICO','Mexican Unidad de Inversion (UDI)','MXV',979,2),('MICRONESIA, FEDERATED STATES OF','US Dollar','USD',840,2),('MOLDOVA, REPUBLIC OF','Moldovan Leu','MDL',498,2),('MONACO','Euro','EUR',978,2),('MONGOLIA','Tugrik','MNT',496,2),('MONTENEGRO','Euro','EUR',978,2),('MONTSERRAT','East Caribbean Dollar','XCD',951,2),('MOROCCO','Moroccan Dirham','MAD',504,2),('MOZAMBIQUE','Mozambique Metical','MZN',943,2),('MYANMAR','Kyat','MMK',104,2),('NAMIBIA','Namibia Dollar','NAD',516,2),('NAMIBIA','Rand','ZAR',710,2),('NAURU','Australian Dollar','AUD',36,2),('NEPAL','Nepalese Rupee','NPR',524,2),('NETHERLANDS','Euro','EUR',978,2),('NEW CALEDONIA','CFP Franc','XPF',953,0),('NEW ZEALAND','New Zealand Dollar','NZD',554,2),('NICARAGUA','Cordoba Oro','NIO',558,2),('NIGER','CFA Franc BCEAO','XOF',952,0),('NIGERIA','Naira','NGN',566,2),('NIUE','New Zealand Dollar','NZD',554,2),('NORFOLK ISLAND','Australian Dollar','AUD',36,2),('NORTHERN MARIANA ISLANDS','US Dollar','USD',840,2),('NORWAY','Norwegian Krone','NOK',578,2),('OMAN','Rial Omani','OMR',512,3),('PAKISTAN','Pakistan Rupee','PKR',586,2),('PALAU','US Dollar','USD',840,2),('PANAMA','Balboa','PAB',590,2),('PANAMA','US Dollar','USD',840,2),('PAPUA NEW GUINEA','Kina','PGK',598,2),('PARAGUAY','Guarani','PYG',600,0),('PERU','Nuevo Sol','PEN',604,2),('PHILIPPINES','Philippine Peso','PHP',608,2),('PITCAIRN','New Zealand Dollar','NZD',554,2),('POLAND','Zloty','PLN',985,2),('PORTUGAL','Euro','EUR',978,2),('PUERTO RICO','US Dollar','USD',840,2),('QATAR','Qatari Rial','QAR',634,2),('RÉUNION','Euro','EUR',978,2),('ROMANIA','New Romanian Leu','RON',946,2),('RUSSIAN FEDERATION','Russian Ruble','RUB',643,2),('RWANDA','Rwanda Franc','RWF',646,0),('SAINT BARTHÉLEMY','Euro','EUR',978,2),('SAINT HELENA, ASCENSION AND \nTRISTAN DA CUNHA','Saint Helena Pound','SHP',654,2),('SAINT KITTS AND NEVIS','East Caribbean Dollar','XCD',951,2),('SAINT LUCIA','East Caribbean Dollar','XCD',951,2),('SAINT MARTIN (FRENCH PART)','Euro','EUR',978,2),('SAINT PIERRE AND MIQUELON','Euro','EUR',978,2),('SAINT VINCENT AND THE GRENADINES','East Caribbean Dollar','XCD',951,2),('SAMOA','Tala','WST',882,2),('SAN MARINO','Euro','EUR',978,2),('SAO TOME AND PRINCIPE','Dobra','STD',678,2),('SAUDI ARABIA','Saudi Riyal','SAR',682,2),('SENEGAL','CFA Franc BCEAO','XOF',952,0),('SERBIA','Serbian Dinar','RSD',941,2),('SEYCHELLES','Seychelles Rupee','SCR',690,2),('SIERRA LEONE','Leone','SLL',694,2),('SINGAPORE','Singapore Dollar','SGD',702,2),('SINT MAARTEN (DUTCH PART)','Netherlands Antillean Guilder','ANG',532,2),('SLOVAKIA','Euro','EUR',978,2),('SLOVENIA','Euro','EUR',978,2),('SOLOMON ISLANDS','Solomon Islands Dollar','SBD',90,2),('SOMALIA','Somali Shilling','SOS',706,2),('SOUTH AFRICA','Rand','ZAR',710,2),('SOUTH SUDAN','South Sudanese Pound','SSP',728,2),('SPAIN','Euro','EUR',978,2),('SRI LANKA','Sri Lanka Rupee','LKR',144,2),('SUDAN','Sudanese Pound','SDG',938,2),('SURINAME','Surinam Dollar','SRD',968,2),('SVALBARD AND JAN MAYEN','Norwegian Krone','NOK',578,2),('SWAZILAND','Lilangeni','SZL',748,2),('SWEDEN','Swedish Krona','SEK',752,2),('SWITZERLAND','WIR Euro','CHE',947,2),('SWITZERLAND','Swiss Franc','CHF',756,2),('SWITZERLAND','WIR Franc','CHW',948,2),('SYRIAN ARAB REPUBLIC','Syrian Pound','SYP',760,2),('TAIWAN, PROVINCE OF CHINA','New Taiwan Dollar','TWD',901,2),('TAJIKISTAN','Somoni','TJS',972,2),('TANZANIA, UNITED REPUBLIC OF','Tanzanian Shilling','TZS',834,2),('THAILAND','Baht','THB',764,2),('TIMOR-LESTE','US Dollar','USD',840,2),('TOGO','CFA Franc BCEAO','XOF',952,0),('TOKELAU','New Zealand Dollar','NZD',554,2),('TONGA','Pa’anga','TOP',776,2),('TRINIDAD AND TOBAGO','Trinidad and Tobago Dollar','TTD',780,2),('TUNISIA','Tunisian Dinar','TND',788,3),('TURKEY','Turkish Lira','TRY',949,2),('TURKMENISTAN','Turkmenistan New Manat','TMT',934,2),('TURKS AND CAICOS ISLANDS','US Dollar','USD',840,2),('TUVALU','Australian Dollar','AUD',36,2),('UGANDA','Uganda Shilling','UGX',800,0),('UKRAINE','Hryvnia','UAH',980,2),('UNITED ARAB EMIRATES','UAE Dirham','AED',784,2),('UNITED KINGDOM','Pound Sterling','GBP',826,2),('UNITED STATES','US Dollar','USD',840,2);
/*!40000 ALTER TABLE `Currency_Aux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `Cust_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Cust_CreateTime` datetime NOT NULL,
  `Cust_Email` char(30) NOT NULL,
  `Cust_PhoneNumber` char(20) NOT NULL,
  PRIMARY KEY (`Cust_ID`),
  UNIQUE KEY `Cust_ID` (`Cust_ID`),
  UNIQUE KEY `Cust_Email` (`Cust_Email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'2014-12-23 20:19:37','edicsonm@gmail.com','6100000000');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Invoice`
--

DROP TABLE IF EXISTS `Invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Invoice` (
  `Invo_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Invo_ID`),
  UNIQUE KEY `Invo_ID` (`Invo_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Invoice`
--

LOCK TABLES `Invoice` WRITE;
/*!40000 ALTER TABLE `Invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `Invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Merchant`
--

DROP TABLE IF EXISTS `Merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Merchant` (
  `Merc_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Coun_Numeric` int(5) NOT NULL,
  `Merc_Name` varchar(100) NOT NULL,
  `Merc_Status` enum('0','1') NOT NULL DEFAULT '0',
  `Merc_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Merc_ID`),
  KEY `FK_Merchant_Country_idx` (`Coun_Numeric`),
  CONSTRAINT `FK_Merchant_Country` FOREIGN KEY (`Coun_Numeric`) REFERENCES `Country` (`Coun_Numeric`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Merchant`
--

LOCK TABLES `Merchant` WRITE;
/*!40000 ALTER TABLE `Merchant` DISABLE KEYS */;
INSERT INTO `Merchant` VALUES (1,170,'Tuticket.com.co','0','2015-01-18 18:49:50'),(2,862,'Tucarro.com.ve','0','2015-01-16 21:29:55'),(3,862,'Tutickewwwww','1','2015-01-16 21:21:25');
/*!40000 ALTER TABLE `Merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MerchantConfiguration`
--

DROP TABLE IF EXISTS `MerchantConfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MerchantConfiguration` (
  `Meco_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Merc_ID` bigint(20) NOT NULL,
  `Meco_UrlDeny` varchar(100) NOT NULL,
  `Meco_UrlApproved` varchar(100) NOT NULL,
  `Meco_PasswordKeyStore` varchar(50) NOT NULL,
  `Meco_PrivacyKeyStore` varchar(50) NOT NULL,
  `Meco_Passwordkey` varchar(50) NOT NULL,
  `Meco_keyName` varchar(50) NOT NULL,
  `Meco_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Meco_ID`),
  UNIQUE KEY `Come_ID_UNIQUE` (`Meco_ID`),
  UNIQUE KEY `Merc_ID_UNIQUE` (`Merc_ID`),
  KEY `FK_MerchantConfiguration_Merchant_idx` (`Merc_ID`),
  CONSTRAINT `FK_MerchantConfiguration_Merchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MerchantConfiguration`
--

LOCK TABLES `MerchantConfiguration` WRITE;
/*!40000 ALTER TABLE `MerchantConfiguration` DISABLE KEYS */;
INSERT INTO `MerchantConfiguration` VALUES (1,2,'http://192.168.0.10:8080/MerchantApp/answerError.jsp','http://192.168.0.10:8080/MerchantApp/answerProcessor.jsp','password','password','password','pasword','2015-01-23 12:01:17');
/*!40000 ALTER TABLE `MerchantConfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MerchantRestriction`
--

DROP TABLE IF EXISTS `MerchantRestriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MerchantRestriction` (
  `Mere_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Merc_ID` bigint(20) NOT NULL,
  `Mere_Value` int(5) NOT NULL DEFAULT '0',
  `Mere_Concept` enum('Amount','Transactions') NOT NULL,
  `Mere_TimeUnit` varchar(50) NOT NULL,
  `Mere_Status` enum('0','1') NOT NULL DEFAULT '0',
  `Mere_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Mere_ID`),
  UNIQUE KEY `UNIQUE_Merc_ID_Mere_Concept` (`Merc_ID`,`Mere_Concept`),
  KEY `FK_MerchantRestrictionMerchant_idx` (`Merc_ID`),
  CONSTRAINT `FK_MerchantRestrictionMerchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MerchantRestriction`
--

LOCK TABLES `MerchantRestriction` WRITE;
/*!40000 ALTER TABLE `MerchantRestriction` DISABLE KEYS */;
INSERT INTO `MerchantRestriction` VALUES (1,2,1000,'Amount','1440','0','2015-01-23 17:28:26'),(2,2,10,'Transactions','1440','0','2015-01-23 16:49:03');
/*!40000 ALTER TABLE `MerchantRestriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Plan`
--

DROP TABLE IF EXISTS `Plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Plan` (
  `Plan_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Plan_Amount` decimal(20,0) NOT NULL,
  `Plan_CreateTime` datetime NOT NULL,
  `Plan_Currency` char(3) NOT NULL,
  `Plan_Interval` enum('Day','Week','Month','Year') NOT NULL,
  `Plan_IntervalCount` int(4) NOT NULL DEFAULT '1',
  `Plan_Name` varchar(50) NOT NULL,
  `Plan_TrialPeriodDays` int(4) DEFAULT '0',
  `Plan_StatementDescriptor` varchar(200) DEFAULT NULL,
  `Plan_Status` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`Plan_ID`),
  UNIQUE KEY `Plan_id_UNIQUE` (`Plan_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Plan`
--

LOCK TABLES `Plan` WRITE;
/*!40000 ALTER TABLE `Plan` DISABLE KEYS */;
INSERT INTO `Plan` VALUES (1,12,'2015-01-05 22:15:34','USD','Week',3,'Mobile Gold Plan',0,'','0'),(2,32,'2015-01-05 22:19:55','USD','Day',12,'Mobile Gold Plan 2',0,'','0'),(3,24,'2015-01-05 22:21:22','USD','Day',1,'Mobile Gold Plan 3',0,'','0'),(4,43,'2015-01-06 15:51:31','USD','Year',36,'Mobile Gold Plan 4',100,'Statement Descriptor','0');
/*!40000 ALTER TABLE `Plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pruebas`
--

DROP TABLE IF EXISTS `Pruebas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pruebas` (
  `idPruebas` datetime NOT NULL,
  PRIMARY KEY (`idPruebas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pruebas`
--

LOCK TABLES `Pruebas` WRITE;
/*!40000 ALTER TABLE `Pruebas` DISABLE KEYS */;
INSERT INTO `Pruebas` VALUES ('2015-01-09 00:00:00');
/*!40000 ALTER TABLE `Pruebas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Refund`
--

DROP TABLE IF EXISTS `Refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Refund` (
  `Refu_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Char_ID` bigint(20) NOT NULL,
  `Refu_IDStripe` varchar(50) DEFAULT NULL,
  `Refu_Amount` decimal(20,0) NOT NULL,
  `Refu_CreateTime` datetime NOT NULL,
  `Refu_Currency` char(3) NOT NULL,
  `Refu_BalanceTransaction` char(50) DEFAULT NULL,
  `Refu_Reason` char(100) NOT NULL,
  `Refu_ReceiptNumber` char(50) DEFAULT NULL,
  `Tran_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Refu_ID`),
  UNIQUE KEY `Refu_ID` (`Refu_ID`),
  KEY `IX_FK_Refund_Charges` (`Char_ID`,`Tran_ID`),
  CONSTRAINT `FK_Refund_Charge` FOREIGN KEY (`Char_ID`, `Tran_ID`) REFERENCES `Charge` (`Char_ID`, `Tran_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Refund`
--

LOCK TABLES `Refund` WRITE;
/*!40000 ALTER TABLE `Refund` DISABLE KEYS */;
INSERT INTO `Refund` VALUES (1,36,NULL,55476,'2015-01-02 02:23:39','usd','txn_15GPmV2eZvKYlo2CUTD0iug4','asd',NULL,NULL),(2,37,NULL,55076,'2015-01-02 23:43:39','usd','txn_15GjlD2eZvKYlo2Cfb1ThhcO','sdas',NULL,NULL),(3,38,NULL,1276,'2015-01-02 23:48:12','usd','txn_15Gjpc2eZvKYlo2C5bIXrv7V','sad',NULL,NULL),(4,39,NULL,131260,'2015-01-02 23:51:08','usd','txn_15GjsT2eZvKYlo2CHOWgVldg','adasd',NULL,NULL),(5,40,NULL,4390,'2015-01-03 00:14:56','usd','txn_15GkFU2eZvKYlo2CSc9KGHee','sad',NULL,NULL),(6,40,'re_15GkRC2eZvKYlo2ChzNeOoji',687,'2015-01-03 00:27:02','usd','txn_15GkRC2eZvKYlo2CNzl6JnEy','3323',NULL,17),(7,40,'re_15HVLX2eZvKYlo2CRzCrUaqR',266,'2015-01-05 02:32:24','usd','txn_15HVLX2eZvKYlo2C3cNObyEV','asdasd',NULL,17),(8,40,'re_15HVO02eZvKYlo2CP6SYLH6R',121,'2015-01-05 02:34:51','usd','txn_15HVO02eZvKYlo2Cvi7uXJ47','qweqwe',NULL,17),(9,40,'re_15HVRM2eZvKYlo2C8AmX3LyW',387,'2015-01-05 02:38:20','usd','txn_15HVRM2eZvKYlo2Cfq1g9Uz3',' Reason',NULL,17),(10,40,'re_15HVTM2eZvKYlo2Cwvp04Vwt',400,'2015-01-05 02:40:24','usd','txn_15HVTM2eZvKYlo2CPRNrjskF','Reason 2',NULL,17);
/*!40000 ALTER TABLE `Refund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscription`
--

DROP TABLE IF EXISTS `Subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subscription` (
  `Subs_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Plan_ID` bigint(20) NOT NULL,
  `Cust_ID` bigint(20) DEFAULT NULL,
  `Disc_ID` bigint(20) DEFAULT '0',
  `Subs_CancelAtPeriodEnd` tinyint(1) NOT NULL DEFAULT '1',
  `Subs_Quantity` int(4) NOT NULL,
  `Subs_Start` datetime NOT NULL,
  `Subs_Status` enum('Trialing','Active','Past_due','Canceled','Unpaid') NOT NULL,
  `Subs_ApplicationFeePercent` decimal(5,2) NOT NULL,
  `Subs_CanceledAt` datetime NOT NULL,
  `Subs_CurrentPeriodStart` datetime NOT NULL,
  `Subs_CurrentPeriodEnd` datetime NOT NULL,
  `Subs_TrialEnd` datetime NOT NULL,
  `Subs_EndedAt` datetime NOT NULL,
  `Subs_TrialStart` datetime NOT NULL,
  `Subs_TaxPercent` decimal(3,2) NOT NULL,
  `Subs_CreationTime` datetime NOT NULL,
  `Subs_StatusRow` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`Subs_ID`),
  UNIQUE KEY `Subs_ID_UNIQUE` (`Subs_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscription`
--

LOCK TABLES `Subscription` WRITE;
/*!40000 ALTER TABLE `Subscription` DISABLE KEYS */;
INSERT INTO `Subscription` VALUES (1,1,NULL,NULL,0,1,'2015-01-10 00:00:00','Active',12.00,'2015-01-10 00:00:00','2015-01-10 00:00:00','2015-01-21 00:00:00','2015-01-14 00:00:00','2015-01-13 00:00:00','2015-01-10 00:00:00',0.00,'2015-01-09 20:48:46','0'),(2,2,NULL,NULL,0,1,'2015-01-12 00:00:00','Trialing',12.00,'2015-01-17 00:00:00','2015-10-12 00:00:00','2013-08-12 00:00:00','2001-12-30 00:00:00','2015-01-12 00:00:00','2002-06-18 00:00:00',0.00,'2015-01-12 21:26:41','0'),(3,2,NULL,NULL,0,111,'2015-01-12 00:00:00','Canceled',13.00,'2015-01-12 00:00:00','2015-01-12 00:00:00','2015-01-12 00:00:00','2015-01-12 00:00:00','2015-01-12 00:00:00','2015-01-12 00:00:00',1.00,'2015-01-12 21:08:10','0');
/*!40000 ALTER TABLE `Subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transaction` (
  `Tran_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Merc_ID` bigint(20) NOT NULL COMMENT 'Your internal ID for the shop, affiliate, or merchant this order is coming from. Required for minFraud users who are resellers, payment providers, gateways and affiliate networks.',
  `Tran_IP` varchar(20) NOT NULL COMMENT 'The IP address of the customer placing the order. This should be passed as a string like “44.55.66.77” or “2001:db8::2:1″.',
  `Tran_MaxmindID` char(8) NOT NULL COMMENT 'This is a unique eight character string identifying this minFraud request. Please use this ID in bug reports or support requests to MaxMind so that we can easily identify a particular request.',
  `Tran_BillingAddressCity` char(20) DEFAULT NULL COMMENT 'The billing city for the customer.',
  `Tran_BillingAddressRegion` char(20) DEFAULT NULL COMMENT 'The billing region/state for the customer.',
  `Tran_BillingAddressPostal` char(20) DEFAULT NULL COMMENT 'The billing postal (zip) code for the customer.',
  `Tran_BillingAddressCountry` char(20) DEFAULT NULL COMMENT 'The billing country for the customer. This can be passed as the full country name or as an ISO 3166 code.',
  `Tran_ShippingAddress` char(100) DEFAULT NULL COMMENT 'The shipping street address.',
  `Tran_ShippingAddressCity` char(100) DEFAULT NULL COMMENT 'The shipping address city.',
  `Tran_ShippingAddressRegion` char(100) DEFAULT NULL COMMENT 'The shipping address region/state.',
  `Tran_ShippingAddressPostal` char(100) DEFAULT NULL COMMENT 'The shipping address postal (zip) code.',
  `Tran_ShippingAddressCountry` char(100) DEFAULT NULL COMMENT 'The shipping address country.',
  `Tran_Domain` char(50) DEFAULT NULL COMMENT 'The domain for the user’s email address. This field should not be hashed.',
  `Tran_CustomerPhone` char(20) DEFAULT NULL COMMENT 'The customer’s phone number, including area code and local exchange. This is used to verify that the customer’s phone number is in the same billing location as the cardholder. Most formats are acceptable. We strip out all non-numeric characters from the input.',
  `Tran_EmailMD5` char(32) DEFAULT NULL COMMENT 'An MD5 hash of the user’s email address in ASCII encoding.',
  `Tran_UsernameMD5` char(32) DEFAULT NULL COMMENT 'An MD5 hash of the user’s username in ASCII encoding.',
  `Tran_Bin` char(6) DEFAULT NULL COMMENT 'The credit card BIN number. This is the first 6 digits of the credit card number. It identifies the issuing bank.',
  `Tran_BinName` char(50) DEFAULT NULL COMMENT 'The name of the bank which issued the credit card, based on the BIN number. This is used to verify that cardholder is in possession of credit card. You must set the bin field if you set this one.',
  `Tran_BinPhone` char(20) DEFAULT NULL COMMENT 'The customer service phone number listed on the back of the credit card. This is used to verify that cardholder is in possession of credit card. You must set the bin field if you set this one.',
  `Tran_UserAgent` char(200) NOT NULL COMMENT 'The User-Agent HTTP header.',
  `Tran_AcceptLanguage` char(200) DEFAULT NULL COMMENT 'The Accept-Language HTTP header.',
  `Tran_OrderAmount` decimal(20,3) NOT NULL COMMENT 'The customer’s order amount.',
  `Tran_OrderCurrency` char(3) NOT NULL COMMENT 'The currency used for the customer’s order as an ISO 4217 code.',
  `Tran_TxnType` enum('creditcard','debitcard','paypal','google – Google checkout','other','lead – lead generation','survey – online survey','sitereg – site registration') DEFAULT NULL COMMENT 'The transaction type. This can be set to one of the following strings:\n    creditcard\n    debitcard\n    paypal\n    google – Google checkout\n    other\n    lead – lead generation\n    survey – online survey\n    sitereg – site registration\n\nThe lead, survey, and sitereg types are used for non-purchase transactions.',
  `Tran_CVVResult` enum('Y','N') DEFAULT NULL COMMENT 'The CVV check result. This should be either “N” or “Y”. Do not pass the CVV code itself.',
  `Tran_RequestedType` enum('standard','premium') DEFAULT NULL,
  `Tran_RiskScore` decimal(5,2) DEFAULT NULL,
  `Tran_CountryMatch` enum('Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. It indicates whether the country of the IP address matched the billing address country. A mismatch indicates a higher risk of fraud. If no country input was provided, this field will be left blank.',
  `Tran_HighRiskCountry` enum('Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. The field will be set to “Yes” if either the billing country or the IP country are associated with a high risk of fraud; otherwise, it will be set to “No”.',
  `Tran_Distance` bigint(20) DEFAULT NULL COMMENT 'The distance from the IP address location to the billing location, in kilometers. A higher distance indicates a higher risk of fraud.',
  `Tran_IPAccuracyRadius` bigint(20) DEFAULT NULL COMMENT 'The radius in kilometers around the specified location where the IP address is likely to be.',
  `Tran_IPCity` char(20) DEFAULT NULL,
  `Tran_IPRegion` char(2) DEFAULT NULL COMMENT 'A two character ISO-3166-2 or FIPS 10-4 code for the state/region associated with the IP address.\n\nFor the US and Canada, we return an ISO-3166-2 code. In addition to the standard ISO codes, we may also return one of the following:\n\n    AA – Armed Forces America\n    AE – Armed Forces Europe\n    AP – Armed Forces Pacific\n\nWe return a FIPS code for all other countries.\n\nWe provide a CSV file which maps our region codes to region names. The columns are ISO country code, region code (FIPS or ISO), and the region name.',
  `Tran_IPRegionName` char(100) DEFAULT NULL COMMENT 'The region name associated with the IP address.',
  `Tran_IPPostalCode` char(20) DEFAULT NULL COMMENT 'The postal code associated with the IP address. These are available for some IP addresses in Australia, Canada, France, Germany, Italy, Spain, Switzerland, United Kingdom, and the US. We return the first 3 characters for Canadian postal codes. We return the the first 2-4 characters (outward code) for postal codes in the United Kingdom.',
  `Tran_IPMetroCode` bigint(20) DEFAULT NULL,
  `Tran_IPAreaCode` char(50) DEFAULT NULL COMMENT 'The telephone area code associated with the IP address. These are only available for IP addresses in the US. This output is deprecated, and may not reflect newer area codes.',
  `Tran_CountryCode` char(2) DEFAULT NULL COMMENT 'A two-character ISO 3166-1 country code for the country associated with the IP address. In addition to the standard codes, we may also return one of the following:\n\n    A1 – an anonymous proxy.\n    A2 – a satellite provider.\n    EU – an IP in a block used by multiple European countries.\n    AP – an IP in a block used by multiple Asia/Pacific region countries.\n\nThe US country code is returned for IP addresses associated with overseas US military bases.',
  `Tran_IPCountryName` char(100) DEFAULT NULL,
  `Tran_IPContinentCode` char(2) DEFAULT NULL COMMENT 'A two-character code for the continent associated with the IP address. The possible codes are:\n\n    AF – Africa\n    AS – Asia\n    EU – Europe\n    NA – North America\n    OC – Oceania\n    SA – South America',
  `Tran_IPLatitude` bigint(20) DEFAULT NULL,
  `Tran_IPLongitude` bigint(20) DEFAULT NULL,
  `Tran_IPTimeZone` char(50) DEFAULT NULL COMMENT 'The time zone associated with the IP address. Time zone names are taken from the IANA time zone database. See the list of possible values.',
  `Tran_IPAsnum` char(50) DEFAULT NULL COMMENT 'The autonomous system number associated with the IP address.',
  `Tran_IPUserType` enum('business','cafe','cellular','college','contentDeliveryNetwork','government','hosting','library','military','residential','router','school','searchEngineSpider','traveler') DEFAULT NULL COMMENT 'The user type associated with the IP address. This will be one of the following values.\n\n    business\n    cafe\n    cellular\n    college\n    contentDeliveryNetwork\n    government\n    hosting\n    library\n    military\n    residential\n    router\n    school\n    searchEngineSpider\n    traveler',
  `Tran_IPNetSpeedCell` enum('Dialup','Cable/DSL','Corporate','Cellular') DEFAULT NULL,
  `Tran_IPDomain` char(50) DEFAULT NULL COMMENT 'The second level domain associated with the IP address. This will be something like “example.com” or “example.co.uk”, not “foo.example.com”.',
  `Tran_IPIsp` char(20) DEFAULT NULL COMMENT 'The name of the ISP associated with the IP address.',
  `Tran_IPOrg` char(50) DEFAULT NULL COMMENT 'The name of the organization associated with the IP address.',
  `Tran_IPCityConf` bigint(20) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the city is correct.',
  `Tran_IPRegionConf` bigint(3) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the region is correct.',
  `Tran_IPPostalConf` bigint(3) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the postal code is correct.',
  `Tran_IPCountryConf` bigint(3) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the country is correct.',
  `Tran_AnonymousProxy` enum('Yes','No') DEFAULT NULL,
  `Tran_ProxyScore` decimal(2,2) DEFAULT NULL,
  `Tran_IPCorporateProxy` enum('Yes','No') DEFAULT NULL,
  `Tran_FreeMail` enum('','Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. It indicates whether the user’s email address is from a free email provider. Note that this will be set to “No” if no domain is passed in the input.',
  `Tran_CarderEmail` enum('','Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. It indicates whether the user’s email address is in a database of known high risk emails.',
  `Tran_BinMatch` enum('','Yes','No','NotFound','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, NotFound, or NA It indicates whether the credit card’s bank is in the same country as the user’s billing address.\n\nThe NotFound response means that we could not find a match for the provided bin input field. The NA response means that you did not provide a bin in the input.',
  `Tran_BinCountry` char(2) DEFAULT NULL COMMENT 'The two letter ISO 3166 country code for the bank. This is available for approximately 99% of all BIN numbers. This field is returned for premium service level queries. For standard service level queries the field is only returned if the binMatch is Yes.',
  `Tran_BinNameMatch` enum('Yes','No','NotFound','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, NotFound, or NA It indicates whether the credit card’s bank name matches the binName input field.\n\nThe NotFound response means that we could not find a match for the provided bin input field. The NA response means that you did not provide a binName in the input.',
  `Tran_BinPhoneMatch` enum('Yes','No','NotFound','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, NotFound, or NA It indicates whether the credit card’s bank name matches the binPhone input field.\n\nThe NotFound response means that we could not find a match for the provided bin input field. The NA response means that you did not provide a binPhone in the input.',
  `Tran_Prepaid` enum('','Yes','No') DEFAULT NULL,
  `Tran_CustPhoneInBillingLoc` enum('','Yes','No','NotFound') DEFAULT NULL COMMENT 'This field can be either Yes, No, or NotFound. This indicates whether the customer’s phone number is in the billing address’s postal code.\n\nThe No response means that phone number may be in a different area, or it is not listed in our database. The NotFound response indicates that the phone number prefix is not in our database.\n\nCurrently we only return information about US phone numbers. For all other countries, this field will be left blank.',
  `Tran_ShipForward` enum('Yes','No','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, or NA. This indicates whether the customer’s shipping address is in a database of known high risk shipping addresses. The NA response indicates that we could not parse the shipping address.',
  `Tran_CityPostalMatch` enum('','Yes','No') DEFAULT NULL,
  `Tran_ShipCityPostalMatch` enum('','Yes','No') DEFAULT NULL,
  `Tran_MinfraudVersion` char(20) DEFAULT NULL COMMENT 'This returns the API version that was used for this request.',
  `Tran_ServiceLevel` enum('','standard','premium') DEFAULT NULL COMMENT 'This returns the service level that was used for this request. This can be either standard or premium.',
  `Tran_Error` enum('','INVALID_LICENSE_KEY','IP_REQUIRED','IP_NOT_FOUND','MAX_REQUESTS_REACHED','LICENSE_REQUIRED','COUNTRY_NOT_FOUND','CITY_NOT_FOUND','CITY_REQUIRED','INVALID_EMAIL_MD5','POSTAL_CODE_REQUIRED','POSTAL_CODE_NOT_FOUND') DEFAULT NULL COMMENT 'If there was an error or warning with this request, this field contains an error code string.\n\nThe possible error codes are:\n\n    INVALID_LICENSE_KEY\n    IP_REQUIRED\n    IP_NOT_FOUND – this error will be returned if the IP address is not valid, if it is not public, or if it is not in our GeoIP database.\n    MAX_REQUESTS_REACHED – this is returned when your account is out of queries.\n    LICENSE_REQUIRED – this is returned if you do not provide a license key at all.\n\nThe possible warning codes are:\n\n    COUNTRY_NOT_FOUND\n    CITY_NOT_FOUND\n    CITY_REQUIRED\n    INVALID_EMAIL_MD5\n    POSTAL_CODE_REQUIRED\n    POSTAL_CODE_NOT_FOUND\n',
  `Tran_ProcessTime` varchar(20) DEFAULT NULL,
  `Tran_CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Tran_ID`),
  UNIQUE KEY `Tran_ID` (`Tran_ID`),
  UNIQUE KEY `Tran_MaxmindID` (`Tran_MaxmindID`),
  KEY `FK_Transaction_Merchant_idx` (`Merc_ID`),
  CONSTRAINT `FK_Transaction_Merchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
INSERT INTO `Transaction` VALUES (1,2,'27.32.44.176','8C5NWSU2','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,NULL,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','7084 ms.','2015-01-21 18:41:12'),(2,2,'27.32.44.176','6CU4JN7O','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,NULL,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1617 ms.','2015-01-21 19:18:00'),(3,2,'27.32.44.176','Z554FR53','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1542 ms.','2015-01-20 19:18:54'),(4,2,'27.32.44.176','PX02Y4DL','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1513 ms.','2015-01-21 20:38:27'),(5,2,'27.32.44.176','64CEL08V','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1519 ms.','2015-01-21 18:41:12'),(6,2,'27.32.44.176','3H3IQMIC','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1598 ms.','2015-01-20 19:18:54'),(7,2,'27.32.44.176','HG48UZDL','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1574 ms.','2015-01-21 20:38:33'),(8,2,'27.32.44.176','2MCG93IM','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1679 ms.','2015-01-21 19:18:00'),(9,2,'27.32.44.176','KCRUM88K','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1367 ms.','2015-01-20 19:18:54'),(10,2,'27.32.44.176','ZXLSCLYG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1516 ms.','2015-01-21 19:18:00'),(11,2,'27.32.44.176','1BQ7K02U','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1613 ms.','2015-01-21 18:41:12'),(12,2,'27.32.44.176','JTJQCB9L','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1646 ms.','2015-01-20 19:18:54'),(13,2,'27.32.44.176','0C5XAFF6','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1214 ms.','2015-01-21 18:41:12'),(14,2,'27.32.44.176','W13U7IJ7','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1221 ms.','2015-01-18 19:19:13'),(15,2,'27.32.44.176','1V025050','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','3983 ms.','2015-01-20 19:18:54'),(16,2,'27.32.44.176','7MDM2GMO','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2765 ms.','2015-01-21 19:18:00'),(17,2,'27.32.44.176','KMO1TM8M','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1623 ms.','2015-01-21 18:41:12'),(18,2,'27.32.44.176','3RN99MIG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','290 ms.','2015-01-20 19:18:54'),(19,2,'27.32.44.176','J23G239Q','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','622 ms.','2015-01-21 18:41:12'),(20,2,'27.32.44.176','QK3IROGE','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','307 ms.','2015-01-21 19:18:00'),(21,2,'27.32.44.176','N45JWPQY','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','627 ms.','2015-01-18 19:19:13'),(22,2,'27.32.44.176','5ACCWCHG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','330 ms.','2015-01-21 19:18:00'),(23,2,'27.32.44.176','ZBV4H8SA','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'BSD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','689 ms.','2015-01-21 18:41:12'),(24,2,'27.32.44.176','7EHO7P4I','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'BSD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','421 ms.','2015-01-20 19:18:54'),(25,2,'27.32.44.176','HDM0F9RP','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.61,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','706 ms.','2015-01-21 18:41:12'),(26,2,'27.32.44.176','5669NEKK','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','280 ms.','2015-01-21 20:38:24'),(27,2,'27.32.44.176','OCEXSY0W','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',150.000,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','281 ms.','2015-01-20 19:18:54'),(28,2,'27.32.44.176','SSWQJ4J3','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/8.0.2 Safari/600.2.5','en-us',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','289 ms.','2015-01-18 19:19:13'),(29,2,'27.32.44.176','3VTD2WJZ','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/8.0.2 Safari/600.2.5','en-us',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','279 ms.','2015-01-21 18:41:12'),(30,2,'27.32.44.176','QHB3RQNS','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','269 ms.','2015-01-20 19:18:54'),(31,2,'27.32.44.176','JPBM02CW','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','270 ms.','2015-01-21 18:41:12'),(32,2,'27.32.44.176','5QVDJ68H','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','271 ms.','2015-01-21 19:18:00'),(33,2,'27.32.44.176','ER3ZALW2','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','277 ms.','2015-01-20 19:18:54'),(34,2,'27.32.44.176','QLALIT8A','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','253 ms.','2015-01-21 19:18:00'),(35,2,'27.32.44.176','KO0DH66Z','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','275 ms.','2015-01-18 19:19:13'),(36,2,'27.32.44.176','NCMDV07B','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',23.200,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','295 ms.','2015-01-20 19:18:54'),(37,2,'27.32.44.176','C26QSXYN','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/8.0.2 Safari/600.2.5','en-us',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','283 ms.','2015-01-21 18:41:12'),(38,2,'27.32.44.176','Z6UMLX0G','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','272 ms.','2015-01-21 19:18:00'),(39,2,'27.32.44.176','4QO7VW22','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',530.960,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1519 ms.','2015-01-20 19:18:54'),(40,2,'27.32.44.176','F25J65PG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',530.960,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1195 ms.','2015-01-21 19:18:00'),(41,2,'27.32.44.176','IVDZQW0U','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',530.960,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1240 ms.','2015-01-21 18:41:12'),(42,2,'27.32.44.176','4DAR2K8H','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',532.960,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1445 ms.','2015-01-18 19:19:13'),(43,2,'27.32.44.176','NF1XOJ21','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',532.960,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1632 ms.','2015-01-21 18:41:12'),(44,2,'27.32.44.176','H6AA686B','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2303 ms.','2015-01-21 20:38:13'),(45,2,'27.32.44.176','LJ86EMO0','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.48,'Yes','No',11,4,'Rockdale','02','New South Wales','36',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',26,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1426 ms.','2015-01-23 17:22:58'),(46,2,'27.32.44.176','9S75HC5A','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.48,'Yes','No',11,4,'Rockdale','02','New South Wales','36',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',26,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1695 ms.','2015-01-23 18:12:00');
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'IPG'
--

--
-- Dumping routines for database 'IPG'
--
/*!50003 DROP PROCEDURE IF EXISTS `PROC_DELETE_COUNTRY_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_DELETE_COUNTRY_RESTRICTION`(
INOUT `P_Core_ID` bigint(20))
BEGIN
	
    UPDATE `IPG`.`CountryRestriction`
		SET
		`Core_Status` = '1'
		WHERE `Core_ID` = P_Core_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_DELETE_MERCHANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_DELETE_MERCHANT`(
INOUT `P_Merc_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`Merchant`
	SET `Merc_Status` = '1'
	WHERE `Merc_ID` = P_Merc_ID;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_DELETE_MERCHANT_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_DELETE_MERCHANT_RESTRICTION`(
INOUT `P_Mere_ID` bigint(20))
BEGIN
	
    UPDATE `IPG`.`MerchantRestriction`
		SET
		`Mere_Status` = '1'
		WHERE `Mere_ID` = P_Mere_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_DELETE_PLAN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_DELETE_PLAN`(
INOUT `P_Plan_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`Plan`
		SET
		`Plan_Status` = '1'
		WHERE `Plan_ID` = P_Plan_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_DELETE_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_DELETE_SUBSCRIPTION`(
INOUT `P_Subs_ID`	bigint(20))
BEGIN	
    UPDATE `IPG`.`Subscription`
	SET
	`Subs_StatusRow` = '1'	
	WHERE `Subs_ID` = P_Subs_ID;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_CARD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_CARD`(
`P_Cust_ID`	bigint(20),
`P_Card_IDStripe`	char(50),
`P_Card_Brand`	char(20),
`P_Card_ExpMonth`	int(2),
`P_Card_ExpYear`	int(2),
`P_Card_FingerPrint`	char(20),
`P_Card_Funding`	char(20),
`P_Card_Number` char(50),
`P_Card_Last4`	int(4),
`P_Card_AddressCity`	char(50),
`P_Card_AddressCountry`	char(50),
`P_Card_AddressState`	char(50),
`P_Card_AddressLine1`	char(50),
`P_Card_AddressLine2`	char(50),
`P_Card_AddressZip`	int(10),
`P_Card_Country`	char(3),
`P_Card_BlackListed`	enum('','Yes','No'),
`P_Card_BlackListedReason`	varchar(100),
`P_Card_BlackListedCreateTime`	datetime,
INOUT `P_Card_ID`	bigint(20))
BEGIN
	
    SET P_Card_ID = (SELECT `Card_Id`  FROM `IPG`.`Card` WHERE `Card_Number` = P_Card_Number);
    IF (P_Card_ID IS NULL) THEN 
    
		INSERT INTO `IPG`.`Card`
			(`Cust_ID`,
			`Card_IDStripe`,
			`Card_Brand`,
			`Card_ExpMonth`,
			`Card_ExpYear`,
			`Card_FingerPrint`,
			`Card_Funding`,
            `Card_Number`,
			`Card_Last4`,
			`Card_AddressCity`,
			`Card_AddressCountry`,
			`Card_AddressState`,
			`Card_AddressLine1`,
			`Card_AddressLine2`,
			`Card_AddressZip`,
			`Card_Country`,
			`Card_BlackListed`,
			`Card_BlackListedReason`,
			`Card_BlackListedCreateTime`)
		VALUES
			(P_Cust_ID,
			P_Card_IDStripe,
			P_Card_Brand,
			P_Card_ExpMonth,
			P_Card_ExpYear,
			P_Card_FingerPrint,
			P_Card_Funding,
            P_Card_Number,
			P_Card_Last4,
			P_Card_AddressCity,
			P_Card_AddressCountry,
			P_Card_AddressState,
			P_Card_AddressLine1,
			P_Card_AddressLine2,
			P_Card_AddressZip,
			P_Card_Country,
			P_Card_BlackListed,
			P_Card_BlackListedReason,
			P_Card_BlackListedCreateTime);

		SET P_Card_ID = (SELECT LAST_INSERT_ID());
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_CHARGE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_CHARGE`(
`P_Tran_ID`	bigint(20),
`P_Card_ID`	bigint(20),
`P_Char_IDStripe` varchar(50),
`P_Invo_ID`	bigint(20),
`P_Addr_ID`	bigint(20),
`P_Char_Amount`	decimal(20,3),
`P_Char_Captured`	tinyint(1),
`P_Char_CreateTime`	datetime,
`P_Char_Currency`	char(3),
`P_Char_Paid`	tinyint(1),
`P_Char_Refunded`	tinyint(1),
`P_Char_FailureCode`	char(50),
`P_Char_FailureMessage`	char(150),
`P_Char_ReceiptEmail`	char(50),
`P_Char_ReceiptNumber`	char(50),
`P_Char_ProcessTime` char(20),
INOUT `P_Char_ID`	bigint(20))
BEGIN
	INSERT INTO `IPG`.`Charge`
		(`Tran_ID`,
		`Card_ID`,
		`Invo_ID`,
		`Addr_ID`,
        `Char_IDStripe`,
		`Char_Amount`,
		`Char_Captured`,
		`Char_CreateTime`,
		`Char_Currency`,
		`Char_Paid`,
		`Char_Refunded`,
		`Char_FailureCode`,
		`Char_FailureMessage`,
		`Char_ReceiptEmail`,
		`Char_ReceiptNumber`,
        `Char_ProcessTime`)
		VALUES
		(P_Tran_ID,
		P_Card_ID,
		P_Invo_ID,
		P_Addr_ID,
        P_Char_IDStripe,
		P_Char_Amount,
		P_Char_Captured,
		now(),
		P_Char_Currency,
		P_Char_Paid,
		P_Char_Refunded,
		P_Char_FailureCode,
		P_Char_FailureMessage,
		P_Char_ReceiptEmail,
		P_Char_ReceiptNumber,
        P_Char_ProcessTime);

	SET P_Char_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_COUNTRY_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_COUNTRY_RESTRICTION`(
`P_Coun_Numeric` int(5),
`P_Core_Value` int(5),
`P_Core_Concept` varchar(50),
`P_Core_TimeUnit` varchar(50),
INOUT `P_Core_ID` bigint(20))
BEGIN

	INSERT INTO `IPG`.`CountryRestriction`
		(`Coun_Numeric`,
		`Core_Value`,
		`Core_Concept`,
		`Core_TimeUnit`,
        `Core_CreateTime`)
		VALUES
		(P_Coun_Numeric,
		P_Core_Value,
		P_Core_Concept,
		P_Core_TimeUnit,
		now());
		SET P_Core_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_CUSTOMER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_CUSTOMER`(
`P_Cust_CreateTime`	datetime,
`P_Cust_Email`	char(30),
`P_Cust_PhoneNumber`	char(20),
INOUT `P_Cust_ID`	bigint(20))
BEGIN
    SET P_Cust_ID = (SELECT `Cust_ID`  FROM `IPG`.`Customer` WHERE `Cust_Email` = P_Cust_Email);
    IF (P_Cust_ID IS NULL) THEN 
		
		INSERT INTO `IPG`.`Customer`
			(`Cust_CreateTime`,
			`Cust_Email`,
			`Cust_PhoneNumber`)
		VALUES
			(now(),
			P_Cust_Email,
			P_Cust_PhoneNumber);

		SET P_Cust_ID = (SELECT LAST_INSERT_ID());
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_MERCHANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_MERCHANT`(
`P_Coun_Numeric` int(5),
`P_Merc_Name` varchar(50),
INOUT `P_Merc_ID` bigint(20))
BEGIN
	INSERT INTO `IPG`.`Merchant`
		(`Coun_Numeric`,
        `Merc_Name`,
		`Merc_CreateTime`)
		VALUES
		(P_Coun_Numeric,
        P_Merc_Name,
		NOW());
        SET P_Merc_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_MERCHANT_CONFIGURATION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_MERCHANT_CONFIGURATION`(
`P_Merc_ID`	bigint(20),
`P_Meco_UrlDeny`	varchar(100),
`P_Meco_UrlApproved`	varchar(100),
`P_Meco_PasswordKeyStore`	varchar(50),
`P_Meco_PrivacyKeyStore`	varchar(50),
`P_Meco_Passwordkey`	varchar(50),
`P_Meco_keyName`	varchar(50),
INOUT `P_Meco_ID`	bigint(20))
BEGIN
	INSERT INTO `IPG`.`MerchantConfiguration`
	(`Merc_ID`,
	`Meco_UrlDeny`,
	`Meco_UrlApproved`,
	`Meco_PasswordKeyStore`,
	`Meco_PrivacyKeyStore`,
	`Meco_Passwordkey`,
	`Meco_keyName`,
    `Meco_CreateTime`)
	VALUES
	(P_Merc_ID,
	P_Meco_UrlDeny,
	P_Meco_UrlApproved,
	P_Meco_PasswordKeyStore,
	P_Meco_PrivacyKeyStore,
	P_Meco_Passwordkey,
	P_Meco_keyName,
	NOW());
	SET P_Meco_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_MERCHANT_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_MERCHANT_RESTRICTION`(
`P_Merc_ID` bigint(20),
`P_Mere_Value` int(5),
`P_Mere_Concept` ENUM('Amount','Transactions'),
`P_Mere_TimeUnit` varchar(50),
INOUT `P_Mere_ID` bigint(20))
BEGIN
	INSERT INTO `IPG`.`MerchantRestriction`
		(`Merc_ID`,
		`Mere_Value`,
		`Mere_Concept`,
		`Mere_TimeUnit`,
        `Mere_CreateTime`)
		VALUES
		(P_Merc_ID,
		P_Mere_Value,
		P_Mere_Concept,
		P_Mere_TimeUnit,
		now());
		SET P_Mere_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_PLAN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_PLAN`(
`P_Plan_Amount` decimal(20,0),
`P_Plan_CreateTime` datetime,
`P_Plan_Currency` char(3),
`P_Plan_Interval` enum('Day','Week','Month','Year'),
`P_Plan_IntervalCount` int(4),
`P_Plan_Name` varchar(50),
`P_Plan_TrialPeriodDays` int(4),
`P_Plan_StatementDescriptor` varchar(200),
INOUT `P_Plan_ID` bigint(20))
BEGIN
	INSERT INTO `IPG`.`Plan`
		(`Plan_Amount`,
		`Plan_CreateTime`,
		`Plan_Currency`,
		`Plan_Interval`,
		`Plan_IntervalCount`,
		`Plan_Name`,
		`Plan_TrialPeriodDays`,
		`Plan_StatementDescriptor`)
		VALUES
		(P_Plan_Amount,
		NOW(),
		P_Plan_Currency,
		P_Plan_Interval,
		P_Plan_IntervalCount,
		P_Plan_Name,
		P_Plan_TrialPeriodDays,
		P_Plan_StatementDescriptor);
        SET P_Plan_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_REFUND` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_REFUND`(	
`P_Char_ID`	bigint(20),
`P_Refu_IDStripe` char(50),
`P_Refu_Amount`	decimal(20,3),
`P_Refu_Currency`	char(3),
`P_Refu_BalanceTransaction`	char(50),
`P_Refu_Reason`	char(100),
`P_Refu_ReceiptNumber`	char(50),
`P_Tran_ID`	bigint(20),
INOUT `P_Refu_ID` bigint(20))
BEGIN
	INSERT INTO `IPG`.`Refund`
	(`Char_ID`,
    `Refu_IDStripe`,
	`Refu_Amount`,
	`Refu_CreateTime`,
	`Refu_Currency`,
	`Refu_BalanceTransaction`,
	`Refu_Reason`,
	`Refu_ReceiptNumber`,
	`Tran_ID`)
	VALUES
	(P_Char_ID,
    P_Refu_IDStripe,
	P_Refu_Amount,
	NOW(),
	P_Refu_Currency,
	P_Refu_BalanceTransaction,
	P_Refu_Reason,
	P_Refu_ReceiptNumber,
	P_Tran_ID);
    SET P_Refu_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_SUBSCRIPTION`(
`P_Plan_ID`	bigint(20),
`P_Cust_ID`	bigint(20),
`P_Disc_ID`	bigint(20),
`P_Subs_CancelAtPeriodEnd`	tinyint(1),
`P_Subs_Quantity`	int(4),
`P_Subs_Start`	datetime,
`P_Subs_Status`	enum('Trialing','Active','Past_due','Canceled','Unpaid'),
`P_Subs_ApplicationFeePercent`	decimal(5,2),
`P_Subs_CanceledAt`	datetime,
`P_Subs_CurrentPeriodStart`	datetime,
`P_Subs_TrialEnd`	datetime,
`P_Subs_EndedAt`	datetime,
`P_Subs_TrialStart`	datetime,
`P_Subs_TaxPercent`	decimal(3,2),
`P_Subs_CurrentPeriodEnd`	datetime,
INOUT `P_Subs_ID`	bigint(20))
BEGIN	
    INSERT INTO `IPG`.`Subscription`
	(`Plan_ID`,
	`Cust_ID`,
	`Disc_ID`,
	`Subs_CancelAtPeriodEnd`,
	`Subs_Quantity`,
	`Subs_Start`,
	`Subs_Status`,
	`Subs_ApplicationFeePercent`,
	`Subs_CanceledAt`,
	`Subs_CurrentPeriodStart`,
    `Subs_CurrentPeriodEnd`,
	`Subs_TrialEnd`,
	`Subs_EndedAt`,
	`Subs_TrialStart`,
	`Subs_TaxPercent`,
	`Subs_CreationTime`)
	VALUES
	(P_Plan_ID,
	P_Cust_ID,
	P_Disc_ID,
	P_Subs_CancelAtPeriodEnd,
	P_Subs_Quantity,
	P_Subs_Start,
	P_Subs_Status,
	P_Subs_ApplicationFeePercent,
	P_Subs_CanceledAt,
	P_Subs_CurrentPeriodStart,
    P_Subs_CurrentPeriodEnd,
	P_Subs_TrialEnd,
	P_Subs_EndedAt,
	P_Subs_TrialStart,
	P_Subs_TaxPercent,
	now());
	SET P_Subs_ID = (SELECT LAST_INSERT_ID());    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_TRANSACTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_TRANSACTION`(
`P_Tran_IP` varchar(20),
`P_Tran_MaxmindID` char(8),
`P_Tran_BillingAddressCity` char(20),
`P_Tran_BillingAddressRegion` char(20),
`P_Tran_BillingAddressPostal` char(20),
`P_Tran_BillingAddressCountry` char(20),
`P_Tran_ShippingAddress` char(100),
`P_Tran_ShippingAddressCity` char(100),
`P_Tran_ShippingAddressRegion` char(100),
`P_Tran_ShippingAddressPostal` char(100),
`P_Tran_ShippingAddressCountry` char(100),
`P_Tran_Domain` char(50),
`P_Tran_CustomerPhone` char(20),
`P_Tran_EmailMD5` char(32),
`P_Tran_UsernameMD5` char(32),
`P_Tran_Bin` char(6),
`P_Tran_BinName` char(50),
`P_Tran_BinPhone` char(20) ,
`P_Tran_UserAgent` char(200),
`P_Tran_AcceptLanguage` char(200),
`P_Tran_OrderAmount` decimal(20,3),
`P_Tran_OrderCurrency` char(3),
`P_Merc_ID` bigint(20),
`P_Tran_TxnType` enum('creditcard','debitcard','paypal','google – Google checkout','other','lead – lead generation','survey – online survey','sitereg – site registration'),
`P_Tran_CVVResult` enum('Y','N'),
`P_Tran_RequestedType` enum('standard','premium'),
`P_Tran_RiskScore` decimal(5,2),
`P_Tran_CountryMatch` enum('Yes','No'),
`P_Tran_HighRiskCountry` enum('Yes','No'),
`P_Tran_Distance` bigint(20),
`P_Tran_IPAccuracyRadius` bigint(20),
`P_Tran_IPCity` char(20),
`P_Tran_IPRegion` char(2),
`P_Tran_IPRegionName` char(100),
`P_Tran_IPPostalCode` char(20),
`P_Tran_IPMetroCode` bigint(20),
`P_Tran_IPAreaCode` char(50),
`P_Tran_CountryCode` char(2),
`P_Tran_IPCountryName` char(100),
`P_Tran_IPContinentCode` char(2),
`P_Tran_IPLatitude` bigint(20),
`P_Tran_IPLongitude` bigint(20),
`P_Tran_IPTimeZone` char(50) ,
`P_Tran_IPAsnum` char(50) ,
`P_Tran_IPUserType` enum('business','cafe','cellular','college','contentDeliveryNetwork','government','hosting','library','military','residential','router','school','searchEngineSpider','traveler'),
`P_Tran_IPNetSpeedCell` enum('Dialup','Cable/DSL','Corporate','Cellular'),
`P_Tran_IPDomain` char(50),
`P_Tran_IPIsp` char(20),
`P_Tran_IPOrg` char(50),
`P_Tran_IPCityConf` bigint(20),
`P_Tran_IPRegionConf` bigint(3),
`P_Tran_IPPostalConf` bigint(3),
`P_Tran_IPCountryConf` bigint(3),
`P_Tran_AnonymousProxy` enum('Yes','No'),
`P_Tran_ProxyScore` decimal(2,2),
`P_Tran_IPCorporateProxy` enum('Yes','No'),
`P_Tran_FreeMail` enum('Yes','No'),
`P_Tran_CarderEmail` enum('Yes','No'),
`P_Tran_BinMatch` enum('Yes','No','NotFound','NA'),
`P_Tran_BinCountry` char(2),
`P_Tran_BinNameMatch` enum('Yes','No','NotFound','NA'),
`P_Tran_BinPhoneMatch` enum('Yes','No','NotFound','NA'),
`P_Tran_Prepaid` enum('','Yes','No'),
`P_Tran_CustPhoneInBillingLoc` enum('','Yes','No','NotFound'),
`P_Tran_ShipForward` enum('Yes','No','NA'),
`P_Tran_CityPostalMatch` enum('','Yes','No'),
`P_Tran_ShipCityPostalMatch` enum('','Yes','No'),
`P_Tran_MinfraudVersion` char(20),
`P_Tran_ServiceLevel` enum('','standard','premium'),
`P_Tran_Error` enum('','INVALID_LICENSE_KEY','IP_REQUIRED','IP_NOT_FOUND','MAX_REQUESTS_REACHED','LICENSE_REQUIRED','COUNTRY_NOT_FOUND','CITY_NOT_FOUND','CITY_REQUIRED','INVALID_EMAIL_MD5','POSTAL_CODE_REQUIRED','POSTAL_CODE_NOT_FOUND'),
`P_Tran_ProcessTime` char(20),
INOUT  `P_Tran_ID` bigint(20))
BEGIN

	INSERT INTO `IPG`.`Transaction`
		(`Tran_IP`,
		`Tran_MaxmindID`,
		`Tran_BillingAddressCity`,
		`Tran_BillingAddressRegion`,
		`Tran_BillingAddressPostal`,
		`Tran_BillingAddressCountry`,
		`Tran_ShippingAddress`,
		`Tran_ShippingAddressCity`,
		`Tran_ShippingAddressRegion`,
		`Tran_ShippingAddressPostal`,
		`Tran_ShippingAddressCountry`,
		`Tran_Domain`,
		`Tran_CustomerPhone`,
		`Tran_EmailMD5`,
		`Tran_UsernameMD5`,
		`Tran_Bin`,
		`Tran_BinName`,
		`Tran_BinPhone`,
		`Tran_UserAgent`,
		`Tran_AcceptLanguage`,
		`Tran_OrderAmount`,
		`Tran_OrderCurrency`,
		`Merc_ID`,
		`Tran_TxnType`,
		`Tran_CVVResult`,
		`Tran_RequestedType`,
		`Tran_RiskScore`,
		`Tran_CountryMatch`,
		`Tran_HighRiskCountry`,
		`Tran_Distance`,
		`Tran_IPAccuracyRadius`,
		`Tran_IPCity`,
		`Tran_IPRegion`,
		`Tran_IPRegionName`,
		`Tran_IPPostalCode`,
		`Tran_IPMetroCode`,
		`Tran_IPAreaCode`,
		`Tran_CountryCode`,
		`Tran_IPCountryName`,
		`Tran_IPContinentCode`,
		`Tran_IPLatitude`,
		`Tran_IPLongitude`,
		`Tran_IPTimeZone`,
		`Tran_IPAsnum`,
		`Tran_IPUserType`,
		`Tran_IPNetSpeedCell`,
		`Tran_IPDomain`,
		`Tran_IPIsp`,
		`Tran_IPOrg`,
		`Tran_IPCityConf`,
		`Tran_IPRegionConf`,
		`Tran_IPPostalConf`,
		`Tran_IPCountryConf`,
		`Tran_AnonymousProxy`,
		`Tran_ProxyScore`,
		`Tran_IPCorporateProxy`,
		`Tran_FreeMail`,
		`Tran_CarderEmail`,
		`Tran_BinMatch`,
		`Tran_BinCountry`,
		`Tran_BinNameMatch`,
		`Tran_BinPhoneMatch`,
		`Tran_Prepaid`,
		`Tran_CustPhoneInBillingLoc`,
		`Tran_ShipForward`,
		`Tran_CityPostalMatch`,
		`Tran_ShipCityPostalMatch`,
		`Tran_MinfraudVersion`,
		`Tran_ServiceLevel`,
        `Tran_ProcessTime`,
		`Tran_Error`)
	VALUES
		(P_Tran_IP,
		P_Tran_MaxmindID,
		P_Tran_BillingAddressCity,
		P_Tran_BillingAddressRegion,
		P_Tran_BillingAddressPostal,
		P_Tran_BillingAddressCountry,
		P_Tran_ShippingAddress,
		P_Tran_ShippingAddressCity,
		P_Tran_ShippingAddressRegion,
		P_Tran_ShippingAddressPostal,
		P_Tran_ShippingAddressCountry,
		P_Tran_Domain,
		P_Tran_CustomerPhone,
		P_Tran_EmailMD5,
		P_Tran_UsernameMD5,
		P_Tran_Bin,
		P_Tran_BinName,
		P_Tran_BinPhone,
		P_Tran_UserAgent,
		P_Tran_AcceptLanguage,
		P_Tran_OrderAmount,
		P_Tran_OrderCurrency,
		P_Merc_ID,
		P_Tran_TxnType,
		P_Tran_CVVResult,
		P_Tran_RequestedType,
		P_Tran_RiskScore,
		P_Tran_CountryMatch,
		P_Tran_HighRiskCountry,
		P_Tran_Distance,
		P_Tran_IPAccuracyRadius,
		P_Tran_IPCity,
		P_Tran_IPRegion,
		P_Tran_IPRegionName,
		P_Tran_IPPostalCode,
		P_Tran_IPMetroCode,
		P_Tran_IPAreaCode,
		P_Tran_CountryCode,
		P_Tran_IPCountryName,
		P_Tran_IPContinentCode,
		P_Tran_IPLatitude,
		P_Tran_IPLongitude,
		P_Tran_IPTimeZone,
		P_Tran_IPAsnum,
		P_Tran_IPUserType,
		P_Tran_IPNetSpeedCell,
		P_Tran_IPDomain,
		P_Tran_IPIsp,
		P_Tran_IPOrg,
		P_Tran_IPCityConf,
		P_Tran_IPRegionConf,
		P_Tran_IPPostalConf,
		P_Tran_IPCountryConf,
		P_Tran_AnonymousProxy,
		P_Tran_ProxyScore,
		P_Tran_IPCorporateProxy,
		P_Tran_FreeMail,
		P_Tran_CarderEmail,
		P_Tran_BinMatch,
		P_Tran_BinCountry,
		P_Tran_BinNameMatch,
		P_Tran_BinPhoneMatch,
		P_Tran_Prepaid,
		P_Tran_CustPhoneInBillingLoc,
		P_Tran_ShipForward,
		P_Tran_CityPostalMatch,
		P_Tran_ShipCityPostalMatch,
		P_Tran_MinfraudVersion,
		P_Tran_ServiceLevel,
        P_Tran_ProcessTime,
		P_Tran_Error);

	SET P_Tran_ID = (SELECT LAST_INSERT_ID());

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CHARGE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CHARGE`()
BEGIN
	SELECT A.*, IFNULL(B.REFUND,0) REFUND FROM (SELECT `Charge`.`Char_ID`,
			`Charge`.`Card_ID`,
			`Charge`.`Char_IDStripe`,
			`Card`.`Card_Brand`,
			`Card`.`Card_Funding`,
			`Card`.`Card_Last4`,
			`Charge`.`Tran_ID`,
			`Charge`.`Invo_ID`,
			`Charge`.`Addr_ID`,
			`Charge`.`Char_Amount`,
			`Charge`.`Char_Captured`,
			`Charge`.`Char_CreateTime`,
			`Charge`.`Char_Currency`,
			`Charge`.`Char_Paid`,
			`Charge`.`Char_Refunded`,
			`Charge`.`Char_FailureCode`,
			`Charge`.`Char_FailureMessage`,
			`Charge`.`Char_ReceiptEmail`,
			`Charge`.`Char_ReceiptNumber`,   
			`Charge`.`Char_ProcessTime` 
		FROM `IPG`.`Charge`, `IPG`.`Card`
		WHERE `Charge`.`Card_ID` = `Card`.`Card_ID`) A LEFT OUTER JOIN(select Char_ID, sum(Refu_Amount) REFUND from `IPG`.`Refund` group by Char_ID) B
        on A.Char_ID = B.Char_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_COUNTRIES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_COUNTRIES`()
BEGIN
	SELECT * FROM IPG.Country
    ORDER BY COUN_NAME;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_COUNTRY_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_COUNTRY_RESTRICTION`()
BEGIN
	SELECT A.*, B.Coun_Name
	FROM `IPG`.`CountryRestriction` A, `IPG`.`Country` B
	WHERE Core_Status <> '1'
	AND A.Coun_Numeric = B.Coun_Numeric;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT`()
BEGIN
	SELECT A.*, B.Coun_Name FROM IPG.Merchant A, IPG.Country B
    WHERE `Merc_Status` = '0'
    AND A.Coun_Numeric = B.Coun_Numeric
    ORDER BY Merc_NAME;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_CONFIGURATION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_CONFIGURATION`()
BEGIN
	SELECT A.Merc_Name, B.* FROM IPG.Merchant A, IPG.MerchantConfiguration B
    WHERE A.Merc_ID = B.Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_CONFIGURATION_DETAIL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_CONFIGURATION_DETAIL`(
`P_Meco_ID` bigint(20))
BEGIN
	SELECT A.Merc_Name, B.* FROM IPG.Merchant A, IPG.MerchantConfiguration B
    WHERE `Meco_ID` = P_Meco_ID
    AND A.Merc_ID = B.Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_CONFIGURATION_DETAIL_BY_MERCHANT_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_CONFIGURATION_DETAIL_BY_MERCHANT_ID`(
`P_Merc_ID` bigint(20))
BEGIN
	SELECT B.* FROM IPG.MerchantConfiguration B
    WHERE `Merc_ID` = P_Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_DETAIL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_DETAIL`(
`P_Merc_ID` bigint(20))
BEGIN
	SELECT A.*, B.Coun_Name FROM IPG.Merchant A, IPG.Country B
    WHERE `Merc_Status` = '0'
    AND `Merc_ID` = P_Merc_ID
    AND A.Coun_Numeric = B.Coun_Numeric;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_RESTRICTION`()
BEGIN
	SELECT A.*, B.Merc_Name
	FROM `IPG`.`MerchantRestriction` A, `IPG`.`Merchant` B
	WHERE Mere_Status <> '1'
	AND A.Merc_ID = B.Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_RESTRICTION_BY_MERCHANT_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_RESTRICTION_BY_MERCHANT_ID`(
`P_Merc_ID` bigint(20))
BEGIN
	SELECT * FROM `IPG`.`MerchantRestriction`
	WHERE Mere_Status <> '1'
	AND Merc_ID = P_Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_PLAN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_PLAN`()
BEGIN
	SELECT * FROM IPG.Plan
    WHERE Plan_Status = '0'; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_REFUND` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_REFUND`(
`P_Char_ID` bigint(20))
BEGIN
	SELECT * FROM IPG.Refund
	WHERE Char_ID = P_Char_ID
    ORDER BY `Refu_CreateTime` DESC ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_SUBSCRIPTION`()
BEGIN
	SELECT A.*, B.Plan_Name FROM IPG.Subscription A, IPG.Plan B
    WHERE Subs_StatusRow <> '1'
    AND A.Plan_ID = B.Plan_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_COUNTRY_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_COUNTRY_RESTRICTION`(
`P_Coun_Numeric` int(5),
`P_Core_Value` int(5),
`P_Core_Concept` varchar(50),
`P_Core_TimeUnit` varchar(50),
INOUT `P_Core_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`CountryRestriction`
	SET
	`Coun_Numeric` = P_Coun_Numeric,
	`Core_Value` = P_Core_Value,
	`Core_Concept` = P_Core_Concept,
	`Core_TimeUnit` = P_Core_TimeUnit,
    `Core_CreateTime` = NOW()
	WHERE `Core_ID` = P_Core_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_MERCHANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_MERCHANT`(
`P_Coun_Numeric` int(5),
`P_Merc_Name` varchar(50),
INOUT `P_Merc_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`Merchant`
	SET `Coun_Numeric` = P_Coun_Numeric,
    `Merc_Name` = P_Merc_Name,
    `Merc_CreateTime` = now()
	WHERE `Merc_ID` = P_Merc_ID;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_MERCHANT_CONFIGURATION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_MERCHANT_CONFIGURATION`(
`P_Merc_ID`	bigint(20),
`P_Meco_UrlDeny`	varchar(100),
`P_Meco_UrlApproved`	varchar(100),
`P_Meco_PasswordKeyStore`	varchar(50),
`P_Meco_PrivacyKeyStore`	varchar(50),
`P_Meco_Passwordkey`	varchar(50),
`P_Meco_keyName`	varchar(50),
INOUT `P_Meco_ID`	bigint(20))
BEGIN
	UPDATE `IPG`.`MerchantConfiguration`
	SET `Meco_UrlDeny` = P_Meco_UrlDeny,
	`Meco_UrlApproved` = P_Meco_UrlApproved,
	`Meco_PasswordKeyStore` = P_Meco_PasswordKeyStore,
	`Meco_PrivacyKeyStore` = P_Meco_PrivacyKeyStore,
	`Meco_Passwordkey` = P_Meco_Passwordkey,
	`Meco_keyName` = P_Meco_keyName,
    `Meco_CreateTime` = NOW()
    WHERE `Meco_ID` = P_Meco_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_MERCHANT_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_MERCHANT_RESTRICTION`(
`P_Merc_ID` bigint(20),
`P_Mere_Value` int(5),
`P_Mere_Concept` ENUM('Amount','Transactions'),
`P_Mere_TimeUnit` varchar(50),
INOUT `P_Mere_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`MerchantRestriction`
	SET
	`Merc_ID` = P_Merc_ID,
	`Mere_Value` = P_Mere_Value,
	`Mere_Concept` = P_Mere_Concept,
	`Mere_TimeUnit` = P_Mere_TimeUnit,
    `Mere_CreateTime` = NOW()
	WHERE `Mere_ID` = P_Mere_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_PLAN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_PLAN`(
`P_Plan_Amount` decimal(20,0),
`P_Plan_CreateTime` datetime,
`P_Plan_Currency` char(3),
`P_Plan_Interval` enum('Day','Week','Month','Year'),
`P_Plan_IntervalCount` int(4),
`P_Plan_Name` varchar(50),
`P_Plan_TrialPeriodDays` int(4),
`P_Plan_StatementDescriptor` varchar(200),
INOUT `P_Plan_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`Plan`
		SET
		`Plan_Amount` = P_Plan_Amount,
		`Plan_CreateTime` = P_Plan_CreateTime,
		`Plan_Currency` = P_Plan_Currency,
		`Plan_Interval` = P_Plan_Interval,
		`Plan_IntervalCount` = P_Plan_IntervalCount,
		`Plan_Name` = P_Plan_Name,
		`Plan_TrialPeriodDays` = P_Plan_TrialPeriodDays,
		`Plan_StatementDescriptor` = P_Plan_StatementDescriptor
		WHERE `Plan_ID` = P_Plan_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_SUBSCRIPTION`(
`P_Plan_ID`	bigint(20),
`P_Cust_ID`	bigint(20),
`P_Disc_ID`	bigint(20),
`P_Subs_CancelAtPeriodEnd`	tinyint(1),
`P_Subs_Quantity`	int(4),
`P_Subs_Start`	datetime,
`P_Subs_Status`	enum('Trialing','Active','Past_due','Canceled','Unpaid'),
`P_Subs_ApplicationFeePercent`	decimal(5,2),
`P_Subs_CanceledAt`	datetime,
`P_Subs_CurrentPeriodStart`	datetime,
`P_Subs_TrialEnd`	datetime,
`P_Subs_EndedAt`	datetime,
`P_Subs_TrialStart`	datetime,
`P_Subs_TaxPercent`	decimal(3,2),
`P_Subs_CurrentPeriodEnd`	datetime,
INOUT `P_Subs_ID`	bigint(20))
BEGIN	
    UPDATE `IPG`.`Subscription`
	SET
	`Plan_ID` = P_Plan_ID,
	`Cust_ID` = P_Cust_ID,
	`Disc_ID` = P_Disc_ID,
	`Subs_CancelAtPeriodEnd` = P_Subs_CancelAtPeriodEnd,
	`Subs_Quantity` = P_Subs_Quantity,
	`Subs_Start` = P_Subs_Start,
	`Subs_Status` = P_Subs_Status,
	`Subs_ApplicationFeePercent` = P_Subs_ApplicationFeePercent,
	`Subs_CanceledAt` = P_Subs_CanceledAt,
	`Subs_CurrentPeriodStart` = P_Subs_CurrentPeriodStart,
    `Subs_CurrentPeriodEnd` = P_Subs_CurrentPeriodEnd,
	`Subs_TrialEnd` = P_Subs_TrialEnd,
	`Subs_EndedAt` = P_Subs_EndedAt,
	`Subs_TrialStart` = P_Subs_TrialStart,
	`Subs_TaxPercent` = P_Subs_TaxPercent,
	`Subs_CreationTime` = now()
	WHERE `Subs_ID` = P_Subs_ID;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_VERIFY_MERCHANT_RESTRICTION_BY_AMOUNT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_VERIFY_MERCHANT_RESTRICTION_BY_AMOUNT`(
`P_Merc_ID`	bigint(20),
`P_Mere_TimeUnit` varchar(50))
BEGIN
	SELECT SUM(Tran_OrderAmount) Amount_Transactions, Merc_ID, (now() - INTERVAL P_Mere_TimeUnit MINUTE) Since, NOW() 'To'
	FROM IPG.Transaction
	WHERE Tran_CreateTime BETWEEN (now() - INTERVAL P_Mere_TimeUnit MINUTE) AND now()
	AND Merc_ID = P_Merc_ID
	GROUP BY Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_VERIFY_MERCHANT_RESTRICTION_BY_TRANSACTIONS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_VERIFY_MERCHANT_RESTRICTION_BY_TRANSACTIONS`(
`P_Merc_ID`	bigint(20),
`P_Mere_TimeUnit` varchar(50))
BEGIN
	SELECT count(*) Number_Transactions ,Merc_ID, (now() - INTERVAL P_Mere_TimeUnit MINUTE) Since, NOW() 'To'
	FROM IPG.Transaction
	WHERE Tran_CreateTime BETWEEN (now() - INTERVAL P_Mere_TimeUnit MINUTE) AND now()
	AND Merc_ID = P_Merc_ID
	GROUP BY Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-25 11:48:09
