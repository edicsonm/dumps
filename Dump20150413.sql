-- MySQL dump 10.13  Distrib 5.6.19, for Linux (x86_64)
--
-- Host: localhost    Database: Merchant
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
-- Table structure for table `Certificates`
--

DROP TABLE IF EXISTS `Certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Certificates` (
  `Merc_ID` bigint(20) NOT NULL,
  `PasswordKeyStore` varchar(50) NOT NULL,
  `PasswordKey` varchar(50) NOT NULL,
  `KeyName` varchar(50) NOT NULL,
  PRIMARY KEY (`Merc_ID`),
  UNIQUE KEY `Merc_ID_UNIQUE` (`Merc_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Certificates`
--

LOCK TABLES `Certificates` WRITE;
/*!40000 ALTER TABLE `Certificates` DISABLE KEYS */;
INSERT INTO `Certificates` VALUES (1,'bigfoot69','bigfoot69','company15_key'),(2,'bigfoot69','bigfoot69','TuCarro_key'),(9,'Company15','Company15','Company15');
/*!40000 ALTER TABLE `Certificates` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
INSERT INTO `Order` VALUES (1,1202182387,550.760),(2,NULL,550.760),(3,NULL,550.760),(4,NULL,550.760),(5,NULL,550.760),(6,NULL,550.760),(7,NULL,550.760),(8,NULL,550.760),(9,NULL,550.760),(10,NULL,550.760),(11,1202182387,550.760),(12,NULL,550.760),(13,NULL,550.760),(14,NULL,550.760),(15,NULL,550.760),(16,NULL,550.760),(17,1202182387,550.760),(18,1202182387,550.760),(19,1202182387,550.760),(20,1202182387,550.760),(21,NULL,550.760),(22,NULL,550.760),(23,NULL,550.760),(24,NULL,550.760),(25,NULL,550.760),(26,NULL,550.760),(27,NULL,550.760),(28,NULL,550.760),(29,NULL,550.760),(30,NULL,550.760),(31,NULL,550.760),(32,NULL,550.760),(33,NULL,550.760),(34,NULL,550.760),(35,NULL,550.760),(36,NULL,550.760),(37,NULL,550.760),(38,NULL,550.760),(39,NULL,550.760),(40,NULL,550.760),(41,NULL,550.760),(42,NULL,550.760),(43,NULL,550.760),(44,NULL,550.760),(45,NULL,550.760),(46,NULL,550.760),(47,NULL,550.760),(48,NULL,550.760),(49,NULL,550.760),(50,NULL,550.760),(51,NULL,550.760),(52,NULL,550.760),(53,NULL,550.760),(54,NULL,550.760),(55,NULL,550.760),(56,NULL,550.760),(57,NULL,550.760),(58,NULL,550.760),(59,NULL,550.760),(60,NULL,550.760),(61,NULL,550.760),(62,NULL,550.760),(63,NULL,550.760),(64,NULL,550.760),(65,NULL,550.760),(66,NULL,550.760),(67,1202182387,550.760),(68,1202182387,550.760),(69,NULL,550.760),(70,1202182387,550.760),(71,NULL,550.760),(72,1202182387,550.760),(73,1202182387,550.760),(74,1202182387,550.760),(75,1202182387,550.760),(76,1202182387,550.760),(77,1202182387,550.760),(78,1202182387,550.760),(79,NULL,550.760),(80,1202182387,550.760),(81,NULL,550.760),(82,NULL,550.760),(83,NULL,550.760),(84,NULL,550.760),(85,NULL,550.760),(86,NULL,550.760),(87,NULL,550.760),(88,1202182387,550.760),(89,NULL,550.760),(90,1202182387,550.760),(91,NULL,550.760),(92,NULL,550.760),(93,NULL,550.760),(94,NULL,550.760),(95,NULL,550.760),(96,NULL,550.760),(97,NULL,550.760),(98,NULL,550.760),(99,NULL,550.760),(100,NULL,550.760),(101,NULL,550.760),(102,NULL,550.760),(103,NULL,550.760),(104,NULL,550.760),(105,NULL,550.760),(106,NULL,550.760),(107,NULL,550.760),(108,1202182387,550.760),(109,1202182387,550.760),(110,1202182387,550.760),(111,NULL,550.760),(112,NULL,550.760),(113,NULL,550.760),(114,NULL,550.760),(115,NULL,550.760),(116,NULL,550.760),(117,NULL,550.760),(118,NULL,550.760),(119,NULL,550.760),(120,1202182387,550.760),(121,1202182387,550.760),(122,NULL,550.760),(123,NULL,550.760),(124,1202182387,550.760),(125,NULL,550.760),(126,NULL,550.760),(127,NULL,550.760),(128,NULL,550.760),(129,1202182387,550.760),(130,1202182387,550.760),(131,1202182387,550.760),(132,1202182387,550.760),(133,1202182387,550.760),(134,1202182387,550.760),(135,NULL,550.760),(136,1202182387,550.760),(137,1202182387,550.760),(138,1202182387,550.760),(139,1202182387,550.760),(140,NULL,550.760),(141,NULL,550.760),(142,NULL,550.760),(143,NULL,550.760),(144,NULL,550.760),(145,1202182387,550.760),(146,1202182387,550.760),(147,1202182387,550.760),(148,1202182387,550.760),(149,NULL,550.760),(150,NULL,550.760),(151,NULL,550.760),(152,NULL,550.760),(153,NULL,550.760),(154,NULL,550.760),(155,NULL,550.760),(156,NULL,550.760),(157,NULL,550.760),(158,17,550.760),(159,17,550.760),(160,17,550.760),(161,17,550.760),(162,NULL,550.760),(163,17,550.760),(164,17,550.760),(165,NULL,550.760),(166,NULL,550.760),(167,NULL,550.760),(168,18,550.760),(169,19,550.760),(170,20,550.760),(171,21,550.760),(172,22,550.760),(173,23,550.760),(174,NULL,550.760),(175,24,550.760),(176,NULL,550.760),(177,25,550.760),(178,35,550.760),(179,27,150.000),(180,NULL,550.760),(181,37,550.760),(182,33,550.760),(183,36,23.200),(184,NULL,550.760),(185,38,550.760),(186,NULL,530.960),(187,NULL,530.960),(188,41,530.960),(189,43,532.960),(190,44,550.760),(191,17,554.760),(192,17,550.760),(193,17,12.760),(194,17,1312.600),(195,17,432.660),(196,NULL,550.760),(197,NULL,550.760),(198,NULL,550.760),(199,NULL,550.760),(200,NULL,550.760),(201,NULL,550.760),(202,NULL,550.760),(203,NULL,550.760),(204,NULL,550.760),(205,NULL,550.760),(206,NULL,550.760),(207,NULL,550.760),(208,NULL,550.760),(209,NULL,550.760),(210,NULL,550.760),(211,NULL,550.760),(212,NULL,550.760),(213,NULL,550.760),(214,NULL,550.760),(215,NULL,550.760),(216,NULL,550.760),(217,NULL,550.760),(218,NULL,550.760),(219,NULL,550.760),(220,NULL,550.760),(221,NULL,550.760),(222,NULL,550.760),(223,NULL,550.760),(224,NULL,550.760),(225,NULL,550.760),(226,NULL,550.760),(227,NULL,550.760),(228,NULL,550.760),(229,NULL,550.760),(230,NULL,550.760),(231,NULL,550.760),(232,NULL,550.760),(233,NULL,550.760),(234,NULL,550.760),(235,NULL,550.760),(236,NULL,550.760),(237,0,550.760),(238,0,550.760),(239,NULL,550.760),(240,NULL,550.760),(241,NULL,550.760),(242,0,550.760),(243,NULL,550.760),(244,0,550.760),(245,NULL,550.760),(246,NULL,550.760),(247,NULL,550.760),(248,NULL,550.760),(249,NULL,550.760),(250,NULL,550.760),(251,NULL,550.760),(252,NULL,550.760),(253,NULL,550.760),(254,NULL,550.760),(255,NULL,550.760),(256,NULL,550.760),(257,NULL,550.760),(258,NULL,550.760),(259,NULL,550.760),(260,NULL,550.760),(261,NULL,550.760),(262,NULL,550.760),(263,NULL,550.760),(264,0,550.760),(265,0,550.760),(266,0,550.760),(267,0,550.760),(268,0,550.760),(269,0,550.760),(270,0,550.760),(271,0,550.760),(272,NULL,550.760),(273,NULL,550.760),(274,0,550.760),(275,0,550.760),(276,0,550.760),(277,0,550.760),(278,0,550.760),(279,0,550.760),(280,0,550.760),(281,124,550.760),(282,125,550.760),(283,126,550.760),(284,127,550.760),(285,128,550.760),(286,129,27.000),(287,130,550.760),(288,NULL,550.760),(289,NULL,550.760),(290,NULL,550.760),(291,134,234.250),(292,135,234.250),(293,136,550.760),(294,NULL,550.760),(295,NULL,550.760),(296,NULL,550.760),(297,137,550.760),(298,138,550.760),(299,139,550.760),(300,140,550.760),(301,141,550.760),(302,142,550.760),(303,NULL,550.760),(304,NULL,550.760),(305,NULL,550.760),(306,NULL,550.760),(307,NULL,550.760),(308,NULL,550.760),(309,NULL,550.760),(310,NULL,550.760),(311,NULL,550.760),(312,NULL,550.760),(313,NULL,550.760),(314,NULL,550.760),(315,NULL,550.760),(316,NULL,550.760),(317,NULL,550.760),(318,NULL,550.760),(319,NULL,550.760),(320,NULL,550.760),(321,NULL,550.760),(322,NULL,550.760),(323,NULL,550.760),(324,NULL,550.760),(325,NULL,550.760),(326,NULL,550.760),(327,NULL,550.760),(328,NULL,550.760),(329,NULL,550.760),(330,NULL,550.760),(331,NULL,550.760),(332,NULL,550.760),(333,0,550.760),(334,143,550.760),(335,NULL,550.760),(336,NULL,550.760),(337,NULL,123.000),(338,NULL,123.000),(339,NULL,12.540),(340,NULL,12.540),(341,NULL,12.540),(342,NULL,12.540),(343,NULL,550.760),(344,NULL,550.760),(345,NULL,550.760),(346,NULL,2.000),(347,NULL,2.000),(348,NULL,2.000),(349,NULL,2.000),(350,NULL,2.000),(351,NULL,550.760),(352,NULL,550.760),(353,NULL,550.760),(354,NULL,550.760),(355,NULL,550.760),(356,NULL,550.760),(357,0,550.760),(358,NULL,550.760),(359,NULL,550.760),(360,NULL,550.760),(361,0,550.760),(362,0,550.760),(363,0,550.760),(364,0,550.760),(365,0,550.760),(366,0,550.760),(367,0,550.760),(368,NULL,550.760),(369,0,550.760),(370,NULL,550.760),(371,0,550.760),(372,0,550.760),(373,0,550.760),(374,0,550.760),(375,0,550.760),(376,NULL,550.760),(377,NULL,550.760),(378,0,550.760),(379,0,550.760),(380,0,550.760),(381,0,550.760),(382,0,550.760),(383,0,550.760),(384,NULL,550.760),(385,0,550.760),(386,NULL,550.760),(387,0,550.760),(388,0,550.760),(389,150,550.760),(390,151,19.250),(391,NULL,35.670),(392,152,35.670),(393,153,87.350),(394,0,74.250),(395,NULL,550.760),(396,0,721.670),(397,154,54.880),(398,155,26.650),(399,156,123.870),(400,157,233.980),(401,NULL,550.760),(402,NULL,550.760),(403,NULL,550.760),(404,0,550.760);
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'Merchant'
--
/*!50003 DROP PROCEDURE IF EXISTS `LIST_CERTIFICATE_DETAIL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `LIST_CERTIFICATE_DETAIL`(
`P_MERC_ID` BIGINT(20))
BEGIN
	SELECT * FROM Certificates
	WHERE Certificates.Merc_ID = P_MERC_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_INSERT_UPDATE_CERTIFICATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_INSERT_UPDATE_CERTIFICATE`(
`P_PasswordKeyStore` VARCHAR(50),
`P_PasswordKey` VARCHAR(50),
`P_KeyName` VARCHAR(50),
`P_Merc_ID` BIGINT(20))
BEGIN
DECLARE P_Merc_IDAUX BIGINT(20) DEFAULT NULL;
SET P_Merc_IDAUX = (SELECT `Merc_ID`  FROM `Merchant`.`Certificates` WHERE `Merc_ID` = P_Merc_ID);
IF (P_Merc_IDAUX IS NULL) THEN 
	INSERT INTO `Merchant`.`Certificates`
	(`Merc_ID`,
	`PasswordKeyStore`,
    `PasswordKey`,
	`KeyName`)
	VALUES
	(P_Merc_ID,
	P_PasswordKeyStore,
    P_PasswordKey,
	P_KeyName);
ELSE 	 
	UPDATE `Merchant`.`Certificates`
	SET `PasswordKeyStore` = P_PasswordKeyStore, `PasswordKey` = P_PasswordKey,`KeyName` = P_KeyName 	WHERE `Merc_ID` = P_Merc_ID;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_INSERT_ORDER`(
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_LIST_MERCHANTS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_LIST_MERCHANTS`()
BEGIN
	Select Merc_ID, Merc_Name from IPG.Merchant WHERE Merc_Status <> 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_LIST_MERCHANTS_WITH_CERTIFICATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_LIST_MERCHANTS_WITH_CERTIFICATE`()
BEGIN
	Select A.Merc_ID, A.Merc_Name from IPG.Merchant A, Merchant.Certificates B 
    WHERE Merc_Status <> 0
    AND A.Merc_ID = B.Merc_ID;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_ORDER`(
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-13 20:19:08
-- MySQL dump 10.13  Distrib 5.6.19, for Linux (x86_64)
--
-- Host: localhost    Database: IPG
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
-- Table structure for table `BusinessType`
--

DROP TABLE IF EXISTS `BusinessType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BusinessType` (
  `Buty_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Buty_Description` varchar(50) NOT NULL,
  `Buty_Status` enum('0','1') NOT NULL DEFAULT '0',
  `Buty_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Buty_ID`),
  UNIQUE KEY `Buty_ID_UNIQUE` (`Buty_ID`),
  UNIQUE KEY `Buty_Description_UNIQUE` (`Buty_Description`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BusinessType`
--

LOCK TABLES `BusinessType` WRITE;
/*!40000 ALTER TABLE `BusinessType` DISABLE KEYS */;
INSERT INTO `BusinessType` VALUES (1,'Corporation','0','2015-03-10 14:05:46'),(2,'Sole Proprietor','0','2015-03-05 10:10:25'),(3,'LLC','1','2015-03-05 10:05:27'),(4,'Partnership','1','2015-03-05 10:05:41');
/*!40000 ALTER TABLE `BusinessType` ENABLE KEYS */;
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
  `Card_Name` varchar(50) NOT NULL,
  `Card_Last4` varchar(4) NOT NULL,
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
  UNIQUE KEY `Card_Number_UNIQUE` (`Card_Number`),
  UNIQUE KEY `Card_IDStripe` (`Card_IDStripe`),
  KEY `IX_FK_Card_Customer` (`Cust_ID`),
  CONSTRAINT `FK_Card_Customer` FOREIGN KEY (`Cust_ID`) REFERENCES `Customer` (`Cust_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card`
--

LOCK TABLES `Card` WRITE;
/*!40000 ALTER TABLE `Card` DISABLE KEYS */;
INSERT INTO `Card` VALUES (1,1,'card_15D4Pr2eZvKYlo2CLLBvQcUB',NULL,1,2015,NULL,NULL,'4012888888881882','Isauro Morales','1881',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(2,1,'card_15Dhss2eZvKYlo2CtHD2SycW','Visa',1,2015,NULL,'credit','4242424242424242','Andres Correa','4242',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(4,1,'card_15TiqM2eZvKYlo2CapcjaZYu','Visa',1,2016,'O3pqFmyLW2EZyTSV','credit','4000000000000010','Milton Malpica','0010',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(5,1,'card_15Tit12eZvKYlo2CGfs1HRlb','Visa',1,2016,'3Zbsw8NvUfURjjfT','credit','4000000000000101','Carlos Torres','0101',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(6,2,'card_15TjUM2eZvKYlo2CSuPu7Pq7','MasterCard',1,2016,'7a9bk9ncM08SXfua','credit','5555555555554444','Michelle Earle','4444',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(7,1,'card_15TjsxFBMYSHQioJABIMHNnA','Visa',1,2016,'gms4oo4eC8vfCKQU','credit','4000000000000028','Edicson Morales','0028',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(8,1,'card_15TjuBFBMYSHQioJ8qycMK6r','Visa',1,2016,'Ez8roEj98KES1J95','credit','4000000000000077','Emerson Morales','0077',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(9,4,'card_15UQTUFBMYSHQioJEiRsjs0t','MasterCard',1,2016,'uqIccrnlKxFCAptH','prepaid','5105105105105100','Nelcy Torres','5100',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(10,1,'card_15jlAGFBMYSHQioJgWYW3HZa','Visa',1,2016,'C9KDidjmpBSBEL4w','credit','4012888888881881','Edicson Morales','1881',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Certificate`
--

DROP TABLE IF EXISTS `Certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Certificate` (
  `Cert_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Merc_ID` bigint(20) NOT NULL,
  `Cert_Name` varchar(50) NOT NULL,
  `Cert_Status` enum('0','1') NOT NULL DEFAULT '1',
  `Cert_CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Cert_ExpirationTime` datetime NOT NULL,
  `Cert_BBKeyStore` blob NOT NULL,
  `Cert_MerchantKeyStore` blob NOT NULL,
  `Cert_Log` varchar(2500) NOT NULL,
  `Cert_BBKeyStoreInformation` varchar(500) NOT NULL,
  `Cert_MerchantKeyStoreInformation` varchar(500) NOT NULL,
  `Cert_PasswordBBKeyStore` varchar(50) NOT NULL,
  `Cert_PasswordBBKey` varchar(50) NOT NULL,
  `Cert_AliasBB` varchar(50) NOT NULL,
  `Cert_AliasMerchant` varchar(50) NOT NULL,
  PRIMARY KEY (`Cert_ID`),
  UNIQUE KEY `Cert_ID_UNIQUE` (`Cert_ID`),
  KEY `FK_Certificate_Merchant_idx` (`Merc_ID`),
  CONSTRAINT `FK_Certificate_Merchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Certificate`
--

LOCK TABLES `Certificate` WRITE;
/*!40000 ALTER TABLE `Certificate` DISABLE KEYS */;
INSERT INTO `Certificate` VALUES (33,2,'TuCarro','0','2015-03-25 16:11:19','2016-03-24 16:11:19','˛Ì˛Ì\0\0\0\0\0\0\0\0\0\0tucarro_key\0\0LOWà\0X.509\0\0)0Ç%0Ç\r†	ô^Ì0\r	*ÜHÜ˜\r\00C10	UVE10U\nTuCarro10UTuCarro10UTuCarro0\r150325051117Z\r160324051117Z0C10	UVE10U\nTuCarro10UTuCarro10UTuCarro0Ç\"0\r	*ÜHÜ˜\r\0Ç\00Ç\nÇ\0îK)YïÈm¡¥”IyöZ…ó¢<…˘˛$å¬≤^ö¸Æ•ºÏÍù@…Îé´m[ˇIÊ∫éÎP∂èªµŒ»å‚Â?øÈ≠d´ç•2o…;Î|Ùœ—\"vó∂Ë\r€”•bâAº¬Æ®Ñ\"k^Æ}ôù√\ZA&Ü√gÒœí÷îÄ• Qˇ/æÉCÜòHˇTË=˘»ıækA]∂m3LeÌ˜ÿùˆ|é{’JJ·qÖíæªìèz=?¸˙‰”˚8§7µÜêÒÇ;´Í_≠ıõ°∫¨íG\n6òsî´®âÕq˘Ÿ*YúSˇö?	}	èhJ4§j\ZÌjáúΩΩ0%‘`û≥í@É\0£!00U±+ı{™1ˇq˘…KÁ«ˆ„•ˇ_0\r	*ÜHÜ˜\r\0Ç\0i˚‡ç;‚r%[GW˜–sP8=5≈tb¨;·π®2FS;zKR$∞x•‰r\nG-S‚!-P5fÜB(¨5(ÀìX(@°A!Å¯ƒãe•éŸQÔ{I\n>.=/àﬂ®–XBÒpÒ1÷√;|¡©k.)ï€∆¬ç“\n(P¯F\"¬ﬂ5L‡`x⁄X∫J¸v“B€ÅîÌ¶\'|æn<¶Ω≥nÚúÅe8º\nzN‹7∏ù≈É_â\ruJév;åm†§öy†Y)!kÉı◊|ô~ÍÊ’˙aaŒúFiHê≈Ñ€œœ≤J®´√≠¯ÂB˘n.åÕ°ÄY°=Wä-⁄”∑TA\0\0\0\0\rbillingbuddy2\0\0LOWÜB\0\00Ç˛0\n+*\0ÇÍ\rÒ\Zñ•ek@c}ë\'ÅòIE}◊çi-®JR%TçghkñTâ;„yΩ+ÁZöÖO\Z©õT\\ÚwFnèê….íA Óîùê*Á¡—§/¶&„\rÒË◊±ó/ªﬁêÜvŸ¶¨ŒÏ--\0⁄P⁄\"˘<ı|1G®.Çﬁk;‘∏⁄\Z™§D›é6§ﬂB„+Ï∏x©˘&í|\r.øA÷≈Üs6+_ÏÈﬁGÈﬁzﬂ5ù/Ñv«ÂHÊ	Ü∆_v›Eˆ]såIÙ§aÁﬂøÃ≈∞(i•LYãàHQëh0Ø‚\n<∆otácëëv6Pw“œ–Û“∆ok2≈ÃÚáâ±⁄ˆ˝ÍjœF˘,‚«ò˚B ˇª›Õ´¸PN•*@Ä…jﬁ’\nu6O4Mm6Ô∂P{‰k‘$7∑Û$‚≈ågZ.Ø*¡˘â)|KW™¢Z·VvFáØO⁄° :áj¸¨L√M|&$ŒµñÅÏÙ´ˆq@m5–|©T4íV„GZ»∏é}0¡≈≥g€˛ûb^>˛∞zk!Œ#c2¬C\ZyõE˘}/ÀRDéÏO0|±îçZeN5$1O;…¬4y¨ıËE«AØÑfÒ:S„˙ùÂ0U«¬ÉäÇÚs∂;†[dz‰µk·ijCa*˛˜b´≤*|Ç·äCB9œ \ZÎõŸâEû»Â∆˚LY…Ëp}Æ®Æ©À·c$∫6∏EC	“àH∏õí[ïj2úgÈ\rQú“B.’ÎÅïlæ“ Ó‡ª“(∏7ÂÙ/[w4\"—H%‡X⁄V±hßÕh•“æ—<û`n€¨⁄,0~^òß/•Fãs’K[6ªÓmcèΩ∏⁄d˙ddwÿü˜˛Í™ßHÉgl´<ù¬n}÷∫†&‚b√ãï?ƒm;à\'PÑ\rq‹2M´÷ΩS3Ùo\"1Åº#.åµe0ﬂ3¿Ì˚∑mA_X“J)ﬁ«À!∫Ë∫\"ñ≠X?fÈ´\ZòÑ4`·—“Xª‘ëì9EmA5¸gÙ‹+é?æ~aÍu√ÿ$@è‹m◊Ñ~‚,Â]\'XH≥¶„® sÃD˘¯A„eX¿¢¢¥ÙH.\\ê˘…]|‚ΩGÄM∞€7d](˛vÜ˜â/Ã‡hsìu/Ë*\Z-øÌ-nÅ¸/πZµ\nM¬?˘Z\"KExÛBb®˝¸àz9 dÆ	èΩ‹õy,;:Q\nñBd£\rÚ)küﬂ∫µ‹∞4%\'√í6Ê˝Ã\"Ìè«MtËªızÍ≥|\'Òê|a∫V„—I;…*ñGM∂\"‚N«º·\rîdsWt∑g ,Ï=Ô¿qÌÀs~~§zª¿!Nï;Â<ÆVÃaècﬁØâG˘Ì]Á¡ÇOê◊tc >ÊK1n7ÿïEônÈ\rÁªﬂnÈS”u˚1N ñ ﬂÁnõ≥N›L.ëôÎ∞%cÑ6˙ÛOÌ&˙d≠nâîÓµmΩHa=º∆ûºÎwGD(Añ_ƒq·.‹=>ªΩπ<m —Â˜sm$ùjpÊˇ¬∆fÌêÆ^t‘9ı˝ÿGX_‡Eì	$!\0$Á}©V>ÚrÓç\\\'Ó˙hÁ’¥Åm¥ A@ëÿ·À¯Ÿ¸õ%c√`dÚÒ\\©t>8›z ™Ñ™S÷&ﬂjËO√÷ÌwœI‡	Ã\n¨áﬁ#hπ±%.©ë—\\dıçS	Zﬂ7\"~ª…Æ(Ã\ZUì\0\0\0\0X.509\0\0I0ÇE0Ç-†;¸_0\r	*ÜHÜ˜\r\00S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0\r150325051118Z\r160324051118Z0S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0Ç\"0\r	*ÜHÜ˜\r\0Ç\00Ç\nÇ\0ÖÎôPáë-ôXVœû@œ›ïLßGc˚HÚZKL%Oˆ6áÂüŒ•–Pàß(†1øéÍKÙΩóS™Ì‘Ø 8Â5Í=Ÿ}∞T{sb≥Y≥B+ö !-Õ\ZŸH¡—…=œPLﬁ¥6ûV£·\\`\\Æ6Ë™º‚SÊ‰Ù;Y.ï6p˘2˘oÁb2U˛Qˇ›zyÍúa9‹S˚s∂¨o©¬ÙÎ¿˛Ø≥ﬂ˘Öàw)⁄Eg!õ»bU‰.ß:⁄Ωæ+*áG[õú3◊ëUY;Ç…,‘πóÿ®\r§Ø&O±Ë≠õ˝sxΩê;ÌQÉaÂ’¬_Uzá∫òiæòp˚⁄3Ôì˛Áî·Ûs\0£!00U4¸mNÅv˝WòßV7éñS:M˛˘ä0\r	*ÜHÜ˜\r\0Ç\0/£ÑK<XqÕ‡≠o·‘<ª!â˝îT*åbÔ;ó∞ÈàÄ⁄Eô¬!Jﬁ˜q è·hG0ƒœ0≠ò¢ú‰µk1˛oÍ∂ö§é[˘°@@#µ…7 ƒ§C¸A\"mzÀ∂ı÷>ëH¢-ﬁ\0÷ñJΩÓõ5ÒÃ5úù# }J}fÃè®õë‡qû∑\rÜl∏ÃùÆb9¿µÊö\r˝Ú√}úÏ©ø<õÌﬂŒZ›Ummπ-:D◊aéuÌ¸\0W]Ñ ÇÎèVR(∆63ÍLp‘`œÜ=7º≤©\'ÇÔ≤Ù÷ØVÍú˜å≈YÑ*Gar&~:¨¢;Û¡øˇËLm√G¬\Z.Ç\\›˛√ãpyW‘¯∂’∂r RJ¶ÀÜJb&Ó;¸','˛Ì˛Ì\0\0\0\0\0\0\0\0\0\0tucarro_key\0\0LOWÉ2\0\00Ç˝0\n+*\0ÇÈ⁄ï«(^WW∆?h?¬=≠lÎyÙÅUûe?·˚Â˛cˆ¨[CÓ•—2¸ΩFIò€W!~x,©_^ua≤:h-ÌÔl5ÚÈ†C\r◊ﬁß0œ\"†¢∂œ§{wûª}E\rk$ìÍÜó¶VîÓŒ≈N‘‘˘MZïIxªoG≠F¢ˆ„¨/;wßF9\\ñƒ–˚⁄ùÀM¨ºÀÌƒ∆9EœdyÊ%•ñ–\"÷ögd=≤Z(Ó_\'‰ﬁhA∫›*~8·@lÑz»»Ûπ˘FN>˝Ûf,£¸\'0©ÖâÇC.Q.¬8£˜˚\nùªeòÍò8⁄Vú“FÆËJYóánTñ™ôÿEÜZÛhã‰ﬂLÈ¡’Ô.I˜˙Áœî≥PÙ’_ ∫πHK|¸Ò«Ñ1≤d˜™Ã!r˝`∏ßµÚpåËÖWøˆ€—Ç©∫8 Î\'Uî:skõ)âo˘%üP`qZ»ó¬„ˆ§>Eó!i‹HX“ˆpêâ2“C±è≤ë.e3pÈüëÒBﬁ¸7DA»πÿá	¨Ù1›Ûq‡∏¬ä #\0ü™Û]ﬁúBÔ°±\rkÅï^c¸ƒ¯»LÒõ®áê˘tìoúuÔ\n—@7ñ2a9;nµ3=C»∫€¥\nÚÆÁ0\r\Zº‚.Æ¬í—ÛÚ†EÂ∞˙„óGÃ…SE¿–™ìvÈPÎ(	b‹\nÃPM¸..zê0ükÃ∂\"µ9ÀPÿ£›äo‰,|ã;9Ê˙¸yåÎ{@	Wı±“4òì°öZOÛ^Ñï∞õ–ÂAæÚRZmêF\"8∞n=*@∑¨0Ù`ƒê‹‘D¶©@@ƒLÒ˜Ÿ/q˝ßs`~¡Ö—2‹îÏÉñ›< ¨æü`™P…À>õ,·¯c!¶⁄±Z_t∂´äxŸWöûö∆+Ö¿E˚™”EÓ}˘ñdI¯OﬁqÂú3W´ÚËâóäÄ€LÄA_ÔN∑ŸLù,ÜûY1¸F°N`«˝;3xŸçJ`I7˜)›<Ç7îÌjó€¥y#uÏ≤™mI∂ohaj£l´<;WÁÃ–0	7`§8ÕäáÌ*]2Ë&¯@?p0}—ªp£9nÛ±_©˚Ø1Ùã!yiÄ™Æ_◊«úr¸·…Á(Ìæ¢‡ÖÚvK‘Ï€°√<:&M…¥23,E\0f•èåπ3–≤‘§\'?ä÷Ôe)8ß^Dxÿúﬁ|¨äﬁˆ”[∏a∫√±9mYë◊(…µn≈:ÿ)¶æ€©˚{C≤ÓÖ=ª&|¬“M¥WåxCêﬂƒ.2#ç;jõAﬂ†m˘Rπ÷=´Â’7\0yï•|Ôw8Ö‡Ãèg›@hÔµn/±ô<l¬dœËAp∫s:=a∂∞àù”ªv^Nz°™P…î q~âî”m»*6∏CaÔÈπxßßuëÖæPï0ümÙwºïK\\Øï›ZLîT“’¯ná∫r¥ÒÛÓ.Ë5‰_–e–Mî]w£}ü|\\à\ZLºôq*Ô˙Éµj,t\raùKxØ`0°£\rêêßd…jﬁˇlêŒò\ZÃ≤Û›À∏PfÓ{kè€z|◊À`ã>°a-I∆T__âXœûÊG1rãªºÎËûﬁÿ‰e?œ.íø«»U16ﬂÂ«Àımá⁄™÷Dß8™ˇÒœ◊ÆÊLà\Z	ëÖ¸KûH›jõáµM\'Ω’÷yÄÔì\0\0\0\0X.509\0\0)0Ç%0Ç\r†	ô^Ì0\r	*ÜHÜ˜\r\00C10	UVE10U\nTuCarro10UTuCarro10UTuCarro0\r150325051117Z\r160324051117Z0C10	UVE10U\nTuCarro10UTuCarro10UTuCarro0Ç\"0\r	*ÜHÜ˜\r\0Ç\00Ç\nÇ\0îK)YïÈm¡¥”IyöZ…ó¢<…˘˛$å¬≤^ö¸Æ•ºÏÍù@…Îé´m[ˇIÊ∫éÎP∂èªµŒ»å‚Â?øÈ≠d´ç•2o…;Î|Ùœ—\"vó∂Ë\r€”•bâAº¬Æ®Ñ\"k^Æ}ôù√\ZA&Ü√gÒœí÷îÄ• Qˇ/æÉCÜòHˇTË=˘»ıækA]∂m3LeÌ˜ÿùˆ|é{’JJ·qÖíæªìèz=?¸˙‰”˚8§7µÜêÒÇ;´Í_≠ıõ°∫¨íG\n6òsî´®âÕq˘Ÿ*YúSˇö?	}	èhJ4§j\ZÌjáúΩΩ0%‘`û≥í@É\0£!00U±+ı{™1ˇq˘…KÁ«ˆ„•ˇ_0\r	*ÜHÜ˜\r\0Ç\0i˚‡ç;‚r%[GW˜–sP8=5≈tb¨;·π®2FS;zKR$∞x•‰r\nG-S‚!-P5fÜB(¨5(ÀìX(@°A!Å¯ƒãe•éŸQÔ{I\n>.=/àﬂ®–XBÒpÒ1÷√;|¡©k.)ï€∆¬ç“\n(P¯F\"¬ﬂ5L‡`x⁄X∫J¸v“B€ÅîÌ¶\'|æn<¶Ω≥nÚúÅe8º\nzN‹7∏ù≈É_â\ruJév;åm†§öy†Y)!kÉı◊|ô~ÍÊ’˙aaŒúFiHê≈Ñ€œœ≤J®´√≠¯ÂB˘n.åÕ°ÄY°=Wä-⁄”∑TA\0\0\0\0\rbillingbuddy2\0\0LOWát\0X.509\0\0I0ÇE0Ç-†;¸_0\r	*ÜHÜ˜\r\00S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0\r150325051118Z\r160324051118Z0S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0Ç\"0\r	*ÜHÜ˜\r\0Ç\00Ç\nÇ\0ÖÎôPáë-ôXVœû@œ›ïLßGc˚HÚZKL%Oˆ6áÂüŒ•–Pàß(†1øéÍKÙΩóS™Ì‘Ø 8Â5Í=Ÿ}∞T{sb≥Y≥B+ö !-Õ\ZŸH¡—…=œPLﬁ¥6ûV£·\\`\\Æ6Ë™º‚SÊ‰Ù;Y.ï6p˘2˘oÁb2U˛Qˇ›zyÍúa9‹S˚s∂¨o©¬ÙÎ¿˛Ø≥ﬂ˘Öàw)⁄Eg!õ»bU‰.ß:⁄Ωæ+*áG[õú3◊ëUY;Ç…,‘πóÿ®\r§Ø&O±Ë≠õ˝sxΩê;ÌQÉaÂ’¬_Uzá∫òiæòp˚⁄3Ôì˛Áî·Ûs\0£!00U4¸mNÅv˝WòßV7éñS:M˛˘ä0\r	*ÜHÜ˜\r\0Ç\0/£ÑK<XqÕ‡≠o·‘<ª!â˝îT*åbÔ;ó∞ÈàÄ⁄Eô¬!Jﬁ˜q è·hG0ƒœ0≠ò¢ú‰µk1˛oÍ∂ö§é[˘°@@#µ…7 ƒ§C¸A\"mzÀ∂ı÷>ëH¢-ﬁ\0÷ñJΩÓõ5ÒÃ5úù# }J}fÃè®õë‡qû∑\rÜl∏ÃùÆb9¿µÊö\r˝Ú√}úÏ©ø<õÌﬂŒZ›Ummπ-:D◊aéuÌ¸\0W]Ñ ÇÎèVR(∆63ÍLp‘`œÜ=7º≤©\'ÇÔ≤Ù÷ØVÍú˜å≈YÑ*Gar&~:¨¢;Û¡øˇËLm√G¬\Z.Ç\\›˛√ãpyW‘‰Hxm;”sÜ9y/Á™»ˇáaX','0 /mnt/Informacion/NuevoBB/certificates/genCert\n1 /opt/jdk1.8.0_40/jre/bin\n2 cn=TuCarro,ou= TuCarro,o= TuCarro,c= VE\n3 TuCarro_key\n4 bigfoot69\n5 bigfoot69\n6 cn=Billing Buddy SSL,ou=Security,o=BillingBUddy,c=AU\n7 BillingBuddy2\n8 p@55w0rd!\n9 p@55w0rd!\nvar inicial:  /mnt/Informacion/NuevoBB/certificates/TempFiles\nvar secundario:  /mnt/Informacion/NuevoBB/certificates/TempFiles/BillingBuddy2\nKEYSTOREBB BillingBuddy2.jks\nKEYSTOREMERCHANT TuCarro_key.jks\nFOLDER /mnt/Informacion/NuevoBB/certificates/TempFiles/BillingBuddy2\nMerchant Certificate Information\nStartMerchantCertificateInformation\n\nTipo de Almac√©n de Claves: JKS\nProveedor de Almac√©n de Claves: SUN\n\nSu almac√©n de claves contiene 2 entradas\n\ntucarro_key, 25/03/2015, PrivateKeyEntry, \nHuella Digital de Certificado (SHA1): DA:F0:2B:B8:42:96:1D:C3:C3:19:29:BB:EB:5A:C0:2F:DC:49:5B:53\nbillingbuddy2, 25/03/2015, trustedCertEntry, \nHuella Digital de Certificado (SHA1): 38:87:26:AD:82:6D:76:33:C5:C2:17:0F:0B:5F:8A:53:B7:D6:DD:BF\nStopMerchantCertificateInformation\nBillingBuddy Certificate Information\nStartBillingBuddyCertificateInformation\n\nTipo de Almac√©n de Claves: JKS\nProveedor de Almac√©n de Claves: SUN\n\nSu almac√©n de claves contiene 2 entradas\n\ntucarro_key, 25/03/2015, trustedCertEntry, \nHuella Digital de Certificado (SHA1): DA:F0:2B:B8:42:96:1D:C3:C3:19:29:BB:EB:5A:C0:2F:DC:49:5B:53\nbillingbuddy2, 25/03/2015, PrivateKeyEntry, \nHuella Digital de Certificado (SHA1): 38:87:26:AD:82:6D:76:33:C5:C2:17:0F:0B:5F:8A:53:B7:D6:DD:BF\nStopBillingBuddyCertificateInformation\nFOLDER#/mnt/Informacion/NuevoBB/certificates/TempFiles/BillingBuddy2\nKEYSTOREBB#BillingBuddy2.jks\nKEYSTOREMERCHANT#TuCarro_key.jks\n','\nTipo de Almac√©n de Claves: JKS\nProveedor de Almac√©n de Claves: SUN\n\nSu almac√©n de claves contiene 2 entradas\n\ntucarro_key, 25/03/2015, trustedCertEntry, \nHuella Digital de Certificado (SHA1): DA:F0:2B:B8:42:96:1D:C3:C3:19:29:BB:EB:5A:C0:2F:DC:49:5B:53\nbillingbuddy2, 25/03/2015, PrivateKeyEntry, \nHuella Digital de Certificado (SHA1): 38:87:26:AD:82:6D:76:33:C5:C2:17:0F:0B:5F:8A:53:B7:D6:DD:BF\n','\nTipo de Almac√©n de Claves: JKS\nProveedor de Almac√©n de Claves: SUN\n\nSu almac√©n de claves contiene 2 entradas\n\ntucarro_key, 25/03/2015, PrivateKeyEntry, \nHuella Digital de Certificado (SHA1): DA:F0:2B:B8:42:96:1D:C3:C3:19:29:BB:EB:5A:C0:2F:DC:49:5B:53\nbillingbuddy2, 25/03/2015, trustedCertEntry, \nHuella Digital de Certificado (SHA1): 38:87:26:AD:82:6D:76:33:C5:C2:17:0F:0B:5F:8A:53:B7:D6:DD:BF\n','p@55w0rd!','p@55w0rd!','BillingBuddy2','TuCarro_key'),(34,9,'Company15','0','2015-04-09 13:26:04','2016-04-08 13:26:04','˛Ì˛Ì\0\0\0\0\0\0\0\0\0\0	company15\0\0Lú6ì7\0X.509\0\050Ç10Ç†íÂI0\r	*ÜHÜ˜\r\00I10	UVE10U\n	Company1510U	Company1510U	Company150\r150409032603Z\r160408032603Z0I10	UVE10U\n	Company1510U	Company1510U	Company150Ç\"0\r	*ÜHÜ˜\r\0Ç\00Ç\nÇ\0Ü˝*p¨Nm∏ ˆæjÇ˙¨CÓF5∫&ywny\'™˛Ëb…YB•]|;Ó>b·•õÛœ¶≤Î£u‘˘B›gkö˛Q⁄îç¸ûè…\\iòùôÂÄjCE¿jÿúÖ0Ø|7úÇWC7|Áı~ó≥}ÎáÖùóêvZÏ¸ÎM ∑.∞>„Ëöd◊]˜Zˆà‡\0›¨¥¬¢)&ÌãÊ})≈r+¿—&úÍVáà`ãì|˛¸`p3ÙGmÍµaEÏËQ¶\rce˜¸ƒÂπ¥@Ú!Dﬂ8€’iWÙûﬂ’í+RI„âòh8Ë\'òË1{º~¡èá-ÉtÀ¶˜Qô.x◊#7y\0£!00UpÿÎ\'ı‡AÔ≥>4¶œÆÃ ·0\r	*ÜHÜ˜\r\0Ç\0\Z¡ø$îŒ1O§Í¯@ó.x*óıBíŸ‘k¡∫?óˇÛùª#Ò^6µZ/®Œ¿ú¨£†ﬂﬁns†«≠VAµZÓŒZ„erú+≈Öı∆Ö!3{≈ÏûA˝◊æï⁄¸F9≤ôÓ∆˛¿û„Ú∏%ıÍ ´÷πë$MT/≠J`ãÕ∞)!Â&0≤”≈©ß\Z£˛Õ≤8–ÂZóc°î(+NV[ËÆ`±gãÆªπ0⁄—Å¶ƒ‹\"à„ó÷jÍüCÛ»}9H–\\?A¨π|ÿõ•‹∂°l^!JW® MÍæ|]À∆Q~Së”Ø£&÷¯zyûî|ùcØ…ﬂÿ…{Á†ó“\0\0\0\0\rbillingbuddy9\0\0Lú6ëQ\0\00Ç˝0\n+*\0ÇÈ&é©ﬂ xTD&™9‰Ã”êLcöÿM¬ImGGlÁVN˙Êê»∏$røˆÂw[s=∞ P3èß	≠ÆË0ÕË∆u®XE9Ÿ-/∏‘5W ®oìõ∆˘ù<ÿÌÀÌ\"ï\Zá<Í•XLjﬁEïÅÔöÙ¬Ò<]ÎÛå•œÍmN,9´`J4-ˆ(OWÖ^∆æS+—£5òÑ1˛v9í)˝G)æ\nD9µÂ◊ıÈy¬#ÉÈÚó7[OY€É|ÕŒÔ∫ñjûµ!)DaS\r2N˛ãbOÙüYQ¿q&%Oyì‡Æ˙&Á>N‹¨»ı[\nctçIˆü∆®pC˙âJƒƒë§ç>¶n◊yê‚®E¨›¨¯\\SZÃôë¡d\\\'ªè?Œ Æ,œ∏·Ω≈:®vd2⁄l±ß%¡â¿\0U5≥k‡≠M{Ö\\÷jöpC*hÅõãßrÿn_A&, Uª∆fxtxúM…˙AGúÏ]áÄÓ¢wE≤ê>˜ÈOXöR4´£Æ6\ZNfÁëF§ß|≠¨Á√Ωqä√”tπ ÎÿP£”\05À‡ƒz’rƒ∞Owjüù“|7ˇ®æFÖô«ŒéœëòèdUñr˛ë2	c2Éæ`WU[òqF»H9-•°ñoœë\0X£ÒHfπ™Ô¨Iß@íç¡gd›!∆Xf®>ß¥f‘2≈m\"sM‡JBñÚø<pÖºßB\"V·x˜iè±h”∫ØÕn,xÆô~ù≠YáëQS¢Å?Né:MËùtﬂ#ïÑ∆ÉÒxætÉË©Pˇæd√ç£Z’êvXÚﬂ3P›yÃ¸.˘y{∂÷+èÈºp…∫„ùËﬁe¥‘Ï›ü|…≤sd2ìeRx9≤s?/ÅÑÆ±joäò\\$Œ;B˝é:R}#ƒ¡âÛ⁄eä®Î»dêˇ\"RRJÀß/≈õÇ5dò|“Æ$˛ñh^ﬁ\Zp\n\\R«øƒ§œW.\n˜’Q\'Õ¨©òQÚüV-p“æ1b$fcÂ6Ω7EØèh?+Êë\'ŸÊ-◊}π~\'âV™s‰SÖ;«JwûS—ÒÃ<hb\\úéÚ∆<ŸÆ¢ªH\"UÇW´Õ˛ÊùÚ60.È_l“\r\0Ág˝~ÇË7ÊmOÊtÚ∆®ïÖ»Ωõ ùÃÎ∑l6µœ&G◊É	kEZàèûGF1¬“ª¿õeì pß‹Ö5ÅÔœE√?(Pnıê¿ÛÔ‰;±«í≤á1b⁄d›	ß”/µ¢)√ΩëÌò‡Ñ˚öˇó˛24ŒaÌ√úø◊$K\Z≤”R)∫µ≈ãÜoπ∫µﬂu):w#4Í,mëOT®GÚÈç¯%4Â9,·5à»wŸÂõêq§≈SJÃ\\∫¯—e√”f*)}ºx˝G\\∞≥U“xöG´3Ãê¸ÊÆ‰öqÈ‚#_TW∂ıè(ä&<Ÿ/AMk˘|ÙÏhÄ\0ıù*Òï⁄M¥ôâ0˘ô†l€J}C’ÂéŸ*·∂¯ö@;‹à9˙Ò∞6KIhj–;s6ipÇkÚO_±≈#±ZF≥f≠îEÏy¢Û2_¿A9‚ÇLƒÏ…ÂÎdì-EnªÆqÄ@‡ùºkîm±FùlJï™˘´Y^+Õ¯,9“ª¬LŒ{˛ò†yãûáwë◊∂Ò4\'…,©±¿—Â<®,c¸X¥\n·õΩ7&gr_ﬂÍˇ˜ñ$/vÃL™ÑæÌ”Ì\0\0\0\0X.509\0\0I0ÇE0Ç-†O]»a0\r	*ÜHÜ˜\r\00S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0\r150409032604Z\r160408032604Z0S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0Ç\"0\r	*ÜHÜ˜\r\0Ç\00Ç\nÇ\0ìdΩA¢Òˇì¯¨j”∑qo@MÑ|¡ %æîQî*É?â;Çä™Ü1Ä€?ø–‹~“(e≈ $x©:îçt≈ﬁ‰17≈⁄`òˇy\\Ò°tÊ‡O«òsçs«;ÖôH(∏Øy§<à`u˘´x¯∏ÌcË˚e¿12…Ô‚€·∂^2&Fr€\0¬X 6Í÷õ˜íM¨˛2å–nï;~‚∏Z±‡_Åv÷˝™„tÌüU*Å’™rkC⁄∆èàÆŸ\"&/b5Ö˚˙◊Cy›?⁄∂\'Ê¯˛Ñ#ÆÃKπúû‹ˇ˚ BÍe&÷£0ß]‘¿[Å\Z˜ê^†ßTÚ(ÌÓˆH<“X.ƒE\n\\Õ\0£!00UÛZ!Á‘vé∫yâ®wrC$∏r\r0\r	*ÜHÜ˜\r\0Ç\07WT∫mŒUÀ-¥ vX÷≥.à∂v/†;(Îo¿ZÚªΩEõæœ˛ê±Wñ¬\rèÿFçôY„o5]‡8÷ó;∆Y5©ï:“IPßå`ﬂ≈û“´Â;|.&ßÔØ∆ub∏vŒ•M™ùXUz≥(@\'≤Y]qYQ\\÷NÔpÊÿ˘3>\0ΩM$Á—TæKÓe»v\\ú‚|Ó…Á\0¶ÎπÊ“5»Ê-—ÖÂ\'-|Ç≤.èxîXØ≈]ôÄ∏Rx&Z€ãÂÏ÷dÒe˘˜V∑‘∑¸Ï⁄5â>ßdÖPì+Ó&™ˇM hTcÚ◊ü^ˇO?y\rÉ´IÁ§’4XPÕÀ˝\\∫ÃLŒµäÜ¢ògQìÙ ÆÔB','˛Ì˛Ì\0\0\0\0\0\0\0\0\0\0	company15\0\0Lú6é\0\00Ç˝0\n+*\0ÇÈhˇãm¥åBñ\r;ën÷U~án\0‚VQ∫øÒ<•∞ˇwœ≠ã\'˚RÕ?ñ¢\\Ω5±9=ß05LLÙ|ÿú§˙‚JÉ˝ëÀ?uúáX„&û$S˘^=|)ˇ¬7∫&;ç≠œ◊Ï\'EëUÆ)≠J<Kñ√F¸%k•Â œyW¥¢¿ÒO_QÒÙœ_ﬁz–Vn[ŸÜ«xùwzÂÌyV&Üµ\nÎ<ÑÒ„a˘ÿDÛëÎy≈–›`ã\\Ë\\a\"IÒÍ:ˇz∑%~Ü|PÙøOíÅ«\'ÒŒPB[’§)™íÍ\0ó√w|∫Íá ;¸AÆî¯™>\09≤õeERQ—Ñ≈ÅﬂØ≥h¶1uS”a4D…f≠|≈*⁄u∑\"• 7Åb=KÕG®plk*\rÏ≥∆¸íè8Ã§uë∑É∂‘IAÕ‹\"XnÀêπ:C≥‹EW\\ËﬁÜî<\'®ôi∞dâ\"7AcJ_düî\rˆÆÅ™Zò˘BJ1Çûÿ…KECá4ø⁄^ŸˆºPœ ⁄ˇÃ<Á^¿\\‹Ï8\ZrX!9˜¶† ZsûÁJwÒFÛÇ‹@ã§7L£ª;RB»®”◊[Ñ:√§	u}9è÷9Î\"˛zÛ&›îU≈∑ó]lÌ|la^◊ÀÆ ◊ä|∫»fıƒ$T&ü≠Lè®z‹≤Î±ä∏ÄqìjÚF∏>w£8\r¬àû˚O>ñÕmK∆ßç@!∑rZ†œ•)y√ÿü\"._ZÓépwnäõãvâT1ÿyiäﬂﬁ–ãÏÏŸcùH≥˘«â°_®v€ÒÛ$t-ãÆZ8y¶œM\rÆ≠;√˚ß|¶Ò\'1∫∏ç2NãûÛ°ÈK“ŸÌ¨Y¨?√fuÌCKV…q≥”Ñã±%2◊•®õNVnÄêÔj¸ÄF#πÃ[Õ˘k\0Tö#CßÚ¢’®ç˛^_G)5Ëg8ly%ña–≤¬r\rS\'#ö‰8Ê_mQ®¬È±\r$Oµ2’8\'¥#-K2e»9Tn±\'yï\n`€ &õ?πãÚ§\rM±Øf€}©{V&\\àµñIπì†˘:Ö…*ŸBnG⁄\r˚çëLs\'≥ˇµ*∫Ó|\"f◊Y«0¿\'—ªøPÖ[≈dúD>í@˚†‚oùƒ‚Ø:„√∆÷ÉCπ\n?Q⁄u‰8¥PØ\ZíæÙsä-c+ÖµB‘ûü∆Ò“]“ õ\'b÷sy¯]+f∫◊sZeô†óìO\rÒ™{£Ç1_ûè˜‰q–˜Ûhn©⁄Ó:h?g[p◊ˆTqÓﬂI∆;îˆDj.8¯Q\n#˘ÑŸûÜçº°M˝’0\\5ß”[ıI?„RÛ∆√¶w¯P±-c_Ó/ÑŸ´))!x=\"àŸIãCﬂ}`\Zµ„°0\Z2˙º5¯Ù$â≈#y≤òi.$åŒ„ÆvPÈED35<∆’\0?«ﬁ¥©fN7∞lªÀíø…‡Nß(’ö3≈t“V_\ntπµ.LxÚµ†eõÒ5\Zv\Zö π).†kÅ‡“⁄0˝≤ÜÆµÜ€®£◊›*;Ìøv˝í˜ﬁYÆ¨ˆ¶G+Z∫\08—T’¬GÏ\"°YÜØ“{›qÚCº† òv∫ÂbSÁpùg%‰˜P*Ê0w¨v˘–ıÄbŒπ÷!eï‘w:TsÏ˚tH#‡-},œD m¬ëursYÕtüû\0\0\0\0X.509\0\050Ç10Ç†íÂI0\r	*ÜHÜ˜\r\00I10	UVE10U\n	Company1510U	Company1510U	Company150\r150409032603Z\r160408032603Z0I10	UVE10U\n	Company1510U	Company1510U	Company150Ç\"0\r	*ÜHÜ˜\r\0Ç\00Ç\nÇ\0Ü˝*p¨Nm∏ ˆæjÇ˙¨CÓF5∫&ywny\'™˛Ëb…YB•]|;Ó>b·•õÛœ¶≤Î£u‘˘B›gkö˛Q⁄îç¸ûè…\\iòùôÂÄjCE¿jÿúÖ0Ø|7úÇWC7|Áı~ó≥}ÎáÖùóêvZÏ¸ÎM ∑.∞>„Ëöd◊]˜Zˆà‡\0›¨¥¬¢)&ÌãÊ})≈r+¿—&úÍVáà`ãì|˛¸`p3ÙGmÍµaEÏËQ¶\rce˜¸ƒÂπ¥@Ú!Dﬂ8€’iWÙûﬂ’í+RI„âòh8Ë\'òË1{º~¡èá-ÉtÀ¶˜Qô.x◊#7y\0£!00UpÿÎ\'ı‡AÔ≥>4¶œÆÃ ·0\r	*ÜHÜ˜\r\0Ç\0\Z¡ø$îŒ1O§Í¯@ó.x*óıBíŸ‘k¡∫?óˇÛùª#Ò^6µZ/®Œ¿ú¨£†ﬂﬁns†«≠VAµZÓŒZ„erú+≈Öı∆Ö!3{≈ÏûA˝◊æï⁄¸F9≤ôÓ∆˛¿û„Ú∏%ıÍ ´÷πë$MT/≠J`ãÕ∞)!Â&0≤”≈©ß\Z£˛Õ≤8–ÂZóc°î(+NV[ËÆ`±gãÆªπ0⁄—Å¶ƒ‹\"à„ó÷jÍüCÛ»}9H–\\?A¨π|ÿõ•‹∂°l^!JW® MÍæ|]À∆Q~Së”Ø£&÷¯zyûî|ùcØ…ﬂÿ…{Á†ó“\0\0\0\0\rbillingbuddy9\0\0Lú6íô\0X.509\0\0I0ÇE0Ç-†O]»a0\r	*ÜHÜ˜\r\00S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0\r150409032604Z\r160408032604Z0S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0Ç\"0\r	*ÜHÜ˜\r\0Ç\00Ç\nÇ\0ìdΩA¢Òˇì¯¨j”∑qo@MÑ|¡ %æîQî*É?â;Çä™Ü1Ä€?ø–‹~“(e≈ $x©:îçt≈ﬁ‰17≈⁄`òˇy\\Ò°tÊ‡O«òsçs«;ÖôH(∏Øy§<à`u˘´x¯∏ÌcË˚e¿12…Ô‚€·∂^2&Fr€\0¬X 6Í÷õ˜íM¨˛2å–nï;~‚∏Z±‡_Åv÷˝™„tÌüU*Å’™rkC⁄∆èàÆŸ\"&/b5Ö˚˙◊Cy›?⁄∂\'Ê¯˛Ñ#ÆÃKπúû‹ˇ˚ BÍe&÷£0ß]‘¿[Å\Z˜ê^†ßTÚ(ÌÓˆH<“X.ƒE\n\\Õ\0£!00UÛZ!Á‘vé∫yâ®wrC$∏r\r0\r	*ÜHÜ˜\r\0Ç\07WT∫mŒUÀ-¥ vX÷≥.à∂v/†;(Îo¿ZÚªΩEõæœ˛ê±Wñ¬\rèÿFçôY„o5]‡8÷ó;∆Y5©ï:“IPßå`ﬂ≈û“´Â;|.&ßÔØ∆ub∏vŒ•M™ùXUz≥(@\'≤Y]qYQ\\÷NÔpÊÿ˘3>\0ΩM$Á—TæKÓe»v\\ú‚|Ó…Á\0¶ÎπÊ“5»Ê-—ÖÂ\'-|Ç≤.èxîXØ≈]ôÄ∏Rx&Z€ãÂÏ÷dÒe˘˜V∑‘∑¸Ï⁄5â>ßdÖPì+Ó&™ˇM hTcÚ◊ü^ˇO?y\rÉ´IÁ§’4XPÕÀ˝\\D=îüøæêæ>ÁV⁄‹Ø¿Í5','0 /PortalFiles/certificates/genCert\n1 /opt/jre1.8.0_40/bin\n2 cn=Company15,ou= Company15,o= Company15,c= VE\n3 Company15\n4 Company15\n5 Company15\n6 cn=Billing Buddy SSL,ou=Security,o=BillingBUddy,c=AU\n7 BillingBuddy9\n8 p@55w0rd!\n9 p@55w0rd!\nvar inicial:  /mnt/Informacion/NuevoBB/certificates/TempFiles\nvar secundario:  /mnt/Informacion/NuevoBB/certificates/TempFiles/BillingBuddy9\nKEYSTOREBB BillingBuddy9.jks\nKEYSTOREMERCHANT Company15.jks\nFOLDER /mnt/Informacion/NuevoBB/certificates/TempFiles/BillingBuddy9\nMerchant Certificate Information\nStartMerchantCertificateInformation\n\nTipo de Almac√©n de Claves: JKS\nProveedor de Almac√©n de Claves: SUN\n\nSu almac√©n de claves contiene 2 entradas\n\ncompany15, 9/04/2015, PrivateKeyEntry, \nHuella Digital de Certificado (SHA1): E8:CA:B0:6E:7F:69:46:15:21:7D:F9:5C:61:95:C7:89:66:88:0C:33\nbillingbuddy9, 9/04/2015, trustedCertEntry, \nHuella Digital de Certificado (SHA1): AE:CA:65:63:09:94:C9:44:E4:1A:84:B5:34:2C:23:59:66:86:CA:47\nStopMerchantCertificateInformation\nBillingBuddy Certificate Information\nStartBillingBuddyCertificateInformation\n\nTipo de Almac√©n de Claves: JKS\nProveedor de Almac√©n de Claves: SUN\n\nSu almac√©n de claves contiene 2 entradas\n\ncompany15, 9/04/2015, trustedCertEntry, \nHuella Digital de Certificado (SHA1): E8:CA:B0:6E:7F:69:46:15:21:7D:F9:5C:61:95:C7:89:66:88:0C:33\nbillingbuddy9, 9/04/2015, PrivateKeyEntry, \nHuella Digital de Certificado (SHA1): AE:CA:65:63:09:94:C9:44:E4:1A:84:B5:34:2C:23:59:66:86:CA:47\nStopBillingBuddyCertificateInformation\nFOLDER#/mnt/Informacion/NuevoBB/certificates/TempFiles/BillingBuddy9\nKEYSTOREBB#BillingBuddy9.jks\nKEYSTOREMERCHANT#Company15.jks\n','\nTipo de Almac√©n de Claves: JKS\nProveedor de Almac√©n de Claves: SUN\n\nSu almac√©n de claves contiene 2 entradas\n\ncompany15, 9/04/2015, trustedCertEntry, \nHuella Digital de Certificado (SHA1): E8:CA:B0:6E:7F:69:46:15:21:7D:F9:5C:61:95:C7:89:66:88:0C:33\nbillingbuddy9, 9/04/2015, PrivateKeyEntry, \nHuella Digital de Certificado (SHA1): AE:CA:65:63:09:94:C9:44:E4:1A:84:B5:34:2C:23:59:66:86:CA:47\n','\nTipo de Almac√©n de Claves: JKS\nProveedor de Almac√©n de Claves: SUN\n\nSu almac√©n de claves contiene 2 entradas\n\ncompany15, 9/04/2015, PrivateKeyEntry, \nHuella Digital de Certificado (SHA1): E8:CA:B0:6E:7F:69:46:15:21:7D:F9:5C:61:95:C7:89:66:88:0C:33\nbillingbuddy9, 9/04/2015, trustedCertEntry, \nHuella Digital de Certificado (SHA1): AE:CA:65:63:09:94:C9:44:E4:1A:84:B5:34:2C:23:59:66:86:CA:47\n','p@55w0rd!','p@55w0rd!','BillingBuddy9','Company15');
/*!40000 ALTER TABLE `Certificate` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IPG`.`Certificate_BEFORE_INSERT` BEFORE INSERT ON `Certificate` FOR EACH ROW 
BEGIN
	DECLARE num_rows INT DEFAULT 0;
    DECLARE msg VARCHAR(50) DEFAULT "";
    
    IF NEW.Cert_Status = "0" then
		SELECT count(*) FROM IPG.Certificate
		WHERE Merc_ID =  new.Merc_ID
		AND Cert_Status = "0" INTO num_rows;
    END IF;
    
    IF num_rows > 0 THEN
        set msg = 'Certificate_BEFORE_INSERT';
        signal sqlstate '45000' set message_text = msg;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IPG`.`Certificate_BEFORE_UPDATE` BEFORE UPDATE ON `Certificate` FOR EACH ROW
BEGIN
	DECLARE num_rows INT DEFAULT 0;
    DECLARE msg VARCHAR(50) DEFAULT "";
    
    IF NEW.Cert_Status = "0" then
		SELECT count(*) FROM IPG.Certificate
		WHERE Merc_ID =  new.Merc_ID
		AND Cert_Status = "0" INTO num_rows;
    END IF;
    
    IF num_rows > 0 THEN
        set msg = 'Certificate_BEFORE_UPDATE';
        signal sqlstate '45000' set message_text = msg;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Charge`
--

LOCK TABLES `Charge` WRITE;
/*!40000 ALTER TABLE `Charge` DISABLE KEYS */;
INSERT INTO `Charge` VALUES (25,34,2,'ch_14yFyy7eZvKYlo9CQylnRjiq',NULL,NULL,55076,0,'2014-12-25 15:11:25','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(26,35,2,'ch_14yFyy7eZvKYlo9CQylnRjic',NULL,NULL,55076,0,'2014-12-25 15:11:30','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(27,36,1,'ch_14yFyy2eZvKYlo2CQylnRjiq',NULL,NULL,2320,0,'2014-12-25 15:17:56','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(28,37,1,'ch_14yFyy2eZvKYlo2CQylnRjiw',NULL,NULL,55076,0,'2014-12-25 15:20:14','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(29,38,1,'ch_14yFyy2eZvKYlo2CQylnRjiy',NULL,NULL,55076,0,'2014-12-25 15:44:51','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(30,41,1,'ch_15GLvj2eZvKYlo2CRwWqFIAs',NULL,NULL,53096,0,'2015-01-01 22:17:02','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(31,42,1,'ch_15GMF82eZvKYlo2CHT5NlTYm',NULL,NULL,53296,0,'2015-01-01 22:37:04','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(32,43,1,'ch_15GOhj2eZvKYlo2Chz5zrGfs',NULL,NULL,53296,0,'2015-01-02 01:14:45','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(33,44,1,'ch_15GP5Q2eZvKYlo2C6GYDDBFN',NULL,NULL,55076,0,'2015-01-02 01:39:14','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(34,17,1,'ch_15GPc62eZvKYlo2CVorIWf8M',NULL,NULL,55476,0,'2015-01-02 02:13:00','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(35,17,1,'ch_15GPfu2eZvKYlo2C1FgkRWob',NULL,NULL,55476,0,'2015-01-02 02:17:00','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(36,17,1,'ch_15GPlz2eZvKYlo2CMsT6iCkf',NULL,NULL,55476,0,'2015-01-02 02:23:13','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(37,17,1,'ch_15Gjjs2eZvKYlo2CsbbXHuE9',NULL,NULL,55076,0,'2015-01-02 23:42:26','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(38,17,1,'ch_15Gjon2eZvKYlo2CNnRXjWt1',NULL,NULL,1276,0,'2015-01-02 23:47:30','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(39,17,1,'ch_15Gjru2eZvKYlo2CwkbnrI2o',NULL,NULL,131260,0,'2015-01-02 23:50:40','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(40,17,1,'ch_15Gk3W2eZvKYlo2CFKXqcVGV',NULL,NULL,43266,0,'2015-01-03 00:02:40','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(41,17,1,'ch_15MD0P2eZvKYlo2CLQkeHMYx',NULL,NULL,55076,0,'2015-01-18 17:57:54','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(42,17,1,'ch_15MD3S2eZvKYlo2CSdXaCDr6',NULL,NULL,55076,0,'2015-01-18 18:01:03','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(43,17,1,'ch_15MD4p2eZvKYlo2CHYURXmQB',NULL,NULL,55076,0,'2015-01-18 18:02:27','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(44,17,1,'ch_15MD7X2eZvKYlo2ClPjBlTnX',NULL,NULL,55076,0,'2015-01-18 18:05:15','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(45,17,1,'ch_15MDCp2eZvKYlo2CsvQa3h7G',NULL,NULL,55076,0,'2015-01-18 18:10:43','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(46,17,1,'ch_15MDEL2eZvKYlo2CJa4bqOls',NULL,NULL,55076,0,'2015-01-18 18:12:17','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(47,17,1,'ch_15MDFU2eZvKYlo2CezneL8Pf',NULL,NULL,55076,0,'2015-01-18 18:13:28','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(48,17,1,'ch_15MDGB2eZvKYlo2CNFteONkL',NULL,NULL,55076,0,'2015-01-18 18:14:11','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(49,17,1,'ch_15NXGB2eZvKYlo2COJeIz2CZ',NULL,NULL,55076,0,'2015-01-22 09:47:39','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(50,17,1,'ch_15NXI52eZvKYlo2CYRtY2EcK',NULL,NULL,55076,0,'2015-01-22 09:49:37','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(51,17,1,'ch_15NXLp2eZvKYlo2Chg4w2YAY',NULL,NULL,55076,0,'2015-01-22 09:53:30','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(52,17,1,'ch_15NYs32eZvKYlo2C4h3C2b9G',NULL,NULL,55076,0,'2015-01-22 11:30:52','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(53,17,1,'ch_15NYyS2eZvKYlo2COcaFE3yz',NULL,NULL,55076,0,'2015-01-22 11:37:29','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(54,17,1,'ch_15Naqe2eZvKYlo2CS0qLlnZ0',NULL,NULL,55076,0,'2015-01-22 13:37:32','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(55,17,1,'ch_15NbB62eZvKYlo2CTwPN125v',NULL,NULL,55076,0,'2015-01-22 13:58:40','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(56,17,1,'ch_15O00C2eZvKYlo2CtYqzGGKj',NULL,NULL,55076,0,'2015-01-23 16:29:06','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(57,17,1,'ch_15O0EE2eZvKYlo2CCl5gehiR',NULL,NULL,55076,0,'2015-01-23 16:43:35','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(58,17,1,'ch_15O0Fg2eZvKYlo2CU88T6oNH',NULL,NULL,55076,0,'2015-01-23 16:45:04','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(59,17,1,'ch_15O0Ho2eZvKYlo2CJW8ltr1y',NULL,NULL,55076,0,'2015-01-23 16:47:25','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(60,17,1,'ch_15O0Xm2eZvKYlo2CgN0KArMA',NULL,NULL,55076,0,'2015-01-23 17:03:47','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(61,45,1,'ch_15O0qN2eZvKYlo2CZWgXpTVp',NULL,NULL,55076,0,'2015-01-23 17:23:00','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(62,46,1,'ch_15O1bp2eZvKYlo2CYBA8zkqq',NULL,NULL,55076,0,'2015-01-23 18:12:01','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(63,47,1,'ch_15Ozzs2eZvKYlo2CAWu18QuA',NULL,NULL,55076,0,'2015-01-26 10:40:53','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(64,48,1,'ch_15SKPF2eZvKYlo2C9FCpT86D',NULL,NULL,557600,0,'2015-02-04 15:04:50','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(65,49,1,'ch_15SKTp2eZvKYlo2C0jrToafD',NULL,NULL,125100,0,'2015-02-04 15:09:34','usd',0,0,NULL,NULL,NULL,NULL,'0 ms.'),(66,50,1,'ch_15SKUi2eZvKYlo2CMymF5MIR',NULL,NULL,3400,0,'2015-02-04 15:10:28','usd',0,0,NULL,NULL,NULL,NULL,'0 ms.'),(67,51,1,'ch_15SLk22eZvKYlo2CZHRqC0hc',NULL,NULL,55076,0,'2015-02-04 16:30:22','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(68,52,1,'ch_15SNd22eZvKYlo2Cbafk839U',NULL,NULL,12300,0,'2015-02-04 18:31:17','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(69,53,1,'ch_15SNsc2eZvKYlo2CwWl0808r',NULL,NULL,12300,0,'2015-02-04 18:47:22','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(70,54,1,'ch_15SNyr2eZvKYlo2Crb1Rnrqr',NULL,NULL,55076,0,'2015-02-04 18:53:50','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(71,55,1,'ch_15SO882eZvKYlo2CX6O6ahTS',NULL,NULL,55076,0,'2015-02-04 19:03:24','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(72,56,1,'ch_15SOGO2eZvKYlo2C1criZCKw',NULL,NULL,55076,0,'2015-02-04 19:11:56','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(73,57,1,'ch_15SOsw2eZvKYlo2CGOQGyA7s',NULL,NULL,55076,0,'2015-02-04 19:51:47','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(74,58,1,'ch_15SOtZ2eZvKYlo2CmpSYzZN0',NULL,NULL,55076,0,'2015-02-04 19:52:25','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(75,59,1,'ch_15SOwy2eZvKYlo2CJD6pDmyI',NULL,NULL,55076,0,'2015-02-04 19:55:57','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(76,61,1,'ch_15SP6D2eZvKYlo2CKXyunSQX',NULL,NULL,55076,0,'2015-02-04 20:05:30','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(77,62,1,'ch_15SdJt2eZvKYlo2CfBxlCEAZ',NULL,NULL,55076,0,'2015-02-05 11:16:35','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(78,63,1,'ch_15SdQi2eZvKYlo2CdR6svht3',NULL,NULL,55076,0,'2015-02-05 11:23:36','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(79,64,1,'ch_15SddG2eZvKYlo2CYyDmkv6H',NULL,NULL,55076,0,'2015-02-05 11:36:34','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(80,65,1,'ch_15Sdox2eZvKYlo2CW6CXgo8u',NULL,NULL,55076,0,'2015-02-05 11:48:40','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(81,66,1,'ch_15SduW2eZvKYlo2CDxNtFIKt',NULL,NULL,55076,0,'2015-02-05 11:54:25','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(82,67,1,'ch_15Se2N2eZvKYlo2CCduaTuzz',NULL,NULL,55076,0,'2015-02-05 12:02:32','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(83,68,1,'ch_15SeR02eZvKYlo2CfaNQgwIG',NULL,NULL,55076,0,'2015-02-05 12:27:59','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(84,69,1,'ch_15SeTi2eZvKYlo2Ccbh0pXEe',NULL,NULL,55076,0,'2015-02-05 12:30:46','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(85,70,1,'ch_15Sebx2eZvKYlo2C2s6RH467',NULL,NULL,55076,0,'2015-02-05 12:39:18','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(86,71,1,'ch_15SekA2eZvKYlo2CnykVYA2n',NULL,NULL,55076,0,'2015-02-05 12:47:49','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(87,72,1,'ch_15Sixv2eZvKYlo2CptQ4xFlu',NULL,NULL,55076,0,'2015-02-05 17:18:36','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(88,73,1,'ch_15Sj0b2eZvKYlo2CP5d4dCeP',NULL,NULL,55076,0,'2015-02-05 17:21:01','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(89,74,1,'ch_15Sj4q2eZvKYlo2C2njB4SRL',NULL,NULL,55076,0,'2015-02-05 17:25:24','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(90,75,1,'ch_15Sj6c2eZvKYlo2CTAZX6rX6',NULL,NULL,55076,0,'2015-02-05 17:27:14','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(91,76,1,'ch_15Sj9F2eZvKYlo2Cjzmds5Ad',NULL,NULL,55076,0,'2015-02-05 17:29:58','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(92,77,1,'ch_15SjBk2eZvKYlo2CVeTD5hfp',NULL,NULL,55076,0,'2015-02-05 17:32:32','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(93,78,1,'ch_15SjGB2eZvKYlo2C2xIx5Jbx',NULL,NULL,55076,0,'2015-02-05 17:37:13','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(94,79,1,'ch_15SjKC2eZvKYlo2CjU85LfcP',NULL,NULL,55076,0,'2015-02-05 17:41:21','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(95,80,1,'ch_15SjNc2eZvKYlo2CgBVlZUpQ',NULL,NULL,55076,0,'2015-02-05 17:44:48','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(96,82,1,'ch_15SjjN2eZvKYlo2CHWoma8Wl',NULL,NULL,2354,0,'2015-02-05 18:07:18','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(97,88,1,'ch_15TAC22eZvKYlo2ClME5KIfW',NULL,NULL,55076,0,'2015-02-06 22:22:39','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(98,97,1,'ch_15TiTF2eZvKYlo2CcHfhnWTM',NULL,NULL,55076,0,'2015-02-08 10:58:41','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(99,102,4,'ch_15TiqM2eZvKYlo2Cgo8Y14wX',NULL,NULL,55076,0,'2015-02-08 11:22:34','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(100,103,5,'ch_15Tit12eZvKYlo2CjZwTr1Fm',NULL,NULL,55076,0,'2015-02-08 11:25:19','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(101,104,5,'ch_15TiwG2eZvKYlo2CLZptkQUu',NULL,NULL,55076,0,'2015-02-08 11:28:40','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(102,112,2,'ch_15TjSG2eZvKYlo2CWikqfZEO',NULL,NULL,55076,0,'2015-02-08 12:01:44','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(103,113,6,'ch_15TjUM2eZvKYlo2CXVu8PjVV',NULL,NULL,55076,0,'2015-02-08 12:03:54','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(104,114,6,'ch_15TjYa2eZvKYlo2CjLuzlg05',NULL,NULL,55076,0,'2015-02-08 12:08:16','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(105,115,1,'ch_15Tjdq2eZvKYlo2CU4F1qeGq',NULL,NULL,55076,0,'2015-02-08 12:13:42','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(106,116,6,'ch_15Tjj12eZvKYlo2CqbOlaY7p',NULL,NULL,55076,0,'2015-02-08 12:19:03','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(107,119,7,'ch_15TjsxFBMYSHQioJTVfooeuY',NULL,NULL,55076,0,'2015-02-08 12:29:20','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(108,120,8,'ch_15TjuBFBMYSHQioJD6vDzUuw',NULL,NULL,55076,0,'2015-02-08 12:30:35','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(109,121,8,'ch_15Tjv7FBMYSHQioJCq7eBMv0',NULL,NULL,55076,0,'2015-02-08 12:31:33','usd',0,0,NULL,NULL,NULL,NULL,'1 ms.'),(110,122,6,'ch_15UQPTFBMYSHQioJDEt2fXmZ',NULL,NULL,55076,0,'2015-02-10 09:53:44','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(111,123,9,'ch_15UQTUFBMYSHQioJw9WD8bdN',NULL,NULL,55076,0,'2015-02-10 09:57:53','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(112,124,1,'ch_15jkqzFBMYSHQioJcuVQ7Kzg',NULL,NULL,55076,0,'2015-03-24 16:45:29','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(113,125,10,'ch_15jlAGFBMYSHQioJ0RMdAT1D',NULL,NULL,55076,0,'2015-03-24 17:05:24','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(114,126,10,'ch_15jlF8FBMYSHQioJPPR6wqm0',NULL,NULL,55076,0,'2015-03-24 17:10:28','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(115,127,10,'ch_15jlH6FBMYSHQioJACWCY1g6',NULL,NULL,55076,0,'2015-03-24 17:12:28','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(116,128,10,'ch_15jlJsFBMYSHQioJzsdHd48W',NULL,NULL,55076,0,'2015-03-24 17:15:22','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(117,129,10,'ch_15jlOBFBMYSHQioJujgU9Q4P',NULL,NULL,2700,0,'2015-03-24 17:19:48','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(118,130,10,'ch_15jlPFFBMYSHQioJmKOD4SFD',NULL,NULL,55076,0,'2015-03-24 17:20:54','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(119,131,10,'ch_15jlxnFBMYSHQioJ0WfqvYFZ',NULL,NULL,55076,0,'2015-03-24 17:56:35','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(120,132,10,'ch_15jm6IFBMYSHQioJq00pKwDW',NULL,NULL,55076,0,'2015-03-24 18:05:22','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(121,133,10,'ch_15jmBVFBMYSHQioJwNfRFQoQ',NULL,NULL,55076,0,'2015-03-24 18:10:47','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(122,134,10,'ch_15jmDUFBMYSHQioJfyLkyv1i',NULL,NULL,23425,0,'2015-03-24 18:12:48','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(123,135,10,'ch_15jmb0FBMYSHQioJbNrVhNcf',NULL,NULL,23425,0,'2015-03-24 18:37:07','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(124,136,10,'ch_15jnRLFBMYSHQioJgm0BBppc',NULL,NULL,55076,0,'2015-03-24 19:31:12','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(125,137,10,'ch_15jomMFBMYSHQioJT8Byi9Ma',NULL,NULL,55076,0,'2015-03-24 20:56:59','usd',0,0,NULL,NULL,NULL,NULL,'0 ms.'),(126,138,10,'ch_15jotKFBMYSHQioJdES2OnFt',NULL,NULL,55076,0,'2015-03-24 21:04:10','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(127,139,10,'ch_15jp0FFBMYSHQioJe1GjVcBU',NULL,NULL,55076,0,'2015-03-24 21:11:19','usd',0,0,NULL,NULL,NULL,NULL,'0 ms.'),(128,140,10,'ch_15jp1eFBMYSHQioJSxXHp6j1',NULL,NULL,55076,0,'2015-03-24 21:12:46','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(129,141,10,'ch_15jp5KFBMYSHQioJTrvXLiJf',NULL,NULL,55076,0,'2015-03-24 21:16:34','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(130,142,10,'ch_15jp78FBMYSHQioJhAJPNUXI',NULL,NULL,55076,0,'2015-03-24 21:18:28','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(131,143,10,'ch_15k6sgFBMYSHQioJIFA4A6gi',NULL,NULL,55076,0,'2015-03-25 16:16:43','usd',0,0,NULL,NULL,NULL,NULL,'0 ms.'),(132,150,10,'ch_15pru1FBMYSHQioJpPWcmsTJ',NULL,NULL,55076,0,'2015-04-10 12:29:54','usd',0,0,NULL,NULL,NULL,NULL,'0 ms.'),(133,151,10,'ch_15psMxFBMYSHQioJhDq5f3qI',NULL,NULL,1925,0,'2015-04-10 12:59:47','usd',0,0,NULL,NULL,NULL,NULL,'0 ms.'),(134,152,6,'ch_15qwGaFBMYSHQioJWDa8ILMH',NULL,NULL,3567,0,'2015-04-13 11:21:36','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(135,153,6,'ch_15qwMoFBMYSHQioJNpNIdOwv',NULL,NULL,8735,0,'2015-04-13 11:28:03','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(136,154,6,'ch_15qwQ0FBMYSHQioJzPJEE2KB',NULL,NULL,5488,0,'2015-04-13 11:31:21','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(137,155,6,'ch_15r18FFBMYSHQioJ3cdTjRMk',NULL,NULL,2665,0,'2015-04-13 16:33:20','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(138,156,6,'ch_15r19BFBMYSHQioJ7QhB0afy',NULL,NULL,12387,0,'2015-04-13 16:34:17','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(139,157,6,'ch_15r1LFFBMYSHQioJKAqfFWCy',NULL,NULL,23398,0,'2015-04-13 16:46:49','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.');
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
INSERT INTO `Country` VALUES (20,'AD','AND','Andorra','ISO 3166-2:AD'),(784,'AE','ARE','United Arab Emirates','ISO 3166-2:AE'),(4,'AF','AFG','Afghanistan','ISO 3166-2:AF'),(28,'AG','ATG','Antigua and Barbuda','ISO 3166-2:AG'),(660,'AI','AIA','Anguilla','ISO 3166-2:AI'),(8,'AL','ALB','Albania','ISO 3166-2:AL'),(51,'AM','ARM','Armenia','ISO 3166-2:AM'),(24,'AO','AGO','Angola','ISO 3166-2:AO'),(10,'AQ','ATA','Antarctica','ISO 3166-2:AQ'),(32,'AR','ARG','Argentina','ISO 3166-2:AR'),(16,'AS','ASM','American Samoa','ISO 3166-2:AS'),(40,'AT','AUT','Austria','ISO 3166-2:AT'),(36,'AU','AUS','Australia','ISO 3166-2:AU'),(533,'AW','ABW','Aruba','ISO 3166-2:AW'),(248,'AX','ALA','√Öland Islands','ISO 3166-2:AX'),(31,'AZ','AZE','Azerbaijan','ISO 3166-2:AZ'),(70,'BA','BIH','Bosnia and Herzegovina','ISO 3166-2:BA'),(52,'BB','BRB','Barbados','ISO 3166-2:BB'),(50,'BD','BGD','Bangladesh','ISO 3166-2:BD'),(56,'BE','BEL','Belgium','ISO 3166-2:BE'),(854,'BF','BFA','Burkina Faso','ISO 3166-2:BF'),(100,'BG','BGR','Bulgaria','ISO 3166-2:BG'),(48,'BH','BHR','Bahrain','ISO 3166-2:BH'),(108,'BI','BDI','Burundi','ISO 3166-2:BI'),(204,'BJ','BEN','Benin','ISO 3166-2:BJ'),(652,'BL','BLM','Saint Barth√©lemy','ISO 3166-2:BL'),(60,'BM','BMU','Bermuda','ISO 3166-2:BM'),(96,'BN','BRN','Brunei Darussalam','ISO 3166-2:BN'),(68,'BO','BOL','Bolivia (Plurinational State of)','ISO 3166-2:BO'),(535,'BQ','BES','Bonaire, Sint Eustatius and Saba','ISO 3166-2:BQ'),(76,'BR','BRA','Brazil','ISO 3166-2:BR'),(44,'BS','BHS','Bahamas','ISO 3166-2:BS'),(64,'BT','BTN','Bhutan','ISO 3166-2:BT'),(74,'BV','BVT','Bouvet Island','ISO 3166-2:BV'),(72,'BW','BWA','Botswana','ISO 3166-2:BW'),(112,'BY','BLR','Belarus','ISO 3166-2:BY'),(84,'BZ','BLZ','Belize','ISO 3166-2:BZ'),(124,'CA','CAN','Canada','ISO 3166-2:CA'),(166,'CC','CCK','Cocos (Keeling) Islands','ISO 3166-2:CC'),(180,'CD','COD','Congo (Democratic Republic of the)','ISO 3166-2:CD'),(140,'CF','CAF','Central African Republic','ISO 3166-2:CF'),(178,'CG','COG','Congo','ISO 3166-2:CG'),(756,'CH','CHE','Switzerland','ISO 3166-2:CH'),(384,'CI','CIV','C√¥te d\'Ivoire','ISO 3166-2:CI'),(184,'CK','COK','Cook Islands','ISO 3166-2:CK'),(152,'CL','CHL','Chile','ISO 3166-2:CL'),(120,'CM','CMR','Cameroon','ISO 3166-2:CM'),(156,'CN','CHN','China','ISO 3166-2:CN'),(170,'CO','COL','Colombia','ISO 3166-2:CO'),(188,'CR','CRI','Costa Rica','ISO 3166-2:CR'),(192,'CU','CUB','Cuba','ISO 3166-2:CU'),(132,'CV','CPV','Cabo Verde','ISO 3166-2:CV'),(531,'CW','CUW','Cura√ßao','ISO 3166-2:CW'),(162,'CX','CXR','Christmas Island','ISO 3166-2:CX'),(196,'CY','CYP','Cyprus','ISO 3166-2:CY'),(203,'CZ','CZE','Czech Republic','ISO 3166-2:CZ'),(276,'DE','DEU','Germany','ISO 3166-2:DE'),(262,'DJ','DJI','Djibouti','ISO 3166-2:DJ'),(208,'DK','DNK','Denmark','ISO 3166-2:DK'),(212,'DM','DMA','Dominica','ISO 3166-2:DM'),(214,'DO','DOM','Dominican Republic','ISO 3166-2:DO'),(12,'DZ','DZA','Algeria','ISO 3166-2:DZ'),(218,'EC','ECU','Ecuador','ISO 3166-2:EC'),(233,'EE','EST','Estonia','ISO 3166-2:EE'),(818,'EG','EGY','Egypt','ISO 3166-2:EG'),(732,'EH','ESH','Western Sahara','ISO 3166-2:EH'),(232,'ER','ERI','Eritrea','ISO 3166-2:ER'),(724,'ES','ESP','Spain','ISO 3166-2:ES'),(231,'ET','ETH','Ethiopia','ISO 3166-2:ET'),(246,'FI','FIN','Finland','ISO 3166-2:FI'),(242,'FJ','FJI','Fiji','ISO 3166-2:FJ'),(238,'FK','FLK','Falkland Islands (Malvinas)','ISO 3166-2:FK'),(583,'FM','FSM','Micronesia (Federated States of)','ISO 3166-2:FM'),(234,'FO','FRO','Faroe Islands','ISO 3166-2:FO'),(250,'FR','FRA','France','ISO 3166-2:FR'),(266,'GA','GAB','Gabon','ISO 3166-2:GA'),(826,'GB','GBR','United Kingdom of Great Britain and Northern Ireland','ISO 3166-2:GB'),(308,'GD','GRD','Grenada','ISO 3166-2:GD'),(268,'GE','GEO','Georgia','ISO 3166-2:GE'),(254,'GF','GUF','French Guiana','ISO 3166-2:GF'),(831,'GG','GGY','Guernsey','ISO 3166-2:GG'),(288,'GH','GHA','Ghana','ISO 3166-2:GH'),(292,'GI','GIB','Gibraltar','ISO 3166-2:GI'),(304,'GL','GRL','Greenland','ISO 3166-2:GL'),(270,'GM','GMB','Gambia','ISO 3166-2:GM'),(324,'GN','GIN','Guinea','ISO 3166-2:GN'),(312,'GP','GLP','Guadeloupe','ISO 3166-2:GP'),(226,'GQ','GNQ','Equatorial Guinea','ISO 3166-2:GQ'),(300,'GR','GRC','Greece','ISO 3166-2:GR'),(239,'GS','SGS','South Georgia and the South Sandwich Islands','ISO 3166-2:GS'),(320,'GT','GTM','Guatemala','ISO 3166-2:GT'),(316,'GU','GUM','Guam','ISO 3166-2:GU'),(624,'GW','GNB','Guinea-Bissau','ISO 3166-2:GW'),(328,'GY','GUY','Guyana','ISO 3166-2:GY'),(344,'HK','HKG','Hong Kong','ISO 3166-2:HK'),(334,'HM','HMD','Heard Island and McDonald Islands','ISO 3166-2:HM'),(340,'HN','HND','Honduras','ISO 3166-2:HN'),(191,'HR','HRV','Croatia','ISO 3166-2:HR'),(332,'HT','HTI','Haiti','ISO 3166-2:HT'),(348,'HU','HUN','Hungary','ISO 3166-2:HU'),(360,'ID','IDN','Indonesia','ISO 3166-2:ID'),(372,'IE','IRL','Ireland','ISO 3166-2:IE'),(376,'IL','ISR','Israel','ISO 3166-2:IL'),(833,'IM','IMN','Isle of Man','ISO 3166-2:IM'),(356,'IN','IND','India','ISO 3166-2:IN'),(86,'IO','IOT','British Indian Ocean Territory','ISO 3166-2:IO'),(368,'IQ','IRQ','Iraq','ISO 3166-2:IQ'),(364,'IR','IRN','Iran (Islamic Republic of)','ISO 3166-2:IR'),(352,'IS','ISL','Iceland','ISO 3166-2:IS'),(380,'IT','ITA','Italy','ISO 3166-2:IT'),(832,'JE','JEY','Jersey','ISO 3166-2:JE'),(388,'JM','JAM','Jamaica','ISO 3166-2:JM'),(400,'JO','JOR','Jordan','ISO 3166-2:JO'),(392,'JP','JPN','Japan','ISO 3166-2:JP'),(404,'KE','KEN','Kenya','ISO 3166-2:KE'),(417,'KG','KGZ','Kyrgyzstan','ISO 3166-2:KG'),(116,'KH','KHM','Cambodia','ISO 3166-2:KH'),(296,'KI','KIR','Kiribati','ISO 3166-2:KI'),(174,'KM','COM','Comoros','ISO 3166-2:KM'),(659,'KN','KNA','Saint Kitts and Nevis','ISO 3166-2:KN'),(408,'KP','PRK','Korea (Democratic People\'s Republic of)','ISO 3166-2:KP'),(410,'KR','KOR','Korea (Republic of)','ISO 3166-2:KR'),(414,'KW','KWT','Kuwait','ISO 3166-2:KW'),(136,'KY','CYM','Cayman Islands','ISO 3166-2:KY'),(398,'KZ','KAZ','Kazakhstan','ISO 3166-2:KZ'),(418,'LA','LAO','Lao People\'s Democratic Republic','ISO 3166-2:LA'),(422,'LB','LBN','Lebanon','ISO 3166-2:LB'),(662,'LC','LCA','Saint Lucia','ISO 3166-2:LC'),(438,'LI','LIE','Liechtenstein','ISO 3166-2:LI'),(144,'LK','LKA','Sri Lanka','ISO 3166-2:LK'),(430,'LR','LBR','Liberia','ISO 3166-2:LR'),(426,'LS','LSO','Lesotho','ISO 3166-2:LS'),(440,'LT','LTU','Lithuania','ISO 3166-2:LT'),(442,'LU','LUX','Luxembourg','ISO 3166-2:LU'),(428,'LV','LVA','Latvia','ISO 3166-2:LV'),(434,'LY','LBY','Libya','ISO 3166-2:LY'),(504,'MA','MAR','Morocco','ISO 3166-2:MA'),(492,'MC','MCO','Monaco','ISO 3166-2:MC'),(498,'MD','MDA','Moldova (Republic of)','ISO 3166-2:MD'),(499,'ME','MNE','Montenegro','ISO 3166-2:ME'),(663,'MF','MAF','Saint Martin (French part)','ISO 3166-2:MF'),(450,'MG','MDG','Madagascar','ISO 3166-2:MG'),(584,'MH','MHL','Marshall Islands','ISO 3166-2:MH'),(807,'MK','MKD','Macedonia (the former Yugoslav Republic of)','ISO 3166-2:MK'),(466,'ML','MLI','Mali','ISO 3166-2:ML'),(104,'MM','MMR','Myanmar','ISO 3166-2:MM'),(496,'MN','MNG','Mongolia','ISO 3166-2:MN'),(446,'MO','MAC','Macao','ISO 3166-2:MO'),(580,'MP','MNP','Northern Mariana Islands','ISO 3166-2:MP'),(474,'MQ','MTQ','Martinique','ISO 3166-2:MQ'),(478,'MR','MRT','Mauritania','ISO 3166-2:MR'),(500,'MS','MSR','Montserrat','ISO 3166-2:MS'),(470,'MT','MLT','Malta','ISO 3166-2:MT'),(480,'MU','MUS','Mauritius','ISO 3166-2:MU'),(462,'MV','MDV','Maldives','ISO 3166-2:MV'),(454,'MW','MWI','Malawi','ISO 3166-2:MW'),(484,'MX','MEX','Mexico','ISO 3166-2:MX'),(458,'MY','MYS','Malaysia','ISO 3166-2:MY'),(508,'MZ','MOZ','Mozambique','ISO 3166-2:MZ'),(516,'NA','NAM','Namibia','ISO 3166-2:NA'),(540,'NC','NCL','New Caledonia','ISO 3166-2:NC'),(562,'NE','NER','Niger','ISO 3166-2:NE'),(574,'NF','NFK','Norfolk Island','ISO 3166-2:NF'),(566,'NG','NGA','Nigeria','ISO 3166-2:NG'),(558,'NI','NIC','Nicaragua','ISO 3166-2:NI'),(528,'NL','NLD','Netherlands','ISO 3166-2:NL'),(578,'NO','NOR','Norway','ISO 3166-2:NO'),(524,'NP','NPL','Nepal','ISO 3166-2:NP'),(520,'NR','NRU','Nauru','ISO 3166-2:NR'),(570,'NU','NIU','Niue','ISO 3166-2:NU'),(554,'NZ','NZL','New Zealand','ISO 3166-2:NZ'),(512,'OM','OMN','Oman','ISO 3166-2:OM'),(591,'PA','PAN','Panama','ISO 3166-2:PA'),(604,'PE','PER','Peru','ISO 3166-2:PE'),(258,'PF','PYF','French Polynesia','ISO 3166-2:PF'),(598,'PG','PNG','Papua New Guinea','ISO 3166-2:PG'),(608,'PH','PHL','Philippines','ISO 3166-2:PH'),(586,'PK','PAK','Pakistan','ISO 3166-2:PK'),(616,'PL','POL','Poland','ISO 3166-2:PL'),(666,'PM','SPM','Saint Pierre and Miquelon','ISO 3166-2:PM'),(612,'PN','PCN','Pitcairn','ISO 3166-2:PN'),(630,'PR','PRI','Puerto Rico','ISO 3166-2:PR'),(275,'PS','PSE','Palestine, State of','ISO 3166-2:PS'),(620,'PT','PRT','Portugal','ISO 3166-2:PT'),(585,'PW','PLW','Palau','ISO 3166-2:PW'),(600,'PY','PRY','Paraguay','ISO 3166-2:PY'),(634,'QA','QAT','Qatar','ISO 3166-2:QA'),(638,'RE','REU','R√©union','ISO 3166-2:RE'),(642,'RO','ROU','Romania','ISO 3166-2:RO'),(688,'RS','SRB','Serbia','ISO 3166-2:RS'),(643,'RU','RUS','Russian Federation','ISO 3166-2:RU'),(646,'RW','RWA','Rwanda','ISO 3166-2:RW'),(682,'SA','SAU','Saudi Arabia','ISO 3166-2:SA'),(90,'SB','SLB','Solomon Islands','ISO 3166-2:SB'),(690,'SC','SYC','Seychelles','ISO 3166-2:SC'),(729,'SD','SDN','Sudan','ISO 3166-2:SD'),(752,'SE','SWE','Sweden','ISO 3166-2:SE'),(702,'SG','SGP','Singapore','ISO 3166-2:SG'),(654,'SH','SHN','Saint Helena, Ascension and Tristan da Cunha','ISO 3166-2:SH'),(705,'SI','SVN','Slovenia','ISO 3166-2:SI'),(744,'SJ','SJM','Svalbard and Jan Mayen','ISO 3166-2:SJ'),(703,'SK','SVK','Slovakia','ISO 3166-2:SK'),(694,'SL','SLE','Sierra Leone','ISO 3166-2:SL'),(674,'SM','SMR','San Marino','ISO 3166-2:SM'),(686,'SN','SEN','Senegal','ISO 3166-2:SN'),(706,'SO','SOM','Somalia','ISO 3166-2:SO'),(740,'SR','SUR','Suriname','ISO 3166-2:SR'),(728,'SS','SSD','South Sudan','ISO 3166-2:SS'),(678,'ST','STP','Sao Tome and Principe','ISO 3166-2:ST'),(222,'SV','SLV','El Salvador','ISO 3166-2:SV'),(534,'SX','SXM','Sint Maarten (Dutch part)','ISO 3166-2:SX'),(760,'SY','SYR','Syrian Arab Republic','ISO 3166-2:SY'),(748,'SZ','SWZ','Swaziland','ISO 3166-2:SZ'),(796,'TC','TCA','Turks and Caicos Islands','ISO 3166-2:TC'),(148,'TD','TCD','Chad','ISO 3166-2:TD'),(260,'TF','ATF','French Southern Territories','ISO 3166-2:TF'),(768,'TG','TGO','Togo','ISO 3166-2:TG'),(764,'TH','THA','Thailand','ISO 3166-2:TH'),(762,'TJ','TJK','Tajikistan','ISO 3166-2:TJ'),(772,'TK','TKL','Tokelau','ISO 3166-2:TK'),(626,'TL','TLS','Timor-Leste','ISO 3166-2:TL'),(795,'TM','TKM','Turkmenistan','ISO 3166-2:TM'),(788,'TN','TUN','Tunisia','ISO 3166-2:TN'),(776,'TO','TON','Tonga','ISO 3166-2:TO'),(792,'TR','TUR','Turkey','ISO 3166-2:TR'),(780,'TT','TTO','Trinidad and Tobago','ISO 3166-2:TT'),(798,'TV','TUV','Tuvalu','ISO 3166-2:TV'),(158,'TW','TWN','Taiwan, Province of China','ISO 3166-2:TW'),(834,'TZ','TZA','Tanzania, United Republic of','ISO 3166-2:TZ'),(804,'UA','UKR','Ukraine','ISO 3166-2:UA'),(800,'UG','UGA','Uganda','ISO 3166-2:UG'),(581,'UM','UMI','United States Minor Outlying Islands','ISO 3166-2:UM'),(840,'US','USA','United States of America','ISO 3166-2:US'),(858,'UY','URY','Uruguay','ISO 3166-2:UY'),(860,'UZ','UZB','Uzbekistan','ISO 3166-2:UZ'),(336,'VA','VAT','Holy See','ISO 3166-2:VA'),(670,'VC','VCT','Saint Vincent and the Grenadines','ISO 3166-2:VC'),(862,'VE','VEN','Venezuela (Bolivarian Republic of)','ISO 3166-2:VE'),(92,'VG','VGB','Virgin Islands (British)','ISO 3166-2:VG'),(850,'VI','VIR','Virgin Islands (U.S.)','ISO 3166-2:VI'),(704,'VN','VNM','Viet Nam','ISO 3166-2:VN'),(548,'VU','VUT','Vanuatu','ISO 3166-2:VU'),(876,'WF','WLF','Wallis and Futuna','ISO 3166-2:WF'),(882,'WS','WSM','Samoa','ISO 3166-2:WS'),(887,'YE','YEM','Yemen','ISO 3166-2:YE'),(175,'YT','MYT','Mayotte','ISO 3166-2:YT'),(710,'ZA','ZAF','South Africa','ISO 3166-2:ZA'),(894,'ZM','ZMB','Zambia','ISO 3166-2:ZM'),(716,'ZW','ZWE','Zimbabwe','ISO 3166-2:ZW');
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CountryBlockList`
--

DROP TABLE IF EXISTS `CountryBlockList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CountryBlockList` (
  `Cobl_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Coun_Numeric` int(5) NOT NULL,
  `Cobl_Transaction` tinyint(1) DEFAULT '0',
  `Cobl_MerchantServerLocation` tinyint(1) DEFAULT '0',
  `Cobl_MerchantRegistrationLocation` tinyint(1) DEFAULT '0',
  `Cobl_CreditCardIssueLocation` tinyint(1) DEFAULT '0',
  `Cobl_CreditCardHolderLocation` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Cobl_ID`),
  UNIQUE KEY `Cobl_ID_UNIQUE` (`Cobl_ID`),
  UNIQUE KEY `Coun_Numeric_UNIQUE` (`Coun_Numeric`),
  CONSTRAINT `FK_CountryBlockList_Country` FOREIGN KEY (`Coun_Numeric`) REFERENCES `Country` (`Coun_Numeric`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=997 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CountryBlockList`
--

LOCK TABLES `CountryBlockList` WRITE;
/*!40000 ALTER TABLE `CountryBlockList` DISABLE KEYS */;
INSERT INTO `CountryBlockList` VALUES (748,4,1,0,0,1,1),(749,8,0,0,0,0,0),(750,12,0,0,0,0,1),(751,16,0,0,0,0,0),(752,20,0,1,0,0,0),(753,24,0,0,0,0,0),(754,660,0,0,0,0,0),(755,10,1,0,0,0,0),(756,28,1,0,0,0,0),(757,32,0,0,0,0,0),(758,51,0,0,0,0,0),(759,533,0,0,0,0,0),(760,36,0,0,0,0,0),(761,40,0,0,0,0,0),(762,31,0,0,0,0,0),(763,44,0,0,0,0,0),(764,48,0,0,0,0,0),(765,50,0,0,0,0,0),(766,52,0,0,0,0,0),(767,112,0,0,0,0,0),(768,56,0,0,0,0,0),(769,84,0,0,0,0,0),(770,204,0,0,0,0,0),(771,60,0,0,0,0,0),(772,64,0,0,0,0,0),(773,68,0,0,0,0,0),(774,535,0,0,0,0,0),(775,70,0,0,0,0,0),(776,72,0,0,0,0,0),(777,74,0,0,0,0,0),(778,76,0,0,0,0,0),(779,86,0,0,0,0,0),(780,96,0,0,0,0,0),(781,100,0,0,0,0,0),(782,854,0,0,0,0,0),(783,108,0,0,0,0,0),(784,132,0,0,0,0,0),(785,116,0,0,0,0,0),(786,120,0,0,0,0,0),(787,124,0,0,0,0,0),(788,136,0,0,0,0,0),(789,140,0,0,0,0,0),(790,148,0,0,0,0,0),(791,152,0,0,0,0,0),(792,156,0,0,0,0,0),(793,162,0,0,0,0,0),(794,166,0,0,0,0,0),(795,170,0,0,0,0,0),(796,174,0,0,0,0,0),(797,178,0,0,0,0,0),(798,180,0,0,0,0,0),(799,184,0,0,0,0,0),(800,188,0,0,0,0,0),(801,191,0,0,0,0,0),(802,192,0,0,0,0,0),(803,531,0,0,0,0,0),(804,196,0,0,0,0,0),(805,203,0,0,0,0,0),(806,384,0,0,0,0,0),(807,208,0,0,0,0,0),(808,262,0,0,0,0,0),(809,212,0,0,0,0,0),(810,214,0,0,0,0,0),(811,218,0,0,0,0,0),(812,818,0,0,0,0,0),(813,222,0,0,0,0,0),(814,226,0,0,0,0,0),(815,232,0,0,0,0,0),(816,233,0,0,0,0,0),(817,231,0,0,0,0,0),(818,238,0,0,0,0,0),(819,234,0,0,0,0,0),(820,242,0,0,0,0,0),(821,246,0,0,0,0,0),(822,250,0,0,0,0,0),(823,254,0,0,0,0,0),(824,258,0,0,0,0,0),(825,260,0,0,0,0,0),(826,266,0,0,0,0,0),(827,270,0,0,0,0,0),(828,268,0,0,0,0,0),(829,276,0,0,0,0,0),(830,288,0,0,0,0,0),(831,292,0,0,0,0,0),(832,300,0,0,0,0,0),(833,304,0,0,0,0,0),(834,308,0,0,0,0,0),(835,312,0,0,0,0,0),(836,316,0,0,0,0,0),(837,320,0,0,0,0,0),(838,831,0,0,0,0,0),(839,324,0,0,0,0,0),(840,624,0,0,0,0,0),(841,328,0,0,0,0,0),(842,332,0,0,0,0,0),(843,334,0,0,0,0,0),(844,336,0,0,0,0,0),(845,340,0,0,0,0,0),(846,344,0,0,0,0,0),(847,348,0,0,0,0,0),(848,352,0,0,0,0,0),(849,356,0,0,0,0,0),(850,360,0,0,0,0,0),(851,364,0,0,0,0,0),(852,368,0,0,0,0,0),(853,372,0,0,0,0,0),(854,833,0,0,0,0,0),(855,376,0,0,0,0,0),(856,380,0,0,0,0,0),(857,388,0,0,0,0,0),(858,392,0,0,0,0,0),(859,832,0,0,0,0,0),(860,400,0,0,0,0,0),(861,398,0,0,0,0,0),(862,404,0,0,0,0,0),(863,296,0,0,0,0,0),(864,408,0,0,0,0,0),(865,410,0,0,0,0,0),(866,414,0,0,0,0,0),(867,417,0,0,0,0,0),(868,418,0,0,0,0,0),(869,428,0,0,0,0,0),(870,422,0,0,0,0,0),(871,426,0,0,0,0,0),(872,430,0,0,0,0,0),(873,434,0,0,0,0,0),(874,438,0,0,0,0,0),(875,440,0,0,0,0,0),(876,442,0,0,0,0,0),(877,446,0,0,0,0,0),(878,807,0,0,0,0,0),(879,450,0,0,0,0,0),(880,454,0,0,0,0,0),(881,458,0,0,0,0,0),(882,462,0,0,0,0,0),(883,466,0,0,0,0,0),(884,470,0,0,0,0,0),(885,584,0,0,0,0,0),(886,474,0,0,0,0,0),(887,478,0,0,0,0,0),(888,480,0,0,0,0,0),(889,175,0,0,0,0,0),(890,484,0,0,0,0,0),(891,583,0,0,0,0,0),(892,498,0,0,0,0,0),(893,492,0,0,0,0,0),(894,496,0,0,0,0,0),(895,499,0,0,0,0,0),(896,500,0,0,0,0,0),(897,504,0,0,0,0,0),(898,508,0,0,0,0,0),(899,104,0,0,0,0,0),(900,516,0,0,0,0,0),(901,520,0,0,0,0,0),(902,524,0,0,0,0,0),(903,528,0,0,0,0,0),(904,540,0,0,0,0,0),(905,554,0,0,0,0,0),(906,558,0,0,0,0,0),(907,562,0,0,0,0,0),(908,566,0,0,0,0,0),(909,570,0,0,0,0,0),(910,574,0,0,0,0,0),(911,580,0,0,0,0,0),(912,578,0,0,0,0,0),(913,512,0,0,0,0,0),(914,586,0,0,0,0,0),(915,585,0,0,0,0,0),(916,275,0,0,0,0,0),(917,591,0,0,0,0,0),(918,598,0,0,0,0,0),(919,600,0,0,0,0,0),(920,604,0,0,0,0,0),(921,608,0,0,0,0,0),(922,612,0,0,0,0,0),(923,616,0,0,0,0,0),(924,620,0,0,0,0,0),(925,630,0,0,0,0,0),(926,634,0,0,0,0,0),(927,642,0,0,0,0,0),(928,643,0,0,0,0,0),(929,646,0,0,0,0,0),(930,638,0,0,0,0,0),(931,652,0,0,0,0,0),(932,654,0,0,0,0,0),(933,659,0,0,0,0,0),(934,662,0,0,0,0,0),(935,663,0,0,0,0,0),(936,666,0,0,0,0,0),(937,670,0,0,0,0,0),(938,882,0,0,0,0,0),(939,674,0,0,0,0,0),(940,678,0,0,0,0,0),(941,682,0,0,0,0,0),(942,686,0,0,0,0,0),(943,688,0,0,0,0,0),(944,690,0,0,0,0,0),(945,694,0,0,0,0,0),(946,702,0,0,0,0,0),(947,534,0,0,0,0,0),(948,703,0,0,0,0,0),(949,705,0,0,0,0,0),(950,90,0,0,0,0,0),(951,706,0,0,0,0,0),(952,710,0,0,0,0,0),(953,239,0,0,0,0,0),(954,728,0,0,0,0,0),(955,724,0,0,0,0,0),(956,144,0,0,0,0,0),(957,729,0,0,0,0,0),(958,740,0,0,0,0,0),(959,744,0,0,0,0,0),(960,748,0,0,0,0,0),(961,752,0,0,0,0,0),(962,756,0,0,0,0,0),(963,760,0,0,0,0,0),(964,158,0,0,0,0,0),(965,762,0,0,0,0,0),(966,834,0,0,0,0,0),(967,764,0,0,0,0,0),(968,626,0,0,0,0,0),(969,768,0,0,0,0,0),(970,772,0,0,0,0,0),(971,776,0,0,0,0,0),(972,780,0,0,0,0,0),(973,788,0,0,0,0,0),(974,792,0,0,0,0,0),(975,795,0,0,0,0,0),(976,796,0,0,0,0,0),(977,798,0,0,0,0,0),(978,800,0,0,0,0,0),(979,804,0,0,0,0,0),(980,784,0,0,0,0,0),(981,826,0,0,0,0,0),(982,581,0,0,0,0,0),(983,840,0,0,0,0,0),(984,858,0,0,0,0,0),(985,860,0,0,0,0,0),(986,548,0,0,0,0,0),(987,862,0,0,0,0,0),(988,704,0,0,0,0,0),(989,92,0,0,0,0,0),(990,850,0,0,0,0,0),(991,876,0,0,0,0,0),(992,732,0,0,0,0,0),(993,887,0,0,0,0,0),(994,894,0,0,0,0,0),(995,716,0,0,0,0,0),(996,248,0,0,0,0,0);
/*!40000 ALTER TABLE `CountryBlockList` ENABLE KEYS */;
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
  UNIQUE KEY `UNIQUE_CounNumeric_Mere_Concept` (`Core_Concept`,`Coun_Numeric`),
  KEY `FK_CountryRestrictionCountry_idx` (`Coun_Numeric`),
  CONSTRAINT `FK_CountryRestrictionCountry` FOREIGN KEY (`Coun_Numeric`) REFERENCES `Country` (`Coun_Numeric`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CountryRestriction`
--

LOCK TABLES `CountryRestriction` WRITE;
/*!40000 ALTER TABLE `CountryRestriction` DISABLE KEYS */;
INSERT INTO `CountryRestriction` VALUES (2,24,1300,'Transactions','1440','0','2015-02-25 11:24:25'),(3,24,300,'Amount','1440','0','2015-01-15 17:45:57'),(4,4,10,'Amount','60','0','2015-03-28 14:46:05');
/*!40000 ALTER TABLE `CountryRestriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CreditCardRestriction`
--

DROP TABLE IF EXISTS `CreditCardRestriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CreditCardRestriction` (
  `Ccre_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Ccre_Value` int(5) NOT NULL,
  `Ccre_Concept` varchar(50) NOT NULL,
  `Ccre_TimeUnit` varchar(50) NOT NULL,
  `Ccre_Status` enum('0','1') NOT NULL,
  `Ccre_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Ccre_ID`),
  UNIQUE KEY `Ccre_ID_UNIQUE` (`Ccre_ID`),
  UNIQUE KEY `Ccre_Concept_UNIQUE` (`Ccre_Concept`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CreditCardRestriction`
--

LOCK TABLES `CreditCardRestriction` WRITE;
/*!40000 ALTER TABLE `CreditCardRestriction` DISABLE KEYS */;
INSERT INTO `CreditCardRestriction` VALUES (1,10,'Amount','14400','0','2015-02-02 20:01:42'),(6,1000,'Transactions','1440','0','2015-02-02 20:01:31');
/*!40000 ALTER TABLE `CreditCardRestriction` ENABLE KEYS */;
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
INSERT INTO `Currency` VALUES (971,4,'Afghanistan','Afghani','AFN',2),(978,248,'√Öland Islands','Euro','EUR',2),(8,8,'Albania','Lek','ALL',2),(12,12,'Algeria','Algerian Dinar','DZD',2),(840,16,'American Samoa','US Dollar','USD',2),(978,20,'Andorra','Euro','EUR',2),(973,24,'Angola','Kwanza','AOA',2),(951,660,'Anguilla','East Caribbean Dollar','XCD',2),(951,28,'Antigua and Barbuda','East Caribbean Dollar','XCD',2),(32,32,'Argentina','Argentine Peso','ARS',2),(51,51,'Armenia','Armenian Dram','AMD',2),(533,533,'Aruba','Aruban Florin','AWG',2),(36,36,'Australia','Australian Dollar','AUD',2),(978,40,'Austria','Euro','EUR',2),(944,31,'Azerbaijan','Azerbaijanian Manat','AZN',2),(44,44,'Bahamas','Bahamian Dollar','BSD',2),(48,48,'Bahrain','Bahraini Dinar','BHD',3),(50,50,'Bangladesh','Taka','BDT',2),(52,52,'Barbados','Barbados Dollar','BBD',2),(974,112,'Belarus','Belarussian Ruble','BYR',0),(978,56,'Belgium','Euro','EUR',2),(84,84,'Belize','Belize Dollar','BZD',2),(952,204,'Benin','CFA Franc BCEAO','XOF',0),(60,60,'Bermuda','Bermudian Dollar','BMD',2),(64,64,'Bhutan','Ngultrum','BTN',2),(356,64,'Bhutan','Indian Rupee','INR',2),(840,535,'Bonaire, Sint Eustatius and Saba','US Dollar','USD',2),(977,70,'Bosnia and Herzegovina','Convertible Mark','BAM',2),(72,72,'Botswana','Pula','BWP',2),(578,74,'Bouvet Island','Norwegian Krone','NOK',2),(986,76,'Brazil','Brazilian Real','BRL',2),(840,86,'British Indian Ocean Territory','US Dollar','USD',2),(96,96,'Brunei Darussalam','Brunei Dollar','BND',2),(975,100,'Bulgaria','Bulgarian Lev','BGN',2),(952,854,'Burkina Faso','CFA Franc BCEAO','XOF',0),(108,108,'Burundi','Burundi Franc','BIF',0),(116,116,'Cambodia','Riel','KHR',2),(950,120,'Cameroon','CFA Franc BEAC','XAF',0),(124,124,'Canada','Canadian Dollar','CAD',2),(132,132,'Cabo Verde','Cabo Verde Escudo','CVE',2),(136,136,'Cayman Islands','Cayman Islands Dollar','KYD',2),(950,140,'Central African Republic','CFA Franc BEAC','XAF',0),(950,148,'Chad','CFA Franc BEAC','XAF',0),(990,152,'Chile','Unidad de Fomento','CLF',4),(152,152,'Chile','Chilean Peso','CLP',0),(156,156,'China','Yuan Renminbi','CNY',2),(36,162,'Christmas Island','Australian Dollar','AUD',2),(36,166,'Cocos (Keeling) Islands','Australian Dollar','AUD',2),(170,170,'Colombia','Colombian Peso','COP',2),(970,170,'Colombia','Unidad de Valor Real','COU',2),(174,174,'Comoros','Comoro Franc','KMF',0),(950,178,'Congo','CFA Franc BEAC','XAF',0),(554,184,'Cook Islands','New Zealand Dollar','NZD',2),(188,188,'Costa Rica','Costa Rican Colon','CRC',2),(952,384,'C√¥te d\'Ivoire','CFA Franc BCEAO','XOF',0),(191,191,'Croatia','Croatian Kuna','HRK',2),(931,192,'Cuba','Peso Convertible','CUC',2),(192,192,'Cuba','Cuban Peso','CUP',2),(532,531,'Cura√ßao','Netherlands Antillean Guilder','ANG',2),(978,196,'Cyprus','Euro','EUR',2),(203,203,'Czech Republic','Czech Koruna','CZK',2),(208,208,'Denmark','Danish Krone','DKK',2),(262,262,'Djibouti','Djibouti Franc','DJF',0),(951,212,'Dominica','East Caribbean Dollar','XCD',2),(214,214,'Dominican Republic','Dominican Peso','DOP',2),(840,218,'Ecuador','US Dollar','USD',2),(818,818,'Egypt','Egyptian Pound','EGP',2),(222,222,'El Salvador','El Salvador Colon','SVC',2),(840,222,'El Salvador','US Dollar','USD',2),(950,226,'Equatorial Guinea','CFA Franc BEAC','XAF',0),(232,232,'Eritrea','Nakfa','ERN',2),(978,233,'Estonia','Euro','EUR',2),(230,231,'Ethiopia','Ethiopian Birr','ETB',2),(238,238,'Falkland Islands (Malvinas)','Falkland Islands Pound','FKP',2),(208,234,'Faroe Islands','Danish Krone','DKK',2),(242,242,'Fiji','Fiji Dollar','FJD',2),(978,246,'Finland','Euro','EUR',2),(978,250,'France','Euro','EUR',2),(978,254,'French Guiana','Euro','EUR',2),(953,258,'French Polynesia','CFP Franc','XPF',0),(978,260,'French Southern Territories','Euro','EUR',2),(950,266,'Gabon','CFA Franc BEAC','XAF',0),(270,270,'Gambia','Dalasi','GMD',2),(981,268,'Georgia','Lari','GEL',2),(978,276,'Germany','Euro','EUR',2),(936,288,'Ghana','Ghana Cedi','GHS',2),(292,292,'Gibraltar','Gibraltar Pound','GIP',2),(978,300,'Greece','Euro','EUR',2),(208,304,'Greenland','Danish Krone','DKK',2),(951,308,'Grenada','East Caribbean Dollar','XCD',2),(978,312,'Guadeloupe','Euro','EUR',2),(840,316,'Guam','US Dollar','USD',2),(320,320,'Guatemala','Quetzal','GTQ',2),(826,831,'Guernsey','Pound Sterling','GBP',2),(324,324,'Guinea','Guinea Franc','GNF',0),(952,624,'Guinea-Bissau','CFA Franc BCEAO','XOF',0),(328,328,'Guyana','Guyana Dollar','GYD',2),(332,332,'Haiti','Gourde','HTG',2),(840,332,'Haiti','US Dollar','USD',2),(36,334,'Heard Island and McDonald Islands','Australian Dollar','AUD',2),(340,340,'Honduras','Lempira','HNL',2),(344,344,'Hong Kong','Hong Kong Dollar','HKD',2),(348,348,'Hungary','Forint','HUF',2),(352,352,'Iceland','Iceland Krona','ISK',0),(356,356,'India','Indian Rupee','INR',2),(360,360,'Indonesia','Rupiah','IDR',2),(368,368,'Iraq','Iraqi Dinar','IQD',3),(978,372,'Ireland','Euro','EUR',2),(826,833,'Isle of Man','Pound Sterling','GBP',2),(376,376,'Israel','New Israeli Sheqel','ILS',2),(978,380,'Italy','Euro','EUR',2),(388,388,'Jamaica','Jamaican Dollar','JMD',2),(392,392,'Japan','Yen','JPY',0),(826,832,'Jersey','Pound Sterling','GBP',2),(400,400,'Jordan','Jordanian Dinar','JOD',3),(398,398,'Kazakhstan','Tenge','KZT',2),(404,404,'Kenya','Kenyan Shilling','KES',2),(36,296,'Kiribati','Australian Dollar','AUD',2),(414,414,'Kuwait','Kuwaiti Dinar','KWD',3),(417,417,'Kyrgyzstan','Som','KGS',2),(978,428,'Latvia','Euro','EUR',2),(422,422,'Lebanon','Lebanese Pound','LBP',2),(426,426,'Lesotho','Loti','LSL',2),(710,426,'Lesotho','Rand','ZAR',2),(430,430,'Liberia','Liberian Dollar','LRD',2),(434,434,'Libya','Libyan Dinar','LYD',3),(756,438,'Liechtenstein','Swiss Franc','CHF',2),(978,440,'Lithuania','Euro','EUR',2),(978,442,'Luxembourg','Euro','EUR',2),(446,446,'Macao','Pataca','MOP',2),(969,450,'Madagascar','Malagasy Ariary','MGA',2),(454,454,'Malawi','Kwacha','MWK',2),(458,458,'Malaysia','Malaysian Ringgit','MYR',2),(462,462,'Maldives','Rufiyaa','MVR',2),(952,466,'Mali','CFA Franc BCEAO','XOF',0),(978,470,'Malta','Euro','EUR',2),(840,584,'Marshall Islands','US Dollar','USD',2),(978,474,'Martinique','Euro','EUR',2),(478,478,'Mauritania','Ouguiya','MRO',2),(480,480,'Mauritius','Mauritius Rupee','MUR',2),(978,175,'Mayotte','Euro','EUR',2),(484,484,'Mexico','Mexican Peso','MXN',2),(979,484,'Mexico','Mexican Unidad de Inversion (UDI)','MXV',2),(978,492,'Monaco','Euro','EUR',2),(496,496,'Mongolia','Tugrik','MNT',2),(978,499,'Montenegro','Euro','EUR',2),(951,500,'Montserrat','East Caribbean Dollar','XCD',2),(504,504,'Morocco','Moroccan Dirham','MAD',2),(943,508,'Mozambique','Mozambique Metical','MZN',2),(104,104,'Myanmar','Kyat','MMK',2),(516,516,'Namibia','Namibia Dollar','NAD',2),(710,516,'Namibia','Rand','ZAR',2),(36,520,'Nauru','Australian Dollar','AUD',2),(524,524,'Nepal','Nepalese Rupee','NPR',2),(978,528,'Netherlands','Euro','EUR',2),(953,540,'New Caledonia','CFP Franc','XPF',0),(554,554,'New Zealand','New Zealand Dollar','NZD',2),(558,558,'Nicaragua','Cordoba Oro','NIO',2),(952,562,'Niger','CFA Franc BCEAO','XOF',0),(566,566,'Nigeria','Naira','NGN',2),(554,570,'Niue','New Zealand Dollar','NZD',2),(36,574,'Norfolk Island','Australian Dollar','AUD',2),(840,580,'Northern Mariana Islands','US Dollar','USD',2),(578,578,'Norway','Norwegian Krone','NOK',2),(512,512,'Oman','Rial Omani','OMR',3),(586,586,'Pakistan','Pakistan Rupee','PKR',2),(840,585,'Palau','US Dollar','USD',2),(590,591,'Panama','Balboa','PAB',2),(840,591,'Panama','US Dollar','USD',2),(598,598,'Papua New Guinea','Kina','PGK',2),(600,600,'Paraguay','Guarani','PYG',0),(604,604,'Peru','Nuevo Sol','PEN',2),(608,608,'Philippines','Philippine Peso','PHP',2),(554,612,'Pitcairn','New Zealand Dollar','NZD',2),(985,616,'Poland','Zloty','PLN',2),(978,620,'Portugal','Euro','EUR',2),(840,630,'Puerto Rico','US Dollar','USD',2),(634,634,'Qatar','Qatari Rial','QAR',2),(978,638,'R√©union','Euro','EUR',2),(946,642,'Romania','New Romanian Leu','RON',2),(643,643,'Russian Federation','Russian Ruble','RUB',2),(646,646,'Rwanda','Rwanda Franc','RWF',0),(978,652,'Saint Barth√©lemy','Euro','EUR',2),(951,659,'Saint Kitts and Nevis','East Caribbean Dollar','XCD',2),(951,662,'Saint Lucia','East Caribbean Dollar','XCD',2),(978,663,'Saint Martin (French part)','Euro','EUR',2),(978,666,'Saint Pierre and Miquelon','Euro','EUR',2),(951,670,'Saint Vincent and the Grenadines','East Caribbean Dollar','XCD',2),(882,882,'Samoa','Tala','WST',2),(978,674,'San Marino','Euro','EUR',2),(678,678,'Sao Tome and Principe','Dobra','STD',2),(682,682,'Saudi Arabia','Saudi Riyal','SAR',2),(952,686,'Senegal','CFA Franc BCEAO','XOF',0),(941,688,'Serbia','Serbian Dinar','RSD',2),(690,690,'Seychelles','Seychelles Rupee','SCR',2),(694,694,'Sierra Leone','Leone','SLL',2),(702,702,'Singapore','Singapore Dollar','SGD',2),(532,534,'Sint Maarten (Dutch part)','Netherlands Antillean Guilder','ANG',2),(978,703,'Slovakia','Euro','EUR',2),(978,705,'Slovenia','Euro','EUR',2),(90,90,'Solomon Islands','Solomon Islands Dollar','SBD',2),(706,706,'Somalia','Somali Shilling','SOS',2),(710,710,'South Africa','Rand','ZAR',2),(728,728,'South Sudan','South Sudanese Pound','SSP',2),(978,724,'Spain','Euro','EUR',2),(144,144,'Sri Lanka','Sri Lanka Rupee','LKR',2),(938,729,'Sudan','Sudanese Pound','SDG',2),(968,740,'Suriname','Surinam Dollar','SRD',2),(578,744,'Svalbard and Jan Mayen','Norwegian Krone','NOK',2),(748,748,'Swaziland','Lilangeni','SZL',2),(752,752,'Sweden','Swedish Krona','SEK',2),(947,756,'Switzerland','WIR Euro','CHE',2),(756,756,'Switzerland','Swiss Franc','CHF',2),(948,756,'Switzerland','WIR Franc','CHW',2),(760,760,'Syrian Arab Republic','Syrian Pound','SYP',2),(901,158,'Taiwan, Province of China','New Taiwan Dollar','TWD',2),(972,762,'Tajikistan','Somoni','TJS',2),(834,834,'Tanzania, United Republic of','Tanzanian Shilling','TZS',2),(764,764,'Thailand','Baht','THB',2),(840,626,'Timor-Leste','US Dollar','USD',2),(952,768,'Togo','CFA Franc BCEAO','XOF',0),(554,772,'Tokelau','New Zealand Dollar','NZD',2),(776,776,'Tonga','Pa‚Äôanga','TOP',2),(780,780,'Trinidad and Tobago','Trinidad and Tobago Dollar','TTD',2),(788,788,'Tunisia','Tunisian Dinar','TND',3),(949,792,'Turkey','Turkish Lira','TRY',2),(934,795,'Turkmenistan','Turkmenistan New Manat','TMT',2),(840,796,'Turks and Caicos Islands','US Dollar','USD',2),(36,798,'Tuvalu','Australian Dollar','AUD',2),(800,800,'Uganda','Uganda Shilling','UGX',0),(980,804,'Ukraine','Hryvnia','UAH',2),(784,784,'United Arab Emirates','UAE Dirham','AED',2);
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
INSERT INTO `Currency_Aux` VALUES ('AFGHANISTAN','Afghani','AFN',971,2),('√ÖLAND ISLANDS','Euro','EUR',978,2),('ALBANIA','Lek','ALL',8,2),('ALGERIA','Algerian Dinar','DZD',12,2),('AMERICAN SAMOA','US Dollar','USD',840,2),('ANDORRA','Euro','EUR',978,2),('ANGOLA','Kwanza','AOA',973,2),('ANGUILLA','East Caribbean Dollar','XCD',951,2),('ANTIGUA AND BARBUDA','East Caribbean Dollar','XCD',951,2),('ARGENTINA','Argentine Peso','ARS',32,2),('ARMENIA','Armenian Dram','AMD',51,2),('ARUBA','Aruban Florin','AWG',533,2),('AUSTRALIA','Australian Dollar','AUD',36,2),('AUSTRIA','Euro','EUR',978,2),('AZERBAIJAN','Azerbaijanian Manat','AZN',944,2),('BAHAMAS','Bahamian Dollar','BSD',44,2),('BAHRAIN','Bahraini Dinar','BHD',48,3),('BANGLADESH','Taka','BDT',50,2),('BARBADOS','Barbados Dollar','BBD',52,2),('BELARUS','Belarussian Ruble','BYR',974,0),('BELGIUM','Euro','EUR',978,2),('BELIZE','Belize Dollar','BZD',84,2),('BENIN','CFA Franc BCEAO','XOF',952,0),('BERMUDA','Bermudian Dollar','BMD',60,2),('BHUTAN','Ngultrum','BTN',64,2),('BHUTAN','Indian Rupee','INR',356,2),('BOLIVIA, PLURINATIONAL STATE OF','Boliviano','BOB',68,2),('BOLIVIA, PLURINATIONAL STATE OF','Mvdol','BOV',984,2),('BONAIRE, SINT EUSTATIUS AND SABA','US Dollar','USD',840,2),('BOSNIA AND HERZEGOVINA','Convertible Mark','BAM',977,2),('BOTSWANA','Pula','BWP',72,2),('BOUVET ISLAND','Norwegian Krone','NOK',578,2),('BRAZIL','Brazilian Real','BRL',986,2),('BRITISH INDIAN OCEAN TERRITORY','US Dollar','USD',840,2),('BRUNEI DARUSSALAM','Brunei Dollar','BND',96,2),('BULGARIA','Bulgarian Lev','BGN',975,2),('BURKINA FASO','CFA Franc BCEAO','XOF',952,0),('BURUNDI','Burundi Franc','BIF',108,0),('CAMBODIA','Riel','KHR',116,2),('CAMEROON','CFA Franc BEAC','XAF',950,0),('CANADA','Canadian Dollar','CAD',124,2),('CABO VERDE','Cabo Verde Escudo','CVE',132,2),('CAYMAN ISLANDS','Cayman Islands Dollar','KYD',136,2),('CENTRAL AFRICAN REPUBLIC','CFA Franc BEAC','XAF',950,0),('CHAD','CFA Franc BEAC','XAF',950,0),('CHILE','Unidad de Fomento','CLF',990,4),('CHILE','Chilean Peso','CLP',152,0),('CHINA','Yuan Renminbi','CNY',156,2),('CHRISTMAS ISLAND','Australian Dollar','AUD',36,2),('COCOS (KEELING) ISLANDS','Australian Dollar','AUD',36,2),('COLOMBIA','Colombian Peso','COP',170,2),('COLOMBIA','Unidad de Valor Real','COU',970,2),('COMOROS','Comoro Franc','KMF',174,0),('CONGO','CFA Franc BEAC','XAF',950,0),('CONGO, DEMOCRATIC REPUBLIC OF THE ','Congolese Franc','CDF',976,2),('COOK ISLANDS','New Zealand Dollar','NZD',554,2),('COSTA RICA','Costa Rican Colon','CRC',188,2),('C√îTE D\'IVOIRE','CFA Franc BCEAO','XOF',952,0),('CROATIA','Croatian Kuna','HRK',191,2),('CUBA','Peso Convertible','CUC',931,2),('CUBA','Cuban Peso','CUP',192,2),('CURA√áAO','Netherlands Antillean Guilder','ANG',532,2),('CYPRUS','Euro','EUR',978,2),('CZECH REPUBLIC','Czech Koruna','CZK',203,2),('DENMARK','Danish Krone','DKK',208,2),('DJIBOUTI','Djibouti Franc','DJF',262,0),('DOMINICA','East Caribbean Dollar','XCD',951,2),('DOMINICAN REPUBLIC','Dominican Peso','DOP',214,2),('ECUADOR','US Dollar','USD',840,2),('EGYPT','Egyptian Pound','EGP',818,2),('EL SALVADOR','El Salvador Colon','SVC',222,2),('EL SALVADOR','US Dollar','USD',840,2),('EQUATORIAL GUINEA','CFA Franc BEAC','XAF',950,0),('ERITREA','Nakfa','ERN',232,2),('ESTONIA','Euro','EUR',978,2),('ETHIOPIA','Ethiopian Birr','ETB',230,2),('EUROPEAN UNION','Euro','EUR',978,2),('FALKLAND ISLANDS (MALVINAS)','Falkland Islands Pound','FKP',238,2),('FAROE ISLANDS','Danish Krone','DKK',208,2),('FIJI','Fiji Dollar','FJD',242,2),('FINLAND','Euro','EUR',978,2),('FRANCE','Euro','EUR',978,2),('FRENCH GUIANA','Euro','EUR',978,2),('FRENCH POLYNESIA','CFP Franc','XPF',953,0),('FRENCH SOUTHERN TERRITORIES','Euro','EUR',978,2),('GABON','CFA Franc BEAC','XAF',950,0),('GAMBIA','Dalasi','GMD',270,2),('GEORGIA','Lari','GEL',981,2),('GERMANY','Euro','EUR',978,2),('GHANA','Ghana Cedi','GHS',936,2),('GIBRALTAR','Gibraltar Pound','GIP',292,2),('GREECE','Euro','EUR',978,2),('GREENLAND','Danish Krone','DKK',208,2),('GRENADA','East Caribbean Dollar','XCD',951,2),('GUADELOUPE','Euro','EUR',978,2),('GUAM','US Dollar','USD',840,2),('GUATEMALA','Quetzal','GTQ',320,2),('GUERNSEY','Pound Sterling','GBP',826,2),('GUINEA','Guinea Franc','GNF',324,0),('GUINEA-BISSAU','CFA Franc BCEAO','XOF',952,0),('GUYANA','Guyana Dollar','GYD',328,2),('HAITI','Gourde','HTG',332,2),('HAITI','US Dollar','USD',840,2),('HEARD ISLAND AND McDONALD ISLANDS','Australian Dollar','AUD',36,2),('HOLY SEE (VATICAN CITY STATE)','Euro','EUR',978,2),('HONDURAS','Lempira','HNL',340,2),('HONG KONG','Hong Kong Dollar','HKD',344,2),('HUNGARY','Forint','HUF',348,2),('ICELAND','Iceland Krona','ISK',352,0),('INDIA','Indian Rupee','INR',356,2),('INDONESIA','Rupiah','IDR',360,2),('IRAN, ISLAMIC REPUBLIC OF','Iranian Rial','IRR',364,2),('IRAQ','Iraqi Dinar','IQD',368,3),('IRELAND','Euro','EUR',978,2),('ISLE OF MAN','Pound Sterling','GBP',826,2),('ISRAEL','New Israeli Sheqel','ILS',376,2),('ITALY','Euro','EUR',978,2),('JAMAICA','Jamaican Dollar','JMD',388,2),('JAPAN','Yen','JPY',392,0),('JERSEY','Pound Sterling','GBP',826,2),('JORDAN','Jordanian Dinar','JOD',400,3),('KAZAKHSTAN','Tenge','KZT',398,2),('KENYA','Kenyan Shilling','KES',404,2),('KIRIBATI','Australian Dollar','AUD',36,2),('KOREA, DEMOCRATIC PEOPLE‚ÄôS REPUBLIC OF','North Korean Won','KPW',408,2),('KOREA, REPUBLIC OF','Won','KRW',410,0),('KUWAIT','Kuwaiti Dinar','KWD',414,3),('KYRGYZSTAN','Som','KGS',417,2),('LAO PEOPLE‚ÄôS DEMOCRATIC REPUBLIC','Kip','LAK',418,2),('LATVIA','Euro','EUR',978,2),('LEBANON','Lebanese Pound','LBP',422,2),('LESOTHO','Loti','LSL',426,2),('LESOTHO','Rand','ZAR',710,2),('LIBERIA','Liberian Dollar','LRD',430,2),('LIBYA','Libyan Dinar','LYD',434,3),('LIECHTENSTEIN','Swiss Franc','CHF',756,2),('LITHUANIA','Euro','EUR',978,2),('LUXEMBOURG','Euro','EUR',978,2),('MACAO','Pataca','MOP',446,2),('MACEDONIA, THE FORMER \nYUGOSLAV REPUBLIC OF','Denar','MKD',807,2),('MADAGASCAR','Malagasy Ariary','MGA',969,2),('MALAWI','Kwacha','MWK',454,2),('MALAYSIA','Malaysian Ringgit','MYR',458,2),('MALDIVES','Rufiyaa','MVR',462,2),('MALI','CFA Franc BCEAO','XOF',952,0),('MALTA','Euro','EUR',978,2),('MARSHALL ISLANDS','US Dollar','USD',840,2),('MARTINIQUE','Euro','EUR',978,2),('MAURITANIA','Ouguiya','MRO',478,2),('MAURITIUS','Mauritius Rupee','MUR',480,2),('MAYOTTE','Euro','EUR',978,2),('MEXICO','Mexican Peso','MXN',484,2),('MEXICO','Mexican Unidad de Inversion (UDI)','MXV',979,2),('MICRONESIA, FEDERATED STATES OF','US Dollar','USD',840,2),('MOLDOVA, REPUBLIC OF','Moldovan Leu','MDL',498,2),('MONACO','Euro','EUR',978,2),('MONGOLIA','Tugrik','MNT',496,2),('MONTENEGRO','Euro','EUR',978,2),('MONTSERRAT','East Caribbean Dollar','XCD',951,2),('MOROCCO','Moroccan Dirham','MAD',504,2),('MOZAMBIQUE','Mozambique Metical','MZN',943,2),('MYANMAR','Kyat','MMK',104,2),('NAMIBIA','Namibia Dollar','NAD',516,2),('NAMIBIA','Rand','ZAR',710,2),('NAURU','Australian Dollar','AUD',36,2),('NEPAL','Nepalese Rupee','NPR',524,2),('NETHERLANDS','Euro','EUR',978,2),('NEW CALEDONIA','CFP Franc','XPF',953,0),('NEW ZEALAND','New Zealand Dollar','NZD',554,2),('NICARAGUA','Cordoba Oro','NIO',558,2),('NIGER','CFA Franc BCEAO','XOF',952,0),('NIGERIA','Naira','NGN',566,2),('NIUE','New Zealand Dollar','NZD',554,2),('NORFOLK ISLAND','Australian Dollar','AUD',36,2),('NORTHERN MARIANA ISLANDS','US Dollar','USD',840,2),('NORWAY','Norwegian Krone','NOK',578,2),('OMAN','Rial Omani','OMR',512,3),('PAKISTAN','Pakistan Rupee','PKR',586,2),('PALAU','US Dollar','USD',840,2),('PANAMA','Balboa','PAB',590,2),('PANAMA','US Dollar','USD',840,2),('PAPUA NEW GUINEA','Kina','PGK',598,2),('PARAGUAY','Guarani','PYG',600,0),('PERU','Nuevo Sol','PEN',604,2),('PHILIPPINES','Philippine Peso','PHP',608,2),('PITCAIRN','New Zealand Dollar','NZD',554,2),('POLAND','Zloty','PLN',985,2),('PORTUGAL','Euro','EUR',978,2),('PUERTO RICO','US Dollar','USD',840,2),('QATAR','Qatari Rial','QAR',634,2),('R√âUNION','Euro','EUR',978,2),('ROMANIA','New Romanian Leu','RON',946,2),('RUSSIAN FEDERATION','Russian Ruble','RUB',643,2),('RWANDA','Rwanda Franc','RWF',646,0),('SAINT BARTH√âLEMY','Euro','EUR',978,2),('SAINT HELENA, ASCENSION AND \nTRISTAN DA CUNHA','Saint Helena Pound','SHP',654,2),('SAINT KITTS AND NEVIS','East Caribbean Dollar','XCD',951,2),('SAINT LUCIA','East Caribbean Dollar','XCD',951,2),('SAINT MARTIN (FRENCH PART)','Euro','EUR',978,2),('SAINT PIERRE AND MIQUELON','Euro','EUR',978,2),('SAINT VINCENT AND THE GRENADINES','East Caribbean Dollar','XCD',951,2),('SAMOA','Tala','WST',882,2),('SAN MARINO','Euro','EUR',978,2),('SAO TOME AND PRINCIPE','Dobra','STD',678,2),('SAUDI ARABIA','Saudi Riyal','SAR',682,2),('SENEGAL','CFA Franc BCEAO','XOF',952,0),('SERBIA','Serbian Dinar','RSD',941,2),('SEYCHELLES','Seychelles Rupee','SCR',690,2),('SIERRA LEONE','Leone','SLL',694,2),('SINGAPORE','Singapore Dollar','SGD',702,2),('SINT MAARTEN (DUTCH PART)','Netherlands Antillean Guilder','ANG',532,2),('SLOVAKIA','Euro','EUR',978,2),('SLOVENIA','Euro','EUR',978,2),('SOLOMON ISLANDS','Solomon Islands Dollar','SBD',90,2),('SOMALIA','Somali Shilling','SOS',706,2),('SOUTH AFRICA','Rand','ZAR',710,2),('SOUTH SUDAN','South Sudanese Pound','SSP',728,2),('SPAIN','Euro','EUR',978,2),('SRI LANKA','Sri Lanka Rupee','LKR',144,2),('SUDAN','Sudanese Pound','SDG',938,2),('SURINAME','Surinam Dollar','SRD',968,2),('SVALBARD AND JAN MAYEN','Norwegian Krone','NOK',578,2),('SWAZILAND','Lilangeni','SZL',748,2),('SWEDEN','Swedish Krona','SEK',752,2),('SWITZERLAND','WIR Euro','CHE',947,2),('SWITZERLAND','Swiss Franc','CHF',756,2),('SWITZERLAND','WIR Franc','CHW',948,2),('SYRIAN ARAB REPUBLIC','Syrian Pound','SYP',760,2),('TAIWAN, PROVINCE OF CHINA','New Taiwan Dollar','TWD',901,2),('TAJIKISTAN','Somoni','TJS',972,2),('TANZANIA, UNITED REPUBLIC OF','Tanzanian Shilling','TZS',834,2),('THAILAND','Baht','THB',764,2),('TIMOR-LESTE','US Dollar','USD',840,2),('TOGO','CFA Franc BCEAO','XOF',952,0),('TOKELAU','New Zealand Dollar','NZD',554,2),('TONGA','Pa‚Äôanga','TOP',776,2),('TRINIDAD AND TOBAGO','Trinidad and Tobago Dollar','TTD',780,2),('TUNISIA','Tunisian Dinar','TND',788,3),('TURKEY','Turkish Lira','TRY',949,2),('TURKMENISTAN','Turkmenistan New Manat','TMT',934,2),('TURKS AND CAICOS ISLANDS','US Dollar','USD',840,2),('TUVALU','Australian Dollar','AUD',36,2),('UGANDA','Uganda Shilling','UGX',800,0),('UKRAINE','Hryvnia','UAH',980,2),('UNITED ARAB EMIRATES','UAE Dirham','AED',784,2),('UNITED KINGDOM','Pound Sterling','GBP',826,2),('UNITED STATES','US Dollar','USD',840,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'2014-12-23 20:19:37','edicsonm@gmail.com','6100000000'),(2,'2015-02-08 12:01:44','mearle@gmail.com','6100000000'),(3,'2015-02-08 12:31:33','hmorales@gmail.com','6100000000'),(4,'2015-02-10 09:57:52','ntorres@gmail.com','6100000000'),(5,'2015-03-24 17:56:35','edicson@billingbuddy.com','6100000000'),(6,'2015-04-13 16:46:49','RR@gmail.com','6100000000');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Industry`
--

DROP TABLE IF EXISTS `Industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Industry` (
  `Indu_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Indu_Description` varchar(50) NOT NULL,
  `Indu_Status` varchar(50) NOT NULL DEFAULT '0',
  `Indu_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Indu_ID`),
  UNIQUE KEY `Indu_ID_UNIQUE` (`Indu_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Industry`
--

LOCK TABLES `Industry` WRITE;
/*!40000 ALTER TABLE `Industry` DISABLE KEYS */;
INSERT INTO `Industry` VALUES (1,'Adult','1','2015-03-10 11:08:17'),(2,'Gaming','0','2015-03-10 11:08:23'),(3,'Travel','0','2015-03-04 23:14:48'),(4,'Pharmaceutical','0','2015-03-05 19:53:01');
/*!40000 ALTER TABLE `Industry` ENABLE KEYS */;
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
  `Buty_ID` bigint(20) DEFAULT NULL,
  `Indu_ID` bigint(20) DEFAULT NULL,
  `Coun_NumericMerchant` int(5) DEFAULT NULL,
  `Coun_NumericPersonalInformation` int(5) DEFAULT NULL,
  `Merc_Name` varchar(100) NOT NULL,
  `Merc_Status` enum('0','1') NOT NULL DEFAULT '0',
  `Merc_CreateTime` datetime NOT NULL,
  `Merc_TradingName` varchar(50) DEFAULT NULL,
  `Merc_LegalPhysicalAddress` varchar(50) DEFAULT NULL,
  `Merc_StatementAddress` varchar(50) DEFAULT NULL,
  `Merc_TaxFileNumber` varchar(50) DEFAULT NULL,
  `Merc_CityBusinessInformation` varchar(50) DEFAULT NULL,
  `Merc_PostCodeBusinessInformation` varchar(50) DEFAULT NULL,
  `Merc_IssuedBusinessID` varchar(50) DEFAULT NULL,
  `Merc_IssuedPersonalID` varchar(50) DEFAULT NULL,
  `Merc_TypeAccountApplication` varchar(50) DEFAULT NULL,
  `Merc_EstimatedAnnualSales` varchar(50) DEFAULT NULL,
  `Merc_FirstName` varchar(50) DEFAULT NULL,
  `Merc_LastName` varchar(50) DEFAULT NULL,
  `Merc_PhoneNumber` varchar(50) DEFAULT NULL,
  `Merc_FaxNumber` varchar(50) DEFAULT NULL,
  `Merc_EmailAddress` varchar(50) DEFAULT NULL,
  `Merc_AlternateEmailAddress` varchar(50) DEFAULT NULL,
  `Merc_CityPersonalInformation` varchar(50) DEFAULT NULL,
  `Merc_PostCodePersonalInformation` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Merc_ID`),
  KEY `FK_Merchant_Country_idx` (`Coun_NumericMerchant`),
  KEY `FK_Merchant_Industry_idx` (`Indu_ID`),
  KEY `FK_Merchant_BusinessType` (`Buty_ID`),
  KEY `FK_Merchant_Country2_idx` (`Coun_NumericPersonalInformation`),
  CONSTRAINT `FK_Merchant_BusinessType` FOREIGN KEY (`Buty_ID`) REFERENCES `BusinessType` (`Buty_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Merchant_Country1` FOREIGN KEY (`Coun_NumericMerchant`) REFERENCES `Country` (`Coun_Numeric`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Merchant_Country2` FOREIGN KEY (`Coun_NumericPersonalInformation`) REFERENCES `Country` (`Coun_Numeric`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Merchant_Industry` FOREIGN KEY (`Indu_ID`) REFERENCES `Industry` (`Indu_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Merchant`
--

LOCK TABLES `Merchant` WRITE;
/*!40000 ALTER TABLE `Merchant` DISABLE KEYS */;
INSERT INTO `Merchant` VALUES (1,1,1,170,170,'Tuticket.com.co','0','2015-01-18 18:49:50','','','','','','','','','','','','','','','','','',''),(2,1,1,862,170,'Tucarro.com.ve','0','2015-01-16 21:29:55','','','','','','','','','','','','','','','','','',''),(3,1,1,862,170,'Tutickewww','0','2015-01-16 21:21:25','','','','','','','','','','','','','','','','','',''),(4,1,1,170,170,'Mercado Libre','0','2015-02-02 11:15:48','','','','','','','','','','','','','','','','','',''),(5,2,3,170,170,'Empresas Polar Colombia','0','2015-03-05 19:52:09','Empresas Polar Colombia','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19'),(6,1,1,862,862,'Empresas Polar Venezuela','0','2015-03-05 19:52:25','Empresas Polar Venezuela','Caracas','Av Ppal El Bosque','102030','Caracas','1060','8','9','10','11','12','13','14','15','16','17','18','19'),(7,1,3,862,862,'Tu ticket','0','2015-03-13 09:23:55','2','3','4','5','6','7','8','9','10','11','TuTicket','Venezuela','14','15','16','17','18','19'),(8,2,2,604,604,'Mercado Libre Peru','0','2015-03-14 09:41:38','2','3','4','5','6','7','8','9','10','11','Mercado','13','14','15','16','17','18','19'),(9,NULL,NULL,NULL,NULL,'Company15.com','0','2015-03-18 18:05:33',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Edicson','Morales',NULL,NULL,'edicson@billingbuddy.com',NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,'Company19.com','0','2015-03-19 17:48:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'company19','company19 last name',NULL,NULL,'company19@billingbuddy.com',NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL,'BillingBuddy','0','2015-03-21 08:59:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Angus','',NULL,NULL,'angus@billingbuddy.com',NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,'wer','0','2015-03-26 17:43:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EMT Ltda','',NULL,NULL,'edicson@billingbuddy.com',NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,'wer','0','2015-03-26 17:43:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EMT Ltda','',NULL,NULL,'edicson2@billingbuddy.com',NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,'asd','0','2015-03-26 17:51:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sad','',NULL,NULL,'edicson@billingbuddy.com',NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL,'asd','0','2015-03-26 17:51:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sad','',NULL,NULL,'edicson3@billingbuddy.com',NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL,'a','1','2015-03-26 18:09:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a','',NULL,NULL,'edicson4@billingbuddy.com',NULL,NULL,NULL),(17,NULL,NULL,NULL,NULL,'Usuario','0','2015-03-27 09:31:31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Usuario','Usuario',NULL,NULL,'ingesis9@hotmail.com',NULL,NULL,NULL),(18,NULL,NULL,NULL,NULL,'w','0','2015-03-27 09:55:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'w','',NULL,NULL,'ingesis9@hotmail.com',NULL,NULL,NULL),(19,NULL,NULL,NULL,NULL,'qw','0','2015-03-27 10:14:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'qe','',NULL,NULL,'ingesis9@hotmail.com',NULL,NULL,NULL),(20,NULL,NULL,NULL,NULL,'w','0','2015-03-27 10:25:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'w','',NULL,NULL,'ingesis9@hotmail.com',NULL,NULL,NULL);
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
  `Meco_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Meco_ID`),
  UNIQUE KEY `Come_ID_UNIQUE` (`Meco_ID`),
  UNIQUE KEY `Merc_ID_UNIQUE` (`Merc_ID`),
  KEY `FK_MerchantConfiguration_Merchant_idx` (`Merc_ID`),
  CONSTRAINT `FK_MerchantConfiguration_Merchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MerchantConfiguration`
--

LOCK TABLES `MerchantConfiguration` WRITE;
/*!40000 ALTER TABLE `MerchantConfiguration` DISABLE KEYS */;
INSERT INTO `MerchantConfiguration` VALUES (3,11,'http://merchant/Merchant/rejected','http://merchant/Merchant/approved','2015-03-23 19:58:31'),(4,2,'http://merchant/Merchant/rejected','http://merchant/Merchant/approved','2015-03-23 20:09:35'),(5,9,'http://merchant/Merchant/rejected','http://merchant/Merchant/approved','2015-03-24 10:28:44');
/*!40000 ALTER TABLE `MerchantConfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MerchantCustomer`
--

DROP TABLE IF EXISTS `MerchantCustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MerchantCustomer` (
  `Mecu_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Merc_ID` bigint(20) NOT NULL,
  `Cust_ID` bigint(20) NOT NULL,
  `Mercu_Status` enum('0','1') NOT NULL DEFAULT '0',
  `Mercu_CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Mecu_ID`),
  UNIQUE KEY `Mecu_ID_UNIQUE` (`Mecu_ID`),
  UNIQUE KEY `Mecu_ID_Cust_ID_UNIQUE` (`Merc_ID`,`Cust_ID`),
  KEY `FK_Merchant_Customer_idx` (`Cust_ID`),
  KEY `FK_Merchant_Customer_Merchant_idx` (`Merc_ID`),
  CONSTRAINT `FK_Merchant_Customer_Customer` FOREIGN KEY (`Cust_ID`) REFERENCES `Customer` (`Cust_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Merchant_Customer_Merchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MerchantCustomer`
--

LOCK TABLES `MerchantCustomer` WRITE;
/*!40000 ALTER TABLE `MerchantCustomer` DISABLE KEYS */;
INSERT INTO `MerchantCustomer` VALUES (128,2,1,'0','2015-04-12 15:30:53'),(129,2,2,'0','2015-04-12 15:30:53'),(130,2,4,'0','2015-04-12 15:30:53'),(135,9,1,'0','2015-04-13 11:31:21'),(136,9,6,'0','2015-04-13 16:46:49');
/*!40000 ALTER TABLE `MerchantCustomer` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MerchantRestriction`
--

LOCK TABLES `MerchantRestriction` WRITE;
/*!40000 ALTER TABLE `MerchantRestriction` DISABLE KEYS */;
INSERT INTO `MerchantRestriction` VALUES (1,2,100000,'Amount','1440','0','2015-02-04 15:09:14'),(2,2,100,'Transactions','1440','0','2015-02-04 19:55:32'),(6,1,100,'Amount','360','0','2015-03-31 10:00:26'),(10,1,10,'Transactions','360','0','2015-03-31 09:59:56');
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
  `Plan_IntervalCount` int(4) DEFAULT '1',
  `Plan_Name` varchar(50) NOT NULL,
  `Plan_TrialPeriodDays` int(4) DEFAULT '0',
  `Plan_StatementDescriptor` varchar(200) DEFAULT NULL,
  `Plan_Status` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`Plan_ID`),
  UNIQUE KEY `Plan_id_UNIQUE` (`Plan_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Plan`
--

LOCK TABLES `Plan` WRITE;
/*!40000 ALTER TABLE `Plan` DISABLE KEYS */;
INSERT INTO `Plan` VALUES (1,12,'2015-01-05 22:15:34','NOK','Month',3,'Mobile Gold Plan',0,'','0'),(2,32,'2015-01-05 22:19:55','USD','Day',12,'Mobile Gold Plan 2',0,'','0'),(3,24,'2015-01-05 22:21:22','USD','Day',1,'Mobile Gold Plan 3',0,'','0'),(4,43,'2015-01-06 15:51:31','USD','Year',36,'Mobile Gold Plan 4',100,'Statement Descriptor','0'),(5,12,'2015-04-02 09:07:12','AUD','Month',NULL,'Gold Plan',45,'Gym Gold Plan','0');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Refund`
--

LOCK TABLES `Refund` WRITE;
/*!40000 ALTER TABLE `Refund` DISABLE KEYS */;
INSERT INTO `Refund` VALUES (1,36,NULL,55476,'2015-01-02 02:23:39','usd','txn_15GPmV2eZvKYlo2CUTD0iug4','asd',NULL,NULL),(2,37,NULL,55076,'2015-01-02 23:43:39','usd','txn_15GjlD2eZvKYlo2Cfb1ThhcO','sdas',NULL,NULL),(3,38,NULL,1276,'2015-01-02 23:48:12','usd','txn_15Gjpc2eZvKYlo2C5bIXrv7V','sad',NULL,NULL),(4,39,NULL,131260,'2015-01-02 23:51:08','usd','txn_15GjsT2eZvKYlo2CHOWgVldg','adasd',NULL,NULL),(5,40,NULL,4390,'2015-01-03 00:14:56','usd','txn_15GkFU2eZvKYlo2CSc9KGHee','sad',NULL,NULL),(6,40,'re_15GkRC2eZvKYlo2ChzNeOoji',687,'2015-01-03 00:27:02','usd','txn_15GkRC2eZvKYlo2CNzl6JnEy','3323',NULL,17),(7,40,'re_15HVLX2eZvKYlo2CRzCrUaqR',266,'2015-01-05 02:32:24','usd','txn_15HVLX2eZvKYlo2C3cNObyEV','asdasd',NULL,17),(8,40,'re_15HVO02eZvKYlo2CP6SYLH6R',121,'2015-01-05 02:34:51','usd','txn_15HVO02eZvKYlo2Cvi7uXJ47','qweqwe',NULL,17),(9,40,'re_15HVRM2eZvKYlo2C8AmX3LyW',387,'2015-01-05 02:38:20','usd','txn_15HVRM2eZvKYlo2Cfq1g9Uz3',' Reason',NULL,17),(10,40,'re_15HVTM2eZvKYlo2Cwvp04Vwt',400,'2015-01-05 02:40:24','usd','txn_15HVTM2eZvKYlo2CPRNrjskF','Reason 2',NULL,17),(11,66,'re_15SKoN2eZvKYlo2Cbop7uikw',200,'2015-02-04 15:30:47','usd','txn_15SKoN2eZvKYlo2CrDQ4X5EF','No definida',NULL,50),(12,65,'re_15SKrU2eZvKYlo2CFfX4cAhG',1254,'2015-02-04 15:34:00','usd','txn_15SKrU2eZvKYlo2CELaVCSOV','No definida',NULL,49),(13,109,'re_15TjxzFBMYSHQioJmn6sHCsB',526,'2015-02-08 12:34:31','usd','txn_15TjxzFBMYSHQioJcnBksviK','NA',NULL,121),(14,109,'re_15TjyaFBMYSHQioJnTBKnXhk',1234,'2015-02-08 12:35:09','usd','txn_15TjyaFBMYSHQioJDeGGLYeR','NA',NULL,121),(15,131,'re_15lTWRFBMYSHQioJGGjBPf5S',100,'2015-03-29 10:39:23','usd','txn_15lTWRFBMYSHQioJwHazyWzF','bla',NULL,143),(16,131,'re_15lpemFBMYSHQioJZL3G3il6',100,'2015-03-30 10:17:29','usd','txn_15lpemFBMYSHQioJpDBLEFsE','blu',NULL,143),(17,131,'re_15lqWJFBMYSHQioJRJw1EHnZ',350,'2015-03-30 11:12:48','usd','txn_15lqWKFBMYSHQioJraK3cXLO','ble ble',NULL,143),(18,131,'re_15lqavFBMYSHQioJs026dMMi',132,'2015-03-30 11:17:33','usd','txn_15lqavFBMYSHQioJC9bRc3hd','bli bli',NULL,143),(19,131,'re_15lqlTFBMYSHQioJRDFMUrTJ',394,'2015-03-30 11:28:27','usd','txn_15lqlTFBMYSHQioJ65AlLvHM','bas',NULL,143),(20,131,'re_15lv89FBMYSHQioJoicb213U',400,'2015-03-30 16:08:11','usd','txn_15lv8AFBMYSHQioJ4DizzpfY','sdasd',NULL,143),(21,131,'re_15lw9XFBMYSHQioJAerQw5Hl',330,'2015-03-30 17:13:41','usd','txn_15lw9XFBMYSHQioJVIHxf198','NA',NULL,143),(22,131,'re_15lwD0FBMYSHQioJJuSgNE7g',132,'2015-03-30 17:17:16','usd','txn_15lwD0FBMYSHQioJ4y54q3Dn','s',NULL,143),(23,131,'re_15lwF5FBMYSHQioJeitEXyEn',351,'2015-03-30 17:19:25','usd','txn_15lwF5FBMYSHQioJNJWucqU7','w',NULL,143),(24,131,'re_15lwGWFBMYSHQioJnWc5qtnq',65,'2015-03-30 17:20:55','usd','txn_15lwGWFBMYSHQioJO9IuvULv','asd',NULL,143),(25,131,'re_15lwI4FBMYSHQioJfzf41790',97,'2015-03-30 17:22:28','usd','txn_15lwI4FBMYSHQioJ27aYAX5L','aweqwe',NULL,143),(26,133,'re_15q9mUFBMYSHQioJnthljQSE',150,'2015-04-11 07:35:18','usd','txn_15q9mUFBMYSHQioJLDB43vLm','NA',NULL,151),(27,133,'re_15q9qsFBMYSHQioJxuYtNL2P',120,'2015-04-11 07:39:50','usd','txn_15q9qsFBMYSHQioJZgsqD785','NA',NULL,151),(28,132,'re_15qA6jFBMYSHQioJqtPJieGn',50,'2015-04-11 07:56:13','usd','txn_15qA6jFBMYSHQioJpFQShuAq','NA',NULL,150),(29,127,'re_15qA7PFBMYSHQioJsifnhz3t',98,'2015-04-11 07:56:56','usd','txn_15qA7QFBMYSHQioJYRHHH2HR','NA',NULL,139),(30,125,'re_15qA9uFBMYSHQioJE6I6rEU1',367,'2015-04-11 07:59:30','usd','txn_15qA9uFBMYSHQioJNKRMadE9','NA',NULL,137),(31,133,'re_15qacMFBMYSHQioJtlpyUniU',135,'2015-04-12 12:14:39','usd','txn_15qacMFBMYSHQioJOBEKZ4d7','NA',NULL,151),(32,133,'re_15qafxFBMYSHQioJRkZ4FCKt',398,'2015-04-12 12:18:22','usd','txn_15qafxFBMYSHQioJqG0wyzUX','NA',NULL,151),(33,133,'re_15qansFBMYSHQioJ3ExGKhqo',187,'2015-04-12 12:26:33','usd','txn_15qantFBMYSHQioJCTRYlH7J','NA',NULL,151),(34,133,'re_15qat5FBMYSHQioJEnbUX0gE',109,'2015-04-12 12:31:56','usd','txn_15qat6FBMYSHQioJ8qhnc9Ti','NA',NULL,151),(35,133,'re_15qatYFBMYSHQioJEq0BecMJ',9,'2015-04-12 12:32:25','usd','txn_15qatYFBMYSHQioJfR4ULjRK','NA',NULL,151),(36,133,'re_15qattFBMYSHQioJtJSexgU0',2,'2015-04-12 12:32:45','usd','txn_15qattFBMYSHQioJtey4JYDw','NA',NULL,151),(37,133,'re_15qauJFBMYSHQioJxFFV1G2f',90,'2015-04-12 12:33:11','usd','txn_15qauJFBMYSHQioJzGnfqaJD','NA',NULL,151);
/*!40000 ALTER TABLE `Refund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RejectedCharges`
--

DROP TABLE IF EXISTS `RejectedCharges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RejectedCharges` (
  `Rech_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tran_ID` bigint(20) NOT NULL,
  `Rech_Amount` decimal(20,0) NOT NULL,
  `Rech_Currency` varchar(3) NOT NULL,
  `Rech_FailureCode` varchar(50) NOT NULL,
  `Rech_FailureMessage` varchar(150) NOT NULL,
  `Rech_CardNumber` varchar(50) NOT NULL,
  `Rech_Card_ExpYear` varchar(50) NOT NULL,
  `Rech_Card_ExpMonth` varchar(50) NOT NULL,
  `Rech_CardHolderName` varchar(50) NOT NULL,
  `Rech_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Rech_ID`),
  UNIQUE KEY `Rech_ID_UNIQUE` (`Rech_ID`),
  UNIQUE KEY `Tran_ID_UNIQUE` (`Tran_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RejectedCharges`
--

LOCK TABLES `RejectedCharges` WRITE;
/*!40000 ALTER TABLE `RejectedCharges` DISABLE KEYS */;
INSERT INTO `RejectedCharges` VALUES (1,99,55076,'USD','incorrect_number','Your card number is incorrect.','40128888888818812','2016','01','Edicson Morales','2015-01-08 11:03:52'),(2,100,55076,'USD','incorrect_number','Your card number is incorrect.','40000566556655563','2016','01','Edicson Morales','2015-01-08 11:20:43'),(3,101,55076,'USD','incorrect_number','Your card number is incorrect.','555555555555444422','2016','01','MIchelle Earle','2015-01-10 11:21:26'),(4,105,55076,'USD','card_declined','Your card was declined.','4000000000000341','2016','01','Hamilton Morales','2015-01-10 11:30:38'),(5,106,55076,'USD','card_declined','Your card was declined.','4000000000000341','2016','01','Emerson Morales','2015-02-04 11:33:21'),(6,107,55076,'USD','card_declined','Your card was declined.','4000000000000002','2016','01','Nelcy Torres','2015-02-04 11:34:24'),(7,108,55076,'USD','incorrect_cvc','Your card\'s security code is incorrect.','4000000000000127','2016','01','Isauro Morales','2015-02-06 11:35:03'),(8,109,55076,'USD','incorrect_cvc','Your card\'s security code is incorrect.','4000000000000127','2016','01','Veronica Castro','2015-02-08 11:38:38'),(9,110,55076,'USD','expired_card','Your card has expired.','4000000000000069','2016','01','Nelcy Torres','2015-02-08 11:39:51'),(10,111,55076,'USD','processing_error','An error occurred while processing your card. Try again in a little bit.','4000000000000119','2016','01','Edicson Morales','2015-02-08 12:00:38'),(11,117,55076,'USD','incorrect_cvc','Your card\'s security code is incorrect.','4000000000000101','2016','01','Edicson Morales','2015-02-08 12:28:18'),(12,118,55076,'USD','incorrect_cvc','Your card\'s security code is incorrect.','4000000000000101','2016','01','Edicson Morales','2015-02-08 12:28:43');
/*!40000 ALTER TABLE `RejectedCharges` ENABLE KEYS */;
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
  `Cust_ID` bigint(20) NOT NULL,
  `Disc_ID` bigint(20) DEFAULT '0',
  `Subs_Quantity` int(4) NOT NULL,
  `Subs_TrialStart` datetime NOT NULL,
  `Subs_TrialEnd` datetime NOT NULL,
  `Subs_Start` datetime NOT NULL,
  `Subs_TaxPercent` decimal(3,2) NOT NULL DEFAULT '0.00',
  `Subs_Status` enum('Trialing','Active','Past_due','Canceled','Unpaid') NOT NULL,
  `Subs_CurrentPeriodStart` datetime DEFAULT NULL,
  `Subs_CurrentPeriodEnd` datetime DEFAULT NULL,
  `Subs_EndedAt` datetime DEFAULT NULL,
  `Subs_CanceledAt` datetime DEFAULT NULL,
  `Subs_CancelAtPeriodEnd` tinyint(1) DEFAULT '1',
  `Subs_ApplicationFeePercent` decimal(5,2) DEFAULT NULL,
  `Subs_CreationTime` datetime NOT NULL,
  `Subs_StatusRow` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`Subs_ID`),
  UNIQUE KEY `Subs_ID_UNIQUE` (`Subs_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscription`
--

LOCK TABLES `Subscription` WRITE;
/*!40000 ALTER TABLE `Subscription` DISABLE KEYS */;
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
  `Tran_IP` varchar(20) NOT NULL COMMENT 'The IP address of the customer placing the order. This should be passed as a string like ‚Äú44.55.66.77‚Äù or ‚Äú2001:db8::2:1‚Ä≥.',
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
  `Tran_Domain` char(50) DEFAULT NULL COMMENT 'The domain for the user‚Äôs email address. This field should not be hashed.',
  `Tran_CustomerPhone` char(20) DEFAULT NULL COMMENT 'The customer‚Äôs phone number, including area code and local exchange. This is used to verify that the customer‚Äôs phone number is in the same billing location as the cardholder. Most formats are acceptable. We strip out all non-numeric characters from the input.',
  `Tran_EmailMD5` char(32) DEFAULT NULL COMMENT 'An MD5 hash of the user‚Äôs email address in ASCII encoding.',
  `Tran_UsernameMD5` char(32) DEFAULT NULL COMMENT 'An MD5 hash of the user‚Äôs username in ASCII encoding.',
  `Tran_Bin` char(6) DEFAULT NULL COMMENT 'The credit card BIN number. This is the first 6 digits of the credit card number. It identifies the issuing bank.',
  `Tran_BinName` char(50) DEFAULT NULL COMMENT 'The name of the bank which issued the credit card, based on the BIN number. This is used to verify that cardholder is in possession of credit card. You must set the bin field if you set this one.',
  `Tran_BinPhone` char(20) DEFAULT NULL COMMENT 'The customer service phone number listed on the back of the credit card. This is used to verify that cardholder is in possession of credit card. You must set the bin field if you set this one.',
  `Tran_UserAgent` char(200) NOT NULL COMMENT 'The User-Agent HTTP header.',
  `Tran_AcceptLanguage` char(200) DEFAULT NULL COMMENT 'The Accept-Language HTTP header.',
  `Tran_OrderAmount` decimal(20,3) NOT NULL COMMENT 'The customer‚Äôs order amount.',
  `Tran_OrderCurrency` char(3) NOT NULL COMMENT 'The currency used for the customer‚Äôs order as an ISO 4217 code.',
  `Tran_TxnType` enum('creditcard','debitcard','paypal','google ‚Äì Google checkout','other','lead ‚Äì lead generation','survey ‚Äì online survey','sitereg ‚Äì site registration') DEFAULT NULL COMMENT 'The transaction type. This can be set to one of the following strings:\n    creditcard\n    debitcard\n    paypal\n    google ‚Äì Google checkout\n    other\n    lead ‚Äì lead generation\n    survey ‚Äì online survey\n    sitereg ‚Äì site registration\n\nThe lead, survey, and sitereg types are used for non-purchase transactions.',
  `Tran_CVVResult` enum('Y','N') DEFAULT NULL COMMENT 'The CVV check result. This should be either ‚ÄúN‚Äù or ‚ÄúY‚Äù. Do not pass the CVV code itself.',
  `Tran_RequestedType` enum('standard','premium') DEFAULT NULL,
  `Tran_RiskScore` decimal(5,2) DEFAULT NULL,
  `Tran_CountryMatch` enum('Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. It indicates whether the country of the IP address matched the billing address country. A mismatch indicates a higher risk of fraud. If no country input was provided, this field will be left blank.',
  `Tran_HighRiskCountry` enum('Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. The field will be set to ‚ÄúYes‚Äù if either the billing country or the IP country are associated with a high risk of fraud; otherwise, it will be set to ‚ÄúNo‚Äù.',
  `Tran_Distance` bigint(20) DEFAULT NULL COMMENT 'The distance from the IP address location to the billing location, in kilometers. A higher distance indicates a higher risk of fraud.',
  `Tran_IPAccuracyRadius` char(20) DEFAULT NULL COMMENT 'The radius in kilometers around the specified location where the IP address is likely to be.',
  `Tran_IPCity` char(20) DEFAULT NULL,
  `Tran_IPRegion` char(2) DEFAULT NULL COMMENT 'A two character ISO-3166-2 or FIPS 10-4 code for the state/region associated with the IP address.\n\nFor the US and Canada, we return an ISO-3166-2 code. In addition to the standard ISO codes, we may also return one of the following:\n\n    AA ‚Äì Armed Forces America\n    AE ‚Äì Armed Forces Europe\n    AP ‚Äì Armed Forces Pacific\n\nWe return a FIPS code for all other countries.\n\nWe provide a CSV file which maps our region codes to region names. The columns are ISO country code, region code (FIPS or ISO), and the region name.',
  `Tran_IPRegionName` char(100) DEFAULT NULL COMMENT 'The region name associated with the IP address.',
  `Tran_IPPostalCode` char(20) DEFAULT NULL COMMENT 'The postal code associated with the IP address. These are available for some IP addresses in Australia, Canada, France, Germany, Italy, Spain, Switzerland, United Kingdom, and the US. We return the first 3 characters for Canadian postal codes. We return the the first 2-4 characters (outward code) for postal codes in the United Kingdom.',
  `Tran_IPMetroCode` char(20) DEFAULT NULL,
  `Tran_IPAreaCode` char(50) DEFAULT NULL COMMENT 'The telephone area code associated with the IP address. These are only available for IP addresses in the US. This output is deprecated, and may not reflect newer area codes.',
  `Tran_CountryCode` char(2) DEFAULT NULL COMMENT 'A two-character ISO 3166-1 country code for the country associated with the IP address. In addition to the standard codes, we may also return one of the following:\n\n    A1 ‚Äì an anonymous proxy.\n    A2 ‚Äì a satellite provider.\n    EU ‚Äì an IP in a block used by multiple European countries.\n    AP ‚Äì an IP in a block used by multiple Asia/Pacific region countries.\n\nThe US country code is returned for IP addresses associated with overseas US military bases.',
  `Tran_IPCountryName` char(100) DEFAULT NULL,
  `Tran_IPContinentCode` char(2) DEFAULT NULL COMMENT 'A two-character code for the continent associated with the IP address. The possible codes are:\n\n    AF ‚Äì Africa\n    AS ‚Äì Asia\n    EU ‚Äì Europe\n    NA ‚Äì North America\n    OC ‚Äì Oceania\n    SA ‚Äì South America',
  `Tran_IPLatitude` char(20) DEFAULT NULL,
  `Tran_IPLongitude` bigint(20) DEFAULT NULL,
  `Tran_IPTimeZone` char(50) DEFAULT NULL COMMENT 'The time zone associated with the IP address. Time zone names are taken from the IANA time zone database. See the list of possible values.',
  `Tran_IPAsnum` char(50) DEFAULT NULL COMMENT 'The autonomous system number associated with the IP address.',
  `Tran_IPUserType` enum('','business','cafe','cellular','college','contentDeliveryNetwork','government','hosting','library','military','residential','router','school','searchEngineSpider','traveler') DEFAULT NULL COMMENT 'The user type associated with the IP address. This will be one of the following values.\n\n    business\n    cafe\n    cellular\n    college\n    contentDeliveryNetwork\n    government\n    hosting\n    library\n    military\n    residential\n    router\n    school\n    searchEngineSpider\n    traveler',
  `Tran_IPNetSpeedCell` enum('','Dialup','Cable/DSL','Corporate','Cellular') DEFAULT NULL,
  `Tran_IPDomain` char(50) DEFAULT NULL COMMENT 'The second level domain associated with the IP address. This will be something like ‚Äúexample.com‚Äù or ‚Äúexample.co.uk‚Äù, not ‚Äúfoo.example.com‚Äù.',
  `Tran_IPIsp` char(100) DEFAULT NULL COMMENT 'The name of the ISP associated with the IP address.',
  `Tran_IPOrg` char(50) DEFAULT NULL COMMENT 'The name of the organization associated with the IP address.',
  `Tran_IPCityConf` char(3) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the city is correct.',
  `Tran_IPRegionConf` char(3) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the region is correct.',
  `Tran_IPPostalConf` char(3) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the postal code is correct.',
  `Tran_IPCountryConf` char(3) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the country is correct.',
  `Tran_AnonymousProxy` enum('Yes','No') DEFAULT NULL,
  `Tran_ProxyScore` decimal(2,2) DEFAULT NULL,
  `Tran_IPCorporateProxy` enum('Yes','No') DEFAULT NULL,
  `Tran_FreeMail` enum('','Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. It indicates whether the user‚Äôs email address is from a free email provider. Note that this will be set to ‚ÄúNo‚Äù if no domain is passed in the input.',
  `Tran_CarderEmail` enum('','Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. It indicates whether the user‚Äôs email address is in a database of known high risk emails.',
  `Tran_BinMatch` enum('','Yes','No','NotFound','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, NotFound, or NA It indicates whether the credit card‚Äôs bank is in the same country as the user‚Äôs billing address.\n\nThe NotFound response means that we could not find a match for the provided bin input field. The NA response means that you did not provide a bin in the input.',
  `Tran_BinCountry` char(2) DEFAULT NULL COMMENT 'The two letter ISO 3166 country code for the bank. This is available for approximately 99% of all BIN numbers. This field is returned for premium service level queries. For standard service level queries the field is only returned if the binMatch is Yes.',
  `Tran_BinNameMatch` enum('Yes','No','NotFound','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, NotFound, or NA It indicates whether the credit card‚Äôs bank name matches the binName input field.\n\nThe NotFound response means that we could not find a match for the provided bin input field. The NA response means that you did not provide a binName in the input.',
  `Tran_BinPhoneMatch` enum('Yes','No','NotFound','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, NotFound, or NA It indicates whether the credit card‚Äôs bank name matches the binPhone input field.\n\nThe NotFound response means that we could not find a match for the provided bin input field. The NA response means that you did not provide a binPhone in the input.',
  `Tran_Prepaid` enum('','Yes','No') DEFAULT NULL,
  `Tran_CustPhoneInBillingLoc` enum('','Yes','No','NotFound') DEFAULT NULL COMMENT 'This field can be either Yes, No, or NotFound. This indicates whether the customer‚Äôs phone number is in the billing address‚Äôs postal code.\n\nThe No response means that phone number may be in a different area, or it is not listed in our database. The NotFound response indicates that the phone number prefix is not in our database.\n\nCurrently we only return information about US phone numbers. For all other countries, this field will be left blank.',
  `Tran_ShipForward` enum('Yes','No','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, or NA. This indicates whether the customer‚Äôs shipping address is in a database of known high risk shipping addresses. The NA response indicates that we could not parse the shipping address.',
  `Tran_CityPostalMatch` enum('','Yes','No') DEFAULT NULL,
  `Tran_ShipCityPostalMatch` enum('','Yes','No') DEFAULT NULL,
  `Tran_MinfraudVersion` char(20) DEFAULT NULL COMMENT 'This returns the API version that was used for this request.',
  `Tran_ServiceLevel` enum('','standard','premium') DEFAULT NULL COMMENT 'This returns the service level that was used for this request. This can be either standard or premium.',
  `Tran_Error` enum('','INVALID_LICENSE_KEY','IP_REQUIRED','IP_NOT_FOUND','MAX_REQUESTS_REACHED','LICENSE_REQUIRED','COUNTRY_NOT_FOUND','CITY_NOT_FOUND','CITY_REQUIRED','INVALID_EMAIL_MD5','POSTAL_CODE_REQUIRED','POSTAL_CODE_NOT_FOUND') DEFAULT NULL COMMENT 'If there was an error or warning with this request, this field contains an error code string.\n\nThe possible error codes are:\n\n    INVALID_LICENSE_KEY\n    IP_REQUIRED\n    IP_NOT_FOUND ‚Äì this error will be returned if the IP address is not valid, if it is not public, or if it is not in our GeoIP database.\n    MAX_REQUESTS_REACHED ‚Äì this is returned when your account is out of queries.\n    LICENSE_REQUIRED ‚Äì this is returned if you do not provide a license key at all.\n\nThe possible warning codes are:\n\n    COUNTRY_NOT_FOUND\n    CITY_NOT_FOUND\n    CITY_REQUIRED\n    INVALID_EMAIL_MD5\n    POSTAL_CODE_REQUIRED\n    POSTAL_CODE_NOT_FOUND\n',
  `Tran_ProcessTime` varchar(20) DEFAULT NULL,
  `Tran_CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Tran_ID`),
  UNIQUE KEY `Tran_ID` (`Tran_ID`),
  UNIQUE KEY `Tran_MaxmindID` (`Tran_MaxmindID`),
  KEY `FK_Transaction_Merchant_idx` (`Merc_ID`),
  CONSTRAINT `FK_Transaction_Merchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
INSERT INTO `Transaction` VALUES (1,2,'27.32.44.176','8C5NWSU2','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,NULL,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','7084 ms.','2015-01-21 18:41:12'),(2,2,'27.32.44.176','6CU4JN7O','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,NULL,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1617 ms.','2015-01-21 19:18:00'),(3,2,'27.32.44.176','Z554FR53','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1542 ms.','2015-01-20 19:18:54'),(4,2,'27.32.44.176','PX02Y4DL','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1513 ms.','2015-01-21 20:38:27'),(5,2,'27.32.44.176','64CEL08V','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1519 ms.','2015-01-21 18:41:12'),(6,2,'27.32.44.176','3H3IQMIC','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1598 ms.','2015-01-20 19:18:54'),(7,2,'27.32.44.176','HG48UZDL','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1574 ms.','2015-01-21 20:38:33'),(8,2,'27.32.44.176','2MCG93IM','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1679 ms.','2015-01-21 19:18:00'),(9,2,'27.32.44.176','KCRUM88K','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1367 ms.','2015-01-20 19:18:54'),(10,2,'27.32.44.176','ZXLSCLYG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1516 ms.','2015-01-21 19:18:00'),(11,2,'27.32.44.176','1BQ7K02U','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1613 ms.','2015-01-21 18:41:12'),(12,2,'27.32.44.176','JTJQCB9L','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1646 ms.','2015-01-20 19:18:54'),(13,2,'27.32.44.176','0C5XAFF6','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1214 ms.','2015-01-21 18:41:12'),(14,2,'27.32.44.176','W13U7IJ7','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1221 ms.','2015-01-18 19:19:13'),(15,2,'27.32.44.176','1V025050','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','3983 ms.','2015-01-20 19:18:54'),(16,2,'27.32.44.176','7MDM2GMO','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2765 ms.','2015-01-21 19:18:00'),(17,2,'27.32.44.176','KMO1TM8M','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,'1','Rockdale','02','New South Wales','47','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1623 ms.','2015-01-21 18:41:12'),(18,2,'27.32.44.176','3RN99MIG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','290 ms.','2015-01-20 19:18:54'),(19,2,'27.32.44.176','J23G239Q','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','622 ms.','2015-01-21 18:41:12'),(20,2,'27.32.44.176','QK3IROGE','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','307 ms.','2015-01-21 19:18:00'),(21,2,'27.32.44.176','N45JWPQY','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','627 ms.','2015-01-18 19:19:13'),(22,2,'27.32.44.176','5ACCWCHG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','330 ms.','2015-01-21 19:18:00'),(23,2,'27.32.44.176','ZBV4H8SA','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'BSD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','689 ms.','2015-01-21 18:41:12'),(24,2,'27.32.44.176','7EHO7P4I','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'BSD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','421 ms.','2015-01-20 19:18:54'),(25,2,'27.32.44.176','HDM0F9RP','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.61,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','706 ms.','2015-01-21 18:41:12'),(26,2,'27.32.44.176','5669NEKK','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','280 ms.','2015-01-21 20:38:24'),(27,2,'27.32.44.176','OCEXSY0W','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',150.000,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','281 ms.','2015-01-20 19:18:54'),(28,2,'27.32.44.176','SSWQJ4J3','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/8.0.2 Safari/600.2.5','en-us',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','289 ms.','2015-01-18 19:19:13'),(29,2,'27.32.44.176','3VTD2WJZ','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/8.0.2 Safari/600.2.5','en-us',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','279 ms.','2015-01-21 18:41:12'),(30,2,'27.32.44.176','QHB3RQNS','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','269 ms.','2015-01-20 19:18:54'),(31,2,'27.32.44.176','JPBM02CW','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','270 ms.','2015-01-21 18:41:12'),(32,2,'27.32.44.176','5QVDJ68H','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','271 ms.','2015-01-21 19:18:00'),(33,2,'27.32.44.176','ER3ZALW2','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','277 ms.','2015-01-20 19:18:54'),(34,2,'27.32.44.176','QLALIT8A','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','253 ms.','2015-01-21 19:18:00'),(35,2,'27.32.44.176','KO0DH66Z','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','275 ms.','2015-01-18 19:19:13'),(36,2,'27.32.44.176','NCMDV07B','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',23.200,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','295 ms.','2015-01-20 19:18:54'),(37,2,'27.32.44.176','C26QSXYN','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/8.0.2 Safari/600.2.5','en-us',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','283 ms.','2015-01-21 18:41:12'),(38,2,'27.32.44.176','Z6UMLX0G','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','43','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','39','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','272 ms.','2015-01-21 19:18:00'),(39,2,'27.32.44.176','4QO7VW22','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',530.960,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','41','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','37','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1519 ms.','2015-01-20 19:18:54'),(40,2,'27.32.44.176','F25J65PG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',530.960,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','41','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','37','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1195 ms.','2015-01-21 19:18:00'),(41,2,'27.32.44.176','IVDZQW0U','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',530.960,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','41','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','37','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1240 ms.','2015-01-21 18:41:12'),(42,2,'27.32.44.176','4DAR2K8H','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',532.960,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','41','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','37','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1445 ms.','2015-01-18 19:19:13'),(43,2,'27.32.44.176','NF1XOJ21','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',532.960,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','41','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','37','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1632 ms.','2015-01-21 18:41:12'),(44,2,'27.32.44.176','H6AA686B','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,'2','Sydney','02','New South Wales','41','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','37','99',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2303 ms.','2015-01-21 20:38:13'),(45,2,'27.32.44.176','LJ86EMO0','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.48,'Yes','No',11,'4','Rockdale','02','New South Wales','36','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','26','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1426 ms.','2015-01-23 17:22:58'),(46,2,'27.32.44.176','9S75HC5A','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.48,'Yes','No',11,'4','Rockdale','02','New South Wales','36','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','26','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1695 ms.','2015-01-23 18:12:00'),(47,2,'27.32.44.176','YSOML0BF','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.48,'Yes','No',11,'4','Rockdale','02','New South Wales','36','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','26','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2200 ms.','2015-01-26 10:40:49'),(48,2,'27.32.44.176','5PGT2KHU','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',5576.000,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'5','Rockdale','02','New South Wales','34','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','6714 ms.','2015-02-04 15:04:48'),(49,2,'27.32.44.176','5ELJ3895','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',1251.000,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'5','Rockdale','02','New South Wales','34','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1229 ms.','2015-02-04 15:09:32'),(50,2,'27.32.44.176','PPFQDEZ8','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',34.000,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'5','Rockdale','02','New South Wales','34','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1244 ms.','2015-02-04 15:10:27'),(51,2,'27.32.44.176','X8Q9GM9O','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'5','Rockdale','02','New South Wales','34','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1395 ms.','2015-02-04 16:30:20'),(52,2,'27.32.44.176','GBJ19Y0I','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',123.000,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'5','Rockdale','02','New South Wales','34','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2296 ms.','2015-02-04 18:31:15'),(53,2,'27.32.44.176','AWZC6P6T','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',123.000,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'5','Rockdale','02','New South Wales','34','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1299 ms.','2015-02-04 18:47:21'),(54,2,'27.32.44.176','DIRI6XF2','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'5','Rockdale','02','New South Wales','34','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','3538 ms.','2015-02-04 18:53:48'),(55,2,'27.32.44.176','3XVSNJ7H','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'5','Rockdale','02','New South Wales','34','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2019 ms.','2015-02-04 19:03:22'),(56,2,'27.32.44.176','0PV1SY7R','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'5','Rockdale','02','New South Wales','34','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1527 ms.','2015-02-04 19:11:55'),(57,2,'27.32.44.176','UWTM1AD1','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'5','Rockdale','02','New South Wales','34','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1879 ms.','2015-02-04 19:51:44'),(58,2,'27.32.44.176','4FRWKXS8','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'5','Rockdale','02','New South Wales','34','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2901 ms.','2015-02-04 19:52:23'),(59,2,'27.32.44.176','571DU4Q7','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'5','Rockdale','02','New South Wales','34','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1513 ms.','2015-02-04 19:55:55'),(60,2,'27.32.44.176','8YTU7HNM','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'5','Rockdale','02','New South Wales','34','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1681 ms.','2015-02-04 20:02:21'),(61,2,'27.32.44.176','Z1248JP9','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'5','Rockdale','02','New South Wales','34','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','27','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1244 ms.','2015-02-04 20:05:26'),(62,2,'27.32.44.176','TBZN9JEH','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1302 ms.','2015-02-05 11:16:32'),(63,2,'27.32.44.176','N8KUWGWK','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2198 ms.','2015-02-05 11:23:35'),(64,2,'27.32.44.176','NILNBEZJ','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1568 ms.','2015-02-05 11:36:29'),(65,2,'27.32.44.176','11RLJQ62','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1955 ms.','2015-02-05 11:48:38'),(66,2,'27.32.44.176','VQL073H1','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1427 ms.','2015-02-05 11:54:23'),(67,2,'27.32.44.176','XQLF17GL','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1436 ms.','2015-02-05 12:02:29'),(68,2,'27.32.44.176','R3NB4R42','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1495 ms.','2015-02-05 12:27:56'),(69,2,'27.32.44.176','ARD4V78X','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1309 ms.','2015-02-05 12:30:45'),(70,2,'27.32.44.176','K8O5QRZ8','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2349 ms.','2015-02-05 12:39:15'),(71,2,'27.32.44.176','PK793UV4','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','11847 ms.','2015-02-05 12:47:42'),(72,2,'27.32.44.176','P1K95DKD','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','4469 ms.','2015-02-05 17:18:12'),(73,2,'27.32.44.176','FQVDMXXC','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1603 ms.','2015-02-05 17:20:59'),(74,2,'27.32.44.176','UO8BWLM8','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1329 ms.','2015-02-05 17:25:23'),(75,2,'27.32.44.176','GNM4NHOW','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1615 ms.','2015-02-05 17:27:12'),(76,2,'27.32.44.176','8ANJ3CC4','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','3961 ms.','2015-02-05 17:29:55'),(77,2,'27.32.44.176','1QMQH0BT','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2265 ms.','2015-02-05 17:32:30'),(78,2,'27.32.44.176','TB5A4XES','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1504 ms.','2015-02-05 17:37:04'),(79,2,'27.32.44.176','MXONGWLB','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1010 ms.','2015-02-05 17:41:14'),(80,2,'27.32.44.176','0WINE2E7','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','6224 ms.','2015-02-05 17:44:47'),(81,2,'27.32.44.176','UE8YKVAD','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1299 ms.','2015-02-05 17:50:58'),(82,2,'27.32.44.176','9Q1ROQ19','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',23.540,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','4599 ms.','2015-02-05 18:07:16'),(83,2,'27.32.44.176','JGN0329I','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',56.820,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','6582 ms.','2015-02-05 18:08:02'),(84,2,'27.32.44.176','PN9L0EQF','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',56.820,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','7799 ms.','2015-02-05 18:11:32'),(85,2,'27.32.44.176','5AXW991W','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1997 ms.','2015-02-05 18:18:48'),(86,2,'27.32.44.176','Z1PWOFMR','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',78.560,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2374 ms.','2015-02-05 18:21:09'),(87,2,'27.32.44.176','A0GI32OQ','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','3299 ms.','2015-02-05 18:25:09'),(88,2,'27.32.44.176','QK96R2RP','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1787 ms.','2015-02-06 22:22:37'),(89,2,'27.32.44.176','O2J1LTX7','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1595 ms.','2015-02-08 07:32:21'),(90,2,'27.32.44.176','L5WCYZSH','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1595 ms.','2015-02-08 07:46:26'),(91,2,'27.32.44.176','VDVU0I8U','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1743 ms.','2015-02-08 07:52:07'),(92,2,'27.32.44.176','6WYUFWKX','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1341 ms.','2015-02-08 07:58:19'),(93,2,'27.32.44.176','I5VDT5IC','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1495 ms.','2015-02-08 08:00:46'),(94,2,'27.32.44.176','MEQ7SMXW','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1401 ms.','2015-02-08 08:01:36'),(95,2,'27.32.44.176','7PTZ40VR','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1374 ms.','2015-02-08 08:02:28'),(96,2,'27.32.44.176','0VLZYU18','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2024 ms.','2015-02-08 10:51:56'),(97,2,'27.32.44.176','EL6ZWPZO','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1673 ms.','2015-02-08 10:58:39'),(98,2,'27.32.44.176','RB0P9S81','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1445 ms.','2015-02-08 10:59:02'),(99,2,'27.32.44.176','SDV1WH8Y','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1726 ms.','2015-02-08 11:03:51'),(100,2,'27.32.44.176','F5BA8MB9','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,7.12,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1403 ms.','2015-02-08 11:20:42'),(101,2,'27.32.44.176','1YI07Z8W','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1434 ms.','2015-02-08 11:21:25'),(102,2,'27.32.44.176','2486HDDD','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1495 ms.','2015-02-08 11:22:33'),(103,2,'27.32.44.176','XBSI3CUB','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1375 ms.','2015-02-08 11:25:18'),(104,2,'27.32.44.176','4A9X994N','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1405 ms.','2015-02-08 11:28:39'),(105,2,'27.32.44.176','78LJA828','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1369 ms.','2015-02-08 11:30:37'),(106,2,'27.32.44.176','E6TYZYR5','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1516 ms.','2015-02-08 11:33:20'),(107,2,'27.32.44.176','7SGUIR4E','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1379 ms.','2015-02-08 11:34:23'),(108,2,'27.32.44.176','9WOKPOLK','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1384 ms.','2015-02-08 11:35:02'),(109,2,'27.32.44.176','9Q9YR5AV','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1491 ms.','2015-02-08 11:38:37'),(110,2,'27.32.44.176','JJZQR4CX','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1421 ms.','2015-02-08 11:39:50'),(111,2,'27.32.44.176','GM82HR9P','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1379 ms.','2015-02-08 12:00:36'),(112,2,'27.32.44.176','WDCVCNEG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1401 ms.','2015-02-08 12:01:43'),(113,2,'27.32.44.176','6ASJACKE','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1359 ms.','2015-02-08 12:03:53'),(114,2,'27.32.44.176','QUVV10P3','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1424 ms.','2015-02-08 12:08:15'),(115,2,'27.32.44.176','T3Y9MI31','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1674 ms.','2015-02-08 12:13:40'),(116,2,'27.32.44.176','0R402ESG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1352 ms.','2015-02-08 12:19:01'),(117,2,'27.32.44.176','95VLVJZ8','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1586 ms.','2015-02-08 12:28:17'),(118,2,'27.32.44.176','6GOB4584','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1468 ms.','2015-02-08 12:28:42'),(119,2,'27.32.44.176','A05FBF6U','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1362 ms.','2015-02-08 12:29:19'),(120,2,'27.32.44.176','YZ4YEDSM','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1408 ms.','2015-02-08 12:30:34'),(121,2,'27.32.44.176','9UURRTSM','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2015 ms.','2015-02-08 12:31:32'),(122,2,'27.32.44.176','YU85D2ZI','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1562 ms.','2015-02-10 09:53:41'),(123,2,'27.32.44.176','835RWKL2','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,'4','Rockdale','02','New South Wales','37','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','31','90',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','11026 ms.','2015-02-10 09:57:51'),(124,9,'27.32.44.176','OVMOUCKD','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2541 ms.','2015-03-24 16:45:28'),(125,9,'27.32.44.176','JYZ0BVUT','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','6560 ms.','2015-03-24 17:05:23'),(126,9,'27.32.44.176','L5UZ318Z','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','6328 ms.','2015-03-24 17:10:25'),(127,9,'27.32.44.176','LBJZYAY2','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1230 ms.','2015-03-24 17:12:27'),(128,9,'27.32.44.176','5K3NF5FO','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','18175 ms.','2015-03-24 17:15:19'),(129,9,'27.32.44.176','PNCH696R','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',27.000,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2235 ms.','2015-03-24 17:19:46'),(130,9,'27.32.44.176','4FJRUONV','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','6265 ms.','2015-03-24 17:20:52'),(131,9,'27.32.44.176','NKIXI78M','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2338 ms.','2015-03-24 17:56:34'),(132,9,'27.32.44.176','D7752SOJ','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','6284 ms.','2015-03-24 18:05:21'),(133,9,'27.32.44.176','NWVASEFJ','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','6315 ms.','2015-03-24 18:10:44'),(134,9,'27.32.44.176','M0QHD4PM','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',234.250,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','6306 ms.','2015-03-24 18:12:47'),(135,9,'27.32.44.176','2MA9DVI4','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',234.250,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','6269 ms.','2015-03-24 18:37:05'),(136,9,'27.32.44.176','40BWAOKC','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1308 ms.','2015-03-24 19:31:10'),(137,9,'27.32.44.176','1RD35MYI','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1531 ms.','2015-03-24 20:56:57'),(138,9,'27.32.44.176','EYQNY5I6','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1471 ms.','2015-03-24 21:04:08'),(139,9,'27.32.44.176','LB6I2DBL','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1403 ms.','2015-03-24 21:11:18'),(140,9,'27.32.44.176','B4T34FNA','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1459 ms.','2015-03-24 21:12:45'),(141,9,'27.32.44.176','KL5BFEYG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','6477 ms.','2015-03-24 21:16:33'),(142,9,'27.32.44.176','BSCAGHX9','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','55','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','38','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1502 ms.','2015-03-24 21:18:25'),(143,2,'27.32.44.176','Z42MOIOK','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.31,'Yes','No',10,'3','Rockdale','02','New South Wales','62','0','0','AU','Australia','OC','151',NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet','41','93',NULL,'99','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1672 ms.','2015-03-25 16:16:41'),(144,9,'77.247.181.165','FDKDYJGL','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,40.71,'No','No',10000,'39','','','','','0','0','A1','Anonymous Proxy','--','0',NULL,'','AS43350 NFOrce Entertainment BV','hosting','','secruest.org','NForce Entertainment B.V.','NForce Entertainment B.V.','','',NULL,'99','Yes',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1262 ms.','2015-04-10 10:49:15'),(145,9,'77.247.181.165','OPSMCDKR','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,40.71,'No','No',10000,'39','','','','','0','0','A1','Anonymous Proxy','--','0',NULL,'','AS43350 NFOrce Entertainment BV','hosting','','secruest.org','NForce Entertainment B.V.','NForce Entertainment B.V.','','',NULL,'99','Yes',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1217 ms.','2015-04-10 10:49:39'),(146,9,'77.247.181.165','BOTY1NHL','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,40.71,'No','No',10000,'39','','','','','0','0','A1','Anonymous Proxy','--','0',NULL,'','AS43350 NFOrce Entertainment BV','hosting','','secruest.org','NForce Entertainment B.V.','NForce Entertainment B.V.','','',NULL,'99','Yes',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1567 ms.','2015-04-10 10:58:27'),(147,9,'77.247.181.165','X0HU77XV','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,40.71,'No','No',10000,'39','','','','','0','0','A1','Anonymous Proxy','--','0',NULL,'','AS43350 NFOrce Entertainment BV','hosting','','secruest.org','NForce Entertainment B.V.','NForce Entertainment B.V.','','',NULL,'99','Yes',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2057 ms.','2015-04-10 11:18:42'),(148,9,'77.247.181.165','JX26BW20','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,40.71,'No','No',10000,'39','','','','','0','0','A1','Anonymous Proxy','--','0',NULL,'','AS43350 NFOrce Entertainment BV','hosting','','secruest.org','NForce Entertainment B.V.','NForce Entertainment B.V.','','',NULL,'99','Yes',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','6244 ms.','2015-04-10 11:20:08'),(149,9,'77.247.181.165','EHN55DU9','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,40.71,'No','No',10000,'39','','','','','0','0','A1','Anonymous Proxy','--','0',NULL,'','AS43350 NFOrce Entertainment BV','hosting','','secruest.org','NForce Entertainment B.V.','NForce Entertainment B.V.','','',NULL,'99','Yes',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1662 ms.','2015-04-10 11:21:05'),(150,9,'192.168.0.2','ZGP692A1','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,3.24,'No','No',0,'','','','','','','','','','','',NULL,'','','','','','','','','',NULL,'','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','IP_NOT_FOUND','1234 ms.','2015-04-10 12:29:51'),(151,9,'192.168.0.2','KUUJ6XQD','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',19.250,'USD',NULL,NULL,NULL,3.24,'No','No',0,'','','','','','','','','','','',NULL,'','','','','','','','','',NULL,'','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','IP_NOT_FOUND','2228 ms.','2015-04-10 12:59:46'),(152,9,'192.168.0.2','FGDCXKBB','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',35.670,'USD',NULL,NULL,NULL,3.24,'No','No',0,'','','','','','','','','','','',NULL,'','','','','','','','','',NULL,'','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','IP_NOT_FOUND','1712 ms.','2015-04-13 11:21:34'),(153,9,'192.168.0.2','DQ9L2QLI','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',87.350,'USD',NULL,NULL,NULL,3.24,'No','No',0,'','','','','','','','','','','',NULL,'','','','','','','','','',NULL,'','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','IP_NOT_FOUND','1440 ms.','2015-04-13 11:28:02'),(154,9,'192.168.0.2','JUOYIFWN','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',54.880,'USD',NULL,NULL,NULL,3.24,'No','No',0,'','','','','','','','','','','',NULL,'','','','','','','','','',NULL,'','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','IP_NOT_FOUND','1217 ms.','2015-04-13 11:31:19'),(155,2,'192.168.0.2','DIGCWBV4','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',26.650,'USD',NULL,NULL,NULL,6.33,'No','No',0,'','','','','','','','','','','',NULL,'','','','','','','','','',NULL,'','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','IP_NOT_FOUND','2359 ms.','2015-04-13 16:33:17'),(156,9,'192.168.0.2','VAMNC1YD','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',123.870,'USD',NULL,NULL,NULL,6.33,'No','No',0,'','','','','','','','','','','',NULL,'','','','','','','','','',NULL,'','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','IP_NOT_FOUND','1318 ms.','2015-04-13 16:34:16'),(157,9,'192.168.0.2','F5DKZA0D','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',233.980,'USD',NULL,NULL,NULL,6.33,'No','No',0,'','','','','','','','','','','',NULL,'','','','','','','','','',NULL,'','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','IP_NOT_FOUND','5053 ms.','2015-04-13 16:46:44'),(158,9,'192.168.0.2','GA5IFCUR','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,9.29,'No','No',0,'','','','','','','','','','','',NULL,'','','','','','','','','',NULL,'','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','IP_NOT_FOUND','2469 ms.','2015-04-13 19:16:52'),(159,9,'192.168.0.2','85LSGQY1','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,9.29,'No','No',0,'','','','','','','','','','','',NULL,'','','','','','','','','',NULL,'','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','IP_NOT_FOUND','1727 ms.','2015-04-13 20:09:05'),(160,9,'192.168.0.2','HTBK57A8','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:37.0) Gecko/20100101 Firefox/37.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,9.29,'No','No',0,'','','','','','','','','','','',NULL,'','','','','','','','','',NULL,'','No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','IP_NOT_FOUND','6204 ms.','2015-04-13 20:10:20');
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserMerchant`
--

DROP TABLE IF EXISTS `UserMerchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserMerchant` (
  `userId` bigint(20) NOT NULL,
  `Merc_ID` bigint(20) NOT NULL,
  KEY `fk_UserMerchant_1_idx` (`Merc_ID`),
  KEY `FK_UserMerchant_User` (`userId`),
  CONSTRAINT `FK_UserMerchant_Merchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_UserMerchant_User` FOREIGN KEY (`userId`) REFERENCES `lportal`.`User_` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserMerchant`
--

LOCK TABLES `UserMerchant` WRITE;
/*!40000 ALTER TABLE `UserMerchant` DISABLE KEYS */;
INSERT INTO `UserMerchant` VALUES (10435,1),(10435,4),(10435,5),(10435,8),(10435,2),(10435,3),(10435,6),(10435,7),(19120,10),(10435,9),(10435,10),(19401,10),(19415,11),(10435,11),(10435,12),(23302,13),(10435,14),(23312,15),(10435,13),(10435,15),(10435,16),(10435,17),(10435,18),(10435,19),(10435,20);
/*!40000 ALTER TABLE `UserMerchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `View_ Merchant`
--

DROP TABLE IF EXISTS `View_ Merchant`;
/*!50001 DROP VIEW IF EXISTS `View_ Merchant`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `View_ Merchant` AS SELECT 
 1 AS `Merc_ID`,
 1 AS `Buty_ID`,
 1 AS `Indu_ID`,
 1 AS `Coun_NumericMerchant`,
 1 AS `Coun_NumericPersonalInformation`,
 1 AS `Merc_Name`,
 1 AS `Merc_Status`,
 1 AS `Merc_CreateTime`,
 1 AS `Merc_TradingName`,
 1 AS `Merc_LegalPhysicalAddress`,
 1 AS `Merc_StatementAddress`,
 1 AS `Merc_TaxFileNumber`,
 1 AS `Merc_CityBusinessInformation`,
 1 AS `Merc_PostCodeBusinessInformation`,
 1 AS `Merc_IssuedBusinessID`,
 1 AS `Merc_IssuedPersonalID`,
 1 AS `Merc_TypeAccountApplication`,
 1 AS `Merc_EstimatedAnnualSales`,
 1 AS `Merc_FirstName`,
 1 AS `Merc_LastName`,
 1 AS `Merc_PhoneNumber`,
 1 AS `Merc_FaxNumber`,
 1 AS `Merc_EmailAddress`,
 1 AS `Merc_AlternateEmailAddress`,
 1 AS `Merc_CityPersonalInformation`,
 1 AS `Merc_PostCodePersonalInformation`,
 1 AS `CountryBusiness`,
 1 AS `CountryPersonalInformation`,
 1 AS `Indu_Description`,
 1 AS `Buty_Description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `View_Charges`
--

DROP TABLE IF EXISTS `View_Charges`;
/*!50001 DROP VIEW IF EXISTS `View_Charges`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `View_Charges` AS SELECT 
 1 AS `Char_ID`,
 1 AS `Card_ID`,
 1 AS `Merc_ID`,
 1 AS `Merc_Name`,
 1 AS `Char_IDStripe`,
 1 AS `Card_Brand`,
 1 AS `Card_Funding`,
 1 AS `Card_Number`,
 1 AS `Card_Last4`,
 1 AS `Card_Country`,
 1 AS `Tran_ID`,
 1 AS `Invo_ID`,
 1 AS `Addr_ID`,
 1 AS `Char_Amount`,
 1 AS `Char_Captured`,
 1 AS `Char_CreateTime`,
 1 AS `Char_Currency`,
 1 AS `Char_Paid`,
 1 AS `Char_Refunded`,
 1 AS `Char_FailureCode`,
 1 AS `Char_FailureMessage`,
 1 AS `Char_ReceiptEmail`,
 1 AS `Char_ReceiptNumber`,
 1 AS `Char_ProcessTime`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `View_MerchantCustomer`
--

DROP TABLE IF EXISTS `View_MerchantCustomer`;
/*!50001 DROP VIEW IF EXISTS `View_MerchantCustomer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `View_MerchantCustomer` AS SELECT 
 1 AS `Mecu_ID`,
 1 AS `Merc_ID`,
 1 AS `Cust_ID`,
 1 AS `Merc_Name`,
 1 AS `Cust_Email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `View_Refunded`
--

DROP TABLE IF EXISTS `View_Refunded`;
/*!50001 DROP VIEW IF EXISTS `View_Refunded`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `View_Refunded` AS SELECT 
 1 AS `Char_ID`,
 1 AS `REFUND`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `View_Refunds`
--

DROP TABLE IF EXISTS `View_Refunds`;
/*!50001 DROP VIEW IF EXISTS `View_Refunds`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `View_Refunds` AS SELECT 
 1 AS `Char_ID`,
 1 AS `Card_ID`,
 1 AS `Merc_ID`,
 1 AS `Merc_Name`,
 1 AS `Char_IDStripe`,
 1 AS `Card_Brand`,
 1 AS `Card_Funding`,
 1 AS `Card_Number`,
 1 AS `Card_Last4`,
 1 AS `Card_Country`,
 1 AS `Tran_ID`,
 1 AS `Invo_ID`,
 1 AS `Addr_ID`,
 1 AS `Char_Amount`,
 1 AS `Char_Captured`,
 1 AS `Char_CreateTime`,
 1 AS `Char_Currency`,
 1 AS `Char_Paid`,
 1 AS `Char_Refunded`,
 1 AS `Char_FailureCode`,
 1 AS `Char_FailureMessage`,
 1 AS `Char_ReceiptEmail`,
 1 AS `Char_ReceiptNumber`,
 1 AS `Char_ProcessTime`,
 1 AS `REFUND`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `View_Transactions`
--

DROP TABLE IF EXISTS `View_Transactions`;
/*!50001 DROP VIEW IF EXISTS `View_Transactions`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `View_Transactions` AS SELECT 
 1 AS `Tran_CreateTime`,
 1 AS `Tran_ID`,
 1 AS `Tran_IPCity`,
 1 AS `Tran_IPRegionName`,
 1 AS `Tran_CountryCode`,
 1 AS `Tran_IPCountryName`,
 1 AS `Char_ID`,
 1 AS `Card_ID`,
 1 AS `Char_Amount`,
 1 AS `Char_Currency`,
 1 AS `Char_CreateTime`,
 1 AS `Card_Number`,
 1 AS `Card_Last4`,
 1 AS `Cust_ID`,
 1 AS `Card_Name`,
 1 AS `Card_Brand`,
 1 AS `Card_Funding`,
 1 AS `Card_ExpMonth`,
 1 AS `Card_ExpYear`,
 1 AS `Card_Country`,
 1 AS `Merc_ID`,
 1 AS `Merc_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultas` (
  `consulta` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` VALUES ('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Number LIKE \'%%\' AND Card_Brand LIKE \'%%\' AND Card_Country = \'BD\' AND Char_Currency = \'BDT\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Number LIKE \'%%\' OR Card_Brand LIKE \'%%\' OR Card_Country = \'BD\' OR Char_Currency = \'BDT\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Country = \'BA\' OR Char_Currency = \'AMD\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Country = \'BA\' OR Char_Currency = \'USD\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Number LIKE \'%12%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Number LIKE \'%34212%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Number LIKE \'%4242%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-02-27\' AND \'2015-04-10\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-03-01\' AND \'2015-04-10\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-11\' AND \'2015-04-10\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-11\' AND \'2015-04-10\') ) A WHERE Card_Number LIKE \'%1882%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-11\' AND \'2015-04-10\') ) A WHERE Card_Number LIKE \'%4444%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-11\' AND \'2015-04-10\') ) A WHERE Card_Number LIKE \'%1881%\' AND Card_Brand LIKE \'%Visa%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-11\' AND \'2015-04-10\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-11\' AND \'2015-04-10\') ) A WHERE Card_Number LIKE \'%4444%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-11\' AND \'2015-04-10\') ) A WHERE Card_Number LIKE \'%4444%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-11\' AND \'2015-04-10\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-11\' AND \'2015-04-10\') ) A WHERE Card_Number LIKE \'%123%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-11\' AND \'2015-04-10\') ) A WHERE Card_Number LIKE \'%qweqwe%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-11\' AND \'2015-04-10\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Country = \'AF\' OR Char_Currency = \'EUR\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Country = \'AF\' OR Char_Currency = \'EUR\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Char_Currency = \'EUR\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Number LIKE \'%1881%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Number LIKE \'%1881%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Number LIKE \'%1881%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Number LIKE \'%1881%\' OR Merc_ID = 2'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Number LIKE \'%1881%\' OR Merc_ID = 9'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-10\' AND \'2015-04-09\') ) A WHERE Card_Number LIKE \'%1881%\' AND Merc_ID = 9'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-12\' AND \'2015-04-11\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-12\' AND \'2015-04-11\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-12\' AND \'2015-04-11\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-12\' AND \'2015-04-11\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-12\' AND \'2015-04-11\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-12\' AND \'2015-04-11\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-12\' AND \'2015-04-11\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-12\' AND \'2015-04-11\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-12\' AND \'2015-04-11\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-12\' AND \'2015-04-11\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-12\' AND \'2015-04-11\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-12\' AND \'2015-04-11\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-12\' AND \'2015-04-11\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%999%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%444%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%999999%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%1882%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%1883%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%1881%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-03-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%1881%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-30\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%1881%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%1872%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%1881%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-03-31\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%1881%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-03-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%1881%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-04-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%1881%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-04-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-04-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-04-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-04-02\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-04-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-04-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-04-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%444%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-04-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-04-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%444%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-04-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%181%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-04-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%181%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-04-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%182%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%81%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%82%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-04-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%82%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Tran_CreateTime,\'%Y-%m-%d\') BETWEEN \'2015-04-01\' AND \'2015-04-12\') ) A WHERE Card_Number LIKE \'%81%\''),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A'),('SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = 10435 AND DATE_FORMAT(Char_CreateTime,\'%Y-%m-%d\') BETWEEN \'2014-11-13\' AND \'2015-04-12\') ) A');
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechas`
--

DROP TABLE IF EXISTS `fechas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fechas` (
  `inicial` varchar(45) DEFAULT NULL,
  `final` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechas`
--

LOCK TABLES `fechas` WRITE;
/*!40000 ALTER TABLE `fechas` DISABLE KEYS */;
INSERT INTO `fechas` VALUES ('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2015-02-11','2015-02-18'),('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2014-12-04','2015-02-18'),('2015-01-01','2015-02-18'),('2015-02-11','2015-02-18'),('2015-01-01','2015-02-18'),('2015-02-11','2015-02-18'),('2015-01-01','2015-02-18');
/*!40000 ALTER TABLE `fechas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'IPG'
--
/*!50003 DROP PROCEDURE IF EXISTS `PROC_CHANGE_CERTIFICATE_STATUS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_CHANGE_CERTIFICATE_STATUS`(
`P_Cert_Status`	enum('0','1'),
INOUT `P_Cert_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`Certificate`
	SET Cert_Status = P_Cert_Status
	WHERE Cert_ID = P_Cert_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_CHANGE_STATUS_COUNTRY_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_CHANGE_STATUS_COUNTRY_RESTRICTION`(
P_Core_Status enum('0','1'),
INOUT `P_Core_ID` bigint(20))
BEGIN	
    UPDATE `IPG`.`CountryRestriction`
	SET `Core_Status` = P_Core_Status
	WHERE `Core_ID` = P_Core_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_CHANGE_STATUS_MERCHANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_CHANGE_STATUS_MERCHANT`(
P_Merc_Status	enum('0','1'),
INOUT `P_Merc_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`Merchant` 
    SET `Merc_Status` = P_Merc_Status 	
	WHERE `Merc_ID` = P_Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_CHANGE_STATUS_MERCHANT_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_CHANGE_STATUS_MERCHANT_RESTRICTION`(
P_Mere_Status enum('0','1'),
`P_Mere_ID` bigint(20))
BEGIN	
    UPDATE `IPG`.`MerchantRestriction`
	SET `Mere_Status` = P_Mere_Status
	WHERE `Mere_ID` = P_Mere_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_DELETE_CREDITCARD_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_DELETE_CREDITCARD_RESTRICTION`(
INOUT `P_Ccre_ID` bigint(20))
BEGIN
	
    UPDATE `IPG`.`CreditCardRestriction`
		SET
		`Ccre_Status` = '1'
		WHERE `Ccre_ID` = P_Ccre_ID;
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_BUSINESSTYPE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_BUSINESSTYPE`(
`P_Buty_Description` varchar(50),
INOUT `P_Buty_ID`	bigint(20))
BEGIN
	INSERT INTO `IPG`.`BusinessType`
	(`Buty_Description`,
    `Buty_CreateTime`)
	VALUES
	(P_Buty_Description,
    NOW());
	SET P_Buty_ID = (SELECT LAST_INSERT_ID());
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
`P_Card_Name` char(50),
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
            `Card_Name`,
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
            P_Card_Name,
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_CERTIFICATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_CERTIFICATE`(
`P_Merc_ID`	bigint(20),
`P_Cert_Name` varchar(50),
`P_Cert_BBKeyStore`	blob,
`P_Cert_MerchantKeyStore` blob,
`P_Cert_Log`	varchar(2500),
`P_Cert_BBKeyStoreInformation`	varchar(500),
`P_Cert_MerchantKeyStoreInformation`	varchar(500),
`P_Cert_PasswordBBKeyStore`	varchar(50),
`P_Cert_PasswordBBKey`	varchar(50),
`P_Cert_AliasBB`	varchar(50),
`P_Cert_AliasMerchant`	varchar(50),
INOUT `P_Cert_ID` bigint(20))
BEGIN
	INSERT INTO `IPG`.`Certificate`
	(`Merc_ID`,
	`Cert_Name`,
	`Cert_CreateTime`,
	`Cert_ExpirationTime`,
	`Cert_BBKeyStore`,
	`Cert_MerchantKeyStore`,
    `Cert_Log`,
    `Cert_BBKeyStoreInformation`,
    `Cert_MerchantKeyStoreInformation`,
    `Cert_PasswordBBKeyStore`,
	`Cert_PasswordBBKey`,
	`Cert_AliasBB`,
    `Cert_AliasMerchant`)
	VALUES
	(P_Merc_ID,
	P_Cert_Name,
	now(),
	now() + INTERVAL 365 DAY,
	P_Cert_BBKeyStore,
	P_Cert_MerchantKeyStore,
    P_Cert_Log,
    P_Cert_BBKeyStoreInformation,
    P_Cert_MerchantKeyStoreInformation,
    P_Cert_PasswordBBKeyStore,
    P_Cert_PasswordBBKey,
    P_Cert_AliasBB,
    P_Cert_AliasMerchant);
    SET P_Cert_ID = (SELECT LAST_INSERT_ID());
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_COUNTRYBLOCKLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_COUNTRYBLOCKLIST`(
`P_Coun_Numeric`	int(5),
`P_Cobl_Transaction`	tinyint(1),
`P_Cobl_MerchantServerLocation`	tinyint(1),
`P_Cobl_MerchantRegistrationLocation`	tinyint(1),
`P_Cobl_CreditCardIssueLocation`	tinyint(1),
`P_Cobl_CreditCardHolderLocation`	tinyint(1),
INOUT `P_Cobl_ID` bigint(20))
BEGIN
	INSERT INTO `IPG`.`CountryBlockList`
		(`Coun_Numeric`,
		`Cobl_Transaction`,
		`Cobl_MerchantServerLocation`,
		`Cobl_MerchantRegistrationLocation`,
		`Cobl_CreditCardIssueLocation`,
		`Cobl_CreditCardHolderLocation`)
	VALUES
		(P_Coun_Numeric,
		P_Cobl_Transaction,
		P_Cobl_MerchantServerLocation,
		P_Cobl_MerchantRegistrationLocation,
		P_Cobl_CreditCardIssueLocation,
		P_Cobl_CreditCardHolderLocation);    
        SET P_Cobl_ID = (SELECT LAST_INSERT_ID());
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_CREDITCARD_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_CREDITCARD_RESTRICTION`(
`P_Ccre_Value` int(5),
`P_Ccre_Concept` varchar(50),
`P_Ccre_TimeUnit` varchar(50),
INOUT `P_Ccre_ID` bigint(20))
BEGIN

	INSERT INTO `IPG`.`CreditCardRestriction`
		(`Ccre_Value`,
		`Ccre_Concept`,
		`Ccre_TimeUnit`,
        `Ccre_CreateTime`)
		VALUES
		(P_Ccre_Value,
		P_Ccre_Concept,
		P_Ccre_TimeUnit,
		now());
		SET P_Ccre_ID = (SELECT LAST_INSERT_ID());
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_INDUSTRY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_INDUSTRY`(
`P_Indu_Description` varchar(50),
INOUT `P_Indu_ID`	bigint(20))
BEGIN
	INSERT INTO `IPG`.`Industry`
	(`Indu_Description`,
    `Indu_CreateTime`)
	VALUES
	(P_Indu_Description,
    NOW());
	SET P_Indu_ID = (SELECT LAST_INSERT_ID());
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
`P_Buty_ID` bigint(20),
`P_Indu_ID` bigint(20),
`P_Coun_NumericMerchant` int(5),
`P_Coun_NumericPersonalInformation` int(5),
`P_Merc_Name` varchar(100),
`P_Merc_TradingName` varchar(50),
`P_Merc_LegalPhysicalAddress` varchar(50),
`P_Merc_StatementAddress` varchar(50),
`P_Merc_TaxFileNumber` varchar(50),
`P_Merc_CityBusinessInformation` varchar(50),
`P_Merc_PostCodeBusinessInformation` varchar(50),
`P_Merc_IssuedBusinessID` varchar(50),
`P_Merc_IssuedPersonalID` varchar(50),
`P_Merc_TypeAccountApplication` varchar(50),
`P_Merc_EstimatedAnnualSales` varchar(50),
`P_Merc_FirstName` varchar(50),
`P_Merc_LastName` varchar(50),
`P_Merc_PhoneNumber` varchar(50),
`P_Merc_FaxNumber` varchar(50),
`P_Merc_EmailAddress` varchar(50),
`P_Merc_AlternateEmailAddress` varchar(50),
`P_Merc_CityPersonalInformation` varchar(50),
`P_Merc_PostCodePersonalInformation` varchar(50),
INOUT `P_Merc_ID` bigint(20))
BEGIN
	INSERT INTO `IPG`.`Merchant`
		(`Buty_ID`,
		`Indu_ID`,
		`Coun_NumericMerchant`,
		`Merc_Name`,
		`Merc_CreateTime`,
		`Merc_TradingName`,
		`Merc_LegalPhysicalAddress`,
		`Merc_StatementAddress`,
		`Merc_TaxFileNumber`,
		`Merc_CityBusinessInformation`,
		`Merc_PostCodeBusinessInformation`,
		`Merc_IssuedBusinessID`,
		`Merc_IssuedPersonalID`,
		`Merc_TypeAccountApplication`,
		`Merc_EstimatedAnnualSales`,
		`Merc_FirstName`,
		`Merc_LastName`,
		`Merc_PhoneNumber`,
		`Merc_FaxNumber`,
		`Merc_EmailAddress`,
		`Merc_AlternateEmailAddress`,
		`Merc_CityPersonalInformation`,
		`Merc_PostCodePersonalInformation`,
		`Coun_NumericPersonalInformation`)
	VALUES
		(P_Buty_ID,
		P_Indu_ID,
		P_Coun_NumericMerchant,
		P_Merc_Name,
		NOW(),
		P_Merc_TradingName,
		P_Merc_LegalPhysicalAddress,
		P_Merc_StatementAddress,
		P_Merc_TaxFileNumber,
		P_Merc_CityBusinessInformation,
		P_Merc_PostCodeBusinessInformation,
		P_Merc_IssuedBusinessID,
		P_Merc_IssuedPersonalID,
		P_Merc_TypeAccountApplication,
		P_Merc_EstimatedAnnualSales,
		P_Merc_FirstName,
		P_Merc_LastName,
		P_Merc_PhoneNumber,
		P_Merc_FaxNumber,
		P_Merc_EmailAddress,
		P_Merc_AlternateEmailAddress,
		P_Merc_CityPersonalInformation,
		P_Merc_PostCodePersonalInformation,
		P_Coun_NumericPersonalInformation);
        SET P_Merc_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_MERCHANT_BASIC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_MERCHANT_BASIC`(
`P_Merc_Name` varchar(100),
`P_Merc_FirstName` varchar(50),
`P_Merc_LastName` varchar(50),
`P_Merc_EmailAddress` varchar(50),
INOUT `P_Merc_ID` bigint(20))
BEGIN
	INSERT INTO `IPG`.`Merchant`
		(`Merc_Name`,
        `Merc_FirstName`,
		`Merc_LastName`,
        `Merc_EmailAddress`,
		`Merc_CreateTime`)
	VALUES
		(P_Merc_Name,
        P_Merc_FirstName,
		P_Merc_LastName,
        P_Merc_EmailAddress,
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
INOUT `P_Meco_ID`	bigint(20))
BEGIN
	INSERT INTO `IPG`.`MerchantConfiguration`
	(`Merc_ID`,
	`Meco_UrlDeny`,
	`Meco_UrlApproved`,
    `Meco_CreateTime`)
	VALUES
	(P_Merc_ID,
	P_Meco_UrlDeny,
	P_Meco_UrlApproved,
	NOW());
	SET P_Meco_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_MERCHANT_CUSTOMER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_MERCHANT_CUSTOMER`(
`P_Merc_ID` bigint(20),
`P_Cust_ID` bigint(20),
INOUT `P_Mecu_ID`	bigint(20))
BEGIN
	SET P_Mecu_ID = (SELECT `Mecu_ID`  FROM `IPG`.`MerchantCustomer` WHERE `Merc_ID` = P_Merc_ID AND `Cust_ID` = P_Cust_ID);
    IF (P_Mecu_ID IS NULL) THEN    
		INSERT INTO `IPG`.`MerchantCustomer`
		(`Merc_ID`,
		`Cust_ID`,
		`Mercu_CreateTime`)
		VALUES
		(P_Merc_ID,
		P_Cust_ID,
		NOW());
		SET P_Mecu_ID = (SELECT LAST_INSERT_ID());
	END IF;
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_REJECTED_CHARGE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_REJECTED_CHARGE`(
`P_Tran_ID`	bigint(20),
`P_Rech_Amount`	decimal(20,0),
`P_Rech_Currency`	varchar(3),
`P_Rech_FailureCode`	varchar(50),
`P_Rech_FailureMessage`	varchar(150),
`P_Rech_CardNumber`	varchar(50),
`P_Rech_Card_ExpYear`	varchar(50),
`P_Rech_Card_ExpMonth`	varchar(50),
`P_Rech_CardHolderName`	varchar(50),
INOUT `P_Rech_ID`	bigint(20))
BEGIN
	INSERT INTO `IPG`.`RejectedCharges`
	(`Tran_ID`,
	`Rech_Amount`,
	`Rech_Currency`,
	`Rech_FailureCode`,
	`Rech_FailureMessage`,
	`Rech_CardNumber`,
	`Rech_Card_ExpYear`,
	`Rech_Card_ExpMonth`,
	`Rech_CardHolderName`,
    `Rech_CreateTime`)
	VALUES
	(P_Tran_ID,
	P_Rech_Amount,
	P_Rech_Currency,
	P_Rech_FailureCode,
	P_Rech_FailureMessage,
	P_Rech_CardNumber,
	P_Rech_Card_ExpYear,
	P_Rech_Card_ExpMonth,
	P_Rech_CardHolderName,
    now());
	SET P_Rech_ID = (SELECT LAST_INSERT_ID());
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
`P_Subs_Quantity`	int(4),
`P_Subs_TrialStart`	datetime,
`P_Subs_TrialEnd`	datetime,
`P_Subs_Start`	datetime,
`P_Subs_TaxPercent`	decimal(3,2),
INOUT `P_Subs_ID`	bigint(20))
BEGIN	
    INSERT INTO `IPG`.`Subscription`
	(`Plan_ID`,
	`Cust_ID`,
	`Disc_ID`,
	`Subs_Quantity`,
    `Subs_TrialStart`,
    `Subs_TrialEnd`,
	`Subs_Start`,
    `Subs_TaxPercent`,    
	`Subs_Status`,	
	`Subs_CreationTime`)
	VALUES
	(P_Plan_ID,
	P_Cust_ID,
	P_Disc_ID,
	P_Subs_Quantity,
    P_Subs_TrialStart,
    P_Subs_TrialEnd,    
	P_Subs_Start,
    P_Subs_TaxPercent,
	'Active',
	now());
	SET P_Subs_ID = (SELECT LAST_INSERT_ID());    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_SUBSCRIPTION_BK` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_SUBSCRIPTION_BK`(
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
`P_Tran_TxnType` enum('creditcard','debitcard','paypal','google ‚Äì Google checkout','other','lead ‚Äì lead generation','survey ‚Äì online survey','sitereg ‚Äì site registration'),
`P_Tran_CVVResult` enum('Y','N'),
`P_Tran_RequestedType` enum('standard','premium'),
`P_Tran_RiskScore` decimal(5,2),
`P_Tran_CountryMatch` enum('Yes','No'),
`P_Tran_HighRiskCountry` enum('Yes','No'),
`P_Tran_Distance` bigint(20),
`P_Tran_IPAccuracyRadius` char(20),
`P_Tran_IPCity` char(20),
`P_Tran_IPRegion` char(2),
`P_Tran_IPRegionName` char(100),
`P_Tran_IPPostalCode` char(20),
`P_Tran_IPMetroCode` char(20),
`P_Tran_IPAreaCode` char(50),
`P_Tran_CountryCode` char(2),
`P_Tran_IPCountryName` char(100),
`P_Tran_IPContinentCode` char(2),
`P_Tran_IPLatitude` char(20),
`P_Tran_IPLongitude` char(20),
`P_Tran_IPTimeZone` char(50) ,
`P_Tran_IPAsnum` char(50) ,
`P_Tran_IPUserType` enum('','business','cafe','cellular','college','contentDeliveryNetwork','government','hosting','library','military','residential','router','school','searchEngineSpider','traveler'),
`P_Tran_IPNetSpeedCell` enum('','Dialup','Cable/DSL','Corporate','Cellular'),
`P_Tran_IPDomain` char(50),
`P_Tran_IPIsp` char(100),
`P_Tran_IPOrg` char(50),
`P_Tran_IPCityConf` char(3),
`P_Tran_IPRegionConf` char(3),
`P_Tran_IPPostalConf` char(3),
`P_Tran_IPCountryConf` char(3),
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_USER_MERCHANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_USER_MERCHANT`(
`P_userId`	bigint(20),
`P_Merc_ID`	bigint(20))
BEGIN
	INSERT INTO `IPG`.`UserMerchant`(`userId`,`Merc_ID`)
	VALUES (P_userId, P_Merc_ID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_ALL_MERCHANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_ALL_MERCHANT`(
`P_USER_ID` bigint(20))
BEGIN
SELECT A.*, B.Coun_Name CountryBusiness, C.Coun_Name CountryPersonalInformation, D.Indu_Description, E.Buty_Description 
FROM (SELECT A.*
FROM IPG.Merchant A
WHERE Merc_ID IN (SELECT Merc_ID FROM UserMerchant where userId =  P_USER_ID)) A
LEFT OUTER JOIN IPG.Country B ON (A.Coun_NumericMerchant = B.Coun_Numeric)
LEFT OUTER JOIN IPG.Country C ON (A.Coun_NumericPersonalInformation = C.Coun_Numeric)
LEFT OUTER JOIN IPG.Industry D ON (A.Indu_ID = D.Indu_ID)
LEFT OUTER JOIN IPG.BusinessType E ON (A.Buty_ID = E.Buty_ID)
ORDER BY Merc_NAME;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_ALL_MERCHANT_FILTER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_ALL_MERCHANT_FILTER`(
`P_Merc_NAME` varchar(100),
`P_Coun_NumericMerchant` int(5),
`P_Buty_ID`	bigint(20),
`P_Indu_ID`	bigint(20),
`P_Merc_Status`	enum('0','1'),
`P_Match` enum('0','1'),
`P_USER_ID` bigint(20))
BEGIN
	
    DECLARE FIRST_PART INT DEFAULT 0;
    SET @sql_query=CONCAT("SELECT * FROM IPG.`View_ Merchant` A WHERE A.Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = ", P_USER_ID,")"); 
	
    IF(P_Match IS NOT NULL && P_Match = '0') THEN 
    /* Si el usuario selecciono el filtro avanzado y puso como match *all todos */
    /* los campos que LLENO deben coincidir */
		
        IF(P_Merc_NAME IS NOT NULL) THEN
			SET @sql_query = CONCAT(@sql_query, " AND Merc_NAME LIKE '%", P_Merc_NAME,"%'");            
		END IF;
	    
		IF(P_Coun_NumericMerchant IS NOT NULL) THEN
			SET @sql_query = CONCAT(@sql_query, " AND Coun_NumericMerchant = ", P_Coun_NumericMerchant);
		END IF;
	    
		IF(P_Buty_ID IS NOT NULL) THEN
			SET @sql_query = CONCAT(@sql_query, " AND Buty_ID = ", P_Buty_ID);
		END IF;
	    
		IF(P_Indu_ID IS NOT NULL) THEN
			SET @sql_query = CONCAT(@sql_query, " AND Indu_ID = ", P_Indu_ID);
		END IF;
	    
		IF(P_Merc_Status IS NOT NULL) THEN
			SET @sql_query = CONCAT(@sql_query, " AND Merc_Status = '", P_Merc_Status,"'");
		END IF;
        
	ELSEIF(P_Match IS NOT NULL && P_Match = '1') THEN /* Si el usuario selecciono el filtro avanzado y puso como match any*/
		/* Si el usuario selecciono el filtro avanzado y puso como match *any algunos */
		/* los campos que LLENO deben coincidir */
        IF(P_Merc_NAME IS NOT NULL) THEN
				IF FIRST_PART = 0 THEN
					SET FIRST_PART = 1;
					SET @sql_query = CONCAT(@sql_query, " AND Merc_NAME LIKE '%", P_Merc_NAME,"%'");
                ELSE
					SET @sql_query = CONCAT(@sql_query, " OR Merc_NAME LIKE '%", P_Merc_NAME,"%'");
                END IF;            
		END IF;
	    
		IF(P_Coun_NumericMerchant IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = 1;
                SET @sql_query = CONCAT(@sql_query, " AND Coun_NumericMerchant = ", P_Coun_NumericMerchant);
            ELSE
				SET @sql_query = CONCAT(@sql_query, " OR Coun_NumericMerchant = ", P_Coun_NumericMerchant);
			END IF;
            
		END IF;
	    
		IF(P_Buty_ID IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = 1;
				SET @sql_query = CONCAT(@sql_query, " AND Buty_ID = ", P_Buty_ID);
            ELSE
				SET @sql_query = CONCAT(@sql_query, " OR Buty_ID = ", P_Buty_ID);
			END IF;
            
		END IF;
	    
		IF(P_Indu_ID IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = 1;
                SET @sql_query = CONCAT(@sql_query, " AND Indu_ID = ", P_Indu_ID);
            ELSE
				SET @sql_query = CONCAT(@sql_query, " OR Indu_ID = ", P_Indu_ID);
			END IF;
			
		END IF;
	    
		IF(P_Merc_Status IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = 1;
                SET @sql_query = CONCAT(@sql_query, " AND Merc_Status = ", P_Merc_Status);
            ELSE
				SET @sql_query = CONCAT(@sql_query, " OR Merc_Status = '", P_Merc_Status,"'");
			END IF;
			
		END IF;
	-- ELSEIF(P_Match IS NOT NULL && P_Match == 2) THEN /* Si el usuario selecciono el filtro avanzado y puso como match any*/
	
	END IF;

	-- SELECT @sql_query FROM DUAL;
	PREPARE stmt FROM @sql_query;
   	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_AMOUNT_BY_DAY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_AMOUNT_BY_DAY`(
`P_Initial_Day`	varchar(10),
`P_Final_Day`	varchar(10),
`P_Merc_ID`	bigint(20),
`P_USER_ID` bigint(20))
BEGIN	
    IF (P_Merc_ID IS NULL) THEN
    
		SELECT DATE_FORMAT(A.CHAR_CREATETIME,'%Y-%m-%d') DAY, SUM(A.CHAR_AMOUNT) TOTAL 
		FROM IPG.Charge A, IPG.Transaction B, IPG.Merchant C
		WHERE A.Tran_ID = B.Tran_ID
		AND B.Merc_ID = C.Merc_ID
		AND C.Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId =  P_USER_ID)
		AND DATE_FORMAT(A.CHAR_CREATETIME,'%Y-%m-%d') BETWEEN P_Initial_Day AND P_Final_Day
		GROUP BY DATE_FORMAT(A.CHAR_CREATETIME,'%Y-%m-%d')
		ORDER BY DATE(DATE_FORMAT(A.CHAR_CREATETIME,'%Y-%m-%d')) DESC;
	ELSE
		SELECT DATE_FORMAT(A.CHAR_CREATETIME,'%Y-%m-%d') DAY, SUM(A.CHAR_AMOUNT) TOTAL 
		FROM IPG.Charge A, IPG.Transaction B, IPG.Merchant C
		WHERE A.Tran_ID = B.Tran_ID
		AND B.Merc_ID = C.Merc_ID
		AND C.Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId =  P_USER_ID AND Merc_ID = P_Merc_ID)
		AND DATE_FORMAT(A.CHAR_CREATETIME,'%Y-%m-%d') BETWEEN P_Initial_Day AND P_Final_Day
		GROUP BY DATE_FORMAT(A.CHAR_CREATETIME,'%Y-%m-%d')
		ORDER BY DATE(DATE_FORMAT(A.CHAR_CREATETIME,'%Y-%m-%d')) DESC;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_BUSINESSTYPE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_BUSINESSTYPE`(
/*P_Buty_ID	bigint(20),
P_Buty_Description	varchar(50),
P_Buty_Status	enum('0','1')*/)
BEGIN
	/*DECLARE sql_queRY varchar(1000) DEFAULT "SELECT * FROM IPG.BusinessType "; 
	DECLARE sw_WHERE, sw2 INT DEFAULT 0;*/
    SELECT * FROM IPG.BusinessType;
    /*
    IF(P_Buty_ID IS NOT NULL && P_Buty_Description IS NOT NULL && P_Buty_Status IS NOT NULL) THEN
		SELECT * FROM IPG.BusinessType WHERE Buty_ID = P_Buty_ID AND Buty_Description = P_Buty_Description AND Buty_Status = P_Buty_Status;
	END IF;
    
     IF(P_Buty_ID IS NOT NULL && P_Buty_Description IS NOT NULL && P_Buty_Status IS NULL) THEN
		SELECT * FROM IPG.BusinessType WHERE Buty_ID = P_Buty_ID AND Buty_Description = P_Buty_Description;
	END IF;
    
    
--    WHERE Buty_Status = '0'; */
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CARD_BY_NUMBER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CARD_BY_NUMBER`(
P_Card_Number	varchar(50),
INOUT Card_ID	bigint(20),
INOUT Cust_ID	bigint(20))
BEGIN
	SELECT Card_ID, Cust_ID FROM IPG.Card WHERE Card_Number = P_Card_Number;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CERTIFICATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CERTIFICATE`(
IN P_USER_ID bigint(20))
BEGIN
	SELECT A.*, B.Merc_Name FROM IPG.Certificate A, IPG.Merchant B
    WHERE B.Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId = P_USER_ID)
    AND A.Merc_ID = B.Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CERTIFICATE_DETAIL_BB` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CERTIFICATE_DETAIL_BB`(
`P_Cert_ID`	bigint(20))
BEGIN
	SELECT `Certificate`.`Cert_ID`,
    `Certificate`.`Merc_ID`,
    `Certificate`.`Cert_BBKeyStore`
	FROM `IPG`.`Certificate`
    WHERE `Cert_ID` = P_Cert_ID ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CERTIFICATE_DETAIL_MERCHANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CERTIFICATE_DETAIL_MERCHANT`(
`P_Cert_ID`	bigint(20))
BEGIN
	SELECT `Certificate`.`Cert_ID`,
    `Certificate`.`Merc_ID`,
    `Certificate`.`Cert_MerchantKeyStore`
	FROM `IPG`.`Certificate`
    WHERE `Cert_ID` = P_Cert_ID ;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CHARGE`(
`P_USER_ID` bigint(20))
BEGIN
	SELECT A.*, IFNULL(B.REFUND,0) REFUND FROM (SELECT A.`Char_ID`,
			A.`Card_ID`,
			A.`Char_IDStripe`,
			B.`Card_Brand`,
			B.`Card_Funding`,
            B.`Card_Number`,
			B.`Card_Last4`,
			A.`Tran_ID`,
			A.`Invo_ID`,
			A.`Addr_ID`,
			A.`Char_Amount`,
			A.`Char_Captured`,
			A.`Char_CreateTime`,
			A.`Char_Currency`,
			A.`Char_Paid`,
			A.`Char_Refunded`,
			A.`Char_FailureCode`,
			A.`Char_FailureMessage`,
			A.`Char_ReceiptEmail`,
			A.`Char_ReceiptNumber`,   
			A.`Char_ProcessTime`  
		FROM `IPG`.`Charge` A, `IPG`.`Card` B, `IPG`.`Transaction` C
		WHERE A.Card_ID = B.Card_ID
        AND A.Tran_ID = C.Tran_ID 
        AND C.Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId =  P_USER_ID)) A LEFT OUTER JOIN(select Char_ID, sum(Refu_Amount) REFUND from `IPG`.`Refund` group by Char_ID) B
        ON A.Char_ID = B.Char_ID
		ORDER BY Char_CreateTime DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CHARGES_BY_DAY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CHARGES_BY_DAY`(
`P_Initial_Day`	varchar(10),
`P_Final_Day`	varchar(10),
`P_Merc_ID`	bigint(20),
`P_USER_ID` bigint(20))
BEGIN
	
    IF (P_Merc_ID IS NULL) THEN		
		SELECT DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d') DAY, COUNT(*) TOTAL 
		FROM IPG.Charge A, IPG.Transaction B, IPG.Merchant C    
		WHERE A.Tran_ID = B.Tran_ID
		AND B.Merc_ID = C.Merc_ID
		AND C.Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId =  P_USER_ID)
		AND DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d') BETWEEN P_Initial_Day AND P_Final_Day
		GROUP BY DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d')
		ORDER BY DATE(DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d')) DESC;
	ELSE
		SELECT DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d') DAY, COUNT(*) TOTAL 
		FROM IPG.Charge A, IPG.Transaction B, IPG.Merchant C    
		WHERE A.Tran_ID = B.Tran_ID
		AND B.Merc_ID = C.Merc_ID
		AND C.Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId =  P_USER_ID AND Merc_ID = P_Merc_ID)
		AND DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d') BETWEEN P_Initial_Day AND P_Final_Day
		GROUP BY DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d')
		ORDER BY DATE(DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d')) DESC;
        
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CHARGES_BY_DAY_FILTER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CHARGES_BY_DAY_FILTER`(
`P_Card_Number` varchar(50),
`P_Merc_ID` bigint(20),
`P_Brand` varchar(50),
`P_Card_Country` varchar(2),
`P_Char_Currency` varchar(3),
`P_Match` enum('0','1'),
`P_Initial_Day`	varchar(10),
`P_Final_Day`	varchar(10),
`P_USER_ID` bigint(20))
BEGIN
	DECLARE FIRST_PART INT DEFAULT 0;
    SET @sql_query=CONCAT("SELECT * FROM (SELECT * FROM IPG.`View_Refunds` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = ", P_USER_ID," AND DATE_FORMAT(Char_CreateTime,'%Y-%m-%d') BETWEEN '",P_Initial_Day,"' AND '",P_Final_Day,"') ) A"); 
	
    IF(P_Match IS NOT NULL && P_Match = '0') THEN 
    /* Si el usuario selecciono el filtro avanzado y puso como match *all todos */
    /* los campos que LLENO deben coincidir */
		IF(P_Card_Number IS NOT NULL) THEN
			SET FIRST_PART = FIRST_PART + 1;
			SET @sql_query = CONCAT(@sql_query, " WHERE Card_Number LIKE '%", P_Card_Number,"%'");
		END IF;
        
		IF(P_Merc_ID IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Merc_ID = ", P_Merc_ID);
            ELSE 
				SET @sql_query = CONCAT(@sql_query, " AND Merc_ID = ", P_Merc_ID);
            END IF;			
		END IF;
	
		IF(P_Brand IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Card_Brand LIKE '%", P_Brand,"%'");
            ELSE
				SET @sql_query = CONCAT(@sql_query, " AND Card_Brand LIKE '%", P_Brand,"%'");
            END IF;			
		END IF;
		
        IF(P_Card_Country IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Card_Country = '", P_Card_Country,"'");
            ELSE
				SET @sql_query = CONCAT(@sql_query, " AND Card_Country = '", P_Card_Country,"'");
            END IF;			
		END IF;
        
        IF(P_Char_Currency IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Char_Currency = '", P_Char_Currency ,"'");
            ELSE
				SET @sql_query = CONCAT(@sql_query, " AND Char_Currency = '", P_Char_Currency ,"'");
            END IF;			
		END IF;
        
    ELSEIF(P_Match IS NOT NULL && P_Match = '1') THEN /* Si el usuario selecciono el filtro avanzado y puso como match any*/
		/* Si el usuario selecciono el filtro avanzado y puso como match *any algunos */
		/* los campos que LLENO deben coincidir */
		IF(P_Card_Number IS NOT NULL) THEN
			SET FIRST_PART = FIRST_PART + 1;
			SET @sql_query = CONCAT(@sql_query, " WHERE Card_Number LIKE '%", P_Card_Number,"%'");            
		END IF;
        
        IF(P_Merc_ID IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Merc_ID = ", P_Merc_ID);
            ELSE
				SET @sql_query = CONCAT(@sql_query, " OR Merc_ID = ", P_Merc_ID);
            END IF;			
		END IF;
        
        IF(P_Brand IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Card_Brand LIKE '%", P_Brand,"%'");
            ELSE
				SET @sql_query = CONCAT(@sql_query, " OR Card_Brand LIKE '%", P_Brand,"%'");
            END IF;			
		END IF;
        
        IF(P_Card_Country IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Card_Country = '", P_Card_Country,"'");
            ELSE
				SET @sql_query = CONCAT(@sql_query, " OR Card_Country = '", P_Card_Country,"'");
            END IF;			
		END IF;
        
        IF(P_Char_Currency IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Char_Currency = '", P_Char_Currency,"'");
            ELSE
				SET @sql_query = CONCAT(@sql_query, " OR Char_Currency = '", P_Char_Currency,"'");
            END IF;			
		END IF;
        
    END IF;
    INSERT INTO `IPG`.`consultas`
	(`consulta`)
	VALUES
	(@sql_query);

    -- SELECT @sql_query FROM DUAL;
	PREPARE stmt FROM @sql_query;
   	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CHARGE_DETAIL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CHARGE_DETAIL`(
`P_Char_ID` bigint(20))
BEGIN
SELECT A.*, IFNULL(B.REFUND,0) REFUND FROM (SELECT A.`Char_ID`,
			A.`Card_ID`,
			A.`Char_IDStripe`,
            B.`Card_Name`,
			B.`Card_Brand`,
			B.`Card_Funding`,
            B.`Card_Number`,
			B.`Card_Last4`,
			A.`Tran_ID`,
			A.`Invo_ID`,
			A.`Addr_ID`,
			A.`Char_Amount`,
			A.`Char_Captured`,
			A.`Char_CreateTime`,
			A.`Char_Currency`,
			A.`Char_Paid`,
			A.`Char_Refunded`,
			A.`Char_FailureCode`,
			A.`Char_FailureMessage`,
			A.`Char_ReceiptEmail`,
			A.`Char_ReceiptNumber`,   
			A.`Char_ProcessTime`,
            C.`Cust_Email`,
            E.`Merc_ID`,
            E.`Merc_name`
		FROM `IPG`.`Charge` A, `IPG`.`Card` B, `IPG`.`Customer` C, `IPG`.`Transaction` D, `IPG`.`Merchant` E
		WHERE A.Card_ID = B.Card_ID
        AND B.Cust_ID = C.Cust_ID
        AND A.Tran_ID = D.Tran_ID
        AND D.Merc_ID = E.Merc_ID
        AND A.Char_ID = P_Char_ID) A LEFT OUTER JOIN(SELECT Char_ID, sum(Refu_Amount) REFUND FROM `IPG`.`Refund` group by Char_ID) B
        ON A.Char_ID = B.Char_ID;
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_COUNTRYBLOCKLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_COUNTRYBLOCKLIST`()
BEGIN
	SELECT A.Coun_Name,A.Coun_Numeric, 
	B.Cobl_ID,
    IFNULL(B.Cobl_Transaction,0) Cobl_Transaction,
	IFNULL(B.Cobl_MerchantServerLocation,0) Cobl_MerchantServerLocation,
	IFNULL(B.Cobl_MerchantRegistrationLocation,0) Cobl_MerchantRegistrationLocation,
	IFNULL(B.Cobl_CreditCardIssueLocation,0) Cobl_CreditCardIssueLocation,
	IFNULL(B.Cobl_CreditCardHolderLocation,0) Cobl_CreditCardHolderLocation
	FROM IPG.Country A
	LEFT OUTER JOIN IPG.CountryBlockList B
	ON A.Coun_Numeric = B.Coun_Numeric;
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
	WHERE A.Coun_Numeric = B.Coun_Numeric;
    -- AND Core_Status <> '1'
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CREDITCARD_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CREDITCARD_RESTRICTION`()
BEGIN
	SELECT *
	FROM `IPG`.`CreditCardRestriction`
	WHERE Ccre_Status <> '1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CURRENCY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CURRENCY`()
BEGIN
	SELECT * FROM IPG.Currency;
--    WHERE Indu_Status = '0'; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CURRENCY_DETAIL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CURRENCY_DETAIL`(
INOUT P_Coun_Numeric int(5))
BEGIN
	SELECT * FROM IPG.Currency
    WHERE P_Coun_Numeric = Coun_Numeric; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CUSTOMERS_MERCHANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CUSTOMERS_MERCHANT`(
P_Merc_ID bigint(20),
IN P_USER_ID bigint(20))
BEGIN    
    SELECT * FROM IPG.View_MerchantCustomer A
    WHERE A.Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId = P_USER_ID)
    AND P_Merc_ID = A.Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_INDUSTRY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_INDUSTRY`()
BEGIN
	SELECT * FROM IPG.Industry;
--    WHERE Indu_Status = '0'; 
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT`(
`P_USER_ID` bigint(20))
BEGIN
SELECT A.*, B.Coun_Name CountryBusiness, C.Coun_Name CountryPersonalInformation, D.Indu_Description, E.Buty_Description 
FROM (SELECT A.*
FROM IPG.Merchant A
WHERE Merc_ID IN (SELECT Merc_ID FROM UserMerchant where userId =  P_USER_ID)
AND `Merc_Status` = '0') A
LEFT OUTER JOIN IPG.Country B ON (A.Coun_NumericMerchant = B.Coun_Numeric)
LEFT OUTER JOIN IPG.Country C ON (A.Coun_NumericPersonalInformation = C.Coun_Numeric)
LEFT OUTER JOIN IPG.Industry D ON (A.Indu_ID = D.Indu_ID)
LEFT OUTER JOIN IPG.BusinessType E ON (A.Buty_ID = E.Buty_ID)
ORDER BY Merc_NAME;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANTS_CUSTOMER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANTS_CUSTOMER`(
P_Cust_ID bigint(20),
IN P_USER_ID bigint(20))
BEGIN    
    SELECT * FROM IPG.View_MerchantCustomer A
    WHERE A.Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId = P_USER_ID)
    AND P_Cust_ID = A.Cust_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANTS_USER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANTS_USER`(
`P_userId`	bigint(20))
BEGIN
	SELECT A.Merc_ID, B.Merc_Name 
	FROM IPG.UserMerchant A, IPG.Merchant B
    WHERE A.userId = P_userId 
    AND A.Merc_ID = B.Merc_ID;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_CONFIGURATION`(
`P_USER_ID` bigint(20))
BEGIN
	SELECT A.Merc_Name, B.* FROM IPG.Merchant A, IPG.MerchantConfiguration B
    WHERE A.Merc_ID IN (SELECT Merc_ID FROM UserMerchant where userId =  P_USER_ID)
    AND A.Merc_ID = B.Merc_ID;
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
	SELECT A.*, B.Coun_Name, C.Cert_ID, C.Cert_PasswordBBKeyStore, C.Cert_PasswordBBKey, C.Cert_AliasBB, C.Cert_AliasMerchant
	FROM 
	(SELECT A.Merc_ID, A.Merc_Name, A.Coun_NumericMerchant, A.Merc_FirstName, A.Merc_LastName, A.Merc_EmailAddress
	FROM IPG.Merchant A
	WHERE A.Merc_Status = '0'
	AND A.Merc_ID = P_Merc_ID) A
	LEFT OUTER JOIN Country B ON A.Coun_NumericMerchant = B.Coun_Numeric
	LEFT OUTER JOIN Certificate C ON A.Merc_ID = C.Merc_ID;    
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
	WHERE A.Merc_ID = B.Merc_ID;
	-- AND Mere_Status <> '1';
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_TO_CONFIGURE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_TO_CONFIGURE`(
`P_USER_ID` bigint(20))
BEGIN
SELECT A.*, B.Coun_Name CountryBusiness, C.Coun_Name CountryPersonalInformation, D.Indu_Description, E.Buty_Description 
FROM (SELECT A.*
FROM IPG.Merchant A
WHERE Merc_ID IN (SELECT A.Merc_ID FROM UserMerchant A WHERE A.userId =  P_USER_ID AND A.Merc_ID NOT IN (SELECT Merc_ID FROM MerchantConfiguration))
AND `Merc_Status` = '0') A
LEFT OUTER JOIN IPG.Country B ON (A.Coun_NumericMerchant = B.Coun_Numeric)
LEFT OUTER JOIN IPG.Country C ON (A.Coun_NumericPersonalInformation = C.Coun_Numeric)
LEFT OUTER JOIN IPG.Industry D ON (A.Indu_ID = D.Indu_ID)
LEFT OUTER JOIN IPG.BusinessType E ON (A.Buty_ID = E.Buty_ID)
ORDER BY Merc_NAME;
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_REJECTEDS_BY_DAY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_REJECTEDS_BY_DAY`(
`P_Initial_Day`	varchar(10),
`P_Final_Day`	varchar(10),
`P_Merc_ID`	bigint(20),
`P_USER_ID` bigint(20))
BEGIN
	IF (P_Merc_ID IS NULL) THEN		
		SELECT DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d') DAY, COUNT(*) TOTAL 
		FROM IPG.RejectedCharges A, IPG.Transaction B, IPG.Merchant C
		WHERE A.Tran_ID = B.Tran_ID
		AND B.Merc_ID = C.Merc_ID
		AND C.Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId =  P_USER_ID)	
		AND DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d') BETWEEN P_Initial_Day AND P_Final_Day
		GROUP BY DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d')
		ORDER BY DATE(DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d')) DESC;
	ELSE		
		SELECT DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d') DAY, COUNT(*) TOTAL 
		FROM IPG.RejectedCharges A, IPG.Transaction B, IPG.Merchant C
		WHERE A.Tran_ID = B.Tran_ID
		AND B.Merc_ID = C.Merc_ID
		AND C.Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId =  P_USER_ID AND Merc_ID = P_Merc_ID)
		AND DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d') BETWEEN P_Initial_Day AND P_Final_Day
		GROUP BY DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d')
		ORDER BY DATE(DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d')) DESC;
	END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_REJECTED_BY_DAY_XXXXXXX` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_REJECTED_BY_DAY_XXXXXXX`(
`P_Initial_Day`	varchar(10),
`P_Final_Day`	varchar(10))
BEGIN
	
    SELECT A.Tran_CreateTime, A.Tran_ID, C.Rech_ID, C.Rech_Currency, C.Rech_Amount, C.Rech_CardHolderName
	FROM IPG.Transaction A, IPG.RejectedCharges C 
	WHERE DATE_FORMAT(A.Tran_CreateTime,'%Y-%m-%d') BETWEEN @P_Initial_Day AND @P_Final_Day 
	AND  A.Tran_ID = C.Tran_ID
	ORDER BY A.Tran_CreateTime DESC;
    
    /*SELECT A.Tran_CreateTime, A.Tran_ID, C.Rech_ID, C.Rech_Currency, C.Rech_Amount, C.Rech_CardHolderName, B.Char_ID, B.Char_Currency, B.Card_ID, B.Card_Last4, B.Cust_ID, B.Card_Name, B.Char_Amount
	FROM (SELECT A2.Tran_CreateTime, A2.Tran_ID FROM IPG.Transaction A2 
	WHERE DATE_FORMAT(A2.Tran_CreateTime,'%Y-%m-%d') BETWEEN P_Initial_Day AND P_Final_Day) A
	LEFT JOIN (SELECT A1.Tran_ID ,A1.Char_ID, A1.Card_ID, B1.Card_Last4, B1.Cust_ID, B1.Card_Name, A1.Char_Amount, A1.Char_Currency
	FROM IPG.Charge A1, IPG.Card B1, IPG.Customer C1
	WHERE A1.Card_ID = B1.Card_ID
	AND B1.Cust_ID = C1.Cust_ID) B ON A.Tran_ID = B.Tran_ID
	LEFT JOIN IPG.RejectedCharges C ON A.Tran_ID = C.Tran_ID
	ORDER BY A.Tran_CreateTime DESC;*/
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_TRANSACTIONS_BY_DAY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_TRANSACTIONS_BY_DAY`(
`P_Initial_Day`	varchar(10),
`P_Final_Day`	varchar(10),
`P_USER_ID` bigint(20))
BEGIN	
	SELECT  
	   A.Tran_CreateTime, A.Tran_ID, A.Tran_IPCity, A.Tran_IPRegionName, A.Tran_CountryCode, A.Tran_IPCountryName,
	   B.Char_ID, B.Card_ID, B.Char_Amount, B.Char_Currency , B.Char_CreateTime, 
	   C.Card_Number ,C.Card_Last4, C.Cust_ID, C.Card_Name, C.Card_Brand, C.Card_Funding, C.Card_ExpMonth, C.Card_ExpYear, C.Card_Country,
       E.Merc_ID, E.Merc_Name
	FROM 
	IPG.Transaction A,
	IPG.Charge B, 
	IPG.Card C, 
	IPG.Customer D,
    IPG.Merchant E
	WHERE A.Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId =  P_USER_ID)
    AND DATE_FORMAT(A.Tran_CreateTime,'%Y-%m-%d') BETWEEN P_Initial_Day AND P_Final_Day
	AND A.Tran_ID = B.Tran_ID
	AND B.Card_ID = C.Card_ID
	AND C.Cust_ID = D.Cust_ID
    AND A.Merc_ID = E.Merc_ID
	ORDER BY A.Tran_CreateTime DESC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_TRANSACTIONS_BY_DAY_FILTER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_TRANSACTIONS_BY_DAY_FILTER`(
`P_Card_Number` varchar(50),
`P_Merc_ID` bigint(20),
`P_Brand` varchar(50),
`P_Card_Country` varchar(2),
`P_Char_Currency` varchar(3),
`P_Match` enum('0','1'),
`P_Initial_Day`	varchar(10),
`P_Final_Day`	varchar(10),
`P_USER_ID` bigint(20))
BEGIN
	DECLARE FIRST_PART INT DEFAULT 0;
    SET @sql_query=CONCAT("SELECT * FROM (SELECT * FROM IPG.`View_Transactions` WHERE Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = ", P_USER_ID," AND DATE_FORMAT(Tran_CreateTime,'%Y-%m-%d') BETWEEN '",P_Initial_Day,"' AND '",P_Final_Day,"') ) A"); 
	
    IF(P_Match IS NOT NULL && P_Match = '0') THEN 
    /* Si el usuario selecciono el filtro avanzado y puso como match *all todos */
    /* los campos que LLENO deben coincidir */
		IF(P_Card_Number IS NOT NULL) THEN
			SET FIRST_PART = FIRST_PART + 1;
			SET @sql_query = CONCAT(@sql_query, " WHERE Card_Number LIKE '%", P_Card_Number,"%'");
		END IF;
        
		IF(P_Merc_ID IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Merc_ID = ", P_Merc_ID);
            ELSE 
				SET @sql_query = CONCAT(@sql_query, " AND Merc_ID = ", P_Merc_ID);
            END IF;			
		END IF;
	
		IF(P_Brand IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Card_Brand LIKE '%", P_Brand,"%'");
            ELSE
				SET @sql_query = CONCAT(@sql_query, " AND Card_Brand LIKE '%", P_Brand,"%'");
            END IF;			
		END IF;
		
        IF(P_Card_Country IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Card_Country = '", P_Card_Country,"'");
            ELSE
				SET @sql_query = CONCAT(@sql_query, " AND Card_Country = '", P_Card_Country,"'");
            END IF;			
		END IF;
        
        IF(P_Char_Currency IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Char_Currency = '", P_Char_Currency ,"'");
            ELSE
				SET @sql_query = CONCAT(@sql_query, " AND Char_Currency = '", P_Char_Currency ,"'");
            END IF;			
		END IF;
        
    ELSEIF(P_Match IS NOT NULL && P_Match = '1') THEN /* Si el usuario selecciono el filtro avanzado y puso como match any*/
		/* Si el usuario selecciono el filtro avanzado y puso como match *any algunos */
		/* los campos que LLENO deben coincidir */
		IF(P_Card_Number IS NOT NULL) THEN
			SET FIRST_PART = FIRST_PART + 1;
			SET @sql_query = CONCAT(@sql_query, " WHERE Card_Number LIKE '%", P_Card_Number,"%'");            
		END IF;
        
        IF(P_Merc_ID IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Merc_ID = ", P_Merc_ID);
            ELSE
				SET @sql_query = CONCAT(@sql_query, " OR Merc_ID = ", P_Merc_ID);
            END IF;			
		END IF;
        
        IF(P_Brand IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Card_Brand LIKE '%", P_Brand,"%'");
            ELSE
				SET @sql_query = CONCAT(@sql_query, " OR Card_Brand LIKE '%", P_Brand,"%'");
            END IF;			
		END IF;
        
        IF(P_Card_Country IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Card_Country = '", P_Card_Country,"'");
            ELSE
				SET @sql_query = CONCAT(@sql_query, " OR Card_Country = '", P_Card_Country,"'");
            END IF;			
		END IF;
        
        IF(P_Char_Currency IS NOT NULL) THEN
			IF FIRST_PART = 0 THEN
				SET FIRST_PART = FIRST_PART + 1;
				SET @sql_query = CONCAT(@sql_query, " WHERE Char_Currency = '", P_Char_Currency,"'");
            ELSE
				SET @sql_query = CONCAT(@sql_query, " OR Char_Currency = '", P_Char_Currency,"'");
            END IF;			
		END IF;
        
    END IF;
    INSERT INTO `IPG`.`consultas`
	(`consulta`)
	VALUES
	(@sql_query);

    -- SELECT @sql_query FROM DUAL;
	PREPARE stmt FROM @sql_query;
   	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_BUSINESSTYPE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_BUSINESSTYPE`(
`P_Buty_Description` varchar(50),
`P_Buty_Status`	enum('0','1'),
INOUT `P_Buty_ID`	bigint(20))
BEGIN
	UPDATE `IPG`.`BusinessType`
	SET `Buty_Description` = P_Buty_Description,
	`Buty_Status` = P_Buty_Status,
    `Buty_CreateTime` = NOW()
	WHERE `Buty_ID` = P_Buty_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_COUNTRYBLOCKLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_COUNTRYBLOCKLIST`(
`P_Coun_Numeric`	int(5),
`P_Cobl_Transaction`	tinyint(1),
`P_Cobl_MerchantServerLocation`	tinyint(1),
`P_Cobl_MerchantRegistrationLocation`	tinyint(1),
`P_Cobl_CreditCardIssueLocation`	tinyint(1),
`P_Cobl_CreditCardHolderLocation`	tinyint(1),
INOUT `P_Cobl_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`CountryBlockList`
	SET
	`Cobl_ID` = P_Cobl_ID,
	`Coun_Numeric` = P_Coun_Numeric,
	`Cobl_Transaction` = P_Cobl_Transaction,
	`Cobl_MerchantServerLocation` = P_Cobl_MerchantServerLocation,
	`Cobl_MerchantRegistrationLocation` = P_Cobl_MerchantRegistrationLocation,
	`Cobl_CreditCardIssueLocation` = P_Cobl_CreditCardIssueLocation,
	`Cobl_CreditCardHolderLocation` = P_Cobl_CreditCardHolderLocation
	WHERE `Cobl_ID` = P_Cobl_ID;
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_CREDITCARD_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_CREDITCARD_RESTRICTION`(
`P_Ccre_Value` int(5),
`P_Ccre_Concept` varchar(50),
`P_Ccre_TimeUnit` varchar(50),
INOUT `P_Ccre_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`CreditCardRestriction`
    SET
		`Ccre_Value` = P_Ccre_Value,
		`Ccre_Concept` = P_Ccre_Concept,
		`Ccre_TimeUnit` = P_Ccre_TimeUnit,
        `Ccre_CreateTime` = now()
		WHERE `Ccre_ID` = P_Ccre_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_INDUSTRY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_INDUSTRY`(
`P_Indu_Description` varchar(50),
`P_Indu_Status`	enum('0','1'),
INOUT `P_Indu_ID` bigint(20))
BEGIN	
	UPDATE `IPG`.`Industry`
	SET  `Indu_Description` = P_Indu_Description,
		  `Indu_Status` = P_Indu_Status,
          `Indu_CreateTime` = NOW()
	WHERE `Indu_ID` = P_Indu_ID;
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
`P_Buty_ID` bigint(20),
`P_Indu_ID` bigint(20),
`P_Coun_NumericMerchant` int(5),
`P_Coun_NumericPersonalInformation` int(5),
`P_Merc_Name` varchar(100),
`P_Merc_TradingName` varchar(50),
`P_Merc_LegalPhysicalAddress` varchar(50),
`P_Merc_StatementAddress` varchar(50),
`P_Merc_TaxFileNumber` varchar(50),
`P_Merc_CityBusinessInformation` varchar(50),
`P_Merc_PostCodeBusinessInformation` varchar(50),
`P_Merc_IssuedBusinessID` varchar(50),
`P_Merc_IssuedPersonalID` varchar(50),
`P_Merc_TypeAccountApplication` varchar(50),
`P_Merc_EstimatedAnnualSales` varchar(50),
`P_Merc_FirstName` varchar(50),
`P_Merc_LastName` varchar(50),
`P_Merc_PhoneNumber` varchar(50),
`P_Merc_FaxNumber` varchar(50),
`P_Merc_EmailAddress` varchar(50),
`P_Merc_AlternateEmailAddress` varchar(50),
`P_Merc_CityPersonalInformation` varchar(50),
`P_Merc_PostCodePersonalInformation` varchar(50),
INOUT `P_Merc_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`Merchant`
	SET
	`Merc_ID` = P_Merc_ID,
	`Buty_ID` = P_Buty_ID,
	`Indu_ID` = P_Indu_ID,
	`Coun_NumericMerchant` = P_Coun_NumericMerchant,
	`Coun_NumericPersonalInformation` = P_Coun_NumericPersonalInformation,
	`Merc_Name` = P_Merc_Name,
	`Merc_CreateTime` = NOW(),
	`Merc_TradingName` = P_Merc_TradingName,
	`Merc_LegalPhysicalAddress` = P_Merc_LegalPhysicalAddress,
	`Merc_StatementAddress` = P_Merc_StatementAddress,
	`Merc_TaxFileNumber` = P_Merc_TaxFileNumber,
	`Merc_CityBusinessInformation` = P_Merc_CityBusinessInformation,
	`Merc_PostCodeBusinessInformation` = P_Merc_PostCodeBusinessInformation,
	`Merc_IssuedBusinessID` = P_Merc_IssuedBusinessID,
	`Merc_IssuedPersonalID` = P_Merc_IssuedPersonalID,
	`Merc_TypeAccountApplication` = P_Merc_TypeAccountApplication,
	`Merc_EstimatedAnnualSales` = P_Merc_EstimatedAnnualSales,
	`Merc_FirstName` = P_Merc_FirstName,
	`Merc_LastName` = P_Merc_LastName,
	`Merc_PhoneNumber` = P_Merc_PhoneNumber,
	`Merc_FaxNumber` = P_Merc_FaxNumber,
	`Merc_EmailAddress` = P_Merc_EmailAddress,
	`Merc_AlternateEmailAddress` = P_Merc_AlternateEmailAddress,
	`Merc_CityPersonalInformation` = P_Merc_CityPersonalInformation,
	`Merc_PostCodePersonalInformation` = P_Merc_PostCodePersonalInformation
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
`P_Meco_UrlDeny`	varchar(100),
`P_Meco_UrlApproved`	varchar(100),
INOUT `P_Meco_ID`	bigint(20))
BEGIN
	UPDATE `IPG`.`MerchantConfiguration`
	SET `Meco_UrlDeny` = P_Meco_UrlDeny,
	`Meco_UrlApproved` = P_Meco_UrlApproved,
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_STATUS_REFUND` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_STATUS_REFUND`(
`P_Char_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`Charge`
	SET Char_Refunded = 0
	WHERE `Char_ID` = P_Char_ID;
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_USER_MERCHANT_ADMINISTRATOR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_USER_MERCHANT_ADMINISTRATOR`(
IN P_USER_ID bigint(20))
BEGIN

INSERT INTO UserMerchant(Merc_ID, userId) (SELECT A.Merc_ID, P_USER_ID FROM Merchant A WHERE A.Merc_ID NOT IN (SELECT Merc_ID FROM UserMerchant WHERE userId = P_USER_ID));

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
/*!50003 DROP PROCEDURE IF EXISTS `prueba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prueba`(
`P_Initial_Day`	varchar(10),
`P_Final_Day`	varchar(10))
BEGIN
	   
	INSERT INTO `IPG`.`fechas`
	(`inicial`,
	`final`)
	VALUES
	(P_Initial_Day,
	P_Final_Day);
    
    
    SELECT DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d') DAY, COUNT(*) TOTAL FROM IPG.RejectedCharges
	WHERE DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d') BETWEEN @P_Initial_Day AND @P_Final_Day
	GROUP BY DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d')
	ORDER BY DATE(DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d')) DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `View_ Merchant`
--

/*!50001 DROP VIEW IF EXISTS `View_ Merchant`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `View_ Merchant` AS (select `A`.`Merc_ID` AS `Merc_ID`,`A`.`Buty_ID` AS `Buty_ID`,`A`.`Indu_ID` AS `Indu_ID`,`A`.`Coun_NumericMerchant` AS `Coun_NumericMerchant`,`A`.`Coun_NumericPersonalInformation` AS `Coun_NumericPersonalInformation`,`A`.`Merc_Name` AS `Merc_Name`,`A`.`Merc_Status` AS `Merc_Status`,`A`.`Merc_CreateTime` AS `Merc_CreateTime`,`A`.`Merc_TradingName` AS `Merc_TradingName`,`A`.`Merc_LegalPhysicalAddress` AS `Merc_LegalPhysicalAddress`,`A`.`Merc_StatementAddress` AS `Merc_StatementAddress`,`A`.`Merc_TaxFileNumber` AS `Merc_TaxFileNumber`,`A`.`Merc_CityBusinessInformation` AS `Merc_CityBusinessInformation`,`A`.`Merc_PostCodeBusinessInformation` AS `Merc_PostCodeBusinessInformation`,`A`.`Merc_IssuedBusinessID` AS `Merc_IssuedBusinessID`,`A`.`Merc_IssuedPersonalID` AS `Merc_IssuedPersonalID`,`A`.`Merc_TypeAccountApplication` AS `Merc_TypeAccountApplication`,`A`.`Merc_EstimatedAnnualSales` AS `Merc_EstimatedAnnualSales`,`A`.`Merc_FirstName` AS `Merc_FirstName`,`A`.`Merc_LastName` AS `Merc_LastName`,`A`.`Merc_PhoneNumber` AS `Merc_PhoneNumber`,`A`.`Merc_FaxNumber` AS `Merc_FaxNumber`,`A`.`Merc_EmailAddress` AS `Merc_EmailAddress`,`A`.`Merc_AlternateEmailAddress` AS `Merc_AlternateEmailAddress`,`A`.`Merc_CityPersonalInformation` AS `Merc_CityPersonalInformation`,`A`.`Merc_PostCodePersonalInformation` AS `Merc_PostCodePersonalInformation`,`B`.`Coun_Name` AS `CountryBusiness`,`C`.`Coun_Name` AS `CountryPersonalInformation`,`D`.`Indu_Description` AS `Indu_Description`,`E`.`Buty_Description` AS `Buty_Description` from ((((`Merchant` `A` left join `Country` `B` on((`A`.`Coun_NumericMerchant` = `B`.`Coun_Numeric`))) left join `Country` `C` on((`A`.`Coun_NumericPersonalInformation` = `C`.`Coun_Numeric`))) left join `Industry` `D` on((`A`.`Indu_ID` = `D`.`Indu_ID`))) left join `BusinessType` `E` on((`A`.`Buty_ID` = `E`.`Buty_ID`))) order by `A`.`Merc_Name`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `View_Charges`
--

/*!50001 DROP VIEW IF EXISTS `View_Charges`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `View_Charges` AS (select `A`.`Char_ID` AS `Char_ID`,`A`.`Card_ID` AS `Card_ID`,`C`.`Merc_ID` AS `Merc_ID`,`D`.`Merc_Name` AS `Merc_Name`,`A`.`Char_IDStripe` AS `Char_IDStripe`,`B`.`Card_Brand` AS `Card_Brand`,`B`.`Card_Funding` AS `Card_Funding`,`B`.`Card_Number` AS `Card_Number`,`B`.`Card_Last4` AS `Card_Last4`,`B`.`Card_Country` AS `Card_Country`,`A`.`Tran_ID` AS `Tran_ID`,`A`.`Invo_ID` AS `Invo_ID`,`A`.`Addr_ID` AS `Addr_ID`,`A`.`Char_Amount` AS `Char_Amount`,`A`.`Char_Captured` AS `Char_Captured`,`A`.`Char_CreateTime` AS `Char_CreateTime`,`A`.`Char_Currency` AS `Char_Currency`,`A`.`Char_Paid` AS `Char_Paid`,`A`.`Char_Refunded` AS `Char_Refunded`,`A`.`Char_FailureCode` AS `Char_FailureCode`,`A`.`Char_FailureMessage` AS `Char_FailureMessage`,`A`.`Char_ReceiptEmail` AS `Char_ReceiptEmail`,`A`.`Char_ReceiptNumber` AS `Char_ReceiptNumber`,`A`.`Char_ProcessTime` AS `Char_ProcessTime` from (((`Charge` `A` join `Card` `B`) join `Transaction` `C`) join `Merchant` `D`) where ((`A`.`Card_ID` = `B`.`Card_ID`) and (`A`.`Tran_ID` = `C`.`Tran_ID`) and (`C`.`Merc_ID` = `D`.`Merc_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `View_MerchantCustomer`
--

/*!50001 DROP VIEW IF EXISTS `View_MerchantCustomer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `View_MerchantCustomer` AS (select `B`.`Mecu_ID` AS `Mecu_ID`,`A`.`Merc_ID` AS `Merc_ID`,`C`.`Cust_ID` AS `Cust_ID`,`A`.`Merc_Name` AS `Merc_Name`,`C`.`Cust_Email` AS `Cust_Email` from ((`Merchant` `A` join `MerchantCustomer` `B`) join `Customer` `C`) where ((`A`.`Merc_ID` = `B`.`Merc_ID`) and (`B`.`Cust_ID` = `C`.`Cust_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `View_Refunded`
--

/*!50001 DROP VIEW IF EXISTS `View_Refunded`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `View_Refunded` AS (select `Refund`.`Char_ID` AS `Char_ID`,sum(`Refund`.`Refu_Amount`) AS `REFUND` from `Refund` group by `Refund`.`Char_ID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `View_Refunds`
--

/*!50001 DROP VIEW IF EXISTS `View_Refunds`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `View_Refunds` AS (select `A`.`Char_ID` AS `Char_ID`,`A`.`Card_ID` AS `Card_ID`,`A`.`Merc_ID` AS `Merc_ID`,`A`.`Merc_Name` AS `Merc_Name`,`A`.`Char_IDStripe` AS `Char_IDStripe`,`A`.`Card_Brand` AS `Card_Brand`,`A`.`Card_Funding` AS `Card_Funding`,`A`.`Card_Number` AS `Card_Number`,`A`.`Card_Last4` AS `Card_Last4`,`A`.`Card_Country` AS `Card_Country`,`A`.`Tran_ID` AS `Tran_ID`,`A`.`Invo_ID` AS `Invo_ID`,`A`.`Addr_ID` AS `Addr_ID`,`A`.`Char_Amount` AS `Char_Amount`,`A`.`Char_Captured` AS `Char_Captured`,`A`.`Char_CreateTime` AS `Char_CreateTime`,`A`.`Char_Currency` AS `Char_Currency`,`A`.`Char_Paid` AS `Char_Paid`,`A`.`Char_Refunded` AS `Char_Refunded`,`A`.`Char_FailureCode` AS `Char_FailureCode`,`A`.`Char_FailureMessage` AS `Char_FailureMessage`,`A`.`Char_ReceiptEmail` AS `Char_ReceiptEmail`,`A`.`Char_ReceiptNumber` AS `Char_ReceiptNumber`,`A`.`Char_ProcessTime` AS `Char_ProcessTime`,ifnull(`B`.`REFUND`,0) AS `REFUND` from (`View_Charges` `A` left join `View_Refunded` `B` on((`A`.`Char_ID` = `B`.`Char_ID`))) order by `A`.`Char_CreateTime` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `View_Transactions`
--

/*!50001 DROP VIEW IF EXISTS `View_Transactions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `View_Transactions` AS (select `A`.`Tran_CreateTime` AS `Tran_CreateTime`,`A`.`Tran_ID` AS `Tran_ID`,`A`.`Tran_IPCity` AS `Tran_IPCity`,`A`.`Tran_IPRegionName` AS `Tran_IPRegionName`,`A`.`Tran_CountryCode` AS `Tran_CountryCode`,`A`.`Tran_IPCountryName` AS `Tran_IPCountryName`,`B`.`Char_ID` AS `Char_ID`,`B`.`Card_ID` AS `Card_ID`,`B`.`Char_Amount` AS `Char_Amount`,`B`.`Char_Currency` AS `Char_Currency`,`B`.`Char_CreateTime` AS `Char_CreateTime`,`C`.`Card_Number` AS `Card_Number`,`C`.`Card_Last4` AS `Card_Last4`,`C`.`Cust_ID` AS `Cust_ID`,`C`.`Card_Name` AS `Card_Name`,`C`.`Card_Brand` AS `Card_Brand`,`C`.`Card_Funding` AS `Card_Funding`,`C`.`Card_ExpMonth` AS `Card_ExpMonth`,`C`.`Card_ExpYear` AS `Card_ExpYear`,`C`.`Card_Country` AS `Card_Country`,`E`.`Merc_ID` AS `Merc_ID`,`E`.`Merc_Name` AS `Merc_Name` from ((((`Transaction` `A` join `Charge` `B`) join `Card` `C`) join `Customer` `D`) join `Merchant` `E`) where ((`A`.`Tran_ID` = `B`.`Tran_ID`) and (`B`.`Card_ID` = `C`.`Card_ID`) and (`C`.`Cust_ID` = `D`.`Cust_ID`) and (`A`.`Merc_ID` = `E`.`Merc_ID`)) order by `A`.`Tran_CreateTime` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-13 20:19:08
