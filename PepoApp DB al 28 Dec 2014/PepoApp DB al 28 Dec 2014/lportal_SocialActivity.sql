-- MySQL dump 10.13  Distrib 5.6.19, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: lportal
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
  `mirrorActivityId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`activityId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivity`
--

LOCK TABLES `SocialActivity` WRITE;
/*!40000 ALTER TABLE `SocialActivity` DISABLE KEYS */;
INSERT INTO `SocialActivity` VALUES (1,10279,10253,10257,1402520977237,0,10110,10522,1,'{\"title\":\"welcome_bg_3\"}',0),(2,10279,10253,10257,1402520977652,0,10110,10531,1,'{\"title\":\"welcome_bg_7\"}',0),(3,10279,10253,10257,1402520977750,0,10110,10540,1,'{\"title\":\"welcome_bg_11\"}',0),(4,10279,10253,10257,1402520977808,0,10110,10548,1,'{\"title\":\"welcome_bg_12\"}',0),(5,10279,10253,10257,1402520977878,0,10110,10559,1,'{\"title\":\"welcome_bg_5\"}',0),(6,10279,10253,10257,1402520977969,0,10110,10575,1,'{\"title\":\"welcome_bg_10\"}',0),(7,10279,10253,10257,1402520978055,0,10110,10591,1,'{\"title\":\"welcome_bg_2\"}',0),(8,10279,10253,10257,1402520978129,0,10110,10603,1,'{\"title\":\"welcome_bg_13\"}',0),(9,10279,10253,10257,1402520978207,0,10110,10615,1,'{\"title\":\"welcome_bg_9\"}',0),(10,10279,10253,10257,1402520978278,0,10110,10627,1,'{\"title\":\"welcome_bg_1\"}',0),(11,10279,10253,10257,1402520978753,0,10110,10639,1,'{\"title\":\"welcome_bg_4\"}',0),(12,10279,10253,10257,1402520978810,0,10110,10651,1,'{\"title\":\"welcome_bg_8\"}',0),(13,10279,10253,10257,1402520978865,0,10110,10663,1,'{\"title\":\"welcome_bg_6\"}',0);
/*!40000 ALTER TABLE `SocialActivity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-28  9:52:17
