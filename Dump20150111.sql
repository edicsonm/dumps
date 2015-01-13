-- MySQL dump 10.13  Distrib 5.6.19, for Linux (x86_64)
--
-- Host: merchant.billingbuddy.com    Database: Merchant
-- ------------------------------------------------------
-- Server version	5.6.22

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
  CONSTRAINT `FK_Charge_Address` FOREIGN KEY (`Addr_ID`) REFERENCES `Address` (`Addr_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Charge_Card` FOREIGN KEY (`Card_ID`) REFERENCES `Card` (`Card_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Charge_Transaction` FOREIGN KEY (`Tran_ID`) REFERENCES `Transaction` (`Tran_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Charges_Invoice` FOREIGN KEY (`Invo_ID`) REFERENCES `Invoice` (`Invo_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Charge`
--

LOCK TABLES `Charge` WRITE;
/*!40000 ALTER TABLE `Charge` DISABLE KEYS */;
INSERT INTO `Charge` VALUES (25,34,2,'ch_14yFyy7eZvKYlo9CQylnRjiq',NULL,NULL,55076,0,'2014-12-25 15:11:25','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(26,35,2,'ch_14yFyy7eZvKYlo9CQylnRjic',NULL,NULL,55076,0,'2014-12-25 15:11:30','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(27,36,1,'ch_14yFyy2eZvKYlo2CQylnRjiq',NULL,NULL,2320,0,'2014-12-25 15:17:56','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(28,37,1,'ch_14yFyy2eZvKYlo2CQylnRjiw',NULL,NULL,55076,0,'2014-12-25 15:20:14','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(29,38,1,'ch_14yFyy2eZvKYlo2CQylnRjiy',NULL,NULL,55076,0,'2014-12-25 15:44:51','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(30,41,1,'ch_15GLvj2eZvKYlo2CRwWqFIAs',NULL,NULL,53096,0,'2015-01-01 22:17:02','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(31,42,1,'ch_15GMF82eZvKYlo2CHT5NlTYm',NULL,NULL,53296,0,'2015-01-01 22:37:04','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(32,43,1,'ch_15GOhj2eZvKYlo2Chz5zrGfs',NULL,NULL,53296,0,'2015-01-02 01:14:45','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(33,44,1,'ch_15GP5Q2eZvKYlo2C6GYDDBFN',NULL,NULL,55076,0,'2015-01-02 01:39:14','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(34,17,1,'ch_15GPc62eZvKYlo2CVorIWf8M',NULL,NULL,55476,0,'2015-01-02 02:13:00','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(35,17,1,'ch_15GPfu2eZvKYlo2C1FgkRWob',NULL,NULL,55476,0,'2015-01-02 02:17:00','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(36,17,1,'ch_15GPlz2eZvKYlo2CMsT6iCkf',NULL,NULL,55476,0,'2015-01-02 02:23:13','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(37,17,1,'ch_15Gjjs2eZvKYlo2CsbbXHuE9',NULL,NULL,55076,0,'2015-01-02 23:42:26','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(38,17,1,'ch_15Gjon2eZvKYlo2CNnRXjWt1',NULL,NULL,1276,0,'2015-01-02 23:47:30','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(39,17,1,'ch_15Gjru2eZvKYlo2CwkbnrI2o',NULL,NULL,131260,0,'2015-01-02 23:50:40','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(40,17,1,'ch_15Gk3W2eZvKYlo2CFKXqcVGV',NULL,NULL,43266,0,'2015-01-03 00:02:40','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.');
/*!40000 ALTER TABLE `Charge` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscription`
--

LOCK TABLES `Subscription` WRITE;
/*!40000 ALTER TABLE `Subscription` DISABLE KEYS */;
INSERT INTO `Subscription` VALUES (1,1,NULL,NULL,0,1,'2015-01-10 00:00:00','Active',12.00,'2015-01-10 00:00:00','2015-01-10 00:00:00','2015-01-10 00:00:00','2015-01-10 00:00:00','2015-01-10 00:00:00','2015-01-10 00:00:00',0.00,'2015-01-09 20:48:46','0');
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
  `Tran_MerchantID` bigint(20) NOT NULL COMMENT 'Your internal ID for the shop, affiliate, or merchant this order is coming from. Required for minFraud users who are resellers, payment providers, gateways and affiliate networks.',
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
  PRIMARY KEY (`Tran_ID`),
  UNIQUE KEY `Tran_ID` (`Tran_ID`),
  UNIQUE KEY `Tran_MaxmindID` (`Tran_MaxmindID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
INSERT INTO `Transaction` VALUES (1,'27.32.44.176','8C5NWSU2','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,NULL,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','7084 ms.'),(2,'27.32.44.176','6CU4JN7O','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,NULL,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1617 ms.'),(3,'27.32.44.176','Z554FR53','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1542 ms.'),(4,'27.32.44.176','PX02Y4DL','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1513 ms.'),(5,'27.32.44.176','64CEL08V','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1519 ms.'),(6,'27.32.44.176','3H3IQMIC','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1598 ms.'),(7,'27.32.44.176','HG48UZDL','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1574 ms.'),(8,'27.32.44.176','2MCG93IM','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1679 ms.'),(9,'27.32.44.176','KCRUM88K','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1367 ms.'),(10,'27.32.44.176','ZXLSCLYG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1516 ms.'),(11,'27.32.44.176','1BQ7K02U','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1613 ms.'),(12,'27.32.44.176','JTJQCB9L','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1646 ms.'),(13,'27.32.44.176','0C5XAFF6','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1214 ms.'),(14,'27.32.44.176','W13U7IJ7','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1221 ms.'),(15,'27.32.44.176','1V025050','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','3983 ms.'),(16,'27.32.44.176','7MDM2GMO','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2765 ms.'),(17,'27.32.44.176','KMO1TM8M','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1623 ms.'),(18,'27.32.44.176','3RN99MIG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','290 ms.'),(19,'27.32.44.176','J23G239Q','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','622 ms.'),(20,'27.32.44.176','QK3IROGE','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','307 ms.'),(21,'27.32.44.176','N45JWPQY','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','627 ms.'),(22,'27.32.44.176','5ACCWCHG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','330 ms.'),(23,'27.32.44.176','ZBV4H8SA','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'BSD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','689 ms.'),(24,'27.32.44.176','7EHO7P4I','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'BSD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','421 ms.'),(25,'27.32.44.176','HDM0F9RP','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',826188362,NULL,NULL,NULL,0.61,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','706 ms.'),(26,'27.32.44.176','5669NEKK','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','280 ms.'),(27,'27.32.44.176','OCEXSY0W','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',150.000,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','281 ms.'),(28,'27.32.44.176','SSWQJ4J3','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/8.0.2 Safari/600.2.5','en-us',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','289 ms.'),(29,'27.32.44.176','3VTD2WJZ','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/8.0.2 Safari/600.2.5','en-us',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','279 ms.'),(30,'27.32.44.176','QHB3RQNS','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','269 ms.'),(31,'27.32.44.176','JPBM02CW','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','270 ms.'),(32,'27.32.44.176','5QVDJ68H','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','271 ms.'),(33,'27.32.44.176','ER3ZALW2','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','277 ms.'),(34,'27.32.44.176','QLALIT8A','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','253 ms.'),(35,'27.32.44.176','KO0DH66Z','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','275 ms.'),(36,'27.32.44.176','NCMDV07B','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',23.200,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','295 ms.'),(37,'27.32.44.176','C26QSXYN','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/8.0.2 Safari/600.2.5','en-us',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','283 ms.'),(38,'27.32.44.176','Z6UMLX0G','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','272 ms.'),(39,'27.32.44.176','4QO7VW22','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',530.960,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1519 ms.'),(40,'27.32.44.176','F25J65PG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',530.960,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1195 ms.'),(41,'27.32.44.176','IVDZQW0U','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',530.960,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1240 ms.'),(42,'27.32.44.176','4DAR2K8H','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',532.960,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1445 ms.'),(43,'27.32.44.176','NF1XOJ21','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',532.960,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1632 ms.'),(44,'27.32.44.176','H6AA686B','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',826188362,NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2303 ms.');
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'IPG'
--

--
-- Dumping routines for database 'IPG'
--
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
CREATE DEFINER=`root`@`27-32-44-176.static.tpgi.com.au` PROCEDURE `PROC_SAVE_CARD`(
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
`P_Tran_MerchantID` bigint(20),
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
		`Tran_MerchantID`,
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
		P_Tran_MerchantID,
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
`P_Subs_ApplicationFeePercent`	decimal(3,2),
`P_Subs_CanceledAt`	datetime,
`P_Subs_CurrentPeriodStart`	datetime,
`P_Subs_TrialEnd`	datetime,
`P_Subs_EndedAt`	datetime,
`P_Subs_TrialStart`	datetime,
`P_Subs_TaxPercent`	decimal(3,2),
`P_Subs_CreationTime`	datetime,
INOUT `P_Subs_ID`	bigint(20))
BEGIN	
    UPDATE `IPG`.`Subscription`
	SET
	`Subs_ID` = P_Subs_ID,
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
	`Subs_TrialEnd` = P_Subs_TrialEnd,
	`Subs_EndedAt` = P_Subs_EndedAt,
	`Subs_TrialStart` = P_Subs_TrialStart,
	`Subs_TaxPercent` = P_Subs_TaxPercent,
	`Subs_CreationTime` = P_Subs_CreationTime
	WHERE `Subs_ID` = P_Subs_ID;    
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

-- Dump completed on 2015-01-11 10:26:17
