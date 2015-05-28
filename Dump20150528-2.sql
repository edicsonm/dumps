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
-- Dumping events for database 'Merchant'
--

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

-- Dump completed on 2015-05-28 20:21:26
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

-- Dump completed on 2015-05-28 20:21:27
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
-- Table structure for table `Audit_Subscription`
--

DROP TABLE IF EXISTS `Audit_Subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Audit_Subscription` (
  `Subs_ID` bigint(20) NOT NULL,
  `Plan_ID` bigint(20) NOT NULL,
  `Mcca_ID` bigint(20) NOT NULL,
  `Disc_ID` bigint(20) DEFAULT '0',
  `Subs_Quantity` int(4) NOT NULL,
  `Subs_TrialStart` date NOT NULL,
  `Subs_TrialEnd` date NOT NULL,
  `Subs_Start` date DEFAULT NULL,
  `Subs_Status` enum('Pending','Trialing','Active','Past_due','Canceled','Unpaid') NOT NULL,
  `Subs_CurrentPeriodStart` date DEFAULT NULL,
  `Subs_CurrentPeriodEnd` date DEFAULT NULL,
  `Subs_EndedAt` date DEFAULT NULL,
  `Subs_CanceledAt` date DEFAULT NULL,
  `Subs_AtPeriodEnd` enum('0','1') NOT NULL DEFAULT '1',
  `Subs_CancelAtPeriodEnd` enum('0','1') DEFAULT '1',
  `Subs_ApplicationFeePercent` decimal(5,2) DEFAULT NULL,
  `Subs_TaxPercent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Subs_CreationTime` datetime NOT NULL,
  `Subs_StatusRow` enum('0','1') NOT NULL DEFAULT '0',
  `Subs_Operation` varchar(50) NOT NULL,
  `Subs_TimeOperation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BbLog`
--

DROP TABLE IF EXISTS `BbLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BbLog` (
  `BbLo_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BbLo_Origen` varchar(200) NOT NULL,
  `BbLo_Message` varchar(500) NOT NULL,
  `BbLo_CreationTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`BbLo_ID`),
  UNIQUE KEY `BdLo_ID_UNIQUE` (`BbLo_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BbProcessLog`
--

DROP TABLE IF EXISTS `BbProcessLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BbProcessLog` (
  `Bbpl_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Bbpl_ProcessName` varchar(100) NOT NULL,
  `Bbpl_StoredProcedureName` varchar(100) NOT NULL,
  `Bbpl_Information` longtext NOT NULL,
  `BbPl_CreationTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Bbpl_ID`),
  UNIQUE KEY `Bbpl_ID_UNIQUE` (`Bbpl_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1278 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `Card`
--

DROP TABLE IF EXISTS `Card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Card` (
  `Card_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Cust_ID` bigint(20) NOT NULL COMMENT 'Customer ID from the table Customer. Can be null is there are not used registred with this card.',
  `Card_IDStripe` char(50) DEFAULT NULL,
  `Card_Brand` char(20) DEFAULT NULL,
  `Card_ExpMonth` int(2) NOT NULL,
  `Card_ExpYear` int(2) NOT NULL,
  `Card_FingerPrint` char(20) DEFAULT NULL COMMENT 'Stripe Field.',
  `Card_Funding` char(20) DEFAULT NULL,
  `Card_Number` varchar(50) NOT NULL,
  `Card_Cvv` int(3) DEFAULT '0',
  `Card_Name` varchar(50) NOT NULL,
  `Card_Last4` varchar(4) NOT NULL,
  `Card_AddressCity` char(50) DEFAULT NULL,
  `Card_AddressCountry` char(50) DEFAULT NULL,
  `Card_AddressState` char(50) DEFAULT NULL,
  `Card_AddressLine1` char(50) DEFAULT NULL,
  `Card_AddressLine2` char(50) DEFAULT NULL,
  `Card_AddressZip` int(10) DEFAULT NULL,
  `Card_Country` char(3) DEFAULT NULL COMMENT 'Country name in ISO format.',
  `Card_BlackListed` enum('','Yes','No') DEFAULT NULL,
  `Card_BlackListedReason` varchar(100) DEFAULT NULL,
  `Card_BlackListedCreateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Card_ID`),
  UNIQUE KEY `Card_ID` (`Card_ID`),
  UNIQUE KEY `Card_Number_UNIQUE` (`Card_Number`),
  KEY `IX_FK_Card_Customer` (`Cust_ID`),
  CONSTRAINT `FK_Card_Customer` FOREIGN KEY (`Cust_ID`) REFERENCES `Customer` (`Cust_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
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
) ENGINE=InnoDB AUTO_INCREMENT=752 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `Currency`
--

DROP TABLE IF EXISTS `Currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Currency` (
  `Curr_NumericCode` int(3) NOT NULL DEFAULT '0',
  `Coun_Numeric` int(5) DEFAULT NULL,
  `Coun_Name` varchar(100) NOT NULL DEFAULT 'NA',
  `Curr_Name` varchar(200) NOT NULL DEFAULT 'NA',
  `Curr_AlphabeticCode` varchar(3) NOT NULL DEFAULT 'NA',
  `Curr_MinorUnit` varchar(4) NOT NULL DEFAULT '0',
  `Curr_Status` enum('0','1') NOT NULL DEFAULT '1',
  KEY `FK_Currency_Currency_idx` (`Coun_Name`,`Coun_Numeric`),
  KEY `FK_Currency_Country_Numeric_idx` (`Coun_Numeric`),
  CONSTRAINT `FK_Currency_Country_Numeric` FOREIGN KEY (`Coun_Numeric`) REFERENCES `Country` (`Coun_Numeric`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `ErrorLog`
--

DROP TABLE IF EXISTS `ErrorLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ErrorLog` (
  `Erlo_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Erlo_ProcessName` varchar(100) NOT NULL,
  `Erlo_Type` varchar(50) DEFAULT NULL,
  `Erlo_Information` longtext NOT NULL,
  `Erlo_CreationTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Erlo_Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Erlo_ID`),
  UNIQUE KEY `Bbpl_ID_UNIQUE` (`Erlo_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22983 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IPHistory`
--

DROP TABLE IF EXISTS `IPHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IPHistory` (
  `IPHi_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IPHi_IP` varchar(50) DEFAULT NULL,
  `IPHI_Action` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IPHi_ID`),
  UNIQUE KEY `IPHi_ID_UNIQUE` (`IPHi_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `Merc_AverageTicketSize` varchar(50) DEFAULT NULL,
  `Merc_MonthlyProcessingVolume` varchar(50) DEFAULT NULL,
  `Merc_FirstQuestion` varchar(50) DEFAULT NULL,
  `Merc_SecondQuestion` varchar(50) DEFAULT NULL,
  `Merc_ThirdQuestion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Merc_ID`),
  KEY `FK_Merchant_Country_idx` (`Coun_NumericMerchant`),
  KEY `FK_Merchant_Industry_idx` (`Indu_ID`),
  KEY `FK_Merchant_BusinessType` (`Buty_ID`),
  KEY `FK_Merchant_Country2_idx` (`Coun_NumericPersonalInformation`),
  CONSTRAINT `FK_Merchant_BusinessType` FOREIGN KEY (`Buty_ID`) REFERENCES `BusinessType` (`Buty_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Merchant_Country1` FOREIGN KEY (`Coun_NumericMerchant`) REFERENCES `Country` (`Coun_Numeric`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Merchant_Country2` FOREIGN KEY (`Coun_NumericPersonalInformation`) REFERENCES `Country` (`Coun_Numeric`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Merchant_Industry` FOREIGN KEY (`Indu_ID`) REFERENCES `Industry` (`Indu_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `MerchantCustomerCard`
--

DROP TABLE IF EXISTS `MerchantCustomerCard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MerchantCustomerCard` (
  `Mcca_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Mecu_ID` bigint(20) NOT NULL,
  `Card_ID` bigint(20) NOT NULL,
  `Mcca_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Mcca_ID`),
  UNIQUE KEY `Mcca_ID_UNIQUE` (`Mcca_ID`),
  UNIQUE KEY `Mecu_ID_Card_ID` (`Mecu_ID`,`Card_ID`),
  KEY `FK_MerchantCustomerCard_Card_idx` (`Card_ID`),
  KEY `FK_MerchantCustomerCard_MerchantCustomer_idx` (`Mecu_ID`),
  CONSTRAINT `FK_MerchantCustomerCard_Card` FOREIGN KEY (`Card_ID`) REFERENCES `Card` (`Card_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_MerchantCustomerCard_MerchantCustomer` FOREIGN KEY (`Mecu_ID`) REFERENCES `MerchantCustomer` (`Mecu_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MerchantDocuments`
--

DROP TABLE IF EXISTS `MerchantDocuments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MerchantDocuments` (
  `Medo_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Merc_ID` bigint(20) NOT NULL,
  `Medo_Name` varchar(50) NOT NULL,
  `Medo_Description` varchar(50) DEFAULT NULL,
  `Medo_Size` varchar(50) NOT NULL,
  `Medo_File` longblob NOT NULL,
  `Medo_CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Medo_ID`),
  UNIQUE KEY `Medo_ID_UNIQUE` (`Medo_ID`),
  KEY `FK_MerchantDocuments_Merchant_idx` (`Merc_ID`),
  CONSTRAINT `FK_MerchantDocuments_Merchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `Plan`
--

DROP TABLE IF EXISTS `Plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Plan` (
  `Plan_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Merc_ID` bigint(20) NOT NULL,
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
  UNIQUE KEY `Plan_id_UNIQUE` (`Plan_ID`),
  KEY `FK_Plan_Merchant_idx` (`Merc_ID`),
  CONSTRAINT `FK_Plan_Merchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `Rech_FailureMessage` varchar(500) NOT NULL,
  `Rech_CardNumber` varchar(50) NOT NULL,
  `Rech_Card_ExpYear` varchar(50) NOT NULL,
  `Rech_Card_ExpMonth` varchar(50) NOT NULL,
  `Rech_CardHolderName` varchar(50) NOT NULL,
  `Rech_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Rech_ID`),
  UNIQUE KEY `Rech_ID_UNIQUE` (`Rech_ID`),
  UNIQUE KEY `Tran_ID_UNIQUE` (`Tran_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SubmittedProcessLog`
--

DROP TABLE IF EXISTS `SubmittedProcessLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubmittedProcessLog` (
  `Splo_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Splo_ProcessName` varchar(50) NOT NULL,
  `Splo_StartTime` varchar(45) DEFAULT NULL,
  `Splo_EndTime` varchar(45) DEFAULT NULL,
  `Splo_StatusProcess` enum('Waiting','Error','Success','OnExecution') NOT NULL DEFAULT 'Waiting',
  `Splo_Information` longtext,
  PRIMARY KEY (`Splo_ID`),
  UNIQUE KEY `Splo_ID_UNIQUE` (`Splo_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Subscription`
--

DROP TABLE IF EXISTS `Subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subscription` (
  `Subs_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Plan_ID` bigint(20) NOT NULL,
  `Mcca_ID` bigint(20) NOT NULL,
  `Disc_ID` bigint(20) DEFAULT '0',
  `Subs_Quantity` int(4) NOT NULL,
  `Subs_Status` enum('Pending','Trialing','Active','Past_due','Canceled','Unpaid') NOT NULL,
  `Subs_TrialStart` date NOT NULL,
  `Subs_TrialEnd` date NOT NULL,
  `Subs_Start` date DEFAULT NULL,
  `Subs_CurrentPeriodStart` date DEFAULT NULL,
  `Subs_CurrentPeriodEnd` date DEFAULT NULL,
  `Subs_CurrentChargeStatus` enum('','toProcess','toProcessFirst','onQueue','onQueueDelay','processed') NOT NULL DEFAULT '',
  `Subs_ProcessAttempt` int(2) NOT NULL DEFAULT '0',
  `Subs_ProcessAttemptLimit` int(2) NOT NULL DEFAULT '3',
  `Subs_CurrentChargeStatusDate` datetime DEFAULT NULL,
  `Subs_EndedAt` date DEFAULT NULL,
  `Subs_CanceledAt` date DEFAULT NULL,
  `Subs_AtPeriodEnd` enum('0','1') NOT NULL DEFAULT '1',
  `Subs_CancelAtPeriodEnd` enum('0','1') DEFAULT '1',
  `Subs_ApplicationFeePercent` decimal(5,2) DEFAULT NULL,
  `Subs_TaxPercent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Subs_CreationTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Subs_StatusRow` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`Subs_ID`),
  UNIQUE KEY `Subs_ID_UNIQUE` (`Subs_ID`),
  UNIQUE KEY `UNIQUE_Plan_ID_Mcca_ID` (`Plan_ID`,`Mcca_ID`),
  KEY `FK_Subscription_Card_idx` (`Mcca_ID`),
  CONSTRAINT `FK_Subscription_Card` FOREIGN KEY (`Mcca_ID`) REFERENCES `MerchantCustomerCard` (`Mcca_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=395 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IPG`.`Subscription_AFTER_INSERT` AFTER INSERT ON `Subscription` FOR EACH ROW
BEGIN

INSERT INTO `IPG`.`Audit_Subscription`
	(`Subs_ID`,
	`Plan_ID`,
	`Mcca_ID`,
	`Disc_ID`,
	`Subs_Quantity`,
	`Subs_TrialStart`,
	`Subs_TrialEnd`,
	`Subs_Start`,
	`Subs_Status`,
	`Subs_CurrentPeriodStart`,
	`Subs_CurrentPeriodEnd`,
	`Subs_EndedAt`,
	`Subs_CanceledAt`,
	`Subs_AtPeriodEnd`,
	`Subs_CancelAtPeriodEnd`,
	`Subs_ApplicationFeePercent`,
	`Subs_TaxPercent`,
	`Subs_CreationTime`,
	`Subs_StatusRow`,
    `Subs_Operation`)
VALUES
	(NEW.Subs_ID,
	NEW.Plan_ID,
	NEW.Mcca_ID,
	NEW.Disc_ID,
	NEW.Subs_Quantity,
	NEW.Subs_TrialStart,
	NEW.Subs_TrialEnd,
	NEW.Subs_Start,
	NEW.Subs_Status,
	NEW.Subs_CurrentPeriodStart,
	NEW.Subs_CurrentPeriodEnd,
	NEW.Subs_EndedAt,
	NEW.Subs_CanceledAt,
	NEW.Subs_AtPeriodEnd,
	NEW.Subs_CancelAtPeriodEnd,
	NEW.Subs_ApplicationFeePercent,
	NEW.Subs_TaxPercent,
	NEW.Subs_CreationTime,
	NEW.Subs_StatusRow,
    'AFTER_INSERT'); 

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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IPG`.`Subscription_BEFORE_UPDATE` 
BEFORE UPDATE ON `Subscription` FOR EACH ROW
BEGIN	
    
INSERT INTO `IPG`.`Audit_Subscription`
	(`Subs_ID`,
	`Plan_ID`,
	`Mcca_ID`,
	`Disc_ID`,
	`Subs_Quantity`,
	`Subs_TrialStart`,
	`Subs_TrialEnd`,
	`Subs_Start`,
	`Subs_Status`,
	`Subs_CurrentPeriodStart`,
	`Subs_CurrentPeriodEnd`,
	`Subs_EndedAt`,
	`Subs_CanceledAt`,
	`Subs_AtPeriodEnd`,
	`Subs_CancelAtPeriodEnd`,
	`Subs_ApplicationFeePercent`,
	`Subs_TaxPercent`,
	`Subs_CreationTime`,
	`Subs_StatusRow`,
    `Subs_Operation`)
VALUES
	(NEW.Subs_ID,
	NEW.Plan_ID,
	NEW.Mcca_ID,
	NEW.Disc_ID,
	NEW.Subs_Quantity,
	NEW.Subs_TrialStart,
	NEW.Subs_TrialEnd,
	NEW.Subs_Start,
	NEW.Subs_Status,
	NEW.Subs_CurrentPeriodStart,
	NEW.Subs_CurrentPeriodEnd,
	NEW.Subs_EndedAt,
	NEW.Subs_CanceledAt,
	NEW.Subs_AtPeriodEnd,
	NEW.Subs_CancelAtPeriodEnd,
	NEW.Subs_ApplicationFeePercent,
	NEW.Subs_TaxPercent,
	NEW.Subs_CreationTime,
	NEW.Subs_StatusRow,
    'UPDATE');    
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IPG`.`Subscription_BEFORE_DELETE` BEFORE DELETE ON `Subscription` FOR EACH ROW
BEGIN
INSERT INTO `IPG`.`Audit_Subscription`
	(`Subs_ID`,
	`Plan_ID`,
	`Mcca_ID`,
	`Disc_ID`,
	`Subs_Quantity`,
	`Subs_TrialStart`,
	`Subs_TrialEnd`,
	`Subs_Start`,
	`Subs_Status`,
	`Subs_CurrentPeriodStart`,
	`Subs_CurrentPeriodEnd`,
	`Subs_EndedAt`,
	`Subs_CanceledAt`,
	`Subs_AtPeriodEnd`,
	`Subs_CancelAtPeriodEnd`,
	`Subs_ApplicationFeePercent`,
	`Subs_TaxPercent`,
	`Subs_CreationTime`,
	`Subs_StatusRow`,
    `Subs_Operation`)
VALUES
	(OLD.Subs_ID,
	OLD.Plan_ID,
	OLD.Mcca_ID,
	OLD.Disc_ID,
	OLD.Subs_Quantity,
	OLD.Subs_TrialStart,
	OLD.Subs_TrialEnd,
	OLD.Subs_Start,
	OLD.Subs_Status,
	OLD.Subs_CurrentPeriodStart,
	OLD.Subs_CurrentPeriodEnd,
	OLD.Subs_EndedAt,
	OLD.Subs_CanceledAt,
	OLD.Subs_AtPeriodEnd,
	OLD.Subs_CancelAtPeriodEnd,
	OLD.Subs_ApplicationFeePercent,
	OLD.Subs_TaxPercent,
	OLD.Subs_CreationTime,
	OLD.Subs_StatusRow,
    'DELETE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `SubscriptionsToProcess`
--

DROP TABLE IF EXISTS `SubscriptionsToProcess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubscriptionsToProcess` (
  `Supr_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Subs_ID` bigint(20) NOT NULL,
  `Plan_ID` bigint(20) NOT NULL,
  `Merc_ID` bigint(20) NOT NULL,
  `Mcca_ID` bigint(20) NOT NULL,
  `Supr_Quantity` decimal(20,0) NOT NULL,
  `Supr_Amount` varchar(45) NOT NULL,
  `Supr_Currency` varchar(3) NOT NULL,
  `Supr_CurrentPeriodStart` date NOT NULL,
  `Supr_CurrentPeriodEnd` date NOT NULL,
  `Supr_CreationTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Supr_Status` enum('Waiting','Sending','BBError','Charged','Unpaid') NOT NULL,
  `Supr_ProcessAttempt` int(2) NOT NULL DEFAULT '0',
  `Supr_ProcessAttemptLimit` int(2) NOT NULL DEFAULT '3',
  `Supr_StatusCreationTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Supr_AuthorizerCode` varchar(45) DEFAULT NULL,
  `Supr_AuthorizerReason` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Supr_ID`),
  UNIQUE KEY `UNIQUE_Plan_ID_Subs_CurrentPeriodStart_Subs_CurrentPeriodEnd` (`Subs_ID`,`Supr_CurrentPeriodStart`,`Supr_CurrentPeriodEnd`),
  UNIQUE KEY `Supr_ID_UNIQUE` (`Supr_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21887 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IPG`.`SubscriptionsToProcess_AFTER_INSERT` AFTER INSERT ON `SubscriptionsToProcess` FOR EACH ROW
BEGIN
	UPDATE `IPG`.`Subscription`
	SET `Subs_CurrentChargeStatus` = 'onQueue',
		`Subs_CurrentChargeStatusDate` = NOW()
	WHERE `Subs_ID` = NEW.Subs_ID;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IPG`.`SubscriptionsToProcess_AFTER_UPDATE` AFTER UPDATE ON `SubscriptionsToProcess` FOR EACH ROW
BEGIN
	IF NEW.Supr_Status = 'Charged' THEN
		UPDATE `IPG`.`Subscription`
		SET `Subs_CurrentPeriodStart` = NEW.Supr_CurrentPeriodStart,
			`Subs_CurrentPeriodEnd` = NEW.Supr_CurrentPeriodEnd,
            `Subs_Status` = 'Active',
            `Subs_CurrentChargeStatus` = 'toProcess',
            `Subs_CurrentChargeStatusDate` = NOW()
		WHERE `Subs_ID` = NEW.Subs_ID;
        -- DELETE FROM IPG.SubscriptionsToProcess WHERE `Subs_ID` = NEW.Subs_ID;
    END IF;
    
    IF NEW.Supr_Status = 'Unpaid' THEN
		-- UPDATE IPG.SubscriptionsToProcess SET Supr_ProcessAttempt = NEW.Supr_ProcessAttempt + 1;
		IF  NEW.Supr_ProcessAttempt = (NEW.Supr_ProcessAttemptLimit - 1) THEN 
			UPDATE `IPG`.`Subscription`
			SET `Subs_Status` = 'Unpaid',
			`Subs_CurrentChargeStatus` = 'toProcess',
			`Subs_CurrentChargeStatusDate` = NOW(),
			`Subs_ProcessAttempt` = NEW.Supr_ProcessAttempt + 1
			WHERE `Subs_ID` = NEW.Subs_ID;
            -- DELETE FROM IPG.SubscriptionsToProcess WHERE `Subs_ID` = NEW.Subs_ID;
        ELSE
			UPDATE `IPG`.`Subscription`
			SET `Subs_Status` = 'Past_due',
			`Subs_CurrentChargeStatus` = 'toProcess',
			`Subs_CurrentChargeStatusDate` = NOW(),
			`Subs_ProcessAttempt` = NEW.Supr_ProcessAttempt + 1
			WHERE `Subs_ID` = NEW.Subs_ID;
        END IF;
	END IF;
    
        /*UPDATE `IPG`.`Subscription`
		SET `Subs_Status` = 'Past_due',
        `Subs_CurrentChargeStatus` = 'toProcess',
        `Subs_CurrentChargeStatusDate` = NOW(),
        `Subs_ProcessAttempt` = NEW.Dasu_ProcessAttempt + 1
		WHERE `Subs_ID` = NEW.Subs_ID;*/
        
        /*INSERT INTO `IPG`.`Reprocess_Daily_Subscriptions`(
		`Dasu_ID`,
		`Subs_ID`,
		`Plan_ID`,
		`Mcca_ID`,
		`Dasu_Quantity`,
		`Dasu_Amount`,
        `Dasu_Currency`,
		`Dasu_CurrentPeriodStart`,
		`Dasu_CurrentPeriodEnd`,
		`Dasu_CreationTime`,
		`Dasu_Status`,
		`Dasu_AuthorizerCode`,
		`Dasu_AuthorizerReason`)
		VALUES
		(NEW.Dasu_ID,
		NEW.Subs_ID,
		NEW.Plan_ID,
		NEW.Mcca_ID,
		NEW.Dasu_Quantity,
		NEW.Dasu_Amount,
        NEW.Dasu_Currency,
		NEW.Dasu_CurrentPeriodStart,
		NEW.Dasu_CurrentPeriodEnd,
		NEW.Dasu_CreationTime,
		NEW.Dasu_Status,
		NEW.Dasu_AuthorizerCode,
		NEW.Dasu_AuthorizerReason);*/
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transaction` (
  `Tran_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Merc_ID` bigint(20) NOT NULL COMMENT 'Your internal ID for the shop, affiliate, or merchant this order is coming from. Required for minFraud users who are resellers, payment providers, gateways and affiliate networks.',
  `Tran_IP` varchar(20) NOT NULL COMMENT 'The IP address of the customer placing the order. This should be passed as a string like â44.55.66.77â or â2001:db8::2:1â³.',
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
  `Tran_Domain` char(50) DEFAULT NULL COMMENT 'The domain for the userâs email address. This field should not be hashed.',
  `Tran_CustomerPhone` char(20) DEFAULT NULL COMMENT 'The customerâs phone number, including area code and local exchange. This is used to verify that the customerâs phone number is in the same billing location as the cardholder. Most formats are acceptable. We strip out all non-numeric characters from the input.',
  `Tran_EmailMD5` char(32) DEFAULT NULL COMMENT 'An MD5 hash of the userâs email address in ASCII encoding.',
  `Tran_UsernameMD5` char(32) DEFAULT NULL COMMENT 'An MD5 hash of the userâs username in ASCII encoding.',
  `Tran_Bin` char(6) DEFAULT NULL COMMENT 'The credit card BIN number. This is the first 6 digits of the credit card number. It identifies the issuing bank.',
  `Tran_BinName` char(50) DEFAULT NULL COMMENT 'The name of the bank which issued the credit card, based on the BIN number. This is used to verify that cardholder is in possession of credit card. You must set the bin field if you set this one.',
  `Tran_BinPhone` char(20) DEFAULT NULL COMMENT 'The customer service phone number listed on the back of the credit card. This is used to verify that cardholder is in possession of credit card. You must set the bin field if you set this one.',
  `Tran_UserAgent` char(200) NOT NULL COMMENT 'The User-Agent HTTP header.',
  `Tran_AcceptLanguage` char(200) DEFAULT NULL COMMENT 'The Accept-Language HTTP header.',
  `Tran_OrderAmount` decimal(20,3) NOT NULL COMMENT 'The customerâs order amount.',
  `Tran_OrderCurrency` char(3) NOT NULL COMMENT 'The currency used for the customerâs order as an ISO 4217 code.',
  `Tran_TxnType` enum('creditcard','debitcard','paypal','google â?? Google checkout','other','lead â?? lead generation','survey â?? online survey','sitereg â?? site registration') DEFAULT NULL COMMENT 'The transaction type. This can be set to one of the following strings:\n    creditcard\n    debitcard\n    paypal\n    google â Google checkout\n    other\n    lead â lead generation\n    survey â online survey\n    sitereg â site registration\n\nThe lead, survey, and sitereg types are used for non-purchase transactions.',
  `Tran_CVVResult` enum('Y','N') DEFAULT NULL COMMENT 'The CVV check result. This should be either âNâ or âYâ. Do not pass the CVV code itself.',
  `Tran_RequestedType` enum('standard','premium') DEFAULT NULL,
  `Tran_RiskScore` decimal(5,2) DEFAULT NULL,
  `Tran_CountryMatch` enum('Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. It indicates whether the country of the IP address matched the billing address country. A mismatch indicates a higher risk of fraud. If no country input was provided, this field will be left blank.',
  `Tran_HighRiskCountry` enum('Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. The field will be set to âYesâ if either the billing country or the IP country are associated with a high risk of fraud; otherwise, it will be set to âNoâ.',
  `Tran_Distance` bigint(20) DEFAULT NULL COMMENT 'The distance from the IP address location to the billing location, in kilometers. A higher distance indicates a higher risk of fraud.',
  `Tran_IPAccuracyRadius` char(20) DEFAULT NULL COMMENT 'The radius in kilometers around the specified location where the IP address is likely to be.',
  `Tran_IPCity` char(20) DEFAULT NULL,
  `Tran_IPRegion` char(2) DEFAULT NULL COMMENT 'A two character ISO-3166-2 or FIPS 10-4 code for the state/region associated with the IP address.\n\nFor the US and Canada, we return an ISO-3166-2 code. In addition to the standard ISO codes, we may also return one of the following:\n\n    AA â Armed Forces America\n    AE â Armed Forces Europe\n    AP â Armed Forces Pacific\n\nWe return a FIPS code for all other countries.\n\nWe provide a CSV file which maps our region codes to region names. The columns are ISO country code, region code (FIPS or ISO), and the region name.',
  `Tran_IPRegionName` char(100) DEFAULT NULL COMMENT 'The region name associated with the IP address.',
  `Tran_IPPostalCode` char(20) DEFAULT NULL COMMENT 'The postal code associated with the IP address. These are available for some IP addresses in Australia, Canada, France, Germany, Italy, Spain, Switzerland, United Kingdom, and the US. We return the first 3 characters for Canadian postal codes. We return the the first 2-4 characters (outward code) for postal codes in the United Kingdom.',
  `Tran_IPMetroCode` char(20) DEFAULT NULL,
  `Tran_IPAreaCode` char(50) DEFAULT NULL COMMENT 'The telephone area code associated with the IP address. These are only available for IP addresses in the US. This output is deprecated, and may not reflect newer area codes.',
  `Tran_CountryCode` char(2) DEFAULT NULL COMMENT 'A two-character ISO 3166-1 country code for the country associated with the IP address. In addition to the standard codes, we may also return one of the following:\n\n    A1 â an anonymous proxy.\n    A2 â a satellite provider.\n    EU â an IP in a block used by multiple European countries.\n    AP â an IP in a block used by multiple Asia/Pacific region countries.\n\nThe US country code is returned for IP addresses associated with overseas US military bases.',
  `Tran_IPCountryName` char(100) DEFAULT NULL,
  `Tran_IPContinentCode` char(2) DEFAULT NULL COMMENT 'A two-character code for the continent associated with the IP address. The possible codes are:\n\n    AF â Africa\n    AS â Asia\n    EU â Europe\n    NA â North America\n    OC â Oceania\n    SA â South America',
  `Tran_IPLatitude` char(20) DEFAULT NULL,
  `Tran_IPLongitude` bigint(20) DEFAULT NULL,
  `Tran_IPTimeZone` char(50) DEFAULT NULL COMMENT 'The time zone associated with the IP address. Time zone names are taken from the IANA time zone database. See the list of possible values.',
  `Tran_IPAsnum` char(50) DEFAULT NULL COMMENT 'The autonomous system number associated with the IP address.',
  `Tran_IPUserType` enum('','business','cafe','cellular','college','contentDeliveryNetwork','government','hosting','library','military','residential','router','school','searchEngineSpider','traveler') DEFAULT NULL COMMENT 'The user type associated with the IP address. This will be one of the following values.\n\n    business\n    cafe\n    cellular\n    college\n    contentDeliveryNetwork\n    government\n    hosting\n    library\n    military\n    residential\n    router\n    school\n    searchEngineSpider\n    traveler',
  `Tran_IPNetSpeedCell` enum('','Dialup','Cable/DSL','Corporate','Cellular') DEFAULT NULL,
  `Tran_IPDomain` char(50) DEFAULT NULL COMMENT 'The second level domain associated with the IP address. This will be something like âexample.comâ or âexample.co.ukâ, not âfoo.example.comâ.',
  `Tran_IPIsp` char(100) DEFAULT NULL COMMENT 'The name of the ISP associated with the IP address.',
  `Tran_IPOrg` char(50) DEFAULT NULL COMMENT 'The name of the organization associated with the IP address.',
  `Tran_IPCityConf` char(3) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the city is correct.',
  `Tran_IPRegionConf` char(3) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the region is correct.',
  `Tran_IPPostalConf` char(3) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the postal code is correct.',
  `Tran_IPCountryConf` char(3) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the country is correct.',
  `Tran_AnonymousProxy` enum('Yes','No') DEFAULT NULL,
  `Tran_ProxyScore` decimal(2,2) DEFAULT NULL,
  `Tran_IPCorporateProxy` enum('Yes','No') DEFAULT NULL,
  `Tran_FreeMail` enum('','Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. It indicates whether the userâs email address is from a free email provider. Note that this will be set to âNoâ if no domain is passed in the input.',
  `Tran_CarderEmail` enum('','Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. It indicates whether the userâs email address is in a database of known high risk emails.',
  `Tran_BinMatch` enum('','Yes','No','NotFound','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, NotFound, or NA It indicates whether the credit cardâs bank is in the same country as the userâs billing address.\n\nThe NotFound response means that we could not find a match for the provided bin input field. The NA response means that you did not provide a bin in the input.',
  `Tran_BinCountry` char(2) DEFAULT NULL COMMENT 'The two letter ISO 3166 country code for the bank. This is available for approximately 99% of all BIN numbers. This field is returned for premium service level queries. For standard service level queries the field is only returned if the binMatch is Yes.',
  `Tran_BinNameMatch` enum('Yes','No','NotFound','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, NotFound, or NA It indicates whether the credit cardâs bank name matches the binName input field.\n\nThe NotFound response means that we could not find a match for the provided bin input field. The NA response means that you did not provide a binName in the input.',
  `Tran_BinPhoneMatch` enum('Yes','No','NotFound','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, NotFound, or NA It indicates whether the credit cardâs bank name matches the binPhone input field.\n\nThe NotFound response means that we could not find a match for the provided bin input field. The NA response means that you did not provide a binPhone in the input.',
  `Tran_Prepaid` enum('','Yes','No') DEFAULT NULL,
  `Tran_CustPhoneInBillingLoc` enum('','Yes','No','NotFound') DEFAULT NULL COMMENT 'This field can be either Yes, No, or NotFound. This indicates whether the customerâs phone number is in the billing addressâs postal code.\n\nThe No response means that phone number may be in a different area, or it is not listed in our database. The NotFound response indicates that the phone number prefix is not in our database.\n\nCurrently we only return information about US phone numbers. For all other countries, this field will be left blank.',
  `Tran_ShipForward` enum('Yes','No','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, or NA. This indicates whether the customerâs shipping address is in a database of known high risk shipping addresses. The NA response indicates that we could not parse the shipping address.',
  `Tran_CityPostalMatch` enum('','Yes','No') DEFAULT NULL,
  `Tran_ShipCityPostalMatch` enum('','Yes','No') DEFAULT NULL,
  `Tran_MinfraudVersion` char(20) DEFAULT NULL COMMENT 'This returns the API version that was used for this request.',
  `Tran_ServiceLevel` enum('','standard','premium') DEFAULT NULL COMMENT 'This returns the service level that was used for this request. This can be either standard or premium.',
  `Tran_Error` enum('','INVALID_LICENSE_KEY','IP_REQUIRED','IP_NOT_FOUND','MAX_REQUESTS_REACHED','LICENSE_REQUIRED','COUNTRY_NOT_FOUND','CITY_NOT_FOUND','CITY_REQUIRED','INVALID_EMAIL_MD5','POSTAL_CODE_REQUIRED','POSTAL_CODE_NOT_FOUND') DEFAULT NULL COMMENT 'If there was an error or warning with this request, this field contains an error code string.\n\nThe possible error codes are:\n\n    INVALID_LICENSE_KEY\n    IP_REQUIRED\n    IP_NOT_FOUND â this error will be returned if the IP address is not valid, if it is not public, or if it is not in our GeoIP database.\n    MAX_REQUESTS_REACHED â this is returned when your account is out of queries.\n    LICENSE_REQUIRED â this is returned if you do not provide a license key at all.\n\nThe possible warning codes are:\n\n    COUNTRY_NOT_FOUND\n    CITY_NOT_FOUND\n    CITY_REQUIRED\n    INVALID_EMAIL_MD5\n    POSTAL_CODE_REQUIRED\n    POSTAL_CODE_NOT_FOUND\n',
  `Tran_ProcessTime` varchar(20) DEFAULT NULL,
  `Tran_CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Tran_ID`),
  UNIQUE KEY `Tran_ID` (`Tran_ID`),
  KEY `FK_Transaction_Merchant_idx` (`Merc_ID`),
  CONSTRAINT `FK_Transaction_Merchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1656 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  CONSTRAINT `FK_UserMerchant_Merchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
 1 AS `Cust_Email`,
 1 AS `Cust_CreateTime`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `View_MerchantCustomerCard`
--

DROP TABLE IF EXISTS `View_MerchantCustomerCard`;
/*!50001 DROP VIEW IF EXISTS `View_MerchantCustomerCard`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `View_MerchantCustomerCard` AS SELECT 
 1 AS `Mcca_ID`,
 1 AS `Mecu_ID`,
 1 AS `Merc_ID`,
 1 AS `Cust_ID`,
 1 AS `Card_ID`*/;
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
-- Temporary view structure for view `View_Refunds_Effectives`
--

DROP TABLE IF EXISTS `View_Refunds_Effectives`;
/*!50001 DROP VIEW IF EXISTS `View_Refunds_Effectives`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `View_Refunds_Effectives` AS SELECT 
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
-- Table structure for table `X_Currency_Aux`
--

DROP TABLE IF EXISTS `X_Currency_Aux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `X_Currency_Aux` (
  `ENTITY` varchar(50) DEFAULT NULL,
  `Currency` varchar(45) DEFAULT NULL,
  `Alphabetic_Code` varchar(45) DEFAULT NULL,
  `Numeric_Code` int(3) DEFAULT NULL,
  `Minor_unit` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `X_Currency_BK`
--

DROP TABLE IF EXISTS `X_Currency_BK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `X_Currency_BK` (
  `Curr_NumericCode` int(3) NOT NULL DEFAULT '0',
  `Coun_Numeric` int(5) DEFAULT NULL,
  `Coun_Name` varchar(100) NOT NULL DEFAULT 'NA',
  `Curr_Name` varchar(50) NOT NULL DEFAULT 'NA',
  `Curr_AlphabeticCode` varchar(3) NOT NULL DEFAULT 'NA',
  `Curr_MinorUnit` int(3) NOT NULL DEFAULT '0',
  KEY `FK_Currency_Currency_idx` (`Coun_Name`,`Coun_Numeric`),
  KEY `FK_Currency_Country_Numeric_idx` (`Coun_Numeric`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `X_Monthly_Subscriptions`
--

DROP TABLE IF EXISTS `X_Monthly_Subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `X_Monthly_Subscriptions` (
  `Mosu_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Subs_ID` bigint(20) NOT NULL,
  `Plan_ID` bigint(20) NOT NULL,
  `Mcca_ID` bigint(20) NOT NULL,
  `Mosu_Quantity` decimal(20,0) NOT NULL,
  `Mosu_Amount` varchar(45) NOT NULL,
  `Mosu_CurrentPeriodStart` date NOT NULL,
  `Mosu_CurrentPeriodEnd` date NOT NULL,
  `Mosu_CreationTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Mosu_Status` enum('Waiting','Charged','Unpaid') NOT NULL,
  `Mosu_AuthorizerCode` varchar(45) DEFAULT NULL,
  `Mosu_AuthorizerReason` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Mosu_ID`),
  UNIQUE KEY `UNIQUE_Plan_ID_Subs_CurrentPeriodStart_Subs_CurrentPeriodEnd` (`Subs_ID`,`Mosu_CurrentPeriodStart`,`Mosu_CurrentPeriodEnd`),
  UNIQUE KEY `Mosu_ID_UNIQUE` (`Mosu_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1285 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IPG`.`Monthly_Subscriptions_AFTER_INSERT` AFTER INSERT ON `X_Monthly_Subscriptions` FOR EACH ROW
BEGIN
	UPDATE `IPG`.`Subscription`
		SET `Subs_CurrentChargeStatus` = 'onQueue',
			`Subs_CurrentChargeStatusDate` = NOW()
		WHERE `Subs_ID` = NEW.Subs_ID;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IPG`.`Monthly_Subscriptions_AFTER_UPDATE` AFTER UPDATE ON `X_Monthly_Subscriptions` FOR EACH ROW
BEGIN
	
    IF NEW.Mosu_Status = 'Charged' THEN
		UPDATE `IPG`.`Subscription`
		SET `Subs_CurrentPeriodStart` = NEW.Mosu_CurrentPeriodStart,
			`Subs_CurrentPeriodEnd` = NEW.Mosu_CurrentPeriodEnd,
            `Subs_Status` = 'Active',
            `Subs_CurrentChargeStatus` = 'toProcess',
            `Subs_CurrentChargeStatusDate` = NOW()
		WHERE `Subs_ID` = NEW.Subs_ID;
    END IF;
    
    IF NEW.Mosu_Status = 'Unpaid' THEN		
        UPDATE `IPG`.`Subscription`
		SET `Subs_Status` = 'Past_due',
        `Subs_CurrentChargeStatus` = 'onQueue',
        `Subs_CurrentChargeStatusDate` = NOW()
		WHERE `Subs_ID` = NEW.Subs_ID;
        
        INSERT INTO `IPG`.`Reprocess_Monthly_Subscriptions`(
		`Mosu_ID`,
		`Subs_ID`,
		`Plan_ID`,
		`Mcca_ID`,
		`Mosu_Quantity`,
		`Mosu_Amount`,
		`Mosu_CurrentPeriodStart`,
		`Mosu_CurrentPeriodEnd`,
		`Mosu_CreationTime`,
		`Mosu_Status`,
		`Mosu_AuthorizerCode`,
		`Mosu_AuthorizerReason`)
		VALUES
		(NEW.Mosu_ID,
		NEW.Subs_ID,
		NEW.Plan_ID,
		NEW.Mcca_ID,
		NEW.Mosu_Quantity,
		NEW.Mosu_Amount,
		NEW.Mosu_CurrentPeriodStart,
		NEW.Mosu_CurrentPeriodEnd,
		NEW.Mosu_CreationTime,
		NEW.Mosu_Status,
		NEW.Mosu_AuthorizerCode,
		NEW.Mosu_AuthorizerReason);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `X_Pruebas`
--

DROP TABLE IF EXISTS `X_Pruebas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `X_Pruebas` (
  `idPruebas` datetime NOT NULL,
  PRIMARY KEY (`idPruebas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `X_Reprocess_Daily_Subscriptions`
--

DROP TABLE IF EXISTS `X_Reprocess_Daily_Subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `X_Reprocess_Daily_Subscriptions` (
  `Dasu_ID` bigint(20) NOT NULL,
  `Subs_ID` bigint(20) NOT NULL,
  `Plan_ID` bigint(20) NOT NULL,
  `Merc_ID` bigint(20) DEFAULT NULL,
  `Mcca_ID` bigint(20) NOT NULL,
  `Dasu_Quantity` decimal(20,0) NOT NULL,
  `Dasu_Amount` varchar(45) NOT NULL,
  `Dasu_Currency` varchar(3) NOT NULL,
  `Dasu_CurrentPeriodStart` date NOT NULL,
  `Dasu_CurrentPeriodEnd` date NOT NULL,
  `Dasu_CreationTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Dasu_Status` enum('Waiting','Sending','BBError','Charged','Unpaid') NOT NULL,
  `Dasu_StatusCreationTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Dasu_ProcessAttempt` int(2) NOT NULL DEFAULT '1',
  `Dasu_AuthorizerCode` varchar(45) DEFAULT NULL,
  `Dasu_AuthorizerReason` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Dasu_ID`),
  UNIQUE KEY `UNIQUE_Plan_ID_Subs_CurrentPeriodStart_Subs_CurrentPeriodEnd` (`Subs_ID`,`Dasu_CurrentPeriodStart`,`Dasu_CurrentPeriodEnd`),
  UNIQUE KEY `Dasu_ID_UNIQUE` (`Dasu_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `X_Reprocess_Monthly_Subscriptions`
--

DROP TABLE IF EXISTS `X_Reprocess_Monthly_Subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `X_Reprocess_Monthly_Subscriptions` (
  `Mosu_ID` bigint(20) NOT NULL,
  `Subs_ID` bigint(20) NOT NULL,
  `Plan_ID` bigint(20) NOT NULL,
  `Mcca_ID` bigint(20) NOT NULL,
  `Mosu_Quantity` decimal(20,0) NOT NULL,
  `Mosu_Amount` varchar(45) NOT NULL,
  `Mosu_CurrentPeriodStart` date NOT NULL,
  `Mosu_CurrentPeriodEnd` date NOT NULL,
  `Mosu_CreationTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Mosu_Status` enum('Waiting','Charged','Unpaid') NOT NULL,
  `Mosu_ProcessAttempt` int(2) NOT NULL DEFAULT '1',
  `Mosu_AuthorizerCode` varchar(45) NOT NULL,
  `Mosu_AuthorizerReason` varchar(45) NOT NULL,
  PRIMARY KEY (`Mosu_ID`),
  UNIQUE KEY `UNIQUE_Plan_ID_Subs_CurrentPeriodStart_Subs_CurrentPeriodEnd` (`Subs_ID`,`Mosu_CurrentPeriodStart`,`Mosu_CurrentPeriodEnd`),
  UNIQUE KEY `Mosu_ID_UNIQUE` (`Mosu_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `X_Reprocess_Weekly_Subscriptions`
--

DROP TABLE IF EXISTS `X_Reprocess_Weekly_Subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `X_Reprocess_Weekly_Subscriptions` (
  `Wesu_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Subs_ID` bigint(20) NOT NULL,
  `Plan_ID` bigint(20) NOT NULL,
  `Mcca_ID` bigint(20) NOT NULL,
  `Wesu_Quantity` decimal(20,0) NOT NULL,
  `Wesu_Amount` varchar(45) NOT NULL,
  `Wesu_CurrentPeriodStart` date NOT NULL,
  `Wesu_CurrentPeriodEnd` date NOT NULL,
  `Wesu_CreationTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Wesu_Status` enum('Waiting','Charged','Unpaid') NOT NULL,
  `Wesu_ProcessAttempt` int(2) NOT NULL DEFAULT '1',
  `Wesu_AuthorizerCode` varchar(45) NOT NULL,
  `Wesu_AuthorizerReason` varchar(45) NOT NULL,
  PRIMARY KEY (`Wesu_ID`),
  UNIQUE KEY `UNIQUE_Plan_ID_Subs_CurrentPeriodStart_Subs_CurrentPeriodEnd` (`Subs_ID`,`Wesu_CurrentPeriodStart`,`Wesu_CurrentPeriodEnd`),
  UNIQUE KEY `Mosu_ID_UNIQUE` (`Wesu_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `X_Reprocess_Yearly_Subscriptions`
--

DROP TABLE IF EXISTS `X_Reprocess_Yearly_Subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `X_Reprocess_Yearly_Subscriptions` (
  `Yesu_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Subs_ID` bigint(20) NOT NULL,
  `Plan_ID` bigint(20) NOT NULL,
  `Mcca_ID` bigint(20) NOT NULL,
  `Yesu_Quantity` decimal(20,0) NOT NULL,
  `Yesu_Amount` varchar(45) NOT NULL,
  `Yesu_CurrentPeriodStart` date NOT NULL,
  `Yesu_CurrentPeriodEnd` date NOT NULL,
  `Yesu_CreationTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Yesu_Status` enum('Waiting','Charged','Unpaid') NOT NULL,
  `Yesu_ProcessAttempt` int(2) NOT NULL DEFAULT '1',
  `Yesu_AuthorizerCode` varchar(45) NOT NULL,
  `Yesu_AuthorizerReason` varchar(45) NOT NULL,
  PRIMARY KEY (`Yesu_ID`),
  UNIQUE KEY `UNIQUE_Plan_ID_Subs_CurrentPeriodStart_Subs_CurrentPeriodEnd` (`Subs_ID`,`Yesu_CurrentPeriodStart`,`Yesu_CurrentPeriodEnd`),
  UNIQUE KEY `Mosu_ID_UNIQUE` (`Yesu_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `X_Weekly_Subscriptions`
--

DROP TABLE IF EXISTS `X_Weekly_Subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `X_Weekly_Subscriptions` (
  `Wesu_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Subs_ID` bigint(20) NOT NULL,
  `Plan_ID` bigint(20) NOT NULL,
  `Mcca_ID` bigint(20) NOT NULL,
  `Wesu_Quantity` decimal(20,0) NOT NULL,
  `Wesu_Amount` varchar(45) NOT NULL,
  `Wesu_CurrentPeriodStart` date NOT NULL,
  `Wesu_CurrentPeriodEnd` date NOT NULL,
  `Wesu_CreationTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Wesu_Status` enum('Waiting','Charged','Unpaid') NOT NULL,
  `Wesu_AuthorizerCode` varchar(45) DEFAULT NULL,
  `Wesu_AuthorizerReason` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Wesu_ID`),
  UNIQUE KEY `UNIQUE_Plan_ID_Subs_CurrentPeriodStart_Subs_CurrentPeriodEnd` (`Subs_ID`,`Wesu_CurrentPeriodStart`,`Wesu_CurrentPeriodEnd`),
  UNIQUE KEY `Mosu_ID_UNIQUE` (`Wesu_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6813 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IPG`.`Weekly_Subscriptions_AFTER_INSERT` AFTER INSERT ON `X_Weekly_Subscriptions` FOR EACH ROW
BEGIN
	UPDATE `IPG`.`Subscription`
	SET `Subs_CurrentChargeStatus` = 'onQueue',
		`Subs_CurrentChargeStatusDate` = NOW()
	WHERE `Subs_ID` = NEW.Subs_ID;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IPG`.`Weekly_Subscriptions_AFTER_UPDATE` AFTER UPDATE ON `X_Weekly_Subscriptions` FOR EACH ROW
BEGIN
	IF NEW.Wesu_Status = 'Charged' THEN
		UPDATE `IPG`.`Subscription`
		SET `Subs_CurrentPeriodStart` = NEW.Wesu_CurrentPeriodStart,
			`Subs_CurrentPeriodEnd` = NEW.Wesu_CurrentPeriodEnd,
            `Subs_Status` = 'Active',
            `Subs_CurrentChargeStatus` = 'toProcess',
            `Subs_CurrentChargeStatusDate` = NOW()
		WHERE `Subs_ID` = NEW.Subs_ID;
    END IF;
    
    IF NEW.Wesu_Status = 'Unpaid' THEN		
        UPDATE `IPG`.`Subscription`
		SET `Subs_Status` = 'Past_due',
        `Subs_CurrentChargeStatus` = 'onQueue',
        `Subs_CurrentChargeStatusDate` = NOW()
		WHERE `Subs_ID` = NEW.Subs_ID;
        
        INSERT INTO `IPG`.`Reprocess_Weekly_Subscriptions`(
		`Wesu_ID`,
		`Subs_ID`,
		`Plan_ID`,
		`Mcca_ID`,
		`Wesu_Quantity`,
		`Wesu_Amount`,
		`Wesu_CurrentPeriodStart`,
		`Wesu_CurrentPeriodEnd`,
		`Wesu_CreationTime`,
		`Wesu_Status`,
		`Wesu_AuthorizerCode`,
		`Wesu_AuthorizerReason`)
		VALUES
		(NEW.Wesu_ID,
		NEW.Subs_ID,
		NEW.Plan_ID,
		NEW.Mcca_ID,
		NEW.Wesu_Quantity,
		NEW.Wesu_Amount,
		NEW.Wesu_CurrentPeriodStart,
		NEW.Wesu_CurrentPeriodEnd,
		NEW.Wesu_CreationTime,
		NEW.Wesu_Status,
		NEW.Wesu_AuthorizerCode,
		NEW.Wesu_AuthorizerReason);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `X_Yearly_Subscriptions`
--

DROP TABLE IF EXISTS `X_Yearly_Subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `X_Yearly_Subscriptions` (
  `Yesu_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Subs_ID` bigint(20) NOT NULL,
  `Plan_ID` bigint(20) NOT NULL,
  `Mcca_ID` bigint(20) NOT NULL,
  `Yesu_Quantity` decimal(20,0) NOT NULL,
  `Yesu_Amount` varchar(45) NOT NULL,
  `Yesu_CurrentPeriodStart` date NOT NULL,
  `Yesu_CurrentPeriodEnd` date NOT NULL,
  `Yesu_CreationTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Yesu_Status` enum('Waiting','Charged','Unpaid') NOT NULL,
  `Yesu_AuthorizerCode` varchar(45) DEFAULT NULL,
  `Yesu_AuthorizerReason` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Yesu_ID`),
  UNIQUE KEY `UNIQUE_Plan_ID_Subs_CurrentPeriodStart_Subs_CurrentPeriodEnd` (`Subs_ID`,`Yesu_CurrentPeriodStart`,`Yesu_CurrentPeriodEnd`),
  UNIQUE KEY `Mosu_ID_UNIQUE` (`Yesu_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IPG`.`Yearly_Subscriptions_AFTER_INSERT` AFTER INSERT ON `X_Yearly_Subscriptions` FOR EACH ROW
BEGIN
	UPDATE `IPG`.`Subscription`
	SET `Subs_CurrentChargeStatus` = 'onQueue',
		`Subs_CurrentChargeStatusDate` = NOW()
	WHERE `Subs_ID` = NEW.Subs_ID;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IPG`.`Yearly_Subscriptions_AFTER_UPDATE` AFTER UPDATE ON `X_Yearly_Subscriptions` FOR EACH ROW
BEGIN
	IF NEW.Yesu_Status = 'Charged' THEN
		UPDATE `IPG`.`Subscription`
		SET `Subs_CurrentPeriodStart` = NEW.Yesu_CurrentPeriodStart,
			`Subs_CurrentPeriodEnd` = NEW.Yesu_CurrentPeriodEnd,
            `Subs_Status` = 'Active',
            `Subs_CurrentChargeStatus` = 'toProcess',
            `Subs_CurrentChargeStatusDate` = NOW()
		WHERE `Subs_ID` = NEW.Subs_ID;
    END IF;
    
    IF NEW.Yesu_Status = 'Unpaid' THEN		
        UPDATE `IPG`.`Subscription`
		SET `Subs_Status` = 'Past_due',
        `Subs_CurrentChargeStatus` = 'onQueue',
        `Subs_CurrentChargeStatusDate` = NOW()
		WHERE `Subs_ID` = NEW.Subs_ID;
        
        INSERT INTO `IPG`.`Reprocess_Yearly_Subscriptions`(
		`Yesu_ID`,
		`Subs_ID`,
		`Plan_ID`,
		`Mcca_ID`,
		`Yesu_Quantity`,
		`Yesu_Amount`,
		`Yesu_CurrentPeriodStart`,
		`Yesu_CurrentPeriodEnd`,
		`Yesu_CreationTime`,
		`Yesu_Status`,
		`Yesu_AuthorizerCode`,
		`Yesu_AuthorizerReason`)
		VALUES
		(NEW.Yesu_ID,
		NEW.Subs_ID,
		NEW.Plan_ID,
		NEW.Mcca_ID,
		NEW.Yesu_Quantity,
		NEW.Yesu_Amount,
		NEW.Yesu_CurrentPeriodStart,
		NEW.Yesu_CurrentPeriodEnd,
		NEW.Yesu_CreationTime,
		NEW.Yesu_Status,
		NEW.Yesu_AuthorizerCode,
		NEW.Yesu_AuthorizerReason);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `X_fechas`
--

DROP TABLE IF EXISTS `X_fechas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `X_fechas` (
  `inicial` varchar(45) DEFAULT NULL,
  `final` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Dumping events for database 'IPG'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `EVENT_EXECUTE_SUNSCRIPTIONS` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `EVENT_EXECUTE_SUNSCRIPTIONS` ON SCHEDULE EVERY '0:5' MINUTE_SECOND STARTS '2015-05-04 16:20:07' ENDS '2015-05-04 17:20:07' ON COMPLETION NOT PRESERVE DISABLE DO INSERT INTO `IPG`.`consultas` (`consulta`) VALUES (NOW()) */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'IPG'
--
/*!50003 DROP PROCEDURE IF EXISTS `A_CrearAmbiente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `A_CrearAmbiente`()
BEGIN
	
    DELETE FROM IPG.SubscriptionsToProcess;

	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-11', `Subs_TrialEnd` = '2015-05-11', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=329;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-27', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=330;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-13', `Subs_TrialEnd` = '2015-05-13', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=331;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-14', `Subs_TrialEnd` = '2015-05-29', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=332;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-11', `Subs_TrialEnd` = '2015-05-15', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=333;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-12', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=334;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-13', `Subs_TrialEnd` = '2015-05-28', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=335;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-14', `Subs_TrialEnd` = '2015-05-14', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=336;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-15', `Subs_TrialEnd` = '2015-05-25', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=337;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-12', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=338;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-13', `Subs_TrialEnd` = '2015-06-12', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=339;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-14', `Subs_TrialEnd` = '2015-05-14', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=340;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-15', `Subs_TrialEnd` = '2015-05-25', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=341;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-11', `Subs_TrialEnd` = '2015-05-11', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=342;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-20', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=343;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-12', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=344;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-13', `Subs_TrialEnd` = '2015-05-13', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=345;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-14', `Subs_TrialEnd` = '2015-05-18', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=346;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-15', `Subs_TrialEnd` = '2015-06-14', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=347;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-11', `Subs_TrialEnd` = '2015-05-11', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=348;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-12', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=349;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-13', `Subs_TrialEnd` = '2015-05-13', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=350;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-14', `Subs_TrialEnd` = '2015-05-14', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=351;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-15', `Subs_TrialEnd` = '2015-05-15', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=352;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-27', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=353;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-13', `Subs_TrialEnd` = '2015-05-17', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=354;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-15', `Subs_TrialEnd` = '2015-05-15', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=355;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-11', `Subs_TrialEnd` = '2015-05-11', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=356;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-27', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=357;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-11', `Subs_TrialEnd` = '2015-05-22', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=358;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-12', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=359;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-13', `Subs_TrialEnd` = '2015-05-13', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=360;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-14', `Subs_TrialEnd` = '2015-05-14', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=361;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-15', `Subs_TrialEnd` = '2015-05-15', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=362;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-11', `Subs_TrialEnd` = '2015-05-11', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=363;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-06-11', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=364;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-13', `Subs_TrialEnd` = '2015-05-13', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=365;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-15', `Subs_TrialEnd` = '2015-05-25', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=366;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-12', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=367;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-13', `Subs_TrialEnd` = '2015-05-13', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=368;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-14', `Subs_TrialEnd` = '2015-05-14', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=369;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-15', `Subs_TrialEnd` = '2015-05-15', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=370;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-11', `Subs_TrialEnd` = '2015-05-11', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=371;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-27', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=372;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-13', `Subs_TrialEnd` = '2015-05-13', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=373;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-14', `Subs_TrialEnd` = '2015-05-28', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=374;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-15', `Subs_TrialEnd` = '2015-05-25', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=375;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-12', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=376;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-14', `Subs_TrialEnd` = '2015-05-14', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=377;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-11', `Subs_TrialEnd` = '2015-05-11', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=378;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-22', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=379;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-13', `Subs_TrialEnd` = '2015-05-23', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=380;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-14', `Subs_TrialEnd` = '2015-05-14', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=381;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-15', `Subs_TrialEnd` = '2015-05-15', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=382;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-12', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=383;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-13', `Subs_TrialEnd` = '2015-05-13', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=384;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-11', `Subs_TrialEnd` = '2015-05-15', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=385;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-22', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=386;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-13', `Subs_TrialEnd` = '2015-05-13', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=387;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-15', `Subs_TrialEnd` = '2015-05-15', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=388;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-12', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=389;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-13', `Subs_TrialEnd` = '2015-05-25', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=390;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Trialing', `Subs_TrialStart` = '2015-05-14', `Subs_TrialEnd` = '2015-05-24', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=391;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-12', `Subs_TrialEnd` = '2015-05-12', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=392;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-13', `Subs_TrialEnd` = '2015-05-13', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=393;
	UPDATE `IPG`.`Subscription` SET `Subs_Status` = 'Pending', `Subs_TrialStart` = '2015-05-14', `Subs_TrialEnd` = '2015-05-14', `Subs_Start` = NULL, `Subs_CurrentPeriodStart` = NULL,  `Subs_CurrentPeriodEnd` = NULL, `Subs_CurrentChargeStatus` = '', `Subs_CurrentChargeStatusDate` = NULL, `Subs_StatusRow` = '0', `Subs_ProcessAttempt` = 0 WHERE Subs_ID=394;

	   
    SELECT A.Subs_ID, A.Plan_ID,B.Plan_Interval IInterval,B.Plan_IntervalCount IntCount,A.Subs_Status, /*A.Mcca_ID,A.Subs_Status, A.Subs_Quantity,*/
	A.Subs_TrialStart TStart, A.Subs_TrialEnd TEnd, A.Subs_Start SStart,
	A.Subs_CurrentPeriodStart PStart, A.Subs_CurrentPeriodEnd PeriodEnd, 
	A.Subs_CurrentChargeStatus ChargeStatus, A.Subs_CurrentChargeStatusDate ChargeStatusDate
	FROM IPG.Subscription A, IPG.Plan B
	WHERE A.Plan_ID = B.Plan_ID
    Order by Subs_Status, Plan_Interval;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `A_EjecutarProcesos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `A_EjecutarProcesos`()
BEGIN
	
    DELETE FROM IPG.SubscriptionsToProcess;
    
	CALL IPG.PROC_PROCESS_NEW_SUBSCRIPTION_TRIALING(@p2);select @p2;
	CALL IPG.PROC_PROCESS_NEW_SUBSCRIPTION_PENDING(@p2);select @p2;

	CALL IPG.PROC_PROCESS_DAILY_SUBSCRIPTION(@p2);select @p2;
	CALL IPG.PROC_PROCESS_WEEKLY_SUBSCRIPTION(@p2);select @p2;
	CALL IPG.PROC_PROCESS_MONTHLY_SUBSCRIPTION(@p2);select @p2;
	CALL IPG.PROC_PROCESS_YEARLY_SUBSCRIPTION(@p2);select @p2;

	/*CALL IPG.PROC_PROCESS_NEW_SUBSCRIPTION_TRIALING(@p2);select @p2;
	CALL IPG.PROC_PROCESS_NEW_SUBSCRIPTION_PENDING(@p2);select @p2;

	SELECT A.Subs_ID, A.Plan_ID,B.Plan_Interval IInterval,B.Plan_IntervalCount IntCount,
	A.Subs_TrialStart TStart, A.Subs_TrialEnd TEnd, A.Subs_Start SStart,
	A.Subs_CurrentPeriodStart PStart, A.Subs_CurrentPeriodEnd PeriodEnd, 
	A.Subs_CurrentChargeStatus ChargeStatus, A.Subs_CurrentChargeStatusDate ChargeStatusDate
	FROM IPG.Subscription A, IPG.Plan B
	WHERE A.Plan_ID = B.Plan_ID
	Order by Subs_Status, Plan_Interval;

	CALL IPG.PROC_PROCESS_DAILY_SUBSCRIPTION(@p2);select @p2;
	CALL IPG.PROC_PROCESS_WEEKLY_SUBSCRIPTION(@p2);select @p2;
	CALL IPG.PROC_PROCESS_MONTHLY_SUBSCRIPTION(@p2);select @p2;
	CALL IPG.PROC_PROCESS_YEARLY_SUBSCRIPTION(@p2);select @p2;

	CALL IPG.PROC_SEARCH_DAILY_SUBSCRIPTION();
	CALL IPG.PROC_SEARCH_WEEKLY_SUBSCRIPTION();
	CALL IPG.PROC_SEARCH_MONTHLY_SUBSCRIPTION();
	CALL IPG.PROC_SEARCH_YEARLY_SUBSCRIPTION();

	/*SELECT A.Subs_ID, A.Plan_ID,B.Plan_Interval IInterval,B.Plan_IntervalCount IntCount, 
	A.Subs_TrialStart TStart, A.Subs_TrialEnd TEnd, A.Subs_Start SStart,
	A.Subs_CurrentPeriodStart PStart, A.Subs_CurrentPeriodEnd PeriodEnd, 
	A.Subs_CurrentChargeStatus ChargeStatus, A.Subs_CurrentChargeStatusDate ChargeStatusDate
	FROM IPG.Subscription A, IPG.Plan B
	WHERE A.Plan_ID = B.Plan_ID
	Order by Subs_Status, Plan_Interval;*/

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `A_ListarTablas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `A_ListarTablas`()
BEGIN
	
	SELECT A.Subs_ID, A.Plan_ID,B.Plan_Interval IInterval,B.Plan_IntervalCount IntCount, /*A.Mcca_ID,A.Subs_Status, A.Subs_Quantity,*/
	A.Subs_TrialStart TStart, A.Subs_TrialEnd TEnd, A.Subs_Start SStart,
	A.Subs_CurrentPeriodStart PeriodStart, A.Subs_CurrentPeriodEnd PeriodEnd, 
	A.Subs_CurrentChargeStatus CStatus, A.Subs_CurrentChargeStatusDate ChargeStatusDate
	FROM IPG.Subscription A, IPG.Plan B
	WHERE A.Plan_ID = B.Plan_ID;
    
    SELECT A.Dasu_ID,A.Dasu_Quantity, A.Dasu_Amount, A.Dasu_Currency, C.Card_Number 
	FROM IPG.Daily_Subscriptions A, IPG.MerchantCustomerCard B, IPG.Card C
	WHERE A.Mcca_ID = B.Mcca_ID
	AND B.Card_ID = C.Card_ID;

	SELECT A.Mosu_ID,A.Mosu_Quantity, A.Mosu_Amount, C.Card_Number 
	FROM IPG.Monthly_Subscriptions A, IPG.MerchantCustomerCard B, IPG.Card C
	WHERE A.Mcca_ID = B.Mcca_ID
	AND B.Card_ID = C.Card_ID;

	SELECT A.Wesu_ID, A.Wesu_Quantity, A.Wesu_Amount, C.Card_Number 
	FROM IPG.Weekly_Subscriptions A, IPG.MerchantCustomerCard B, IPG.Card C
	WHERE A.Mcca_ID = B.Mcca_ID
	AND B.Card_ID = C.Card_ID;

	SELECT A.Yesu_ID, A.Yesu_Quantity, A.Yesu_Amount, C.Card_Number 
	FROM IPG.Yearly_Subscriptions A, IPG.MerchantCustomerCard B, IPG.Card C
	WHERE A.Mcca_ID = B.Mcca_ID
	AND B.Card_ID = C.Card_ID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_CANCEL_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_CANCEL_SUBSCRIPTION`(
INOUT `P_Subs_ID`	bigint(20))
BEGIN	
    UPDATE `IPG`.`Subscription`
	SET
	`Subs_Status` = 'Canceled'	
	WHERE `Subs_ID` = P_Subs_ID;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_DELETE_MERCHANT_DOCUMENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_DELETE_MERCHANT_DOCUMENT`(
IN P_Medo_ID bigint(20))
BEGIN
	DELETE FROM `IPG`.`MerchantDocuments` WHERE Medo_ID = P_Medo_ID;
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_EXECUTE_SUBSCRIPTIONS_PROCESS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_EXECUTE_SUBSCRIPTIONS_PROCESS`(
OUT P1 longtext,
OUT P2 longtext,
OUT P3 longtext,
OUT P4 longtext,
OUT P5 longtext,
OUT P6 longtext)
BEGIN
	
    DELETE FROM IPG.SubscriptionsToProcess;
    
    CALL IPG.PROC_PROCESS_NEW_SUBSCRIPTION_TRIALING(P1);
    -- SELECT @P1;
    
	CALL IPG.PROC_PROCESS_NEW_SUBSCRIPTION_PENDING(P2);
    -- SELECT @P1;

	CALL IPG.PROC_PROCESS_DAILY_SUBSCRIPTION(P3);
    -- SELECT @P1;
    
	CALL IPG.PROC_PROCESS_WEEKLY_SUBSCRIPTION(P4);
    -- SELECT @P1;
    
	CALL IPG.PROC_PROCESS_MONTHLY_SUBSCRIPTION(P5);
    -- SELECT @P1;
    
	CALL IPG.PROC_PROCESS_YEARLY_SUBSCRIPTION(P6);
    -- SELECT @P1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_PROCESS_DAILY_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_PROCESS_DAILY_SUBSCRIPTION`(
OUT P_Answer longtext)
BEGIN    
    -- Declaración de variables para el cursor
    DECLARE done INT DEFAULT FALSE;
    DECLARE VAR_Subs_ID BIGINT(20);
	DECLARE VAR_Plan_ID BIGINT(20);
    DECLARE VAR_Merc_ID BIGINT(20);    
    DECLARE VAR_Mcca_ID BIGINT(20);
	DECLARE VAR_Subs_Quantity  INT(4);
    DECLARE VAR_Plan_Amount DECIMAL(20,0);
    DECLARE VAR_Plan_Currency CHAR(3);    
	DECLARE VAR_Subs_CurrentPeriodStart DATE;
	DECLARE VAR_Subs_CurrentPeriodEnd DATE;
    DECLARE VAR_Subs_ProcessAttempt INT(2);
	DECLARE VAR_Plan_Interval ENUM('Day','Week','Month','Year');
	DECLARE VAR_Plan_IntervalCount INT(4);
	DECLARE VAR_DiasVencido INT(4);
	DECLARE VAR_DiasVencidos INT(4);
	DECLARE VAR_CobrosCargar INT(4);
    DECLARE i INT DEFAULT 0;
    DECLARE countRowSubscriptions INT DEFAULT 0;
    DECLARE fecha DATE DEFAULT CURDATE();
    DECLARE affectedRow longtext DEFAULT ' ';
    DECLARE affecteds INT DEFAULT 0;
    DECLARE SW INT DEFAULT 0;
    
    DECLARE Subscriptions CURSOR FOR (
							SELECT A.Subs_ID,
								A.Plan_ID,
                                B.Merc_ID,
								A.Mcca_ID,
								A.Subs_Quantity,
								A.Subs_CurrentPeriodStart,
                                A.Subs_CurrentPeriodEnd,
                                A.Subs_ProcessAttempt,
								B.Plan_Interval, 
                                B.Plan_IntervalCount, 
                                B.Plan_Amount,
                                B.Plan_Currency,
							TIMESTAMPDIFF(DAY,A.Subs_CurrentPeriodEnd,fecha) AS DiasVencido,
							(TIMESTAMPDIFF(DAY,A.Subs_CurrentPeriodEnd,fecha)) DiasVencidos, 
							((TIMESTAMPDIFF(DAY,A.Subs_CurrentPeriodEnd,fecha) DIV B.Plan_IntervalCount) + 1) AS CobrosCargar
                            -- ((TIMESTAMPDIFF(DAY,A.Subs_CurrentPeriodEnd,fecha) DIV B.Plan_IntervalCount)) AS CobrosCargar
							FROM IPG.Subscription A, IPG.Plan B 
							WHERE A.Plan_ID = B.Plan_ID
							AND B.Plan_Interval = 'DAY'
                            AND A.Subs_CurrentChargeStatus <> 'onQueue'
							AND TIMESTAMPDIFF(DAY,A.Subs_CurrentPeriodEnd,fecha) > 0);
                            
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
	 BEGIN
		GET DIAGNOSTICS CONDITION 1
			@sqlstate = RETURNED_SQLSTATE, 
			@errno = MYSQL_ERRNO, 
			@text = MESSAGE_TEXT,
			@schemaName = SCHEMA_NAME, @tableName = TABLE_NAME;
			SET @full_error = CONCAT("PROC_PROCESS_DAILY_SUBSCRIPTION: " , "ERROR ", @errno, " (", @sqlstate, "): ", @text);			
			SELECT @full_error;
		-- EXCEPTION
	 ROLLBACK;
     CALL IPG.PROC_SAVE_LOG('PROC_PROCESS_DAILY_SUBSCRIPTION', @full_error);
     SET P_Answer = @full_error;
	END;
    
    DECLARE EXIT HANDLER FOR SQLWARNING
	 BEGIN
		GET DIAGNOSTICS CONDITION 1
			@sqlstate = RETURNED_SQLSTATE, 
			@errno = MYSQL_ERRNO, 
			@text = MESSAGE_TEXT,
			@schemaName = SCHEMA_NAME, @tableName = TABLE_NAME;
			SET @full_error = CONCAT("PROC_PROCESS_DAILY_SUBSCRIPTION: " , "ERROR ", @errno, " (", @sqlstate, "): ", @text);			
			SELECT @full_error;
	 -- WARNING
		 ROLLBACK;
         CALL IPG.PROC_SAVE_LOG('PROC_PROCESS_DAILY_SUBSCRIPTION', @full_error);
         SET P_Answer = @full_error;
	END;
    START TRANSACTION;
    OPEN Subscriptions;
     -- Comenzamos nuestro bucle de lectura
	loop1: LOOP
		-- Obtenemos la primera fila en la variables correspondientes
		FETCH Subscriptions INTO    VAR_Subs_ID,
									VAR_Plan_ID,
                                    VAR_Merc_ID,                                    
                                    VAR_Mcca_ID,
                                    VAR_Subs_Quantity,                                    
									VAR_Subs_CurrentPeriodStart,
									VAR_Subs_CurrentPeriodEnd,
                                    VAR_Subs_ProcessAttempt,
									VAR_Plan_Interval,
									VAR_Plan_IntervalCount,
                                    VAR_Plan_Amount,
                                    VAR_Plan_Currency,
									VAR_DiasVencido,
									VAR_DiasVencidos, 
									VAR_CobrosCargar;
        -- Si el cursor se quedó sin elementos,	entonces nos salimos del bucle
		IF done THEN
			LEAVE loop1;
		END IF;
        
        /*Esta validacion es necesaria para los planes diarios con intervalos solo de un dia, esto evita que se cobre*/
        /*un dia por adelantado, esto no aplica para los planes con mas de un dia de diferencia en sus intervalos*/
        IF VAR_Plan_IntervalCount = 1 THEN 
			SET VAR_CobrosCargar = VAR_CobrosCargar - 1;
        END IF;
        
        SET i = 1;
		WHILE i <= VAR_CobrosCargar DO
	
		-- SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_TrialEnd + INTERVAL VAR_Plan_IntervalCount WEEK;
        SET VAR_Subs_CurrentPeriodStart = VAR_Subs_CurrentPeriodEnd + INTERVAL 1 DAY;
        -- SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_CurrentPeriodEnd + INTERVAL (VAR_Plan_IntervalCount*7) DAY;
        SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_CurrentPeriodEnd + INTERVAL VAR_Plan_IntervalCount DAY;
        
            INSERT INTO `IPG`.`SubscriptionsToProcess`
				(`Subs_ID`,
				`Plan_ID`,
                `Merc_ID`,
				`Mcca_ID`,
				`Supr_Quantity`,
                `Supr_Amount`,
                `Supr_Currency`,
				`Supr_CurrentPeriodStart`,
				`Supr_CurrentPeriodEnd`,
                `Supr_ProcessAttempt`,
				`Supr_CreationTime`)
				VALUES
				(VAR_Subs_ID,
				VAR_Plan_ID,
                VAR_Merc_ID,
				VAR_Mcca_ID,
				VAR_Subs_Quantity,
                VAR_Plan_Amount,
                VAR_Plan_Currency,
				VAR_Subs_CurrentPeriodStart,
				VAR_Subs_CurrentPeriodEnd,
                VAR_Subs_ProcessAttempt,
				NOW());
			
            SET affecteds = affecteds + ROW_COUNT();
            
            SET i= i + 1;
            
		END WHILE;        
        
        IF affecteds > 0 THEN  -- Si fue generado al menos un registro
			SET countRowSubscriptions =  countRowSubscriptions + 1;
            IF SW = 0 THEN -- Si es el primer registro generado
				SET affectedRow =  CONCAT('{"R":"',VAR_Subs_ID ,'"}');
                SET SW = 1;
			ELSE -- Despues del primer registro modificado
				SET affectedRow =  CONCAT('{"R":"',VAR_Subs_ID ,'"},', affectedRow);
			END IF; 
		END IF;
        
        SET affecteds = 0;        
        
	END LOOP loop1;
     -- Cerramos el cursor
	CLOSE Subscriptions;
    
    -- Genera un mensaje de tipo JSON para guardar en la base de datos todo los resultados obtenidos
    -- de la ejecucion del SP
    SET P_Answer = CONCAT('{ "AffectedRowsUpdate":"',countRowSubscriptions,'","Description":"New Subscriptions on queue to be processed","Records": [',affectedRow,']}');
    -- SET P_Answer = CONCAT('{ "AffectedRowsUpdate":"',countRowSubscriptions,'"}');
    CALL IPG.PROC_SAVE_BBPROCESSLOG('Subscription','PROC_PROCESS_DAILY_SUBSCRIPTION',P_Answer);
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_PROCESS_MONTHLY_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_PROCESS_MONTHLY_SUBSCRIPTION`(
OUT P_Answer longtext)
BEGIN    
    -- Declaración de variables para el cursor
    DECLARE done INT DEFAULT FALSE;
    DECLARE VAR_Subs_ID BIGINT(20);
	DECLARE VAR_Plan_ID BIGINT(20);
    DECLARE VAR_Merc_ID BIGINT(20);    
    DECLARE VAR_Mcca_ID BIGINT(20);
	DECLARE VAR_Subs_Quantity  INT(4);
    DECLARE VAR_Plan_Amount DECIMAL(20,0);
    DECLARE VAR_Plan_Currency CHAR(3);    
	DECLARE VAR_Subs_CurrentPeriodStart DATE;
	DECLARE VAR_Subs_CurrentPeriodEnd DATE;
    DECLARE VAR_Subs_ProcessAttempt INT(2);
	DECLARE VAR_Plan_Interval ENUM('Day','Week','Month','Year');
	DECLARE VAR_Plan_IntervalCount INT(4);
	DECLARE VAR_DiasVencido INT(4);
	DECLARE VAR_MesesVencidos INT(4);
	DECLARE VAR_CobrosCargar INT(4);
    DECLARE i INT DEFAULT 0;
    DECLARE countRowSubscriptions INT DEFAULT 0;
    DECLARE fecha DATE DEFAULT CURDATE();
    DECLARE affectedRow longtext DEFAULT ' ';
    DECLARE affecteds INT DEFAULT 0;
    DECLARE SW INT DEFAULT 0;
    
    DECLARE Subscriptions CURSOR FOR (
							SELECT A.Subs_ID,
								A.Plan_ID,
                                B.Merc_ID,
								A.Mcca_ID,
								A.Subs_Quantity,
								A.Subs_CurrentPeriodStart,
                                A.Subs_CurrentPeriodEnd,
                                A.Subs_ProcessAttempt,
								B.Plan_Interval, 
                                B.Plan_IntervalCount, 
                                B.Plan_Amount,
                                B.Plan_Currency,
							TIMESTAMPDIFF(DAY,A.Subs_CurrentPeriodEnd,fecha) AS DiasVencido,
							(TIMESTAMPDIFF(MONTH,A.Subs_CurrentPeriodEnd,fecha)) MesesVencidos, 
							((TIMESTAMPDIFF(MONTH,A.Subs_CurrentPeriodEnd,fecha) DIV B.Plan_IntervalCount) + 1) AS CobrosCargar
							FROM IPG.Subscription A, IPG.Plan B 
							WHERE A.Plan_ID = B.Plan_ID
							AND B.Plan_Interval = 'MONTH'
                            AND A.Subs_CurrentChargeStatus <> 'onQueue'
							AND TIMESTAMPDIFF(DAY,A.Subs_CurrentPeriodEnd,fecha) > 0);
                            
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
	 BEGIN
		GET DIAGNOSTICS CONDITION 1
			@sqlstate = RETURNED_SQLSTATE, 
			@errno = MYSQL_ERRNO, 
			@text = MESSAGE_TEXT,
			@schemaName = SCHEMA_NAME, @tableName = TABLE_NAME;
			SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);			
			SELECT @full_error;
		-- EXCEPTION
	 ROLLBACK;
     CALL IPG.PROC_SAVE_LOG('PROC_PROCESS_MONTHLY_SUBSCRIPTION', @full_error);
     SET P_Answer = @full_error;
	END;
    
    DECLARE EXIT HANDLER FOR SQLWARNING
	 BEGIN
		GET DIAGNOSTICS CONDITION 1
			@sqlstate = RETURNED_SQLSTATE, 
			@errno = MYSQL_ERRNO, 
			@text = MESSAGE_TEXT,
			@schemaName = SCHEMA_NAME, @tableName = TABLE_NAME;
			SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);			
			SELECT @full_error;
	 -- WARNING
		 ROLLBACK;
         CALL IPG.PROC_SAVE_LOG('PROC_PROCESS_MONTHLY_SUBSCRIPTION', @full_error);
         SET P_Answer = @full_error;
	END;
    START TRANSACTION;
    OPEN Subscriptions;
     -- Comenzamos nuestro bucle de lectura
	loop1: LOOP
		-- Obtenemos la primera fila en la variables correspondientes
		FETCH Subscriptions INTO    VAR_Subs_ID,
									VAR_Plan_ID,
                                    VAR_Merc_ID,                                    
                                    VAR_Mcca_ID,
                                    VAR_Subs_Quantity,                                    
									VAR_Subs_CurrentPeriodStart,
									VAR_Subs_CurrentPeriodEnd,
                                    VAR_Subs_ProcessAttempt,
									VAR_Plan_Interval,
									VAR_Plan_IntervalCount,
                                    VAR_Plan_Amount,
                                    VAR_Plan_Currency,
									VAR_DiasVencido,
									VAR_MesesVencidos, 
									VAR_CobrosCargar;
        -- Si el cursor se quedó sin elementos,	entonces nos salimos del bucle
		IF done THEN
			LEAVE loop1;
		END IF;
        
        SET i = 1;
		WHILE i <= VAR_CobrosCargar DO
	
		-- SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_TrialEnd + INTERVAL VAR_Plan_IntervalCount WEEK;
        SET VAR_Subs_CurrentPeriodStart = VAR_Subs_CurrentPeriodEnd + INTERVAL 1 DAY;
        -- SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_CurrentPeriodEnd + INTERVAL (VAR_Plan_IntervalCount*7) DAY;
        SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_CurrentPeriodEnd + INTERVAL VAR_Plan_IntervalCount MONTH;
        
            INSERT INTO `IPG`.`SubscriptionsToProcess`
				(`Subs_ID`,
				`Plan_ID`,
                `Merc_ID`,
				`Mcca_ID`,
				`Supr_Quantity`,
                `Supr_Amount`,
                `Supr_Currency`,
				`Supr_CurrentPeriodStart`,
				`Supr_CurrentPeriodEnd`,
                `Supr_ProcessAttempt`,
				`Supr_CreationTime`)
				VALUES
				(VAR_Subs_ID,
				VAR_Plan_ID,
                VAR_Merc_ID,
				VAR_Mcca_ID,
				VAR_Subs_Quantity,
                VAR_Plan_Amount,
                VAR_Plan_Currency,
				VAR_Subs_CurrentPeriodStart,
				VAR_Subs_CurrentPeriodEnd,
                VAR_Subs_ProcessAttempt,
				NOW());
			
            SET affecteds = affecteds + ROW_COUNT();
            
            SET i= i + 1;
            
		END WHILE;        
        
        IF affecteds > 0 THEN  -- Si fue generado al menos un registro
			SET countRowSubscriptions =  countRowSubscriptions + 1;
            IF SW = 0 THEN -- Si es el primer registro generado
				SET affectedRow =  CONCAT('{"R":"',VAR_Subs_ID ,'"}');
                SET SW = 1;
			ELSE -- Despues del primer registro modificado
				SET affectedRow =  CONCAT('{"R":"',VAR_Subs_ID ,'"},', affectedRow);
			END IF; 
		END IF;
        
        SET affecteds = 0;        
        
	END LOOP loop1;
     -- Cerramos el cursor
	CLOSE Subscriptions;
    
    -- Genera un mensaje de tipo JSON para guardar en la base de datos todo los resultados obtenidos
    -- de la ejecucion del SP
    SET P_Answer = CONCAT('{ "AffectedRowsUpdate":"',countRowSubscriptions,'","Description":"New Subscriptions on queue to be processed","Records": [',affectedRow,']}');
    -- SET P_Answer = CONCAT('{ "AffectedRowsUpdate":"',countRowSubscriptions,'"}');
    CALL IPG.PROC_SAVE_BBPROCESSLOG('Subscription','PROC_PROCESS_MONTHLY_SUBSCRIPTION',P_Answer);
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_PROCESS_NEW_SUBSCRIPTION_PENDING` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_PROCESS_NEW_SUBSCRIPTION_PENDING`(
OUT P_Answer longtext)
BEGIN	
    -- Declaración de variables para el cursor
	DECLARE done INT DEFAULT FALSE;
    DECLARE VAR_Subs_ID BIGINT(20);
    DECLARE VAR_Plan_ID BIGINT(20);
	DECLARE VAR_Subs_TrialEnd DATE;
    DECLARE VAR_Subs_Start DATE;
    DECLARE VAR_Subs_CurrentPeriodEnd DATE;    
    DECLARE VAR_Plan_Interval ENUM('Day','Week','Month','Year');
    DECLARE VAR_Plan_IntervalCount INT(4);
    DECLARE affectedRow longtext DEFAULT ' ';   
    
    DECLARE Pending_Subscriptions CURSOR FOR     
									(SELECT  A.Subs_ID, B.Plan_ID, Subs_TrialEnd, B.Plan_Interval, B.Plan_IntervalCount
									FROM IPG.Subscription A, IPG.Plan B
									WHERE A.Subs_TrialEnd <= CURDATE()
									AND A.Subs_StatusRow = '0'
									AND A.Subs_Status IN ('Pending')
									AND A.Plan_ID = B.Plan_ID);
	
    -- Declaración de un manejador de error tipo NOT FOUND
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    SET @countRowUpdatedSubscriptions = 0;
    
    OPEN Pending_Subscriptions;
    
    -- Comenzamos nuestro bucle de lectura
	loop1: LOOP
		
		-- Obtenemos la primera fila en la variables correspondientes
		FETCH Pending_Subscriptions INTO VAR_Subs_ID, VAR_Plan_ID, VAR_Subs_TrialEnd, VAR_Plan_Interval, VAR_Plan_IntervalCount;
        -- Si el cursor ase quedó sin elementos,	entonces nos salimos del bucle
		IF done THEN
		LEAVE loop1;
		END IF;
        
        IF VAR_Plan_Interval = 'Day' THEN
			SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_TrialEnd + INTERVAL VAR_Plan_IntervalCount DAY;
        END IF;
        
        IF VAR_Plan_Interval = 'Week' THEN
			SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_TrialEnd + INTERVAL (VAR_Plan_IntervalCount*7) DAY;
        END IF;
        
        IF VAR_Plan_Interval = 'Month' THEN
			SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_TrialEnd + INTERVAL VAR_Plan_IntervalCount MONTH;
        END IF;
        
        IF VAR_Plan_Interval = 'Year' THEN 
			SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_TrialEnd + INTERVAL VAR_Plan_IntervalCount YEAR;
        END IF;
        
        -- Aca van todas las operaciones a aplicar
        /*
		INSERT INTO `IPG`.`consultas` (`consulta`)
		VALUES (CONCAT(VAR_Subs_ID,'<-->',VAR_Plan_ID,'<-->',(Subs_TrialEnd + INTERVAL 1 DAY),'<-->',(Subs_TrialEnd + INTERVAL 1 DAY),'<-->',VAR_Subs_CurrentPeriodEnd,'<-->','Active','<-->', VAR_Plan_Interval,'<-->', VAR_Plan_IntervalCount));        
        */
        
			UPDATE `IPG`.`Subscription`
			SET
			`Subs_Start` = Subs_TrialEnd,
			`Subs_Status` = 'Active',
			-- `Subs_CurrentPeriodStart` = Subs_TrialEnd,
			-- `Subs_CurrentPeriodEnd` = (VAR_Subs_CurrentPeriodEnd - INTERVAL 1 DAY),            
            `Subs_CurrentPeriodStart` = Subs_TrialStart - INTERVAL 1 DAY,
			`Subs_CurrentPeriodEnd` = Subs_TrialEnd - INTERVAL 1 DAY,            
			`Subs_StatusRow` = '1'
            -- `Subs_CurrentChargeStatus` = 'toProcessFirst',
            -- `Subs_CurrentChargeStatusDate` = NOW()
			WHERE `Subs_ID` = VAR_Subs_ID;
			SET @affecteds = ROW_COUNT();
            SET @countRowUpdatedSubscriptions =  @countRowUpdatedSubscriptions + @affecteds;
            
            -- Genera un mensaje de tipo JSON para guardar un registro de todos las subscripciones que se vieron afectadas
            IF @affecteds > 0 THEN  -- Si fue modificado un registro
				IF affectedRow = ' ' THEN -- Si es el primer registro modificado
					SET affectedRow =  CONCAT('{"R":"',VAR_Subs_ID ,'"}');
				ELSE -- Despues del primer registro modificado
					SET affectedRow =  CONCAT('{"R":"',VAR_Subs_ID ,'"},', affectedRow);
				END IF;
			END IF;
        
        END LOOP loop1;
        
        -- Cerramos el cursor
		CLOSE Pending_Subscriptions;
        
        -- SET P_Answer = CONCAT('{ "AffectedRowsUpdate":"',@countRowUpdatedSubscriptions,'","Description":"New Subscriptions going from Pending to Active"}');
        SET P_Answer = CONCAT('{"PROC_PROCESS_NEW_SUBSCRIPTION_PENDING":[{"AffectedRowsUpdate":"',@countRowUpdatedSubscriptions,'","Description":"New Subscriptions going from Pending to Active","Records": [',affectedRow,']}]}');
		CALL IPG.PROC_SAVE_BBPROCESSLOG('Subscription','PROC_PROCESS_NEW_SUBSCRIPTION_PENDING',P_Answer);
        

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_PROCESS_NEW_SUBSCRIPTION_TRIALING` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_PROCESS_NEW_SUBSCRIPTION_TRIALING`(
OUT P_Answer longtext)
BEGIN	
    -- Declaración de variables para el cursor
	DECLARE done INT DEFAULT FALSE;
    DECLARE VAR_Subs_ID BIGINT(20);
    DECLARE VAR_Plan_ID BIGINT(20);
	DECLARE VAR_Subs_TrialEnd DATE;
    DECLARE VAR_Subs_Start DATE;
    DECLARE VAR_Subs_CurrentPeriodEnd DATE;    
    DECLARE VAR_Plan_Interval ENUM('Day','Week','Month','Year');
    DECLARE VAR_Plan_IntervalCount INT(4);
    DECLARE affectedRow longtext DEFAULT ' ';    
    
    DECLARE Trialing_Subscriptions CURSOR FOR     
									(SELECT  A.Subs_ID, B.Plan_ID, Subs_TrialEnd, B.Plan_Interval, B.Plan_IntervalCount
									FROM IPG.Subscription A, IPG.Plan B
									WHERE A.Subs_TrialEnd < CURDATE()
									AND A.Subs_StatusRow = '0'
									AND A.Subs_Status IN ('Trialing')
									AND A.Plan_ID = B.Plan_ID);
	
    -- Declaración de un manejador de error tipo NOT FOUND
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    SET @countRowUpdatedSubscriptions = 0;
    
    OPEN Trialing_Subscriptions;
    
    -- Comenzamos nuestro bucle de lectura
	loop1: LOOP
		
		-- Obtenemos la primera fila en la variables correspondientes
		FETCH Trialing_Subscriptions INTO VAR_Subs_ID, VAR_Plan_ID, VAR_Subs_TrialEnd, VAR_Plan_Interval, VAR_Plan_IntervalCount;
        -- Si el cursor ase quedó sin elementos,	entonces nos salimos del bucle
		IF done THEN
		LEAVE loop1;
		END IF;
        
        IF VAR_Plan_Interval = 'Day' THEN
			SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_TrialEnd + INTERVAL VAR_Plan_IntervalCount DAY;
        END IF;
        
        IF VAR_Plan_Interval = 'Week' THEN
			SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_TrialEnd + INTERVAL (VAR_Plan_IntervalCount*7) DAY;
        END IF;
        
        IF VAR_Plan_Interval = 'Month' THEN
			SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_TrialEnd + INTERVAL VAR_Plan_IntervalCount MONTH;
        END IF;
        
        IF VAR_Plan_Interval = 'Year' THEN 
			SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_TrialEnd + INTERVAL VAR_Plan_IntervalCount YEAR;
        END IF;
        
        -- Aca van todas las operaciones a aplicar
        /*
		INSERT INTO `IPG`.`consultas` (`consulta`)
		VALUES (CONCAT(VAR_Subs_ID,'<-->',VAR_Plan_ID,'<-->',(Subs_TrialEnd + INTERVAL 1 DAY),'<-->',(Subs_TrialEnd + INTERVAL 1 DAY),'<-->',VAR_Subs_CurrentPeriodEnd,'<-->','Active','<-->', VAR_Plan_Interval,'<-->', VAR_Plan_IntervalCount));        
        */        
			UPDATE `IPG`.`Subscription`
			SET
			`Subs_Start` = (Subs_TrialEnd + INTERVAL 1 DAY),
			`Subs_Status` = 'Active',
			-- `Subs_CurrentPeriodStart` = (Subs_TrialEnd + INTERVAL 1 DAY),
			-- `Subs_CurrentPeriodEnd` = VAR_Subs_CurrentPeriodEnd,            
            `Subs_CurrentPeriodStart` = Subs_TrialStart,
			`Subs_CurrentPeriodEnd` = Subs_TrialEnd,
            
			`Subs_StatusRow` = '1'
			WHERE `Subs_ID` = VAR_Subs_ID;
			SET @affecteds = ROW_COUNT();
            SET @countRowUpdatedSubscriptions =  @countRowUpdatedSubscriptions + @affecteds;
            
            -- Genera un mensaje de tipo JSON para guardar un registro de todos las subscripciones que se vieron afectadas
            IF @affecteds > 0 THEN  -- Si fue modificado un registro
				IF affectedRow = ' ' THEN -- Si es el primer registro modificado
					SET affectedRow =  CONCAT('{"R":"',VAR_Subs_ID ,'"}');
				ELSE -- Despues del primer registro modificado
					SET affectedRow =  CONCAT('{"R":"',VAR_Subs_ID ,'"},', affectedRow);
				END IF;
			END IF;
                        
        END LOOP loop1;
        
        -- Cerramos el cursor
		CLOSE Trialing_Subscriptions;
        
        SET P_Answer = CONCAT('{"PROC_PROCESS_NEW_SUBSCRIPTION_TRIALING":[{"AffectedRowsUpdate":"',@countRowUpdatedSubscriptions,'","Description":"New Subscriptions going from Trialing to Active","Records": [',affectedRow,']}]}');
		CALL IPG.PROC_SAVE_BBPROCESSLOG('Subscription','PROC_PROCESS_NEW_SUBSCRIPTION_TRIALING',P_Answer);
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_PROCESS_SUBSCRIPTION_CALCULATE_PERIODS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_PROCESS_SUBSCRIPTION_CALCULATE_PERIODS`(
OUT P_Answer longtext)
BEGIN
	-- Declaración de variables para el cursor
	DECLARE done INT DEFAULT FALSE;
    DECLARE VAR_Subs_ID BIGINT(20);
    DECLARE VAR_Plan_ID BIGINT(20);
    DECLARE VAR_Plan_Interval ENUM('Day','Week','Month','Year');
    DECLARE VAR_Plan_IntervalCount INT(4);
    DECLARE VAR_Subs_CurrentPeriodStart DATE;
    DECLARE VAR_Subs_CurrentPeriodEnd DATE;
    
    DECLARE Subscriptions CURSOR FOR     
									(SELECT A.Subs_ID, A.Plan_ID, B.Plan_Interval,B.Plan_IntervalCount 
									FROM IPG.Subscription A, IPG.Plan B
									WHERE A.Subs_Status = 'Active'
                                    AND `Subs_CurrentChargeStatus` NOT IN ('toProcess', 'toProcessFirst')
									AND A.Subs_CurrentPeriodEnd = (CURDATE()- INTERVAL 1 DAY)
									AND A.Plan_ID = B.Plan_ID);
    
	-- Declaración de un manejador de error tipo NOT FOUND
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;    
    
    SET @countRowUpdatedSubscriptions = 0;
    
    OPEN Subscriptions;
    
    -- Comenzamos nuestro bucle de lectura
	loop1: LOOP
    
		FETCH Subscriptions INTO VAR_Subs_ID, VAR_Plan_ID, VAR_Plan_Interval, VAR_Plan_IntervalCount;
        -- Si el cursor ase quedó sin elementos,	entonces nos salimos del bucle
		IF done THEN
			LEAVE loop1;
		END IF;
    
		IF VAR_Plan_Interval = 'Day' THEN
			SET VAR_Subs_CurrentPeriodEnd = CURDATE() + INTERVAL VAR_Plan_IntervalCount DAY;
        END IF;
        
        IF VAR_Plan_Interval = 'Week' THEN
			SET VAR_Subs_CurrentPeriodEnd = CURDATE() + INTERVAL (VAR_Plan_IntervalCount*7) DAY;
        END IF;
        
        IF VAR_Plan_Interval = 'Month' THEN
			SET VAR_Subs_CurrentPeriodEnd = CURDATE() + INTERVAL VAR_Plan_IntervalCount MONTH;
        END IF;
        
        IF VAR_Plan_Interval = 'Year' THEN 
			SET VAR_Subs_CurrentPeriodEnd = CURDATE() + INTERVAL VAR_Plan_IntervalCount YEAR;
        END IF;
    
		UPDATE `IPG`.`Subscription`
		SET `Subs_CurrentPeriodStart` = CURDATE(),
			`Subs_CurrentPeriodEnd` = VAR_Subs_CurrentPeriodEnd,
            `Subs_CurrentChargeStatus` = 'toProcess',
            `Subs_CurrentChargeStatusDate` = NOW()
		WHERE `Subs_ID` = VAR_Subs_ID;
        SET @countRowUpdatedSubscriptions =  @countRowUpdatedSubscriptions + ROW_COUNT();    
    
    END LOOP loop1;
        -- Cerramos el cursor
	CLOSE Subscriptions;
    
    SET P_Answer = CONCAT('{ "AffectedRowsUpdate":"',@countRowUpdatedSubscriptions,'"}');
    CALL IPG.PROC_SAVE_BBPROCESSLOG('Subscription','PROC_PROCESS_SUBSCRIPTION_CALCULATE_PERIODS',P_Answer);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_PROCESS_WEEKLY_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_PROCESS_WEEKLY_SUBSCRIPTION`(
OUT P_Answer longtext)
BEGIN    
    -- Declaración de variables para el cursor
    DECLARE done INT DEFAULT FALSE;
    DECLARE VAR_Subs_ID BIGINT(20);
	DECLARE VAR_Plan_ID BIGINT(20);
    DECLARE VAR_Merc_ID BIGINT(20);    
    DECLARE VAR_Mcca_ID BIGINT(20);
	DECLARE VAR_Subs_Quantity  INT(4);
    DECLARE VAR_Plan_Amount DECIMAL(20,0);
    DECLARE VAR_Plan_Currency CHAR(3);    
	DECLARE VAR_Subs_CurrentPeriodStart DATE;
	DECLARE VAR_Subs_CurrentPeriodEnd DATE;
    DECLARE VAR_Subs_ProcessAttempt INT(2);
	DECLARE VAR_Plan_Interval ENUM('Day','Week','Month','Year');
	DECLARE VAR_Plan_IntervalCount INT(4);
	DECLARE VAR_DiasVencido INT(4);
	DECLARE VAR_SemanasVencidas INT(4);
	DECLARE VAR_CobrosCargar INT(4);
    DECLARE i INT DEFAULT 0;
    DECLARE countRowSubscriptions INT DEFAULT 0;
    DECLARE fecha DATE DEFAULT CURDATE();
    DECLARE affectedRow longtext DEFAULT ' ';
    DECLARE affecteds INT DEFAULT 0;
    DECLARE SW INT DEFAULT 0;
    
    DECLARE Subscriptions CURSOR FOR (
							SELECT A.Subs_ID,
								A.Plan_ID,
                                B.Merc_ID,
								A.Mcca_ID,
								A.Subs_Quantity,
								A.Subs_CurrentPeriodStart,
                                A.Subs_CurrentPeriodEnd,
                                A.Subs_ProcessAttempt,
								B.Plan_Interval, 
                                B.Plan_IntervalCount, 
                                B.Plan_Amount,
                                B.Plan_Currency,
							TIMESTAMPDIFF(DAY,A.Subs_CurrentPeriodEnd,fecha) AS DiasVencido,
							(TIMESTAMPDIFF(WEEK,A.Subs_CurrentPeriodEnd,fecha)) SemanasVencidas, 
							((TIMESTAMPDIFF(WEEK,A.Subs_CurrentPeriodEnd,fecha) DIV B.Plan_IntervalCount) + 1) AS CobrosCargar
							FROM IPG.Subscription A, IPG.Plan B 
							WHERE A.Plan_ID = B.Plan_ID
							AND B.Plan_Interval = 'WEEK'
                            AND A.Subs_CurrentChargeStatus <> 'onQueue'
							AND TIMESTAMPDIFF(DAY,A.Subs_CurrentPeriodEnd,fecha) > 0);
                            
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
	 BEGIN
		GET DIAGNOSTICS CONDITION 1
			@sqlstate = RETURNED_SQLSTATE, 
			@errno = MYSQL_ERRNO, 
			@text = MESSAGE_TEXT,
			@schemaName = SCHEMA_NAME, @tableName = TABLE_NAME;
			SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);			
			SELECT @full_error;
		-- EXCEPTION
	 ROLLBACK;
     CALL IPG.PROC_SAVE_LOG('PROC_PROCESS_WEEKLY_SUBSCRIPTION', @full_error);
     SET P_Answer = @full_error;
	END;
    
    DECLARE EXIT HANDLER FOR SQLWARNING
	 BEGIN
		GET DIAGNOSTICS CONDITION 1
			@sqlstate = RETURNED_SQLSTATE, 
			@errno = MYSQL_ERRNO, 
			@text = MESSAGE_TEXT,
			@schemaName = SCHEMA_NAME, @tableName = TABLE_NAME;
			SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);			
			SELECT @full_error;
	 -- WARNING
		 ROLLBACK;
         CALL IPG.PROC_SAVE_LOG('PROC_PROCESS_WEEKLY_SUBSCRIPTION', @full_error);
         SET P_Answer = @full_error;
	END;
    START TRANSACTION;
    OPEN Subscriptions;
     -- Comenzamos nuestro bucle de lectura
	loop1: LOOP
		-- Obtenemos la primera fila en la variables correspondientes
		FETCH Subscriptions INTO    VAR_Subs_ID,
									VAR_Plan_ID,
                                    VAR_Merc_ID,                                    
                                    VAR_Mcca_ID,
                                    VAR_Subs_Quantity,                                    
									VAR_Subs_CurrentPeriodStart,
									VAR_Subs_CurrentPeriodEnd,
                                    VAR_Subs_ProcessAttempt,
									VAR_Plan_Interval,
									VAR_Plan_IntervalCount,
                                    VAR_Plan_Amount,
                                    VAR_Plan_Currency,
									VAR_DiasVencido,
									VAR_SemanasVencidas, 
									VAR_CobrosCargar;
        -- Si el cursor se quedó sin elementos,	entonces nos salimos del bucle
		IF done THEN
			LEAVE loop1;
		END IF;
        
        SET i = 1;
		WHILE i <= VAR_CobrosCargar DO
	
		-- SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_TrialEnd + INTERVAL VAR_Plan_IntervalCount WEEK;
        SET VAR_Subs_CurrentPeriodStart = VAR_Subs_CurrentPeriodEnd + INTERVAL 1 DAY;
        -- SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_CurrentPeriodEnd + INTERVAL (VAR_Plan_IntervalCount*7) DAY;
        SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_CurrentPeriodEnd + INTERVAL VAR_Plan_IntervalCount WEEK;
        
            INSERT INTO `IPG`.`SubscriptionsToProcess`
				(`Subs_ID`,
				`Plan_ID`,
                `Merc_ID`,
				`Mcca_ID`,
				`Supr_Quantity`,
                `Supr_Amount`,
                `Supr_Currency`,
				`Supr_CurrentPeriodStart`,
				`Supr_CurrentPeriodEnd`,
                `Supr_ProcessAttempt`,
				`Supr_CreationTime`)
				VALUES
				(VAR_Subs_ID,
				VAR_Plan_ID,
                VAR_Merc_ID,
				VAR_Mcca_ID,
				VAR_Subs_Quantity,
                VAR_Plan_Amount,
                VAR_Plan_Currency,
				VAR_Subs_CurrentPeriodStart,
				VAR_Subs_CurrentPeriodEnd,
                VAR_Subs_ProcessAttempt,
				NOW());
			
            SET affecteds = affecteds + ROW_COUNT();
            
            SET i= i + 1;
            
		END WHILE;        
        
        IF affecteds > 0 THEN  -- Si fue generado al menos un registro
			SET countRowSubscriptions =  countRowSubscriptions + 1;
            IF SW = 0 THEN -- Si es el primer registro generado
				SET affectedRow =  CONCAT('{"R":"',VAR_Subs_ID ,'"}');
                SET SW = 1;
			ELSE -- Despues del primer registro modificado
				SET affectedRow =  CONCAT('{"R":"',VAR_Subs_ID ,'"},', affectedRow);
			END IF; 
		END IF;
        
        SET affecteds = 0;        
        
	END LOOP loop1;
     -- Cerramos el cursor
	CLOSE Subscriptions;
    
    -- Genera un mensaje de tipo JSON para guardar en la base de datos todo los resultados obtenidos
    -- de la ejecucion del SP
    SET P_Answer = CONCAT('{ "AffectedRowsUpdate":"',countRowSubscriptions,'","Description":"New Subscriptions on queue to be processed","Records": [',affectedRow,']}');
    -- SET P_Answer = CONCAT('{ "AffectedRowsUpdate":"',countRowSubscriptions,'"}');
    CALL IPG.PROC_SAVE_BBPROCESSLOG('Subscription','PROC_PROCESS_MONTHLY_SUBSCRIPTION',P_Answer);
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_PROCESS_YEARLY_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_PROCESS_YEARLY_SUBSCRIPTION`(
OUT P_Answer longtext)
BEGIN    
    -- Declaración de variables para el cursor
    DECLARE done INT DEFAULT FALSE;
    DECLARE VAR_Subs_ID BIGINT(20);
	DECLARE VAR_Plan_ID BIGINT(20);
    DECLARE VAR_Merc_ID BIGINT(20);    
    DECLARE VAR_Mcca_ID BIGINT(20);
	DECLARE VAR_Subs_Quantity  INT(4);
    DECLARE VAR_Plan_Amount DECIMAL(20,0);
    DECLARE VAR_Plan_Currency CHAR(3);    
	DECLARE VAR_Subs_CurrentPeriodStart DATE;
	DECLARE VAR_Subs_CurrentPeriodEnd DATE;
    DECLARE VAR_Subs_ProcessAttempt INT(2);
	DECLARE VAR_Plan_Interval ENUM('Day','Week','Month','Year');
	DECLARE VAR_Plan_IntervalCount INT(4);
	DECLARE VAR_DiasVencido INT(4);
	DECLARE VAR_AniosVencidos INT(4);
	DECLARE VAR_CobrosCargar INT(4);
    DECLARE i INT DEFAULT 0;
    DECLARE countRowSubscriptions INT DEFAULT 0;
    DECLARE fecha DATE DEFAULT CURDATE();
    DECLARE affectedRow longtext DEFAULT ' ';
    DECLARE affecteds INT DEFAULT 0;
    DECLARE SW INT DEFAULT 0;
    
    DECLARE Subscriptions CURSOR FOR (
							SELECT A.Subs_ID,
								A.Plan_ID,
                                B.Merc_ID,
								A.Mcca_ID,
								A.Subs_Quantity,
								A.Subs_CurrentPeriodStart,
                                A.Subs_CurrentPeriodEnd,
                                A.Subs_ProcessAttempt,
								B.Plan_Interval, 
                                B.Plan_IntervalCount, 
                                B.Plan_Amount,
                                B.Plan_Currency,
							TIMESTAMPDIFF(DAY,A.Subs_CurrentPeriodEnd,fecha) AS DiasVencido,
							(TIMESTAMPDIFF(YEAR,A.Subs_CurrentPeriodEnd,fecha)) AniosVencidos, 
							((TIMESTAMPDIFF(YEAR,A.Subs_CurrentPeriodEnd,fecha) DIV B.Plan_IntervalCount) + 1) AS CobrosCargar
							FROM IPG.Subscription A, IPG.Plan B 
							WHERE A.Plan_ID = B.Plan_ID
							AND B.Plan_Interval = 'YEAR'
                            AND A.Subs_CurrentChargeStatus <> 'onQueue'
							AND TIMESTAMPDIFF(DAY,A.Subs_CurrentPeriodEnd,fecha) > 0);
                            
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
	 BEGIN
		GET DIAGNOSTICS CONDITION 1
			@sqlstate = RETURNED_SQLSTATE, 
			@errno = MYSQL_ERRNO, 
			@text = MESSAGE_TEXT,
			@schemaName = SCHEMA_NAME, @tableName = TABLE_NAME;
			SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);			
			SELECT @full_error;
		-- EXCEPTION
	 ROLLBACK;
     CALL IPG.PROC_SAVE_LOG('PROC_PROCESS_YEARLY_SUBSCRIPTION', @full_error);
     SET P_Answer = @full_error;
	END;
    
    DECLARE EXIT HANDLER FOR SQLWARNING
	 BEGIN
		GET DIAGNOSTICS CONDITION 1
			@sqlstate = RETURNED_SQLSTATE, 
			@errno = MYSQL_ERRNO, 
			@text = MESSAGE_TEXT,
			@schemaName = SCHEMA_NAME, @tableName = TABLE_NAME;
			SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);			
			SELECT @full_error;
	 -- WARNING
		 ROLLBACK;
         CALL IPG.PROC_SAVE_LOG('PROC_PROCESS_YEARLY_SUBSCRIPTION', @full_error);
         SET P_Answer = @full_error;
	END;
    START TRANSACTION;
    OPEN Subscriptions;
     -- Comenzamos nuestro bucle de lectura
	loop1: LOOP
		-- Obtenemos la primera fila en la variables correspondientes
		FETCH Subscriptions INTO    VAR_Subs_ID,
									VAR_Plan_ID,
                                    VAR_Merc_ID,                                    
                                    VAR_Mcca_ID,
                                    VAR_Subs_Quantity,                                    
									VAR_Subs_CurrentPeriodStart,
									VAR_Subs_CurrentPeriodEnd,
                                    VAR_Subs_ProcessAttempt,
									VAR_Plan_Interval,
									VAR_Plan_IntervalCount,
                                    VAR_Plan_Amount,
                                    VAR_Plan_Currency,
									VAR_DiasVencido,
									VAR_AniosVencidos, 
									VAR_CobrosCargar;
        -- Si el cursor se quedó sin elementos,	entonces nos salimos del bucle
		IF done THEN
			LEAVE loop1;
		END IF;
        
        SET i = 1;
		WHILE i <= VAR_CobrosCargar DO
	
		-- SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_TrialEnd + INTERVAL VAR_Plan_IntervalCount WEEK;
        SET VAR_Subs_CurrentPeriodStart = VAR_Subs_CurrentPeriodEnd + INTERVAL 1 DAY;
        -- SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_CurrentPeriodEnd + INTERVAL (VAR_Plan_IntervalCount*7) DAY;
        SET VAR_Subs_CurrentPeriodEnd = VAR_Subs_CurrentPeriodEnd + INTERVAL VAR_Plan_IntervalCount YEAR;
        
            INSERT INTO `IPG`.`SubscriptionsToProcess`
				(`Subs_ID`,
				`Plan_ID`,
                `Merc_ID`,
				`Mcca_ID`,
				`Supr_Quantity`,
                `Supr_Amount`,
                `Supr_Currency`,
				`Supr_CurrentPeriodStart`,
				`Supr_CurrentPeriodEnd`,
                `Supr_ProcessAttempt`,
				`Supr_CreationTime`)
				VALUES
				(VAR_Subs_ID,
				VAR_Plan_ID,
                VAR_Merc_ID,
				VAR_Mcca_ID,
				VAR_Subs_Quantity,
                VAR_Plan_Amount,
                VAR_Plan_Currency,
				VAR_Subs_CurrentPeriodStart,
				VAR_Subs_CurrentPeriodEnd,
                VAR_Subs_ProcessAttempt,
				NOW());
			
            SET affecteds = affecteds + ROW_COUNT();
            
            SET i= i + 1;
            
		END WHILE;        
        
        IF affecteds > 0 THEN  -- Si fue generado al menos un registro
			SET countRowSubscriptions =  countRowSubscriptions + 1;
            IF SW = 0 THEN -- Si es el primer registro generado
				SET affectedRow =  CONCAT('{"R":"',VAR_Subs_ID ,'"}');
                SET SW = 1;
			ELSE -- Despues del primer registro modificado
				SET affectedRow =  CONCAT('{"R":"',VAR_Subs_ID ,'"},', affectedRow);
			END IF; 
		END IF;
        
        SET affecteds = 0;        
        
	END LOOP loop1;
     -- Cerramos el cursor
	CLOSE Subscriptions;
    
    -- Genera un mensaje de tipo JSON para guardar en la base de datos todo los resultados obtenidos
    -- de la ejecucion del SP
    SET P_Answer = CONCAT('{ "AffectedRowsUpdate":"',countRowSubscriptions,'","Description":"New Subscriptions on queue to be processed","Records": [',affectedRow,']}');
    -- SET P_Answer = CONCAT('{ "AffectedRowsUpdate":"',countRowSubscriptions,'"}');
    CALL IPG.PROC_SAVE_BBPROCESSLOG('Subscription','PROC_PROCESS_YEARLY_SUBSCRIPTION',P_Answer);
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_BBPROCESSLOG` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_BBPROCESSLOG`(
P_Bbpl_ProcessName	varchar(100),
P_Bbpl_StoredProcedureName	varchar(100),
P_Bbpl_Information	longtext)
BEGIN
	INSERT INTO `IPG`.`BbProcessLog`
	(`Bbpl_ProcessName`,
	`Bbpl_StoredProcedureName`,
	`Bbpl_Information`)
	VALUES
	(P_Bbpl_ProcessName,
	P_Bbpl_StoredProcedureName,
	P_Bbpl_Information);
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
`P_Card_Cvv` int(3),
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
            `Card_Cvv`,
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
            P_Card_Cvv,
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_ERROR_LOG` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_ERROR_LOG`(
`P_Erlo_ProcessName` VARCHAR(100),
`P_Erlo_Type` VARCHAR(50),
`P_Erlo_Information` longtext,
INOUT `P_Erlo_ID` bigint(20))
BEGIN
	INSERT INTO `IPG`.`ErrorLog`
	(`Erlo_ProcessName`,
	`Erlo_Type`,
	`Erlo_Information`)
	VALUES
	(P_Erlo_ProcessName,
	P_Erlo_Type,
	P_Erlo_Information);
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_LOG` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_LOG`(
`P_BbLo_Origen` VARCHAR(200),
`P_BbLo_Message` VARCHAR(500))
BEGIN
	INSERT INTO `IPG`.`BbLog`
		(`BbLo_Origen`, `BbLo_Message`)
	VALUES
		(P_BbLo_Origen,P_BbLo_Message);
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_MERCHANT_DOCUMENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_MERCHANT_DOCUMENT`(
`P_Merc_ID`	bigint(20),
`P_Medo_Name` varchar(50),
`P_Medo_Description` varchar(50),
`P_Medo_Size` varchar(50),
`P_Medo_File` longblob)
BEGIN
	INSERT INTO `IPG`.`MerchantDocuments`
	(`Merc_ID`,
	`Medo_Name`,
    `Medo_Description`,
	`Medo_Size`,
	`Medo_File`,
    `Medo_CreateTime`)
	VALUES
	(P_Merc_ID,
	P_Medo_Name,
    P_Medo_Description,
	P_Medo_Size,
	P_Medo_File,
	now());
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
`P_Merc_ID` decimal(20,0),
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
		(`Merc_ID`,
        `Plan_Amount`,
		`Plan_CreateTime`,
		`Plan_Currency`,
		`Plan_Interval`,
		`Plan_IntervalCount`,
		`Plan_Name`,
		`Plan_TrialPeriodDays`,
		`Plan_StatementDescriptor`)
		VALUES
		(P_Merc_ID,
        P_Plan_Amount,
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_SUBMITTED_PROCESS_LOG` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_SUBMITTED_PROCESS_LOG`(
P_Splo_ProcessName	varchar(50),
P_Splo_StartTime	varchar(45),
-- P_Splo_EndTime	varchar(45),
P_Splo_StatusProcess	enum('Waiting','Error','Success','OnExecution'),
-- P_Splo_Information	longtext,
INOUT P_Splo_ID	bigint(20))
BEGIN
	INSERT INTO `IPG`.`SubmittedProcessLog`
	(`Splo_ProcessName`,
	`Splo_StartTime`,
	-- `Splo_EndTime`,
	 `Splo_StatusProcess`)
	-- `Splo_Information`)
	VALUES
	(P_Splo_ProcessName,
	P_Splo_StartTime,
	-- P_Splo_EndTime,
	P_Splo_StatusProcess);
	-- P_Splo_Information);
	SET P_Splo_ID = (SELECT LAST_INSERT_ID());
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
`P_Mcca_ID`	bigint(20),
`P_Disc_ID`	bigint(20),
`P_Subs_Quantity`	int(4),
`P_Subs_TrialStart`	datetime,
`P_Subs_TrialEnd`	datetime,
`P_Subs_TaxPercent`	decimal(5,2),
INOUT `P_Subs_ID`	bigint(20))
BEGIN	
    DECLARE P_Status_Subscription VARCHAR(20) DEFAULT 'Pending';
	
    IF(P_Subs_TrialStart <> P_Subs_TrialEnd) THEN 
		SET P_Status_Subscription = 'Trialing';
    
    END IF;
    
    INSERT INTO `IPG`.`Subscription`
	(`Plan_ID`,
	`Mcca_ID`,
	`Disc_ID`,
	`Subs_Quantity`,
    `Subs_TrialStart`,
    `Subs_TrialEnd`,
    `Subs_TaxPercent`,    
	`Subs_Status`,	
	`Subs_CreationTime`)
	VALUES
	(P_Plan_ID,
	P_Mcca_ID,
	P_Disc_ID,
	P_Subs_Quantity,
    P_Subs_TrialStart,
    P_Subs_TrialEnd,
    P_Subs_TaxPercent,
	P_Status_Subscription,
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
`P_Tran_TxnType` enum('creditcard','debitcard','paypal','google â Google checkout','other','lead â lead generation','survey â online survey','sitereg â site registration'),
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_TRANSACTION_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_TRANSACTION_SUBSCRIPTION`(
`P_Merc_ID` bigint(20),
`P_Tran_IP` varchar(20),
`P_Tran_MaxmindID` char(8),
`P_Tran_UserAgent` char(200),
`P_Tran_OrderAmount` decimal(20,3),
`P_Tran_OrderCurrency` char(3),
INOUT  `P_Tran_ID` bigint(20))
BEGIN

	INSERT INTO `IPG`.`Transaction`
		(`Merc_ID`,
		`Tran_IP`,
		`Tran_MaxmindID`,
        `Tran_UserAgent`,
		`Tran_OrderAmount`,
		`Tran_OrderCurrency`)
	VALUES
		(P_Merc_ID,
        P_Tran_IP,
		P_Tran_MaxmindID,        
        P_Tran_UserAgent,
		P_Tran_OrderAmount,
		P_Tran_OrderCurrency);

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
P_Buty_Status	enum('0','1')*/ )
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CARD_BY_CUSTOMER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CARD_BY_CUSTOMER`(
P_Mecu_ID	bigint(20))
BEGIN
	/*SELECT Cust_ID, Card_ID, Card_Name, Card_Number, Card_Cvv, 
		Card_ExpMonth, Card_ExpYear, Card_Brand, Card_AddressCity, 
		Card_AddressState, Card_AddressCountry
    FROM IPG.Card WHERE Cust_ID = P_Cust_ID;*/
	SELECT A.Mcca_ID, A.Cust_ID, A.Card_ID, Card_Name, Card_Number, Card_Cvv, 
	Card_ExpMonth, Card_ExpYear, Card_Brand, Card_AddressCity, 
	Card_AddressState, Card_AddressCountry
	FROM IPG.View_MerchantCustomerCard A , IPG.Card B
	WHERE A.Mecu_ID = P_Mecu_ID
	AND A.Card_ID = B.Card_ID;
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
P_Card_Number	varchar(50))
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CHARGES_REFUNDED_BY_CUSTOMER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CHARGES_REFUNDED_BY_CUSTOMER`(
`P_Cust_ID` bigint(20))
BEGIN
	SELECT * FROM IPG.View_Refunds_Effectives A 
	WHERE A.Card_ID IN(SELECT Card_ID FROM Card WHERE P_Cust_ID = 1);
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
    IF (P_Merc_ID IS NOT NULL) THEN
		SELECT Mecu_ID, Merc_ID, Cust_ID, Merc_Name, Cust_Email, Cust_CreateTime FROM IPG.View_MerchantCustomer A
		WHERE A.Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId = P_USER_ID)
        AND P_Merc_ID = A.Merc_ID;
    ELSE
		SELECT Mecu_ID, Merc_ID, Cust_ID, Merc_Name, Cust_Email, Cust_CreateTime FROM IPG.View_MerchantCustomer A
		WHERE A.Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId = P_USER_ID);		
    END IF;
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_DETAILS_UPDATE_PROFILE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_DETAILS_UPDATE_PROFILE`(
`P_Merc_ID` bigint(20))
BEGIN
	SELECT `Merc_ID`,`Buty_ID`,`Indu_ID`, `Coun_NumericMerchant`,`Coun_NumericPersonalInformation`,
    `Merc_Name`, `Merc_TradingName`,`Merc_LegalPhysicalAddress`, `Merc_StatementAddress`,
    `Merc_TaxFileNumber`,`Merc_CityBusinessInformation`,`Merc_PostCodeBusinessInformation`,
	`Merc_IssuedBusinessID`, `Merc_IssuedPersonalID`, `Merc_TypeAccountApplication`, 
    `Merc_EstimatedAnnualSales`, `Merc_FirstName`, `Merc_LastName`, `Merc_PhoneNumber`, `Merc_FaxNumber`,
    `Merc_EmailAddress`, `Merc_AlternateEmailAddress`, `Merc_CityPersonalInformation`, `Merc_PostCodePersonalInformation`,
    `Merc_AverageTicketSize`, `Merc_MonthlyProcessingVolume`, `Merc_FirstQuestion`, `Merc_SecondQuestion`, `Merc_ThirdQuestion`
	FROM IPG.Merchant A
	WHERE A.Merc_Status = '0'
	AND A.Merc_ID = P_Merc_ID;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_DOCUMENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_DOCUMENT`(
IN P_Medo_ID bigint(20))
BEGIN
	SELECT * FROM IPG.MerchantDocuments A WHERE A.Medo_ID = P_Medo_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_DOCUMENTS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_DOCUMENTS`(
IN P_Merc_ID bigint(20))
BEGIN
	SELECT Medo_ID, Merc_ID, Medo_Name, Medo_Description, Medo_Size, Medo_CreateTime
    FROM IPG.MerchantDocuments A WHERE A.Merc_ID = P_Merc_ID;
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_USER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_USER`(
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MONTHLY_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MONTHLY_SUBSCRIPTION`()
BEGIN
	SELECT A.Mosu_ID,A.Mosu_Quantity, A.Mosu_Amount, C.Card_Number 
	FROM IPG.Monthly_Subscriptions A, IPG.MerchantCustomerCard B, IPG.Card C
	WHERE A.Mcca_ID = B.Mcca_ID
	AND B.Card_ID = C.Card_ID;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_PLAN`(
`P_USER_ID` bigint(20))
BEGIN
	SELECT A.*, B.Merc_Name FROM IPG.Plan A, IPG.Merchant B
    WHERE A.Plan_Status = '0'
    AND A.Merc_ID IN (SELECT  Merc_ID FROM UserMerchant WHERE userId = P_USER_ID)
    AND A.Merc_ID = B.Merc_ID;
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_SUBMITTED_PROCESS_LOG` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_SUBMITTED_PROCESS_LOG`(
P_Splo_ProcessName	varchar(50),
P_Splo_StartTime	varchar(45),
P_Splo_EndTime	varchar(45),
P_Splo_StatusProcess enum('Waiting','Error','Success','OnExecution'),
P_Match enum('0','1'),
IN P_Splo_ID bigint(20))
BEGIN
	DECLARE FIRST_PART INT DEFAULT 0;
    SET @sql_query="SELECT * FROM SubmittedProcessLog"; 
	-- IF(P_Match IS NOT NULL && P_Match = '0') THEN 
    /* Si el usuario selecciono el filtro avanzado y puso como match *all todos */
    /* los campos que LLENO deben coincidir */
    SELECT * FROM IPG.SubmittedProcessLog order by Splo_ID Desc;
    /*IF(P_Splo_ID IS NOT NULL) THEN
		SET @sql_query = CONCAT(@sql_query, " WHERE Splo_ID = ", P_Splo_ID);
	END IF;
    
    PREPARE stmt FROM @sql_query;
   	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_SUBMITTED_PROCESS_LOG_BY_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_SUBMITTED_PROCESS_LOG_BY_ID`(
IN P_Splo_ID bigint(20))
BEGIN
    SELECT * FROM IPG.SubmittedProcessLog WHERE Splo_ID = P_Splo_ID;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_SUBSCRIPTION`(
`P_USER_ID` bigint(20),
`P_Mecu_ID`	bigint(20))
BEGIN    
    SELECT A.*, B.Plan_Name, D.Card_Number
	FROM IPG.Subscription A, IPG.Plan B, IPG.View_MerchantCustomerCard C, IPG.Card D
	WHERE A.Plan_ID = B.Plan_ID
	AND A.Mcca_ID = C.Mcca_ID
	AND C.Card_ID = D.Card_ID
    AND C.Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId = P_USER_ID)
    AND C.Mecu_ID = P_Mecu_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_SUBSCRIPTIONS_TO_PROCESS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_SUBSCRIPTIONS_TO_PROCESS`()
BEGIN
	SELECT A.Supr_ID, A.Subs_ID, A.Merc_ID, A.Supr_CurrentPeriodStart, A.Supr_CurrentPeriodEnd, 
    A.Supr_Quantity, A.Supr_Amount,A.Supr_Currency, C.Card_ID, C.Card_Number,
    C.Card_ExpMonth, C.Card_ExpYear, C.Card_Cvv, C.Card_Name
	FROM IPG.SubscriptionsToProcess A, IPG.MerchantCustomerCard B, IPG.Card C
	WHERE A.Mcca_ID = B.Mcca_ID
	AND B.Card_ID = C.Card_ID
    AND A.Supr_Status = 'Waiting';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_TRANSACTIONS_BY_CUSTOMER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_TRANSACTIONS_BY_CUSTOMER`(
P_Merc_ID bigint(20),
P_Cust_ID bigint(20),
P_USER_ID bigint(20))
BEGIN
	IF(P_Merc_ID IS NOT NULL)  THEN
		SELECT * FROM IPG.View_Transactions
		WHERE Cust_ID = P_Cust_ID
		AND Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId =  P_USER_ID)
        AND Merc_ID = P_Merc_ID;
	ELSE
		SELECT * FROM IPG.View_Transactions
		WHERE Cust_ID = P_Cust_ID
		AND Merc_ID IN (SELECT Merc_ID FROM UserMerchant WHERE userId =  P_USER_ID);
    END IF;
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_WEEKLY_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_WEEKLY_SUBSCRIPTION`()
BEGIN
	SELECT A.Wesu_ID, A.Wesu_Quantity, A.Wesu_Amount, C.Card_Number 
	FROM IPG.Weekly_Subscriptions A, IPG.MerchantCustomerCard B, IPG.Card C
	WHERE A.Mcca_ID = B.Mcca_ID
	AND B.Card_ID = C.Card_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_YEARLY_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_YEARLY_SUBSCRIPTION`()
BEGIN
	SELECT A.Yesu_ID, A.Yesu_Quantity, A.Yesu_Amount, C.Card_Number 
	FROM IPG.Yearly_Subscriptions A, IPG.MerchantCustomerCard B, IPG.Card C
	WHERE A.Mcca_ID = B.Mcca_ID
	AND B.Card_ID = C.Card_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SELECT_SUBSCRIPTIONS_TO_PROCESS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SELECT_SUBSCRIPTIONS_TO_PROCESS`()
BEGIN
	
    DECLARE VAR_TableName  VARCHAR(50);
    
    DECLARE Subscriptions_To_Process CURSOR FOR
									(SELECT * FROM IPG.Subscription A
									WHERE A.Subs_CurrentPeriodEnd = DATE_FORMAT(NOW(),'%Y-%m-%d')
									AND A.Subs_Status = 'Active');
    
    SET @CreateTable = CONCAT('CREATE TABLE SUB_PRC_',DATE_FORMAT(NOW(),'%Y_%m_%d'),' (`Subs_ID` bigint(20) NOT NULL)');
    PREPARE stmt FROM @CreateTable;  
    
    SET @VAR_TableName = CONCAT('SUB_PRC_',DATE_FORMAT(NOW(),'%Y_%m_%d'));
	
    -- Creo la tabla para guardar los registros a procesar del dia
	IF NOT EXISTS (SELECT TABLE_NAME 
		FROM information_schema.tables
		WHERE table_schema = 'IPG'
		AND table_name = @VAR_TableName) THEN        	
				EXECUTE stmt;
			    DEALLOCATE PREPARE stmt;
	END IF;
    
    
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_CARD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_CARD`(
`P_Cust_ID`	bigint(20),
`P_Card_IDStripe`	char(50),
`P_Card_Brand`	char(20),
`P_Card_ExpMonth`	int(2),
`P_Card_ExpYear`	int(2),
`P_Card_FingerPrint`	char(20),
`P_Card_Funding`	char(20),
`P_Card_Number` char(50),
`P_Card_Cvv` int(3),
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
`P_Card_ID`	bigint(20))
BEGIN	
    UPDATE `IPG`.`Card`
	SET
	`Card_ID` = P_Card_ID,
	`Cust_ID` = P_Cust_ID,
	`Card_IDStripe` = P_Card_IDStripe,
	`Card_Brand` = P_Card_Brand,
	`Card_ExpMonth` = P_Card_ExpMonth,
	`Card_ExpYear` = P_Card_ExpYear,
	`Card_FingerPrint` = P_Card_FingerPrint,
	`Card_Funding` = P_Card_Funding,
	`Card_Number` = P_Card_Number,
	`Card_Cvv` = P_Card_Cvv,
	`Card_Name` = P_Card_Name,
	`Card_Last4` = P_Card_Last4,
	`Card_AddressCity` = P_Card_AddressCity,
	`Card_AddressCountry` = P_Card_AddressCountry,
	`Card_AddressState` = P_Card_AddressState,
	`Card_AddressLine1` = P_Card_AddressLine1,
	`Card_AddressLine2` = P_Card_AddressLine2,
	`Card_AddressZip` = P_Card_AddressZip,
	`Card_Country` = P_Card_Country,
	`Card_BlackListed` = P_Card_BlackListed
	WHERE `Card_ID` = P_Card_ID;
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

`P_Merc_AverageTicketSize` varchar(50),
`P_Merc_MonthlyProcessingVolume` varchar(50),
`P_Merc_FirstQuestion` varchar(50),
`P_Merc_SecondQuestion` varchar(50),
`P_Merc_ThirdQuestion` varchar(50),

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
	`Merc_PostCodePersonalInformation` = P_Merc_PostCodePersonalInformation,
    
    `Merc_AverageTicketSize` = P_Merc_AverageTicketSize,
    `Merc_MonthlyProcessingVolume` = P_Merc_MonthlyProcessingVolume,
    `Merc_FirstQuestion` = P_Merc_FirstQuestion,
    `Merc_SecondQuestion` = P_Merc_SecondQuestion,
    `Merc_ThirdQuestion` = P_Merc_ThirdQuestion
    
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
`P_Merc_ID` decimal(20,0),
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
		`Merc_ID` = P_Merc_ID,
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_SUBMITTED_PROCESS_LOG` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_SUBMITTED_PROCESS_LOG`(
P_Splo_EndTime	varchar(45),
P_Splo_StatusProcess	enum('Waiting','Error','Success','OnExecution'),
P_Splo_Information	longtext,
P_Splo_ID	bigint(20))
BEGIN
	UPDATE `IPG`.`SubmittedProcessLog`
	SET
	`Splo_EndTime` = P_Splo_EndTime,
	`Splo_StatusProcess` = P_Splo_StatusProcess,
	`Splo_Information` = P_Splo_Information
	WHERE `Splo_ID` = P_Splo_ID;

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
`P_Card_ID`	bigint(20),
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
	`Card_ID` = P_Card_ID,
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_SUBSCRIPTIONS_TO_PROCESS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_SUBSCRIPTIONS_TO_PROCESS`(
`P_Supr_Status` enum('Waiting','Sending','BBError','Charged','Unpaid'),
`P_Supr_AuthorizerCode`	varchar(45),
`P_Supr_AuthorizerReason`	varchar(45),
`P_Supr_ProcessAttempt`	int(2),
`P_Supr_ID` bigint(20))
BEGIN	
	UPDATE `IPG`.`SubscriptionsToProcess`
	SET
	`Supr_Status` = P_Supr_Status,
    `Supr_AuthorizerCode` = P_Supr_AuthorizerCode,
    `Supr_AuthorizerReason` = P_Supr_AuthorizerReason,
    `Supr_StatusCreationTime` = NOW(),
    `Supr_ProcessAttempt` = P_Supr_ProcessAttempt
	WHERE `Supr_ID` = P_Supr_ID;
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
/*!50003 DROP PROCEDURE IF EXISTS `X_PROC_PROCESS_DELAYED_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `X_PROC_PROCESS_DELAYED_SUBSCRIPTION`(
OUT P_Answer longtext)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	 BEGIN
		GET DIAGNOSTICS CONDITION 1
			@sqlstate = RETURNED_SQLSTATE, 
			@errno = MYSQL_ERRNO, 
			@text = MESSAGE_TEXT,
			@schemaName = SCHEMA_NAME, @tableName = TABLE_NAME;
			SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);			
			SELECT @full_error;
		-- EXCEPTION
	 ROLLBACK;
     CALL IPG.PROC_SAVE_LOG('PROC_PROCESS_SUBSCRIPTION_ON_DATE', @full_error);
	END;

	DECLARE EXIT HANDLER FOR SQLWARNING
	 BEGIN
		GET DIAGNOSTICS CONDITION 1
			@sqlstate = RETURNED_SQLSTATE, 
			@errno = MYSQL_ERRNO, 
			@text = MESSAGE_TEXT,
			@schemaName = SCHEMA_NAME, @tableName = TABLE_NAME;
			SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);			
			SELECT @full_error;
	 -- WARNING
		 ROLLBACK;
         CALL IPG.PROC_SAVE_LOG('PROC_PROCESS_SUBSCRIPTION_ON_DATE', @full_error);
	END;	

	START TRANSACTION;
	DELETE FROM IPG.AUX_Subscriptions;
	
    -- Esto es para las subscripciones que estan atrazadas pero que ya fueron procesadas al menos una vez. Para estas
    -- se toma en cuenta la fecha del campo 'Subs_CurrentChargeStatusDate'
	UPDATE `IPG`.`Subscription`
	SET `Subs_CurrentChargeStatus` = 'onQueueDelay',
        `Subs_CurrentChargeStatusDate` = NOW()
	WHERE Subs_Status = 'Active'
	AND Subs_CurrentChargeStatus NOT IN ('onQueue','onQueueDelay')
	AND Subs_CurrentChargeStatus IN ('toProcess')
    AND DATE_FORMAT(Subs_CurrentChargeStatusDate,'%Y-%m-%d') <> CURDATE()
	AND Subs_CurrentPeriodEnd = (CURDATE()- INTERVAL 1 DAY);    
    SET @countRowSubscriptionsUpdates =  ROW_COUNT();
    
    -- Esto es para las subscripciones que se acaban de registrar y estan atrazadas pero que nucan han sido procesadas. Para estas
    -- NO se toma en cuenta la fecha del campo 'Subs_CurrentChargeStatusDate'
	UPDATE `IPG`.`Subscription`
	SET `Subs_CurrentChargeStatus` = 'onQueueDelay',
        `Subs_CurrentChargeStatusDate` = NOW()
	WHERE Subs_Status = 'Active'
	AND Subs_CurrentChargeStatus NOT IN ('onQueue','onQueueDelay')
	AND Subs_CurrentChargeStatus IN ('toProcessFirst','');    
    SET @countRowSubscriptionsUpdates =  ROW_COUNT();
    
	SET @CreateTable = CONCAT('CREATE TABLE SUB_PRC_',DATE_FORMAT(CURDATE(),'%Y_%m_%d'),' LIKE IPG.AUX_Subscriptions');
	SET @VAR_TableName = CONCAT('SUB_PRC_',DATE_FORMAT(CURDATE(),'%Y_%m_%d'));
 
	IF NOT EXISTS (SELECT TABLE_NAME 
				FROM information_schema.tables
				WHERE table_schema = 'IPG'
				AND table_name = @VAR_TableName) THEN 	
						PREPARE stmt FROM @CreateTable; 
						EXECUTE stmt;
						DEALLOCATE PREPARE stmt;
	END IF;
 
	SET @SQLQuery = CONCAT('INSERT INTO ',@VAR_TableName,' SELECT * FROM IPG.AUX_Subscriptions');
	PREPARE stmt FROM @SQLQuery; 
	EXECUTE stmt;
	SET @countRowSubscriptionsToProcess =  ROW_COUNT();
    DEALLOCATE PREPARE stmt;
	
    -- Genera un mensaje de tipo JSON para guardar en la base de datos todo los resultados obtenidos
    -- de la ejecucion del SP
    SET P_Answer = CONCAT('{ "AffectedRowsUpdate":"',@countRowSubscriptionsUpdates,'","SubscriptionsToProcess":"',@countRowSubscriptionsToProcess,'"}');
    CALL IPG.PROC_SAVE_BBPROCESSLOG('Subscription','PROC_PROCESS_SUBSCRIPTION_ON_DATE',P_Answer);
        
	DELETE FROM IPG.AUX_Subscriptions;
 COMMIT;
  -- ROLLBACK;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `X_PROC_PROCESS_SUBSCRIPTION_ON_DATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `X_PROC_PROCESS_SUBSCRIPTION_ON_DATE`(
OUT P_Answer longtext)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	 BEGIN
		GET DIAGNOSTICS CONDITION 1
			@sqlstate = RETURNED_SQLSTATE, 
			@errno = MYSQL_ERRNO, 
			@text = MESSAGE_TEXT,
			@schemaName = SCHEMA_NAME, @tableName = TABLE_NAME;
			SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);			
			SELECT @full_error;
		-- EXCEPTION
	 ROLLBACK;
     CALL IPG.PROC_SAVE_LOG('PROC_PROCESS_SUBSCRIPTION_ON_DATE', @full_error);
	END;

	DECLARE EXIT HANDLER FOR SQLWARNING
	 BEGIN
		GET DIAGNOSTICS CONDITION 1
			@sqlstate = RETURNED_SQLSTATE, 
			@errno = MYSQL_ERRNO, 
			@text = MESSAGE_TEXT,
			@schemaName = SCHEMA_NAME, @tableName = TABLE_NAME;
			SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);			
			SELECT @full_error;
	 -- WARNING
		 ROLLBACK;
         CALL IPG.PROC_SAVE_LOG('PROC_PROCESS_SUBSCRIPTION_ON_DATE', @full_error);
	END;	

	START TRANSACTION;
	DELETE FROM IPG.AUX_Subscriptions;

	UPDATE `IPG`.`Subscription`
	SET `Subs_CurrentChargeStatus` = 'onQueue',
        `Subs_CurrentChargeStatusDate` = NOW()
	WHERE Subs_Status = 'Active'
	AND Subs_CurrentChargeStatus = 'toProcess'
	AND Subs_CurrentPeriodStart = CURDATE();
	SET @countRowSubscriptionsUpdates =  ROW_COUNT();
    
	SET @CreateTable = CONCAT('CREATE TABLE SUB_PRC_',DATE_FORMAT(CURDATE(),'%Y_%m_%d'),' LIKE IPG.AUX_Subscriptions');
	SET @VAR_TableName = CONCAT('SUB_PRC_',DATE_FORMAT(CURDATE(),'%Y_%m_%d'));
 
	IF NOT EXISTS (SELECT TABLE_NAME 
				FROM information_schema.tables
				WHERE table_schema = 'IPG'
				AND table_name = @VAR_TableName) THEN 	
						PREPARE stmt FROM @CreateTable; 
						EXECUTE stmt;
						DEALLOCATE PREPARE stmt;
	END IF;
 
	SET @SQLQuery = CONCAT('INSERT INTO ',@VAR_TableName,' SELECT * FROM IPG.AUX_Subscriptions');
	PREPARE stmt FROM @SQLQuery; 
	EXECUTE stmt;
	SET @countRowSubscriptionsToProcess =  ROW_COUNT();
    DEALLOCATE PREPARE stmt;
	
    -- Genera un mensaje de tipo JSON para guardar en la base de datos todo los resultados obtenidos
    -- de la ejecucion del SP
    SET P_Answer = CONCAT('{ "AffectedRowsUpdate":"',@countRowSubscriptionsUpdates,'","SubscriptionsToProcess":"',@countRowSubscriptionsToProcess,'"}');
    CALL IPG.PROC_SAVE_BBPROCESSLOG('Subscription','PROC_PROCESS_SUBSCRIPTION_ON_DATE',P_Answer);
        
	DELETE FROM IPG.AUX_Subscriptions;
 COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `X_PROC_PROCESS_SUBSCRIPTION_ON_DATE_BK` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `X_PROC_PROCESS_SUBSCRIPTION_ON_DATE_BK`()
BEGIN
	-- Declaración de variables para el cursor
	DECLARE VAR_TableName  VARCHAR(50);
    DECLARE done INT DEFAULT FALSE;
    DECLARE VAR_Subs_ID BIGINT(20);
    DECLARE VAR_Plan_ID BIGINT(20);
    DECLARE VAR_Mcca_ID BIGINT(20);
    DECLARE VAR_Subs_Quantity INT(4);
	DECLARE VAR_Subs_CurrentPeriodStart DATE;
    DECLARE VAR_Subs_CurrentPeriodEnd DATE;
	DECLARE VAR_Subs_CurrentChargeStatus ENUM('','toProcess','onQueue','onQueueDelay','processed');
    DECLARE VAR_Subs_CurrentChargeStatusDate DATE;
    
    DECLARE Subscriptions CURSOR FOR     
									(SELECT A.Subs_ID, A.Plan_ID, A.Mcca_ID, A.Subs_Quantity,
									A.Subs_CurrentPeriodStart, A.Subs_CurrentPeriodEnd, 
									A.Subs_CurrentChargeStatus, A.Subs_CurrentChargeStatusDate
									FROM IPG.Subscription A, IPG.Plan B
									WHERE A.Subs_Status = 'Active'
									AND A.Subs_CurrentChargeStatus = 'toProcess'
									AND A.Subs_CurrentPeriodStart = CURDATE()
									AND A.Plan_ID = B.Plan_ID);
                                    
	-- Declaración de un manejador de error tipo NOT FOUND
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
	-- Crea un clon de la tabla IPG.AUX_Subscriptions
    -- Si se desea recrear la tabla IPG.AUX_Subscriptions solo se debe ejecutar un select
    -- sobre los campos deseados y asignarlos de la siguiente manera create table IPG.XXX SELECT ... 
    SET @CreateTable = CONCAT('CREATE TABLE SUB_PRC_',DATE_FORMAT(CURDATE(),'%Y_%m_%d'),' LIKE IPG.AUX_Subscriptions');
    
    SET @VAR_TableName = CONCAT('SUB_PRC_',DATE_FORMAT(CURDATE(),'%Y_%m_%d'));
	
    -- Creo la tabla para guardar los registros a procesar del dia
	IF NOT EXISTS (SELECT TABLE_NAME 
		FROM information_schema.tables
		WHERE table_schema = 'IPG'
		AND table_name = @VAR_TableName) THEN        	
				PREPARE stmt FROM @CreateTable;  
                EXECUTE stmt;
			    DEALLOCATE PREPARE stmt;
	END IF;
    
    OPEN Subscriptions;
    
    -- Comenzamos nuestro bucle de lectura
	loop1: LOOP
    
		FETCH Subscriptions INTO VAR_Subs_ID, VAR_Plan_ID, VAR_Mcca_ID, VAR_Subs_Quantity,
								 VAR_Subs_CurrentPeriodStart, VAR_Subs_CurrentPeriodEnd, 
								 VAR_Subs_CurrentChargeStatus, VAR_Subs_CurrentChargeStatusDate;
        
        -- Si el cursor ase quedó sin elementos,	entonces nos salimos del bucle
		IF done THEN
			LEAVE loop1;
		END IF;

			INSERT INTO `IPG`.`@VAR_TableName`
				(`Subs_ID`,
				`Plan_ID`,
				`Mcca_ID`,
				`Subs_Quantity`,
				`Subs_CurrentPeriodStart`,
				`Subs_CurrentPeriodEnd`,
				`Subs_CurrentChargeStatus`,
				`Subs_CurrentChargeStatusDate`)
			VALUES
				(VAR_Subs_ID, VAR_Plan_ID, VAR_Mcca_ID, VAR_Subs_Quantity,
				VAR_Subs_CurrentPeriodStart, VAR_Subs_CurrentPeriodEnd, 
				VAR_Subs_CurrentChargeStatus, VAR_Subs_CurrentChargeStatusDate);
    
    END LOOP loop1;
        
        -- Cerramos el cursor
	CLOSE Subscriptions;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `X_PROC_SAVE_SUBSCRIPTION_BK` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `X_PROC_SAVE_SUBSCRIPTION_BK`(
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
/*!50003 DROP PROCEDURE IF EXISTS `X_PROC_SEARCH_DAILY_UNPAID_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `X_PROC_SEARCH_DAILY_UNPAID_SUBSCRIPTION`()
BEGIN
	SELECT A.Dasu_ID, A.Subs_ID, A.Merc_ID, A.Dasu_CurrentPeriodStart, A.Dasu_CurrentPeriodEnd, 
    A.Dasu_Quantity, A.Dasu_Amount,A.Dasu_Currency, A.Dasu_ProcessAttempt, C.Card_ID, C.Card_Number,
    C.Card_ExpMonth, C.Card_ExpYear, C.Card_Cvv, C.Card_Name
	FROM IPG.Reprocess_Daily_Subscriptions A, IPG.MerchantCustomerCard B, IPG.Card C
	WHERE A.Mcca_ID = B.Mcca_ID
	AND B.Card_ID = C.Card_ID
    AND A.Dasu_Status = 'Unpaid';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `X_PROC_SEARCH_DAILY_UNPAID_SUBSCRIPTION_BLOCKED` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `X_PROC_SEARCH_DAILY_UNPAID_SUBSCRIPTION_BLOCKED`()
BEGIN
	SELECT COUNT(*) Count
	FROM IPG.Reprocess_Daily_Subscriptions A
	WHERE A.Dasu_Status = 'Sending'
    GROUP BY A.Dasu_Status;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `X_PROC_SEARCH_REJECTED_BY_DAY_XXXXXXX` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `X_PROC_SEARCH_REJECTED_BY_DAY_XXXXXXX`(
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
/*!50003 DROP PROCEDURE IF EXISTS `X_PROC_UPDATE_UNPAID_DAILY_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `X_PROC_UPDATE_UNPAID_DAILY_SUBSCRIPTION`(
P_Dasu_Status enum('Waiting','Sending','BBError','Charged','Unpaid'),
P_Dasu_ProcessAttempt	int(2),
P_Dasu_AuthorizerCode	varchar(45),
P_Dasu_AuthorizerReason	varchar(45),
P_Dasu_ID bigint(20))
BEGIN	
	UPDATE `IPG`.`Reprocess_Daily_Subscriptions`
	SET
	`Dasu_Status` = P_Dasu_Status,
    `Dasu_ProcessAttempt` = P_Dasu_ProcessAttempt,
    `Dasu_AuthorizerCode` = P_Dasu_AuthorizerCode,
    `Dasu_AuthorizerReason` = P_Dasu_AuthorizerReason,
    `Dasu_StatusCreationTime` = NOW()
	WHERE `Dasu_ID` = P_Dasu_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `X_prueba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `X_prueba`(
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
/*!50001 VIEW `View_MerchantCustomer` AS (select `B`.`Mecu_ID` AS `Mecu_ID`,`A`.`Merc_ID` AS `Merc_ID`,`C`.`Cust_ID` AS `Cust_ID`,`A`.`Merc_Name` AS `Merc_Name`,`C`.`Cust_Email` AS `Cust_Email`,`C`.`Cust_CreateTime` AS `Cust_CreateTime` from ((`Merchant` `A` join `MerchantCustomer` `B`) join `Customer` `C`) where ((`A`.`Merc_ID` = `B`.`Merc_ID`) and (`B`.`Cust_ID` = `C`.`Cust_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `View_MerchantCustomerCard`
--

/*!50001 DROP VIEW IF EXISTS `View_MerchantCustomerCard`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `View_MerchantCustomerCard` AS select `A`.`Mcca_ID` AS `Mcca_ID`,`A`.`Mecu_ID` AS `Mecu_ID`,`B`.`Merc_ID` AS `Merc_ID`,`B`.`Cust_ID` AS `Cust_ID`,`A`.`Card_ID` AS `Card_ID` from (`MerchantCustomerCard` `A` join `MerchantCustomer` `B`) where (`A`.`Mecu_ID` = `B`.`Mecu_ID`) */;
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
-- Final view structure for view `View_Refunds_Effectives`
--

/*!50001 DROP VIEW IF EXISTS `View_Refunds_Effectives`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `View_Refunds_Effectives` AS (select `A`.`Char_ID` AS `Char_ID`,`A`.`Card_ID` AS `Card_ID`,`A`.`Merc_ID` AS `Merc_ID`,`A`.`Merc_Name` AS `Merc_Name`,`A`.`Char_IDStripe` AS `Char_IDStripe`,`A`.`Card_Brand` AS `Card_Brand`,`A`.`Card_Funding` AS `Card_Funding`,`A`.`Card_Number` AS `Card_Number`,`A`.`Card_Last4` AS `Card_Last4`,`A`.`Card_Country` AS `Card_Country`,`A`.`Tran_ID` AS `Tran_ID`,`A`.`Invo_ID` AS `Invo_ID`,`A`.`Addr_ID` AS `Addr_ID`,`A`.`Char_Amount` AS `Char_Amount`,`A`.`Char_Captured` AS `Char_Captured`,`A`.`Char_CreateTime` AS `Char_CreateTime`,`A`.`Char_Currency` AS `Char_Currency`,`A`.`Char_Paid` AS `Char_Paid`,`A`.`Char_Refunded` AS `Char_Refunded`,`A`.`Char_FailureCode` AS `Char_FailureCode`,`A`.`Char_FailureMessage` AS `Char_FailureMessage`,`A`.`Char_ReceiptEmail` AS `Char_ReceiptEmail`,`A`.`Char_ReceiptNumber` AS `Char_ReceiptNumber`,`A`.`Char_ProcessTime` AS `Char_ProcessTime`,`B`.`REFUND` AS `REFUND` from (`View_Charges` `A` join `View_Refunded` `B`) where (`A`.`Char_ID` = `B`.`Char_ID`) order by `A`.`Char_CreateTime` desc) */;
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

-- Dump completed on 2015-05-28 20:21:27
