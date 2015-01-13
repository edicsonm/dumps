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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bin`
--

LOCK TABLES `Bin` WRITE;
/*!40000 ALTER TABLE `Bin` DISABLE KEYS */;
INSERT INTO `Bin` VALUES (13,540132,'MASTERCARD','','VE','Venezuela','BANCO DEL CARIBE C.A., BANCO UNIVERS.A.L.','CREDIT','GOLD');
/*!40000 ALTER TABLE `Bin` ENABLE KEYS */;
UNLOCK TABLES;

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
  `Card_CustomerId` bigint(20) NOT NULL,
  PRIMARY KEY (`Card_Id`),
  UNIQUE KEY `Card_Number_UNIQUE` (`Card_Number`),
  KEY `Card_Bin` (`Card_Bin`),
  KEY `Fk_Card_1_idx` (`Card_CustomerId`),
  CONSTRAINT `Fk_Card_Bin` FOREIGN KEY (`Card_Bin`) REFERENCES `Bin` (`Bin_Bin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_Card_Customer` FOREIGN KEY (`Card_CustomerId`) REFERENCES `Customer` (`Cust_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card`
--

LOCK TABLES `Card` WRITE;
/*!40000 ALTER TABLE `Card` DISABLE KEYS */;
INSERT INTO `Card` VALUES (7,540132,'Edicson','5401324612153930',123,NULL,'2014','01','2014-12-03 15:45:49',NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `Card` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (2,NULL,'edicsonm@gmail.com','1234','test_carder_password');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Merchant`
--

LOCK TABLES `Merchant` WRITE;
/*!40000 ALTER TABLE `Merchant` DISABLE KEYS */;
INSERT INTO `Merchant` VALUES (2,'Merchand1','Address Merchand1');
/*!40000 ALTER TABLE `Merchant` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `ShippingAddress`
--

LOCK TABLES `ShippingAddress` WRITE;
/*!40000 ALTER TABLE `ShippingAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShippingAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StripeCharge`
--

DROP TABLE IF EXISTS `StripeCharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StripeCharge` (
  `Stch_Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Stch_IdStripe` varchar(45) NOT NULL,
  `Stch_Object` varchar(45) NOT NULL DEFAULT 'charge',
  `Stch_Created` datetime NOT NULL,
  `Stch_LiveMode` tinyint(1) NOT NULL,
  `Stch_Paid` tinyint(1) NOT NULL,
  `Stch_Amount` decimal(20,0) NOT NULL,
  `Stch_Currency` varchar(3) NOT NULL DEFAULT 'usd',
  `Stch_Refunded` tinyint(1) DEFAULT NULL,
  `Stch_Captured` tinyint(1) DEFAULT NULL,
  `Stch_BalanceTransaction` varchar(45) DEFAULT NULL,
  `Stch_idDisputed` bigint(20) DEFAULT NULL,
  `Stch_FailureMessage` varchar(45) DEFAULT NULL,
  `Stch_FailureCode` varchar(45) DEFAULT NULL,
  `Stch_AmountRefunded` decimal(20,0) DEFAULT NULL,
  `Stch_idCustomer` bigint(20) DEFAULT NULL,
  `Stch_Invoice` varchar(45) DEFAULT NULL,
  `Stch_Description` varchar(45) DEFAULT NULL,
  `Stch_IdDispute` bigint(20) DEFAULT NULL,
  `Stch_Metadata` varchar(200) DEFAULT NULL,
  `Stch_StatementDescription` varchar(45) DEFAULT NULL,
  `Stch_ReceiptEmail` varchar(45) DEFAULT NULL,
  `Stch_ReceiptNumber` varchar(45) DEFAULT NULL,
  `Stch_Shipping` varchar(45) DEFAULT NULL,
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
-- Dumping data for table `StripeCharge`
--

LOCK TABLES `StripeCharge` WRITE;
/*!40000 ALTER TABLE `StripeCharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `StripeCharge` ENABLE KEYS */;
UNLOCK TABLES;

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
  CONSTRAINT `Fk_StripeRefund_StripeCharge` FOREIGN KEY (`Stre_IdCharge`) REFERENCES `StripeCharge` (`Stch_IdStripe`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StripeRefund`
--

LOCK TABLES `StripeRefund` WRITE;
/*!40000 ALTER TABLE `StripeRefund` DISABLE KEYS */;
/*!40000 ALTER TABLE `StripeRefund` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
INSERT INTO `Transaction` VALUES (37,'USD',2,'creditcard','Mozilla/5.0 (X11; Linux x86_64; rv:33.0) Gecko/20100101 Firefox/33.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',2,7,'New York','NY','11434','US',NULL,'Toothbrush',2,100.000,100.000,'Personal','127.0.0.1','6C499D1B000626853CDEAE3E382EDE41','yahoo.com'),(38,'USD',2,'creditcard','Mozilla/5.0 (X11; Linux x86_64; rv:33.0) Gecko/20100101 Firefox/33.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',2,7,'New York','NY','11434','US',NULL,'Toothbrush',2,100.000,100.000,'Hogar','127.0.0.1','6C499D1B000626853CDEAE3E382EDE41','yahoo.com'),(39,'USD',2,'creditcard','Mozilla/5.0 (X11; Linux x86_64; rv:33.0) Gecko/20100101 Firefox/33.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',2,7,'New York','NY','11434','US',NULL,'Toothbrush',2,100.000,100.000,'Personal','127.0.0.1','6C499D1B000626853CDEAE3E382EDE41','yahoo.com');
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'IPG'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-05 12:45:04
