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
-- Table structure for table `KaleoTaskAssignment`
--

DROP TABLE IF EXISTS `KaleoTaskAssignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoTaskAssignment` (
  `kaleoTaskAssignmentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `assigneeClassName` varchar(200) DEFAULT NULL,
  `assigneeClassPK` bigint(20) DEFAULT NULL,
  `assigneeActionId` varchar(75) DEFAULT NULL,
  `assigneeScript` longtext,
  `assigneeScriptLanguage` varchar(75) DEFAULT NULL,
  `assigneeScriptRequiredContexts` longtext,
  PRIMARY KEY (`kaleoTaskAssignmentId`),
  KEY `IX_611732B0` (`companyId`),
  KEY `IX_D835C576` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_1087068E` (`kaleoClassName`,`kaleoClassPK`,`assigneeClassName`),
  KEY `IX_575C03A6` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoTaskAssignment`
--

LOCK TABLES `KaleoTaskAssignment` WRITE;
/*!40000 ALTER TABLE `KaleoTaskAssignment` DISABLE KEYS */;
INSERT INTO `KaleoTaskAssignment` VALUES (11288,0,10155,10159,'','2015-03-06 08:15:35','2015-03-06 08:15:35','com.liferay.portal.workflow.kaleo.model.KaleoTask',11287,11279,0,'com.liferay.portal.model.Role',11289,'','','',''),(11290,0,10155,10159,'','2015-03-06 08:15:35','2015-03-06 08:15:35','com.liferay.portal.workflow.kaleo.model.KaleoTask',11287,11279,0,'com.liferay.portal.model.Role',10162,'','','',''),(11291,0,10155,10159,'','2015-03-06 08:15:35','2015-03-06 08:15:35','com.liferay.portal.workflow.kaleo.model.KaleoTask',11287,11279,0,'com.liferay.portal.model.Role',10167,'','','',''),(11292,0,10155,10159,'','2015-03-06 08:15:35','2015-03-06 08:15:35','com.liferay.portal.workflow.kaleo.model.KaleoTask',11287,11279,0,'com.liferay.portal.model.Role',10168,'','','',''),(11293,0,10155,10159,'','2015-03-06 08:15:35','2015-03-06 08:15:35','com.liferay.portal.workflow.kaleo.model.KaleoTask',11287,11279,0,'com.liferay.portal.model.Role',10170,'','','',''),(11294,0,10155,10159,'','2015-03-06 08:15:35','2015-03-06 08:15:35','com.liferay.portal.workflow.kaleo.model.KaleoTask',11287,11279,0,'com.liferay.portal.model.Role',11295,'','','',''),(11296,0,10155,10159,'','2015-03-06 08:15:35','2015-03-06 08:15:35','com.liferay.portal.workflow.kaleo.model.KaleoTask',11287,11279,0,'com.liferay.portal.model.Role',10172,'','','',''),(11297,0,10155,10159,'','2015-03-06 08:15:35','2015-03-06 08:15:35','com.liferay.portal.workflow.kaleo.model.KaleoTask',11287,11279,0,'com.liferay.portal.model.Role',11298,'','','',''),(11303,0,10155,10159,'','2015-03-06 08:15:36','2015-03-06 08:15:36','com.liferay.portal.workflow.kaleo.model.KaleoTask',11302,11279,0,'com.liferay.portal.model.User',0,'','','','');
/*!40000 ALTER TABLE `KaleoTaskAssignment` ENABLE KEYS */;
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
