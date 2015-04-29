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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Merchant`
--

LOCK TABLES `Merchant` WRITE;
/*!40000 ALTER TABLE `Merchant` DISABLE KEYS */;
INSERT INTO `Merchant` VALUES (1,1,1,170,170,'Tuticket.com.co','0','2015-01-18 18:49:50','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL),(2,1,1,862,170,'Tucarro.com.ve','0','2015-01-16 21:29:55','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL),(3,1,1,862,170,'Tutickewww','0','2015-01-16 21:21:25','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL),(4,1,1,170,170,'Mercado Libre','0','2015-02-02 11:15:48','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL),(5,2,3,170,170,'Empresas Polar Colombia','0','2015-03-05 19:52:09','Empresas Polar Colombia','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19',NULL,NULL,NULL,NULL,NULL),(6,1,1,862,862,'Empresas Polar Venezuela','0','2015-03-05 19:52:25','Empresas Polar Venezuela','Caracas','Av Ppal El Bosque','102030','Caracas','1060','8','9','10','11','12','13','14','15','16','17','18','19',NULL,NULL,NULL,NULL,NULL),(7,1,3,862,862,'Tu ticket','0','2015-03-13 09:23:55','2','3','4','5','6','7','8','9','10','11','TuTicket','Venezuela','14','15','16','17','18','19',NULL,NULL,NULL,NULL,NULL),(8,2,2,604,604,'Mercado Libre Peru','0','2015-03-14 09:41:38','2','3','4','5','6','7','8','9','10','11','Mercado','13','14','15','16','17','18','19',NULL,NULL,NULL,NULL,NULL),(9,4,2,570,NULL,'Business Name','0','2015-04-23 19:03:35','Trading Name','Legal Physical Address','Statement Address','Tax File Number','City','2216','','','SDASDASD','123123123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11','22','false','false','false'),(10,NULL,NULL,NULL,NULL,'Company19.com','0','2015-03-19 17:48:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'company19','company19 last name',NULL,NULL,'company19@billingbuddy.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL,'BillingBuddy','0','2015-03-21 08:59:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Angus','',NULL,NULL,'angus@billingbuddy.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,'wer','0','2015-03-26 17:43:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EMT Ltda','',NULL,NULL,'edicson@billingbuddy.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,'wer','0','2015-03-26 17:43:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EMT Ltda','',NULL,NULL,'edicson2@billingbuddy.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,'asd','0','2015-03-26 17:51:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sad','',NULL,NULL,'edicson@billingbuddy.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL,'asd','0','2015-03-26 17:51:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sad','',NULL,NULL,'edicson3@billingbuddy.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,1,1,248,248,'a','1','2015-04-15 19:49:56','asd','asd','asd','asd','asd','asd','asd','asd','asd','asd','a','asd','asd','asd','edicson4@billingbuddy.com','asd','asd','zxc',NULL,NULL,NULL,NULL,NULL),(17,NULL,NULL,NULL,NULL,'Usuario','0','2015-03-27 09:31:31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Usuario','Usuario',NULL,NULL,'ingesis9@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,NULL,NULL,NULL,NULL,'w','0','2015-03-27 09:55:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'w','',NULL,NULL,'ingesis9@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,NULL,NULL,NULL,NULL,'qw','0','2015-03-27 10:14:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'qe','',NULL,NULL,'ingesis9@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,NULL,NULL,NULL,NULL,'w','0','2015-03-27 10:25:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'w','',NULL,NULL,'ingesis9@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,1,1,248,248,'123','0','2015-04-15 19:52:58','123','213','123','123','123','123','123','123','123','123','456','456','456','456','456','456','456','789',NULL,NULL,NULL,NULL,NULL),(22,1,1,248,248,'qwe','0','2015-04-15 20:11:16','qwe','qwe','qwe','qwe','qwe','qwe','qwe','qwe','qwe','qwe','asd','asd','asd','asd','asd','asd','asd','cbv',NULL,NULL,NULL,NULL,NULL),(23,1,1,248,NULL,'HolaXXXXXXXXXXXXXXXXXXXXXXXXXXX','0','2015-04-20 19:22:11','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,1,1,248,NULL,'Hola','0','2015-04-20 19:30:10','AAAAAAAAAAAAAA','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Merchant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-29 19:28:23
