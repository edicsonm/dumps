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
-- Table structure for table `JournalTemplate`
--

DROP TABLE IF EXISTS `JournalTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalTemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsl` longtext,
  `langType` varchar(75) DEFAULT NULL,
  `cacheable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalTemplate`
--

LOCK TABLES `JournalTemplate` WRITE;
/*!40000 ALTER TABLE `JournalTemplate` DISABLE KEYS */;
INSERT INTO `JournalTemplate` VALUES ('39a9f2ad-00b7-4e12-af29-539deda03d2e',10689,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39','WELCOME-CONTENT-TEMPLATE','WELCOME-CONTENT-STRUCTURE','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome Content Template</Name></root>','','<div class=\"navigation-wrapper\">\n	<header class=\"content-head content-head-liferay-portal\">\n		<hgroup>\n			<h1>$page-title.data</h1>\n\n			<hr />\n		</hgroup>\n\n		<nav>\n			<ul id=\"contentNav\">\n				#foreach($link in $links.siblings)\n					#if ($velocityCount == 1)\n						<li aria-selected=\"true\" class=\"selected\"><a href=\"#pageId$velocityCount\">$link.data</a></li>\n					#else\n						<li><a href=\"#pageId$velocityCount\">$link.data</a></li>\n					#end\n				#end\n			</ul>\n		</nav>\n	</header>\n\n	<div class=\"content-area-wrapper\">\n		#foreach($link in $links.siblings)\n			#if ($velocityCount == 1)\n				<style type=\"text/css\">\n					.content-area {\n						background: url($link.bg-image.data) 100% 0 no-repeat;\n					}\n				</style>\n\n				<div class=\"content-area selected\" data-bannerImage=\"$link.bg-image.data\" id=\"pageId$velocityCount\">\n					$link.data\n\n					<a href=\"$link.action-link-url.data\" id=\"marketplace\">&nbsp;</a>\n				</div>\n			#else\n				<div class=\"content-area\" data-bannerImage=\"$link.bg-image.data\" id=\"pageId$velocityCount\">\n					$link.data\n\n					<a href=\"$link.action-link-url.data\" id=\"marketplace\">&nbsp;</a>\n				</div>\n			#end\n		#end\n	</div>\n</div>\n\n<script charset=\"utf-8\" type=\"text/javascript\">\n	AUI().ready(\n		\'aui-base\',\n		function(A) {\n			var hash = null;\n\n			var selectContent = function(href) {\n				var div = A.one(href);\n\n				if (div) {\n					div.radioClass(\'selected\');\n\n					div.setStyle(\'background\', \'url(\' + div.attr(\'data-bannerImage\')+\') 100% 0 no-repeat\');\n\n					hash = href;\n				}\n			};\n\n			var selectNavItem = function(hash) {\n				if (hash) {\n					A.one(\'#contentNav a[href$=\"\'+ hash +\'\"]\').ancestor().radioClass(\'selected\');\n				}\n			};\n\n			var select = function(hash) {\n				selectContent(hash);\n				selectNavItem(hash);\n			};\n\n			var currentHash = location.hash;\n\n			if (currentHash) {\n				select(currentHash);\n			}\n\n			setInterval(\n				function() {\n					var currentHash = location.hash;\n\n					if (currentHash != hash) {\n						select(currentHash);\n					}\n				},\n				200\n			);\n\n			A.one(\'#contentNav\').delegate(\n				\'click\',\n				function(event) {\n					var a = event.currentTarget;\n\n					a.ancestor().radioClass(\'selected\');\n\n					selectContent(a.attr(\'hash\'));\n				},\n				\'a\'\n			);\n		}\n	);\n</script>','vm',0,0,10690,'');
/*!40000 ALTER TABLE `JournalTemplate` ENABLE KEYS */;
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
