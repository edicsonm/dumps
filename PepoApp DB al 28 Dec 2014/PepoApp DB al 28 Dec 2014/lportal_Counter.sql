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
-- Table structure for table `Counter`
--

DROP TABLE IF EXISTS `Counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Counter` (
  `name` varchar(75) NOT NULL,
  `currentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Counter`
--

LOCK TABLES `Counter` WRITE;
/*!40000 ALTER TABLE `Counter` DISABLE KEYS */;
INSERT INTO `Counter` VALUES ('com.liferay.counter.model.Counter',12200),('com.liferay.portal.model.Layout#10271#true',1),('com.liferay.portal.model.Layout#10279#false',9),('com.liferay.portal.model.Layout#10279#true',5),('com.liferay.portal.model.Layout#10410#true',1),('com.liferay.portal.model.Layout#10420#true',1),('com.liferay.portal.model.Layout#10429#true',1),('com.liferay.portal.model.Layout#10438#true',3),('com.liferay.portal.model.Layout#10464#true',4),('com.liferay.portal.model.Layout#10904#true',1),('com.liferay.portal.model.Layout#10913#true',1),('com.liferay.portal.model.Layout#10922#true',1),('com.liferay.portal.model.Layout#10931#true',1),('com.liferay.portal.model.Layout#10940#true',1),('com.liferay.portal.model.Layout#11303#true',1),('com.liferay.portal.model.Layout#11403#true',1),('com.liferay.portal.model.Layout#11412#true',1),('com.liferay.portal.model.Layout#11421#true',1),('com.liferay.portal.model.Layout#11430#true',1),('com.liferay.portal.model.Permission',100),('com.liferay.portal.model.Resource',100),('com.liferay.portal.model.ResourceAction',1500),('com.liferay.portal.model.ResourcePermission',1900),('com.liferay.portlet.documentlibrary.model.DLFileEntry',100),('com.liferay.portlet.social.model.SocialActivity',100);
/*!40000 ALTER TABLE `Counter` ENABLE KEYS */;
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
