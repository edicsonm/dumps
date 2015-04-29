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
-- Table structure for table `Role_`
--

DROP TABLE IF EXISTS `Role_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Role_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `subtype` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`roleId`),
  UNIQUE KEY `IX_A88E424E` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_EBC931B8` (`companyId`,`name`),
  KEY `IX_449A10B9` (`companyId`),
  KEY `IX_F3E1C6FC` (`companyId`,`type_`),
  KEY `IX_F436EC8E` (`name`),
  KEY `IX_5EB4E2FB` (`subtype`),
  KEY `IX_F92B66E6` (`type_`),
  KEY `IX_CBE204` (`type_`,`subtype`),
  KEY `IX_26DB26C5` (`uuid_`),
  KEY `IX_B9FF6043` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role_`
--

LOCK TABLES `Role_` WRITE;
/*!40000 ALTER TABLE `Role_` DISABLE KEYS */;
INSERT INTO `Role_` VALUES ('67d41577-cb52-44db-acc5-10607eaacf91',10162,10155,10159,'','2015-03-06 08:12:08','2015-03-06 08:12:08',10004,10162,'Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Administrators are super users who can do anything.</Description></root>',1,''),('cfc2e4b8-c58b-4243-b96d-5472dccddfa3',10163,10155,10159,'','2015-03-06 08:12:08','2015-03-06 08:12:08',10004,10163,'Guest','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Unauthenticated users always have this role.</Description></root>',1,''),('35fc5c3c-bbfa-4795-bdab-90eb7b02aaf0',10164,10155,10159,'','2015-03-06 08:12:08','2015-03-06 08:12:08',10004,10164,'Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This is an implied role with respect to the objects users create.</Description></root>',1,''),('ac32f63e-1042-47a7-a61a-d4e90e81f44d',10165,10155,10159,'','2015-03-06 08:12:08','2015-03-06 08:12:08',10004,10165,'Power User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Power Users have their own personal site.</Description></root>',1,''),('9e50b173-b394-4980-b20d-2aa20623b7cf',10166,10155,10159,'','2015-03-06 08:12:08','2015-03-06 08:12:08',10004,10166,'User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Authenticated users should be assigned this role.</Description></root>',1,''),('94a48141-b485-4735-9af8-e49b2c57b650',10167,10155,10159,'','2015-03-06 08:12:09','2015-03-06 08:12:09',10004,10167,'Organization Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.</Description></root>',3,''),('25d55208-3f26-42e4-8409-7c97d2fd7b1e',10168,10155,10159,'','2015-03-06 08:12:09','2015-03-06 08:12:09',10004,10168,'Organization Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Owners are super users of their organization and can assign organization roles to users.</Description></root>',3,''),('8c4ee46f-9324-407e-8751-e04ff95588af',10169,10155,10159,'','2015-03-06 08:12:09','2015-03-06 08:12:09',10004,10169,'Organization User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to an organization have this role within that organization.</Description></root>',3,''),('80f062d8-7401-42af-9ef7-ef21c0dff9cb',10170,10155,10159,'','2015-03-06 08:12:09','2015-03-06 08:12:09',10004,10170,'Site Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Administrators are super users of their site but cannot make other users into Site Administrators.</Description></root>',2,''),('107e2d65-be62-48be-9a45-b777358af3c8',10171,10155,10159,'','2015-03-06 08:12:09','2015-03-06 08:12:09',10004,10171,'Site Member','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to a site have this role within that site.</Description></root>',2,''),('8577ed70-949c-48ee-b466-cc66995c13f5',10172,10155,10159,'','2015-03-06 08:12:09','2015-03-06 08:12:09',10004,10172,'Site Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Owners are super users of their site and can assign site roles to users.</Description></root>',2,''),('8823c689-07ff-4d00-aeb9-147e27caf6ab',11289,10155,10159,'','2015-03-06 08:15:35','2015-03-06 08:15:35',10004,11289,'Organization Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',3,''),('b9f18a49-f50a-4cfa-92dd-f3afb532fdbd',11295,10155,10159,'','2015-03-06 08:15:35','2015-03-06 08:15:35',10004,11295,'Site Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',2,''),('d318008d-0840-4eb9-ae0a-13d796d9f6a4',11298,10155,10159,'','2015-03-06 08:15:35','2015-03-06 08:15:35',10004,11298,'Portal Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',1,''),('908b1758-f869-441d-8035-d251a04de992',12948,10155,10435,'Edicson Morales','2015-03-10 01:00:49','2015-03-10 01:00:49',10004,12948,'Semi_Administrator_Rol','','',1,''),('d22e9488-8bc5-4240-84e6-0cadb53fcb31',17476,10155,10435,'Edicson Morales','2015-03-16 08:56:08','2015-03-16 08:56:08',10004,17476,'BillingBuddy','','',1,''),('da401929-d2bb-4303-a0ec-cddee53dfeed',19130,10155,10435,'Edicson Morales','2015-03-19 06:52:28','2015-03-19 06:52:28',10004,19130,'BillingBuddyAdministrator','','',1,''),('346d7cd4-1fc0-4865-89c0-69452d71dc07',19239,10155,10435,'Edicson Morales','2015-03-20 01:59:43','2015-03-20 01:59:43',10004,19239,'MerchantVisitor','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">MerchantVisitor</Title></root>','',1,''),('719b2ad8-9ae6-40a4-a797-104f08abd223',19240,10155,10435,'Edicson Morales','2015-03-20 01:59:58','2015-03-20 01:59:58',10004,19240,'MerchantAdministrator','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">MerchantAdministrator</Title></root>','',1,'');
/*!40000 ALTER TABLE `Role_` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-29 19:28:19
