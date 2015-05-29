CREATE DATABASE  IF NOT EXISTS `IPG` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `IPG`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1824 DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=25755 DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=42072 DEFAULT CHARSET=latin1;
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
			`Subs_ProcessAttempt` = NEW.Supr_ProcessAttempt
			WHERE `Subs_ID` = NEW.Subs_ID;
            -- DELETE FROM IPG.SubscriptionsToProcess WHERE `Subs_ID` = NEW.Subs_ID;
        ELSE
			UPDATE `IPG`.`Subscription`
			SET `Subs_Status` = 'Past_due',
			`Subs_CurrentChargeStatus` = 'toProcess',
			`Subs_CurrentChargeStatusDate` = NOW(),
			`Subs_ProcessAttempt` = NEW.Supr_ProcessAttempt
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
OUT P6 longtext,
OUT P_ERROR_CODE VARCHAR(50),
OUT P_ERROR_TEXT VARCHAR(200))
BEGIN
	SET P_ERROR_CODE = '000';
    
    SELECT COUNT(*) INTO @PENDING FROM IPG.SubscriptionsToProcess WHERE Supr_Status = 'Sending';
    
    IF(@PENDING = 0) THEN
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
    ELSE
		SET P_ERROR_CODE = '001';
        SET P_ERROR_TEXT = 'UNABLE TO DELETE DATA FROM TABLE IPG.SubscriptionsToProcess, some transactions appear blocked';
    END IF;    
    
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
P_Splo_StatusProcess	enum('Waiting','Error','Success','OnExecution'),
P_Splo_Information	longtext,
INOUT P_Splo_ID	bigint(20))
BEGIN
	INSERT INTO `IPG`.`SubmittedProcessLog`
	(`Splo_ProcessName`,
	`Splo_StartTime`,
	 `Splo_StatusProcess`,
	 `Splo_Information`)
	VALUES
	(P_Splo_ProcessName,
	P_Splo_StartTime,
	P_Splo_StatusProcess,
	P_Splo_Information);
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
    A.Supr_Quantity, A.Supr_Amount,A.Supr_Currency, A.Supr_ProcessAttempt, C.Card_ID, C.Card_Number,
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
/*!50003 DROP PROCEDURE IF EXISTS `X_PROC_SELECT_SUBSCRIPTIONS_TO_PROCESS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `X_PROC_SELECT_SUBSCRIPTIONS_TO_PROCESS`()
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

-- Dump completed on 2015-05-29 19:46:58
