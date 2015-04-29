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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card`
--

LOCK TABLES `Card` WRITE;
/*!40000 ALTER TABLE `Card` DISABLE KEYS */;
INSERT INTO `Card` VALUES (1,1,'card_15D4Pr2eZvKYlo2CLLBvQcUB',NULL,1,2015,NULL,NULL,'4012888888881882','Isauro Morales','1881',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(2,1,'card_15Dhss2eZvKYlo2CtHD2SycW','Visa',1,2015,NULL,'credit','4242424242424242','Andres Correa','4242',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(4,1,'card_15TiqM2eZvKYlo2CapcjaZYu','Visa',1,2016,'O3pqFmyLW2EZyTSV','credit','4000000000000010','Milton Malpica','0010',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(5,1,'card_15Tit12eZvKYlo2CGfs1HRlb','Visa',1,2016,'3Zbsw8NvUfURjjfT','credit','4000000000000101','Carlos Torres','0101',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(7,1,'card_15TjsxFBMYSHQioJABIMHNnA','Visa',1,2016,'gms4oo4eC8vfCKQU','credit','4000000000000028','Edicson Morales','0028',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(8,1,'card_15TjuBFBMYSHQioJ8qycMK6r','Visa',1,2016,'Ez8roEj98KES1J95','credit','4000000000000077','Emerson Morales','0077',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(9,4,'card_15UQTUFBMYSHQioJEiRsjs0t','MasterCard',1,2016,'uqIccrnlKxFCAptH','prepaid','5105105105105100','Nelcy Torres','5100',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(10,1,'card_15jlAGFBMYSHQioJgWYW3HZa','Visa',1,2016,'C9KDidjmpBSBEL4w','credit','4012888888881881','Edicson Morales','1881',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(11,1,'card_15rif4FBMYSHQioJoNb43LiI','MasterCard',1,2016,'0UYRl9pmGA2X0ysF','credit','5555555555554444','Edicson Morales','4444',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Card` ENABLE KEYS */;
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
