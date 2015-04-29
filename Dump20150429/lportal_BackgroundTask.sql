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
-- Table structure for table `BackgroundTask`
--

DROP TABLE IF EXISTS `BackgroundTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BackgroundTask` (
  `backgroundTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `servletContextNames` varchar(255) DEFAULT NULL,
  `taskExecutorClassName` varchar(200) DEFAULT NULL,
  `taskContext` longtext,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusMessage` longtext,
  PRIMARY KEY (`backgroundTaskId`),
  KEY `IX_C5A6C78F` (`companyId`),
  KEY `IX_5A09E5D1` (`groupId`),
  KEY `IX_98CC0AAB` (`groupId`,`name`,`taskExecutorClassName`),
  KEY `IX_579C63B0` (`groupId`,`name`,`taskExecutorClassName`,`completed`),
  KEY `IX_C71C3B7` (`groupId`,`status`),
  KEY `IX_A73B688A` (`groupId`,`taskExecutorClassName`),
  KEY `IX_7A9FF471` (`groupId`,`taskExecutorClassName`,`completed`),
  KEY `IX_7E757D70` (`groupId`,`taskExecutorClassName`,`status`),
  KEY `IX_C07CC7F8` (`name`),
  KEY `IX_75638CDF` (`status`),
  KEY `IX_2FCFE748` (`taskExecutorClassName`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BackgroundTask`
--

LOCK TABLES `BackgroundTask` WRITE;
/*!40000 ALTER TABLE `BackgroundTask` DISABLE KEYS */;
INSERT INTO `BackgroundTask` VALUES (13411,10182,10155,10435,'Edicson Morales','2015-03-10 23:43:02','2015-03-10 23:43:02','187','','com.liferay.portal.lar.backgroundtask.PortletExportBackgroundTaskExecutor','{\"javaClass\":\"java.util.HashMap\",\"map\":{\"fileName\":\"Site_Members_Directory-201503102342.portlet.lar\",\"plid\":10185,\"groupId\":10182,\"portletId\":\"187\",\"cmd\":\"export\",\"parameterMap\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"redirect\":[\"http://localhost:8080/web/guest/home?p_p_id=86&p_p_lifecycle=0&p_p_state=pop_up&p_p_mode=view&_86_redirect=%2Fweb%2Fguest%2Fhome&_86_=&_86_returnToFullPageURL=%2Fweb%2Fguest%2Fhome&_86_portletResource=187&_86_struts_action=%2Fportlet_configuration%2Fexport_import&_86_tabs3=current-and-previous\"],\"PERMISSIONS\":[\"false\"],\"PORTLET_SETUP_187Checkbox\":[\"true\"],\"tabs1\":[\"export_import\"],\"plid\":[\"10185\"],\"tabs2\":[\"export\"],\"permissionsAssignedToRolesCheckbox\":[\"true\"],\"formDate\":[\"1426030975225\"],\"groupId\":[\"10182\"],\"PORTLET_CONFIGURATION_187\":[\"true\"],\"PORTLET_SETUP_187\":[\"true\"],\"PORTLET_CONFIGURATION_187Checkbox\":[\"true\"],\"permissionsAssignedToRoles\":[\"true\"],\"portletResource\":[\"187\"],\"cmd\":[\"export\"],\"PORTLET_CONFIGURATION\":[\"true\"],\"struts_action\":[\"/portlet_configuration/export_import\"],\"exportFileName\":[\"Site_Members_Directory-201503102342.portlet.lar\"]}},\"userId\":10435}}',1,'2015-03-10 23:43:02',3,'');
/*!40000 ALTER TABLE `BackgroundTask` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-29 19:28:21
