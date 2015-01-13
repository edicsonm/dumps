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
-- Table structure for table `LayoutPrototype`
--

DROP TABLE IF EXISTS `LayoutPrototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutPrototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutPrototypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutPrototype`
--

LOCK TABLES `LayoutPrototype` WRITE;
/*!40000 ALTER TABLE `LayoutPrototype` DISABLE KEYS */;
INSERT INTO `LayoutPrototype` VALUES ('bdc71415-bce4-4873-8171-08fcfc06f722',10409,10253,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.','',1),('a324cff8-9971-402f-8034-7889e156039b',10419,10253,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.','',1),('af54c7bf-30e6-49a0-a249-879f0a356b24',10428,10253,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.','',1),('ebc7c024-f67f-4c6b-90d8-cd709e06326b',10903,10253,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Bienvenida_PepoApp</Name></root>','','',1),('e1636721-b850-4522-b656-482c160f67f1',10912,10253,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Que_Es_Pepo_PepoApp</Name></root>','','',1),('f4e3600f-f063-42c5-a716-7fba388a113c',10921,10253,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Aliados_PepoApp</Name></root>','','',1),('947f9497-a78e-4c28-97fa-a7bf481c8be8',10930,10253,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Clubes_Pepo_PepoApp</Name></root>','','',1),('3b42d8bb-eb6f-41d8-a2e6-bc438e926d97',10939,10253,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Galeria_PepoApp</Name></root>','','',1),('dcc42873-2d90-4a24-b586-c22d3dd9dd0c',11302,10253,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Persona_PepoApp</Name></root>','','',1),('0cfb8f36-1267-459f-a80a-2a0b3ed66a95',11402,10253,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Raza_PepoApp</Name></root>','','',1),('d2e6c7a4-cdc6-4fbc-8521-cface62f8d35',11411,10253,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Incidente_PepoApp</Name></root>','','',1),('01b0ebda-e850-48ce-a656-a5e3b579602e',11420,10253,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Ejemplar_PepoApp</Name></root>','','',1),('f892a2a9-fefc-4e01-8877-fe22cf003836',11429,10253,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Tipo_Incidente_PepoApp</Name></root>','','',1);
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

-- Dump completed on 2014-12-28  9:52:17
