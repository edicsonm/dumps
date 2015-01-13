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
-- Table structure for table `Group_`
--

DROP TABLE IF EXISTS `Group_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_` (
  `groupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `creatorUserId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentGroupId` bigint(20) DEFAULT NULL,
  `liveGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `typeSettings` longtext,
  `friendlyURL` varchar(100) DEFAULT NULL,
  `site` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_`
--

LOCK TABLES `Group_` WRITE;
/*!40000 ALTER TABLE `Group_` DISABLE KEYS */;
INSERT INTO `Group_` VALUES (10271,10253,10257,10101,10271,0,0,'Control Panel','',3,'','/control_panel',0,1),(10279,10253,10257,10101,10279,0,0,'Guest','',1,'false-robots.txt=User-Agent: *_SAFE_NEWLINE_CHARACTER_Disallow:_SAFE_NEWLINE_CHARACTER_Sitemap: http://104.130.8.72/sitemap.xml\nmergeGuestPublicPages=false\n','/pepoapp',1,1),(10288,10253,10257,10287,10257,0,0,'User Personal Site','',3,'','/personal_site',0,1),(10291,10253,10257,10121,10253,0,0,'10253','',0,'','/global',0,1),(10298,10253,10295,10105,10295,0,0,'10295','',0,'','/test',0,1),(10410,10253,10257,10127,10409,0,0,'10409','',0,'','/template-10409',0,1),(10420,10253,10257,10127,10419,0,0,'10419','',0,'','/template-10419',0,1),(10429,10253,10257,10127,10428,0,0,'10428','',0,'','/template-10428',0,1),(10438,10253,10257,10131,10437,0,0,'10437','',0,'','/template-10437',0,1),(10464,10253,10257,10131,10463,0,0,'10463','',0,'','/template-10463',0,1),(10509,10253,10506,10105,10506,0,0,'10506','',0,'','/edicsonm',0,1),(10904,10253,10506,10127,10903,0,0,'10903','',0,'','/template-10903',0,1),(10913,10253,10506,10127,10912,0,0,'Plantilla_Que_Es_Pepo_PepoApp','',0,'','/template-10912',0,1),(10922,10253,10506,10127,10921,0,0,'10921','',0,'','/template-10921',0,1),(10931,10253,10506,10127,10930,0,0,'10930','',0,'','/template-10930',0,1),(10940,10253,10506,10127,10939,0,0,'10939','',0,'','/template-10939',0,1),(11206,10253,11203,10105,11203,0,0,'11203','',0,'','/pepo',0,1),(11303,10253,10506,10127,11302,0,0,'Plantilla_Persona_PepoApp','',0,'','/template-11302',0,1),(11403,10253,10506,10127,11402,0,0,'11402','',0,'','/template-11402',0,1),(11412,10253,10506,10127,11411,0,0,'11411','',0,'','/template-11411',0,1),(11421,10253,10506,10127,11420,0,0,'11420','',0,'','/template-11420',0,1),(11430,10253,10506,10127,11429,0,0,'11429','',0,'','/template-11429',0,1);
/*!40000 ALTER TABLE `Group_` ENABLE KEYS */;
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
