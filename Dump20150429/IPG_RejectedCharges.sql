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
-- Dumping data for table `RejectedCharges`
--

LOCK TABLES `RejectedCharges` WRITE;
/*!40000 ALTER TABLE `RejectedCharges` DISABLE KEYS */;
INSERT INTO `RejectedCharges` VALUES (1,99,55076,'USD','incorrect_number','Your card number is incorrect.','40128888888818812','2016','01','Edicson Morales','2015-01-08 11:03:52'),(2,100,55076,'USD','incorrect_number','Your card number is incorrect.','40000566556655563','2016','01','Edicson Morales','2015-01-08 11:20:43'),(3,101,55076,'USD','incorrect_number','Your card number is incorrect.','555555555555444422','2016','01','MIchelle Earle','2015-01-10 11:21:26'),(4,105,55076,'USD','card_declined','Your card was declined.','4000000000000341','2016','01','Hamilton Morales','2015-01-10 11:30:38'),(5,106,55076,'USD','card_declined','Your card was declined.','4000000000000341','2016','01','Emerson Morales','2015-02-04 11:33:21'),(6,107,55076,'USD','card_declined','Your card was declined.','4000000000000002','2016','01','Nelcy Torres','2015-02-04 11:34:24'),(7,108,55076,'USD','incorrect_cvc','Your card\'s security code is incorrect.','4000000000000127','2016','01','Isauro Morales','2015-02-06 11:35:03'),(8,109,55076,'USD','incorrect_cvc','Your card\'s security code is incorrect.','4000000000000127','2016','01','Veronica Castro','2015-02-08 11:38:38'),(9,110,55076,'USD','expired_card','Your card has expired.','4000000000000069','2016','01','Nelcy Torres','2015-02-08 11:39:51'),(10,111,55076,'USD','processing_error','An error occurred while processing your card. Try again in a little bit.','4000000000000119','2016','01','Edicson Morales','2015-02-08 12:00:38'),(11,117,55076,'USD','incorrect_cvc','Your card\'s security code is incorrect.','4000000000000101','2016','01','Edicson Morales','2015-02-08 12:28:18'),(12,118,55076,'USD','incorrect_cvc','Your card\'s security code is incorrect.','4000000000000101','2016','01','Edicson Morales','2015-02-08 12:28:43'),(13,172,7689,'USD','incorrect_number','Your card number is incorrect.','4012888888881854','2016','01','Edicson Morales','2015-04-13 21:03:00'),(14,174,8924,'USD','incorrect_number','Your card number is incorrect.','4012888888881854','2016','01','Edicson Morales','2015-04-13 21:08:48');
/*!40000 ALTER TABLE `RejectedCharges` ENABLE KEYS */;
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
