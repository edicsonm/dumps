CREATE DATABASE  IF NOT EXISTS `IPG` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `IPG`;
-- MySQL dump 10.13  Distrib 5.6.19, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: IPG
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
-- Table structure for table `Bin`
--

DROP TABLE IF EXISTS `Bin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bin` (
  `Bin_Id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `Bin_Bin` int(6) NOT NULL,
  `Bin_Brand` varchar(50) COLLATE utf8_bin NOT NULL,
  `Bin_Sub_Brand` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Bin_Country_Code` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `Bin_Country_Name` varchar(100) COLLATE utf8_bin NOT NULL,
  `Bin_Bank` varchar(100) COLLATE utf8_bin NOT NULL,
  `Bin_Card_Type` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Bin_Card_Category` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Bin_Id`),
  UNIQUE KEY `Bin_Bin_UNIQUE` (`Bin_Bin`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Card`
--

DROP TABLE IF EXISTS `Card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Card` (
  `Card_Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Card_Bin` int(6) NOT NULL,
  `Card_Name` varchar(50) NOT NULL,
  `Card_Number` varchar(100) NOT NULL,
  `Card_CVV` int(3) NOT NULL,
  `Card_Address` varchar(200) DEFAULT NULL,
  `Card_ExpirationYear` varchar(4) NOT NULL,
  `Card_ExpirationMonth` varchar(2) NOT NULL,
  `Card_RegistrationTime` datetime NOT NULL,
  `Card_BlackListed` varchar(45) DEFAULT NULL,
  `Card_BlackListedReason` varchar(45) DEFAULT NULL,
  `Card_BlackListCreateTime` varchar(45) DEFAULT NULL,
  `Card_IdCustomerId` bigint(20) DEFAULT NULL,
  `Card_LastFourDigits` varchar(4) NOT NULL,
  PRIMARY KEY (`Card_Id`),
  UNIQUE KEY `Card_Number_UNIQUE` (`Card_Number`),
  KEY `Card_Bin` (`Card_Bin`),
  KEY `Fk_Card_1_idx` (`Card_IdCustomerId`),
  CONSTRAINT `Fk_Card_Customer` FOREIGN KEY (`Card_IdCustomerId`) REFERENCES `Customer` (`Cust_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_Card_Bin` FOREIGN KEY (`Card_Bin`) REFERENCES `Bin` (`Bin_Bin`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Charge`
--

DROP TABLE IF EXISTS `Charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Charge` (
  `Char_Id` bigint(20) NOT NULL,
  `Char_IdStripe` varchar(45) NOT NULL DEFAULT '',
  `Char_Amount` decimal(20,0) NOT NULL DEFAULT '0',
  `Char_Currency` varchar(45) NOT NULL DEFAULT 'usd',
  `Char_idCustomer` bigint(20) DEFAULT NULL,
  `Char_IdCard` bigint(20) DEFAULT NULL,
  `Char_Description` varchar(100) DEFAULT NULL,
  `Char_Metadata` varchar(500) DEFAULT NULL,
  `Char_Capture` varchar(45) NOT NULL DEFAULT 'true',
  `Char_StatementDescription` varchar(100) DEFAULT NULL,
  `Char_ReceiptEmail` varchar(50) DEFAULT NULL COMMENT '\n',
  `Char_ApplicationFee` varchar(50) DEFAULT NULL,
  `Char_Shipping` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Char_Id`,`Char_IdStripe`),
  UNIQUE KEY `Char_IdStripe_UNIQUE` (`Char_IdStripe`),
  KEY `Fk_Charge_Customer_idx` (`Char_idCustomer`),
  KEY `Fk_Charge_Card_idx` (`Char_IdCard`),
  CONSTRAINT `Fk_Charge_Customer` FOREIGN KEY (`Char_idCustomer`) REFERENCES `Customer` (`Cust_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_Charge_Card` FOREIGN KEY (`Char_IdCard`) REFERENCES `Card` (`Card_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `Cust_Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Cust_Phone` varchar(50) DEFAULT NULL,
  `Cust_Email` varchar(50) NOT NULL,
  `Cust_Username` varchar(50) NOT NULL,
  `Cust_Password` varchar(50) NOT NULL,
  PRIMARY KEY (`Cust_Id`),
  UNIQUE KEY `Cust_Email_UNIQUE` (`Cust_Email`),
  UNIQUE KEY `Cust_Username_UNIQUE` (`Cust_Username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Merchant`
--

DROP TABLE IF EXISTS `Merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Merchant` (
  `Merc_Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Merc_Name` varchar(100) NOT NULL,
  `Merc_Address` varchar(45) NOT NULL,
  PRIMARY KEY (`Merc_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ShippingAddress`
--

DROP TABLE IF EXISTS `ShippingAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShippingAddress` (
  `Shad_Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Shad_Address` varchar(100) NOT NULL,
  `Shad_City` varchar(50) NOT NULL,
  `Shad_Region` varchar(50) NOT NULL,
  `Shad_Postal` varchar(50) NOT NULL,
  `Shad_Country` varchar(50) NOT NULL,
  PRIMARY KEY (`Shad_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `StripeCharge_bk`
--

DROP TABLE IF EXISTS `StripeCharge_bk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StripeCharge_bk` (
  `Stch_Id` bigint(20) NOT NULL COMMENT '\n',
  `Stch_IdStripe` varchar(45) NOT NULL COMMENT 'ID asigned to the charge in Stripes'' systems.',
  `Stch_Created` datetime NOT NULL COMMENT 'Timestamp',
  `Stch_LiveMode` tinyint(1) NOT NULL COMMENT ' boolean',
  `Stch_Amount` decimal(20,0) NOT NULL COMMENT 'Amount charged in cents ',
  `Stch_Paid` tinyint(1) NOT NULL COMMENT 'Boolean',
  `Stch_Refunded` tinyint(1) DEFAULT NULL COMMENT 'Whether or not the charge has been fully refunded. If the charge is only partially refunded, this attribute will still be false',
  `Stch_Currency` varchar(3) NOT NULL DEFAULT 'usd' COMMENT 'Three-letter ISO currency code representing the currency in which the charge was made. ',
  `Stch_Captured` tinyint(1) DEFAULT NULL COMMENT 'If the charge was created without capturing, this boolean represents whether or not it is still uncaptured or has since been captured. ',
  `Stch_BalanceTransaction` varchar(45) DEFAULT NULL COMMENT 'ID of the balance transaction that describes the impact of this charge on your account balance (not including refunds or disputes).',
  `Stch_idDisputed` bigint(20) DEFAULT NULL COMMENT 'Details about the dispute if the charge has been disputed. ',
  `Stch_FailureMessage` varchar(45) DEFAULT NULL COMMENT 'Message to user further explaining reason for charge failure if available',
  `Stch_FailureCode` varchar(45) DEFAULT NULL COMMENT 'Error code explaining reason for charge failure if available (see https://stripe.com/docs/api#errors for a list of codes)',
  `Stch_AmountRefunded` decimal(20,0) DEFAULT NULL,
  `Stch_idCustomer` bigint(20) DEFAULT NULL,
  `Stch_Invoice` varchar(45) DEFAULT NULL COMMENT ' ID of the invoice this charge is for if one exists. ',
  `Stch_Description` varchar(45) DEFAULT NULL,
  `Stch_IdDispute` bigint(20) DEFAULT NULL,
  `Stch_Metadata` varchar(200) DEFAULT NULL,
  `Stch_StatementDescription` varchar(45) DEFAULT NULL COMMENT 'Extra information about a charge for the customer’s credit card statement.',
  `Stch_ReceiptEmail` varchar(45) DEFAULT NULL COMMENT 'This is the email address that the receipt for this charge was sent to.',
  `Stch_ReceiptNumber` varchar(45) DEFAULT NULL COMMENT 'This is the transaction number that appears on email receipts sent for this charge. ',
  `Stch_Shipping` varchar(45) DEFAULT NULL COMMENT 'hash or null Shipping information for the charge.',
  `Stch_idCard` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Stch_Id`,`Stch_IdStripe`),
  UNIQUE KEY `Stri_Id_UNIQUE` (`Stch_Id`),
  UNIQUE KEY `Stch_IdStripe_UNIQUE` (`Stch_IdStripe`),
  KEY `Fk_StripeCharge_Card_idx` (`Stch_idCard`),
  KEY `Fk_StripeCharge_Customer_idx` (`Stch_idCustomer`),
  CONSTRAINT `Fk_StripeCharge_Card` FOREIGN KEY (`Stch_idCard`) REFERENCES `Card` (`Card_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_StripeCharge_Customer` FOREIGN KEY (`Stch_idCustomer`) REFERENCES `Customer` (`Cust_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `StripeRefund`
--

DROP TABLE IF EXISTS `StripeRefund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StripeRefund` (
  `Stre_id` bigint(20) NOT NULL,
  `Stre_IdStripe` varchar(45) NOT NULL,
  `Stre_Amount` decimal(20,0) NOT NULL,
  `Stre_Created` datetime NOT NULL,
  `Stre_Currency` varchar(3) NOT NULL,
  `Stre_BalanceTransaction` varchar(45) DEFAULT NULL,
  `Stre_IdCharge` varchar(45) NOT NULL,
  `Stre_Metadata` varchar(200) DEFAULT NULL,
  `Stre_Reason` varchar(500) DEFAULT NULL,
  `Stre_ReceiptNumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Stre_id`,`Stre_IdCharge`),
  UNIQUE KEY `Stre_id_UNIQUE` (`Stre_id`),
  KEY `Fk_StripeRefund_StripeCharge_idx` (`Stre_IdStripe`),
  KEY `Fk_StripeRefund_StripeCharge_idx1` (`Stre_IdCharge`),
  CONSTRAINT `Fk_StripeRefund_StripeCharge` FOREIGN KEY (`Stre_IdCharge`) REFERENCES `StripeCharge_bk` (`Stch_IdStripe`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transaction` (
  `Tran_Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tran_OrderCurrency` varchar(3) NOT NULL,
  `Tran_MerchantId` bigint(20) NOT NULL,
  `Tran_TxnType` varchar(50) NOT NULL,
  `Tran_UserAgent` varchar(100) NOT NULL,
  `Tran_AcceptLanguage` varchar(50) NOT NULL,
  `Tran_CustomerId` bigint(20) NOT NULL,
  `Tran_CardId` bigint(20) NOT NULL,
  `Tran_BillingAddressCity` varchar(50) NOT NULL,
  `Tran_BillingAddressRegion` varchar(50) NOT NULL,
  `Tran_BillingAddressPostal` varchar(50) NOT NULL,
  `Tran_BillingAddressCountry` varchar(50) NOT NULL,
  `Tran_ShippingAddressId` bigint(20) DEFAULT NULL,
  `Tran_Product` varchar(100) NOT NULL,
  `Tran_Quantity` int(10) NOT NULL,
  `Tran_Rate` decimal(20,3) NOT NULL,
  `Tran_OrderAmount` decimal(20,3) NOT NULL,
  `Tran_CompanyName` varchar(100) NOT NULL,
  `Tran_Ip` varchar(50) NOT NULL,
  `Tran_SessionId` varchar(50) NOT NULL,
  `Tran_Domain` varchar(50) NOT NULL,
  PRIMARY KEY (`Tran_Id`),
  KEY `Fk_TransactionInformation_Mercant_idx` (`Tran_MerchantId`),
  KEY `Fk_TransactionInformation__idx` (`Tran_ShippingAddressId`),
  KEY `fk_TransactionInformation_Customer_idx` (`Tran_CustomerId`),
  KEY `Fk_TransactionInformation_Card_idx` (`Tran_CardId`),
  CONSTRAINT `Fk_TransactionInformation_Customer` FOREIGN KEY (`Tran_CustomerId`) REFERENCES `Customer` (`Cust_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_TransactionInformation_Mercant` FOREIGN KEY (`Tran_MerchantId`) REFERENCES `Merchant` (`Merc_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_TransactionInformation_ShippingAddress` FOREIGN KEY (`Tran_ShippingAddressId`) REFERENCES `ShippingAddress` (`Shad_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'IPG'
--

--
-- Dumping routines for database 'IPG'
--
/*!50003 DROP PROCEDURE IF EXISTS `PROC_LIST_TRANSACTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_LIST_TRANSACTION`(
`P_Tran_Id` BIGINT(20))
BEGIN
SELECT 
	A.`Tran_Id`,
	A.`Tran_OrderCurrency`,
	A.`Tran_TxnType`,
	A.`Tran_CustomerId`,
	A.`Tran_CardId`,
	A.`Tran_OrderAmount`,
	B.`Card_Number`,
	B.`Card_Name`	
FROM `IPG`.`Transaction` A, `IPG`.`Card` B, `IPG`.`Customer` C
WHERE A.`Tran_CardId` = B.`Card_Id`
AND A.`Tran_CustomerId` = C.`Cust_Id`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_BIN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_BIN`(
`P_Bin_Bin` Varchar(6),
`P_Bin_Brand` Varchar(50),
`P_Bin_Sub_Brand` Varchar(50),
`P_Bin_Country_Code` Varchar(2),
`P_Bin_Country_Name` Varchar(100),
`P_Bin_Bank` Varchar(100),
`P_Bin_Card_Type` Varchar(50),
`P_Bin_Card_Category` Varchar(50),
INOUT `P_Bin_Id` int(20))
BEGIN
    SET P_Bin_Id = (SELECT `Bin_Id`  FROM `IPG`.`Bin` WHERE `Bin_Bin` = P_Bin_Bin);
    IF (P_Bin_Id IS NULL) THEN 
		INSERT INTO `IPG`.`Bin`
		(`Bin_Bin`,
		`Bin_Brand`,
		`Bin_Sub_Brand`,
		`Bin_Country_Code`,
		`Bin_Country_Name`,
		`Bin_Bank`,
		`Bin_Card_Type`,
		`Bin_Card_Category`)
		VALUES
		(P_Bin_Bin,
		P_Bin_Brand,
		P_Bin_Sub_Brand,
		P_Bin_Country_Code,
		P_Bin_Country_Name,
		P_Bin_Bank,
		P_Bin_Card_Type,
		P_Bin_Card_Category);
		SET P_Bin_Id = (SELECT LAST_INSERT_ID());
    END IF;
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
`P_Card_Bin` Int(6),
`P_Card_Name` Varchar(50),
`P_Card_Number` Varchar(100),
`P_Card_CVV` Int(3),
`P_Card_Address` Varchar(200),
`P_Card_ExpirationYear` Varchar(4),
`P_Card_ExpirationMonth` Varchar(2),
`P_Card_CustomerId`  Varchar(20),
INOUT `P_Card_Id` int(10))
BEGIN
    SET P_Card_Id = (SELECT `Card_Id`  FROM `IPG`.`Card` WHERE `Card_Number` = P_Card_Number);
    IF (P_Card_Id IS NULL) THEN 

		INSERT INTO `IPG`.`Card`
		(`Card_Bin`,
		`Card_Name`,
		`Card_Number`,
		`Card_CVV`,
		`Card_Address`,
		`Card_ExpirationYear`,
		`Card_ExpirationMonth`,
		`Card_RegistrationTime`,
		`Card_CustomerId`)
		VALUES
		(P_Card_Bin,
		P_Card_Name,
		P_Card_Number,
		P_Card_CVV,
		P_Card_Address,
		P_Card_ExpirationYear,
		P_Card_ExpirationMonth,
		now(),
		P_Card_CustomerId);
		SET P_Card_Id = (SELECT LAST_INSERT_ID());
    END IF;
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
`P_Cust_Phone` Varchar(50),
`P_Cust_Email` Varchar(50),
`P_Cust_Username` Varchar(50),
`P_Cust_Password` Varchar(50),
INOUT `P_Cust_Id` int(20))
BEGIN
    SET P_Cust_Id = (SELECT `Cust_Id`  FROM `IPG`.`Customer` WHERE `Cust_Username` = P_Cust_Username);
    IF (P_Cust_Id IS NULL) THEN 
		INSERT INTO `IPG`.`Customer`
		(`Cust_Phone`,
		`Cust_Email`,
		`Cust_Username`,
		`Cust_Password`)
		VALUES
		(P_Cust_Phone,
		P_Cust_Email,
		P_Cust_Username,
		P_Cust_Password);
		SET P_Cust_Id = (SELECT LAST_INSERT_ID());
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_STRIPECHARGE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_STRIPECHARGE`(
`P_Stch_IdStripe` varchar(45),
`P_Stch_Object` varchar(45),
`P_Stch_LiveMode` tinyint(1),
`P_Stch_Paid` tinyint(1),
`P_Stch_Amount` decimal(20,0),
`P_Stch_Currency` varchar(3),
`P_Stch_Refunded` tinyint(1),
`P_Stch_Captured` tinyint(1),
`P_Stch_BalanceTransaction` varchar(45),
`P_Stch_idDisputed` bigint(20),
`P_Stch_FailureMessage` varchar(45),
`P_Stch_FailureCode` varchar(45),
`P_Stch_AmountRefunded` decimal(20,0),
`P_Stch_idCustomer` bigint(20),
`P_Stch_Invoice` varchar(45),
`P_Stch_Description` varchar(45),
`P_Stch_IdDispute` bigint(20),
`P_Stch_Metadata` varchar(200),
`P_Stch_StatementDescription` varchar(45),
`P_Stch_ReceiptEmail` varchar(45),
`P_Stch_ReceiptNumber` varchar(45),
`P_Stch_Shipping` varchar(45),
`P_Stch_idCard` bigint(20),
INOUT `P_Stch_Id` BIGINT(20))
BEGIN

		INSERT INTO `IPG`.`StripeCharge`
		(`Stch_IdStripe`,
		`Stch_Object`,
		`Stch_Created`,
		`Stch_LiveMode`,
		`Stch_Paid`,
		`Stch_Amount`,
		`Stch_Currency`,
		`Stch_Refunded`,
		`Stch_Captured`,
		`Stch_BalanceTransaction`,
		`Stch_idDisputed`,
		`Stch_FailureMessage`,
		`Stch_FailureCode`,
		`Stch_AmountRefunded`,
		`Stch_idCustomer`,
		`Stch_Invoice`,
		`Stch_Description`,
		`Stch_IdDispute`,
		`Stch_Metadata`,
		`Stch_StatementDescription`,
		`Stch_ReceiptEmail`,
		`Stch_ReceiptNumber`,
		`Stch_Shipping`)
		/*`Stch_idCard`)*/
		VALUES
		(P_Stch_IdStripe,
		P_Stch_Object,
		now(),
		P_Stch_LiveMode,
		P_Stch_Paid,
		P_Stch_Amount,
		P_Stch_Currency,
		P_Stch_Refunded,
		P_Stch_Captured,
		P_Stch_BalanceTransaction,
		P_Stch_idDisputed,
		P_Stch_FailureMessage,
		P_Stch_FailureCode,
		P_Stch_AmountRefunded,
		P_Stch_idCustomer,
		P_Stch_Invoice,
		P_Stch_Description,
		P_Stch_IdDispute,
		P_Stch_Metadata,
		P_Stch_StatementDescription,
		P_Stch_ReceiptEmail,
		P_Stch_ReceiptNumber,
		P_Stch_Shipping);
		/*P_Stch_idCard);*/
		SET P_Stch_Id = (SELECT LAST_INSERT_ID());
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
`P_Tran_OrderCurrency` Varchar(3),
`P_Tran_MerchantId` BIGINT(20),
`P_Tran_TxnType` VARCHAR(50),
`P_Tran_UserAgent` VARCHAR(100),
`P_Tran_AcceptLanguage` VARCHAR(50),
`P_Tran_CustomerId` BIGINT(20),
`P_Tran_CardId` BIGINT(20),
`P_Tran_BillingAddressCity` VARCHAR(50),
`P_Tran_BillingAddressRegion` VARCHAR(50),
`P_Tran_BillingAddressPostal` VARCHAR(50),
`P_Tran_BillingAddressCountry` VARCHAR(50),
`P_Tran_ShippingAddressId` BIGINT(20),
`P_Tran_Product` VARCHAR(100),
`P_Tran_Quantity` INT(10),
`P_Tran_Rate` DECIMAL(20,3),
`P_Tran_OrderAmount` DECIMAL(20,3),
`P_Tran_CompanyName` VARCHAR(100),
`P_Tran_Ip` VARCHAR(50),
`P_Tran_SessionId` VARCHAR(50),
`P_Tran_Domain` VARCHAR(50),
INOUT `P_Tran_Id` BIGINT(20))
BEGIN

		INSERT INTO `IPG`.`Transaction`
		(`Tran_OrderCurrency`,
		`Tran_MerchantId`,
		`Tran_TxnType`,
		`Tran_UserAgent`,
		`Tran_AcceptLanguage`,
		`Tran_CustomerId`,
		`Tran_CardId`,
		`Tran_BillingAddressCity`,
		`Tran_BillingAddressRegion`,
		`Tran_BillingAddressPostal`,
		`Tran_BillingAddressCountry`,
		`Tran_ShippingAddressId`,
		`Tran_Product`,
		`Tran_Quantity`,
		`Tran_Rate`,
		`Tran_OrderAmount`,
		`Tran_CompanyName`,
		`Tran_Ip`,
		`Tran_SessionId`,
		`Tran_Domain`)
		VALUES
		(P_Tran_OrderCurrency,
		P_Tran_MerchantId,
		P_Tran_TxnType,
		P_Tran_UserAgent,
		P_Tran_AcceptLanguage,
		P_Tran_CustomerId,
		P_Tran_CardId,
		P_Tran_BillingAddressCity,
		P_Tran_BillingAddressRegion,
		P_Tran_BillingAddressPostal,
		P_Tran_BillingAddressCountry,
		P_Tran_ShippingAddressId,
		P_Tran_Product,
		P_Tran_Quantity,
		P_Tran_Rate,
		P_Tran_OrderAmount,
		P_Tran_CompanyName,
		P_Tran_Ip,
		P_Tran_SessionId,
		P_Tran_Domain);
		SET P_Tran_Id = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_BIN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_BIN`(
`P_Bin_Bin` int(6))
BEGIN
	SELECT `Bin_Id`, `Bin_Bin`, `Bin_Brand`  FROM `IPG`.`Bin` WHERE `Bin_Bin` = P_Bin_Bin;
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

-- Dump completed on 2014-12-03 15:35:11
