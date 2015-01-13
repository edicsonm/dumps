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
-- Table structure for table `JournalArticle`
--

DROP TABLE IF EXISTS `JournalArticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalArticle` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `title` longtext,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `reviewDate` datetime DEFAULT NULL,
  `indexable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalArticle`
--

LOCK TABLES `JournalArticle` WRITE;
/*!40000 ALTER TABLE `JournalArticle` DISABLE KEYS */;
INSERT INTO `JournalArticle` VALUES ('29945f2a-7ea8-4b18-bf30-44f19297a9db',10679,10680,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',0,0,'WHO-IS-USING-LIFERAY',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Who Is Using Liferay</Title></root>','who-is-using-liferay','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"es_ES\" default-locale=\"es_ES\">\n	<static-content language-id=\"es_ES\"><![CDATA[<style type=\"text/css\">\n	.content-area.selected {\n		background: url(/documents/10279/0/welcome_bg_8/049d5164-f2a6-4b7e-9cfa-2f71d6f2257b?version=1.0&t=1402520978810) 100% 0 no-repeat;\n	}\n</style>\n\n<div class=\"navigation-wrapper\">\n	<header class=\"content-head content-head-liferay-portal\">\n		<hgroup>\n			<h1>\n				Liferay helps you build feature-rich, easy-to-use web applications quickly.\n			</h1>\n\n			<hr />\n		</hgroup>\n\n		<p>\n			Here are some of our customers from around the globe:\n		</p>\n\n		<ul class=\"left\">\n			<li><span>Rolex</span></li>\n			<li><span>Bugaboo</span></li>\n			<li><span>Deluxe Corporation</span></li>\n			<li><span>Domino\'s Pizza</span></li>\n			<li><span>BASF</span></li>\n		</ul>\n\n		<ul class=\"right\">\n			<li><span>Honda</span></li>\n			<li><span>GE Capital</span></li>\n			<li><span>Sesame Street</span></li>\n			<li><span>China Mobile</span></li>\n			<li><span>York University</span></li>\n		</ul>\n	</header>\n\n	<div class=\"content-area selected\">\n		<a href=\"//www.liferay.com/users?wh=8\" id=\"marketplace\">&nbsp;</a>\n	</div>\n</div>]]></static-content>\n</root>','general','','','','2010-02-01 00:00:00',NULL,NULL,1,0,10681,'',0,10257,'','2014-06-11 21:09:39'),('c8f2ef8b-d2df-4613-89ff-971d25bc8ca6',10691,10692,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',0,0,'LIFERAY-BENEFITS',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Liferay Benefits</Title></root>','liferay-benefits','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element instance-id=\"XbU4Tt8d\" name=\"page-title\" type=\"text\" index-type=\"\">\n		<dynamic-content><![CDATA[See how Liferay can change the way you do business.]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"zLvpsWs9\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"XbnjZ8Kf\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10279/0/welcome_bg_9/adb27b76-47f0-487f-bbb5-f53a80696c62?version=1.0&t=1402520978207]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"Jg6grt09\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/open?wh=9]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Open Source: A Better Way]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"mVzYNdMh\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"LU7ujkcC\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10279/0/welcome_bg_10/b7c8cae8-97f5-4fc2-b18b-5dff73214c7a?version=1.0&t=1402520977969]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"1LCJ560s\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/ready?wh=10]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Ready to Go]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"KC74M8j1\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"dhL2PHcA\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10279/0/welcome_bg_11/75c64424-0896-4709-8e4a-6431d8ce5d19?version=1.0&t=1402520977750]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"padOwYYA\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/grow?wh=11]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Ready to Grow]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"A702mdKW\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"f1M1eNh9\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10279/0/welcome_bg_12/0ed6ed2a-b1ce-4f93-bb01-8b98b0bdd6f9?version=1.0&t=1402520977808]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"0stopvdI\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/approved?wh=12]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Approved by IT]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"ICAJilfL\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"Q20qsDlX\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10279/0/welcome_bg_13/546ad8bc-3aec-488d-951f-ce5c84472786?version=1.0&t=1402520978129]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"2vjBgvkJ\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/subscription?wh=13]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Open for Business]]></dynamic-content>\n	</dynamic-element>\n</root>','general','WELCOME-CONTENT-STRUCTURE','WELCOME-CONTENT-TEMPLATE','','2010-02-01 00:00:00',NULL,NULL,1,0,10693,'',0,10257,'','2014-06-11 21:09:39'),('0db6d835-4d68-48f5-9e70-fede5cf2e293',10699,10700,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',0,0,'WHAT-WE-DO',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">What We Do</Title></root>','what-we-do','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element instance-id=\"opu708Sy\" name=\"page-title\" type=\"text\" index-type=\"\">\n		<dynamic-content><![CDATA[Liferay helps you build feature-rich, easy-to-use web applications quickly.]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"Dyig4q0t\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"iLGzkJA2\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10279/0/welcome_bg_1/7a39b107-66d5-48af-a019-0e6bd719a1d0?version=1.0&t=1402520978278]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"D6RyRV8B\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/platform?wh=1]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[A Foundation for Apps]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"hPiZkCOd\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"MhNFM5l9\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10279/0/welcome_bg_2/af82a1a5-cda0-4a81-a781-456307acb33d?version=1.0&t=1402520978055]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"cRxjgI5n\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/wem?wh=2]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Dynamic Websites]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"vpGFKJCQ\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"gh9EXOmx\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10279/0/welcome_bg_3/867828ab-3df1-4277-8d04-725b9c0c7ccd?version=1.0&t=1402520977237]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"y9LxlToP\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/dm?wh=3]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Centralized Document Management]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"ouksVhdr\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"uBCTuyxG\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10279/0/welcome_bg_4/91c5cd03-b85c-4621-bee5-90ba8ccd35ef?version=1.0&t=1402520978753]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"pd27Fmww\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/team?wh=4]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Intuitive Team Collaboration]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"x0WdWruO\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"qDdU3SDP\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10279/0/welcome_bg_5/addc1724-be5f-4dce-914c-4d3ecac83f6e?version=1.0&t=1402520977878]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"sl1Vtl1C\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/productivity?wh=5]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Tools for Business]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"8hmTz6rx\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"a3KYFfTC\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10279/0/welcome_bg_6/e9235cdb-1b9e-4f7c-83b7-080a8aa4e67a?version=1.0&t=1402520978865]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"RVoEeB9K\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/sync?wh=6]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Desktop & Mobile Access]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"mB58buvT\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"zXTxzQGO\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10279/0/welcome_bg_7/5bafa385-7019-4bd2-a8be-0c24d9ad0aca?version=1.0&t=1402520977652]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"7LupLUIR\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/marketplace?wh=7]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Liferay Marketplace]]></dynamic-content>\n	</dynamic-element>\n</root>','general','WELCOME-CONTENT-STRUCTURE','WELCOME-CONTENT-TEMPLATE','','2010-02-01 00:00:00',NULL,NULL,1,0,10701,'',0,10257,'','2014-06-11 21:09:39');
/*!40000 ALTER TABLE `JournalArticle` ENABLE KEYS */;
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
