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
-- Table structure for table `LayoutPrototype`
--

DROP TABLE IF EXISTS `LayoutPrototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutPrototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutPrototypeId`),
  KEY `IX_30616AAA` (`companyId`),
  KEY `IX_557A639F` (`companyId`,`active_`),
  KEY `IX_CEF72136` (`uuid_`),
  KEY `IX_63ED2532` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutPrototype`
--

LOCK TABLES `LayoutPrototype` WRITE;
/*!40000 ALTER TABLE `LayoutPrototype` DISABLE KEYS */;
INSERT INTO `LayoutPrototype` VALUES ('a47b761b-874d-459e-93f4-2e89756757c5',10317,10155,10159,'','2015-03-06 08:12:13','2015-03-06 08:12:13','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.','',1),('c35ecdb7-20f1-4a4c-a911-23ec013e4aef',10329,10155,10159,'','2015-03-06 08:12:13','2015-03-06 08:12:13','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.','',1),('75c0e6bf-dae1-4868-a9b1-e3b974e3f022',10339,10155,10159,'','2015-03-06 08:12:13','2015-03-06 08:12:13','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.','',1),('4294a5f1-b107-48c1-986b-3c7f37cb1535',11984,10155,10435,'Edicson Morales','2015-03-06 21:43:08','2015-04-12 03:27:00','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES,en_US,\" default-locale=\"en_US\"><Name language-id=\"en_US\">Administration</Name><Name language-id=\"es_ES\">Administration</Name></root>','','',1),('6176a5f2-9e81-41fc-a75a-6d0fbeb84a0f',13419,10155,10435,'Edicson Morales','2015-03-11 00:14:36','2015-03-17 08:26:17','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES,en_US,\" default-locale=\"en_US\"><Name language-id=\"en_US\">Merchant</Name><Name language-id=\"es_ES\">Merchant</Name></root>','','',1),('f18856ad-9d7e-4347-862e-5783d2aebcc0',14021,10155,10435,'Edicson Morales','2015-03-12 08:35:00','2015-03-31 08:12:42','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES,en_US,\" default-locale=\"en_US\"><Name language-id=\"en_US\">Reports</Name><Name language-id=\"es_ES\">Reports</Name></root>','','',1),('a071d992-89a7-4c8e-9bbc-97a8bbc211ab',14842,10155,10435,'Edicson Morales','2015-03-13 08:08:34','2015-03-13 08:08:34','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Payments</Name></root>','','',1),('6a685acf-a9d7-433c-ad23-cbb7bdaf36bb',14922,10155,10435,'Edicson Morales','2015-03-13 08:25:33','2015-03-13 08:26:10','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Transactions</Name></root>','','',1),('1989923a-3782-4f52-910d-3fb91e26ade5',16808,10155,10435,'Edicson Morales','2015-03-15 22:51:48','2015-03-15 22:52:22','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Home</Name></root>','','',1),('7411a31a-1aa7-483a-a6b2-9cfc3392d556',18256,10155,10435,'Edicson Morales','2015-03-17 08:09:59','2015-03-17 08:26:10','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES,en_US,\" default-locale=\"en_US\"><Name language-id=\"en_US\">vertert</Name><Name language-id=\"es_ES\">blrvle</Name></root>','','',1),('c72e84dd-1d77-4cb1-be64-2833f6eae7eb',23331,10155,10435,'Edicson Morales','2015-03-26 09:00:37','2015-03-31 00:06:50','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Restrictions</Name></root>','','',1),('ad858a52-7be1-40b9-a275-ff986b59e890',24302,10155,10435,'Edicson Morales','2015-03-28 05:00:22','2015-03-30 06:53:31','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Refunds</Name></root>','','',1),('28c8a86b-23cf-4b9a-9e7b-0c3e3ccb39b6',26322,10155,10435,'Edicson Morales','2015-04-04 00:29:13','2015-04-04 00:31:44','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Test</Name></root>','','',1),('db82bc03-aa1b-4a60-9a65-660736fc299e',30271,10155,10435,'Edicson Morales','2015-04-09 07:48:01','2015-04-09 07:49:01','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">PaymentPageBillingBuddy</Name></root>','','',1),('9f03b765-10ae-4f47-83c3-5cecea5d62a7',31601,10155,10435,'Edicson Morales','2015-04-15 09:06:00','2015-04-15 09:06:45','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Customers</Name></root>','','',1);
/*!40000 ALTER TABLE `LayoutPrototype` ENABLE KEYS */;
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
