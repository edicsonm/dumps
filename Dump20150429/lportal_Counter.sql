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
INSERT INTO `Counter` VALUES ('com.liferay.counter.model.Counter',34500),('com.liferay.portal.model.Layout#10173#true',1),('com.liferay.portal.model.Layout#10182#false',1),('com.liferay.portal.model.Layout#10318#true',1),('com.liferay.portal.model.Layout#10330#true',1),('com.liferay.portal.model.Layout#10340#true',1),('com.liferay.portal.model.Layout#10351#true',2),('com.liferay.portal.model.Layout#10377#true',3),('com.liferay.portal.model.Layout#10443#false',1),('com.liferay.portal.model.Layout#10443#true',1),('com.liferay.portal.model.Layout#11985#true',1),('com.liferay.portal.model.Layout#12202#true',1),('com.liferay.portal.model.Layout#12422#true',1),('com.liferay.portal.model.Layout#13037#false',8),('com.liferay.portal.model.Layout#13037#true',10),('com.liferay.portal.model.Layout#13420#true',1),('com.liferay.portal.model.Layout#14022#true',1),('com.liferay.portal.model.Layout#14843#true',1),('com.liferay.portal.model.Layout#14923#true',1),('com.liferay.portal.model.Layout#16809#true',1),('com.liferay.portal.model.Layout#18257#true',1),('com.liferay.portal.model.Layout#19902#false',1),('com.liferay.portal.model.Layout#22778#true',1),('com.liferay.portal.model.Layout#23332#true',1),('com.liferay.portal.model.Layout#24303#true',1),('com.liferay.portal.model.Layout#26323#true',1),('com.liferay.portal.model.Layout#30272#true',1),('com.liferay.portal.model.Layout#31602#true',1),('com.liferay.portal.model.ResourceAction',3500),('com.liferay.portal.model.ResourceBlock',1300),('com.liferay.portal.model.ResourcePermission',17900),('com.liferay.portlet.documentlibrary.model.DLFileEntry',600),('com.liferay.portlet.social.model.SocialActivity',300),('com.liferay.webform.util.WebFormUtil',100);
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

-- Dump completed on 2015-04-29 19:28:20
