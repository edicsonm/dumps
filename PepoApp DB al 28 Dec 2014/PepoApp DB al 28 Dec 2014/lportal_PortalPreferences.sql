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
-- Table structure for table `PortalPreferences`
--

DROP TABLE IF EXISTS `PortalPreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PortalPreferences` (
  `portalPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portalPreferencesId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortalPreferences`
--

LOCK TABLES `PortalPreferences` WRITE;
/*!40000 ALTER TABLE `PortalPreferences` DISABLE KEYS */;
INSERT INTO `PortalPreferences` VALUES (10001,0,1,'<portlet-preferences />'),(10259,10253,1,'<portlet-preferences><preference><name>company.security.strangers.verify</name><value>false</value></preference><preference><name>ldap.server.ids</name><value></value></preference><preference><name>admin.email.password.reset.subject</name><value>[$PORTAL_URL$]: Reset Your Password</value></preference><preference><name>admin.email.user.added.subject</name><value>[$PORTAL_URL$]: Your New Account</value></preference><preference><name>admin.email.password.sent.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Your new password for [$PORTAL_URL$] is [$USER_PASSWORD$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]The request for a new password was made from [$REMOTE_ADDRESS$] / [$REMOTE_HOST$] with the browser [$USER_AGENT$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>admin.email.verification.subject</name><value>[$PORTAL_URL$]: Email Address Verification</value></preference><preference><name>admin.default.role.names</name><value>Power User[$NEW_LINE$]User</value></preference><preference><name>company.security.strangers.with.mx</name><value>true</value></preference><preference><name>company.security.auto.login</name><value>true</value></preference><preference><name>default.landing.page.path</name><value>/group/pepoapp/</value></preference><preference><name>company.security.site.logo</name><value>true</value></preference><preference><name>admin.email.password.sent.subject</name><value>[$PORTAL_URL$]: Your New Password</value></preference><preference><name>admin.email.password.reset.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]You can reset your password for [$PORTAL_URL$] at [$PASSWORD_RESET_URL$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]The request for a new password was made from [$REMOTE_ADDRESS$] / [$REMOTE_HOST$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>company.security.send.password</name><value>true</value></preference><preference><name>admin.email.verification.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Please verify your email address for [$PORTAL_URL$] at [$EMAIL_VERIFICATION_URL$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Your verification code is [$EMAIL_VERIFICATION_CODE$] Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>admin.email.user.added.no.password.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Welcome! You recently created an account at [$PORTAL_URL$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>admin.email.user.added.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Welcome! You recently created an account at [$PORTAL_URL$]. Your password is [$USER_PASSWORD$]. Enjoy!&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>company.security.strangers</name><value>true</value></preference><preference><name>company.security.auth.type</name><value>emailAddress</value></preference></portlet-preferences>'),(10505,10257,4,'<portlet-preferences />'),(10530,10506,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-portal</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionTreeJSClicks#layoutsTree</name><value>7,4,</value></preference><preference><name>125#users-order-by-col</name><value>last-name</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-content</name><value>closed</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_dockbar_pinned</name><value>0</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-marketplace</name><value>closed</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-server</name><value>closed</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-my</name><value>closed</value></preference><preference><name>com.liferay.portal.util.SessionClicks#toggle_id_users_admin_organization_search</name><value>advanced</value></preference><preference><name>125#users-order-by-type</name><value>asc</value></preference><preference><name>com.liferay.portal.util.SessionClicks#layoutsTreeRootNode</name><value>1</value></preference><preference><name>com.liferay.portal.util.SessionClicks#toggle_id_users_admin_user_search</name><value>advanced</value></preference></portlet-preferences>'),(11216,11203,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#liferay_dockbar_pinned</name><value>0</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-my</name><value>closed</value></preference></portlet-preferences>');
/*!40000 ALTER TABLE `PortalPreferences` ENABLE KEYS */;
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
