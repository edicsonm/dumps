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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_`
--

LOCK TABLES `User_` WRITE;
/*!40000 ALTER TABLE `User_` DISABLE KEYS */;
INSERT INTO `User_` VALUES ('c409acf6-fe15-4c6f-b6c3-a6538b915843',10257,10253,'2014-06-11 21:08:26','2014-06-11 21:08:26',1,10258,'password',0,0,NULL,'5533ed38b5e33c076a804bb4bca644f9,7c493c1781eaa795ae648c5dc1d2be70,7c493c1781eaa795ae648c5dc1d2be70','','',0,'10257','default@liferay.com',0,'',0,'es_ES','UTC','Welcome!','','','','','','2014-06-11 21:08:26','',NULL,'',NULL,0,0,NULL,1,0,0),('5442a24f-baec-4bb2-947e-b0075e287cf5',10295,10253,'2014-06-11 21:08:28','2014-06-11 21:08:28',0,10296,'qUqP5cyxm6YcTAhz05Hph5gvu9M=',1,0,NULL,'','','',0,'test','test@liferay.com',0,'',0,'en_US','UTC','Welcome Test Test!','','Test','','Test','','2014-06-11 21:08:28','','2014-06-11 21:08:28','',NULL,0,0,NULL,0,1,5),('32a8f9fd-8d08-46d5-8374-911e031a8fb5',10506,10253,'2014-06-11 21:09:36','2014-06-11 21:09:36',0,10507,'W6ph5Mm5Pz8GgiULbPgzG37mj9g=',1,0,'2014-06-11 21:10:47','0b76f15b0abaf23fc0ed0f153e80b095,0d74134f283c0a02912913353cb775c7,38827acee68170c25ecc23c57a131e16','what-is-your-father\'s-middle-name','Caro',0,'edicsonm','edicsonm@liferay.com',0,'',0,'es_ES','UTC','Bienvenido  Edicson Morales!','','Edicson','','Morales','','2014-08-01 08:24:58','127.0.0.1','2014-07-26 08:40:04','127.0.0.1',NULL,0,0,NULL,1,1,0),('0f948cfd-ed3e-4ff2-8d33-e35e2b60dacf',11203,10253,'2014-06-12 18:22:48','2014-06-12 18:25:36',0,11204,'W6ph5Mm5Pz8GgiULbPgzG37mj9g=',1,0,'2014-06-12 18:26:48','45c1f3cd0ada55d2f1d9e9ba4e92de18,efab3b871a1c4fabb4bf9a1d254bb193,43174a3ea6d1e6bb13fbe858d371c706','what-is-your-father\'s-middle-name','Caro',0,'pepo','pepo@liferay.com',0,'',0,'es_ES','UTC','Bienvenido  Pepo!','','Pepo','','','Pepo App','2014-08-03 02:59:32','127.0.0.1','2014-08-03 01:50:26','127.0.0.1',NULL,0,0,NULL,1,0,0);
/*!40000 ALTER TABLE `User_` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-28  9:52:18
