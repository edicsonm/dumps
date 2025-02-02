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
INSERT INTO `Certificates` VALUES (2,'Tucarro.com.ve','Tucarro.com.ve','Tucarro.com.ve'),(9,'Company15','Company15','Company15');
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
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
INSERT INTO `Order` VALUES (1,1202182387,550.760),(2,NULL,550.760),(3,NULL,550.760),(4,NULL,550.760),(5,NULL,550.760),(6,NULL,550.760),(7,NULL,550.760),(8,NULL,550.760),(9,NULL,550.760),(10,NULL,550.760),(11,1202182387,550.760),(12,NULL,550.760),(13,NULL,550.760),(14,NULL,550.760),(15,NULL,550.760),(16,NULL,550.760),(17,1202182387,550.760),(18,1202182387,550.760),(19,1202182387,550.760),(20,1202182387,550.760),(21,NULL,550.760),(22,NULL,550.760),(23,NULL,550.760),(24,NULL,550.760),(25,NULL,550.760),(26,NULL,550.760),(27,NULL,550.760),(28,NULL,550.760),(29,NULL,550.760),(30,NULL,550.760),(31,NULL,550.760),(32,NULL,550.760),(33,NULL,550.760),(34,NULL,550.760),(35,NULL,550.760),(36,NULL,550.760),(37,NULL,550.760),(38,NULL,550.760),(39,NULL,550.760),(40,NULL,550.760),(41,NULL,550.760),(42,NULL,550.760),(43,NULL,550.760),(44,NULL,550.760),(45,NULL,550.760),(46,NULL,550.760),(47,NULL,550.760),(48,NULL,550.760),(49,NULL,550.760),(50,NULL,550.760),(51,NULL,550.760),(52,NULL,550.760),(53,NULL,550.760),(54,NULL,550.760),(55,NULL,550.760),(56,NULL,550.760),(57,NULL,550.760),(58,NULL,550.760),(59,NULL,550.760),(60,NULL,550.760),(61,NULL,550.760),(62,NULL,550.760),(63,NULL,550.760),(64,NULL,550.760),(65,NULL,550.760),(66,NULL,550.760),(67,1202182387,550.760),(68,1202182387,550.760),(69,NULL,550.760),(70,1202182387,550.760),(71,NULL,550.760),(72,1202182387,550.760),(73,1202182387,550.760),(74,1202182387,550.760),(75,1202182387,550.760),(76,1202182387,550.760),(77,1202182387,550.760),(78,1202182387,550.760),(79,NULL,550.760),(80,1202182387,550.760),(81,NULL,550.760),(82,NULL,550.760),(83,NULL,550.760),(84,NULL,550.760),(85,NULL,550.760),(86,NULL,550.760),(87,NULL,550.760),(88,1202182387,550.760),(89,NULL,550.760),(90,1202182387,550.760),(91,NULL,550.760),(92,NULL,550.760),(93,NULL,550.760),(94,NULL,550.760),(95,NULL,550.760),(96,NULL,550.760),(97,NULL,550.760),(98,NULL,550.760),(99,NULL,550.760),(100,NULL,550.760),(101,NULL,550.760),(102,NULL,550.760),(103,NULL,550.760),(104,NULL,550.760),(105,NULL,550.760),(106,NULL,550.760),(107,NULL,550.760),(108,1202182387,550.760),(109,1202182387,550.760),(110,1202182387,550.760),(111,NULL,550.760),(112,NULL,550.760),(113,NULL,550.760),(114,NULL,550.760),(115,NULL,550.760),(116,NULL,550.760),(117,NULL,550.760),(118,NULL,550.760),(119,NULL,550.760),(120,1202182387,550.760),(121,1202182387,550.760),(122,NULL,550.760),(123,NULL,550.760),(124,1202182387,550.760),(125,NULL,550.760),(126,NULL,550.760),(127,NULL,550.760),(128,NULL,550.760),(129,1202182387,550.760),(130,1202182387,550.760),(131,1202182387,550.760),(132,1202182387,550.760),(133,1202182387,550.760),(134,1202182387,550.760),(135,NULL,550.760),(136,1202182387,550.760),(137,1202182387,550.760),(138,1202182387,550.760),(139,1202182387,550.760),(140,NULL,550.760),(141,NULL,550.760),(142,NULL,550.760),(143,NULL,550.760),(144,NULL,550.760),(145,1202182387,550.760),(146,1202182387,550.760),(147,1202182387,550.760),(148,1202182387,550.760),(149,NULL,550.760),(150,NULL,550.760),(151,NULL,550.760),(152,NULL,550.760),(153,NULL,550.760),(154,NULL,550.760),(155,NULL,550.760),(156,NULL,550.760),(157,NULL,550.760),(158,17,550.760),(159,17,550.760),(160,17,550.760),(161,17,550.760),(162,NULL,550.760),(163,17,550.760),(164,17,550.760),(165,NULL,550.760),(166,NULL,550.760),(167,NULL,550.760),(168,18,550.760),(169,19,550.760),(170,20,550.760),(171,21,550.760),(172,22,550.760),(173,23,550.760),(174,NULL,550.760),(175,24,550.760),(176,NULL,550.760),(177,25,550.760),(178,35,550.760),(179,27,150.000),(180,NULL,550.760),(181,37,550.760),(182,33,550.760),(183,36,23.200),(184,NULL,550.760),(185,38,550.760),(186,NULL,530.960),(187,NULL,530.960),(188,41,530.960),(189,43,532.960),(190,44,550.760),(191,17,554.760),(192,17,550.760),(193,17,12.760),(194,17,1312.600),(195,17,432.660),(196,NULL,550.760),(197,NULL,550.760),(198,NULL,550.760),(199,NULL,550.760),(200,NULL,550.760),(201,NULL,550.760),(202,NULL,550.760),(203,NULL,550.760),(204,NULL,550.760),(205,NULL,550.760),(206,NULL,550.760),(207,NULL,550.760),(208,NULL,550.760),(209,NULL,550.760),(210,NULL,550.760),(211,NULL,550.760),(212,NULL,550.760),(213,NULL,550.760),(214,NULL,550.760),(215,NULL,550.760),(216,NULL,550.760),(217,NULL,550.760),(218,NULL,550.760),(219,NULL,550.760),(220,NULL,550.760),(221,NULL,550.760),(222,NULL,550.760),(223,NULL,550.760),(224,NULL,550.760),(225,NULL,550.760),(226,NULL,550.760),(227,NULL,550.760),(228,NULL,550.760),(229,NULL,550.760),(230,NULL,550.760),(231,NULL,550.760),(232,NULL,550.760),(233,NULL,550.760),(234,NULL,550.760),(235,NULL,550.760),(236,NULL,550.760),(237,0,550.760),(238,0,550.760),(239,NULL,550.760),(240,NULL,550.760),(241,NULL,550.760),(242,0,550.760),(243,NULL,550.760),(244,0,550.760),(245,NULL,550.760),(246,NULL,550.760),(247,NULL,550.760),(248,NULL,550.760),(249,NULL,550.760),(250,NULL,550.760),(251,NULL,550.760),(252,NULL,550.760),(253,NULL,550.760),(254,NULL,550.760),(255,NULL,550.760),(256,NULL,550.760),(257,NULL,550.760),(258,NULL,550.760),(259,NULL,550.760),(260,NULL,550.760),(261,NULL,550.760),(262,NULL,550.760),(263,NULL,550.760),(264,0,550.760),(265,0,550.760),(266,0,550.760),(267,0,550.760),(268,0,550.760),(269,0,550.760),(270,0,550.760),(271,0,550.760),(272,NULL,550.760),(273,NULL,550.760),(274,0,550.760),(275,0,550.760),(276,0,550.760),(277,0,550.760),(278,0,550.760),(279,0,550.760),(280,0,550.760),(281,124,550.760),(282,125,550.760),(283,126,550.760),(284,127,550.760),(285,128,550.760),(286,129,27.000),(287,130,550.760),(288,NULL,550.760),(289,NULL,550.760),(290,NULL,550.760),(291,134,234.250),(292,135,234.250),(293,136,550.760),(294,NULL,550.760),(295,NULL,550.760),(296,NULL,550.760),(297,137,550.760),(298,138,550.760),(299,139,550.760),(300,140,550.760),(301,141,550.760),(302,142,550.760),(303,NULL,550.760),(304,NULL,550.760),(305,NULL,550.760),(306,NULL,550.760),(307,NULL,550.760),(308,NULL,550.760),(309,NULL,550.760),(310,NULL,550.760),(311,NULL,550.760),(312,NULL,550.760),(313,NULL,550.760),(314,NULL,550.760),(315,NULL,550.760),(316,NULL,550.760),(317,NULL,550.760),(318,NULL,550.760),(319,NULL,550.760),(320,NULL,550.760),(321,NULL,550.760),(322,NULL,550.760),(323,NULL,550.760),(324,NULL,550.760),(325,NULL,550.760),(326,NULL,550.760),(327,NULL,550.760),(328,NULL,550.760),(329,NULL,550.760),(330,NULL,550.760),(331,NULL,550.760),(332,NULL,550.760),(333,0,550.760),(334,143,550.760),(335,NULL,550.760),(336,NULL,550.760),(337,NULL,123.000),(338,NULL,123.000),(339,NULL,12.540),(340,NULL,12.540),(341,NULL,12.540),(342,NULL,12.540),(343,NULL,550.760),(344,NULL,550.760),(345,NULL,550.760),(346,NULL,2.000),(347,NULL,2.000),(348,NULL,2.000),(349,NULL,2.000),(350,NULL,2.000),(351,NULL,550.760),(352,NULL,550.760),(353,NULL,550.760),(354,NULL,550.760),(355,NULL,550.760),(356,NULL,550.760),(357,0,550.760),(358,NULL,550.760),(359,NULL,550.760),(360,NULL,550.760),(361,0,550.760),(362,0,550.760),(363,0,550.760),(364,0,550.760),(365,0,550.760),(366,0,550.760),(367,0,550.760),(368,NULL,550.760),(369,0,550.760),(370,NULL,550.760),(371,0,550.760),(372,0,550.760),(373,0,550.760),(374,0,550.760),(375,0,550.760),(376,NULL,550.760),(377,NULL,550.760),(378,0,550.760),(379,0,550.760),(380,0,550.760),(381,0,550.760),(382,0,550.760),(383,0,550.760),(384,NULL,550.760),(385,0,550.760),(386,NULL,550.760),(387,0,550.760),(388,0,550.760),(389,150,550.760),(390,151,19.250),(391,NULL,35.670),(392,152,35.670),(393,153,87.350),(394,0,74.250),(395,NULL,550.760),(396,0,721.670),(397,154,54.880),(398,155,26.650),(399,156,123.870),(400,157,233.980),(401,NULL,550.760),(402,NULL,550.760),(403,NULL,550.760),(404,0,550.760),(405,NULL,550.760),(406,NULL,550.760),(407,0,21.250),(408,0,863.600),(409,NULL,123.650),(410,164,123.610),(411,166,140.580),(412,NULL,550.760),(413,NULL,550.760),(414,167,550.760),(415,171,12.910),(416,0,76.890),(417,0,89.240),(418,175,58.960),(419,0,50.760),(420,0,550.760),(421,0,50.760),(422,0,550.760),(423,NULL,550.760),(424,NULL,550.760),(425,177,550.760),(426,178,550.760),(427,179,45.760),(428,180,550.760),(429,181,550.760),(430,182,550.760),(431,183,550.760),(432,184,550.760),(433,NULL,550.760),(434,NULL,550.760),(435,185,550.760),(436,186,550.760),(437,187,5.760),(438,188,550.760),(439,189,550.760),(440,190,550.760),(441,191,550.760),(442,192,550.760);
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

-- Dump completed on 2015-04-27 20:40:28
