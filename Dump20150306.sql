CREATE DATABASE  IF NOT EXISTS `Merchant` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Merchant`;
-- MySQL dump 10.13  Distrib 5.6.23, for Linux (x86_64)
--
-- Host: localhost    Database: Merchant
-- ------------------------------------------------------
-- Server version	5.6.23

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
-- Table structure for table `Order`
--

DROP TABLE IF EXISTS `Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order` (
  `Orde_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Auto_ID` bigint(20) unsigned DEFAULT NULL,
  `Orde_Amount` decimal(20,3) DEFAULT NULL,
  PRIMARY KEY (`Orde_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
INSERT INTO `Order` VALUES (1,1202182387,550.760),(2,NULL,550.760),(3,NULL,550.760),(4,NULL,550.760),(5,NULL,550.760),(6,NULL,550.760),(7,NULL,550.760),(8,NULL,550.760),(9,NULL,550.760),(10,NULL,550.760),(11,1202182387,550.760),(12,NULL,550.760),(13,NULL,550.760),(14,NULL,550.760),(15,NULL,550.760),(16,NULL,550.760),(17,1202182387,550.760),(18,1202182387,550.760),(19,1202182387,550.760),(20,1202182387,550.760),(21,NULL,550.760),(22,NULL,550.760),(23,NULL,550.760),(24,NULL,550.760),(25,NULL,550.760),(26,NULL,550.760),(27,NULL,550.760),(28,NULL,550.760),(29,NULL,550.760),(30,NULL,550.760),(31,NULL,550.760),(32,NULL,550.760),(33,NULL,550.760),(34,NULL,550.760),(35,NULL,550.760),(36,NULL,550.760),(37,NULL,550.760),(38,NULL,550.760),(39,NULL,550.760),(40,NULL,550.760),(41,NULL,550.760),(42,NULL,550.760),(43,NULL,550.760),(44,NULL,550.760),(45,NULL,550.760),(46,NULL,550.760),(47,NULL,550.760),(48,NULL,550.760),(49,NULL,550.760),(50,NULL,550.760),(51,NULL,550.760),(52,NULL,550.760),(53,NULL,550.760),(54,NULL,550.760),(55,NULL,550.760),(56,NULL,550.760),(57,NULL,550.760),(58,NULL,550.760),(59,NULL,550.760),(60,NULL,550.760),(61,NULL,550.760),(62,NULL,550.760),(63,NULL,550.760),(64,NULL,550.760),(65,NULL,550.760),(66,NULL,550.760),(67,1202182387,550.760),(68,1202182387,550.760),(69,NULL,550.760),(70,1202182387,550.760),(71,NULL,550.760),(72,1202182387,550.760),(73,1202182387,550.760),(74,1202182387,550.760),(75,1202182387,550.760),(76,1202182387,550.760),(77,1202182387,550.760),(78,1202182387,550.760),(79,NULL,550.760),(80,1202182387,550.760),(81,NULL,550.760),(82,NULL,550.760),(83,NULL,550.760),(84,NULL,550.760),(85,NULL,550.760),(86,NULL,550.760),(87,NULL,550.760),(88,1202182387,550.760),(89,NULL,550.760),(90,1202182387,550.760),(91,NULL,550.760),(92,NULL,550.760),(93,NULL,550.760),(94,NULL,550.760),(95,NULL,550.760),(96,NULL,550.760),(97,NULL,550.760),(98,NULL,550.760),(99,NULL,550.760),(100,NULL,550.760),(101,NULL,550.760),(102,NULL,550.760),(103,NULL,550.760),(104,NULL,550.760),(105,NULL,550.760),(106,NULL,550.760),(107,NULL,550.760),(108,1202182387,550.760),(109,1202182387,550.760),(110,1202182387,550.760),(111,NULL,550.760),(112,NULL,550.760),(113,NULL,550.760),(114,NULL,550.760),(115,NULL,550.760),(116,NULL,550.760),(117,NULL,550.760),(118,NULL,550.760),(119,NULL,550.760),(120,1202182387,550.760),(121,1202182387,550.760),(122,NULL,550.760),(123,NULL,550.760),(124,1202182387,550.760),(125,NULL,550.760),(126,NULL,550.760),(127,NULL,550.760),(128,NULL,550.760),(129,1202182387,550.760),(130,1202182387,550.760),(131,1202182387,550.760),(132,1202182387,550.760),(133,1202182387,550.760),(134,1202182387,550.760),(135,NULL,550.760),(136,1202182387,550.760),(137,1202182387,550.760),(138,1202182387,550.760),(139,1202182387,550.760),(140,NULL,550.760),(141,NULL,550.760),(142,NULL,550.760),(143,NULL,550.760),(144,NULL,550.760),(145,1202182387,550.760),(146,1202182387,550.760),(147,1202182387,550.760),(148,1202182387,550.760),(149,NULL,550.760),(150,NULL,550.760),(151,NULL,550.760),(152,NULL,550.760),(153,NULL,550.760),(154,NULL,550.760),(155,NULL,550.760),(156,NULL,550.760),(157,NULL,550.760),(158,17,550.760),(159,17,550.760),(160,17,550.760),(161,17,550.760),(162,NULL,550.760),(163,17,550.760),(164,17,550.760),(165,NULL,550.760),(166,NULL,550.760),(167,NULL,550.760),(168,18,550.760),(169,19,550.760),(170,20,550.760),(171,21,550.760),(172,22,550.760),(173,23,550.760),(174,NULL,550.760),(175,24,550.760),(176,NULL,550.760),(177,25,550.760),(178,35,550.760),(179,27,150.000),(180,NULL,550.760),(181,37,550.760),(182,33,550.760),(183,36,23.200),(184,NULL,550.760),(185,38,550.760),(186,NULL,530.960),(187,NULL,530.960),(188,41,530.960),(189,43,532.960),(190,44,550.760),(191,17,554.760),(192,17,550.760),(193,17,12.760),(194,17,1312.600),(195,17,432.660);
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Merchant'
--

--
-- Dumping routines for database 'Merchant'
--
/*!50003 DROP PROCEDURE IF EXISTS `PROC_INSERT_ORDER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`27-32-44-176.static.tpgi.com.au` PROCEDURE `PROC_INSERT_ORDER`(
`P_ORDE_AMOUNT` DECIMAL(20,3),
INOUT `P_ORDE_ID` BIGINT(20))
BEGIN
	INSERT INTO `Merchant`.`Order`
	(`Orde_Amount`)
	VALUES
	(P_ORDE_AMOUNT);
	SET P_ORDE_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_ORDER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`27-32-44-176.static.tpgi.com.au` PROCEDURE `PROC_UPDATE_ORDER`(
`P_ORDE_ID` BIGINT(20),
`P_AUTO_ID` VARCHAR(20))
BEGIN
	
	UPDATE `Merchant`.`Order`
	SET
	`Auto_ID` = P_AUTO_ID
	WHERE `Orde_ID` = P_ORDE_ID;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-06 12:45:32
CREATE DATABASE  IF NOT EXISTS `WordPress` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `WordPress`;
-- MySQL dump 10.13  Distrib 5.6.23, for Linux (x86_64)
--
-- Host: localhost    Database: WordPress
-- ------------------------------------------------------
-- Server version	5.6.23

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
-- Table structure for table `wp_bwg_album`
--

DROP TABLE IF EXISTS `wp_bwg_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bwg_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bwg_album`
--

LOCK TABLES `wp_bwg_album` WRITE;
/*!40000 ALTER TABLE `wp_bwg_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bwg_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bwg_album_gallery`
--

DROP TABLE IF EXISTS `wp_bwg_album_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bwg_album_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) NOT NULL,
  `is_album` tinyint(1) NOT NULL,
  `alb_gal_id` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bwg_album_gallery`
--

LOCK TABLES `wp_bwg_album_gallery` WRITE;
/*!40000 ALTER TABLE `wp_bwg_album_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bwg_album_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bwg_gallery`
--

DROP TABLE IF EXISTS `wp_bwg_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bwg_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `page_link` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bwg_gallery`
--

LOCK TABLES `wp_bwg_gallery` WRITE;
/*!40000 ALTER TABLE `wp_bwg_gallery` DISABLE KEYS */;
INSERT INTO `wp_bwg_gallery` VALUES (1,'Hello','hello','<p>Bla bla bla</p>','','','',1,1,1);
/*!40000 ALTER TABLE `wp_bwg_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bwg_image`
--

DROP TABLE IF EXISTS `wp_bwg_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bwg_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gallery_id` bigint(20) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `thumb_url` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `alt` mediumtext NOT NULL,
  `date` varchar(128) NOT NULL,
  `size` varchar(128) NOT NULL,
  `filetype` varchar(128) NOT NULL,
  `resolution` varchar(128) NOT NULL,
  `author` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `avg_rating` float NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  `hit_count` bigint(20) NOT NULL,
  `redirect_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bwg_image`
--

LOCK TABLES `wp_bwg_image` WRITE;
/*!40000 ALTER TABLE `wp_bwg_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bwg_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bwg_image_comment`
--

DROP TABLE IF EXISTS `wp_bwg_image_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bwg_image_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `url` mediumtext NOT NULL,
  `mail` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bwg_image_comment`
--

LOCK TABLES `wp_bwg_image_comment` WRITE;
/*!40000 ALTER TABLE `wp_bwg_image_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bwg_image_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bwg_image_rate`
--

DROP TABLE IF EXISTS `wp_bwg_image_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bwg_image_rate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_id` bigint(20) NOT NULL,
  `rate` float NOT NULL,
  `ip` varchar(64) NOT NULL,
  `date` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bwg_image_rate`
--

LOCK TABLES `wp_bwg_image_rate` WRITE;
/*!40000 ALTER TABLE `wp_bwg_image_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bwg_image_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bwg_image_tag`
--

DROP TABLE IF EXISTS `wp_bwg_image_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bwg_image_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bwg_image_tag`
--

LOCK TABLES `wp_bwg_image_tag` WRITE;
/*!40000 ALTER TABLE `wp_bwg_image_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bwg_image_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bwg_option`
--

DROP TABLE IF EXISTS `wp_bwg_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bwg_option` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `images_directory` mediumtext NOT NULL,
  `masonry` varchar(255) NOT NULL,
  `mosaic` varchar(255) NOT NULL,
  `resizable_mosaic` tinyint(1) NOT NULL,
  `mosaic_total_width` int(4) NOT NULL,
  `image_column_number` int(4) NOT NULL,
  `images_per_page` int(4) NOT NULL,
  `thumb_width` int(4) NOT NULL,
  `thumb_height` int(4) NOT NULL,
  `upload_thumb_width` int(4) NOT NULL,
  `upload_thumb_height` int(4) NOT NULL,
  `image_enable_page` tinyint(1) NOT NULL,
  `image_title_show_hover` varchar(20) NOT NULL,
  `album_column_number` int(4) NOT NULL,
  `albums_per_page` int(4) NOT NULL,
  `album_title_show_hover` varchar(8) NOT NULL,
  `album_thumb_width` int(4) NOT NULL,
  `album_thumb_height` int(4) NOT NULL,
  `album_enable_page` tinyint(1) NOT NULL,
  `extended_album_height` int(4) NOT NULL,
  `extended_album_description_enable` tinyint(1) NOT NULL,
  `image_browser_width` int(4) NOT NULL,
  `image_browser_title_enable` tinyint(1) NOT NULL,
  `image_browser_description_enable` tinyint(1) NOT NULL,
  `blog_style_width` int(4) NOT NULL,
  `blog_style_title_enable` tinyint(1) NOT NULL,
  `blog_style_images_per_page` int(4) NOT NULL,
  `blog_style_enable_page` tinyint(1) NOT NULL,
  `slideshow_type` varchar(16) NOT NULL,
  `slideshow_interval` int(4) NOT NULL,
  `slideshow_width` int(4) NOT NULL,
  `slideshow_height` int(4) NOT NULL,
  `slideshow_enable_autoplay` tinyint(1) NOT NULL,
  `slideshow_enable_shuffle` tinyint(1) NOT NULL,
  `slideshow_enable_ctrl` tinyint(1) NOT NULL,
  `slideshow_enable_filmstrip` tinyint(1) NOT NULL,
  `slideshow_filmstrip_height` int(4) NOT NULL,
  `slideshow_enable_title` tinyint(1) NOT NULL,
  `slideshow_title_position` varchar(16) NOT NULL,
  `slideshow_enable_description` tinyint(1) NOT NULL,
  `slideshow_description_position` varchar(16) NOT NULL,
  `slideshow_enable_music` tinyint(1) NOT NULL,
  `slideshow_audio_url` varchar(255) NOT NULL,
  `popup_width` int(4) NOT NULL,
  `popup_height` int(4) NOT NULL,
  `popup_type` varchar(16) NOT NULL,
  `popup_interval` int(4) NOT NULL,
  `popup_enable_filmstrip` tinyint(1) NOT NULL,
  `popup_filmstrip_height` int(4) NOT NULL,
  `popup_enable_ctrl_btn` tinyint(1) NOT NULL,
  `popup_enable_fullscreen` tinyint(1) NOT NULL,
  `popup_enable_info` tinyint(1) NOT NULL,
  `popup_info_always_show` tinyint(1) NOT NULL,
  `popup_enable_rate` tinyint(1) NOT NULL,
  `popup_enable_comment` tinyint(1) NOT NULL,
  `popup_enable_email` tinyint(1) NOT NULL,
  `popup_enable_captcha` tinyint(1) NOT NULL,
  `popup_enable_download` tinyint(1) NOT NULL,
  `popup_enable_fullsize_image` tinyint(1) NOT NULL,
  `popup_enable_facebook` tinyint(1) NOT NULL,
  `popup_enable_twitter` tinyint(1) NOT NULL,
  `popup_enable_google` tinyint(1) NOT NULL,
  `watermark_type` varchar(8) NOT NULL,
  `watermark_position` varchar(16) NOT NULL,
  `watermark_width` int(4) NOT NULL,
  `watermark_height` int(4) NOT NULL,
  `watermark_url` mediumtext NOT NULL,
  `watermark_text` mediumtext NOT NULL,
  `watermark_link` mediumtext NOT NULL,
  `watermark_font_size` int(4) NOT NULL,
  `watermark_font` varchar(16) NOT NULL,
  `watermark_color` varchar(8) NOT NULL,
  `watermark_opacity` int(4) NOT NULL,
  `built_in_watermark_type` varchar(16) NOT NULL,
  `built_in_watermark_position` varchar(16) NOT NULL,
  `built_in_watermark_size` int(4) NOT NULL,
  `built_in_watermark_url` mediumtext NOT NULL,
  `built_in_watermark_text` mediumtext NOT NULL,
  `built_in_watermark_font_size` int(4) NOT NULL,
  `built_in_watermark_font` varchar(16) NOT NULL,
  `built_in_watermark_color` varchar(8) NOT NULL,
  `built_in_watermark_opacity` int(4) NOT NULL,
  `image_right_click` tinyint(1) NOT NULL,
  `popup_fullscreen` tinyint(1) NOT NULL,
  `gallery_role` tinyint(1) NOT NULL,
  `album_role` tinyint(1) NOT NULL,
  `image_role` tinyint(1) NOT NULL,
  `popup_autoplay` tinyint(1) NOT NULL,
  `album_view_type` varchar(16) NOT NULL,
  `popup_enable_pinterest` tinyint(1) NOT NULL,
  `popup_enable_tumblr` tinyint(1) NOT NULL,
  `show_search_box` tinyint(1) NOT NULL,
  `search_box_width` int(4) NOT NULL,
  `preload_images` tinyint(1) NOT NULL,
  `preload_images_count` int(4) NOT NULL,
  `thumb_click_action` varchar(16) NOT NULL,
  `thumb_link_target` tinyint(1) NOT NULL,
  `comment_moderation` tinyint(1) NOT NULL,
  `popup_hit_counter` tinyint(1) NOT NULL,
  `enable_ML_import` tinyint(1) NOT NULL,
  `showthumbs_name` tinyint(1) NOT NULL,
  `show_album_name` tinyint(1) NOT NULL,
  `show_image_counts` tinyint(1) NOT NULL,
  `upload_img_width` int(4) NOT NULL,
  `upload_img_height` int(4) NOT NULL,
  `play_icon` tinyint(1) NOT NULL,
  `show_masonry_thumb_description` tinyint(1) NOT NULL,
  `slideshow_title_full_width` tinyint(1) NOT NULL,
  `popup_info_full_width` tinyint(1) NOT NULL,
  `show_sort_images` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bwg_option`
--

LOCK TABLES `wp_bwg_option` WRITE;
/*!40000 ALTER TABLE `wp_bwg_option` DISABLE KEYS */;
INSERT INTO `wp_bwg_option` VALUES (1,'wp-content/uploads','vertical','vertical',0,100,5,30,180,90,300,300,1,'none',5,30,'hover',120,90,1,150,1,800,1,1,800,1,5,1,'fade',5,800,500,0,0,1,1,90,0,'top-right',0,'bottom-right',0,'',800,500,'fade',5,1,70,1,1,1,0,0,1,0,0,0,0,1,1,1,'none','bottom-left',90,90,'http://mywordpress.com/wp-content/plugins/photo-gallery/images/watermark.png','web-dorado.com','http://web-dorado.com',20,'arial','FFFFFF',30,'none','middle-center',15,'http://mywordpress.com/wp-content/plugins/photo-gallery/images/watermark.png','web-dorado.com',20,'arial','FFFFFF',30,0,0,0,0,0,0,'thumbnail',0,0,0,180,0,10,'open_lightbox',1,0,0,0,0,0,0,1200,1200,1,0,0,0,0);
/*!40000 ALTER TABLE `wp_bwg_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bwg_shortcode`
--

DROP TABLE IF EXISTS `wp_bwg_shortcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bwg_shortcode` (
  `id` bigint(20) NOT NULL,
  `tagtext` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bwg_shortcode`
--

LOCK TABLES `wp_bwg_shortcode` WRITE;
/*!40000 ALTER TABLE `wp_bwg_shortcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bwg_shortcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bwg_theme`
--

DROP TABLE IF EXISTS `wp_bwg_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bwg_theme` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `thumb_margin` int(4) NOT NULL,
  `thumb_padding` int(4) NOT NULL,
  `thumb_border_radius` varchar(32) NOT NULL,
  `thumb_border_width` int(4) NOT NULL,
  `thumb_border_style` varchar(16) NOT NULL,
  `thumb_border_color` varchar(8) NOT NULL,
  `thumb_bg_color` varchar(8) NOT NULL,
  `thumbs_bg_color` varchar(8) NOT NULL,
  `thumb_bg_transparent` int(4) NOT NULL,
  `thumb_box_shadow` varchar(32) NOT NULL,
  `thumb_transparent` int(4) NOT NULL,
  `thumb_align` varchar(8) NOT NULL,
  `thumb_hover_effect` varchar(128) NOT NULL,
  `thumb_hover_effect_value` varchar(128) NOT NULL,
  `thumb_transition` tinyint(1) NOT NULL,
  `thumb_title_font_color` varchar(8) NOT NULL,
  `thumb_title_font_style` varchar(16) NOT NULL,
  `thumb_title_pos` varchar(8) NOT NULL,
  `thumb_title_font_size` int(4) NOT NULL,
  `thumb_title_font_weight` varchar(8) NOT NULL,
  `thumb_title_margin` varchar(32) NOT NULL,
  `thumb_title_shadow` varchar(32) NOT NULL,
  `page_nav_position` varchar(8) NOT NULL,
  `page_nav_align` varchar(8) NOT NULL,
  `page_nav_number` tinyint(1) NOT NULL,
  `page_nav_font_size` int(4) NOT NULL,
  `page_nav_font_style` varchar(32) NOT NULL,
  `page_nav_font_color` varchar(8) NOT NULL,
  `page_nav_font_weight` varchar(8) NOT NULL,
  `page_nav_border_width` int(4) NOT NULL,
  `page_nav_border_style` varchar(16) NOT NULL,
  `page_nav_border_color` varchar(8) NOT NULL,
  `page_nav_border_radius` varchar(32) NOT NULL,
  `page_nav_margin` varchar(32) NOT NULL,
  `page_nav_padding` varchar(32) NOT NULL,
  `page_nav_button_bg_color` varchar(8) NOT NULL,
  `page_nav_button_bg_transparent` int(4) NOT NULL,
  `page_nav_box_shadow` varchar(32) NOT NULL,
  `page_nav_button_transition` tinyint(1) NOT NULL,
  `page_nav_button_text` tinyint(1) NOT NULL,
  `lightbox_overlay_bg_color` varchar(8) NOT NULL,
  `lightbox_overlay_bg_transparent` int(4) NOT NULL,
  `lightbox_bg_color` varchar(8) NOT NULL,
  `lightbox_ctrl_btn_pos` varchar(8) NOT NULL,
  `lightbox_ctrl_btn_align` varchar(8) NOT NULL,
  `lightbox_ctrl_btn_height` int(4) NOT NULL,
  `lightbox_ctrl_btn_margin_top` int(4) NOT NULL,
  `lightbox_ctrl_btn_margin_left` int(4) NOT NULL,
  `lightbox_ctrl_btn_transparent` int(4) NOT NULL,
  `lightbox_ctrl_btn_color` varchar(8) NOT NULL,
  `lightbox_toggle_btn_height` int(4) NOT NULL,
  `lightbox_toggle_btn_width` int(4) NOT NULL,
  `lightbox_ctrl_cont_bg_color` varchar(8) NOT NULL,
  `lightbox_ctrl_cont_transparent` int(4) NOT NULL,
  `lightbox_ctrl_cont_border_radius` int(4) NOT NULL,
  `lightbox_close_btn_transparent` int(4) NOT NULL,
  `lightbox_close_btn_bg_color` varchar(8) NOT NULL,
  `lightbox_close_btn_border_width` int(4) NOT NULL,
  `lightbox_close_btn_border_radius` varchar(32) NOT NULL,
  `lightbox_close_btn_border_style` varchar(16) NOT NULL,
  `lightbox_close_btn_border_color` varchar(8) NOT NULL,
  `lightbox_close_btn_box_shadow` varchar(32) NOT NULL,
  `lightbox_close_btn_color` varchar(8) NOT NULL,
  `lightbox_close_btn_size` int(4) NOT NULL,
  `lightbox_close_btn_width` int(4) NOT NULL,
  `lightbox_close_btn_height` int(4) NOT NULL,
  `lightbox_close_btn_top` varchar(8) NOT NULL,
  `lightbox_close_btn_right` varchar(8) NOT NULL,
  `lightbox_close_btn_full_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_bg_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_transparent` int(4) NOT NULL,
  `lightbox_rl_btn_border_radius` varchar(32) NOT NULL,
  `lightbox_rl_btn_border_width` int(4) NOT NULL,
  `lightbox_rl_btn_border_style` varchar(32) NOT NULL,
  `lightbox_rl_btn_border_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_box_shadow` varchar(32) NOT NULL,
  `lightbox_rl_btn_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_height` int(4) NOT NULL,
  `lightbox_rl_btn_width` int(4) NOT NULL,
  `lightbox_rl_btn_size` int(4) NOT NULL,
  `lightbox_close_rl_btn_hover_color` varchar(8) NOT NULL,
  `lightbox_comment_pos` varchar(8) NOT NULL,
  `lightbox_comment_width` int(4) NOT NULL,
  `lightbox_comment_bg_color` varchar(8) NOT NULL,
  `lightbox_comment_font_color` varchar(8) NOT NULL,
  `lightbox_comment_font_style` varchar(16) NOT NULL,
  `lightbox_comment_font_size` int(4) NOT NULL,
  `lightbox_comment_button_bg_color` varchar(8) NOT NULL,
  `lightbox_comment_button_border_color` varchar(8) NOT NULL,
  `lightbox_comment_button_border_width` int(4) NOT NULL,
  `lightbox_comment_button_border_style` varchar(16) NOT NULL,
  `lightbox_comment_button_border_radius` varchar(32) NOT NULL,
  `lightbox_comment_button_padding` varchar(32) NOT NULL,
  `lightbox_comment_input_bg_color` varchar(8) NOT NULL,
  `lightbox_comment_input_border_color` varchar(8) NOT NULL,
  `lightbox_comment_input_border_width` int(4) NOT NULL,
  `lightbox_comment_input_border_style` varchar(16) NOT NULL,
  `lightbox_comment_input_border_radius` varchar(32) NOT NULL,
  `lightbox_comment_input_padding` varchar(32) NOT NULL,
  `lightbox_comment_separator_width` int(4) NOT NULL,
  `lightbox_comment_separator_style` varchar(16) NOT NULL,
  `lightbox_comment_separator_color` varchar(8) NOT NULL,
  `lightbox_comment_author_font_size` int(4) NOT NULL,
  `lightbox_comment_date_font_size` int(4) NOT NULL,
  `lightbox_comment_body_font_size` int(4) NOT NULL,
  `lightbox_comment_share_button_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_pos` varchar(8) NOT NULL,
  `lightbox_filmstrip_rl_bg_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_rl_btn_size` int(4) NOT NULL,
  `lightbox_filmstrip_rl_btn_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_thumb_margin` varchar(32) NOT NULL,
  `lightbox_filmstrip_thumb_border_width` int(4) NOT NULL,
  `lightbox_filmstrip_thumb_border_style` varchar(16) NOT NULL,
  `lightbox_filmstrip_thumb_border_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_thumb_border_radius` varchar(32) NOT NULL,
  `lightbox_filmstrip_thumb_deactive_transparent` int(4) NOT NULL,
  `lightbox_filmstrip_thumb_active_border_width` int(4) NOT NULL,
  `lightbox_filmstrip_thumb_active_border_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_style` varchar(16) NOT NULL,
  `album_compact_back_font_color` varchar(8) NOT NULL,
  `album_compact_back_font_style` varchar(16) NOT NULL,
  `album_compact_back_font_size` int(4) NOT NULL,
  `album_compact_back_font_weight` varchar(8) NOT NULL,
  `album_compact_back_padding` varchar(32) NOT NULL,
  `album_compact_title_font_color` varchar(8) NOT NULL,
  `album_compact_title_font_style` varchar(16) NOT NULL,
  `album_compact_thumb_title_pos` varchar(8) NOT NULL,
  `album_compact_title_font_size` int(4) NOT NULL,
  `album_compact_title_font_weight` varchar(8) NOT NULL,
  `album_compact_title_margin` varchar(32) NOT NULL,
  `album_compact_title_shadow` varchar(32) NOT NULL,
  `album_compact_thumb_margin` int(4) NOT NULL,
  `album_compact_thumb_padding` int(4) NOT NULL,
  `album_compact_thumb_border_radius` varchar(32) NOT NULL,
  `album_compact_thumb_border_width` int(4) NOT NULL,
  `album_compact_thumb_border_style` varchar(8) NOT NULL,
  `album_compact_thumb_border_color` varchar(8) NOT NULL,
  `album_compact_thumb_bg_color` varchar(8) NOT NULL,
  `album_compact_thumbs_bg_color` varchar(8) NOT NULL,
  `album_compact_thumb_bg_transparent` int(4) NOT NULL,
  `album_compact_thumb_box_shadow` varchar(32) NOT NULL,
  `album_compact_thumb_transparent` int(4) NOT NULL,
  `album_compact_thumb_align` varchar(8) NOT NULL,
  `album_compact_thumb_hover_effect` varchar(64) NOT NULL,
  `album_compact_thumb_hover_effect_value` varchar(64) NOT NULL,
  `album_compact_thumb_transition` tinyint(1) NOT NULL,
  `album_extended_thumb_margin` int(4) NOT NULL,
  `album_extended_thumb_padding` int(4) NOT NULL,
  `album_extended_thumb_border_radius` varchar(32) NOT NULL,
  `album_extended_thumb_border_width` int(4) NOT NULL,
  `album_extended_thumb_border_style` varchar(8) NOT NULL,
  `album_extended_thumb_border_color` varchar(8) NOT NULL,
  `album_extended_thumb_bg_color` varchar(8) NOT NULL,
  `album_extended_thumbs_bg_color` varchar(8) NOT NULL,
  `album_extended_thumb_bg_transparent` int(4) NOT NULL,
  `album_extended_thumb_box_shadow` varchar(32) NOT NULL,
  `album_extended_thumb_transparent` int(4) NOT NULL,
  `album_extended_thumb_align` varchar(8) NOT NULL,
  `album_extended_thumb_hover_effect` varchar(64) NOT NULL,
  `album_extended_thumb_hover_effect_value` varchar(64) NOT NULL,
  `album_extended_thumb_transition` tinyint(1) NOT NULL,
  `album_extended_back_font_color` varchar(8) NOT NULL,
  `album_extended_back_font_style` varchar(16) NOT NULL,
  `album_extended_back_font_size` int(4) NOT NULL,
  `album_extended_back_font_weight` varchar(8) NOT NULL,
  `album_extended_back_padding` varchar(32) NOT NULL,
  `album_extended_div_bg_color` varchar(8) NOT NULL,
  `album_extended_div_bg_transparent` int(4) NOT NULL,
  `album_extended_div_border_radius` varchar(32) NOT NULL,
  `album_extended_div_margin` varchar(32) NOT NULL,
  `album_extended_div_padding` int(4) NOT NULL,
  `album_extended_div_separator_width` int(4) NOT NULL,
  `album_extended_div_separator_style` varchar(8) NOT NULL,
  `album_extended_div_separator_color` varchar(8) NOT NULL,
  `album_extended_thumb_div_bg_color` varchar(8) NOT NULL,
  `album_extended_thumb_div_border_radius` varchar(32) NOT NULL,
  `album_extended_thumb_div_border_width` int(4) NOT NULL,
  `album_extended_thumb_div_border_style` varchar(8) NOT NULL,
  `album_extended_thumb_div_border_color` varchar(8) NOT NULL,
  `album_extended_thumb_div_padding` varchar(32) NOT NULL,
  `album_extended_text_div_bg_color` varchar(8) NOT NULL,
  `album_extended_text_div_border_radius` varchar(32) NOT NULL,
  `album_extended_text_div_border_width` int(4) NOT NULL,
  `album_extended_text_div_border_style` varchar(8) NOT NULL,
  `album_extended_text_div_border_color` varchar(8) NOT NULL,
  `album_extended_text_div_padding` varchar(32) NOT NULL,
  `album_extended_title_span_border_width` int(4) NOT NULL,
  `album_extended_title_span_border_style` varchar(8) NOT NULL,
  `album_extended_title_span_border_color` varchar(8) NOT NULL,
  `album_extended_title_font_color` varchar(8) NOT NULL,
  `album_extended_title_font_style` varchar(16) NOT NULL,
  `album_extended_title_font_size` int(4) NOT NULL,
  `album_extended_title_font_weight` varchar(8) NOT NULL,
  `album_extended_title_margin_bottom` int(4) NOT NULL,
  `album_extended_title_padding` varchar(32) NOT NULL,
  `album_extended_desc_span_border_width` int(4) NOT NULL,
  `album_extended_desc_span_border_style` varchar(8) NOT NULL,
  `album_extended_desc_span_border_color` varchar(8) NOT NULL,
  `album_extended_desc_font_color` varchar(8) NOT NULL,
  `album_extended_desc_font_style` varchar(16) NOT NULL,
  `album_extended_desc_font_size` int(4) NOT NULL,
  `album_extended_desc_font_weight` varchar(8) NOT NULL,
  `album_extended_desc_padding` varchar(32) NOT NULL,
  `album_extended_desc_more_color` varchar(8) NOT NULL,
  `album_extended_desc_more_size` int(4) NOT NULL,
  `masonry_thumb_padding` int(4) NOT NULL,
  `masonry_thumb_border_radius` varchar(32) NOT NULL,
  `masonry_thumb_border_width` int(4) NOT NULL,
  `masonry_thumb_border_style` varchar(8) NOT NULL,
  `masonry_thumb_border_color` varchar(8) NOT NULL,
  `masonry_thumbs_bg_color` varchar(8) NOT NULL,
  `masonry_thumb_bg_transparent` int(4) NOT NULL,
  `masonry_thumb_transparent` int(4) NOT NULL,
  `masonry_thumb_align` varchar(8) NOT NULL,
  `masonry_thumb_hover_effect` varchar(64) NOT NULL,
  `masonry_thumb_hover_effect_value` varchar(64) NOT NULL,
  `masonry_thumb_transition` tinyint(1) NOT NULL,
  `mosaic_thumb_padding` int(4) NOT NULL,
  `mosaic_thumb_border_radius` varchar(32) NOT NULL,
  `mosaic_thumb_border_width` int(4) NOT NULL,
  `mosaic_thumb_border_style` varchar(8) NOT NULL,
  `mosaic_thumb_border_color` varchar(8) NOT NULL,
  `mosaic_thumbs_bg_color` varchar(8) NOT NULL,
  `mosaic_thumb_bg_transparent` int(4) NOT NULL,
  `mosaic_thumb_transparent` int(4) NOT NULL,
  `mosaic_thumb_align` varchar(8) NOT NULL,
  `mosaic_thumb_hover_effect` varchar(64) NOT NULL,
  `mosaic_thumb_hover_effect_value` varchar(64) NOT NULL,
  `mosaic_thumb_title_font_color` varchar(8) NOT NULL,
  `mosaic_thumb_title_font_style` varchar(16) NOT NULL,
  `mosaic_thumb_title_font_size` int(4) NOT NULL,
  `mosaic_thumb_title_font_weight` varchar(8) NOT NULL,
  `mosaic_thumb_title_margin` varchar(32) NOT NULL,
  `mosaic_thumb_title_shadow` varchar(32) NOT NULL,
  `slideshow_cont_bg_color` varchar(8) NOT NULL,
  `slideshow_close_btn_transparent` int(4) NOT NULL,
  `slideshow_rl_btn_bg_color` varchar(8) NOT NULL,
  `slideshow_rl_btn_border_radius` varchar(32) NOT NULL,
  `slideshow_rl_btn_border_width` int(4) NOT NULL,
  `slideshow_rl_btn_border_style` varchar(8) NOT NULL,
  `slideshow_rl_btn_border_color` varchar(8) NOT NULL,
  `slideshow_rl_btn_box_shadow` varchar(32) NOT NULL,
  `slideshow_rl_btn_color` varchar(8) NOT NULL,
  `slideshow_rl_btn_height` int(4) NOT NULL,
  `slideshow_rl_btn_size` int(4) NOT NULL,
  `slideshow_rl_btn_width` int(4) NOT NULL,
  `slideshow_close_rl_btn_hover_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_pos` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_border_width` int(4) NOT NULL,
  `slideshow_filmstrip_thumb_border_style` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_border_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_border_radius` varchar(32) NOT NULL,
  `slideshow_filmstrip_thumb_margin` varchar(32) NOT NULL,
  `slideshow_filmstrip_thumb_active_border_width` int(4) NOT NULL,
  `slideshow_filmstrip_thumb_active_border_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_deactive_transparent` int(4) NOT NULL,
  `slideshow_filmstrip_rl_bg_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_rl_btn_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_rl_btn_size` int(4) NOT NULL,
  `slideshow_title_font_size` int(4) NOT NULL,
  `slideshow_title_font` varchar(16) NOT NULL,
  `slideshow_title_color` varchar(8) NOT NULL,
  `slideshow_title_opacity` int(4) NOT NULL,
  `slideshow_title_border_radius` varchar(32) NOT NULL,
  `slideshow_title_background_color` varchar(8) NOT NULL,
  `slideshow_title_padding` varchar(32) NOT NULL,
  `slideshow_description_font_size` int(4) NOT NULL,
  `slideshow_description_font` varchar(16) NOT NULL,
  `slideshow_description_color` varchar(8) NOT NULL,
  `slideshow_description_opacity` int(4) NOT NULL,
  `slideshow_description_border_radius` varchar(32) NOT NULL,
  `slideshow_description_background_color` varchar(8) NOT NULL,
  `slideshow_description_padding` varchar(32) NOT NULL,
  `slideshow_dots_width` int(4) NOT NULL,
  `slideshow_dots_height` int(4) NOT NULL,
  `slideshow_dots_border_radius` varchar(32) NOT NULL,
  `slideshow_dots_background_color` varchar(8) NOT NULL,
  `slideshow_dots_margin` int(4) NOT NULL,
  `slideshow_dots_active_background_color` varchar(8) NOT NULL,
  `slideshow_dots_active_border_width` int(4) NOT NULL,
  `slideshow_dots_active_border_color` varchar(8) NOT NULL,
  `slideshow_play_pause_btn_size` int(4) NOT NULL,
  `slideshow_rl_btn_style` varchar(16) NOT NULL,
  `blog_style_margin` varchar(32) NOT NULL,
  `blog_style_padding` varchar(32) NOT NULL,
  `blog_style_border_radius` varchar(32) NOT NULL,
  `blog_style_border_width` int(4) NOT NULL,
  `blog_style_border_style` varchar(16) NOT NULL,
  `blog_style_border_color` varchar(8) NOT NULL,
  `blog_style_bg_color` varchar(8) NOT NULL,
  `blog_style_box_shadow` varchar(32) NOT NULL,
  `blog_style_transparent` int(4) NOT NULL,
  `blog_style_align` varchar(8) NOT NULL,
  `blog_style_share_buttons_bg_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_margin` varchar(32) NOT NULL,
  `blog_style_share_buttons_border_radius` varchar(32) NOT NULL,
  `blog_style_share_buttons_border_width` int(4) NOT NULL,
  `blog_style_share_buttons_border_style` varchar(16) NOT NULL,
  `blog_style_share_buttons_border_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_align` varchar(8) NOT NULL,
  `blog_style_img_font_size` int(4) NOT NULL,
  `blog_style_img_font_family` varchar(16) NOT NULL,
  `blog_style_img_font_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_bg_transparent` int(4) NOT NULL,
  `blog_style_share_buttons_font_size` int(4) NOT NULL,
  `image_browser_margin` varchar(32) NOT NULL,
  `image_browser_padding` varchar(32) NOT NULL,
  `image_browser_border_radius` varchar(32) NOT NULL,
  `image_browser_border_width` int(4) NOT NULL,
  `image_browser_border_style` varchar(16) NOT NULL,
  `image_browser_border_color` varchar(8) NOT NULL,
  `image_browser_bg_color` varchar(8) NOT NULL,
  `image_browser_box_shadow` varchar(32) NOT NULL,
  `image_browser_transparent` int(4) NOT NULL,
  `image_browser_align` varchar(8) NOT NULL,
  `image_browser_image_description_margin` varchar(32) NOT NULL,
  `image_browser_image_description_padding` varchar(32) NOT NULL,
  `image_browser_image_description_border_radius` varchar(32) NOT NULL,
  `image_browser_image_description_border_width` int(4) NOT NULL,
  `image_browser_image_description_border_style` varchar(16) NOT NULL,
  `image_browser_image_description_border_color` varchar(8) NOT NULL,
  `image_browser_image_description_bg_color` varchar(8) NOT NULL,
  `image_browser_image_description_align` varchar(8) NOT NULL,
  `image_browser_img_font_size` int(4) NOT NULL,
  `image_browser_img_font_family` varchar(16) NOT NULL,
  `image_browser_img_font_color` varchar(8) NOT NULL,
  `image_browser_full_padding` varchar(32) NOT NULL,
  `image_browser_full_border_radius` varchar(32) NOT NULL,
  `image_browser_full_border_width` int(4) NOT NULL,
  `image_browser_full_border_style` varchar(16) NOT NULL,
  `image_browser_full_border_color` varchar(8) NOT NULL,
  `image_browser_full_bg_color` varchar(8) NOT NULL,
  `image_browser_full_transparent` int(4) NOT NULL,
  `lightbox_info_pos` varchar(8) NOT NULL,
  `lightbox_info_align` varchar(8) NOT NULL,
  `lightbox_info_bg_color` varchar(8) NOT NULL,
  `lightbox_info_bg_transparent` int(4) NOT NULL,
  `lightbox_info_border_width` int(4) NOT NULL,
  `lightbox_info_border_style` varchar(16) NOT NULL,
  `lightbox_info_border_color` varchar(8) NOT NULL,
  `lightbox_info_border_radius` varchar(32) NOT NULL,
  `lightbox_info_padding` varchar(32) NOT NULL,
  `lightbox_info_margin` varchar(32) NOT NULL,
  `lightbox_title_color` varchar(8) NOT NULL,
  `lightbox_title_font_style` varchar(16) NOT NULL,
  `lightbox_title_font_weight` varchar(8) NOT NULL,
  `lightbox_title_font_size` int(4) NOT NULL,
  `lightbox_description_color` varchar(8) NOT NULL,
  `lightbox_description_font_style` varchar(16) NOT NULL,
  `lightbox_description_font_weight` varchar(8) NOT NULL,
  `lightbox_description_font_size` int(4) NOT NULL,
  `lightbox_rate_pos` varchar(8) NOT NULL,
  `lightbox_rate_align` varchar(8) NOT NULL,
  `lightbox_rate_icon` varchar(16) NOT NULL,
  `lightbox_rate_color` varchar(8) NOT NULL,
  `lightbox_rate_size` int(4) NOT NULL,
  `lightbox_rate_stars_count` int(4) NOT NULL,
  `lightbox_rate_padding` varchar(32) NOT NULL,
  `lightbox_rate_hover_color` varchar(8) NOT NULL,
  `lightbox_hit_pos` varchar(8) NOT NULL,
  `lightbox_hit_align` varchar(8) NOT NULL,
  `lightbox_hit_bg_color` varchar(8) NOT NULL,
  `lightbox_hit_bg_transparent` int(4) NOT NULL,
  `lightbox_hit_border_width` int(4) NOT NULL,
  `lightbox_hit_border_style` varchar(16) NOT NULL,
  `lightbox_hit_border_color` varchar(8) NOT NULL,
  `lightbox_hit_border_radius` varchar(32) NOT NULL,
  `lightbox_hit_padding` varchar(32) NOT NULL,
  `lightbox_hit_margin` varchar(32) NOT NULL,
  `lightbox_hit_color` varchar(8) NOT NULL,
  `lightbox_hit_font_style` varchar(16) NOT NULL,
  `lightbox_hit_font_weight` varchar(8) NOT NULL,
  `lightbox_hit_font_size` int(4) NOT NULL,
  `masonry_description_font_size` int(4) NOT NULL,
  `masonry_description_color` varchar(8) NOT NULL,
  `masonry_description_font_style` varchar(16) NOT NULL,
  `album_masonry_back_font_color` varchar(8) NOT NULL,
  `album_masonry_back_font_style` varchar(16) NOT NULL,
  `album_masonry_back_font_size` int(4) NOT NULL,
  `album_masonry_back_font_weight` varchar(8) NOT NULL,
  `album_masonry_back_padding` varchar(32) NOT NULL,
  `album_masonry_title_font_color` varchar(8) NOT NULL,
  `album_masonry_title_font_style` varchar(16) NOT NULL,
  `album_masonry_thumb_title_pos` varchar(8) NOT NULL,
  `album_masonry_title_font_size` int(4) NOT NULL,
  `album_masonry_title_font_weight` varchar(8) NOT NULL,
  `album_masonry_title_margin` varchar(32) NOT NULL,
  `album_masonry_title_shadow` varchar(32) NOT NULL,
  `album_masonry_thumb_margin` int(4) NOT NULL,
  `album_masonry_thumb_padding` int(4) NOT NULL,
  `album_masonry_thumb_border_radius` varchar(32) NOT NULL,
  `album_masonry_thumb_border_width` int(4) NOT NULL,
  `album_masonry_thumb_border_style` varchar(8) NOT NULL,
  `album_masonry_thumb_border_color` varchar(8) NOT NULL,
  `album_masonry_thumb_bg_color` varchar(8) NOT NULL,
  `album_masonry_thumbs_bg_color` varchar(8) NOT NULL,
  `album_masonry_thumb_bg_transparent` int(4) NOT NULL,
  `album_masonry_thumb_box_shadow` varchar(32) NOT NULL,
  `album_masonry_thumb_transparent` int(4) NOT NULL,
  `album_masonry_thumb_align` varchar(8) NOT NULL,
  `album_masonry_thumb_hover_effect` varchar(64) NOT NULL,
  `album_masonry_thumb_hover_effect_value` varchar(64) NOT NULL,
  `album_masonry_thumb_transition` tinyint(1) NOT NULL,
  `default_theme` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bwg_theme`
--

LOCK TABLES `wp_bwg_theme` WRITE;
/*!40000 ALTER TABLE `wp_bwg_theme` DISABLE KEYS */;
INSERT INTO `wp_bwg_theme` VALUES (1,'Theme 1',4,0,'0',0,'none','CCCCCC','FFFFFF','FFFFFF',0,'0px 0px 0px #888888',100,'center','scale','1.1',1,'CCCCCC','segoe ui','bottom',16,'bold','2px','0px 0px 0px #888888','bottom','center',0,12,'segoe ui','666666','bold',1,'solid','E3E3E3','0','0','3px 6px','FFFFFF',100,'0',1,0,'000000',70,'000000','bottom','center',20,10,7,100,'FFFFFF',14,100,'000000',65,4,100,'000000',2,'16px','none','FFFFFF','0','FFFFFF',10,20,20,'-10','-10','FFFFFF','000000',80,'20px',0,'none','FFFFFF','','FFFFFF',40,40,20,'CCCCCC','left',400,'000000','CCCCCC','segoe ui',12,'616161','666666',1,'none','3px','3px 10px','333333','666666',1,'none','0','2px',1,'solid','383838',14,10,12,'CCCCCC','top','3B3B3B',20,'FFFFFF','0 1px',1,'solid','000000','0',80,0,'FFFFFF','fa-chevron','000000','segoe ui',16,'bold','0','CCCCCC','segoe ui','bottom',16,'bold','2px','0px 0px 0px #888888',4,0,'0',0,'none','CCCCCC','FFFFFF','FFFFFF',0,'0px 0px 0px #888888',100,'center','scale','1.1',0,2,0,'0',0,'none','CCCCCC','FFFFFF','FFFFFF',0,'',100,'left','scale','1.1',0,'000000','segoe ui',20,'bold','0','FFFFFF',0,'0 0 0 0','0 0 5px 0',10,1,'solid','E0E0E0','FFFFFF','0',1,'solid','E8E8E8','5px','FFFFFF','0',1,'solid','E8E8E8','5px',1,'none','CCCCCC','000000','segoe ui',16,'bold',2,'2px',1,'none','CCCCCC','000000','segoe ui',14,'normal','2px','F2D22E',12,4,'0',0,'none','CCCCCC','FFFFFF',0,100,'center','scale','1.1',0,4,'0',0,'none','CCCCCC','FFFFFF',0,100,'center','scale','1.1','CCCCCC','segoe ui',16,'bold','2px','0px 0px 0px #888888','000000',100,'000000','20px',0,'none','FFFFFF','0px 0px 0px #000000','FFFFFF',40,20,40,'CCCCCC','top',1,'solid','000000','0','0 1px',0,'FFFFFF',80,'3B3B3B','FFFFFF',20,16,'segoe ui','FFFFFF',70,'5px','000000','0 0 0 0',14,'segoe ui','FFFFFF',70,'0','000000','5px 10px 5px 10px',12,12,'5px','F2D22E',3,'FFFFFF',1,'000000',60,'fa-chevron','2px','0','0',1,'solid','F5F5F5','FFFFFF','',80,'center','FFFFFF','5px auto 10px auto','0',0,'none','000000','right',16,'segoe ui','000000','B3AFAF',0,20,'2px auto','4px','0',1,'none','F5F5F5','EBEBEB','',80,'center','0px 5px 0px 5px','8px 8px 8px 8px','0',1,'none','FFFFFF','EBEBEB','center',15,'segoe ui','000000','4px','0',2,'none','F7F7F7','F5F5F5',90,'top','right','000000',70,1,'none','000000','5px','5px','15px','FFFFFF','segoe ui','bold',18,'FFFFFF','segoe ui','normal',14,'bottom','right','star','F9D062',20,5,'15px','F7B50E','bottom','left','000000',70,1,'none','000000','5px','5px','0 5px','FFFFFF','segoe ui','normal',14,12,'CCCCCC','segoe ui','000000','segoe ui',16,'bold','0','CCCCCC','segoe ui','bottom',16,'bold','2px','0px 0px 0px #888888',4,0,'0',0,'none','CCCCCC','FFFFFF','FFFFFF',0,'0px 0px 0px #888888',100,'center','scale','1.1',0,1),(2,'Theme 2',4,4,'0',5,'none','FFFFFF','E8E8E8','FFFFFF',0,'0px 0px 0px #888888',100,'center','rotate','2deg',1,'CCCCCC','segoe ui','bottom',16,'bold','5px','','bottom','center',0,12,'segoe ui','666666','bold',1,'none','E3E3E3','0','0','3px 6px','FCFCFC',100,'0',1,0,'000000',70,'000000','bottom','center',20,10,7,80,'FFFFFF',14,100,'000000',80,4,95,'000000',0,'16px','none','FFFFFF','','FFFFFF',10,20,20,'-10','-10','FFFFFF','000000',80,'20px',2,'none','FFFFFF','','FFFFFF',40,40,20,'FFFFFF','left',400,'000000','CCCCCC','arial',12,'333333','666666',1,'none','3px','3px 10px','333333','666666',1,'none','0','3px',1,'solid','2B2B2B',14,10,12,'FFFFFF','top','2B2B2B',20,'FFFFFF','0 1px',1,'none','000000','0',80,0,'FFFFFF','fa-chevron','000000','segoe ui',14,'normal','0','CCCCCC','segoe ui','bottom',16,'bold','5px','',4,4,'0',1,'none','000000','E8E8E8','FFFFFF',100,'',100,'center','rotate','2deg',1,2,4,'0',4,'none','E8E8E8','E8E8E8','FFFFFF',100,'',100,'left','rotate','2deg',0,'000000','segoe ui',16,'bold','0','FFFFFF',0,'0','0 0 5px 0',10,1,'none','CCCCCC','FFFFFF','0',0,'none','CCCCCC','0','FFFFFF','0',1,'none','CCCCCC','5px',1,'none','CCCCCC','000000','segoe ui',16,'bold',2,'2px',1,'none','CCCCCC','000000','segoe ui',14,'normal','2px','FFC933',12,4,'2px',1,'none','CCCCCC','FFFFFF',0,80,'center','rotate','2deg',0,4,'2px',1,'none','CCCCCC','FFFFFF',0,80,'center','rotate','2deg','CCCCCC','segoe ui',16,'bold','2px','0px 0px 0px #888888','000000',100,'000000','20px',0,'none','FFFFFF','','FFFFFF',40,20,40,'DBDBDB','bottom',1,'none','000000','0','0 1px',0,'FFFFFF',80,'303030','FFFFFF',20,16,'segoe ui','FFFFFF',70,'5px','000000','5px 10px 5px 10px',14,'segoe ui','FFFFFF',70,'0','000000','5px 10px 5px 10px',10,10,'10px','292929',1,'292929',2,'FFC933',60,'fa-chevron','2px','4px','0',1,'none','CCCCCC','E8E8E8','',70,'center','FFFFFF','5px auto 10px auto','0',0,'none','000000','right',16,'segoe ui','000000','A1A1A1',0,20,'2px auto','4px','2px',1,'none','E8E8E8','E8E8E8','',80,'center','24px 0px 0px 0px','8px 8px 8px 8px','0',1,'none','FFFFFF','E8E8E8','center',14,'segoe ui','000000','4px','0',1,'solid','EDEDED','FFFFFF',90,'top','right','000000',70,1,'none','000000','5px','5px','15px','FFFFFF','segoe ui','bold',18,'FFFFFF','segoe ui','normal',14,'bottom','right','star','F9D062',20,5,'15px','F7B50E','bottom','left','000000',70,1,'none','000000','5px','5px','0 5px','FFFFFF','segoe ui','normal',14,12,'CCCCCC','segoe ui','000000','segoe ui',14,'normal','0','CCCCCC','segoe ui','bottom',16,'bold','5px','',4,4,'0',1,'none','000000','E8E8E8','FFFFFF',100,'',100,'center','rotate','2deg',1,0);
/*!40000 ALTER TABLE `wp_bwg_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Sr WordPress','','https://wordpress.org/','','2015-02-28 23:02:47','2015-02-28 23:02:47','Hola, esto es un comentario.\nPara borrar un comentario simplemente accede y revisa los comentarios de la entrada. AhÃ­ tendrÃ¡s la opciÃ³n de editarlo o borrarlo.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_jigoshop_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_jigoshop_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_jigoshop_attribute_taxonomies` (
  `attribute_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` longtext,
  `attribute_type` varchar(200) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_jigoshop_attribute_taxonomies`
--

LOCK TABLES `wp_jigoshop_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_jigoshop_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_jigoshop_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_jigoshop_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_jigoshop_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_jigoshop_downloadable_product_permissions` (
  `product_id` mediumint(9) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `order_key` varchar(200) NOT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`product_id`,`order_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_jigoshop_downloadable_product_permissions`
--

LOCK TABLES `wp_jigoshop_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_jigoshop_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_jigoshop_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_jigoshop_termmeta`
--

DROP TABLE IF EXISTS `wp_jigoshop_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_jigoshop_termmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `jigoshop_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_jigoshop_termmeta`
--

LOCK TABLES `wp_jigoshop_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_jigoshop_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_jigoshop_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://mywordpress.com','yes'),(2,'home','http://mywordpress.com','yes'),(3,'blogname','MyWordPress','yes'),(4,'blogdescription','Otro sitio realizado con WordPress','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','edicson@billingbuddy.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','j F, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','j F, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(29,'gzipcompression','0','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:1:{i:1;s:31:\"photo-gallery/photo-gallery.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'advanced_edit','0','yes'),(37,'comment_max_links','2','yes'),(38,'gmt_offset','0','yes'),(39,'default_email_category','1','yes'),(40,'recently_edited','','no'),(41,'template','twentythirteen','yes'),(42,'stylesheet','twentythirteen','yes'),(43,'comment_whitelist','1','yes'),(44,'blacklist_keys','','no'),(45,'comment_registration','0','yes'),(46,'html_type','text/html','yes'),(47,'use_trackback','0','yes'),(48,'default_role','subscriber','yes'),(49,'db_version','30133','yes'),(50,'uploads_use_yearmonth_folders','1','yes'),(51,'upload_path','','yes'),(52,'blog_public','1','yes'),(53,'default_link_category','2','yes'),(54,'show_on_front','posts','yes'),(55,'tag_base','','yes'),(56,'show_avatars','1','yes'),(57,'avatar_rating','G','yes'),(58,'upload_url_path','','yes'),(59,'thumbnail_size_w','150','yes'),(60,'thumbnail_size_h','150','yes'),(61,'thumbnail_crop','1','yes'),(62,'medium_size_w','300','yes'),(63,'medium_size_h','300','yes'),(64,'avatar_default','mystery','yes'),(65,'large_size_w','1024','yes'),(66,'large_size_h','1024','yes'),(67,'image_default_link_type','file','yes'),(68,'image_default_size','','yes'),(69,'image_default_align','','yes'),(70,'close_comments_for_old_posts','0','yes'),(71,'close_comments_days_old','14','yes'),(72,'thread_comments','1','yes'),(73,'thread_comments_depth','5','yes'),(74,'page_comments','0','yes'),(75,'comments_per_page','50','yes'),(76,'default_comments_page','newest','yes'),(77,'comment_order','asc','yes'),(78,'sticky_posts','a:0:{}','yes'),(79,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_text','a:0:{}','yes'),(81,'widget_rss','a:0:{}','yes'),(82,'uninstall_plugins','a:0:{}','no'),(83,'timezone_string','','yes'),(84,'page_for_posts','0','yes'),(85,'page_on_front','0','yes'),(86,'default_post_format','0','yes'),(87,'link_manager_enabled','0','yes'),(88,'initial_db_version','30133','yes'),(89,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:136:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:15:\"manage_jigoshop\";b:1;s:21:\"view_jigoshop_reports\";b:1;s:22:\"manage_jigoshop_orders\";b:1;s:23:\"manage_jigoshop_coupons\";b:1;s:24:\"manage_jigoshop_products\";b:1;s:22:\"manage_jigoshop_emails\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:15:\"edit_shop_email\";b:1;s:15:\"read_shop_email\";b:1;s:17:\"delete_shop_email\";b:1;s:16:\"edit_shop_emails\";b:1;s:23:\"edit_others_shop_emails\";b:1;s:19:\"publish_shop_emails\";b:1;s:24:\"read_private_shop_emails\";b:1;s:18:\"delete_shop_emails\";b:1;s:26:\"delete_private_shop_emails\";b:1;s:28:\"delete_published_shop_emails\";b:1;s:25:\"delete_others_shop_emails\";b:1;s:24:\"edit_private_shop_emails\";b:1;s:26:\"edit_published_shop_emails\";b:1;s:23:\"manage_shop_email_terms\";b:1;s:21:\"edit_shop_email_terms\";b:1;s:23:\"delete_shop_email_terms\";b:1;s:23:\"assign_shop_email_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:7:\"Cliente\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:16:\"Gestor de Tienda\";s:12:\"capabilities\";a:103:{s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:15:\"manage_jigoshop\";b:1;s:21:\"view_jigoshop_reports\";b:1;s:22:\"manage_jigoshop_orders\";b:1;s:23:\"manage_jigoshop_coupons\";b:1;s:24:\"manage_jigoshop_products\";b:1;s:22:\"manage_jigoshop_emails\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:15:\"edit_shop_email\";b:1;s:15:\"read_shop_email\";b:1;s:17:\"delete_shop_email\";b:1;s:16:\"edit_shop_emails\";b:1;s:23:\"edit_others_shop_emails\";b:1;s:19:\"publish_shop_emails\";b:1;s:24:\"read_private_shop_emails\";b:1;s:18:\"delete_shop_emails\";b:1;s:26:\"delete_private_shop_emails\";b:1;s:28:\"delete_published_shop_emails\";b:1;s:25:\"delete_others_shop_emails\";b:1;s:24:\"edit_private_shop_emails\";b:1;s:26:\"edit_published_shop_emails\";b:1;s:23:\"manage_shop_email_terms\";b:1;s:21:\"edit_shop_email_terms\";b:1;s:23:\"delete_shop_email_terms\";b:1;s:23:\"assign_shop_email_terms\";b:1;}}}','yes'),(90,'WPLANG','es_ES','yes'),(91,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(92,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(93,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(94,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(95,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(96,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";N;s:13:\"array_version\";i:3;}','yes'),(97,'cron','a:6:{i:1425596715;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1425596734;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1425598049;a:2:{s:28:\"jigoshop_cron_pending_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"jigoshop_cron_processing_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1425601570;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1425627780;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}','yes'),(99,'_transient_random_seed','1546604248965f545d1c5ff72616adba','yes'),(100,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.1.1.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.1.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.1.1\";s:7:\"version\";s:5:\"4.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1425587593;s:15:\"version_checked\";s:5:\"4.1.1\";s:12:\"translations\";a:0:{}}','yes'),(101,'auth_key','L66wjzIGtP/Z{OuO,z423N1!N3{7T7M;FI]Myix]g6G*t|HGK&q8{k!rBwPNiGn!','yes'),(102,'auth_salt','6&#A6:&Qh#CDzSxU1O/N-<sm%YO6y[o-wTg2qvMV(wAX7<HD4E`,WL@`|Hm<b`D{','yes'),(103,'logged_in_key','!3WRN/HniCl`L@aiMR2`jX@k$e%AT9h4;?U),P,@>4jWmo)H{EM@8^:<_]`Pg<CU','yes'),(104,'logged_in_salt','/o:gZ{MWu S!HlWCm.T&.H?oQ1<;56 .1rJzcE`b;5<jYFhNg9bpiPhVvd(sT;0M','yes'),(105,'nonce_key','nI~SDeSL&w]C,?a4_2Js!SfDZ8(qP X`|z>VBy$wrcigkRMW|=GdahHa)8W=`4%`','yes'),(106,'nonce_salt','.Gy?Fjf*$nRZ)bCmMGax8Y9/KhWjb4V8#45Pye*biG9/vr/@p&|U2brL.{6rxrri','yes'),(112,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1425587599;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"1.0\";s:14:\"twentyfourteen\";s:3:\"1.3\";s:14:\"twentythirteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','yes'),(113,'_site_transient_timeout_browser_fb7e73d137e6cd6d4a2ec6775f80507c','1425769523','yes'),(114,'_site_transient_browser_fb7e73d137e6cd6d4a2ec6775f80507c','a:9:{s:8:\"platform\";s:5:\"Linux\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"36.0\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','yes'),(115,'can_compress_scripts','0','yes'),(116,'_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca','1425207925','no'),(117,'_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Feb 2015 23:40:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"http://wordpress.org/?v=4.2-alpha-31588\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 4.1.1 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/news/2015/02/wordpress-4-1-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wordpress.org/news/2015/02/wordpress-4-1-1/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Feb 2015 23:40:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3436\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:345:\"WordPress 4.1.1 is now available.Â This maintenance release fixes 21 bugs in versionÂ 4.1. Some of you may have been waiting to update to the latest version until now, but there just wasn&#8217;t much to address. WordPress 4.1Â was a smooth-sailing release and has seen more than 14 million downloads in the last two months. For a full [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Andrew Nacin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3086:\"<p>WordPress 4.1.1 is now available.Â This maintenance release fixes 21 bugs in versionÂ 4.1.</p>\n<p>Some of you may have been waiting to update to the latest version until now, but there just wasn&#8217;t much to address. WordPress 4.1Â was a smooth-sailing release and has seen more than 14 million downloads in the last two months.</p>\n<p class=\"p1\"><span class=\"s1\">For a full list of changes, consult the <a href=\"https://core.trac.wordpress.org/query?milestone=4.1.1&amp;group=severity&amp;order=component\">list of tickets</a> and the <a href=\"https://core.trac.wordpress.org/log/branches/4.1?stop_rev=30974&amp;rev=31474\">changelog</a>. We fixed one annoying issue where a tag and a category with the same name could get muddled and prevent each otherÂ from being updated.</span></p>\n<p>If you are one of the millions already running WordPress 4.1 and your site, weâ€™ve started rolling out automatic background updates for 4.1.1 for sitesÂ <a href=\"https://wordpress.org/plugins/background-update-tester/\">that support them</a>. Otherwise, <a href=\"https://wordpress.org/download/\">download WordPress 4.1.1</a>Â or visitÂ <strong>Dashboard â†’ Updates</strong>Â and simply click â€œUpdate Now.â€</p>\n<p>Thanks to everyone who contributed to 4.1.1: <a href=\"https://profiles.wordpress.org/afercia\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/boonebgorges\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/chrico\">ChriCo</a>, <a href=\"https://profiles.wordpress.org/dd32\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/dlh\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/drewapicture\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/hissy\">Takuro Hishikawa</a>, <a href=\"https://profiles.wordpress.org/ipm-frommen\">Thorsten Frommen</a>, <a href=\"https://profiles.wordpress.org/iseulde\">Iseulde</a>, <a href=\"https://profiles.wordpress.org/johnbillion\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/jorbin\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/mattyrob\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/obenland\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/ocean90\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/sippis\">sippis</a>, <a href=\"https://profiles.wordpress.org/tmatsuur\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/tyxla\">Marin Atanasov</a>, <a href=\"https://profiles.wordpress.org/valendesigns\">Derek Herman</a>, and <a href=\"https://profiles.wordpress.org/westonruter\">Weston Ruter</a>.</p>\n<p>It is with both great honor and sadness we also recognize Kim Parsell as a contributor to this release and a <a href=\"https://make.wordpress.org/docs/2015/01/05/rip-kim-parsell/\">truly beloved member of the community</a> until her untimely passing in December. The project is working to establish a conference travel <a href=\"https://make.wordpress.org/community/2015/01/15/remembering-kim-parsell/\">scholarship</a> in her memory. We miss you, Kim.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2015/02/wordpress-4-1-1/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 4.1 â€œDinahâ€\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://wordpress.org/news/2014/12/dinah/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wordpress.org/news/2014/12/dinah/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 18 Dec 2014 18:35:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3386\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:360:\"Version 4.1 of WordPress, named &#8220;Dinah&#8221; in honor of jazz singer Dinah Washington, is available for download or update in your WordPress dashboard. New features in WordPress 4.1 help you focus on your writing, and the new default theme lets you show it off in style. Introducing TwentyÂ Fifteen Our newest default theme, Twenty Fifteen, is [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:24563:\"<p>Version 4.1 of WordPress, named &#8220;Dinah&#8221; in honor of jazz singer <a href=\"http://wikipedia.org/wiki/Dinah_Washington\">Dinah Washington</a>, is available for download or update in your WordPress dashboard. New features in WordPress 4.1 help you focus on your writing, and the new default theme lets you show it off in style.</p>\n<hr />\n<h2 style=\"text-align: center\">Introducing TwentyÂ Fifteen</h2>\n<p><img class=\"aligncenter size-large wp-image-3389\" src=\"https://wordpress.org/news/files/2014/12/2015-laptop-1024x533.png\" alt=\"2015-laptop\" width=\"692\" height=\"360\" /></p>\n<h3>Our newest default theme, Twenty Fifteen, is a blog-focused theme designed forÂ clarity.</h3>\n<p><img class=\"alignright wp-image-3426 size-medium\" src=\"https://wordpress.org/news/files/2014/12/2015-phones-languages-small-300x250.png\" alt=\"\" width=\"300\" height=\"250\" />Twenty Fifteen has flawless language support, with help from <a href=\"https://www.google.com/get/noto/\">Googleâ€™s Noto font family</a>.</p>\n<p>The straightforward typography is readable on any screen size.</p>\n<p>Your content always takes center stage, whether viewed on a phone, tablet, laptop, or desktop computer.</p>\n<hr />\n<h2 style=\"text-align: center\">Distraction-free writing</h2>\n<p><img class=\"aligncenter size-large wp-image-3392\" src=\"https://wordpress.org/news/files/2014/12/dfw-screen-1024x614.png\" alt=\"dfw-screen\" width=\"692\" height=\"415\" /></p>\n<h3 style=\"text-align: center\"><em>Just write.</em></h3>\n<p>Sometimes, you just need to concentrate on putting your thoughts into words. Try turning on <strong>distraction-free writing mode</strong>. When you start typing, all the distractions will fade away, letting you focus solely on your writing. All your editing tools instantly return when you need them.</p>\n<hr />\n<h2 style=\"text-align: center\">The Finer Points</h2>\n<h5><strong><img class=\"alignleft wp-image-3405\" src=\"https://wordpress.org/news/files/2014/12/icon-language2.png\" alt=\"\" width=\"80\" height=\"80\" /></strong>Choose a language</h5>\n<p>Right now, WordPress 4.1 is already translated into over forty languages, with more always in progress. You can switch to any translation on the General Settings screen.</p>\n<h5><strong><img class=\"alignleft wp-image-3406\" src=\"https://wordpress.org/news/files/2014/12/icon-logout1.png\" alt=\"\" width=\"80\" height=\"80\" /></strong>Log out everywhere</h5>\n<p>If youâ€™ve ever worried you forgot to sign out from a shared computer, you can now go to your profile and log out everywhere.</p>\n<h5><strong><img class=\"alignleft wp-image-3407\" src=\"https://wordpress.org/news/files/2014/12/icon-vine1.png\" alt=\"\" width=\"80\" height=\"80\" /></strong>Vine embeds</h5>\n<p>Embedding videos from Vine is as simple as pasting a URL onto its own line in a post. See the <a href=\"https://codex.wordpress.org/Embeds\">full list</a> of supported embeds.</p>\n<h5><strong><img class=\"alignleft wp-image-3408\" src=\"https://wordpress.org/news/files/2014/12/icon-recommended1.png\" alt=\"\" width=\"80\" height=\"80\" /></strong>Plugin recommendations</h5>\n<p>The plugin installer suggests plugins for you to try. Recommendations are based on the plugins you and other users have installed.</p>\n<hr />\n<h2 style=\"text-align: center\">Under the Hood</h2>\n<h5>Complex Queries</h5>\n<p>Metadata, date, and term queries now support advanced conditional logic, like nested clauses and multiple operators â€” <code>AÂ ANDÂ (Â BÂ ORÂ CÂ )</code>.</p>\n<h5>Customizer API</h5>\n<p>The customizer now supports conditionally showing panels and sections based on the page being previewed.</p>\n<h5><code>&lt;title&gt;</code> tags in themes</h5>\n<p><code>add_theme_support( \'title-tag\' )</code> tells WordPress to handle the complexities of document titles.</p>\n<h5>Developer Reference</h5>\n<p>Continued improvements to inline code documentation have made theÂ <a href=\"https://developer.wordpress.org/reference/\">developer reference</a> more complete than ever.</p>\n<hr />\n<h2 style=\"text-align: center\">The Choir</h2>\n<p>This release was led by <a href=\"https://profiles.wordpress.org/johnbillion\">John Blackbourn</a>, with the help of these awesome folks. Check out some of their profiles while listening to Dinah Washington on the music service of your choice:</p>\n<a href=\"https://profiles.wordpress.org/aaroncampbell\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/akumria\">akumria</a>, <a href=\"https://profiles.wordpress.org/xknown\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/viper007bond\">Alex Mills (Viper007Bond)</a>, <a href=\"https://profiles.wordpress.org/tellyworth\">Alex Shiels</a>, <a href=\"https://profiles.wordpress.org/collinsinternet\">Allan Collins</a>, <a href=\"https://profiles.wordpress.org/momo360modena\">Amaury Balmer</a>, <a href=\"https://profiles.wordpress.org/amruta123b\">Amruta Bhosale</a>, <a href=\"https://profiles.wordpress.org/afercia\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andg\">Andrea Gandino</a>, <a href=\"https://profiles.wordpress.org/sumobi\">Andrew Munro (sumobi)</a>, <a href=\"https://profiles.wordpress.org/nacin\">Andrew Nacin</a>, <a href=\"https://profiles.wordpress.org/azaozz\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/andrewryno\">Andrew Ryno</a>, <a href=\"https://profiles.wordpress.org/rarst\">Andrey \"Rarst\" Savchenko</a>, <a href=\"https://profiles.wordpress.org/ankitgadertcampcom\">Ankit Gade</a>, <a href=\"https://profiles.wordpress.org/ankit-k-gupta\">Ankit K Gupta</a>, <a href=\"https://profiles.wordpress.org/antpb\">Anthony Burchell</a>, <a href=\"https://profiles.wordpress.org/arippberger\">arippberger</a>, <a href=\"https://profiles.wordpress.org/filosofo\">Austin Matzko</a>, <a href=\"https://profiles.wordpress.org/bainternet\">Bainternet</a>, <a href=\"https://profiles.wordpress.org/barrykooij\">Barry Kooij</a>, <a href=\"https://profiles.wordpress.org/empireoflight\">Ben Dunkle</a>, <a href=\"https://profiles.wordpress.org/benjmay\">Ben May</a>, <a href=\"https://profiles.wordpress.org/neoxx\">Bernhard Riedl</a>, <a href=\"https://profiles.wordpress.org/birgire\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bobbingwide\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/boonebgorges\">Boone B. Gorges</a>, <a href=\"https://profiles.wordpress.org/bradyvercher\">Brady Vercher</a>, <a href=\"https://profiles.wordpress.org/bramd\">Bram Duvigneau</a>, <a href=\"https://profiles.wordpress.org/kraftbj\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/briandichiara\">Brian DiChiara</a>, <a href=\"https://profiles.wordpress.org/rzen\">Brian Richards</a>, <a href=\"https://profiles.wordpress.org/bswatson\">Brian Watson</a>, <a href=\"https://profiles.wordpress.org/camdensegal\">Camden Segal</a>, <a href=\"https://profiles.wordpress.org/captaintheme\">Captain Theme</a>, <a href=\"https://profiles.wordpress.org/hiwhatsup\">Carlos</a>, <a href=\"https://profiles.wordpress.org/caspie\">Caspie</a>, <a href=\"https://profiles.wordpress.org/ccprice\">ccprice</a>, <a href=\"https://profiles.wordpress.org/mackensen\">Charles Fulton</a>, <a href=\"https://profiles.wordpress.org/chrico\">ChriCo</a>, <a href=\"https://profiles.wordpress.org/aprea\">Chris Aprea</a>, <a href=\"https://profiles.wordpress.org/chrisbliss18\">Chris Jean</a>, <a href=\"https://profiles.wordpress.org/cmmarslender\">Chris Marslender</a>, <a href=\"https://profiles.wordpress.org/jazzs3quence\">Chris Reynolds</a>, <a href=\"https://profiles.wordpress.org/chriscct7\">chriscct7</a>, <a href=\"https://profiles.wordpress.org/chrisl27\">chrisl27</a>, <a href=\"https://profiles.wordpress.org/cfoellmann\">Christian Foellmann</a>, <a href=\"https://profiles.wordpress.org/cfinke\">Christopher Finke</a>, <a href=\"https://profiles.wordpress.org/cyclometh\">Corey Snow</a>, <a href=\"https://profiles.wordpress.org/corphi\">Corphi</a>, <a href=\"https://profiles.wordpress.org/curtjen\">curtjen</a>, <a href=\"https://profiles.wordpress.org/colorful-tones\">Damon Cook</a>, <a href=\"https://profiles.wordpress.org/dancameron\">Dan Cameron</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/convissor\">Daniel Convissor</a>, <a href=\"https://profiles.wordpress.org/nerrad\">Darren Ethier (nerrad)</a>, <a href=\"https://profiles.wordpress.org/koop\">Daryl Koopersmith</a>, <a href=\"https://profiles.wordpress.org/dmchale\">Dave McHale</a>, <a href=\"https://profiles.wordpress.org/davidakennedy\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/dlh\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/davidjlaietta\">David Laietta</a>, <a href=\"https://profiles.wordpress.org/technical_mastermind\">David Wood</a>, <a href=\"https://profiles.wordpress.org/davidthemachine\">DavidTheMachine</a>, <a href=\"https://profiles.wordpress.org/dcavins\">dcavins</a>, <a href=\"https://profiles.wordpress.org/realloc\">Dennis Ploetner</a>, <a href=\"https://profiles.wordpress.org/dd32\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/wedi\">Dirk Weise</a>, <a href=\"https://profiles.wordpress.org/ocean90\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/dominikschwind-1\">Dominik Schwind</a>, <a href=\"https://profiles.wordpress.org/drewapicture\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/dustyf\">Dustin Filippini</a>, <a href=\"https://profiles.wordpress.org/dustinhartzler\">Dustin Hartzler</a>, <a href=\"https://profiles.wordpress.org/eliorivero\">Elio Rivero</a>, <a href=\"https://profiles.wordpress.org/ebinnion\">Eric Binnion</a>, <a href=\"https://profiles.wordpress.org/ew_holmes\">Eric Holmes</a>, <a href=\"https://profiles.wordpress.org/ericlewis\">Eric Lewis</a>, <a href=\"https://profiles.wordpress.org/fab1en\">Fabien Quatravaux</a>, <a href=\"https://profiles.wordpress.org/florianziegler\">Florian Ziegler</a>, <a href=\"https://profiles.wordpress.org/hereswhatidid\">Gabe Shackle</a>, <a href=\"https://profiles.wordpress.org/garyc40\">Gary Cao</a>, <a href=\"https://profiles.wordpress.org/pento\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/soulseekah\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/babbardel\">George Olaru</a>, <a href=\"https://profiles.wordpress.org/georgestephanis\">George Stephanis</a>, <a href=\"https://profiles.wordpress.org/gregrickaby\">Greg Rickaby</a>, <a href=\"https://profiles.wordpress.org/gcorne\">Gregory Cornelius</a>, <a href=\"https://profiles.wordpress.org/tivnet\">Gregory Karpinsky (@tivnet)</a>, <a href=\"https://profiles.wordpress.org/bordoni\">Gustavo Bordoni</a>, <a href=\"https://profiles.wordpress.org/hardy101\">hardy101</a>, <a href=\"https://profiles.wordpress.org/hauvong\">hauvong</a>, <a href=\"https://profiles.wordpress.org/helen\">Helen Hou-SandÃ­</a>, <a href=\"https://profiles.wordpress.org/heshiming\">heshiming</a>, <a href=\"https://profiles.wordpress.org/honeysilvas\">honeysilvas</a>, <a href=\"https://profiles.wordpress.org/hugodelgado\">hugodelgado</a>, <a href=\"https://profiles.wordpress.org/iandstewart\">Ian Stewart</a>, <a href=\"https://profiles.wordpress.org/ianmjones\">ianmjones</a>, <a href=\"https://profiles.wordpress.org/igmoweb\">Ignacio Cruz Moreno</a>, <a href=\"https://profiles.wordpress.org/imath\">imath</a>, <a href=\"https://profiles.wordpress.org/ipstenu\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/ivankristianto\">Ivan Kristianto</a>, <a href=\"https://profiles.wordpress.org/jdgrimes\">J.D. Grimes</a>, <a href=\"https://profiles.wordpress.org/jaimieolmstead\">jaimieolmstead</a>, <a href=\"https://profiles.wordpress.org/jakubtyrcha\">jakub.tyrcha</a>, <a href=\"https://profiles.wordpress.org/janhenckens\">janhenckens</a>, <a href=\"https://profiles.wordpress.org/avryl\">Janneke Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/japh\">Japh</a>, <a href=\"https://profiles.wordpress.org/jwenerd\">Jared Wenerd</a>, <a href=\"https://profiles.wordpress.org/jarednova\">jarednova</a>, <a href=\"https://profiles.wordpress.org/jeanyoungkim\">jeanyoungkim</a>, <a href=\"https://profiles.wordpress.org/jfarthing84\">Jeff Farthing</a>, <a href=\"https://profiles.wordpress.org/jeffstieler\">Jeff Stieler</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jeherve\">Jeremy Herve</a>, <a href=\"https://profiles.wordpress.org/jesin\">Jesin A</a>, <a href=\"https://profiles.wordpress.org/jayjdk\">Jesper Johansen (jayjdk)</a>, <a href=\"https://profiles.wordpress.org/engelen\">Jesper van Engelen</a>, <a href=\"https://profiles.wordpress.org/jessepollak\">Jesse Pollak</a>, <a href=\"https://profiles.wordpress.org/jipmoors\">jipmoors</a>, <a href=\"https://profiles.wordpress.org/joedolson\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joemcgill\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johneckman\">John Eckman</a>, <a href=\"https://profiles.wordpress.org/johnrom\">johnrom</a>, <a href=\"https://profiles.wordpress.org/johnstonphilip\">johnstonphilip</a>, <a href=\"https://profiles.wordpress.org/jb510\">Jon Brown</a>, <a href=\"https://profiles.wordpress.org/duck_\">Jon Cave</a>, <a href=\"https://profiles.wordpress.org/jbrinley\">Jonathan Brinley</a>, <a href=\"https://profiles.wordpress.org/desrosj\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joostdevalk\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/softmodeling\">Jordi Cabot</a>, <a href=\"https://profiles.wordpress.org/joshuaabenazer\">Joshua Abenazer</a>, <a href=\"https://profiles.wordpress.org/tai\">JOTAKI Taisuke</a>, <a href=\"https://profiles.wordpress.org/jrf\">jrf</a>, <a href=\"https://profiles.wordpress.org/julien731\">Julien Liabeuf</a>, <a href=\"https://profiles.wordpress.org/justinsainton\">Justin Sainton</a>, <a href=\"https://profiles.wordpress.org/jtsternberg\">Justin Sternberg</a>, <a href=\"https://profiles.wordpress.org/kadamwhite\">K.Adam White</a>, <a href=\"https://profiles.wordpress.org/trepmal\">Kailey (trepmal)</a>, <a href=\"https://profiles.wordpress.org/kamelkev\">kamelkev</a>, <a href=\"https://profiles.wordpress.org/karpstrucking\">karpstrucking</a>, <a href=\"https://profiles.wordpress.org/keesiemeijer\">keesiemeijer</a>, <a href=\"https://profiles.wordpress.org/ryelle\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/kevinlangleyjr\">Kevin Langley</a>, <a href=\"https://profiles.wordpress.org/kdoran\">Kiko Doran</a>, <a href=\"https://profiles.wordpress.org/kpdesign\">Kim Parsell</a>, <a href=\"https://profiles.wordpress.org/kwight\">Kirk Wight</a>, <a href=\"https://profiles.wordpress.org/kitchin\">kitchin</a>, <a href=\"https://profiles.wordpress.org/ixkaito\">Kite</a>, <a href=\"https://profiles.wordpress.org/knutsp\">Knut Sparhell</a>, <a href=\"https://profiles.wordpress.org/kovshenin\">Konstantin Kovshenin</a>, <a href=\"https://profiles.wordpress.org/obenland\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/kosvrouvas\">Kostas Vrouvas</a>, <a href=\"https://profiles.wordpress.org/kraftner\">kraftner</a>, <a href=\"https://profiles.wordpress.org/kristastevens\">kristastevens</a>, <a href=\"https://profiles.wordpress.org/kurtpayne\">Kurt Payne</a>, <a href=\"https://profiles.wordpress.org/lancewillett\">Lance Willett</a>, <a href=\"https://profiles.wordpress.org/offereins\">Laurens Offereins</a>, <a href=\"https://profiles.wordpress.org/linuxologos\">linuxologos</a>, <a href=\"https://profiles.wordpress.org/ideag\">Liuiza Arunas</a>, <a href=\"https://profiles.wordpress.org/loushou\">loushou</a>, <a href=\"https://profiles.wordpress.org/latz\">Lutz Schroer</a>, <a href=\"https://profiles.wordpress.org/manoz69\">Manoz69</a>, <a href=\"https://profiles.wordpress.org/mantismamita\">mantismamita</a>, <a href=\"https://profiles.wordpress.org/marcosf\">Marco Schmoecker</a>, <a href=\"https://profiles.wordpress.org/nofearinc\">Mario Peshev</a>, <a href=\"https://profiles.wordpress.org/clorith\">Marius (Clorith)</a>, <a href=\"https://profiles.wordpress.org/landakram\">Mark Hudnall</a>, <a href=\"https://profiles.wordpress.org/markjaquith\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/senff\">Mark Senff</a>, <a href=\"https://profiles.wordpress.org/markoheijnen\">Marko Heijnen</a>, <a href=\"https://profiles.wordpress.org/marsjaninzmarsa\">marsjaninzmarsa</a>, <a href=\"https://profiles.wordpress.org/matveb\">Matias Ventura</a>, <a href=\"https://profiles.wordpress.org/matt\">Matt Mullenweg</a>, <a href=\"https://profiles.wordpress.org/mattwiebe\">Matt Wiebe</a>, <a href=\"https://profiles.wordpress.org/mboynes\">Matthew Boynes</a>, <a href=\"https://profiles.wordpress.org/mattheu\">Matthew Haines-Young</a>, <a href=\"https://profiles.wordpress.org/mattkeys\">mattkeys</a>, <a href=\"https://profiles.wordpress.org/mlteal\">Maura Teal</a>, <a href=\"https://profiles.wordpress.org/melchoyce\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/merty\">Mert Yazicioglu</a>, <a href=\"https://profiles.wordpress.org/mdawaffe\">Michael Adams (mdawaffe)</a>, <a href=\"https://profiles.wordpress.org/michael-arestad\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/tw2113\">Michael Beckwith</a>, <a href=\"https://profiles.wordpress.org/cainm\">Michael Cain</a>, <a href=\"https://profiles.wordpress.org/smashcut\">Michael Pick</a>, <a href=\"https://profiles.wordpress.org/michalzuber\">michalzuber</a>, <a href=\"https://profiles.wordpress.org/chellycat\">Michelle Langston</a>, <a href=\"https://profiles.wordpress.org/mcsf\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/mikehansenme\">Mike Hansen</a>, <a href=\"https://profiles.wordpress.org/mikejolley\">Mike Jolley</a>, <a href=\"https://profiles.wordpress.org/mnelson4\">Mike Nelson</a>, <a href=\"https://profiles.wordpress.org/dh-shredder\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mikeyarce\">Mikey Arce</a>, <a href=\"https://profiles.wordpress.org/studionashvegas\">Mitch Canter (studionashvegas)</a>, <a href=\"https://profiles.wordpress.org/morganestes\">Morgan Estes</a>, <a href=\"https://profiles.wordpress.org/mor10\">Morten Rand-Hendriksen</a>, <a href=\"https://profiles.wordpress.org/mvd7793\">mvd7793</a>, <a href=\"https://profiles.wordpress.org/alex-ye\">Nashwan Doaqan</a>, <a href=\"https://profiles.wordpress.org/niallkennedy\">Niall Kennedy</a>, <a href=\"https://profiles.wordpress.org/celloexpressions\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/nikv\">Nikhil Vimal (NikV)</a>, <a href=\"https://profiles.wordpress.org/nikolovtmw\">Nikola Nikolov</a>, <a href=\"https://profiles.wordpress.org/nobleclem\">nobleclem</a>, <a href=\"https://profiles.wordpress.org/noplanman\">noplanman</a>, <a href=\"https://profiles.wordpress.org/nvwd\">Nowell VanHoesen</a>, <a href=\"https://profiles.wordpress.org/originalexe\">OriginalEXE</a>, <a href=\"https://profiles.wordpress.org/p_enrique\">p_enrique</a>, <a href=\"https://profiles.wordpress.org/pushplaybang\">Paul</a>, <a href=\"https://profiles.wordpress.org/pauldewouters\">Paul de Wouters</a>, <a href=\"https://profiles.wordpress.org/paulschreiber\">Paul Schreiber</a>, <a href=\"https://profiles.wordpress.org/paulwilde\">Paul Wilde</a>, <a href=\"https://profiles.wordpress.org/pavelevap\">pavelevap</a>, <a href=\"https://profiles.wordpress.org/peterchester\">Peter Chester</a>, <a href=\"https://profiles.wordpress.org/donutz\">Peter J. Herrel</a>, <a href=\"https://profiles.wordpress.org/westi\">Peter Westwood</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/philiparthurmoore\">Philip Arthur Moore</a>, <a href=\"https://profiles.wordpress.org/phpmypython\">phpmypython</a>, <a href=\"https://profiles.wordpress.org/mordauk\">Pippin Williamson</a>, <a href=\"https://profiles.wordpress.org/nprasath002\">Prasath Nadarajah</a>, <a href=\"https://profiles.wordpress.org/psycleuk\">psycleuk</a>, <a href=\"https://profiles.wordpress.org/ptahdunbar\">Ptah Dunbar</a>, <a href=\"https://profiles.wordpress.org/quietnic\">quietnic</a>, <a href=\"https://profiles.wordpress.org/rachelbaker\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/ramiy\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/ramiabraham\">ramiabraham</a>, <a href=\"https://profiles.wordpress.org/greuben\">Reuben Gunday</a>, <a href=\"https://profiles.wordpress.org/rianrietveld\">Rian Rietveld</a>, <a href=\"https://profiles.wordpress.org/richardmtl\">Richard Archambault</a>, <a href=\"https://profiles.wordpress.org/rickalee\">Ricky Lee Whittemore</a>, <a href=\"https://profiles.wordpress.org/miqrogroove\">Robert Chapin</a>, <a href=\"https://profiles.wordpress.org/rodrigosprimo\">Rodrigo Primo</a>, <a href=\"https://profiles.wordpress.org/ryan\">Ryan Boren</a>, <a href=\"https://profiles.wordpress.org/ryankienstra\">Ryan Kienstra</a>, <a href=\"https://profiles.wordpress.org/rmccue\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/sakinshrestha\">Sakin Shrestha</a>, <a href=\"https://profiles.wordpress.org/samhotchkiss\">Sam Hotchkiss</a>, <a href=\"https://profiles.wordpress.org/otto42\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/sc0ttkclark\">Scott Kingsley Clark</a>, <a href=\"https://profiles.wordpress.org/coffee2code\">Scott Reilly</a>, <a href=\"https://profiles.wordpress.org/wonderboymusic\">Scott Taylor</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shooper\">Shawn Hooper</a>, <a href=\"https://profiles.wordpress.org/simonp303\">Simon Pollard</a>, <a href=\"https://profiles.wordpress.org/simonwheatley\">Simon Wheatley</a>, <a href=\"https://profiles.wordpress.org/skaeser\">skaeser</a>, <a href=\"https://profiles.wordpress.org/slobodanmanic\">Slobodan Manic</a>, <a href=\"https://profiles.wordpress.org/socki03\">socki03</a>, <a href=\"https://profiles.wordpress.org/solarissmoke\">solarissmoke</a>, <a href=\"https://profiles.wordpress.org/stephdau\">Stephane Daury</a>, <a href=\"https://profiles.wordpress.org/netweb\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/stephenharris\">Stephen Harris</a>, <a href=\"https://profiles.wordpress.org/stevegrunwell\">Steve Grunwell</a>, <a href=\"https://profiles.wordpress.org/5um17\">Sumit Singh</a>, <a href=\"https://profiles.wordpress.org/tacoverdo\">TacoVerdo</a>, <a href=\"https://profiles.wordpress.org/iamtakashi\">Takashi Irie</a>, <a href=\"https://profiles.wordpress.org/miyauchi\">Takayuki Miyauchi</a>, <a href=\"https://profiles.wordpress.org/karmatosed\">Tammie</a>, <a href=\"https://profiles.wordpress.org/tareq1988\">Tareq Hasan</a>, <a href=\"https://profiles.wordpress.org/tlovett1\">Taylor Lovett</a>, <a href=\"https://profiles.wordpress.org/ipm-frommen\">Thorsten Frommen</a>, <a href=\"https://profiles.wordpress.org/tillkruess\">Till Kruss</a>, <a href=\"https://profiles.wordpress.org/tschutter\">Tobias Schutter</a>, <a href=\"https://profiles.wordpress.org/tobiasbg\">TobiasBg</a>, <a href=\"https://profiles.wordpress.org/tmtrademark\">Toby McKes</a>, <a href=\"https://profiles.wordpress.org/tjnowell\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tomasm\">Tomas Mackevicius</a>, <a href=\"https://profiles.wordpress.org/tomharrigan\">TomHarrigan</a>, <a href=\"https://profiles.wordpress.org/topher1kenobe\">Topher</a>, <a href=\"https://profiles.wordpress.org/zodiac1978\">Torsten Landsiedel</a>, <a href=\"https://profiles.wordpress.org/liljimmi\">Tracy Levesque</a>, <a href=\"https://profiles.wordpress.org/transom\">transom</a>, <a href=\"https://profiles.wordpress.org/wpsmith\">Travis Smith</a>, <a href=\"https://profiles.wordpress.org/tywayne\">Ty Carlson</a>, <a href=\"https://profiles.wordpress.org/desaiuditd\">Udit Desai</a>, <a href=\"https://profiles.wordpress.org/umeshsingla\">Umesh Kumar</a>, <a href=\"https://profiles.wordpress.org/vinod-dalvi\">Vinod Dalvi</a>, <a href=\"https://profiles.wordpress.org/vlajos\">vlajos</a>, <a href=\"https://profiles.wordpress.org/voldemortensen\">voldemortensen</a>, <a href=\"https://profiles.wordpress.org/westonruter\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/yoavf\">Yoav Farhi</a>, <a href=\"https://profiles.wordpress.org/nobinobi\">Yuta Sekine</a>, <a href=\"https://profiles.wordpress.org/zrothauser\">Zack Rothauser</a>, and <a href=\"https://profiles.wordpress.org/tollmanz\">Zack Tollman</a>.\n<p>There were 283 contributors to this release, again a new high.</p>\n<p>If you want to help out or follow along, check out <a href=\"https://make.wordpress.org/\">Make WordPress</a> and our <a href=\"https://make.wordpress.org/core/\">core development blog</a>.</p>\n<p>Thanks for choosing WordPress. Happy holidays and see you next year for version 4.2!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://wordpress.org/news/2014/12/dinah/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"WordPress 4.1 Release Candidate 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2014/12/wordpress-4-1-release-candidate-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wordpress.org/news/2014/12/wordpress-4-1-release-candidate-3/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 18 Dec 2014 02:22:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3411\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:429:\"The nextÂ release candidate for WordPress 4.1 is now available for testing. SeventyÂ changes have gone in since the first release candidate. With no known issues left, weÂ plan to release 4.1 tomorrow,Â December 18. To test, try theÂ WordPress Beta TesterÂ plugin (you&#8217;ll want &#8220;bleeding edge nightlies&#8221;). Or you canÂ download the release candidate hereÂ (zip).Â If you&#8217;d like to learn more about [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"John Blackbourn\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1465:\"<p>The nextÂ release candidate for WordPress 4.1 is now available for testing.</p>\n<p><a href=\"https://core.trac.wordpress.org/log/trunk?rev=30961&amp;stop_rev=30827\">SeventyÂ changes</a> have gone in since the <a href=\"https://wordpress.org/news/2014/12/wordpress-4-1-release-candidate/\">first release candidate</a>. With no known issues left, weÂ plan to release 4.1 tomorrow,Â December 18.</p>\n<p>To test, try theÂ <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>Â plugin (you&#8217;ll want &#8220;bleeding edge nightlies&#8221;). Or you canÂ <a href=\"https://wordpress.org/wordpress-4.1-RC3.zip\">download the release candidate here</a>Â (zip).Â If you&#8217;d like to learn more about what&#8217;s new in WordPress 4.1, visit the updated About screen in your dashboard (<strong><img src=\"https://i0.wp.com/core.svn.wordpress.org/branches/3.6/wp-content/themes/twentyten/images/wordpress.png\" alt=\"\" width=\"16\" height=\"16\" />Â â†’ About</strong>Â in the toolbar) and also check outÂ <a href=\"https://wordpress.org/news/2014/11/wordpress-4-1-beta-1/\">the Beta 1 post</a>.</p>\n<p><strong>Plugin authors:</strong>Â Remember to test your plugins against 4.1, and if they&#8217;re compatible, make sure they are marked as tested up to 4.1. Be sure to follow along the core development blog; we&#8217;ve been postingÂ <a href=\"https://make.wordpress.org/core/tag/4-1-dev-notes/\">notes forÂ developers for 4.1</a> as always.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wordpress.org/news/2014/12/wordpress-4-1-release-candidate-3/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"WordPress 4.1 Release Candidate\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2014/12/wordpress-4-1-release-candidate/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wordpress.org/news/2014/12/wordpress-4-1-release-candidate/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Dec 2014 11:52:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"4.1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3375\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:341:\"The release candidate for WordPress 4.1 is now available. We&#8217;ve made a lotÂ of refinements over the last few weeks. RC means we think weâ€™re done, but with millions of users and thousands of plugins and themes, itâ€™s possible weâ€™ve missed something. We hope to ship WordPress 4.1 on Tuesday, December 16, but we need your [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"John Blackbourn\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2301:\"<p>The release candidate for WordPress 4.1 is now available.</p>\n<p>We&#8217;ve made a lotÂ of refinements over the last few weeks. RC means we think weâ€™re done, but with millions of users and thousands of plugins and themes, itâ€™s possible weâ€™ve missed something. We hope to ship WordPress 4.1 on Tuesday, December 16, but we need your help to get there. If you havenâ€™t tested 4.1 yet, now is the time! (Please though, not on your live site unless youâ€™re adventurous.)</p>\n<p><strong>Think you&#8217;ve found a bug?</strong> Please post to theÂ <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta support forum</a>. If any known issues come up, you&#8217;ll be able toÂ <a href=\"https://core.trac.wordpress.org/report/5\">find them here</a>.</p>\n<p>To test WordPress 4.1 RC1, you can use theÂ <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>Â plugin or you canÂ <a href=\"https://wordpress.org/wordpress-4.1-RC1.zip\">download the release candidate here</a>Â (zip).Â If you&#8217;d like to learn more about what&#8217;s new in WordPress 4.1, visit the About screen in your dashboard (<strong><img src=\"https://i0.wp.com/core.svn.wordpress.org/branches/3.6/wp-content/themes/twentyten/images/wordpress.png\" alt=\"\" width=\"16\" height=\"16\" />Â â†’ About</strong>Â in the toolbar) or check out the <a href=\"https://wordpress.org/news/2014/11/wordpress-4-1-beta-1/\">beta announcement</a>.</p>\n<p><strong>Developers</strong>,Â please test your plugins and themes against WordPress 4.1 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.1 before next week. If you find compatibility problems, we never want to break things, so please be sure to post to the support forums so we can figure those out before the final release.</p>\n<p>Be sure to <a href=\"https://make.wordpress.org/core/\">follow along the core development blog</a>, where we&#8217;ll continue to post <a href=\"https://make.wordpress.org/core/tag/4-1-dev-notes/\">notes for developers</a> for 4.1. (For example: if you&#8217;ve written a child theme for Twenty Fifteen, some of the new pagination functions have been renamed for clarity.)</p>\n<p><em>Testing four point one</em><br />\n<em>Why are we up at this hour?</em><br />\n<em>Code is poetry</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2014/12/wordpress-4-1-release-candidate/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"WordPress 4.0.1 Security Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/news/2014/11/wordpress-4-0-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wordpress.org/news/2014/11/wordpress-4-0-1/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Nov 2014 18:55:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3363\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:345:\"WordPress 4.0.1 is now available. This is a critical security release for all previous versions and we strongly encourage you to update your sites immediately. Sites that support automatic background updates will be updated to WordPress 4.0.1 within the next few hours. If you are still on WordPress 3.9.2, 3.8.4, or 3.7.4, you will be [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Andrew Nacin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3395:\"<p>WordPress 4.0.1 is now available. This is a <strong>critical security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>Sites that support automatic background updates will be updated to WordPress 4.0.1 within the next few hours. If you are still on WordPress 3.9.2, 3.8.4, or 3.7.4, you will be updated to 3.9.3, 3.8.5, or 3.7.5 to keep everything secure. (We donâ€™t support older versions, so please update to 4.0.1 for the latest and greatest.)</p>\n<p>WordPress versions 3.9.2 and earlier are affected by a critical cross-site scripting vulnerability, which could enable anonymous users to compromise a site. This was reported by <a href=\"http://klikki.fi/\">Jouko Pynnonen</a>. This issue does not affect version 4.0, but version 4.0.1 does address these eight security issues:</p>\n<ul>\n<li>Three cross-site scripting issuesÂ that a contributor or author couldÂ use to compromise a site. Discovered by <a href=\"http://joncave.co.uk/\">Jon Cave</a>, <a href=\"http://www.miqrogroove.com/\">Robert Chapin</a>, and <a href=\"https://johnblackbourn.com/\">John Blackbourn</a> of the WordPress security team.</li>\n<li>A cross-site request forgery that could be used to trick a user intoÂ changing their password.</li>\n<li>An issue that could lead to a denial of service when passwords are checked. Reported by <a href=\"http://www.behindthefirewalls.com/\">Javier Nieto Arevalo</a> and <a href=\"http://www.devconsole.info/\">Andres Rojas Guerrero</a>.</li>\n<li>Additional protections for server-side request forgery attacks when WordPress makes HTTP requests. Reported by Ben Bidner (vortfu).</li>\n<li>An extremely unlikely hash collision could allow a user&#8217;s account to be compromised, that also required that they haven&#8217;t logged in since 2008 (I wish I were kidding). Reported by <a href=\"http://david.dw-perspective.org.uk\">David Anderson</a>.</li>\n<li>WordPress now invalidates the links in a password reset email if the user remembers their password, logs in, and changes their email address. Reported separately by <a href=\"https://twitter.com/MomenBassel\">Momen Bassel</a>, <a href=\"http://c0dehouse.blogspot.in/\">Tanoy Bose</a>, andÂ <a href=\"https://managewp.com/\">Bojan SlavkoviÄ‡ of ManageWP</a>.</li>\n</ul>\n<p>Version 4.0.1 also fixes 23 bugs with 4.0, and we&#8217;veÂ made two hardening changes, including better validation of EXIF data we are extracting from uploaded photos. Reported by <a href=\"http://www.securesolutions.no/\">Chris AndrÃ¨ Dale</a>.</p>\n<p>We appreciated theÂ <a href=\"https://codex.wordpress.org/FAQ_Security\">responsible disclosure</a> of these issues directly to our security team.Â For more information, see the <a href=\"https://codex.wordpress.org/Version_4.0.1\">release notes</a> or consult the <a href=\"https://core.trac.wordpress.org/log/branches/4.0?rev=30475&amp;stop_rev=29710\">list of changes</a>.</p>\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.0.1</a> or venture over to <strong>Dashboard â†’ Updates</strong> and simply click â€œUpdate Nowâ€.</p>\n<p><em>Already testing WordPress 4.1? The second beta is now available (<a href=\"https://wordpress.org/wordpress-4.1-beta2.zip\">zip</a>) and it contains these security fixes. For more on 4.1, see <a href=\"https://wordpress.org/news/2014/11/wordpress-4-1-beta-1/\">the beta 1 announcement post</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2014/11/wordpress-4-0-1/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:48:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.1 Beta 1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2014/11/wordpress-4-1-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://wordpress.org/news/2014/11/wordpress-4-1-beta-1/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Nov 2014 22:35:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:4:\"beta\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3352\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:346:\"Welcome, everyone, to WordPress 4.1 Beta 1! This software is still in development, so we donâ€™t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.1, try the WordPress Beta Tester plugin (you&#8217;ll want &#8220;bleeding edge nightlies&#8221;). Or you can [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"John Blackbourn\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3409:\"<p>Welcome, everyone, to WordPress 4.1 Beta 1!</p>\n<p><strong>This software is still in development,</strong> so we donâ€™t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.1, try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you&#8217;ll want &#8220;bleeding edge nightlies&#8221;). Or you can <a href=\"//wordpress.org/wordpress-4.1-beta1.zip\">download the beta here</a> (zip).</p>\n<p>WordPress 4.1 is due for release next month, so we need your help with testing. Here are someÂ highlights of what to test:</p>\n<ul>\n<li>Our beautiful new default theme, <a href=\"https://make.wordpress.org/core/2014/09/09/twenty-fifteen/\">Twenty Fifteen</a>. It&#8217;s a clean, mobile-first, blog-focused theme designed through simplicity.</li>\n<li>A new <a href=\"https://make.wordpress.org/core/2014/11/11/focus-v2-demo-video/\">distraction-free writing mode for the editor</a>. It&#8217;s enabled by default for beta, and we&#8217;d love feedback on it.</li>\n<li>The ability to automatically install new language packs right from the General Settings screen (available as long as your site&#8217;s filesystem is writable).</li>\n<li>A new inline formatting toolbar for images embedded into posts.</li>\n</ul>\n<p>There have been a lot of changes for developers to test as well:</p>\n<ul>\n<li><a href=\"https://make.wordpress.org/core/2014/10/20/update-on-query-improvements-in-4-1/\">Improvements to meta, date, comment, and taxonomy queries</a>, including complex (nested, multiple relation) queries; and querying comment types (<a href=\"https://core.trac.wordpress.org/ticket/12668\">#12668</a>).</li>\n<li>A single termÂ shared across multipleÂ taxonomies isÂ now split into two when updated. For more,Â <a href=\"https://make.wordpress.org/core/2014/11/12/an-update-on-the-taxonomy-roadmap/\">see this post</a>,Â <a href=\"https://core.trac.wordpress.org/ticket/5809\">#5809</a>, and <a href=\"https://core.trac.wordpress.org/ticket/30335\">#30335</a>.</li>\n<li>A new and better way for <a href=\"https://make.wordpress.org/core/2014/10/29/title-tags-in-4-1/\">themes to handle title tags</a>.</li>\n<li>Several <a href=\"https://make.wordpress.org/core/2014/10/27/toward-a-complete-javascript-api-for-the-customizer/\">improvements to the Customizer API</a>, including contextual panels and sections, and JavaScript templates for controls.</li>\n</ul>\n<p>If you want a more in-depth view of what changes have made it into 4.1, <a href=\"https://make.wordpress.org/core/tag/week-in-core/\">check out the weekly review posts</a>Â on the main development blog.</p>\n<p><strong>If you think youâ€™ve found a bug</strong>, you can post to the <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. Weâ€™d love to hear from you! If youâ€™re comfortable writing a reproducible bug report, <a href=\"https://make.wordpress.org/core/reports/\">file one on the WordPress Trac</a>. There, you can also find <a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a> and <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.1\">everything weâ€™ve fixed</a> so far.</p>\n<p>Happy testing!</p>\n<p><em>Twenty Fifteen theme</em><br />\n<em> The beautiful face which hides</em><br />\n<em> Many improvements</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.org/news/2014/11/wordpress-4-1-beta-1/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Watch WordCamp San Francisco Livestream\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/news/2014/10/wcsf-livestream/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wordpress.org/news/2014/10/wcsf-livestream/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 24 Oct 2014 20:18:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"WordCamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3341\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:381:\"WordCamp SanÂ Francisco is the official annualÂ WordPress conference,Â gathering the community every yearÂ since 2006. This is the timeÂ when Matt Mullenweg addresses the community in his annualÂ State of the Word presentation â€“ a recap of Â the year in WordPress and giving us a glimpse into its future. This year the speaker lineup is stellar. ThereÂ will be talks by [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Nikolay Bachiyski\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1975:\"<p><a title=\"2014 edition\" href=\"http://2014.sf.wordcamp.org\">WordCamp SanÂ Francisco</a> is the official annualÂ WordPress conference,Â gathering the community every yearÂ <a title=\"An old website for a WordPress long time ago\" href=\"http://2006.sf.wordcamp.org\">since 2006</a>. This is the timeÂ when Matt Mullenweg addresses the community in his annualÂ <a href=\"http://wordpress.tv/?s=state+of+the+word\">State of the Word</a> presentation â€“ a recap of Â the year in WordPress and giving us a glimpse into its future.</p>\n<p>This year the speaker lineup is stellar. ThereÂ will be talks by three of the lead WordPress developers: <a href=\"http://2014.sf.wordcamp.org/speakers/#wcorg-speaker-andrew-nacin\">Andrew Nacin</a>, <a href=\"http://2014.sf.wordcamp.org/speakers/#wcorg-speaker-helen-hou-sandi\">Helen Hou-SandÃ­</a>, and <a href=\"http://2014.sf.wordcamp.org/speakers/#wcorg-speaker-mark-jaquith\">Mark Jaquith</a>. Weâ€™re also looking forward to speakers likeÂ <a href=\"http://2014.sf.wordcamp.org/speakers/#wcorg-speaker-jenny-lawson\">Jenny Lawson</a>, also known as The Bloggess, and <a href=\"http://2014.sf.wordcamp.org/speaker/chris-lema/\">Chris Lema</a>. If youâ€™re at all interested in the web, you will appreciate the appearance of <a href=\"http://2014.sf.wordcamp.org/speakers/#wcorg-speaker-jeff-veen\">Jeff Veen</a> â€“ one of theÂ creators of Google Analytics and co-founder of Typekit.</p>\n<p>Even though San Francisco is far far away for most of you, you can still be part of the fun and watch all presentations in real-time viaÂ livestream:</p>\n<p><a href=\"http://2014.sf.wordcamp.org/tickets/\">Get a livestream ticket and watch all talks from WordCamp San Francisco live</a></p>\n<p>If you hurry, you can get one of the special livestream tickets, including a WordCamp San Francisco 2104 t-shirt. You can find all the technical details and start times <a href=\"http://2014.sf.wordcamp.org/live-stream/\">at the WordCamp San Francisco website</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2014/10/wcsf-livestream/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 4.0 â€œBennyâ€\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://wordpress.org/news/2014/09/benny/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wordpress.org/news/2014/09/benny/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 Sep 2014 17:05:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3296\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:370:\"Version 4.0 of WordPress, named â€œBennyâ€ in honor of jazz clarinetist and bandleader Benny Goodman, is availableÂ for downloadÂ or update in your WordPress dashboard.Â While 4.0 is just another number for us after 3.9 and before 4.1, we feel we&#8217;ve put a little extra polish into it. This release brings you a smoother writing and management experience [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:23571:\"<p>Version 4.0 of WordPress, named â€œBennyâ€ in honor of jazz clarinetist and bandleader <a href=\"http://en.wikipedia.org/wiki/Benny_Goodman\">Benny Goodman</a>, is availableÂ <a href=\"https://wordpress.org/download/\">for download</a>Â or update in your WordPress dashboard.Â While 4.0 is just another number for us after 3.9 and before 4.1, we feel we&#8217;ve put a little extra polish into it. This release brings you a smoother writing and management experience we think you&#8217;ll enjoy.</p>\n<div id=\"v-bUdzKMro-1\" class=\"video-player\"><embed id=\"v-bUdzKMro-1-video\" src=\"https://v0.wordpress.com/player.swf?v=1.04&amp;guid=bUdzKMro&amp;isDynamicSeeking=true\" type=\"application/x-shockwave-flash\" width=\"692\" height=\"388\" title=\"Introducing WordPress 4.0 &quot;Benny&quot;\" wmode=\"direct\" seamlesstabbing=\"true\" allowfullscreen=\"true\" allowscriptaccess=\"always\" overstretch=\"true\"></embed></div>\n<hr />\n<h2 style=\"text-align: center\">Manage your media with style</h2>\n<p><img class=\"alignnone size-full wp-image-3316\" src=\"https://wordpress.org/news/files/2014/09/media.jpg\" alt=\"Media Library\" width=\"1000\" height=\"586\" />Explore your uploads in a beautiful, endless grid. A new details preview makes viewing and editing any amount of media in sequence a snap.</p>\n<hr />\n<h2 style=\"text-align: center\">Working with embeds has never been easier</h2>\n<div style=\"width: 632px; \" class=\"wp-video\"><!--[if lt IE 9]><script>document.createElement(\'video\');</script><![endif]-->\n<video class=\"wp-video-shortcode\" id=\"video-3296-1\" width=\"632\" height=\"445\" autoplay=\"1\" preload=\"metadata\" controls=\"controls\"><source type=\"video/mp4\" src=\"//s.w.org/images/core/4.0/embed.mp4?_=1\" /><source type=\"video/webm\" src=\"//s.w.org/images/core/4.0/embed.webm?_=1\" /><source type=\"video/ogg\" src=\"//s.w.org/images/core/4.0/embed.ogv?_=1\" /><a href=\"//s.w.org/images/core/4.0/embed.mp4\">//s.w.org/images/core/4.0/embed.mp4</a></video></div>\n<p>Paste in a YouTube URL on a new line, and watch it magically become an embedded video. Now try it with a tweet. Oh yeah â€” embedding has become a visual experience. The editor shows a true preview of your embedded content, saving you time and giving you confidence.</p>\n<p>Weâ€™ve expanded the services supported by default, too â€” you can embed videos from CollegeHumor, playlists from YouTube, and talks from TED.Â <a href=\"https://codex.wordpress.org/Embeds\">Check out all of the embeds</a> that WordPress supports.</p>\n<hr />\n<h2 style=\"text-align: center\">Focus on your content</h2>\n<div style=\"width: 632px; \" class=\"wp-video\"><video class=\"wp-video-shortcode\" id=\"video-3296-2\" width=\"632\" height=\"356\" autoplay=\"1\" preload=\"metadata\" controls=\"controls\"><source type=\"video/mp4\" src=\"//s.w.org/images/core/4.0/focus.mp4?_=2\" /><source type=\"video/webm\" src=\"//s.w.org/images/core/4.0/focus.webm?_=2\" /><source type=\"video/ogg\" src=\"//s.w.org/images/core/4.0/focus.ogv?_=2\" /><a href=\"//s.w.org/images/core/4.0/focus.mp4\">//s.w.org/images/core/4.0/focus.mp4</a></video></div>\n<p>Writing and editing is smoother and more immersive with an editor that expands to fit your content as you write, and keeps the formatting tools available at all times.</p>\n<hr />\n<h2 style=\"text-align: center\">Finding the right plugin</h2>\n<p><img class=\"aligncenter size-large wp-image-3309\" src=\"https://wordpress.org/news/files/2014/09/add-plugin1-1024x600.png\" alt=\"Add plugins\" width=\"692\" height=\"405\" /></p>\n<p>There are more than 30,000 free and open source plugins in the WordPress plugin directory. WordPress 4.0 makes it easier to find the right one for your needs, with new metrics, improved search, and a more visual browsing experience.</p>\n<hr />\n<h2 style=\"text-align: center\">The Ensemble</h2>\n<p>This release was led by <a href=\"http://helenhousandi.com\">Helen Hou-SandÃ­</a>, with the help of these fine individuals. There are 275 contributors with props in this release, a new high. Pull up some Benny Goodman on your music service of choice, as a bandleader or in one of his turns as a classical clarinetist, and check out some of their profiles:</p>\n<p><a href=\"https://profiles.wordpress.org/aaroncampbell\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/viper007bond\">Alex Mills (Viper007Bond)</a>, <a href=\"https://profiles.wordpress.org/tellyworth\">Alex Shiels</a>, <a href=\"https://profiles.wordpress.org/alexanderrohmann\">Alexander Rohmann</a>, <a href=\"https://profiles.wordpress.org/aliso\">Alison Barrett</a>, <a href=\"https://profiles.wordpress.org/collinsinternet\">Allan Collins</a>, <a href=\"https://profiles.wordpress.org/amit\">Amit Gupta</a>, <a href=\"https://profiles.wordpress.org/sabreuse\">Amy Hendrix (sabreuse)</a>, <a href=\"https://profiles.wordpress.org/afercia\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andrezrv\">Andres Villarreal</a>, <a href=\"https://profiles.wordpress.org/zamfeer\">Andrew Mowe</a>, <a href=\"https://profiles.wordpress.org/sumobi\">Andrew Munro (sumobi)</a>, <a href=\"https://profiles.wordpress.org/nacin\">Andrew Nacin</a>, <a href=\"https://profiles.wordpress.org/azaozz\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/andy\">Andy Skelton</a>, <a href=\"https://profiles.wordpress.org/ankit-k-gupta\">Ankit K Gupta</a>, <a href=\"https://profiles.wordpress.org/atimmer\">Anton Timmermans</a>, <a href=\"https://profiles.wordpress.org/arnee\">Arne Brachhold</a>, <a href=\"https://profiles.wordpress.org/aubreypwd\">aubreypwd</a>, <a href=\"https://profiles.wordpress.org/filosofo\">Austin Matzko</a>, <a href=\"https://profiles.wordpress.org/empireoflight\">Ben Dunkle</a>, <a href=\"https://profiles.wordpress.org/kau-boy\">Bernhard Kau</a>, <a href=\"https://profiles.wordpress.org/boonebgorges\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bradyvercher\">Brady Vercher</a>, <a href=\"https://profiles.wordpress.org/bramd\">Bram Duvigneau</a>, <a href=\"https://profiles.wordpress.org/kraftbj\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/krogsgard\">Brian Krogsgard</a>, <a href=\"https://profiles.wordpress.org/brianlayman\">Brian Layman</a>, <a href=\"https://profiles.wordpress.org/rzen\">Brian Richards</a>, <a href=\"https://profiles.wordpress.org/camdensegal\">Camden Segal</a>, <a href=\"https://profiles.wordpress.org/sixhours\">Caroline Moore</a>, <a href=\"https://profiles.wordpress.org/mackensen\">Charles Fulton</a>, <a href=\"https://profiles.wordpress.org/chouby\">Chouby</a>, <a href=\"https://profiles.wordpress.org/chrico\">ChriCo</a>, <a href=\"https://profiles.wordpress.org/c3mdigital\">Chris Olbekson</a>, <a href=\"https://profiles.wordpress.org/chrisl27\">chrisl27</a>, <a href=\"https://profiles.wordpress.org/caxelsson\">Christian Axelsson</a>, <a href=\"https://profiles.wordpress.org/cfinke\">Christopher Finke</a>, <a href=\"https://profiles.wordpress.org/boda1982\">Christopher Spires</a>, <a href=\"https://profiles.wordpress.org/clifgriffin\">Clifton Griffin</a>, <a href=\"https://profiles.wordpress.org/jupiterwise\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/corphi\">Corphi</a>, <a href=\"https://profiles.wordpress.org/extendwings\">Daisuke Takahashi</a>, <a href=\"https://profiles.wordpress.org/ghost1227\">Dan Griffiths</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/danielhuesken\">Daniel Husken</a>, <a href=\"https://profiles.wordpress.org/redsweater\">Daniel Jalkut (Red Sweater)</a>, <a href=\"https://profiles.wordpress.org/dannydehaan\">Danny de Haan</a>, <a href=\"https://profiles.wordpress.org/dkotter\">Darin Kotter</a>, <a href=\"https://profiles.wordpress.org/koop\">Daryl Koopersmith</a>, <a href=\"https://profiles.wordpress.org/dllh\">Daryl L. L. Houston (dllh)</a>, <a href=\"https://profiles.wordpress.org/davidakennedy\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/dlh\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dnaber-de\">David Naber</a>, <a href=\"https://profiles.wordpress.org/davidthemachine\">DavidTheMachine</a>, <a href=\"https://profiles.wordpress.org/debaat\">DeBAAT</a>, <a href=\"https://profiles.wordpress.org/dd32\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/donncha\">Donncha O Caoimh</a>, <a href=\"https://profiles.wordpress.org/drewapicture\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/dustyn\">Dustyn Doyle</a>, <a href=\"https://profiles.wordpress.org/eddiemoya\">Eddie Moya</a>, <a href=\"https://profiles.wordpress.org/oso96_2000\">Eduardo Reveles</a>, <a href=\"https://profiles.wordpress.org/edwin-at-studiojoyocom\">Edwin Siebel</a>, <a href=\"https://profiles.wordpress.org/ehg\">ehg</a>, <a href=\"https://profiles.wordpress.org/erayalakese\">erayalakese</a>, <a href=\"https://profiles.wordpress.org/ericlewis\">Eric Andrew Lewis</a>, <a href=\"https://profiles.wordpress.org/ebinnion\">Eric Binnion</a>, <a href=\"https://profiles.wordpress.org/ericmann\">Eric Mann</a>, <a href=\"https://profiles.wordpress.org/ejdanderson\">Evan Anderson</a>, <a href=\"https://profiles.wordpress.org/eherman24\">Evan Herman</a>, <a href=\"https://profiles.wordpress.org/fab1en\">Fabien Quatravaux</a>, <a href=\"https://profiles.wordpress.org/fahmiadib\">Fahmi Adib</a>, <a href=\"https://profiles.wordpress.org/feedmeastraycat\">feedmeastraycat</a>, <a href=\"https://profiles.wordpress.org/frank-klein\">Frank Klein</a>, <a href=\"https://profiles.wordpress.org/garhdez\">garhdez</a>, <a href=\"https://profiles.wordpress.org/garyc40\">Gary Cao</a>, <a href=\"https://profiles.wordpress.org/garyj\">Gary Jones</a>, <a href=\"https://profiles.wordpress.org/pento\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/garza\">garza</a>, <a href=\"https://profiles.wordpress.org/gauravmittal1995\">gauravmittal1995</a>, <a href=\"https://profiles.wordpress.org/gavra\">Gavrisimo</a>, <a href=\"https://profiles.wordpress.org/georgestephanis\">George Stephanis</a>, <a href=\"https://profiles.wordpress.org/grahamarmfield\">Graham Armfield</a>, <a href=\"https://profiles.wordpress.org/vancoder\">Grant Mangham</a>, <a href=\"https://profiles.wordpress.org/gcorne\">Gregory Cornelius</a>, <a href=\"https://profiles.wordpress.org/bordoni\">Gustavo Bordoni</a>, <a href=\"https://profiles.wordpress.org/harrym\">harrym</a>, <a href=\"https://profiles.wordpress.org/hebbet\">hebbet</a>, <a href=\"https://profiles.wordpress.org/hinnerk\">Hinnerk Altenburg</a>, <a href=\"https://profiles.wordpress.org/hlashbrooke\">Hugh Lashbrooke</a>, <a href=\"https://profiles.wordpress.org/iljoja\">iljoja</a>, <a href=\"https://profiles.wordpress.org/imath\">imath</a>, <a href=\"https://profiles.wordpress.org/ipstenu\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/issuu\">issuu</a>, <a href=\"https://profiles.wordpress.org/jdgrimes\">J.D. Grimes</a>, <a href=\"https://profiles.wordpress.org/jacklenox\">Jack Lenox</a>, <a href=\"https://profiles.wordpress.org/jackreichert\">Jack Reichert</a>, <a href=\"https://profiles.wordpress.org/jacobdubail\">Jacob Dubail</a>, <a href=\"https://profiles.wordpress.org/janhenkg\">JanHenkG</a>, <a href=\"https://profiles.wordpress.org/avryl\">Janneke Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/jwenerd\">Jared Wenerd</a>, <a href=\"https://profiles.wordpress.org/jaza613\">Jaza613</a>, <a href=\"https://profiles.wordpress.org/jeffstieler\">Jeff Stieler</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jpry\">Jeremy Pry</a>, <a href=\"https://profiles.wordpress.org/slimndap\">Jeroen Schmit</a>, <a href=\"https://profiles.wordpress.org/jerrysarcastic\">Jerry Bates (jerrysarcastic)</a>, <a href=\"https://profiles.wordpress.org/jesin\">Jesin A</a>, <a href=\"https://profiles.wordpress.org/jayjdk\">Jesper Johansen (jayjdk)</a>, <a href=\"https://profiles.wordpress.org/jesper800\">Jesper van Engelen</a>, <a href=\"https://profiles.wordpress.org/engelen\">Jesper van Engelen</a>, <a href=\"https://profiles.wordpress.org/jessepollak\">Jesse Pollak</a>, <a href=\"https://profiles.wordpress.org/jgadbois\">jgadbois</a>, <a href=\"https://profiles.wordpress.org/jartes\">Joan Artes</a>, <a href=\"https://profiles.wordpress.org/joedolson\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joehoyle\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/jkudish\">Joey Kudish</a>, <a href=\"https://profiles.wordpress.org/johnbillion\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/johnzanussi\">John Zanussi</a>, <a href=\"https://profiles.wordpress.org/duck_\">Jon Cave</a>, <a href=\"https://profiles.wordpress.org/jonnyauk\">jonnyauk</a>, <a href=\"https://profiles.wordpress.org/joostdevalk\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/softmodeling\">Jordi Cabot</a>, <a href=\"https://profiles.wordpress.org/jjeaton\">Josh Eaton</a>, <a href=\"https://profiles.wordpress.org/tai\">JOTAKI Taisuke</a>, <a href=\"https://profiles.wordpress.org/juliobox\">Julio Potier</a>, <a href=\"https://profiles.wordpress.org/justinsainton\">Justin Sainton</a>, <a href=\"https://profiles.wordpress.org/jtsternberg\">Justin Sternberg</a>, <a href=\"https://profiles.wordpress.org/greenshady\">Justin Tadlock</a>, <a href=\"https://profiles.wordpress.org/kadamwhite\">K.Adam White</a>, <a href=\"https://profiles.wordpress.org/trepmal\">Kailey (trepmal)</a>, <a href=\"https://profiles.wordpress.org/kapeels\">kapeels</a>, <a href=\"https://profiles.wordpress.org/ryelle\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/kevinlangleyjr\">Kevin Langley</a>, <a href=\"https://profiles.wordpress.org/kworthington\">Kevin Worthington</a>, <a href=\"https://profiles.wordpress.org/kpdesign\">Kim Parsell</a>, <a href=\"https://profiles.wordpress.org/kwight\">Kirk Wight</a>, <a href=\"https://profiles.wordpress.org/kitchin\">kitchin</a>, <a href=\"https://profiles.wordpress.org/ixkaito\">Kite</a>, <a href=\"https://profiles.wordpress.org/knutsp\">Knut Sparhell</a>, <a href=\"https://profiles.wordpress.org/kovshenin\">Konstantin Kovshenin</a>, <a href=\"https://profiles.wordpress.org/obenland\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/kurtpayne\">Kurt Payne</a>, <a href=\"https://profiles.wordpress.org/lancewillett\">Lance Willett</a>, <a href=\"https://profiles.wordpress.org/leewillis77\">Lee Willis</a>, <a href=\"https://profiles.wordpress.org/lessbloat\">lessbloat</a>, <a href=\"https://profiles.wordpress.org/layotte\">Lew Ayotte</a>, <a href=\"https://profiles.wordpress.org/lritter\">lritter</a>, <a href=\"https://profiles.wordpress.org/lukecarbis\">Luke Carbis</a>, <a href=\"https://profiles.wordpress.org/lgedeon\">Luke Gedeon</a>, <a href=\"https://profiles.wordpress.org/m_i_n\">m_i_n</a>, <a href=\"https://profiles.wordpress.org/funkatronic\">Manny Fleurmond</a>, <a href=\"https://profiles.wordpress.org/targz-1\">Manuel Schmalstieg</a>, <a href=\"https://profiles.wordpress.org/clorith\">Marius (Clorith)</a>, <a href=\"https://profiles.wordpress.org/markjaquith\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/markoheijnen\">Marko Heijnen</a>, <a href=\"https://profiles.wordpress.org/mjbanks\">Matt Banks</a>, <a href=\"https://profiles.wordpress.org/sivel\">Matt Martz</a>, <a href=\"https://profiles.wordpress.org/matt\">Matt Mullenweg</a>, <a href=\"https://profiles.wordpress.org/mattwiebe\">Matt Wiebe</a>, <a href=\"https://profiles.wordpress.org/mboynes\">Matthew Boynes</a>, <a href=\"https://profiles.wordpress.org/mdbitz\">Matthew Denton</a>, <a href=\"https://profiles.wordpress.org/mattheweppelsheimer\">Matthew Eppelsheimer</a>, <a href=\"https://profiles.wordpress.org/mattheu\">Matthew Haines-Young</a>, <a href=\"https://profiles.wordpress.org/mattyrob\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/meekyhwang\">meekyhwang</a>, <a href=\"https://profiles.wordpress.org/melchoyce\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mdawaffe\">Michael Adams (mdawaffe)</a>, <a href=\"https://profiles.wordpress.org/michalzuber\">michalzuber</a>, <a href=\"https://profiles.wordpress.org/midxcat\">midxcat</a>, <a href=\"https://profiles.wordpress.org/mauteri\">Mike Auteri</a>, <a href=\"https://profiles.wordpress.org/mikehansenme\">Mike Hansen</a>, <a href=\"https://profiles.wordpress.org/mikejolley\">Mike Jolley</a>, <a href=\"https://profiles.wordpress.org/mikelittle\">Mike Little</a>, <a href=\"https://profiles.wordpress.org/mikemanger\">Mike Manger</a>, <a href=\"https://profiles.wordpress.org/mnelson4\">Mike Nelson</a>, <a href=\"https://profiles.wordpress.org/dh-shredder\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mikeyarce\">Mikey Arce</a>, <a href=\"https://profiles.wordpress.org/dimadin\">Milan Dinic</a>, <a href=\"https://profiles.wordpress.org/morganestes\">Morgan Estes</a>, <a href=\"https://profiles.wordpress.org/usermrpapa\">Mr Papa</a>, <a href=\"https://profiles.wordpress.org/mrmist\">mrmist</a>, <a href=\"https://profiles.wordpress.org/m_uysl\">Mustafa Uysal</a>, <a href=\"https://profiles.wordpress.org/muvimotv\">MuViMoTV</a>, <a href=\"https://profiles.wordpress.org/nabil_kadimi\">nabil_kadimi</a>, <a href=\"https://profiles.wordpress.org/namibia\">Namibia</a>, <a href=\"https://profiles.wordpress.org/alex-ye\">Nashwan Doaqan</a>, <a href=\"https://profiles.wordpress.org/nd987\">nd987</a>, <a href=\"https://profiles.wordpress.org/neil_pie\">Neil Pie</a>, <a href=\"https://profiles.wordpress.org/niallkennedy\">Niall Kennedy</a>, <a href=\"https://profiles.wordpress.org/celloexpressions\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/nbachiyski\">Nikolay Bachiyski</a>, <a href=\"https://profiles.wordpress.org/schoenwaldnils\">Nils Schonwald</a>, <a href=\"https://profiles.wordpress.org/ninos-ego\">Ninos</a>, <a href=\"https://profiles.wordpress.org/nvwd\">Nowell VanHoesen</a>, <a href=\"https://profiles.wordpress.org/compute\">Patrick Hesselberg</a>, <a href=\"https://profiles.wordpress.org/pbearne\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/pdclark\">Paul Clark</a>, <a href=\"https://profiles.wordpress.org/paulschreiber\">Paul Schreiber</a>, <a href=\"https://profiles.wordpress.org/paulwilde\">Paul Wilde</a>, <a href=\"https://profiles.wordpress.org/pavelevap\">pavelevap</a>, <a href=\"https://profiles.wordpress.org/westi\">Peter Westwood</a>, <a href=\"https://profiles.wordpress.org/philiparthurmoore\">Philip Arthur Moore</a>, <a href=\"https://profiles.wordpress.org/philipjohn\">Philip John</a>, <a href=\"https://profiles.wordpress.org/senlin\">Piet Bos</a>, <a href=\"https://profiles.wordpress.org/psoluch\">Piotr Soluch</a>, <a href=\"https://profiles.wordpress.org/mordauk\">Pippin Williamson</a>, <a href=\"https://profiles.wordpress.org/purzlbaum\">purzlbaum</a>, <a href=\"https://profiles.wordpress.org/rachelbaker\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rclations\">RC Lations</a>, <a href=\"https://profiles.wordpress.org/iamfriendly\">Richard Tape</a>, <a href=\"https://profiles.wordpress.org/rickalee\">Ricky Lee Whittemore</a>, <a href=\"https://profiles.wordpress.org/rob1n\">rob1n</a>, <a href=\"https://profiles.wordpress.org/miqrogroove\">Robert Chapin</a>, <a href=\"https://profiles.wordpress.org/rdall\">Robert Dall</a>, <a href=\"https://profiles.wordpress.org/harmr\">RobertHarm</a>, <a href=\"https://profiles.wordpress.org/rohan013\">Rohan Rawat</a>, <a href=\"https://profiles.wordpress.org/rhurling\">Rouven Hurling</a>, <a href=\"https://profiles.wordpress.org/ruudjoyo\">Ruud Laan</a>, <a href=\"https://profiles.wordpress.org/ryan\">Ryan Boren</a>, <a href=\"https://profiles.wordpress.org/rmccue\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/sammybeats\">Sam Brodie</a>, <a href=\"https://profiles.wordpress.org/otto42\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/sathishn\">Sathish Nagarajan</a>, <a href=\"https://profiles.wordpress.org/coffee2code\">Scott Reilly</a>, <a href=\"https://profiles.wordpress.org/wonderboymusic\">Scott Taylor</a>, <a href=\"https://profiles.wordpress.org/greglone\">ScreenfeedFr</a>, <a href=\"https://profiles.wordpress.org/scribu\">scribu</a>, <a href=\"https://profiles.wordpress.org/seanchayes\">Sean Hayes</a>, <a href=\"https://profiles.wordpress.org/nessworthy\">Sean Nessworthy</a>, <a href=\"https://profiles.wordpress.org/sergejmueller\">Sergej Muller</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shanebp\">shanebp</a>, <a href=\"https://profiles.wordpress.org/sharonaustin\">Sharon Austin</a>, <a href=\"https://profiles.wordpress.org/shaunandrews\">Shaun Andrews</a>, <a href=\"https://profiles.wordpress.org/simonp303\">Simon Pollard</a>, <a href=\"https://profiles.wordpress.org/simonwheatley\">Simon Wheatley</a>, <a href=\"https://profiles.wordpress.org/slobodanmanic\">Slobodan Manic</a>, <a href=\"https://profiles.wordpress.org/solarissmoke\">solarissmoke</a>, <a href=\"https://profiles.wordpress.org/sphoid\">sphoid</a>, <a href=\"https://profiles.wordpress.org/stephdau\">Stephane Daury</a>, <a href=\"https://profiles.wordpress.org/netweb\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/stompweb\">Steven Jones</a>, <a href=\"https://profiles.wordpress.org/strangerstudios\">strangerstudios</a>, <a href=\"https://profiles.wordpress.org/5um17\">Sumit Singh</a>, <a href=\"https://profiles.wordpress.org/t4k1s\">t4k1s</a>, <a href=\"https://profiles.wordpress.org/iamtakashi\">Takashi Irie</a>, <a href=\"https://profiles.wordpress.org/taylorde\">Taylor Dewey</a>, <a href=\"https://profiles.wordpress.org/thomasvanderbeek\">Thomas van der Beek</a>, <a href=\"https://profiles.wordpress.org/tillkruess\">Till Kruss</a>, <a href=\"https://profiles.wordpress.org/codenameeli\">Tim &#039;Eli&#039; Dalbey</a>, <a href=\"https://profiles.wordpress.org/tmeister\">tmeister</a>, <a href=\"https://profiles.wordpress.org/tobiasbg\">TobiasBg</a>, <a href=\"https://profiles.wordpress.org/tjnowell\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/willmot\">Tom Willmot</a>, <a href=\"https://profiles.wordpress.org/topher1kenobe\">Topher</a>, <a href=\"https://profiles.wordpress.org/torresga\">torresga</a>, <a href=\"https://profiles.wordpress.org/liljimmi\">Tracy Levesque</a>, <a href=\"https://profiles.wordpress.org/wpsmith\">Travis Smith</a>, <a href=\"https://profiles.wordpress.org/treyhunner\">treyhunner</a>, <a href=\"https://profiles.wordpress.org/umeshsingla\">Umesh Kumar</a>, <a href=\"https://profiles.wordpress.org/vinod-dalvi\">Vinod Dalvi</a>, <a href=\"https://profiles.wordpress.org/vlajos\">vlajos</a>, <a href=\"https://profiles.wordpress.org/voldemortensen\">voldemortensen</a>, <a href=\"https://profiles.wordpress.org/westonruter\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/winterdev\">winterDev</a>, <a href=\"https://profiles.wordpress.org/wojtekszkutnik\">Wojtek Szkutnik</a>, <a href=\"https://profiles.wordpress.org/yoavf\">Yoav Farhi</a>, <a href=\"https://profiles.wordpress.org/katzwebdesign\">Zack Katz</a>, <a href=\"https://profiles.wordpress.org/tollmanz\">Zack Tollman</a>, and <a href=\"https://profiles.wordpress.org/zoerooney\">Zoe Rooney</a>.Â Also thanks to <a href=\"http://michaelpick.wordpress.com/\">Michael Pick</a> for producing the release video, and Helen with <a href=\"http://adriansandi.com\">AdriÃ¡n SandÃ­</a> for the music.</p>\n<p>If you want to follow along or help out, check out <a href=\"https://make.wordpress.org/\">Make WordPress</a> and our <a href=\"https://make.wordpress.org/core/\">core development blog</a>. Thanks for choosing WordPress. See you soon for version 4.1!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://wordpress.org/news/2014/09/benny/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"WordPress 4.0 Release Candidate\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2014/08/wordpress-4-0-release-candidate/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wordpress.org/news/2014/08/wordpress-4-0-release-candidate/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Aug 2014 12:20:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3287\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:321:\"The first release candidate for WordPress 4.0 is now available! In RC 1, weâ€™ve made refinements to what we&#8217;ve been working on for this release. Check out the Beta 1 announcement post for more details on those features. We hope to ship WordPress 4.0 next week, but we need your help to get there.Â If you [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Helen Hou-Sandi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2134:\"<p>The first release candidate for WordPress 4.0 is now available!</p>\n<p>In RC 1, weâ€™ve made refinements to what we&#8217;ve been working on for this release. Check out the <a href=\"https://wordpress.org/news/2014/07/wordpress-4-0-beta-1/\">Beta 1 announcement post</a> for more details on those features. We hope to ship WordPress 4.0 <em>next week</em>, but we need your help to get there.Â If you havenâ€™t tested 4.0 yet, thereâ€™s no time like the present. (Please, not on a production site, unless youâ€™re adventurous.)</p>\n<p><strong>Think youâ€™ve found a bug?Â </strong>Please post to theÂ <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta area in the support forums</a>. If any known issues come up, youâ€™ll be able toÂ <a href=\"https://core.trac.wordpress.org/report/5\">find them here</a>.</p>\n<p>To test WordPress 4.0 RC1, try theÂ <a href=\"https://wordpress.org/extend/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>Â plugin (youâ€™ll want â€œbleeding edge nightliesâ€). Or you canÂ <a href=\"https://wordpress.org/wordpress-4.0-RC1.zip\">download the release candidate here</a>Â (zip).Â If youâ€™d like to learn more about whatâ€™s new in WordPress 4.0, visit the awesome About screen in your dashboard (<strong><img src=\"https://i0.wp.com/core.svn.wordpress.org/branches/3.6/wp-content/themes/twentyten/images/wordpress.png?w=692\" alt=\"\" width=\"16\" height=\"16\" />Â â†’ About</strong>Â in the toolbar).</p>\n<p><strong>Developers,</strong>Â please test your plugins and themes against WordPress 4.0 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.0 before next week. If you find compatibility problems, please be sure to post any issues to the support forums so we can figure those out before the final release.Â You also may want to <a href=\"https://make.wordpress.org/core/2014/08/21/introducing-plugin-icons-in-the-plugin-installer/\">give your plugin an icon</a>, which we launched last week and will appear in the dashboard along with banners.</p>\n<p><em>It is almost time</em><br />\n<em> For the 4.0 release</em><br />\n<em> And its awesomeness</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2014/08/wordpress-4-0-release-candidate/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.0 Beta 4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2014/08/wordpress-4-0-beta-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://wordpress.org/news/2014/08/wordpress-4-0-beta-4/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 Aug 2014 05:06:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3280\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:353:\"The fourth and likely final beta for WordPress 4.0 is now available. We&#8217;ve made more than 250 changes in the past month, including: Further improvements to the editor scrolling experience, especially when it comes to the second column of boxes. Better handling of small screens in the media library modals. A separate bulk selection mode [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Helen Hou-Sandi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2003:\"<p>The fourth and likely final beta for WordPress 4.0 is now available. We&#8217;ve made <a href=\"https://core.trac.wordpress.org/log?rev=29496&amp;stop_rev=29229&amp;limit=300\">more than 250 changes</a> in the past month, including:</p>\n<ul>\n<li>Further improvements to the editor scrolling experience, especially when it comes to the second column of boxes.</li>\n<li>Better handling of small screens in the media library modals.</li>\n<li>A separate bulk selection mode for the media library grid view.</li>\n<li>Improvements to the installation language selector.</li>\n<li>Visual tweaks to plugin details and customizer panels.</li>\n</ul>\n<p><strong>We need your help</strong>.Â Weâ€™re still aimingÂ for a release this month, which means the next week will be critical forÂ identifying and squashing bugs. If youâ€™re just joining us, please seeÂ <a href=\"https://wordpress.org/news/2014/07/wordpress-4-0-beta-1/\">the Beta 1 announcement post</a>Â for what to look out for.</p>\n<p><strong>If you think youâ€™ve found a bug</strong>, you can post to theÂ <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>Â in the support forums, where friendly moderators are standing by.Â <b>Plugin developers</b><strong>,</strong> if you havenâ€™t tested WordPress 4.0 yet, now is the time â€” and be sure to update the â€œtested up toâ€ version for your plugins so theyâ€™re listed as compatible with 4.0.</p>\n<p><strong>This software is still in development,</strong>Â so we donâ€™t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.0, try theÂ <a href=\"https://wordpress.org/extend/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>Â plugin (youâ€™ll want â€œbleeding edge nightliesâ€). Or you canÂ <a href=\"https://wordpress.org/wordpress-4.0-beta4.zip\">download the beta here</a>Â (zip).</p>\n<p><em>We are working hard</em><br />\n<em>To finish up 4.0<br />\n</em><em>Will you help us too?</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.org/news/2014/08/wordpress-4-0-beta-4/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sat, 28 Feb 2015 23:05:25 GMT\";s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:10:\"connection\";s:5:\"close\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:10:\"x-pingback\";s:37:\"https://wordpress.org/news/xmlrpc.php\";s:13:\"last-modified\";s:29:\"Wed, 18 Feb 2015 23:40:39 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 250\";}s:5:\"build\";s:14:\"20130911040210\";}','no'),(118,'_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca','1425207925','no'),(119,'_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca','1425164725','no'),(120,'_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9','1425207927','no'),(121,'_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"Matt: Writing code is like solving a Rubikâ€™s cube\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44731\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://ma.tt/2015/02/code-cube/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:171:\"<p>Ben Dwyer on why <a href=\"https://scruffian.wordpress.com/2013/10/18/writing-code-is-like-solving-a-rubiks-cube/\">writing code is like solving a Rubikâ€™s cube</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 28 Feb 2015 04:55:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"Post Status: The most popular WordPress plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://poststatus.com/?p=8913\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://poststatus.com/popular-wordpress-plugins/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:15391:\"<p>WordPress has long had download counts for core WordPress, plugins, and themes.</p>\n<p>But downloads counts are deceiving. They count downloads, but are not representative of actual active installs.</p>\n<p>Recently &#8212;Â in <a href=\"https://poststatus.com/notes/time-ditch-download-counts-wordpress-org-get-real-stats/\">my Club member newsletter</a> &#8212; I noted that it is past time to get data for actual installs, versus download counts. There is a private beta program on WordPress.org that offers just that, and at least some of the new stats are launching <em>very, very</em> soon (<em><strong>edit</strong>: the initial changes are now live</em>).</p>\n<p>The new plugin stats pages will show fourÂ new charts, visible to plugin authors:</p>\n<ul>\n<li>New installs per day</li>\n<li>Updates per day</li>\n<li>Active installs per day</li>\n<li>Active versions</li>\n</ul>\n<p>Most importantly, the &#8220;active installs per day&#8221; chart shows us &#8212; with much greater precision than we previously had &#8212; how many actual websites are running any plugin available on WordPress.org.</p>\n<p>For the beta period, utilizing a non-public query string parameter, I was able to see these stats publicly for any plugin on the repo. That query string parameter has now changed, so the data is no longer publicly visible.</p>\n<p>These stats are partially launching very shortly, to highlight the active installs for plugins as well as the breakdown of active versions. Active install counts will replace the download count in the right column.</p>\n<p>You can see an example of what the new <a href=\"https://wordpress.org/plugins/wordpress-importer/stats/\">public statsÂ from the WordPress ImporterÂ plugin</a>Â look like, which will be visible to users. Plugin authors will see a slightly different view that contains the additional stats:</p>\n<div id=\"attachment_8952\" class=\"wp-caption aligncenter\"><a href=\"https://poststatus.com/wp-content/uploads/2015/02/wordpress-importer.png\"><img class=\"wp-image-8952 size-large\" src=\"https://poststatus.com/wp-content/uploads/2015/02/wordpress-importer-752x892.png\" alt=\"wordpress-importer\" width=\"752\" height=\"892\" /></a><p class=\"wp-caption-text\">Click to view full size</p></div>\n<p>&nbsp;</p>\n<h3>The most popular WordPress plugins</h3>\n<p>I took some timeÂ to look through the most popular WordPress plugins I could thinkÂ of, as well as other notable plugins. What follows are some of the numbers I recorded, which wereÂ noted in the chartsÂ as being recordedÂ February 24th.</p>\n<p>Once this data goes live, the counts will be revised to round with less detail, and for installs over 1 million, will simply say &#8220;1 Million+&#8221;.</p>\n<table>\n<tbody>\n<tr>\n<th>Plugin</th>\n<th>Downloads</th>\n<th>Active Installs</th>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/contact-form-7/\">Contact Form 7</a></td>\n<td>24.304 million</td>\n<td>6.3+ million</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/akismet/\">Akismet</a></td>\n<td>28.128 million</td>\n<td>6.2+ million</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/wordpress-seo/\">WordPress SEO</a></td>\n<td>15.928 million</td>\n<td>3.7+ million</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/jetpack/\">Jetpack</a></td>\n<td>14.587 million</td>\n<td>3.7+ million</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/wordpress-importer/\">WordPress Importer</a></td>\n<td>9.635 million</td>\n<td>3.4+ million</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/google-sitemap-generator/\">Google Sitemap Generator</a></td>\n<td>16.477 million</td>\n<td>3.4+ million</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/all-in-one-seo-pack/\">All In One SEO</a></td>\n<td>21.853 million</td>\n<td>3.1+ million</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/wp-super-cache/\">WP Super Cache</a></td>\n<td>6.869 million</td>\n<td>1.7+ million</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/tinymce-advanced/\">Tiny MCE Advanced</a></td>\n<td>Â 4.788 million</td>\n<td>1.4+ million</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/nextgen-gallery/\">NextGen Gallery</a></td>\n<td>11.991 million</td>\n<td>1.3+ million</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/google-analytics-for-wordpress/\">Google Analytics for WordPress</a></td>\n<td>8.159 million</td>\n<td>1.2+ million</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/woocommerce/\">WooCommerce</a></td>\n<td>6.445 million</td>\n<td>1.2+ million</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/hello-dolly/\">Hello Dolly</a></td>\n<td>510,136</td>\n<td>1.1+ million</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/wp-pagenavi/\">WP Page Navi</a></td>\n<td>5.432 million</td>\n<td>1.1+ million</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/w3-total-cache/\">W3 Total Cache</a></td>\n<td>4.491 million</td>\n<td>970,000+</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/wordfence/\">WordFence</a></td>\n<td>4.828 million</td>\n<td>710,000+</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/better-wp-security/\">Better WP Security</a></td>\n<td>4.259 million</td>\n<td>600,000+</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/wptouch/\">WPTouch</a></td>\n<td>6.743 million</td>\n<td>410,000+</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/bbpress/\">bbPress</a></td>\n<td>1.741 million</td>\n<td>250,000+</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/wysija-newsletters/\">MailPoet</a></td>\n<td>3.447 million</td>\n<td>230,000+</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/the-events-calendar/\">The Events Calendar</a></td>\n<td>1.438 million</td>\n<td>230,000+</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/buddypress/\">BuddyPress</a></td>\n<td>2.647 million</td>\n<td>150,000+</td>\n</tr>\n<tr>\n<td><a href=\"https://wordpress.org/plugins/wp-e-commerce/\">WP eCommerce</a></td>\n<td>3.009 million</td>\n<td>80,000+</td>\n</tr>\n</tbody>\n</table>\n<p>As you can see, the data is incredibly insightful, especially compared to the public download stats. However, beware that <em>there is not a guarantee of accuracy here</em>, and in fact you should know that in some instances, the team knows the data isn&#8217;t reporting properly, especially for plugins with more installs.</p>\n<p><span class=\"pullquote alignright\">Contact Form 7 and Akismet are by far the most popular WordPressÂ plugins, with over six million active installs each.</span> I included most of the plugins from the <a href=\"https://wordpress.org/plugins/browse/popular/\">Popular page on the repo</a>, plus some additional notable plugins.</p>\n<p>There are also a number of outliers, where the discrepancy between downloads and active installs is huge. I believe this is largely due to plugins with long histories that were once immensely popular but have since faded in popularity.</p>\n<p>The download count keeps oldÂ plugins relevant far longer than if active installs were the prominent number.</p>\n<h3>Compared to BuiltWith data</h3>\n<p>How accurate is this data? Well, one smell-test we can give it is to compare it to other potentially inaccurate data. From my research, BuiltWith is doing one of the best jobs around of accurately checking site data. Go ahead and input your domain to BuiltWithÂ and see how accurate it is for you.</p>\n<p>So, if we compare this same plugin list to BuiltWithÂ data for &#8220;the entire Internet&#8221; &#8212; as they segment based on site rankings &#8212; then we can get a feel for how well the WordPress.org number and theBuiltWithÂ number get along.</p>\n<p>In this table, I link to the BuiltWithÂ page so you can get more information if you like. Do note that some plugins aren&#8217;t available on BuiltWith, so are in the list but don&#8217;t have information.</p>\n<table>\n<tbody>\n<tr>\n<th>Plugin</th>\n<th>BuiltWith</th>\n<th>Active Installs</th>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/widgets/Contact-Form-7\">Contact Form 7</a></td>\n<td>594,677</td>\n<td>6.3+ million</td>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/widgets/Akismet\">Akismet</a></td>\n<td>166,791</td>\n<td>6.2+ million</td>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/widgets/Yoast-WordPress-SEO-Plugin\">WordPress SEO</a></td>\n<td>2.602 million</td>\n<td>3.7+ million</td>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/widgets/JetPack\">Jetpack</a></td>\n<td>1.629 million</td>\n<td>3.7+ million</td>\n</tr>\n<tr>\n<td>WordPress Importer</td>\n<td>n/a</td>\n<td>3.4+ million</td>\n</tr>\n<tr>\n<td>Google Sitemap Generator</td>\n<td>n/a</td>\n<td>3.4+ million</td>\n</tr>\n<tr>\n<td>All In One SEO</td>\n<td>n/a</td>\n<td>3.1+ million</td>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/widgets/WP-Super-Cache\">WP Super Cache</a></td>\n<td>991,729</td>\n<td>1.7+ million</td>\n</tr>\n<tr>\n<td>Tiny MCE Advanced</td>\n<td>n/a</td>\n<td>1.4+ million</td>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/widgets/NextGEN-Gallery\">NextGen Gallery</a></td>\n<td>977,343</td>\n<td>1.3+ million</td>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/widgets/Yoast-Google-Analytics-for-WordPress\">Google Analytics for WordPress</a></td>\n<td>871,144</td>\n<td>1.2+ million</td>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/shop/WooCommerce\">WooCommerce</a></td>\n<td>685,937</td>\n<td>1.2+ million</td>\n</tr>\n<tr>\n<td>Hello Dolly</td>\n<td>n/a</td>\n<td>1.1+ million</td>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/widgets/WP-PageNavi\">WP Page Navi</a></td>\n<td>585,809</td>\n<td>1.1+ million</td>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/widgets/W3-Total-Cache\">W3 Total Cache</a></td>\n<td>571,864</td>\n<td>970,000+</td>\n</tr>\n<tr>\n<td>WordFence</td>\n<td>n/a</td>\n<td>710,000+</td>\n</tr>\n<tr>\n<td>Better WP Security</td>\n<td>n/a</td>\n<td>600,000+</td>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/cms/WPTouch-Pro\">WPTouch (Pro Data only)</a></td>\n<td>15,696</td>\n<td>410,000+</td>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/widgets/bbPress\">bbPress</a></td>\n<td>126,081</td>\n<td>250,000+</td>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/widgets/MailPoet\">MailPoet</a></td>\n<td>149,018</td>\n<td>230,000+</td>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/widgets/The-Events-Calendar\">The Events Calendar</a></td>\n<td>56,095</td>\n<td>230,000+</td>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/cms/BuddyPress\">BuddyPress</a></td>\n<td>76,853</td>\n<td>150,000+</td>\n</tr>\n<tr>\n<td><a href=\"http://trends.builtwith.com/shop/WP-eCommerce\">WP eCommerce</a></td>\n<td>58,115</td>\n<td>80,000+</td>\n</tr>\n</tbody>\n</table>\n<h3>Data Accuracy</h3>\n<p>There are zero instances from this list where BuiltWith shows more sites than WordPress.org using a plugin. That is a confidence enhancing note, as WordPress.org should be much more fully comprehensive.</p>\n<p>There are some instances, especially with plugins that are on the backend, or have limited front-end visibility, where the numbers don&#8217;t line up too well.</p>\n<p>However, for the highly visible plugins, the WordPress.org data <em>feels</em> good to me, in comparison to BuiltWith.</p>\n<p>The team working on the new stats has less confidence in the numbers as the numbers get higher. So for plugins with well beyond a million installs, they have reason to believe adoption may be different than what is reflected in the stats.</p>\n<h3>How stats are collected</h3>\n<p>WordPress.org collects this data via the update checks that a WordPress install performs.</p>\n<p>There are a couple of caveats to consider for the WordPress.org data:</p>\n<ul>\n<li>The numbers could include (and therefore inflate numbers) non-public (dev and staging environments) domains. According to Andrew Nacin, the team does exclude sites withÂ &#8220;localhost&#8221;, &#8220;.dev&#8221;, &#8220;.local&#8221; and &#8220;other telltale signs of local development and staging sites, like IP addresses.&#8221;</li>\n<li>The numbers don&#8217;t include websites that have, via code, turned off update checks.</li>\n<li>Some data is making more sense as it is collected. Now that it&#8217;s a few months old, they are able to make better determinations about what is accurate and what is not.</li>\n</ul>\n<p>Keep in mind the percentage of installs that wouldn&#8217;t be included in these checks is minimal. Also, unfortunately, a large percentage of folks just don&#8217;t keep dev or local installs of their websites, so those numbers probably do not inflate the totals as much as you may think either &#8212; though I&#8217;m guessing on that front.</p>\n<p>For the accuracy of the numbers, the team has seen some discrepancies, where one graph shows data that should also impact another, but it does not. They&#8217;re working to resolve these issues still.</p>\n<h3>This data is important</h3>\n<p>The team working on this project has been deciding on whichÂ stats pagesÂ to showcase for the general public, and which to show to plugin authors.</p>\n<p>The active install data is important, and it needs to be public for users, in addition to plugin authors. <span class=\"pullquote alignright\">If we can ensure that the data is even remotely accurate, it isÂ far superior to using download counts alone.</span></p>\n<p>Download counts give legacy plugins too much clout in the repo, and also make misinformation all the more likely.</p>\n<p>A prime example is that of Slimstats, which had the recent security breach. That plugin has over 1.3 million downloads. But when I looked at the stats, there were only 100,000 or so active installs.</p>\n<p>Yet, when tech blogs covered the security breach of the plugin, they largely cited &#8220;over a million&#8221; installs at risk. This is bad for WordPress and it&#8217;s unnecessary. We can fix it. <em>We have the data</em>.</p>\n<p>Lead developer Dion Hulse also had this to say about the progress of the stats pages, when I notified him that I had access to these numbers:</p>\n<blockquote>\n<p class=\"p1\"><span class=\"s1\">The current beta stats page was put together as a trial to find what data plugin authors wanted (We&#8217;ve been in touch with a few who have provided great feedback in the past on the stats).</span></p>\n</blockquote>\n<p>Based on what they have learned, they are launching the active install numbers and active version chart, and will follow up with a future launch for the plugin author only stats. The plugin author stats are going to go live with the notice that they may not be totally accurate, and they may change over time as the team continues to analyze the data.</p>\n<p>WordPress is open source, and has absolutely massive adoption across the web, as we all know. It is thereforeÂ a source for what&#8217;s become aÂ multi-billion dollar industry. WordPress.org and those that hold the keys to the website have great power.</p>\n<p>Changes to the website and how themes, plugins, and any other potentially business-centric data make a difference to real businesses.</p>\n<p>All those businesses have signed up for this (being involved with the WordPress project), and therefore any risks associated, but in my mind this data &#8212; especially of active installs &#8212; brings welcome sunlight to a murky plugin landscape.</p>\n<p>I&#8217;m glad I was able to see this data. I&#8217;m very pleased that the active install numbers are replacingÂ the download counts. WordPress itself will be better for it.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 28 Feb 2015 02:38:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: Time To Abolish Metaboxes in The WordPress Post Editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39792\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"http://wptavern.com/time-to-abolish-metaboxes-in-the-wordpress-post-editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3615:\"<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/WPMetaBoxesFeaturedImage.png\" rel=\"prettyphoto[39792]\"><img class=\"size-full wp-image-39793\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/WPMetaBoxesFeaturedImage.png?resize=640%2C300\" alt=\"WP Metabox Featured Image\" /></a>photo credit: <a href=\"http://www.flickr.com/photos/66992990@N00/6532917427\">packing up</a> &#8211; <a href=\"https://creativecommons.org/licenses/by/2.0/\">(license)</a>\n<p>I&#8217;ve used WordPress to write about WordPress for more than seven years, it&#8217;s how I make a living. Recently though, writing in WordPress feels more like being a data entry specialist. I guess in some ways, it&#8217;s not surprising considering that&#8217;s exactly what I&#8217;m doing.</p>\n<p>The post editor is more or less a pretty user interface that enables me to add data to a database. I think the feeling is stronger if you write in WordPress every day as it&#8217;s an endless cycle of filling in text areas, fields, uploading media, and clicking the publish button. Many of these tasks take place within their own metabox which is something that detracts from a seamless experience. I don&#8217;t know about you, but I&#8217;m ready to try something different.</p>\n<p>Many of the posts I write post consists of content blocks such as: blockquotes, media, etc. Thinking about how I create content in WordPress, the conceptual post editor <a title=\"https://make.wordpress.org/design/2013/08/08/proposal-improving-the-content-editing-experience/\" href=\"https://make.wordpress.org/design/2013/08/08/proposal-improving-the-content-editing-experience/\">proposed in 2013</a> makes complete sense. Instead of a full-blown TinyMCE editor, I could select from a set of established content blocks. In addition to the content block idea, some of the metaboxes are integrated into the editor.</p>\n<a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2013/08/ContentEditingProposal.png\" rel=\"prettyphoto[39792]\"><img class=\"size-full wp-image-8380\" src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2013/08/ContentEditingProposal.png?resize=1025%2C825\" alt=\"ContentEditingProposal\" /></a>Proposal To Revamp The Post Writing/Editing Interface\n<p>The publish, categories, and tags metaboxes are integrated into the editor. It probably wouldn&#8217;t take too much effort to add a way to feature an image. I don&#8217;t know how usable this interface is, but I&#8217;d love to give it a try for a few months. The more metaboxes that disappear, the less I feel like I&#8217;m hitting switches and turning knobs before clicking the publish button. By having some of these tasks integrated into the editor, I think it&#8217;ll provide a better publishing experience.</p>\n<p>I probably wouldn&#8217;t be able to get rid of all the metaboxes because of the plugins I use. However, I&#8217;m most interested in an interface that consists of less scrolling, searching, etc., that gets me to the publishing stage quicker without feeling like a data entry specialist.</p>\n<p>Despite a large amount of discussion surrounding the proposal, the <a title=\"https://make.wordpress.org/design/2013/08/08/proposal-improving-the-content-editing-experience/\" href=\"https://make.wordpress.org/design/2013/08/08/proposal-improving-the-content-editing-experience/\">concept lost steam</a>. Although I&#8217;ve never used it, I feel like I&#8217;d prefer it over the current editor. It&#8217;s anyone&#8217;s guess if we&#8217;ll ever see the post editor undergo a major change, but if it did, this is the direction I&#8217;d like to see it go.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 28 Feb 2015 02:28:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"WPTavern: SIDEKICK Adds Support For WordPress Multisite, Launches Partnership With MediaTemple\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39720\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"http://wptavern.com/sidekick-adds-support-for-wordpress-multisite-launches-partnership-with-mediatemple\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6344:\"<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/01/SIDEKICKFeaturedImage.png\" rel=\"prettyphoto[39720]\"><img class=\"aligncenter size-full wp-image-37436\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/01/SIDEKICKFeaturedImage.png?resize=769%2C227\" alt=\"SIDEKICKFeaturedImage\" /></a></p>\n<p>SIDEKICK has <a title=\"http://www.sidekick.pro/blog/multisite-genesis-media-temple-oh-my/\" href=\"http://www.sidekick.pro/blog/multisite-genesis-media-temple-oh-my/\">announced</a> that its voice-guided <a title=\"https://wordpress.org/plugins/sidekick/\" href=\"https://wordpress.org/plugins/sidekick/\">WordPress </a><a title=\"https://wordpress.org/plugins/sidekick/\" href=\"https://wordpress.org/plugins/sidekick/\">training</a><a title=\"https://wordpress.org/plugins/sidekick/\" href=\"https://wordpress.org/plugins/sidekick/\"> video plugin</a> now supports WordPress Multisite. According to SIDEKICK Co-founder, Ben Fox, WordPress Multisite has been one of the most requested features from users. Users can now:</p>\n<ol>\n<li>Easily auto activate your SIDEKICK license across all sites on your network</li>\n<li>Set a Walkthrough to auto-start the first time a new user logs into any site on your network</li>\n<li>Enable and disable walkthroughs and walkthrough categories network wide from one screen</li>\n</ol>\n<p>SIDEKICK has a <a title=\"http://support.sidekick.pro/article/101-sidekick-for-wordpress-multisite\" href=\"http://support.sidekick.pro/article/101-sidekick-for-wordpress-multisite\">support article</a> that goes into more detail on how to activate Multisite.</p>\n<h2>Challenges Encountered</h2>\n<p>SIDEKICK&#8217;s Chief of Technology and Product Development, Bart Dabek, describes the most challenging aspect they encountered adding Multisite support, &#8220;The biggest challenge was incorporating our API and building out the relationship between the super admin setup page and individual sites. Once that relationship was established, it was easy to pull in settings from the network settings and assign them to individual sites.&#8221;</p>\n<p>&#8220;Some things to keep in mind with our particular situation is, keeping authentication details within the super admin account so that if our sessions expire, the system can automatically log back into our API and continue to auto activate SIDEKICK on new sites without the need for the super admin to do anything. It&#8217;s something developers will have to consider if they&#8217;re dealing with an API on this level,&#8221; Dabek said.</p>\n<h2>Free Genesis Walkthroughs</h2>\n<p>If you use SIDEKICK with the Genesis Framework by <a title=\"http://www.studiopress.com/\" href=\"http://www.studiopress.com/\">StudioPress</a>, you&#8217;ll see 30 free Genesis walkthroughs. As long as you&#8217;re using a Genesis powered theme, you&#8217;ll see the videos appear in the SIDEKICK drawer. The walkthroughs were <a title=\"http://www.web-savvy-marketing.com/2015/02/genesis-walkthroughs/\" href=\"http://www.web-savvy-marketing.com/2015/02/genesis-walkthroughs/\">created by Web Savvy Marketing</a>, a WordPress development agency that specializes in Genesis themes.</p>\n<h2>MediaTemple Learns From GoDaddy&#8217;s Mistake</h2>\n<p>The <a title=\"http://www.sidekick.pro/plans/wordpress-basics/\" href=\"http://www.sidekick.pro/plans/wordpress-basics/\">basic student plan</a> offered by SIDEKICK priced at $5 per month, is available for free to MediaTemple customers. In addition to 30 Genesis walkthroughs,Â  customers gain access to 160+ WordPress walkthroughs. We&#8217;ve received a few reports from readers that SIDEKICK has been activated on every site on MediaTemple without an opt-in notice, similar to what happened to <a title=\"http://wptavern.com/without-notifying-customers-godaddy-and-mediatemple-auto-activate-sidekick\" href=\"http://wptavern.com/without-notifying-customers-godaddy-and-mediatemple-auto-activate-sidekick\">GoDaddy customers late in 2014</a>. However, this isn&#8217;t the case.</p>\n<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/MTSidekickEmail.png\" rel=\"prettyphoto[39720]\"><img class=\"size-full wp-image-39772\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/MTSidekickEmail.png?resize=853%2C752\" alt=\"Email send to MediaTemple Customers about SIDEKICK\" /></a>Email send to MediaTemple Customers about SIDEKICK\n<p>MediaTemple emailed customers on February 23rd announcing the partnership and included directions on how to activate the plugin. It appears as though the company learned from <a title=\"http://wptavern.com/without-notifying-customers-godaddy-and-mediatemple-auto-activate-sidekick\" href=\"http://wptavern.com/without-notifying-customers-godaddy-and-mediatemple-auto-activate-sidekick\">GoDaddy&#8217;s mistake</a>.</p>\n<a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/MTTurnOnSidekick.png\" rel=\"prettyphoto[39720]\"><img class=\"size-full wp-image-39773\" src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/MTTurnOnSidekick.png?resize=624%2C308\" alt=\"How to turn on SIDEKICK\" /></a>How to turn on SIDEKICK\n<p>Around the same time the email went out to customers, the company sent out a press release to the media with the same information.</p>\n<a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/MediaTempleSidekickPressRelease.png\" rel=\"prettyphoto[39720]\"><img class=\"size-full wp-image-39782\" src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/MediaTempleSidekickPressRelease.png?resize=945%2C473\" alt=\"MediaTemple SIDEKICK press release\" /></a>MediaTemple SIDEKICK press release\n<p>Multisite support gives network administrators the ability to easily provide access to an educational tool. Through strategic partnerships with SIDEKICK, MediaTemple, and GoDaddy, customers have an easy way to learn the ins and outs of WordPress.</p>\n<p>While some <a title=\"http://wptavern.com/without-notifying-customers-godaddy-and-mediatemple-auto-activate-sidekick#comment-62200\" href=\"http://wptavern.com/without-notifying-customers-godaddy-and-mediatemple-auto-activate-sidekick#comment-62200\">don&#8217;t like the approach</a> taken by SIDEKICK, it&#8217;s another option to those who find it difficult to use the <a title=\"http://codex.wordpress.org/Main_Page\" href=\"http://codex.wordpress.org/Main_Page\">WordPress Codex</a> or other educational resources.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 28 Feb 2015 00:42:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WPTavern: Clean Up WordPress with the New WP-Sweep Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39753\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://wptavern.com/clean-up-wordpress-with-the-new-wp-sweep-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4395:\"<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/clean-up.jpg\" rel=\"prettyphoto[39753]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/clean-up.jpg?resize=1024%2C513\" alt=\"clean-up\" class=\"aligncenter size-full wp-image-39755\" /></a></p>\n<p>After years of creating new content, changing themes, and adding and removing plugins, a WordPress installation can become littered with unused, orphaned, and duplicated data. Not every plugin properly extricates itself and its data from your site when you uninstall.</p>\n<p><a href=\"https://profiles.wordpress.org/gamerz/\" target=\"_blank\">Lester Chan</a>&#8216;s new <a href=\"https://wordpress.org/plugins/wp-sweep/\" target=\"_blank\">WP Sweep</a> plugin was designed to perform housekeeping on WordPress installations. Chan is a prolific plugin developer, who created his first plugin in 2003 shortly after WordPress was forked from b2. He now has 24+ plugins listed in directory.</p>\n<p>WP-Sweep&#8217;s distinguishing characteristic is that it uses proper WordPress delete functions as much as possible instead of running direct delete MySQL queries. This method is in direct contrast to similarly purposed plugins such as <a href=\"https://wordpress.org/plugins/wp-optimize/\" target=\"_blank\">WP-Optimize</a>, which has been downloaded more than 1.5 million times.</p>\n<blockquote class=\"twitter-tweet\" width=\"550\"><p>Looking through WP-Optimize and they are using SQL query to delete post revisions which means there will be orphaned data left behind.</p>\n<p>&mdash; Lester Chan (@gamerz) <a href=\"https://twitter.com/gamerz/status/569742401398386688\">February 23, 2015</a></p></blockquote>\n<p></p>\n<h3>What can WP-Sweep clean?</h3>\n<p>WP-Sweep uses WordPress delete functions, such as <code>wp_delete_post_revision()</code>, <code>delete_post_meta()</code>, <code>wp_delete_comment()</code>, etc. to clean up the database. It can perform sweeps of all of the following:</p>\n<ul>\n<li>Revisions</li>\n<li>Auto drafts</li>\n<li>Deleted comments</li>\n<li>Unapproved comments</li>\n<li>Spammed comments</li>\n<li>Deleted comments</li>\n<li>Orphaned post meta</li>\n<li>Orphaned comment meta</li>\n<li>Orphaned user meta</li>\n<li>Orphan term relationships</li>\n<li>Unused terms</li>\n<li>Duplicated post meta</li>\n<li>Duplicated comment meta</li>\n<li>Duplicated user meta</li>\n<li>Transient options</li>\n</ul>\n<p>WP-Sweep can be found under the tools menu after you install it. It will give you a full overview of items that can be cleaned up.</p>\n<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/wp-sweep.jpg\" rel=\"prettyphoto[39753]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/wp-sweep.jpg?resize=884%2C494\" alt=\"wp-sweep\" class=\"aligncenter size-full wp-image-39771\" /></a></p>\n<p>Scroll further down and you&#8217;ll see reports for comments, users, terms, and options. Certain sweeps have extra instructions to consider before using, i.e unused terms: <em>&#8220;Note that some unused terms might belong to draft posts that have not been published yet. Only sweep this when you do not have any draft posts.&#8221;</em></p>\n<p>One user tested the plugin and <a href=\"https://twitter.com/slaFFik/status/570536799333961728\" target=\"_blank\">reported</a> a savings of 23.5% on database size. He also reported a bug, which Chan promptly <a href=\"https://github.com/lesterchan/wp-sweep/issues/1\" target=\"_blank\">fixed</a>.</p>\n<blockquote class=\"twitter-tweet\" width=\"550\"><p><a href=\"https://twitter.com/gamerz\">@gamerz</a> plugin saved me 23,5% of a database size. But not everything works as expected: <a href=\"https://t.co/UeiDedH7Yd\">https://t.co/UeiDedH7Yd</a></p>\n<p>&mdash; Slava UA (@slaFFik) <a href=\"https://twitter.com/slaFFik/status/570536799333961728\">February 25, 2015</a></p></blockquote>\n<p></p>\n<p>Chan plans to continue to develop the plugin and is <a href=\"https://twitter.com/gamerz/status/570902672636645376\" target=\"_blank\">considering adding unused options</a> to the sweeps in a future version. If you want to use the plugin to clean up your website, you are strongly advised to make a backup of your database first, as the actions it performs are irreversible. Check out <a href=\"https://wordpress.org/plugins/wp-sweep/changelog/\" target=\"_blank\">WP-Sweep on WordPress.org</a> and favorite it for the next time you need to do some database housekeeping.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Feb 2015 22:03:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: WordPress Theme Review Handbook Updated to Include Design Recommendations\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39716\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"http://wptavern.com/wordpress-theme-review-handbook-updated-to-include-design-recommendations\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4690:\"<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/design-studio.jpg\" rel=\"prettyphoto[39716]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/design-studio.jpg?resize=760%2C374\" alt=\"photo credit: Artist\'s Room - (license)\" class=\"size-full wp-image-39730\" /></a>photo credit: <a href=\"http://www.flickr.com/photos/63191453@N00/2650862549\">Artist&#8217;s Room</a> &#8211; <a href=\"https://creativecommons.org/licenses/by/2.0/\">(license)</a>\n<p>The <a href=\"http://wptavern.com/wordpress-theme-directory-launches-new-design\" target=\"_blank\">new design of the WordPress Theme Directory</a> is a welcome change on WordPress.org. Faster browsing and filtering means users can more easily sort through the thousands of available options. While the directory includes many beautiful, high quality themes, it often requires sifting through hundreds to find that diamond in the rough.</p>\n<p>One of the reasons for the glut of lackluster and uninspired new theme submissions is a lack of design feedback from the Theme Review team. Reviews have traditionally focused primarily on the code quality of themes and often neglect major design issues with new submissions.</p>\n<p>During the team&#8217;s <a href=\"https://make.wordpress.org/themes/2015/02/27/this-weeks-a-little-late-meeting-notes-we/\" target=\"_blank\">meeting</a> this week, contributors discussed ways to encourage more design feedback on submissions to the directory. WordPress.org theme author <a href=\"https://twitter.com/ryelle\" target=\"_blank\">Kelly Dwan</a> broached the topic in a recent <a href=\"https://redradar.net/2015/02/23/1612/\" target=\"_blank\">post</a> about ways to get designers involved during the review process:</p>\n<blockquote><p>If we tell people that they donâ€™t need to be expert developers to review themes, and that this is a good way to learn better coding practices, why donâ€™t we do the same with design? Good design is just as subjective as code standards (in that the basics aren&#8217;t, but people like to argue about it anyway).</p>\n<p>The quality of code in the theme repo is improved by the review process, so we should encourage design reviews to increase the quality of design, too.</p></blockquote>\n<p>Her post included practical suggestions for updating the theme review handbook to provide better guidance on how to offer design feedback. This is one way that designers can contribute on WordPress.org, even if they&#8217;re not comfortable helping with the code review aspect of the process.</p>\n<h3>New Design Recommendation Added to the Handbook</h3>\n<p><a href=\"https://twitter.com/melchoyce\" target=\"_blank\">Mel Choyce</a>, Design Engineer at Automattic, volunteered to start filling out the <a href=\"https://make.wordpress.org/themes/handbook/review/recommended/design/\" target=\"_blank\">design section of the Theme Review Handbook</a> with recommendations. &#8220;Theme authors are never exposed to design guidelines before uploading their themes, unlike code guidelines,&#8221; she said. This is something the team is currently working to change.</p>\n<p>The design recommendations so far are formatted to help the theme author think more critically about design decisions. Instead of taking a hard line about subjective aspects of design, the recommendations invite the designer to consider the theme from a user&#8217;s perspective. A few examples include:</p>\n<ul>\n<li>Can you tell if the theme has an ideal audience in mind?</li>\n<li>Is the type large enough to comfortably read?</li>\n<li>Body text should generally be 14px or larger on desktop, unless using a font with a generous x-height.</li>\n<li>Are the header and body fonts easy to read?</li>\n<li>Is there enough difference between headers and paragraphs to distinguish them from each other?</li>\n<li>Do paragraphs have enough line-height? If you squint your eyes, can you still see some space between lines?</li>\n<li>A good rule of thumb is 1.3-1.4 on headers, and 1.4-1.6 on body text.</li>\n<li>Is the color contrast high enough? Is the type readable against its background?</li>\n<li>Do the details (drop shadows, gradients, etc.) distract at all from the content?</li>\n</ul>\n<p>Encouraging more design feedback is difficult without offering reviewers the tools to so with confidence. The art of offering design feedback is tricky and it requires diplomacy to do it in a way that doesn&#8217;t crush the spirit of a fledgling theme author.</p>\n<p>A basic set of guidelines is a valuable resource that team members can refer to during the review process. If theme authors are open to the recommendations, the quality of their designs can be significantly improved for future submissions.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Feb 2015 20:52:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WPTavern: WordPress Theme Directory Launches New Design\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39691\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://wptavern.com/wordpress-theme-directory-launches-new-design\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2719:\"<p>The new design for the official <a href=\"https://wordpress.org/themes/\" target=\"_blank\">WordPress Theme Directory</a> is live today. Contributors on the <a href=\"https://make.wordpress.org/meta/\" target=\"_blank\">WordPress Meta team</a> released a <a href=\"http://wptavern.com/preview-the-new-design-for-the-wordpress-themes-directory\" target=\"_blank\">preview of the design</a> in early January and worked quickly over the past month to resolve any outstanding issues related to the new plugin that powers the directory.</p>\n<p>In addition to an updated design, the theme repository has been moved away from bbPress and into a new plugin, which includes a custom post type for the repository package and a theme uploader.</p>\n<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/wordpress-theme-directory.png\" rel=\"prettyphoto[39691]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/wordpress-theme-directory.png?resize=1025%2C750\" alt=\"wordpress-theme-directory\" class=\"aligncenter size-full wp-image-39692\" /></a></p>\n<p>The design is likely already familiar to most users, as it was matched to the UI to the admin themes browser. Now, whether you&#8217;re behind the wheel of your WordPress site in the admin, or browsing on the official directory, the experience of searching and sorting themes is more consistent.</p>\n<p>Konstantin Obenland, in cooperation with Samuel &#8220;Otto&#8221; Wood, spearheaded the migration to the new plugin and design, with help and feedback from other members of the meta team. The work is not yet complete, but the new directory provides a vastly improved experience for users on the hunt for a new theme. Searching and filtering are both faster and users can quickly browse through thumbnails of all the queried results via infinite scroll.</p>\n<p>Future internationalization improvements to the directory should make it an even better resource for WordPress&#8217; growing global audience.</p>\n<p>&#8220;There is still a lot more work to be done, but everything thatâ€™s remaining can be added, changed, or improved with the new directory active,&#8221; Obenland said in an update earlier this week. <strong>&#8220;Most importantly we want to make it available to language sites, so that we have an internationalized theme directory, and there will be more to be done around that.&#8221;</strong></p>\n<p>The improved browsing experience does a much better job of showcasing the work of theme authors, many of whom spend countless hours updating and supporting their free themes as a contribution to the WordPress community. Overall, the new design is a better representation of the high quality themes available in the official directory.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Feb 2015 01:58:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"WPTavern: Add Infinite Scroll to the WordPress Admin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39320\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"http://wptavern.com/add-infinite-scroll-to-the-wordpress-admin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3059:\"<a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/infinite.jpg\" rel=\"prettyphoto[39320]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/infinite.jpg?resize=1024%2C508\" alt=\"photo credit: à®¤à¯‡à®µà¯ˆà®¯à®¿à®²à¯à®²à¯ˆ à®•à®¾à®°à®£à®™à¯à®•à®³à¯, à®¨à¯€ à®Žà®™à¯à®•à¯‡? - (license)\" class=\"size-full wp-image-39685\" /></a>photo credit: <a href=\"http://www.flickr.com/photos/25066200@N02/8659691170\">à®¤à¯‡à®µà¯ˆà®¯à®¿à®²à¯à®²à¯ˆ à®•à®¾à®°à®£à®™à¯à®•à®³à¯, à®¨à¯€ à®Žà®™à¯à®•à¯‡?</a> &#8211; <a href=\"https://creativecommons.org/licenses/by/2.0/\">(license)</a>\n<p>The WordPress admin list tables can get quite lengthy to browse if you&#8217;re relying on regular pagination, especially when you need to perform bulk actions.</p>\n<p>As of WordPress 4.0, the grid view of the media library has beautiful support for infinite scrolling, but list tables for posts and users still rely on old-fashioned pagination. Setting the screen options to include more listings can help, but this, too, can become cumbersome.</p>\n<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/screen-options.jpg\" rel=\"prettyphoto[39320]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/screen-options.jpg?resize=782%2C277\" alt=\"screen-options\" class=\"aligncenter size-full wp-image-39669\" /></a></p>\n<p><a href=\"https://github.com/cedaro/infinite-wp-list-tables\" target=\"_blank\">Infinite WP List Tables</a> is a new plugin created by WordPress developer <a href=\"https://twitter.com/bradyvercher\" target=\"_blank\">Brady Vercher</a>. It&#8217;s a simple extension that adds infinite scroll to several pages within the admin, i.e. posts and users. Infinite WP List Tables has no settings to configure &#8211; simply activate it and it&#8217;s working.</p>\n<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/infinitewp-list-tables.jpg\" rel=\"prettyphoto[39320]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/infinitewp-list-tables.jpg?resize=731%2C562\" alt=\"infinitewp-list-tables\" class=\"aligncenter size-full wp-image-39677\" /></a></p>\n<p>I tested the plugin both on a single site and on a multisite installation with thousands of sites and users. In both scenarios the plugin performed nicely to infinitely scroll admin list tables for sites, posts, and users.</p>\n<p>It does not seem to work with comments, nor does it work with third party plugin tables such as the BuddyPress activity and groups admin listings. Integrations for plugins that display products, portfolio items, quotes, or other listings in the admin would make it even more useful, but I can see why Vercher might want to limit the plugin to core admin list tables.</p>\n<p>Do you think something like this should be added to core, given that the media library works nicely with infinite scroll? As far as I&#8217;ve seen, no tickets currently exist on trac to propose infinite scroll for other areas of the admin. Do you prefer traditional pagination for sites, posts, users, and comment list tables?</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Feb 2015 23:05:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Matt: Net Neutrality Win\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44728\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://ma.tt/2015/02/net-neutrality-win/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:355:\"<p>A lot of the tech news I&#8217;ve linked here has been a bit of a downer, but today we can celebrate: <a href=\"http://arstechnica.com/business/2015/02/fcc-votes-for-net-neutrality-a-ban-on-paid-fast-lanes-and-title-ii/\">FCC votes for net neutrality, a ban on paid fast lanes, and Title II</a>. This is not an outcome I would have bet on a year ago.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Feb 2015 21:17:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: Twitterâ€™s New Official WordPress Plugin Prioritizes Extensibility\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39608\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"http://wptavern.com/twitters-new-official-wordpress-plugin-prioritizes-extensibility\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6064:\"<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/twitter.jpg\" rel=\"prettyphoto[39608]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/twitter.jpg?resize=772%2C350\" alt=\"twitter\" class=\"aligncenter size-full wp-image-39647\" /></a></p>\n<p>It&#8217;s easy to get overwhelmed when visiting the WordPress.org plugin directory in search of a Twitter plugin, as you&#8217;ll turn up <a href=\"https://wordpress.org/plugins/search.php?q=twitter\" target=\"_blank\">more than 3,000 Twitter-related extensions</a>. Unless you&#8217;re running on recommendations or personal experience, it may not be easy to narrow down a quality plugin that keeps pace with changes to the Twitter API.</p>\n<p>This week Twitter finally decided to <a href=\"https://dev.twitter.com/web/wordpress\" target=\"_blank\">release an official WordPress plugin</a> to assist users in optimizing their sites for a Twitter audience. I spoke with <a href=\"https://twitter.com/niall\" target=\"_blank\">Niall Kennedy</a>, Developer Advocate at Twitter and contributor on its official WordPress plugin, about Twitter&#8217;s plans for the plugin. Kennedy is also listed as a contributor on both the official <a href=\"https://wordpress.org/plugins/facebook/\" target=\"_blank\">Facebook</a> and <a href=\"https://wordpress.org/plugins/vine/\" target=\"_blank\">Vine</a> plugins for WordPress.</p>\n<p>&#8220;Twitter regularly works with partners to implement Twitter features on their site,&#8221; Kennedy said. <strong>&#8220;Shipping an official plugin allows us to directly support publishers powered by WordPress and provide an example implementation of Twitter best practices for publishers on any platform.&#8221;</strong></p>\n<p>The plugin requires PHP 5.4 or later and offers many features that you many have already seen available via other extensions, including customization of embedded tweets, embedded Twitter videos, Tweet button for sharing content, Twitter Cards, integration with Twitter Analytics, a Follow button, and ads conversion tracking.</p>\n<p>Many are wondering why anyone needs an official Twitter plugin, given that WordPress already has excellent oEmbed support for tweets.  Kennedy confirmed that the new plugin plays nicely with the built-in oEmbed support, while building on top of it:</p>\n<blockquote><p>The Twitter plugin for WordPress enhances the oEmbed support built-in to WordPress with additional customization and functionality. We enhance the typical oEmbed response with additional integrations with WordPress APIs.</p>\n<p>Our plugin loads Twitter&#8217;s widgets JavaScript asynchronously through <code>wp_enqueue_script</code>, omitting the script element typically inserted onto the page markup through the default oEmbed response.</p>\n<p>Each embedded Tweet, added through a URL or shortcode, passes through the shortcode&#8217;s filter (<code>shortcode_atts_tweet</code>) for customization of embedded Tweet features across the site. The plugin handles fetching the correct oEmbed markup from Twitter&#8217;s servers and caching the unique result for the customization.</p>\n<p>The plugin does not change MCE oEmbed handling in the admin view.</p></blockquote>\n<p>Kennedy declined to comment on why it took Twitter so long to release an official plugin, but hopes that WordPress developers will use it as a building block. Those who previously created Twitter plugins now have a solid example for how best to extend WordPress to customize Twitter&#8217;s latest features.</p>\n<h3>Designed to be Extensibile</h3>\n<p>The development team behind the plugin plans to add new features to it as they become available from Twitter. They recognize that it will not be realistic to offer every imaginable feature, but instead are prioritizing extensibility to make sure developers can easily create their own customizations.</p>\n<p>&#8220;The plugin includes <a href=\"https://dev.twitter.com/web/embedded-video\" target=\"_blank\">support for displaying Twitter-hosted video embeds</a>, a new feature available to Twitter developers just in the past few weeks,&#8221; Kennedy said. &#8220;An official Twitter plugin makes it easy to roll out new features to publishers.</p>\n<p>&#8220;<span class=\"pullquote alignleft\">We&#8217;re working with other plugin developers to integrate features through filters where any overlap may occur</span>,&#8221; he said. Kennedy has a few ideas for the kinds of integrations that developers might want to build for the plugin using the WordPress APIs.</p>\n<p>&#8220;Our plugin automatically generates Twitter Card markup to represent a post, making some best guesses for post formats built-in to Core,&#8221; he said. &#8220;We expect plugin developers creating more specific display experiences will be able to build on top of our base features to select the best Twitter Cards template for their content.&#8221;</p>\n<p>Kennedy also believes the plugin can be further extended by SEO plugins to optimize content. &#8220;Some of the most popular WordPress plugins involve SEO,&#8221; he said. &#8220;We would like to integrate with SEO plugins to highlight the best titles, descriptions, and other detailed data provided by publishers to help their content stand out on Twitter.&#8221;</p>\n<p>Additionally, he sees an opportunity for theme developers to make tweets a seamless part of a theme&#8217;s overall design. &#8220;Our embedded Tweet theming can be customized by theme authors to match the visual theme of their site,&#8221; Kennedy said. &#8220;Automatically adjusting Twitter theming components to a WordPress theme context would be pretty cool.&#8221;</p>\n<p>If you&#8217;re looking to add the most common Twitter features to your WordPress site, you&#8217;ll be hard pressed to find a better plugin than the <a href=\"https://wordpress.org/plugins/twitter/\" target=\"_blank\">official one on WordPress.org</a>. Kennedy confirmed that Twitter plans to support the plugin through its official support forums on WordPress.org and will also have an escalated support channel for managed hosting providers.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Feb 2015 20:10:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: WPWeekly Episode 181 â€“ Sticky Posts and Legal Issues\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"http://wptavern.com?p=39625&preview_id=39625\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"http://wptavern.com/wpweekly-episode-181-sticky-posts-and-legal-issues\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3804:\"<p>In this episode of WordPress Weekly, <a title=\"http://marcuscouch.com/\" href=\"http://marcuscouch.com/\">Marcus Couch</a> and I take the opportunity to catch up on the latest news in the WordPress community. I share the results of our poll asking readers if they use sticky posts in WordPress. We discuss the pros and cons of content protection plugins, in which there are no pros. Marcus and I agree that the visual editor added to the latest version of the WordPress for iOS app is a nice addition. Last but not least, we run down a list of upcoming WordCamps.</p>\n<h2>Stories Discussed:</h2>\n<p><a title=\"http://wptavern.com/do-you-use-the-sticky-posts-feature-in-wordpress\" href=\"http://wptavern.com/do-you-use-the-sticky-posts-feature-in-wordpress\">Do You Use The Sticky Posts Feature in WordPress?</a><br />\n<a title=\"http://wptavern.com/content-protection-plugins-for-wordpress-do-more-harm-than-good\" href=\"http://wptavern.com/content-protection-plugins-for-wordpress-do-more-harm-than-good\">Content Protection Plugins for WordPress Do More Harm Than Good</a><br />\n<a title=\"http://wptavern.com/press-this-bookmarklet-generates-concerns-of-copyright-infringement\" href=\"http://wptavern.com/press-this-bookmarklet-generates-concerns-of-copyright-infringement\">Press This Bookmarklet Generates Concerns of Copyright Infringement</a><br />\n<a title=\"http://wptavern.com/wordpress-for-ios-4-8-released-adds-visual-editor\" href=\"http://wptavern.com/wordpress-for-ios-4-8-released-adds-visual-editor\">WordPress for iOS 4.8 Released, Adds Visual Editor</a><br />\n<a title=\"http://wptavern.com/high-risk-security-vulnerability-discovered-in-wp-slimstat-update-immediately\" href=\"http://wptavern.com/high-risk-security-vulnerability-discovered-in-wp-slimstat-update-immediately\">High Risk Security Vulnerability Discovered in WP Slimstat, Update Immediately</a><br />\n<a title=\"https://poststatus.com/twitter-official-plugin-for-wordpress/\" href=\"https://poststatus.com/twitter-official-plugin-for-wordpress/\">Twitter Releases Official WordPress Plugin</a><br />\n<a title=\"https://story.am/\" href=\"https://story.am/\">Story.am Launches to Founders</a><br />\n<a title=\"http://central.wordcamp.org/schedule/\" href=\"http://central.wordcamp.org/schedule/\">Upcoming WordCamps Schedule</a></p>\n<h2>Plugins Picked By Marcus:</h2>\n<p><a title=\"https://wordpress.org/plugins/woocommerce-role-based-price/\" href=\"https://wordpress.org/plugins/woocommerce-role-based-price/\">Woo Commerce Role Based Price</a> extends the popular eCommerce plugin Woo Commerce, so that products can be offered at different prices for different customer groups.</p>\n<p><a title=\"https://wordpress.org/plugins/better-code-editor/\" href=\"https://wordpress.org/plugins/better-code-editor/\">Better Code Editor</a> adds line numbers, error detection, and a choice of 28 different themes to use in the Plugin and Theme editors.</p>\n<p><a title=\"https://wordpress.org/plugins/wprecovery/\" href=\"https://wordpress.org/plugins/wprecovery/\">WPRecovery</a> is a WordPress recovery manager, that will get your WordPress Site back up and running if it stops working correctly.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, March 4th 9:30 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\" target=\"_blank\">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href=\"http://www.wptavern.com/feed/podcast\" target=\"_blank\">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\" target=\"_blank\">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #181:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Feb 2015 08:41:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Matt: Matt Report Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44723\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"http://ma.tt/2015/02/matt-report-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:254:\"<p>As a good follow-up to the <a href=\"http://fourhourworkweek.com/2015/02/09/matt-mullenweg/\">podcast with Tim the other week</a>, I did aÂ <a href=\"https://mattreport.com/interview-matt-mullenweg/\">podcast with Matt Medeiros of the Matt Report</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Feb 2015 07:48:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: Plugins on WordPress.org Now Show More Accurate Ratings Data\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39605\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"http://wptavern.com/plugins-on-wordpress-org-now-show-more-accurate-ratings-data\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3951:\"<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/RatingsFeaturedImage.png\" rel=\"prettyphoto[39605]\"><img class=\"size-full wp-image-39611\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/RatingsFeaturedImage.png?resize=641%2C331\" alt=\"Ratings Featured Image\" /></a>photo credit: <a href=\"http://www.flickr.com/photos/9555503@N07/5096020716\">Rating</a> &#8211; <a href=\"https://creativecommons.org/licenses/by-sa/2.0/\">(license)</a>\n<p>Those who host plugins in the <a title=\"https://wordpress.org/plugins/\" href=\"https://wordpress.org/plugins/\">WordPress plugin directory</a> may have noticed a change to their plugin&#8217;s ratings. That&#8217;s because the ratings system has been reset and rebuilt by Samuel &#8220;Otto&#8221; Wood. The ratings now correspond exactly with reviews. According to Wood, the change has been two and a half years in the making:</p>\n<blockquote><p>Back when we launched the review system 2.5 years ago, we tied ratings to reviews. However, up until that point, we had existing ratings in the system. At the time, some argued that the ratings should be wiped out and everybody start fresh. I argued for the opposite, that we should leave the existing ratings in place until such time as we had enough reviews in the system to build up a good body of ratings.</p></blockquote>\n<p>A few weeks ago, Wood was checking out the ratings for the new WordPress theme directory when he noticed there were over 150K reviews. &#8220;Out of those 150K reviews, less than 10K are for themes&#8221; Wood said. This was enough to initiate the change and remove ratings not attached to a review. Since the system was rebuilt, some plugins have experienced 1 and 5 star <a title=\"https://wordpress.org/support/topic/star-rating-of-our-plugin-has-changed-overnight-1-star-and-5-star-look-switched?replies=2&view=all#post-6614288\" href=\"https://wordpress.org/support/topic/star-rating-of-our-plugin-has-changed-overnight-1-star-and-5-star-look-switched?replies=2&view=all#post-6614288\">rating swings,</a> while plugins like <a title=\"https://wordpress.org/plugins/wp-e-commerce/\" href=\"https://wordpress.org/plugins/wp-e-commerce/\">WP eCommerce</a> have seen its average rating rise from 2.9 to 3.4 stars.</p>\n<blockquote class=\"twitter-tweet\" width=\"550\"><p>That means <a href=\"https://twitter.com/wpecommerce\">@wpecommerce</a>, which had been at a rating of 2.8 for years, and more recently 2.9 &#8211; is now 3.4 stars.&#10;&#10;That feels good :)</p>\n<p>&mdash; Justin Sainton (@JS_Zao) <a href=\"https://twitter.com/JS_Zao/status/570739795405750272\">February 26, 2015</a></p></blockquote>\n<p></p>\n<p>In addition to displaying more accurate data, review spam has been neutralized. Review spam has been a serious problem for the past several years. According to Otto, this is no longer the case:</p>\n<blockquote><p>Ask any of the moderation team how many duplicate accounts they&#8217;ve seen to vote up their plugin and down those of competitors. Even though the reviews were removed, until yesterday, the ratings made by those accounts remained. This is no longer the case, and the ratings made by those spam accounts has now been effectively neutralized.</p></blockquote>\n<p>In summary, ratings and averages now reflect the most accurate data from the point in time reviews were introduced. Spam and fraudulent data hasn&#8217;t been lost or deleted but rather ignored from influencing the data set. Ratings that were added before mandatory reviews are also ignored.</p>\n<p>By waiting two and a half years, Wood has avoided resetting the entire system which would have caused everyone to start from zero. This way, authors are able to maintain their ratings and reviews without starting from scratch. If you host a plugin on the <a title=\"https://wordpress.org/plugins/\" href=\"https://wordpress.org/plugins/\">WordPress plugin directory</a>, let us know if your ratings changed, especially the average.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Feb 2015 06:39:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WPTavern: WordPress.comâ€™s REST API Driven Post Editor Proves Speed Matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39560\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"http://wptavern.com/wordpress-coms-rest-api-driven-post-editor-proves-speed-matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5647:\"<p>In the last year or so, WordPress.com has been experimenting with <a title=\"https://en.forums.wordpress.com/topic/new-post-editor-improvements?replies=12\" href=\"https://en.forums.wordpress.com/topic/new-post-editor-improvements?replies=12\">a new post editor</a>. As a user of WordPress.com, I clicked the add new post button and was shocked to discover an entirely different interface than what I&#8217;m used to. Continuously pushing improvements across the platform with little to no announcement and measuring feedback is WordPress.com&#8217;s signature development strategy.</p>\n<p>Shortly after its release, users <a title=\"https://en.forums.wordpress.com/tags/beep-beep-boop\" href=\"https://en.forums.wordpress.com/tags/beep-beep-boop\">created support requests</a> to offer feedback. Dealing with change is hard, but it&#8217;s even more difficult when it goes unannounced. After receiving a ton of feedback, the team eventually added the option for users to switch back to the classic editor. Since its launch, I&#8217;ve found myself getting used to the new editor, but there are a couple of quirks that need to be addressed.</p>\n<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/WPdotComNewPostEditor.png\" rel=\"prettyphoto[39560]\"><img class=\"wp-image-39562 size-full\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/WPdotComNewPostEditor-e1424904139346.png?resize=1025%2C434\" alt=\"New WordPress.com Editor\" /></a>New WordPress.com Editor\n<h2>Speed</h2>\n<p>Depending on when I create a new post, I&#8217;ll see a &#8220;beep beep, boop&#8221; loading message for a few seconds. The longest I&#8217;ve seen the message is around 10 seconds. The post editor is built on top of the WordPress.com REST API and depending on traffic, server resources, etc., the API calls take longer than normal to process.</p>\n<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/WPDotComBeepBeepBoop.png\" rel=\"prettyphoto[39560]\"><img class=\"size-full wp-image-39594\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/WPDotComBeepBeepBoop.png?resize=445%2C347\" alt=\"Beep Beep Boop\" /></a>Beep Beep Boop\n<p>If it takes more than a few seconds to load the editor, that&#8217;s too long. With all of the server resources that make up the WordPress.com infrastructure, I expect things to load quickly. In reality, I shouldn&#8217;t see a loading screen.</p>\n<h2>Creating Content</h2>\n<p>Since the visual editor inherits most of the features found in the self-hosted version of WordPress, writing content is generally the same experience. However, one thing I&#8217;ve noticed is that, more often than not, the text area doesn&#8217;t expand to the bottom of the page. As I fill the text area with content, it doesn&#8217;t automatically expand. A quick fix is to reload the entire page by clicking the save draft button. Once I do this, the text area expands to take up the full-height of the browser window.</p>\n<p>Instead of having separate meta boxes for each task, some of them have been combined like categories and tags. The design of the publish meta box is a major improvement compared to the self-hosted version. It has a cleaner look and seems easier to use.</p>\n<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/WPdotComNewEditorMetaBoxes.png\" rel=\"prettyphoto[39560]\"><img class=\"size-full wp-image-39563\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/WPdotComNewEditorMetaBoxes.png?resize=1025%2C495\" alt=\"New Post Editor Meta Boxes\" /></a>New Post Editor Meta Boxes\n<p>One of the things I like most about the new editor is that it&#8217;s distraction-free by default. The surrounding admin elements in the classic editor are gone, allowing me to concentrate on writing. Meta boxes are shown but I don&#8217;t see them as distractions. The new editor also doesn&#8217;t waste valuable screen real estate showing admin notices, that I still haven&#8217;t figured out how to dismiss.</p>\n<a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/WPdotComClassicEditorAdminNotices.png\" rel=\"prettyphoto[39560]\"><img class=\"size-full wp-image-39566\" src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/WPdotComClassicEditorAdminNotices.png?resize=1025%2C498\" alt=\"Admin Notices That Never Go Away!\" /></a>Admin Notices That Never Go Away!\n<h2>API Driven Interfaces Need to be Fast</h2>\n<p>The new editor is a real world example of an alternative publishing interface built using the <a title=\"https://developer.wordpress.com/docs/api/\" href=\"https://developer.wordpress.com/docs/api/\">WordPress.com REST API</a>. The biggest take away for me from using the new editor is how important speed is. As work continues on the <a title=\"http://wptavern.com/excellent-primer-on-the-wordpress-rest-api-project\" href=\"http://wptavern.com/excellent-primer-on-the-wordpress-rest-api-project\">REST API project for the self-hosted version</a> of WordPress, which will likely lead to an explosion of alternative publishing interfaces, I think it&#8217;s important for developers to consider how to make things as fast as possible. It doesn&#8217;t matter how nice the interface is if the API isn&#8217;t fast enough and ruins the user experience.</p>\n<p>After forcing myself to use the new editor for a few months, I rarely use the classic editor. It&#8217;s definitely not the ideal interface for everyone which is why I&#8217;m glad the team decided not to make it the only interface available. It has a few quirks, but for the most part, I don&#8217;t mind using it. If you use WordPress.com, let us know what you think of the new editor in the comments.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Feb 2015 00:26:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"WPTavern: Roots WordPress Starter Theme Rebrands as Sage with 8.0 Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39524\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"http://wptavern.com/roots-wordpress-starter-theme-rebrands-as-sage-with-8-0-release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2628:\"<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/sage.jpg\" rel=\"prettyphoto[39524]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/sage.jpg?resize=729%2C336\" alt=\"sage\" class=\"aligncenter size-full wp-image-39578\" /></a></p>\n<p>The Roots starter theme for WordPress has rebranded as &#8220;Sage&#8221; with its <a href=\"https://roots.io/new-website-sage-and-the-future/\" target=\"_blank\">8.0.0 release</a> today. Roots project creator Ben Word <a href=\"http://wptavern.com/roots-starter-theme-for-wordpress-will-become-framework-agnostic-in-2015\" target=\"_blank\">announced</a> last year that he planned to change the theme to be framework agnostic in 2015. This release is the first step towards that goal.</p>\n<p>Fans of the starter theme appreciate its cleaner HTML, cleaner script output, and its unique theme wrapper method for handling template markup. Version 8.0 introduces a new frontend workflow that uses <a href=\"http://gulpjs.com/\" target=\"_blank\">Gulp</a> instead of Grunt:</p>\n<ul>\n<li>Write stylesheets with Sass or Less</li>\n<li>Assets from Bower packages (CSS, JS, fonts) are automatically added to your theme assets</li>\n<li>JSON file based asset pipeline that allows you to customize your compiled CSS and JS files</li>\n<li>Replaced LiveReload with BrowserSync, making your workflow faster by synchronizing interactions across multiple devices</li>\n</ul>\n<p>Version 8.0 also drops IE8 support and raises the minimum PHP version requirement of PHP 5.4+. &#8220;We&#8217;re not going to let the WordPress minimum requirement of 5.2 hold us back from using short array syntax, short echo syntax, and namespaces,&#8221; Word said.</p>\n<p>Now that Sage 8.0 is available, Word is concentrating his efforts on developing a Yeoman generator for the starter theme, which will allow users to integrate their desired frontend framework.</p>\n<p>&#8220;Right now you can fairly easily use Bootstrap Sass instead of Less, swap out Bootstrap for another framework, or use no framework at all,&#8221; he said. &#8220;With a Yeoman generator you&#8217;ll be able to select from options to have your starter theme built how you like it from the beginning.&#8221;</p>\n<p>Going framework agnostic will open up the Roots user base to more developers who may have previously been turned off by using Bootstrap with their projects. The rebranding to Sage allows Word and contributors to use the <a href=\"https://roots.io/\" target=\"_blank\">Roots</a> organization to further expand the product lineup that will eventually subsidize the continual development of the open source starter theme.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Feb 2015 23:06:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"Post Status: Twitter introduces an official plugin for WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://poststatus.com/?p=8875\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://poststatus.com/twitter-official-plugin-for-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3993:\"<p>&#8220;About time&#8221; is probably what comes to mind. Twitter <a href=\"https://blog.twitter.com/2015/twitter-plugin-wordpress\">has announced an official WordPress plugin to support their platform</a>. It&#8217;s available now <a href=\"https://wordpress.org/plugins/twitter/\">on the WordPress plugin repo</a>.</p>\n<p>They just released the plugin a couple of hours ago. It&#8217;s actually takingÂ the place of an existing plugin, which was wiped from the plugin repo <a href=\"https://plugins.trac.wordpress.org/browser/twitter/trunk/readme.txt?rev=1086703\">two weeks ago by Otto Wood</a>. That&#8217;s what will account for the 150,000+ downloads upon initial release. Otto has now reset the count in the database, so the numbers are more realistic.</p>\n<p>I reached out to Otto to see how these decisions are made. Otto is one of the managers of the repo.</p>\n<blockquote>\n<p class=\"p1\"><span class=\"s1\">A twitter representative emailed us, sent us the plugin, and asked to have the &#8220;twitter&#8221; name in the directory. We reviewed the plugin as per normal, found no issues with it, and decided to give them the name because, after all, they are indeed &#8220;Twitter&#8221; and have the rights to their own name.</span></p>\n<p class=\"p1\"><span class=\"s1\">The previous plugin occupying that space had been inactive for a long period of time and had no real existing installations to speak of anymore. Additionally, the plugin had been closed for quite some time previous to that.</span></p>\n<p class=\"p1\"><span class=\"s1\">So giving them their own name is pretty much a no-brainer. <img src=\"https://poststatus.com/wp-includes/images/smilies/icon_smile.gif\" alt=\":)\" class=\"wp-smiley\" /></span></p>\n</blockquote>\n<p class=\"p1\">Techcrunch, and likely others, are misreporting the plugin&#8217;s immediate popularity, as those numbers wereÂ largely from the previous iteration of the plugin.</p>\n<p class=\"p1\">Twitter&#8217;s new plugin has a number of features, many of which have been implemented over the years by unofficial sources like Jetpack and Yoast.</p>\n<p class=\"p1\">For one, they have released &#8220;official&#8221; Tweet and follow buttons, along with a settings page for basic configuration.</p>\n<p class=\"p1\"><img class=\"aligncenter size-large wp-image-8876\" src=\"https://poststatus.com/wp-content/uploads/2015/02/twitter-share-752x400.png\" alt=\"twitter-share\" width=\"752\" height=\"400\" /></p>\n<p class=\"p1\"><img class=\"aligncenter size-large wp-image-8877\" src=\"https://poststatus.com/wp-content/uploads/2015/02/twitter-settings-752x728.png\" alt=\"twitter-settings\" width=\"752\" height=\"728\" /></p>\n<p class=\"p1\">Also, there&#8217;s a metabox on post edit that allows you to customize the predefined Tweet and Twitter cards, which is quite nice.</p>\n<p class=\"p1\"><img class=\"aligncenter size-large wp-image-8878\" src=\"https://poststatus.com/wp-content/uploads/2015/02/twitter-sharing-752x365.png\" alt=\"twitter-sharing\" width=\"752\" height=\"365\" /></p>\n<p class=\"p1\">They also have the ability to customize the colors for embedded tweets inside WordPress content.</p>\n<p class=\"p1\">According to the Twitter blog announcement, there is also integration for Twitter ads and analytics tracking, which are both nice features for publishers.</p>\n<p class=\"p1\">The one thing I notice is not in this plugin is any authentication feature. Perhaps it&#8217;ll come in the future, but right now you wouldn&#8217;t be able to auto-tweet new posts or perform other actions that would require Twitter Apps and authentication on a per-site basis. This is the type of functionality that Jetpack has long performed, using the WordPress.com authentication.</p>\n<p class=\"p1\">I&#8217;m pretty happy to finally see an official Twitter plugin. The source <a href=\"https://github.com/twitter/wordpress\">code is on Github</a>, and the plugin is released with the MIT license. At a very quick glance, it seems quite well done and I&#8217;m looking forward to playing with it some Â more.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Feb 2015 21:27:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"WPTavern: Envato Continues to Rake in the Cash from WordPress Themes Packaged as Complete Website Solutions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39519\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"http://wptavern.com/envato-continues-to-rake-in-the-cash-from-wordpress-themes-packaged-as-complete-website-solutions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7849:\"<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/envato.jpg\" rel=\"prettyphoto[39519]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/envato.jpg?resize=697%2C314\" alt=\"envato\" class=\"aligncenter size-full wp-image-29973\" /></a></p>\n<p>This week Envato <a href=\"http://inside.envato.com/pressnomics/\" target=\"_blank\">published</a> stats on how WordPress product sellers are doing within its economy. Theme authors make up the bulk of WordPress-based earnings on its marketplace and continue to dominate sales.</p>\n<p>Inspired by his interaction with the WordPress business community at Pressnomics, Ben Chan, director of Growth and Revenue at Envato, penned an insider brief about the WordPress segment of Envato&#8217;s economy. The post makes it abundantly clear why theme authors continue to sell their products on Themeforest, despite the marketplace&#8217;s poor reputation among WordPress consultants.</p>\n<p>Envato&#8217;s steady pipeline of traffic is the deciding factor for many commercial theme authors. <strong>&#8220;In September 2014, ThemeForest was the 88th most trafficked website in the world (according to Alexa.com), at the time ahead of Netflix,&#8221;</strong> Chan said. &#8220;The traffic it receives is more than just eyeballs; these are buyers looking to purchase a theme and many are introduced to WordPress for the first time.&#8221;</p>\n<p>This volume has made it possible for 31 authors to sell more than $1 million dollars worth of products through Envato. <strong>&#8220;We have authors earning tens of thousands of dollars from our various product types, but itâ€™s WordPress authors who currently dominate our Power Elite wall of fame by holding 30 of the 31 Power Elite spots.&#8221;</strong></p>\n<p>Competition is fierce among WordPress themes, yet even moderately competitive themes can make a decent chunk of change. Envato&#8217;s heavy traffic virtually guarantees sales for new theme authors. Chan reported average earning data for a single theme during a single month:</p>\n<ul>\n<li>50% of all WordPress themes on ThemeForest have made at least $1,000 in a month.</li>\n<li>25% of all WordPress themes on ThemeForest have made at least $2,500 in a month.</li>\n<li>15% of WordPress themes have made at least $5,000 in a month.</li>\n<li>7% have made at least $7,500 in a month.</li>\n<li>5% have made at least $10,000 in a month.</li>\n</ul>\n<p>Theme authors who make their products responsive and compatible with WooCommerce and WPML tend to have much higher earnings, which indicates that people are building WordPress sites that will be optimized for mobile traffic and global commerce.</p>\n<h3>Poor Standards Lead to Security Vulnerabilities and Loss of Data Portability</h3>\n<p>Envato remains the dominant marketplace for commercial WordPress themes, despite rampant security concerns surrounding its products on a regular basis. Last September, <a href=\"http://wptavern.com/1000-wordpress-themes-on-envato-market-potentially-affected-by-revolution-slider-security-vulnerability\" target=\"_blank\">1,000+ Envato products were affected by the Slider Revolution security vulnerability</a>. This particular debacle was fueled by theme authors who were lax in patching their products, as well as Envato&#8217;s poor standards, which continue to allow authors to bundle plugins with themes.</p>\n<p>If Envato required theme authors to adhere to industry best practices by clearly separating their theme and plugin products, the company would have had no need to publish a list of 1,000+ themes potentially affected by a vulnerability that was being <a href=\"http://wptavern.com/100000-wordpress-sites-compromised-using-the-slider-revolution-security-vulnerability\" target=\"_blank\">actively exploited since its disclosure</a>.</p>\n<p>Obviously, the data presented in Chan&#8217;s insider brief was designed to convince more authors to sell on Themeforest. Several of the theme product examples he showcases are packed full of <a href=\"http://wptavern.com/why-wordpress-theme-developers-are-moving-functionality-into-plugins\" target=\"_blank\">functionality that belongs in plugins</a>, i.e. automotive listings, filterable inventory, custom categories and taxonomies, etc. The products do not clearly differentiate what functionality is included in a plugin vs. the theme itself.</p>\n<p>Additionally, many of these top-selling themes offer accompanying plugins that are only compatible with that specific theme, a desperately myopic development practice rampant among Themeforest products that locks users into that theme/plugin package.</p>\n<p>What would be even more fascinating to know are the stats on WordPress theme products that do not bundle any plugins whatsoever. How well are the products doing that are pure themes with a clear separation from the plugins they support? Where are the stats for themes that absolutely guarantee unobstructed <a href=\"http://wptavern.com/wordpress-theme-shops-move-towards-preserving-data-portability\" target=\"_blank\">data portability</a> for customers?</p>\n<p>Envato theme authors are making large sums of cash by selling themes that are packaged as complete solutions for online businesses, because that&#8217;s what consumers have been trained to expect &#8211; the bigger the package, the more appealing the product. This can cause serious problems with data portability for customers down the road and remains a continual source of frustration for consultants who are hired to support poorly built Envato products.</p>\n<a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/avada.jpg\" rel=\"prettyphoto[39519]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/avada.jpg?resize=599%2C269\" alt=\"Source: Avada theme on Themeforest\" class=\"size-full wp-image-39557\" /></a>Source: <a href=\"http://themeforest.net/item/avada-responsive-multipurpose-theme/2833226\">Avada theme on Themeforest</a>\n<p>The marketplace&#8217;s loose product standards allow theme product authors to thrive on selling full website solutions, as Justin Tadlock discovered in his <a href=\"http://justintadlock.com/archives/2013/09/11/the-themeforest-experiment-one-year-later\" target=\"_blank\">Themeforest experiment</a>. Envato continues to rake in the cash from products that undermine best practices designed to protect users:</p>\n<blockquote><p>ThemeForest is in the business of selling WordPress themes. Selling anything else is underhanded at best and false advertising at worst.</p>\n<p>If you want to sell a â€œWeb site solutionâ€ or whatever you want to call it, youâ€™re selling on the wrong marketplace. Go create your own site and sell these applications for WordPress.</p></blockquote>\n<p>If the marketplace were to change its standards and encourage theme authors to build themes that respect WordPress&#8217; plugin system, it would most certainly result in a loss of profit. Envato currently has little incentive to move in this direction. As with the case of <a href=\"http://notes.envato.com/general/100-gpl-option-now-available-plus-woothemes-arrives\" target=\"_blank\">GPL licensing options</a>, the company historically drags its feet until forced to comply with most basic requirements.</p>\n<p>The WordPress community continues to pressure Envato to hold theme and plugin authors to standards that would better ensure the security and performance of users websites, but Envato isn&#8217;t likely to enforce stricter standards anytime soon.</p>\n<p>The company continues to parade its top sellers as incentive for new authors to bring their products into the marketplace. Changing theme product standards would require the restructuring of virtually all of its top-selling products. Envato&#8217;s bottom line will continue to drive its standards until either the market or the community force the company to change.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Feb 2015 19:25:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"WPTavern: High Risk Security Vulnerability Discovered in WP Slimstat, Update Immediately\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39512\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"http://wptavern.com/high-risk-security-vulnerability-discovered-in-wp-slimstat-update-immediately\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2205:\"<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/WPSlimStatFeaturedImage.png\" rel=\"prettyphoto[39512]\"><img class=\"aligncenter size-full wp-image-39513\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/WPSlimStatFeaturedImage.png?resize=835%2C265\" alt=\"WP Slim Stat Featured Image\" /></a></p>\n<p>If you use <a title=\"https://wordpress.org/plugins/wp-slimstat/\" href=\"https://wordpress.org/plugins/wp-slimstat/\">WP Slimstat</a>, you&#8217;ll want to make sure you&#8217;re using version 3.9.6 or later as Sucuri has <a title=\"http://blog.sucuri.net/2015/02/security-advisory-wp-slimstat-3-9-5-and-lower.html\" href=\"http://blog.sucuri.net/2015/02/security-advisory-wp-slimstat-3-9-5-and-lower.html\">discovered a severe SQL injection vulnerability</a> in versions 3.9.5 and lower. WP Slimstat is an analytics plugin for WordPress that provides real-time monitoring, heatmaps, and other features to monitor website data. According to Sucuri, the vulnerability can be used by any visitor browsing a vulnerable website:</p>\n<blockquote><p>This bug can be used by any visitor browsing the vulnerable website. If your website uses a vulnerable version of the plugin, youâ€™re at risk. Successful exploitation of this bug could lead to Blind SQL Injection attacks, which means an attacker could grab sensitive information from your database, including username, (hashed) passwords and, in certain configurations, WordPress Secret Keys (which could result in a total site takeover).</p></blockquote>\n<p>Although the author has <a title=\"https://wordpress.org/plugins/wp-slimstat/changelog/\" href=\"https://wordpress.org/plugins/wp-slimstat/changelog/\">patched the security vulnerability</a>, he offers some additional advice.</p>\n<blockquote><p>If you are using a caching plugin, please flush its cache so that the tracking code can be regenerated with the new key. Also, if you are using Slimstat to track external websites, please make sure to replace the tracking code with the new one available under Settings &gt; Advanced.</p></blockquote>\n<p>Spread the news and to be protected from the vulnerability, make sure any site using WP Slimstat is updated to the latest version.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Feb 2015 08:22:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Matt: On WordPress.com and Bitcoin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44713\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"http://ma.tt/2015/02/on-wordpress-com-and-bitcoin/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3656:\"<p>There&#8217;s been some controversy and discussion about the fact <a href=\"http://www.coindesk.com/wordpress-removes-bitcoin-payment-option/\">that WordPress.com no longer support Bitcoin in our new checkout flow on signup</a>. (It&#8217;s still there in some other flows.)</p>\n<p>Since there has been a lot of discussion about it, I wanted to share directly some of the answers I had to Grace&#8217;s follow-up questions, since I&#8217;m not sure if they&#8217;ll be published and if they are it probably won&#8217;t be in their entirety.</p>\n<blockquote><p>In regards to your future plans for the currency, is bitcoin support definitely returning or is that just a possibility at this point?</p></blockquote>\n<p>Weâ€™re big fans of Bitcoin and hope to support it again in the future, for all of the reasons that we originally supported it in 2012, which you can read about here:</p>\n<p><a href=\"http://en.blog.wordpress.com/2012/11/15/pay-another-way-bitcoin/\" rel=\"nofollow\">http://en.blog.wordpress.com/2012/11/15/pay-another-way-bitcoin/</a></p>\n<blockquote><p>Is there anything that will influence the outcome of this decision?</p></blockquote>\n<p>No, it is simply a matter of development resources, which are especially scarce for us right now as weâ€™re trying to keep up with growth.</p>\n<blockquote><p>You mention that bitcoin has low volume compared to other payment methods, has this always been the case? Has its volume share changed over time?</p></blockquote>\n<p>The volume has been dropping since launch, in 2014 it was only used about twice a week, which is vanishingly small compared to other methods of payment we offer. We supported Bitcoin for philosophical reasons, not commercial ones.</p>\n<blockquote><p>What are the key aims of your checkout process changes?</p></blockquote>\n<p>Our goals areÂ twofold: to refactor the code behind it which has parts that are over five years old and has grown very complex, and to make it faster and easier for people to buy our services.</p>\n<blockquote><p>When you first launched bitcoin payments WordPressâ€™ blog post praised it as an inclusive payment method for those who cannot use PayPal. Do you worry that these people will now be excluded from the platform?</p></blockquote>\n<p>Of course, but either that number of people turned out to be smaller than we expected or they found other ways to pay. Since itâ€™s so few people overall Iâ€™m happy to extend peopleâ€™s subscription for a year, as <a href=\"http://www.coindesk.com/wordpress-removes-bitcoin-payment-option/#comment-1872904302\">I offered in your comments section</a>.</p>\n<blockquote><p>What does being a â€˜big believerâ€™ in bitcoin mean to you?</p></blockquote>\n<p>I believe Bitcoin or some other blockchain-like system will be the basis of the majority of financial transactions in the future, from small remittances to multi-billion dollar corporate acquisitions. I think transaction costs should follow Mooreâ€™s law, and I donâ€™t think weâ€™re going to get there with the centralized gateways that currently account for the overwhelming majority of transactions. I also personally hold Bitcoin, Iâ€™m an advisor to <a href=\"https://www.stellar.org/\">Stellar.org</a>, and my friends make fun of me for bringing up Bitcoin and the blockchain in unrelated conversations.</p>\n<blockquote><p>The bitcoin option still appears on the â€˜WP Adminâ€™ screen but not on â€˜My Upgradesâ€™. Is this part of the phase out, or likely to stay this way?</p></blockquote>\n<p>Thatâ€™s on the old code base, and will be available for a short while if any current Bitcoin subscribers want to renew while the option is still available.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Feb 2015 05:20:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WPTavern: WordPress for iOS 4.8 Released, Adds Visual Editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39488\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"http://wptavern.com/wordpress-for-ios-4-8-released-adds-visual-editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2274:\"<p>WordPress for iOS 4.8 is <a title=\"https://itunes.apple.com/us/app/wordpress/id335703880?mt=8\" href=\"https://itunes.apple.com/us/app/wordpress/id335703880?mt=8\">available on the app store</a> and includes a few notable features. The app now sports a visual editor providing a <em>what you see is what you get </em>experience. Prior to 4.8, the editor was stuck in HTML mode making it hard to read and write content.</p>\n<p>The editor contains the most commonly used formatting tools and just like the desktop version of WordPress, includes a toggle to switch between HTML and Visual editing mode. There&#8217;s also an image size selector where you can choose between Thumbnail, Medium, Large, or Full-size.</p>\n\n<a href=\"http://i0.wp.com/wptavern.com/wordpress-for-ios-4-8-released-adds-visual-editor/img_5831.png\" rel=\"prettyphoto[39488]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/IMG_5831.png?fit=500%2C500\" class=\"attachment-large\" alt=\"WordPress For iOS 4.8 HTML Editor\" /></a>\n<a href=\"http://i0.wp.com/wptavern.com/wordpress-for-ios-4-8-released-adds-visual-editor/img_5830.png\" rel=\"prettyphoto[39488]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/IMG_5830.png?fit=500%2C500\" class=\"attachment-large\" alt=\"WordPress For iOS 4.8 Visual Editor\" /></a>\n<a href=\"http://i2.wp.com/wptavern.com/wordpress-for-ios-4-8-released-adds-visual-editor/img_5833.png\" rel=\"prettyphoto[39488]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/IMG_5833.png?fit=500%2C500\" class=\"attachment-large\" alt=\"WordPress For iOS 4.8 Post Preview Screen\" /></a>\n<a href=\"http://i0.wp.com/wptavern.com/wordpress-for-ios-4-8-released-adds-visual-editor/img_5832.png\" rel=\"prettyphoto[39488]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/IMG_5832.png?fit=500%2C500\" class=\"attachment-large\" alt=\"WordPress For iOS Image Size Selector\" /></a>\n\n<p>Although I struggled with adding block quotes, the visual editor is a nice departure from HTML mode. I find it convenient to format content as I&#8217;m writing versus when the post is completed. Overall, 4.8 is a nice release and I think users are going to enjoy the new visual editor. After you upgrade to 4.8, let us know what you think in the comments.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Feb 2015 20:27:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"Post Status: The problem of link rot and data loss\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://poststatus.com/?p=8859\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://poststatus.com/link-rot/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8505:\"<p>Websites come and go. With them, typically goes their data. This is often called &#8220;link rot&#8221;, when the content in question was also linked to from another source. SometimesÂ I don&#8217;t mind too much, because I&#8217;m not terribly invested in that content. However, there are times where content has a relevance in news matters, or as a significant historical timeline.</p>\n<p>Sometimes, a website where I contributed content goes away or atrophies&#8211; in some form or another &#8212; and it makes me sad to see my content go down with the ship.</p>\n<p>Three places where I contributed much of my early WordPress content have either lost data, had data corrupted, or disappeared entirely. Each makes me sad.</p>\n<p>Some of my earliest WordPress related words were typed out on <a href=\"http://wptavern.com\">WP Tavern</a>&#8216;s forums, <a href=\"http://themehybrid.com\">Theme Hybrid</a>&#8216;s (private) forums, or <a href=\"http://wpcandy.com\">WPCandy</a>. Each situation is different. WP Tavern&#8217;s forums are totally gone, though I&#8217;m told there is an offline backup, meaning they could be brought back alive. <del>Theme Hybrid recently deleted all old forum data, though this forum was private and the most excusable of the three in my opinion.</del> <em>(<strong>edit</strong>: as Sami notes in the comments, the archive was kept. I just didn&#8217;t see it.)</em> And WPCandy, while not gone, seems it could disappear any day &#8212; and I wrote something like 130-140 blog posts over there. I&#8217;d be incredibly sad to see WPCandy disappear forever.</p>\n<p>Stories like these aren&#8217;t unique to me. All of us that write or comment or participate in online communities have similar stories. It appears that data loss is just a thing we have to live with in the modern age. I know a friend of mine, Siobhan McKeown, has many times struggled with finding old content for the History of WordPress book she is finishing writing.</p>\n<h3>Fighting link rot</h3>\n<p>Why is this important and what can we do about it? Well, there are a number of resources that can be helpful.</p>\n<p>The first and obvious method for fighting link rot is <a href=\"https://archive.org/\">archive.org</a>, the project that is archiving as much of the web as possible to preserve it for future generations. Archive.org is outstanding, and it is a huge project on a grand scale. The team there makes great efforts to document important websites, and automatically attempts the rest.</p>\n<p>The problem is, with many smaller websites it may or may not be successful, or snapshots of the website may be dated or not include everything. Furthermore, if the website isn&#8217;t structured in a certain way or is password protected, there&#8217;s not much they can do.</p>\n<p>So, without relying on archive.org to do it for us, there are two other methods worth noting.</p>\n<h4>Manual backups</h4>\n<p>In individual communities, we can manually make the effort to backup sites that we believe are at risk. We should also contact these site owners and requests backups, even if that comes off as an affront.</p>\n<p>When Siobhan was writing the History of WordPress book, she was worried that WPCandy could go offline &#8212; as it &#8220;was becoming particularly degraded&#8221; while she was writing &#8212; so she personally scraped a backup of the site with a tool called <a href=\"http://www.sitesucker.us/home.html\">SiteSucker</a>.</p>\n<p>SiteSucker finds URLs, logs them, and backs up the source HTML. Similar work can be done with <a href=\"https://www.gnu.org/software/wget/\">wget</a>, for those that know how to utilize it. It&#8217;s my understanding that various individuals have done this with a number of other WordPress websites as well.</p>\n<p>For WordPress sites, I know WP Tavern&#8217;s forums still exist offline, and Siobhan tells me she even has a backup of the old b2 forums (the software which WordPress was forked from). I&#8217;d also guess Justin Tadlock still has a backup somewhere of his forums. I&#8217;d love to see these, and other &#8220;lost&#8221; sites have a public place where the archives can be maintained.</p>\n<h4>Self-hosted backups</h4>\n<p>Another method to fight link rot is to backup linked sourcesÂ as we create new content. Harvard&#8217;s Berkman CenterÂ is currently beta testing what will be <a href=\"http://www.niemanlab.org/2015/02/amber-a-new-tool-to-prevent-linkrot-on-websites-is-out-in-beta/\">a commercial tool, called Amber, to fight link rot</a>. In the news industry specifically, the source URLs for linked content can contain significant context for a post, making link rot on old posts particularly damaging to the piece that links them,Â assuming additional context will be available to the reader.</p>\n<p><img class=\"aligncenter size-large wp-image-8861\" src=\"https://poststatus.com/wp-content/uploads/2015/02/amber-link-rot-saver-752x396.png\" alt=\"amber-link-rot-saver\" width=\"752\" height=\"396\" /></p>\n<p>Amber stores the source HTML, much like Archive.org, wget, or SiteSucker, but stores it on the host site&#8217;s servers. Meaning, if I were using it here right now, each link in this post would have an associated HTML document on my server to preserve the link and the content therein. The tool then detects 404s if the link rots in the future, and offers up a cached version from my own server.</p>\n<p>Obviously a tool like Amber is not a small investment. It would require news organizations to have more server resources at the least, but it would be an important investment to protect the integrity of source content.</p>\n<p>The <a href=\"http://amberlink.org/\">Amber website</a> cites that 49% of links in United States Supreme Court decisions are dead, and that over 135,000 Wikipedia source links are dead. These numbers alone are staggering, and prove a very good point. I can&#8217;t imagine what the ratios of dead links are for longstanding newspapers like The New York Times, and others.</p>\n<p>Amber will be available for WordPress and Drupal, or most platforms that support Apache or Nginx. I&#8217;m really, really excited about thisÂ tool. I know it will cost money (in resources at least, as I&#8217;m not sure if it&#8217;ll be a commercial product), but if enough people adopt it, it could really help save a lot of future data. I&#8217;m very interested in it for Post Status, as a number of blogs and companies I cover go away if they are not successful upon launch (when I often cover them).</p>\n<h3>Why fighting link rot is important</h3>\n<p><span class=\"pullquote alignright\">We don&#8217;t know what items being published today will be important tomorrow. </span>Â What we do know is that future politicians, world leaders, and to-be significant individuals and organizations are publishing online today.Â And when these people or organizations are in significant positions, we will want to know their pasts and opinions.</p>\n<p>Perhaps more importantly, cultures, subcultures, and events being documented online may not have any offline version. The web has a beautiful advantage over other mediums like television and newspapers, in that storage of historical data is much simpler, and easier to search.Â The web enablesÂ our timeframe of life on earth to be the most documented in all of human existence.</p>\n<p>It is our responsibility as publishers to protect our ownÂ content, but also the content of others. I&#8217;m reminded how easy it is now because of how hard such efforts are on other mediums. I once read a <a href=\"http://www.fastcompany.com/3022022/the-incredible-story-of-marion-stokes-who-single-handedly-taped-35-years-of-tv-news\">story about Marion Stokes</a>Â (also, <a href=\"http://www.onthemedia.org/story/tldr-9-second-life-marion-stokes/\">NPR version</a>), who recorded 35 years of TV news on her own &#8212; news that would have been lost without her monumental and perhaps compulsive efforts.</p>\n<p>We also have a responsibility as site owners to keep our content up even past when we may hang up our hats. Within our various niche communities, we should be making efforts to document and keep the past.</p>\n<p>In the case of WordPress, we&#8217;re cataloguing software that powers nearly 25% of the web, and growing. There are important stories being told today that may be educational to future publishers, documentarians, or simply interested individuals. You never know when our contentÂ will matter again, but it might, and therefore we should take strides to keep it.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Feb 2015 18:41:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: Press This Bookmarklet Generates Concerns of Copyright Infringement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39473\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"http://wptavern.com/press-this-bookmarklet-generates-concerns-of-copyright-infringement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5102:\"<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/PressThisFeaturedImage.png\" rel=\"prettyphoto[39473]\"><img class=\"aligncenter size-full wp-image-39478\" src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/PressThisFeaturedImage.png?resize=836%2C266\" alt=\"Pres This Featured Image\" /></a></p>\n<p><a title=\"http://codex.wordpress.org/Press_This\" href=\"http://codex.wordpress.org/Press_This\">Press This</a> is a bookmarklet tool that was <a title=\"https://wordpress.org/news/2008/07/wordpress-26-tyner/\" href=\"https://wordpress.org/news/2008/07/wordpress-26-tyner/\">added to WordPress 2.6</a> in 2008. You can access the tool by browsing to the WordPress backend and select the Tools menu. It acts as a small app that runs in the browser to quickly share content on the web. Press This is in the process of <a title=\"https://make.wordpress.org/core/2015/02/18/press-this-revamp-merge-proposal/\" href=\"https://make.wordpress.org/core/2015/02/18/press-this-revamp-merge-proposal/\">being revamped</a> in preparation for WordPress 4.2.</p>\n<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/PressThisLocation.png\" rel=\"prettyphoto[39473]\"><img class=\"size-full wp-image-39477\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/PressThisLocation.png?resize=1010%2C227\" alt=\"Press This Location\" /></a>Press This Location\n<p>Because the bookmarklet uses content from the site being shared, it&#8217;s easy to infringe on a website&#8217;s copyrighted material. Daniel Bachhuber brought up the issue <a title=\"https://github.com/MichaelArestad/Press-This/issues/42\" href=\"https://github.com/MichaelArestad/Press-This/issues/42\">in Github</a> where active development is taking place.</p>\n<blockquote><p>I&#8217;m not the best person to comment on this, but it seems like building a tool that automatically scrapes copyrighted materials should have an upfront discussion about said legal implications, and whether this is something we should promote.</p></blockquote>\n<p>To my knowledge, this is the first time the issue has been brought up since its inclusion into core. Stephane Daury, who is one of the project&#8217;s primary contributors explains that, the tool goes through great efforts to use values clearly defined by websites.</p>\n<blockquote><p>We also (now) make a greater effort to use values the sites have clearly defined and specified as being what they want their articles and content to be represented as when shared elsewhere, by detecting Open Graph and Twitter Cards tags, etc. This includes representations for thumbnails, embeds, etc.</p></blockquote>\n<p>Although it&#8217;s not documented in the conversation on Github, <a title=\"https://github.com/MichaelArestad/Press-This/issues/42#issuecomment-74895220\" href=\"https://github.com/MichaelArestad/Press-This/issues/42#issuecomment-74895220\">Michael Arestad reached out to Paul Sieminski</a>, Automattic&#8217;s general legal counsel, and received word that, from a legal standpoint, Press This is fine. Richard Best of WP and Legal Stuff <a title=\"http://wpandlegalstuff.com/press-this-and-copyright-infringement/\" href=\"http://wpandlegalstuff.com/press-this-and-copyright-infringement/\">published a post on the issue</a> and takes a similar stance:</p>\n<blockquote><p>It seems that a person in-the-know in Automattic has commented internally (no doubt in more detail than we see in the public online discussion) that Press This is fine. I agree. I thought it might be of interest to those following this issue to explain why.</p>\n<p>The discussion revolves around the notion of â€˜authorisingâ€™ an action that amounts to copyright infringement or â€˜contributingâ€™ to infringement (similar concepts which, in different jurisdictions, are called different things). It explains why there is no such authorisation or contribution here and why, therefore, Press This is fine.</p></blockquote>\n<p>The Press this bookmarklet is a convenient way to share content on the web, but it doesn&#8217;t prevent copyright infringement from occurring. Best makes an excellent point when he says that, it&#8217;s the end user&#8217;s responsibility to make sure they&#8217;re not infringing on anyone&#8217;s copyright:</p>\n<blockquote><p>It can, of course, also be used to infringe copyright, by copying a full article without permission or copying a full size copyright image without permission but, ultimately, Press This is simply a (pretty handy) tool of convenience. Itâ€™s the userâ€™s responsibility to use Press This within the confines of copyright law (or run the risk of being accused of copyright infringement).</p></blockquote>\n<p>While Press This is a tool that makes it easy to share snippets of content on the web, it should not be used to re purpose entire articles or share full-size copyrighted images. As <a title=\"http://www.goodreads.com/quotes/709747-with-great-power-comes-great-responsibility\" href=\"http://www.goodreads.com/quotes/709747-with-great-power-comes-great-responsibility\">Voltaire once said</a>, &#8220;great power comes with great responsibility.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Feb 2015 03:37:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"WPTavern: Content Protection Plugins for WordPress Do More Harm Than Good\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39450\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"http://wptavern.com/content-protection-plugins-for-wordpress-do-more-harm-than-good\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5429:\"<a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/ContentProtectionFeaturedImage.png\" rel=\"prettyphoto[39450]\"><img class=\"size-full wp-image-39466\" src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/ContentProtectionFeaturedImage.png?resize=711%2C297\" alt=\"Content Protection Featured Image\" /></a>photo credit: <a href=\"http://www.flickr.com/photos/10583321@N06/5897893452\">Cologne &#8211; Locks</a> &#8211; <a href=\"https://creativecommons.org/licenses/by-nc-nd/2.0/\">(license)</a>\n<p>Mika Epstein, who <a title=\"http://wptavern.com/behind-the-scenes-in-the-wordpress-plugin-directory-with-mika-epstein\" href=\"http://wptavern.com/behind-the-scenes-in-the-wordpress-plugin-directory-with-mika-epstein\">helps oversee the WordPress plugin directory</a>, has published <a title=\"http://halfelf.org/2015/stop-using-copy-protection/\" href=\"http://halfelf.org/2015/stop-using-copy-protection/\">a simple request</a> to stop using copy protection. Epstein explains how copy protection degrades the user experience, makes it difficult to provide tech support, and perhaps most importantly, how they don&#8217;t work.</p>\n<p>She suggests that photographers use a watermark and not put full-size images on the web. They should also host images on cloud based services like Amazon as PHP and large image sizes don&#8217;t get along. As a last resort, she suggests DRM as an option similar to how <a title=\"http://company.gettyimages.com/license-compliance/\" href=\"http://company.gettyimages.com/license-compliance/\">Getty protects their images</a>.</p>\n<blockquote><p>As much as it pains me to say it, DRM is also a solution. So is watermarking your images. The way people like Getty protect their images is to lock it down to purchased users only. You can (fairly easily) download the smaller, sample images, but the awesome big ones are locked down.</p></blockquote>\n<p>She finishes the post by saying there&#8217;s only one way to combat content theft: don&#8217;t publish it online.</p>\n<h2>Getting Around a Copy Protection Plugin</h2>\n<p>A search for <a title=\"https://wordpress.org/plugins/search.php?q=copy+protection&sort=\" href=\"https://wordpress.org/plugins/search.php?q=copy+protection&sort=\">copy protection</a> on the WordPress plugin directory generates 271 results. I installed <a title=\"https://wordpress.org/plugins/wp-content-copy-protection/\" href=\"https://wordpress.org/plugins/wp-content-copy-protection/\">WP Content Copy Protection</a> as it&#8217;s one of the more popular options and it has a ton of features, including:</p>\n<ul>\n<li>Disables context menu (right click)</li>\n<li>Context menu is only clickable on HREFs</li>\n<li>Disables text selection and browser copy functions</li>\n<li>Disables text and image drag/drop/saving function on PC and mobile devices</li>\n<li>Javascript validation (displays error message when Javascript is disabled)</li>\n<li>Disables keyboard copy (CTRL A, C, X, U, P and S) &#8211; Windows OS</li>\n<li>Disables f-key command for accessing developer tools</li>\n<li>Uses compressed Javascript (increases load speed and reduces http requests)</li>\n<li>The image link URL is automatically removed and defaulted to the &#8216;none&#8217; setting (basic image protection)</li>\n<li>No configuration, customization or coding needed.</li>\n</ul>\n<p>As you can see, this plugin does a lot and should prevent me from easily stealing content. After installing and activating the plugin, I visited the front page of the testing site and discovered all of the usual suspects were disabled. I couldn&#8217;t right-click to view the page source or directly download an image. I opened up the <a title=\"http://getfirebug.com/\" href=\"http://getfirebug.com/\">Firebug</a> extension in FireFox and inspected the image element.</p>\n<a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/FireBugInspectedImageElement.png\" rel=\"prettyphoto[39450]\"><img class=\"size-full wp-image-39465\" src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/FireBugInspectedImageElement.png?resize=1025%2C499\" alt=\"Image Inspected With Firebug\" /></a>Image Inspected With Firebug\n<p>After inspecting the image within the post, I gained access to the direct URL in Firebug&#8217;s console. I copied and pasted the URL into a new browser window which allowed me to download the full-size image. I&#8217;m also able to inspect paragraph elements and copy those as well. If the site is using the free version of WP Content Copy Protection, I can use its RSS feed to scrape content as only the pro version removes RSS feeds.</p>\n<p>The pro version adds several features that make it much more aggressive at content protection. For instance, it has a print screen deterrent agent to prevent the use of screenshot tools to steal images. I&#8217;ve contacted the plugin author and have asked for a free trial to see if I can easily get access to protected content with the pro version. If he gives me a copy, results of the experiment will be published in a future post on the Tavern.</p>\n<p>Although copy protection plugins or copy protection in general prevents the average website visitor from being able to steal content, they come with a lot of unnecessary baggage. In essence, they do more harm than good, especially from an accessibility stand point, as common keyboard shortcuts are disabled. If you don&#8217;t want to have your content stolen online, don&#8217;t publish it.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Feb 2015 23:26:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"WPTavern: WordCamp Miami Gears Up for 6th Year with New Tracks and Workshops Planned\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39433\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"http://wptavern.com/wordcamp-miami-gears-up-for-6th-year-with-new-tracks-and-workshops-planned\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5649:\"<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/wcmia-2015.jpg\" rel=\"prettyphoto[39433]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/wcmia-2015.jpg?resize=750%2C349\" alt=\"wcmia-2015\" class=\"aligncenter size-full wp-image-39447\" /></a></p>\n<p><a href=\"http://davidbisset.com/wordcamp-miami-2015-sessions-tracks/\" target=\"_blank\">WordCamp Miami</a> is one of the largest and longest-running annual WordPress events, thanks to its dedicated organizers and volunteers. Last year, <a href=\"http://wptavern.com/recap-of-wordcamp-miami-2014\" target=\"_blank\">the event attracted 770 WordPress enthusiasts</a> from around the world. Co-organizer David Bisset expects that attendees will be in the range of 800 this year for its 6th edition.</p>\n<p>The event has sold out every year, with 250 attendees on its first run in 2010 and attendance steadily increasing every year. Organizing a successful WordCamp for more than half a decade requires organizers to go with what works and always be open to introducing new formats.</p>\n<h4>Expanded Kid&#8217;s Workshop Planned</h4>\n<p>Last year&#8217;s fifth anniversary event included an experiment with hosting a <a href=\"http://wptavern.com/wordcamp-miami-kids-workshop-launches-the-next-generation-of-bloggers\" target=\"_blank\">kid&#8217;s workshop</a> for ages 8-12. Organizers guided the children through the process of setting up a new blog and publishing to the internet for the first time. Bisset said the 2015 event plans to expand on kid&#8217;s workshop.</p>\n<blockquote><p>Expect it back this year based on demand, but we are also bringing something else for young ones to WordCamp Miami 2015. One of our biggest goals at WCMIA is diversity â€“ and diversity includes young ones. They are the next generation of bloggers, developers, and coders.</p></blockquote>\n<p>Volunteering to help with the kid&#8217;s workshop is a fun way to reignite your excitement about WordPress and publishing in general. The event will likely offer more opportunities this year with an expanded workshop planned.</p>\n<h4>BuddyCamp Miami to Return for 3rd Edition</h4>\n<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/05/buddycamp.jpg\" rel=\"prettyphoto[39433]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/05/buddycamp.jpg?resize=1025%2C459\" alt=\"buddycamp\" class=\"aligncenter size-full wp-image-22680\" /></a></p>\n<p><a href=\"http://miami.wordcamp.org/2015/announcing-buddycamp-miami-2015/\" target=\"_blank\">BuddyCamp Miami will return for a third year</a> on May 29th to kick off the main event. This year the topics will be more developer-focused than previous years.</p>\n<p>&#8220;We really donâ€™t want people just to come and listen to talks, but actually CHAT with developers and contributors one-on-one to learn and improve their development and design skills with BuddyPress and bbPress,&#8221; Bisset said. Attending a BuddyCamp is a good way to connect with those who are involved in making BuddyPress and find out more about extending and contributing to the plugin.  Attendee maximum numbers for the 2015 event will be more limited than previous years to facilitate a stronger environment for developer-focused learning.</p>\n<h4>New &#8220;How To&#8221; Track</h4>\n<p>WordCamp Miami is already a veritable smorgasbord of WordPress knowledge, but organizers plan to add several new formats this year for variety. In addition to the traditional abstract/motivational track, a practical â€œHow Toâ€ track is in the works.</p>\n<p>&#8220;This track will be focused on users walking into the room and walking out in that same hour with actionable insights and knowledge,&#8221; Bisset said. Sessions will take the form of mini-workshops where attendees can quickly learn new techniques and technologies.</p>\n<p>Bisset&#8217;s <a href=\"http://davidbisset.com/wordcamp-miami-2015-sessions-tracks/\" target=\"_blank\">announcement</a> also hints at &#8220;Hallway Tracks,&#8221; which will unofficially welcome and recognize hallway networking. Business talks will be welcome again this year but will be refocused to provide a more practical and organized series of talks with resources for attendees.</p>\n<p>WordCamp Miami will remain committed to furthering developer education based on feedback from the local community. Organizers plan to encourage more deeper-level developer talks at the 2015 event. &#8220;We think Miami is ready for more serious developer talks and conferences,&#8221; Bisset said. &#8220;According to feedback from local meetups and other sources, more and more advanced topics are being desired (and less of the very early or beginning level topics).&#8221;</p>\n<h4>A Call for Speakers and Volunteers</h4>\n<p>Speaker applications for WordCamp Miami opened up today, and organizers welcome first-time WordCamp speakers to join the event. Topic suggestions are available on the <a href=\"http://miami.wordcamp.org/2015/speaker-submissions/\" target=\"_blank\">speaker submissions</a> page of the event website.</p>\n<p>An event of this magnitude requires a large crew of local volunteers. Last year the eight person coordinating team managed a crew of 30 volunteers, a few of which were even from out of town. &#8220;Volunteers literally made 2014 possible,&#8221; Bisset said. The team currently has almost a dozen coordinators in its Slack group and will be adding more in the coming weeks. If you want to <a href=\"http://miami.wordcamp.org/2015/volunteers/\" target=\"_blank\">get involved</a>, there are lots of opportunities to share your knowledge and skills to help make WordCamp Miami 2015 another successful event.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Feb 2015 21:32:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Matt: Find Three Hobbies\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44705\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://ma.tt/2015/02/find-three-hobbies/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:289:\"<blockquote><p>Find three hobbies you love: one to make you money, one to keep you in shape, and one to be creative.</p></blockquote>\n<p>I&#8217;m not sure the provenance of this quote, but I read it and it really resonated with me, and I&#8217;ve found myself repeating it frequently.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Feb 2015 19:30:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"WPTavern: Aventurine: A Free WordPress Theme Featuring Bold Typography and Bright Colors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39396\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"http://wptavern.com/aventurine-a-free-wordpress-theme-featuring-bold-typography-and-bright-colors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3764:\"<p>Last year, WordPress saw a <a href=\"http://wptavern.com/top-15-free-wordpress-themes-released-in-2014\" target=\"_blank\">renaissance in personal blogging themes</a>. The official WordPress.org directory received a deluge of high quality themes that served to raise the bar for commercial developers when it comes to design and simplicity.</p>\n<p>In particular, the trend of flat, minimalist blogging themes is still running strong. Last month, theme design and development duo Mel Choyce and Kelly Dwan released <a href=\"https://wordpress.org/themes/aventurine\" target=\"_blank\">Aventurine</a>, a bold new theme for writers.</p>\n<p>The name Aventurine was inspired by the Italian phrase <em>a ventura</em>, meaning by chance, but the theme&#8217;s elegant and deliberate typography choices indicate that nothing has been left to chance. Aventurine posseses a design wholeness where every element has a clear purpose, and the theme is free of cluttersome widgets and extraneous meta.</p>\n<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/aventurine.png\" rel=\"prettyphoto[39396]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/aventurine.png?resize=880%2C660\" alt=\"aventurine\" class=\"aligncenter size-full wp-image-39398\" /></a></p>\n<p>The theme&#8217;s colors are reminiscent of Choyce and Dwan&#8217;s popular <a href=\"https://wordpress.org/themes/flounder\" target=\"_blank\">Flounder</a> theme, which has been downloaded more than 33,000 times. Aventurine&#8217;s text and headers feature Josefin Sans and Varela Round from Google Fonts.</p>\n<p>The theme includes customizer options for setting the background and header colors. You can also upload a background image. Aventurine&#8217;s creators recommend using a repeating pattern, such as the ones offered at <a href=\"http://subtlepatterns.com/\" target=\"_blank\">subtlepatterns.com</a>.</p>\n<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/aventurine-customizer.png\" rel=\"prettyphoto[39396]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/aventurine-customizer.png?resize=1025%2C586\" alt=\"aventurine-customizer\" class=\"aligncenter size-full wp-image-39419\" /></a></p>\n<p>Featured images are displayed as headers on top of posts at 900px wide for impact. The footer widget areas the only additional customizable feature. They are displayed neatly beneath posts and do not detract from the main content of the page.</p>\n<p>Dwan and Choyce built Aventurine with accessibility in mind, particularly as it relates to best practices for interacting with keyboard and screen readers. While the theme&#8217;s default color palette does not pass accessibility guidelines, the authors made it easy for you to change some of the theme&#8217;s main colors in the customizer. Further customizations can be added to a child theme.</p>\n<p>Aventurine has built-in support for a range of Jetpack features, including  galleries, carousels, infinite scroll, and Photon. Over the past year, the Jetpack development team has been refining the plugin&#8217;s features to be more friendly to theme developers. Many newly released themes are taking advantage of this by supporting Jetpack features out of the box.</p>\n<p>After sorting through dozens of free themes added to WordPress.org in early 2015, Aventurine is one of the few that stand out as truly original and inspiring. It&#8217;s one of the best-designed personal blogging themes of 2015 thus far. Check out the <a href=\"https://themes.redradar.net/aventurine/\" target=\"_blank\">live demo</a> on the theme&#8217;s homepage. You can download <a href=\"https://wordpress.org/themes/aventurine\" target=\"_blank\">Aventurine</a> for free from WordPress.org or install it via your admin themes browser.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Feb 2015 17:18:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Matt: Elon Musk AMA\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44678\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://ma.tt/2015/02/elon-musk-ama/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:193:\"<p><a href=\"https://www.reddit.com/r/IAmA/comments/2rgsan/i_am_elon_musk_ceocto_of_a_rocket_company_ama/\">I am Elon Musk, CEO/CTO of a rocket company, AMA!</a>. This guy continues to amaze.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Feb 2015 00:48:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"Matt: Actually Good Youtube Comment\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44695\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://ma.tt/2015/02/actually-good-youtube-comment/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1125:\"<p>Hey guys! I found a good comment on Youtube. Documenting here for posterity, from <a href=\"https://www.youtube.com/user/vTxTobi\">vTxTobi</a>:</p>\n<blockquote><p>Top 5 rappers:<br />\n1. <a href=\"http://en.wikipedia.org/wiki/Kendrick_Lamar\">Kendrick Lamar</a><br />\n2. K.dot<br />\n3. Guy in <a href=\"http://genius.com/Big-sean-control-lyrics\">second verse of Control</a><br />\n4. Short dude in <a href=\"http://txdxe.com/\">TDE</a><br />\n5. The <a href=\"http://en.wikipedia.org/wiki/Good_Kid,_M.A.A.D_City\">good kid in a mad city</a></p></blockquote>\n<p>(I added the links.) The joke is all of those refer to Kendrick Lamar, so was laugh-out-loud funny. It was on Kendrick&#8217;s <a href=\"http://www.theatlantic.com/entertainment/archive/2015/02/kendrick-lamar-is-not-a-hypocrite/385384/\">powerful and controversial</a> new <a href=\"https://www.youtube.com/watch?v=6AhXSoKa8xw\">Blacker the Berry track</a>. So congrats to vTxTobi for writing the only decent comment I&#8217;ve read on Youtube in years. <img src=\"http://i1.wp.com/s.ma.tt/blog/wp-includes/images/smilies/icon_smile.gif?w=604\" alt=\":)\" class=\"wp-smiley\" /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 21 Feb 2015 21:10:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Matt: Future of WP and Jetpack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44699\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"http://ma.tt/2015/02/future-of-wp-and-jetpack/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:251:\"<p>There&#8217;s been some interesting threads going around on Jetpack and the future of WordPress, here&#8217;s Chris Lema&#8217;s take: <a href=\"http://chrislema.com/success-of-wordpress/\">Is the Future Success of WordPress tied to Jetpack?</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 21 Feb 2015 05:15:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WPTavern: WPGlobus Plugin Adds a Language Switcher to WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=27334\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://wptavern.com/wpglobus-plugin-adds-a-language-switcher-to-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4703:\"<p>Last week <a href=\"http://wordpress.org/plugins/wpglobus/\" target=\"_blank\">WPGlobus</a> 1.0 beta was released on WordPress.org. The plugin offers an interesting new attempt at providing multi-language support for WordPress sites. WPGlobus allows you to configure a set of available languages and adds a dropdown language switcher to the frontend via a custom menu.</p>\n<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/wpglobulus-language-switcher.png\" rel=\"prettyphoto[27334]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/wpglobulus-language-switcher.png?resize=1025%2C437\" alt=\"wpglobulus-language-switcher\" class=\"aligncenter size-full wp-image-39369\" /></a></p>\n<p>The development team behind <a href=\"http://www.wpglobus.com/\" target=\"_blank\">WPGlobus</a> is led by WordPress developer Gregory Karpinsky. He designed the tool to be used on bilingual/multilingual WordPress sites. To be clear, the plugin does not provide translations, but rather allows you to create your own translations for pages and posts in the admin.</p>\n<p>Karpinsky quotes the venerable Capt. O.B.Vious in his reasoning behind creating the plugin: <strong>&#8220;People are a lot more likely to interact with your website if it is available in their own language.&#8221;</strong> WPGlobus was designed to make it easy for anyone to add a language switcher to their site without too much hassle.</p>\n<p>The current version of the plugin offers the following feature highlights:</p>\n<ul>\n<li>Add multiple languages and countries to your site.</li>\n<li>Translate posts, pages, categories, tags and menus using a clean and simple interface.</li>\n<li>Switch languages at the front end using a dropdown menu with language names and country flags.</li>\n<li>Supports the WP-SEO titles and descriptions in multiple languages</li>\n</ul>\n<p>The first step in using the plugin is to select the languages you want to be available in the frontend dropdown. WPGlobus offers different ways to customize the way the languages appear in the menu and comes with flag images pre-installed for each language. The images are also customizable, should you wish to add your own or define custom combinations of country flags and language abbreviations.</p>\n<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/wpglobulus-admin-settings.png\" rel=\"prettyphoto[27334]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/wpglobulus-admin-settings.png?resize=1025%2C685\" alt=\"wpglobulus-admin-settings\" class=\"aligncenter size-full wp-image-39366\" /></a></p>\n<p>If you have a relatively small website that is quick to translate, you can paste translations for other languages directly into WPGlobus&#8217; tabbed interface in the post editor.</p>\n<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/wpglobulus-editor.png\" rel=\"prettyphoto[27334]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/wpglobulus-editor.png?resize=1025%2C586\" alt=\"wpglobulus-editor\" class=\"aligncenter size-full wp-image-39367\" /></a></p>\n<p>The frontend dropdown menu allows visitors to switch between languages and displays them by changing the URL (/{language}/page/).</p>\n<p>In its current state, WPGlobus was designed for simple, static sites. For example, it could be useful for an event where attendees speak a handful of different languages. In this instance, the event staff can easily translate event details on the various pages to provide information for attendees in their own languages.</p>\n<p>For large sites and blogs, an expanded version of WPGlobus is in the works, which would integrate with multilingual plugins, such as WPML, qTranslate, or Polylang. Further down the road, Karpinsky hopes to integrate functionality that will assist e-commerce vendors:</p>\n<blockquote><p>When it comes to e-Commerce, additional challenges may arise. The Buyer, the Seller and the Site Administrator may all speak different languages. A user may have a non-trivial combination of residence, language and currency. Some countries are multilingual, so clicking on a country flag is not always enough. WPGlobus attempts to solve those problems. Itâ€™s a long way down the road but we are full of energy and optimism.</p></blockquote>\n<p>At the moment, the plugin is suitable for WordPress administrators who want to make their sites more global and are willing to provide their own translations. <a href=\"http://wordpress.org/plugins/wpglobus/\" target=\"_blank\">WPGlobus</a> is available from WordPress.org. I tested the plugin, and, although it&#8217;s still technically in beta, it works as advertised for providing your own translations on a small website.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Feb 2015 23:12:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"WPTavern: New Plugin Detects Shared Terms in WordPress Ahead of Taxonomy Term Splitting in 4.2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39295\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"http://wptavern.com/new-plugin-detects-shared-terms-in-wordpress-ahead-of-taxonomy-term-splitting-in-4-2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4866:\"<a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/split.jpg\" rel=\"prettyphoto[39295]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/split.jpg?resize=1024%2C498\" alt=\"photo credit: UtiÄnice - (license)\" class=\"size-full wp-image-39352\" /></a>photo credit: <a href=\"http://www.flickr.com/photos/11932978@N00/3560243700\">UtiÄnice</a> &#8211; <a href=\"https://creativecommons.org/licenses/by-sa/2.0/\">(license)</a>\n<p><a href=\"https://make.wordpress.org/core/2015/02/16/taxonomy-term-splitting-in-4-2-a-developer-guide/\" target=\"_blank\">Taxonomy term splitting</a> in WordPress 4.2 addresses <a href=\"https://core.trac.wordpress.org/ticket/5809\" target=\"_blank\">a seven-year-old bug</a> that occasionally posed a nuisance to developers. In the past, WordPress allowed terms to be shared between multiple taxonomies. This caused a problem where updating a shared term would change the others unintentionally.</p>\n<p>Boone Gorges&#8217; progress on this ticket marks a major milestone on the <a href=\"https://make.wordpress.org/core/2013/07/28/potential-roadmap-for-taxonomy-meta-and-post-relationships/\" target=\"_blank\">taxonomy component roadmap</a> that Andrew Nacin outlined in 2013. Splitting shared terms paves the way for more exciting improvements to taxonomy meta and post relationships in the future.</p>\n<p>Gorges explained how taxonomy term splitting will work in 4.2:</p>\n<blockquote><p>WordPress will detect whether the term is shared between multiple taxonomies, and if so, will create a new row in wp_terms for the updated term and change all necessary term_taxonomy associations. term_taxonomy_id will stay the same, but term_id will change. This is a case of a shared term being split into separate terms.</p>\n<p>In most cases, term splitting will go unnoticed. However, there are some plugins and themes that store term IDs as static data. In these cases, a changed term ID has the potential to cause various sorts of problems.</p></blockquote>\n<p>He identified 11 out of the top 100 plugins on WordPress.org that will be affected by this change in 4.2, due to the fact that they store term IDs independently in the database. Plugin authors are advised to update their extensions to facilitate split term ID migration, and Gorges offers an example in his <a href=\"https://make.wordpress.org/core/2015/02/16/taxonomy-term-splitting-in-4-2-a-developer-guide/\" target=\"_blank\">post on the Make/Core blog</a>.</p>\n<h3>Find out if your WordPress site is using any shared terms.</h3>\n<p>Shared terms are extremely uncommon. However, if you&#8217;re curious to find out if your site has any, the new <a href=\"https://github.com/jjeaton/wp-find-shared-terms\" target=\"_blank\">WP Find Shared Terms</a> plugin makes it easy to detect shared terms and will list them along with their associated taxonomies.</p>\n<p>After installing it, you can visit Tools > Find Shared Terms to see a list. I tested it and found that it works as advertised to detect shared terms, their IDs, taxonomies, and associated posts:</p>\n<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/shared-terms.jpg\" rel=\"prettyphoto[39295]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/shared-terms.jpg?resize=934%2C402\" alt=\"shared-terms\" class=\"aligncenter size-full wp-image-39344\" /></a></p>\n<p>The plugin was created by <a href=\"http://www.josheaton.org/\" target=\"_blank\">Josh Eaton</a>, Partner at <a href=\"http://reaktivstudios.com/\" target=\"_blank\">Reaktiv Studios</a>. Eaton developed it to help users plan ahead for upcoming taxonomy changes.</p>\n<p>&#8220;This may be helpful in determining whether you need to refactor any custom code that stores term IDs or upgrade any of your plugins prior to the 4.2 upgrade,&#8221; he <a href=\"http://www.josheaton.org/find-shared-taxonomy-terms-in-wordpress/\" target=\"_blank\">said</a>. &#8220;If your site doesnâ€™t have any shared terms, and youâ€™ve already upgraded to 4.1 then youâ€™re in the clear!&#8221;</p>\n<p>Eaton said even if you detect that your site has shared terms, it doesn&#8217;t necessarily mean that you&#8217;ll have a problem updating. Detecting shared terms should prompt you to check that the plugins you&#8217;re using are properly updated for 4.2.</p>\n<p>It&#8217;s important to note that shared terms in WordPress 4.2 will not be retroactively split, but will only be split if the terms are updated in the dashboard, i.e. renamed, etc. Gorges advises that there are plans to force all shared terms to be split in a future release. It&#8217;s prudent to plan ahead now. If you suspect that you might have an issue with shared terms, install the <a href=\"https://github.com/jjeaton/wp-find-shared-terms\" target=\"_blank\">WP Find Shared Terms</a> plugin as a first step and monitor your WordPress plugins for updates ahead of the 4.2 release.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Feb 2015 19:28:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"WPTavern: Do You Use The Sticky Posts Feature in WordPress?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39326\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"http://wptavern.com/do-you-use-the-sticky-posts-feature-in-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1191:\"<p><a title=\"http://codex.wordpress.org/Sticky_Posts\" href=\"http://codex.wordpress.org/Sticky_Posts\">Sticky posts, </a>introduced in <a title=\"https://wordpress.org/news/2008/12/coltrane/\" href=\"https://wordpress.org/news/2008/12/coltrane/\">WordPress 2.7</a>, gives authors the ability to stick or feature posts to the front page. You&#8217;ll find the option in the publish meta box under the visibility section.</p>\n<a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/StickyPostsMetabox.png\" rel=\"prettyphoto[39326]\"><img class=\"size-full wp-image-39327\" src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/StickyPostsMetabox.png?resize=277%2C384\" alt=\"Where to find the Sticky Post option\" /></a>Where to find the Sticky Post option\n<p>I&#8217;ve rarely found a use for sticky posts on my personal site and WP Tavern. However, I realize that in some WordPress themes, they&#8217;re an easy way to feature content. How many of you actively use sticky posts and if you do, tell us how in the comments. Creative uses may be featured in an upcoming article.</p>\nNote: There is a poll embedded within this post, please visit the site to participate in this post\'s poll.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Feb 2015 18:50:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"WPTavern: GravityView is Now Public on GitHub\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39249\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://wptavern.com/gravityview-is-now-public-on-github\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3653:\"<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/gravity-view.jpg\" rel=\"prettyphoto[39249]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/gravity-view.jpg?resize=681%2C282\" alt=\"gravity-view\" class=\"aligncenter size-full wp-image-27113\" /></a></p>\n<p>Six months ago, <a href=\"https://katz.co/\" target=\"_blank\">Zack Katz</a> and <a href=\"http://tinygod.pt/\" target=\"_blank\">Luis Godinho</a> launched <a href=\"http://wptavern.com/gravityview-launches-an-app-based-on-gravity-forms\" target=\"_blank\">GravityView</a>, an app based on the popular Gravity Forms plugin. It uses the <a href=\"http://wptavern.com/gravityforms-1-8-beta-released-introduces-api\" target=\"_blank\">Gravity Forms API</a> to display unique views of form data and entries on the frontend of WordPress.</p>\n<p>The main <a href=\"https://github.com/katzwebservices/GravityView\" target=\"_blank\">GravityView plugin</a> is now public on GitHub for anyone to access for free. The plugin&#8217;s repository was previously private and the code accessible only to GravityView&#8217;s paid customers, but co-founder Zack Katz recently decided to go another direction with the project.</p>\n<p>Katz told the Tavern that he was inspired by a <a href=\"https://mattreport.com/interview-matt-mullenweg/\" target=\"_blank\">discussion between Matt Medeiros and Matt Mullenweg</a> on ubiquity vs. scarcity in WordPress product businesses. Medeiros asked Mullenweg if he could offer any advice to WordPress startups that are looking to create a new product in this crowded space. Mullenweg replied:</p>\n<blockquote><p>The one pattern I see most right now that I think is not sustainable is, and it&#8217;s because it&#8217;s the easiest thing to do, is businesses that are built on a scarcity &#8211; the thing not being widely available. If you think about some of the coolest successes so far in WordPress, the Gravity Forms, some of the theme businesses, they are inherently predicated on the fact that you have to pay to access them. </p>\n<p>I&#8217;ve always been a fan of businesses that grow with ubiquity, that become more powerful the more ubiquitous they are, more valuable. WordPress itself is one of these. Akismet is one of these. Jetpack is certainly one of those. </p>\n<p>So if you think about turning that on its head, I think that&#8217;s what will create the sort of multi-generational businesses in the WordPress ecosystem. Even with themes, we&#8217;ve seen that themes are very cyclical. People who used to make the majority of their money from themes, like WooThemes, are now finding it&#8217;s an ever-decreasing percentage. You hear this across almost all the theme shops.</p></blockquote>\n<p>This advice runs counter to the way many WordPress product businesses have structured their revenue models. Rare exceptions like <a href=\"http://wptavern.com/pippin-williamson-on-building-a-community-around-your-open-source-project\" target=\"_blank\">Easy Digital Downloads</a>, <a href=\"http://wptavern.com/wooconf-the-first-ever-conference-dedicated-to-woocommerce-deemed-a-success\" target=\"_blank\">WooCommerce</a>, and other plugins where the base software is free, are shining examples where pushing for ubiquity instead of scarcity has truly paid off.</p>\n<p>The founders behind <a href=\"https://gravityview.co/\" target=\"_blank\">GravityView</a> are looking to find the same success within the Gravity Forms micro-ecosystem. With the base <a href=\"https://github.com/katzwebservices/GravityView\" target=\"_blank\">GravityView plugin</a> now available for free on GitHub, the company&#8217;s pricing is now only applicable to support and extensions.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Feb 2015 21:47:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"Matt: USB History and Type C\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44672\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"http://ma.tt/2015/02/usb-history-and-type-c/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:611:\"<p>I enjoyed this Ars Technica look at <a href=\"http://arstechnica.com/gadgets/2015/01/usb-3-1-and-type-c-the-only-stuff-at-ces-that-everyone-is-going-to-use/\">USB 3.1 and Type-C</a>, which is probably the cable/connection change people will notice the most over the next few years. (As I look with despair on my dozens of USB devices and cables.) I also dug their retrospective, <a href=\"http://arstechnica.com/gadgets/2014/08/a-brief-history-of-usb-what-it-replaced-and-what-has-failed-to-replace-it/\">A brief history of USB, what it replaced, and what has failed to replace it</a>. Remember serial ports?</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Feb 2015 21:34:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"WPTavern: WPWeekly Episode 180 â€“ Interview With Wade Foster, CEO and Co-founder of Zapier\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"http://wptavern.com?p=39274&preview_id=39274\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"http://wptavern.com/wpweekly-episode-180-interview-with-wade-foster-ceo-and-co-founder-of-zapier\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3217:\"<p>In this week&#8217;s episode of WordPress Weekly, <a title=\"http://marcuscouch.com/\" href=\"http://marcuscouch.com/\">Marcus Couch</a> and I are joined by <a title=\"http://wadefoster.net/\" href=\"http://wadefoster.net/\">Wade Foster</a>, CEO and Co-founder of <a title=\"https://zapier.com/\" href=\"https://zapier.com/\">Zapier</a>. Zapier is a service that acts as an integration point for more than 300 applications. During the interview, Foster tells us how the company was founded, how Zapier works, and why it&#8217;s different from <a title=\"https://ifttt.com/\" href=\"https://ifttt.com/\">IFTTT</a> (If This Then That).</p>\n<p>We learn how Zaps are created and the importance of APIs. We also discuss the community surrounding Zapier and how important the community manager&#8217;s position is. Last but not least, Foster explains why the company is 100% distributed and tells us <a title=\"https://zapier.com/jobs/\" href=\"https://zapier.com/jobs/\">they&#8217;re hiring</a>.</p>\n<h2>Stories Discussed:</h2>\n<p><a title=\"http://wptavern.com/a-look-back-at-16-automattic-acquisitions-since-2007\" href=\"http://wptavern.com/a-look-back-at-16-automattic-acquisitions-since-2007\">A Look Back at 16 Automattic Acquisitions Since 2007</a><br />\n<a title=\"http://wptavern.com/tickets-on-sale-for-wordcamp-north-canton-oh-2015\" href=\"http://wptavern.com/tickets-on-sale-for-wordcamp-north-canton-oh-2015\">Tickets On Sale For WordCamp North Canton, OH, 2015</a><br />\n<a title=\"http://wptavern.com/wordpress-4-2-on-track-to-expand-core-support-for-emoji\" href=\"http://wptavern.com/wordpress-4-2-on-track-to-expand-core-support-for-emoji\">WordPress 4.2 on Track to Expand Core Support for Emoji</a></p>\n<h2>Plugins Picked By Marcus:</h2>\n<p><a title=\"https://wordpress.org/plugins/wp-image-shrinker/\" href=\"https://wordpress.org/plugins/wp-image-shrinker/\">WordPress Image Shrinker</a> lets users reduce image file sizes drastically while improving performance and Pagespeed score using the TinyPNG API within WordPress. Works for both PNGs and JPGs.</p>\n<p><a title=\"https://wordpress.org/plugins/there-can-be-only-one/\" href=\"https://wordpress.org/plugins/there-can-be-only-one/\">There Can Be Only One</a> ensures that there is only one published sticky post on the site at any given time.</p>\n<p><a title=\"https://wordpress.org/plugins/the-dude/\" href=\"https://wordpress.org/plugins/the-dude/\">The Dude</a> &#8211; When activated, you will randomly see a quote from &#8220;The Big Lebowski&#8221; in the upper right of your admin screen on every page.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, February 25th 9:30 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\" target=\"_blank\">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href=\"http://www.wptavern.com/feed/podcast\" target=\"_blank\">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\" target=\"_blank\">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #180:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Feb 2015 21:31:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"Post Status: Layers, by Obox, introduces a beautiful page building interface\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://poststatus.com/?p=8814\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://poststatus.com/layers-theme-obox/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8510:\"<p><a href=\"http://www.layerswp.com/\">Layers</a> is a product <a href=\"http://blog.oboxthemes.com/from-today-the-way-you-build-wordpress-sites-will-change-say-hello-to-layers/\">released by Obox</a> today that aims to integrate page building into the WordPress experience.</p>\n<p>Layers has the absolute best onboarding process I&#8217;ve seen in any tool like this. Also, the experience for creating new pages is very nice. While I have many disagreements with certain choices they made from a design perspective, overall I am very impressed with what they have done for the page building user experience.</p>\n<h3>Layers user experience sets a high bar</h3>\n<p>Layers has some very &#8220;wow&#8221; worthy features.</p>\n<p>I am very impressed with Obox&#8217;s onboarding. Upon theme activation, it takes you straight to a progressive walk-through that helps you learn about and setup Layers. It includes videos that operate like playable GIFs that show you what it&#8217;s referencing in each stage.</p>\n<p><img class=\"aligncenter size-large wp-image-8810\" src=\"https://poststatus.com/wp-content/uploads/2015/02/layers-onboarding-752x364.png\" alt=\"layers-onboarding\" width=\"752\" height=\"364\" /></p>\n<p>The editor itself is also impressive. Layers are managed totally through the customizer. There is a single customizer tab that opens up panels for Layer widgets, which is very in tune with default WordPress.</p>\n<p><img class=\"aligncenter size-large wp-image-8809\" src=\"https://poststatus.com/wp-content/uploads/2015/02/layers-edit-widget-752x351.png\" alt=\"layers-edit-widget\" width=\"752\" height=\"351\" /></p>\n<p>I call this method &#8220;going all in on the customizer&#8221;, which some people love and some people hate. I haven&#8217;t yet made up my mind, but I definitely like this better than many other methods I&#8217;ve seen &#8212; such as completely going outside of the WordPress UI.</p>\n<p>Within the WordPress page itself, it calls you to go to the Layers customizer to edit the content, but also has options for duplicating, importing, or exporting Layers templates.</p>\n<p><img class=\"aligncenter size-large wp-image-8813\" src=\"https://poststatus.com/wp-content/uploads/2015/02/layers-page-752x475.png\" alt=\"layers-page\" width=\"752\" height=\"475\" /></p>\n<p>I like the way Layers makes getting started pretty easy. And I&#8217;m sure they will offer more templates going forward to help users quickly build pages that would otherwise require custom code.</p>\n<p>Obox is really stretching their legs on UX, and they are unabashedly prioritizing UX over everything else.</p>\n<p>David Perel &#8212; co-founder of Obox &#8212; tells me, &#8220;We believe in UX more than anything. Code is solveable; it just takes time. But user experience isn&#8217;t black and white.&#8221; I encouraged him to get more involved with core WordPress&#8217; various UX projects, as I completely agree with his sentiment.</p>\n<h3>Behind the curtains of Layers code</h3>\n<p>When I first looked under the hood of Layers, I wasÂ completely baffled by some of the code decisions.Â SavingÂ a page in LayersÂ does not save anything to the actual <code>post_content</code> in WordPress, norÂ even in meta. No, content is essentially grouped &#8212; across any page ID &#8212; and stored in the options table, depending on the type of module in use.</p>\n<p><img class=\"aligncenter size-large wp-image-8811\" src=\"https://poststatus.com/wp-content/uploads/2015/02/layers-options.png\" alt=\"layers-options\" width=\"657\" height=\"199\" /></p>\n<p>So, if you view the options field of <code>widget_layers-widget-column</code>, you see this:</p>\n<p><img class=\"aligncenter size-large wp-image-8812\" src=\"https://poststatus.com/wp-content/uploads/2015/02/layers-option-752x369.png\" alt=\"layers-option\" width=\"752\" height=\"369\" /></p>\n<p>The above image is content for any column module in the Layers theme. Meanwhile, the <code>post_content</code> for the page you create is completely empty.</p>\n<p>I wasÂ baffled by thisÂ architecture decision, asÂ it means that I can never recover that content or use it again unless I&#8217;m using Layers.Â While the UX may fit well into the WordPress experience, the code seemedÂ far, far from it; and it wasÂ a complete blocker for me. Then I talked to David Perel.</p>\n<p>Thank goodness he showed me their backup tool. Before that, this post looked <em>much, much</em> different.</p>\n<p><img class=\"aligncenter size-large wp-image-8820\" src=\"https://poststatus.com/wp-content/uploads/2015/02/layers-backup-752x386.png\" alt=\"layers-backup\" width=\"752\" height=\"386\" /></p>\n<p>They are working to automatically port content to the proper field in the database, but for now you can manually do it, so that your markup at least is preserved for if you change themes. This methodology is in line with other responsible page building tools like The Theme Foundry&#8217;s <a title=\"Make and Make Plus, a drag and drop framework from The Theme Foundry\" href=\"https://poststatus.com/make-drag-and-drop-theme-foundry/\">Make theme</a>.</p>\n<p>I also talked to David about disappointingÂ front-end performance. The theme loads 16 styles and scripts on every page, no matter what. Scripts like Masonry are loading &#8212; and more than one Masonry related script &#8212; whether the page uses Masonry or not. Those are just the scripts that are not conditional at all. On page inspection of some of their common templates, I was seeing well over 20 HTTP requests for styles and scripts. This simply should not be acceptable. This, at least, is fixable.</p>\n<p>After discussing this with David, they are already working to implement a fix that will combine many of these files, and conditionally load others. Layers is 1.0, so while I wish this wasn&#8217;t an afterthought, I&#8217;m glad they&#8217;reÂ moving fast to improve.</p>\n<p>Overall, Obox is trying really hard on Layers; and they&#8217;ve shipped an impressive 1.0. They are doing active reviews still with some highly qualified WordPress developers whose names we all would know, and we can expect further improvements on performance down the line.</p>\n<h3>Where to get Layers, and notes on the monetization model</h3>\n<p><a href=\"http://www.layerswp.com/\">Layers</a> is free, and on <a href=\"https://github.com/Obox/layerswp\">Github</a>. They also have <a href=\"http://www.layerswp.com/developers/\">developer</a> notes and general <a href=\"http://docs.layerswp.com/\">docs</a> available. The Obox team is also working to get the product on WordPress.org, but there are some things they have to work out before they can.</p>\n<p>For monetization, they intend to charge for pre-built child themes and commercial extensions. For now, they want to get mass adoption for Layers &#8212; a tactic that has worked really well for others in the space.</p>\n<h3>Thoughts on page builders</h3>\n<p>I am definitely not on the bandwagon for page builders, though it seems the WordPress product world is. Where traditional options heavy theme sales have died away, page builders have risen from their ashes.</p>\n<p>I think anyone building a tool like this needs someone at their side forcing them to justify every feature &#8212; as it seems to me that most of these are giving way too many options in their products.</p>\n<p>I may have a follow-up post in my mind that I&#8217;ll probably publish sometime soon describing why I think it is a bad thing for page builders (in the context of theming) to be the future of the web.</p>\n<p>I&#8217;m afraid, however, that end user &#8220;demand&#8221; may make it so whether I like it or not; but it won&#8217;t be for their own good. I think there is a better way. I think &#8220;page building&#8221;, as it seems we&#8217;ve standardized the term, is broken when too many granular design elements are allowed. Instead, I&#8217;d like to see <em>content building</em>, where structured content can be created with a tool, but theming and styles are still left to, well, themes.</p>\n<p>Tools like <a href=\"http://aesopstoryengine.com/\">Aesop</a> story engine, <a href=\"https://thethemefoundry.com/wordpress-themes/make/\">Make</a>, and <a href=\"http://www.layerswp.com/\">Layers</a> are all making what I consider valiant efforts at evolving complex content creation for WordPress. I don&#8217;t think anyone is quite nailing it, but I like where at least these three projects are going for the most part. I&#8217;m happy to see Obox release their vision of what content creation should be in WordPress, with Layers.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Feb 2015 20:46:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: BuddyPress Breaks One-Day Download Record with 2.2.1 Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39240\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"http://wptavern.com/buddypress-breaks-one-day-download-record-with-2-2-1-release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3420:\"<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/buddypress-logo-blue.png\" rel=\"prettyphoto[39240]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/buddypress-logo-blue.png?resize=839%2C398\" alt=\"buddypress-logo-blue\" class=\"aligncenter size-full wp-image-30655\" /></a></p>\n<p>The <a href=\"https://buddypress.org/2015/02/2015-buddypress-survey/\" target=\"_blank\">2015 BuddyPress Survey</a> is out on the heels of the <a href=\"https://buddypress.org/2015/02/buddypress-2-2-1/\" target=\"_blank\">2.2.1 maintenance release</a>. Yesterday, the plugin broke its one-day download record with more than 10,000 downloads in 24 hours.</p>\n<blockquote class=\"twitter-tweet\" width=\"550\"><p>The <a href=\"https://twitter.com/hashtag/BuddyPress?src=hash\">#BuddyPress</a> 2.2.1 release (just) set our record one-day download record of ~10,107.</p>\n<p>&mdash; Paul Gibbs (@pgibbs) <a href=\"https://twitter.com/pgibbs/status/568309497879535616\">February 19, 2015</a></p></blockquote>\n<p></p>\n<p>Over the past seven years, <a href=\"https://wordpress.org/plugins/buddypress/\" target=\"_blank\">BuddyPress</a> has been downloaded more than 2.6 million times. Major performance improvements during the past two releases <a href=\"http://wptavern.com/buddypress-2-0-ramps-up-performance-reduces-footprint-by-up-to-75\" target=\"_blank\">reduced the pluginâ€™s footprint by up to 75%</a>. Contributors added new administration tools and improved translation fetching.</p>\n<p>If you want to help shape BuddyPress development in 2015, participating in the survey is one of the best ways to provide feedback to contributors. Last year&#8217;s survey demonstrated that the community is growing and users are eager to stay on top of updates. The <a href=\"https://buddypress.org/2014/03/2014-buddypress-survey-results/\" target=\"_blank\">2014 survey results</a> indicated that more than 50% of BuddyPress sites are on the latest versions of WordPress and BuddyPress.</p>\n<p>When asked to choose categories for feature improvements, respondents selected group enhancements, a new media component, activity stream, membership add-ons, performance, and a few others. Many of these requests were addressed during 2014 development on the plugin. <a href=\"http://wptavern.com/buddypress-2-2-to-add-custom-post-type-support-to-the-activity-stream\" target=\"_blank\">Custom post types were added to the activity stream</a>, performance was enhanced beyond user expectations, and a new<a href=\"http://wptavern.com/buddypress-2-2-on-track-to-provide-a-basic-member-type-api\" target=\"_blank\"> member type API</a> was introduced earlier this year. Contributors also began working on a <a href=\"http://wptavern.com/buddypress-to-adopt-features-as-plugins-model-to-develop-new-media-component\" target=\"_blank\">media component as a feature plugin</a>.</p>\n<p>Last year, the survey captured feedback from 338 developers in 52 countries, and it would be helpful to get an even wider range of results this time around. The <a href=\"https://buddypress.org/2015/02/2015-buddypress-survey/\" target=\"_blank\">survey</a> takes approximately 20 minute of your time, but, as you can see from last year&#8217;s development, contributors are eager to act on user feedback. Your participation will give the BP core team an idea of the kinds of BuddyPress sites that developers are building and the features that you want to see prioritized in 2015.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Feb 2015 19:41:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WPTavern: WordPress 4.1.1 Released, Fixes 21 Bugs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39243\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"http://wptavern.com/wordpress-4-1-1-released-fixes-21-bugs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2517:\"<p>WordPress 4.1.1 <a title=\"https://wordpress.org/news/2015/02/wordpress-4-1-1/\" href=\"https://wordpress.org/news/2015/02/wordpress-4-1-1/\">is available</a> and fixes 21 bugs. According to Andrew Nacin who published the announcement, 4.1 was a smooth-sailing release and has been downloaded over 14 million times within the last two months. One of the bugs fixed<span class=\"s1\"> is an issue where a tag and a category with the same name could get muddled and prevent each otherÂ from being updated. </span></p>\n<a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/WP41DownloadCount.png\" rel=\"prettyphoto[39243]\"><img class=\"size-full wp-image-39245\" src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/WP41DownloadCount.png?resize=956%2C371\" alt=\"WordPress 4.1 Download Count\" /></a>WordPress 4.1 Download Count\n<p>Updates are slowly rolling out and if your site is configured to receive automatic updates, it should update within the next 72 hours. If not, visitÂ <strong>Dashboard â†’ Updates</strong>Â and click <strong>Update Now</strong> to manually trigger the update routine.</p>\n<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/01/KimParsell.png\" rel=\"prettyphoto[39243]\"><img class=\"size-full wp-image-36619\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/01/KimParsell.png?resize=655%2C418\" alt=\"WordCamp San Francisco 2014 By Sheri Bigelow\" /></a>WordCamp San Francisco 2014 By Sheri Bigelow\n<p>There are a handful of contributors to this release, but the one that sticks out is Kim Parsell. She <a title=\"https://core.trac.wordpress.org/ticket/30791\" href=\"https://core.trac.wordpress.org/ticket/30791\">helped fix an issue</a> where an old image file needed to be removed from core. Reading the release notes and coming across Kim&#8217;s name generates a rush of emotions as I remember the events surrounding New Years day. For those who don&#8217;t know, <a title=\"http://wptavern.com/kim-parsell-affectionately-known-as-wpmom-passes-away\" href=\"http://wptavern.com/kim-parsell-affectionately-known-as-wpmom-passes-away\">Kim passed away</a> earlier this year. In memory of Kim, The WordPress Foundation has <a title=\"http://wptavern.com/the-wordpress-foundation-creates-a-traveling-scholarship-in-memory-of-kim-parsell\" href=\"http://wptavern.com/the-wordpress-foundation-creates-a-traveling-scholarship-in-memory-of-kim-parsell\">created a traveling scholarship</a>.</p>\n<p>I think Nacin speaks for many when he says, &#8220;We miss you, Kim.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Feb 2015 01:04:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Matt: 7 Principles of Rich Web Applications\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44680\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"http://ma.tt/2015/02/7-principles-of-rich-web-applications/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:165:\"<p>Automattician Guillermo Rauch writes on the <a href=\"http://rauchg.com/2014/7-principles-of-rich-web-applications/\">7 Principles of Rich Web Applications</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Feb 2015 00:50:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"WPTavern: Customizer Theme Switcher Approved for Merge Into WordPress 4.2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39224\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"http://wptavern.com/customizer-theme-switcher-approved-for-merge-into-wordpress-4-2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3367:\"<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/customizer-theme-switcher.jpg\" rel=\"prettyphoto[39224]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/customizer-theme-switcher.jpg?resize=1025%2C473\" alt=\"customizer-theme-switcher\" class=\"aligncenter size-full wp-image-38931\" /></a></p>\n<p>The <a href=\"http://wptavern.com/customizer-theme-switcher-officially-proposed-for-wordpress-4-2\" target=\"_blank\">Customizer Theme Switcher</a> feature plugin was approved for merge today during the regularly scheduled WordPress core development meeting. Lead developers and contributors in attendance agreed that there are no major blocking issues.</p>\n<p>The Customizer Theme Switcher in WordPress 4.2 will make it possible for users to browse through themes that have already been installed and activate a new one on the frontend via the customizer. The idea is to unify the UI designated for customizing a site to create a more consistent experience for users on the frontend. In the future, the theme installation process will also be added to the customizer.</p>\n<p>Many users initially had concerns about adding this feature to the narrow customizer UI. &#8220;I would like to see a full-screen iteration so it doesn&#8217;t feel like I am looking through a port hole,&#8221; Andrew Nacin said during the development meeting. His comment echoes the concerns of others who have doubts about browsing themes through the small customizer window.</p>\n<p>In response to WP Tavern <a href=\"http://wptavern.com/customizer-theme-switcher-officially-proposed-for-wordpress-4-2#comment-64073\" target=\"_blank\">commenters who oppose the new feature</a>, project leader Nick Halsey encouraged users to examine how the customizer will force developers to simplify their UIs:</p>\n<blockquote><p>Iâ€™ll also point out for everyone that while the Customizer controls window is fairly small, this is a balance with providing a reasonably sized preview of the front-end, and the narrow controls UI window is mobile-first out-of-the-box. Being forced to work with less real estate in the customizer controls forces developers to simplify their UIs and make things easier to use. If youâ€™re shoving hundreds of options into the Customizer, youâ€™re creating something thatâ€™s just as bad of an experience to use as if youâ€™d done that in a custom admin screen.</p></blockquote>\n<p>In response to those concerned about the next step of adding the theme installation process to the customizer, Halsey <a href=\"http://wptavern.com/customizer-theme-switcher-officially-proposed-for-wordpress-4-2#comment-64035\" target=\"_blank\">assured</a> users that they are planning on making the customizer controls area almost full-width. This will ensure a more pleasant experience while selecting a theme from a large collection. The theme switcher feature added to WordPress 4.2 will happen in the more narrow customizer pane, since it is most often limited to a small collection of already installed themes.</p>\n<p>The <a href=\"https://wordpress.org/plugins/press-this/\" target=\"_blank\">Press This Revamp project</a> is also currently under consideration for merge into WordPress 4.2 and contributors will be testing it over the next week. The merge window runs through next Wednesday, followed by two weeks of iteration before the first beta is expected.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Feb 2015 22:09:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"WPTavern: CMS Commanderâ€™s WordPress Site Creation Tool is Available for Free\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39187\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"http://wptavern.com/cms-commanders-wordpress-site-creation-tool-is-available-for-free\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2784:\"<p>CMS Commander <a title=\"http://cmscommander.com/create-pre-configured-wp-blogs-free/\" href=\"http://cmscommander.com/create-pre-configured-wp-blogs-free/\">has announced</a> that their new WordPress site creation tool will be <a title=\"https://cmscommander.com/members/signup/index/c/trial\" href=\"https://cmscommander.com/members/signup/index/c/trial\">free of charge</a>. CMS Commander specializes in helping users manage WordPress sites. The tool gives users the ability to deploy new WordPress sites to any host via FTP with pre-configured settings and pre-installed plugins.</p>\n<p>WordPress is famous for its five-minute install, but users generally need to configure a few settings before they can publish their first post. CMS Commander has several settings you can pre-configure including: permalinks, deleting default content, and disabling the theme and plugin file editors.</p>\n<a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/CMSCommanderPreconfigureSettings.jpg\" rel=\"prettyphoto[39187]\"><img class=\"size-full wp-image-39218\" src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/CMSCommanderPreconfigureSettings.jpg?resize=700%2C196\" alt=\"CMS Commander Pre-configured Settings\" /></a>CMS Commander Pre-configured Settings\n<p>You can also add plugins from the <a title=\"https://wordpress.org/plugins/\" href=\"https://wordpress.org/plugins/\">WordPress plugin directory</a> that will be installed and activated as part of the installation process.</p>\n<p>During the beta testing period, premium users created more than 200 websites allowing the team to fix numerous bugs. As a result of the beta testing period, CMS Commander added several other <a title=\"http://cmscommander.com/improved-site-creation-backup-features/\" href=\"http://cmscommander.com/improved-site-creation-backup-features/\">pre-configured settings</a>. The only feature not available to free users is the ability to add commercial plugins.</p>\n<h2>Removing Friction</h2>\n<p>The typical way to install WordPress on a webhost is to visit WordPress.org, download a zip file, extract the contents, and upload it to a webserver. This is a process that some find difficult, especially if FTP is as an unfamiliar concept or they&#8217;re not familiar with MySQL databases.</p>\n<p>CMS Commander and other tools like it are helping to bridge the gap between the install and set up process. This allows users to more quickly get to the publishing parts of WordPress. However, if WordPress is <a title=\"http://wptavern.com/how-important-is-jetpack-on-wordpress-road-to-50-market-share\" href=\"http://wptavern.com/how-important-is-jetpack-on-wordpress-road-to-50-market-share\">to reach 50% marketshare</a>, it needs to find a way to remove this friction instead of relying on third-parties.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Feb 2015 21:36:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: Join the Discussion on Defining Network Types for WordPress Multisite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39193\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"http://wptavern.com/join-the-discussion-on-defining-network-types-for-wordpress-multisite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3760:\"<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/mailboxes.jpg\" rel=\"prettyphoto[39193]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/mailboxes.jpg?resize=1024%2C496\" alt=\"mailboxes\" class=\"aligncenter size-full wp-image-39214\" /></a></p>\n<p>Towards the end of 2013, WordPress lead developer Andrew Nacin outlined a <a href=\"https://make.wordpress.org/core/2013/10/06/potential-roadmap-for-multisite/\" target=\"_blank\">potential roadmap for multisite</a> that would address a number of long-standing questions regarding network setup and organization.</p>\n<p>When multisite, formerly known as WPMU, was first introduced, building large blogging networks was the primary use case. Over the years, the uses for multisite have evolved to encompass those who use it to facilitate the management of multiple, and sometimes unrelated, sites. In the future, contributors want to add the option for super admins to select from a list of pre-configured network types when installing a new network.</p>\n<p>The <a href=\"https://wordpress.slack.com/archives/core-multisite/p1424209234000834\" target=\"_blank\">discussion</a> in the #core-multisite room on Slack this week centered around identifying and defining different network types.  The terms Open/Closed and Trusted/Untrusted were identified as possibilities, but nothing has been set in stone, as both options are ambiguous and confusing.</p>\n<p>Jeremy Felt <a href=\"https://make.wordpress.org/core/2015/02/18/multisite-objective-defining-network-types/\" target=\"_blank\">summarized</a> the questions that need to be answered before multisite development can move forward:</p>\n<ul>\n<li>What network types are there?</li>\n<li>Which of these should be pre-configured in core?</li>\n<li>What are possible ways of managing these network types?</li>\n<li>What kind of experience can we introduce during network installation that makes this simple.</li>\n</ul>\n<p>Multisite is used in a wide variety of ways, i.e. networks where super admins control everything, blogging networks where site admins have limited capabilities, private networks with closed registration and a set of trusted admins, and many more. It&#8217;s difficult to accurately nail down a small set of pre-configured network types that will be suitable for any new installation.</p>\n<p>One interesting idea, <a href=\"https://make.wordpress.org/core/2015/02/18/multisite-objective-defining-network-types/#comment-25248\" target=\"_blank\">proposed by Mike Schinkel</a>, is to allow developers to register a custom network type in order to better fit unique cases:</p>\n<blockquote><p>It would seem the first step, then, would be to identify and document all these potential configuration options at an atomic level. From there we could then â€œmapâ€ Network Types to their associated configuration settings.</p>\n<p>Even better, Network Types could then be registered just like how Post Types, Post Statuses, and Taxonomies are registered which would make missing out on an important use-case in core much less problematic.</p></blockquote>\n<p>Even with the option to register custom network types, WordPress core will still need to identify the most common ones to include in its set of pre-configured options. Contributors have been discussing this issue over the span of several months in order to find the best way forward.</p>\n<p>If you want to join in the conversation regarding the future of multisite, particularly as it relates to defining network types, make sure to leave your feedback on the recent Make/Core post: <a href=\"https://make.wordpress.org/core/tag/multisite/\" target=\"_blank\">Multisite Objective: Defining Network Types</a>. This will be the main topic of next weekâ€™s multisite office hours.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Feb 2015 18:47:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: Create Interactive Images in WordPress with the Draw Attention Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39165\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"http://wptavern.com/create-interactive-images-in-wordpress-with-the-draw-attention-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6844:\"<p><a title=\"https://wordpress.org/plugins/draw-attention/\" href=\"https://wordpress.org/plugins/draw-attention/\">Draw Attention</a> is a new plugin created by <a title=\"http://tylerdigital.com/\" href=\"http://tylerdigital.com/\">Tyler Digital,</a> that makes it easy to create interactive images in WordPress. Some common use cases include: floor plans for trade shows, real estate properties, and seating charts. Nathan Tyler explains the inspiration behind the plugin:</p>\n<blockquote><p>Natalie and I have built custom solutions for clients for trade shows, real estate, floor plans, etc. and we&#8217;re always frustrated by the process. We wanted to build an elegant solution in WordPress that would display well on all devices and would be easy for clients and end-users to maintain themselves.</p></blockquote>\n<h2>How it Works</h2>\n<p>After installation, a new item labeled Draw Attention is added to the admin menu. Similar to a post, the edit image screen has an area to give images a title. There&#8217;s also a series of options to configure the highlight and info box styling. Users can add an image via upload or through the WordPress media library.</p>\n<a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/DrawAttentionEditImageScreen.png\" rel=\"prettyphoto[39165]\"><img class=\"size-full wp-image-39177\" src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/DrawAttentionEditImageScreen.png?resize=1025%2C405\" alt=\"Edit Image Screen\" /></a>Edit image screen for Draw Attention\n<p>Once an image is added, you&#8217;ll see it near the bottom of the page within the Hotspot Areas section. From here, users can draw interactive hot spots on an image simply by clicking on the portion you want to highlight. It took a bit of practice, but I was able to make the entire logo a hotspot by clicking the edges of the circle. Hot spots can be manipulated by clicking and dragging on the square markers.</p>\n<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/DrawAttentionHotSpots.png\" rel=\"prettyphoto[39165]\"><img class=\"size-full wp-image-39178\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/DrawAttentionHotSpots.png?resize=1025%2C701\" alt=\"Draw Attention Hot Spots\" /></a>Draw Attention hot spots\n<p>One of the biggest drawbacks I discovered during testing, is that there&#8217;s no undo button. If you make a mistake, you need to select the clear button and start over. Depending on the size of the hot spot, it&#8217;s a frustrating user experience. Hot spots are able to have titles of their own as well as a description. You can also add a detailed image which will display above the more info box. Last but not least, you can remove the hot spot area from the image.</p>\n<a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/DrawAttentionHotSpotsConfig.png\" rel=\"prettyphoto[39165]\"><img class=\"size-full wp-image-39179\" src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2015/02/DrawAttentionHotSpotsConfig.png?resize=1002%2C493\" alt=\"DrawAttentionHotSpotConfiguration\" /></a>Draw Attention hot spot configuration\n<p>Here&#8217;s an example of what an interactive image looks like on the WordPress frontend. What you can&#8217;t see from the screenshot, is that clicking on a hot spot displays the image title and description above the image using <a title=\"http://en.wikipedia.org/wiki/Ajax_%28programming%29\" href=\"http://en.wikipedia.org/wiki/Ajax_%28programming%29\">Ajax</a>. In order to display interactive images, the <strong>[drawattention]</strong> short code needs to be inserted into a post or page. The styling options as seen in the first screenshot control how the title and description display on the frontend. It&#8217;s also worth noting that interactive images are responsive, so they&#8217;ll look good on mobile devices.</p>\n<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/DrawAttentionHotSpotsWordPressFrontend.png\" rel=\"prettyphoto[39165]\"><img class=\"size-full wp-image-39180\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/DrawAttentionHotSpotsWordPressFrontend.png?resize=1025%2C810\" alt=\"Draw Attention Hot Spots WordPress Frontend\" /></a>How hot spots look on the WordPress frontend\n<h2>Needs Improvements</h2>\n<p>Draw Attention is a neat plugin that makes it easy to create hot spots on images. However, it&#8217;s the first version and it shows. In future versions, I&#8217;d like to see a number of things addressed.</p>\n<ol>\n<li>I&#8217;m confused as to the order of options displayed in the backend as styling options are displayed above image editing. I think these option panels should be reversed.</li>\n<li>The default highlight and info box styles didn&#8217;t display well on the testing environment. I&#8217;d like to see these options inherit colors that already exist within the theme.</li>\n<li>As mentioned previously, there needs to be an undo button as starting over is a frustrating experience.</li>\n<li>Setting the opacity to 55% displays a value of 55.00000000000001%</li>\n<li>Speaking of styling colors, it&#8217;s frustrating to edit display settings, click update, then refresh the post or page to see if the changes are ok. I&#8217;d like to see some sort of visual preview or something like the customizer so that I can configure the colors and see the changes live before I apply them.</li>\n<li>Instead of displaying the short code I need to use in a small, somewhat hidden meta box, I&#8217;d like to see a button in the visual post editor to make it easier to add to a post or page.</li>\n</ol>\n<p>One of the last remaining issues I have with Draw Attention is that users are limited to adding and editing <strong>one image</strong>. That&#8217;s because there&#8217;s a <a title=\"http://tylerdigital.com/products/draw-attention/\" href=\"http://tylerdigital.com/products/draw-attention/\">pro version</a> of the plugin available for $49 that contains the following additional features:</p>\n<ul>\n<li>Ability to create more than one interactive image</li>\n<li>Unlimited number of hot spot areas for each image</li>\n<li>20 different preset color schemes</li>\n<li>Custom layout options</li>\n</ul>\n<p>Limiting the plugin to one image gives users an idea on how it works, but I&#8217;d bump the limit to three or five. Users would then have more of an opportunity to discover cool uses cases and it might lead to more sales.</p>\n<p>With that said, it performed without any issues on WordPress 4.2 alpha. Tyler says they have plenty of items on their to-do list, &#8220;We have a bunch of items still on our to-do list, and we will be releasing regular updates for the next couple months based on community feedback.&#8221; If some of the issues are addressed and the image limits are raised, I think Draw Attention will be a nice solution for creating interactive images in WordPress.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Feb 2015 05:48:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: WordCamp Prague 2015 Aims to Bring Central European Tech Community Together\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39157\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"http://wptavern.com/wordcamp-prague-2015-aims-to-bring-central-european-tech-community-together\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2983:\"<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/prague.jpg\" rel=\"prettyphoto[39157]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/prague.jpg?resize=1025%2C498\" alt=\"prague\" class=\"aligncenter size-full wp-image-39158\" /></a></p>\n<p><a href=\"http://prague.wordcamp.org/2015/\" target=\"_blank\">WordCamp Prague</a> is gearing up for its second edition on February 28, 2015. The event will be held at the <a href=\"http://ozs.vse.cz/english/\" target=\"_blank\">University of Economics</a>. Organizers are planning two tracks of presentations: one for end users and bloggers and the other for WordPress developers and programmers.</p>\n<p>Co-organizer <a href=\"https://twitter.com/vladamusilek\" target=\"_blank\">Vladislav MusÃ­lek</a> said that the team is expecting 300-350 attendees. &#8220;The Czech WordPress community is young and we started meeting in the summer of 2013,&#8221; he said. &#8220;There were three small meetups with a maximum of 30 attendees, but our first WordCamp Prague in 2014 had 230 attendees.&#8221;</p>\n<p>MusÃ­lek is one of three local organizers who decided to hold a larger meetup every three months, with smaller ones taking place monthly. The three meetups held in 2014 attracted 130-150 attendees each, and sessions are published on <a href=\"https://www.youtube.com/channel/UCUj8Epquc13YwVvnAzyI9Vg\" target=\"_blank\">YouTube</a>.</p>\n<p>Although the Czech WordPress community is relatively small, it is situated in central Europe with easy access for attendees from other countries. &#8220;We invited developers from other countries, because modern WordPress trends are what is missing in the Czech community,&#8221; MusÃ­lek said.</p>\n<p>&#8220;But what is unique is Prague, a beautiful city in the center, with 23 European capital cities not more than 1000 km away, i.e. Vienna, Berlin, Brussels, Copenhagen, Paris, Rome, Warsaw and more.&#8221;</p>\n<p>MusÃ­lek said the organizers&#8217; goal was to create a WordCamp not only for the Czech community but for the greater central European development community. Many of the sessions cater to developers, and MusÃ­lek said this is intentional. &#8220;I am a developer and I wanted to invite speakers who are working with modern and trending technologies that we&#8217;ll be using for development in the near future,&#8221; he said.</p>\n<p>WordCamp Prague&#8217;s schedule will host 16 sessions, including nine in English and seven in Czech. There will also be two workshops held in English and two in Czech. The variety of languages helps to make the event more accessible to international attendees. View the event&#8217;s <a href=\"http://prague.wordcamp.org/2015/program/\" target=\"_blank\">schedule</a> for more details. Tickets are still available for any attendees who decide to join at the last minute. If you&#8217;re still on the fence, check out the promotion video the organizers created for the upcoming event:</p>\n<p><span class=\"embed-youtube\"></span></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Feb 2015 22:24:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Matt: Developer Employment Act\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44697\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"http://ma.tt/2015/02/developer-employment-act/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:689:\"<blockquote><p>One theory I have is that there&#8217;s some secret &#8220;developer full-time employment act&#8221; that means these programmers have to do something even if it&#8217;s just replicating work that&#8217;s already been done. Kind of like New Jersey where every gas station is full serve (that had to be some full employment gambit back in the day).</p></blockquote>\n<p>Sounds like something that could be written today about Vox, Buzzfeed, Gawker, or any of the quixotic CMS projects at Washington Post, NY Times, Conde Nast, et al, but it was <a href=\"http://www.zdnet.com/article/wordpress-vs-an-army-of-clunky-content-management-systems/\">actually written in 2007</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Feb 2015 21:50:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: WordPress 4.2 on Track to Expand Core Support for Emoji\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39129\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"http://wptavern.com/wordpress-4-2-on-track-to-expand-core-support-for-emoji\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4194:\"<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/Twemoji.jpg\" rel=\"prettyphoto[39129]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/Twemoji.jpg?resize=700%2C320\" alt=\"photo credit: Twitter.com\" class=\"size-full wp-image-39143\" /></a>photo credit: <a href=\"https://blog.twitter.com/2014/open-sourcing-twitter-emoji-for-everyone\">Twitter.com</a>\n<p>Emoji characters were born in Japan in the late 90&#8217;s but took nearly a decade to break into global usage. They entered popular culture full force when select emoji character sets were incorporated into Unicode in 2010. Since that time, emoji popularity has grown, and there&#8217;s no denying that they are mainstream and here to stay.</p>\n<p>The good news is that better support for emoji will soon find its way into WordPress core. Last week, core contributor Gary Pendergast, unveiled <a href=\"https://make.wordpress.org/core/2015/02/13/emoji-chat-meeting-notes-february-12-2015/\" target=\"_blank\">a roadmap for better emoji support</a> and detailed the current state of the <a href=\"https://github.com/pento/x1f4a9\" target=\"_blank\">feature plugin</a>.</p>\n<p>Pendergast has spent quite a bit of time immersing himself in the history of emoji and the requirements for their support. Pendergast filled contributors in on the status of WordPress core support for emoji:</p>\n<blockquote><p>As of <a href=\"https://core.trac.wordpress.org/changeset/31349\" target=\"_blank\">r31349</a>, WordPress partially supports emoji. ~60% of WordPress sites are running MySQL 5.5 or later (so can be upgraded to store emoji), and ~40% of browsers natively support emoji. Emoji are a wildly popular method of communication, so we can expect them to be heavily used as soon as theyâ€™re available. The problem is, 60%/40% means a really bad experience for a huge number of our users, whoâ€™ll try to use emoji, and fail.</p></blockquote>\n<p>Getting more WordPress sites to run on  MySQL 5.5+ would be no small task, so the emoji feature plugin is working around this by adding a wp_encode_emoji() function to turn emoji characters into HTML entities for sites using the utf8 character set. This gets the remaining ~40% of sites nearly all the way there.</p>\n<h3>Twemoji Fallback</h3>\n<p>The feature plugin proposes that WordPress adopt the <a href=\"https://github.com/twitter/twemoji\" target=\"_blank\">Twemoji</a> image set as a fallback for browsers that don&#8217;t display emoji natively, which reduces the extra load, especially for mobile browsers. Twitter open sourced its Twemoji 872 character image set last November, simultaneously partnering with Automattic to <a href=\"http://wptavern.com/wordpress-com-adds-emoji-support-coming-soon-to-jetpack\" target=\"_blank\">bring emoji to WordPress.com users</a>.</p>\n<p>Pendergast reports that the plugin is close to being finished, with only a handful of remaining <a href=\"https://github.com/pento/x1f4a9/issues\" target=\"_blank\">bugs to discuss</a>. The plugin has already been briefly reviewed by the accessibility team and requires only a few minor changes. The issue of where to host the images is still under discussion, and Pendergast and contributors are considering different options:</p>\n<blockquote><p>Theyâ€™re currently hosted on WP.comâ€™s CDN, but weâ€™re investigating other options for where to host them, probably the W.org CDN. Given that the wp-admin Dashboard also loads things from Google, I have no problem with hosting them on an external CDN. There will naturally be a filter on the URL, to allow local hosting for sites that donâ€™t want to use the CDN.</p></blockquote>\n<p>WordPress is on track to provide more comprehensive support for emoji in the near future. Pendergast says the project is on target for the upcoming 4.2 release.</p>\n<p>In the meantime, if you&#8217;d like to add emoji support to your self-hosted WordPress site, <a href=\"http://wptavern.com/new-plugin-adds-open-source-emoji-one-support-to-wordpress\" target=\"_blank\">WP Emoji One</a> is a good option. The plugin was the first to bring support for the open source <a href=\"http://emojione.com/\" target=\"_blank\">Emoji One</a> character set to WordPress posts and pages.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Feb 2015 21:29:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: This Week On WPWeekly: Wade Foster, Co-founder and CEO of Zapier\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39096\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"http://wptavern.com/this-week-on-wpweekly-wade-foster-co-founder-and-ceo-of-zapier\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1501:\"<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/06/ZapierFeaturedImage.png\" rel=\"prettyphoto[39096]\"><img class=\"aligncenter size-full wp-image-24443\" src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/06/ZapierFeaturedImage.png?resize=650%2C200\" alt=\"Zapier Featured Image\" /></a></p>\n<p>This Wednesday at 9:30 PM Eastern on <a title=\"http://wptavern.com/wordpress-weekly\" href=\"http://wptavern.com/wordpress-weekly\">WordPress Weekly</a>, Marcus Couch and I will be joined by Wade Foster, Co-founder and CEO of <a title=\"https://zapier.com/\" href=\"https://zapier.com/\">Zapier</a>. Zapier is a service that acts as an integration point for more than 300 applications. <a title=\"https://zapier.com/zapbook/gravity-forms/\" href=\"https://zapier.com/zapbook/gravity-forms/\">GravityForms</a>, <a title=\"http://wptavern.com/wp-remote-now-supports-zapier\" href=\"http://wptavern.com/wp-remote-now-supports-zapier\">WP Remote</a>, and <a title=\"http://www.woothemes.com/products/woocommerce-zapier/\" href=\"http://www.woothemes.com/products/woocommerce-zapier/\">WooCommerce</a> are just a few examples of popular WordPress plugins and services that support Zapier. The following video explains how it works.</p>\n<p><span class=\"embed-youtube\"></span></p>\n<p>We&#8217;re going to discuss the company&#8217;s history, how the service works, and interesting integrations people are creating with it. If you have questions you&#8217;d like us to ask Foster, submit them in the comments.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Feb 2015 02:30:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"WPTavern: The Dude: A Fun Alternative to Hello Dolly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39104\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://wptavern.com/the-dude-a-fun-alternative-to-hello-dolly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2280:\"<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/the-dude.jpg\" rel=\"prettyphoto[39104]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/the-dude.jpg?resize=670%2C290\" alt=\"the-dude\" class=\"aligncenter size-full wp-image-39110\" /></a></p>\n<p>This isn&#8217;t just a plugin, man. It&#8217;s <a href=\"https://wordpress.org/plugins/the-dude/\" target=\"_blank\">The Dude</a>, so that&#8217;s what you call it. That, or His Dudenessâ€¦ Duderâ€¦ or El Duderino, if, you know, you&#8217;re not into the whole brevity thing.</p>\n<p>It symbolizes the realization of an entire modern lazy hippie bowling amateur private investigator generation summed up in two words spoken most famously by Jeff Bridges.</p>\n<p>The Dude was created by WordPress developer <a href=\"http://kosvrouvas.com/\" target=\"_blank\">Kostas Vrouvas</a>, who seemed to have a bit of free time on his hands. It takes inspiration (and some code) from Matt Mullenweg&#8217;s <a href=\"https://wordpress.org/plugins/hello-dolly/\" target=\"_blank\">Hello Dolly</a> plugin, replacing the musical&#8217;s lyrics at the top of admin screens with quotes from <a href=\"http://www.imdb.com/title/tt0118715/\">The Big Lebowski</a>.</p>\n<p>We tested the plugin and found that it works flawlessly. <a href=\"https://www.youtube.com/watch?v=VLR_TDO0FTg\" target=\"_blank\">The royal &#8220;we&#8221;</a>. You know, the editorial&#8230;</p>\n<p>Some of the random Lebowski quotes so far include:</p>\n<ul>\n<li>Walter, he peed on my rug!</li>\n<li>And, you know, heâ€™s got emotional problems, man.</li>\n<li>Well, that&#8217;s like, your opinion, man.</li>\n<li>Also, my rug was stolen.</li>\n<li>You&#8217;re Mr. Lebowski. I&#8217;m the Dude.</li>\n<li>Oh, the usual. I bowl. Drive around. The occasional acid flashback.</li>\n<li>Mr. Treehorn treats objects like women, man.</li>\n<li>Hey, careful, man, there&#8217;s a beverage here!</li>\n</ul>\n<p>Amusing, yes? So if you prefer <a href=\"http://wptavern.com/ https://www.youtube.com/watch?v=sft3VHxru2s\" target=\"_blank\">Creedence</a> to Louis Armstrong, then you may want to mix yourself a white russian and activate <a href=\"https://wordpress.org/plugins/the-dude/\" target=\"_blank\">The Dude</a> on your WordPress blog.</p>\n<p>It really ties the site together.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Feb 2015 00:53:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WPTavern: Why WordPress Job Titles Donâ€™t Mean Much Anymore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39069\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://wptavern.com/why-wordpress-job-titles-dont-mean-much-anymore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3590:\"<a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/JobTitleFeaturedImage.png\" rel=\"prettyphoto[39069]\"><img class=\"size-full wp-image-39089\" src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2015/02/JobTitleFeaturedImage.png?resize=650%2C200\" alt=\"Job Titles Featured Image\" /></a>photo credit: <a href=\"http://www.flickr.com/photos/58871905@N03/5565517971\">I love &#8217;84</a> &#8211; <a href=\"https://creativecommons.org/licenses/by/2.0/\">(license)</a>\n<p>Mario Peshev published a great article that looks at where the WordPress community stands on <a title=\"http://devwp.eu/wordpress-job-titles-skills-stand/\" href=\"http://devwp.eu/wordpress-job-titles-skills-stand/\">job titles and skills</a>. Peshev explains why titles are out of control and how they don&#8217;t match their expected skill sets.</p>\n<blockquote><p>The problem with a number of general titles is that they are overused and it is no longer clear what the real meaning and level of expertise is. Moreover, they are so general, that itâ€™s easy to be fooled into misusing them, seeing how many people just tag themselves in those categories.</p></blockquote>\n<p>I find it fascinating we&#8217;re having conversations on what people in the WordPress ecosystem call themselves. This is a big problem for people looking for WordPress experts who are routinely let down, because the people they&#8217;re hiring don&#8217;t actually have the skills required to get the job done.</p>\n<p>In some ways, the conversation circles back to the idea of having a <a title=\"http://wptavern.com/should-automattic-create-and-manage-a-wordpress-certification-program\" href=\"http://wptavern.com/should-automattic-create-and-manage-a-wordpress-certification-program\">WordPress certification program</a>. With a certification program, a document would clarify a person&#8217;s proficiency in WordPress. However, I think it opens up a new can of worms and isn&#8217;t the only solution.</p>\n<h2>Comparing a Corporate World to WordPress</h2>\n<p>In a typical corporation, titles are clearly laid out and each one has a set of skills attached to it. Employees know what they need to learn to get promoted to the next level. Employees also know the skills a person has with a particular title due to standards that dictate how it&#8217;s earned. In the WordPress ecosystem, titles are not earned, but rather, routinely made up. For example, I&#8217;ve used WordPress for more than seven years and consider myself a WordPress Tinkerer.</p>\n<p>Peshev outlines three distinct problems with the lack of standards, best practices, and business know-how in the WordPress community.</p>\n<ol>\n<li>Serious clients can&#8217;t find experts since everyone is an expert.</li>\n<li>Experts don&#8217;t get approached for larger systems (due to (1) ) and their time is wasted by people with the wrong perception of <em>expert</em>.</li>\n<li>The lack of satisfied clients and contractors means fewer customers are willing to invest in WordPress, fewer contractors are able to dedicate time back to WordPress, and there are fewer products developed as a result of WordPress driven projects.</li>\n</ol>\n<p>When looking at the big picture, the situation is a mess. It seems everyone has a WordPress title with no clear way to determine the skills that back it. Outside of some sort of regulation, I don&#8217;t see how the situation can improve. Perhaps the community can rally together to create a list of titles and assign appropriate skills to them? If you use a title to express your skills and knowledge to potential clients, what is it?</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 Feb 2015 23:24:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: Keep a CHANGELOG Project Aims to Standardize Best Practices for Writing Change Logs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=39051\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"http://wptavern.com/keep-a-changelog-project-aims-to-standardize-best-practices-for-writing-change-logs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3140:\"<p>A change log is the quickest, most convenient way for users and contributors to identify significant changes in a project as it moves from one version to the next. The log exists to keep users informed.</p>\n<p>Unfortunately, many open source project leaders have little motivation to provide a meaningful CHANGELOG file and are purely focused on shipping the code. Instead of writing clear, understandable logs for a release, many developers resort to dumping git logs, which are often rife with messy commit messages, into the CHANGELOG file.</p>\n<p><a href=\"http://olivierlacan.com/\" target=\"_blank\">Olivier Lacan</a>, software engineer at <a href=\"https://www.codeschool.com/\" target=\"_blank\">Code School</a>, has created a site and corresponding GitHub repository called <a href=\"http://keepachangelog.com/\" target=\"_blank\">Keep a CHANGELOG</a>, with an extensive collection of recommendations for writing better change logs.</p>\n<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/keep-a-changelog.png\" rel=\"prettyphoto[39051]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2015/02/keep-a-changelog.png?resize=1025%2C788\" alt=\"keep-a-changelog\" class=\"aligncenter size-full wp-image-39070\" /></a></p>\n<p>The project page offers a variety of tips for improving change logs, i.e. how to list releases, recommended date format, sections and labels for classifying changes, and file naming convention.</p>\n<p>One helpful tip Lacan offers, which isn&#8217;t commonly seen among even the finest, hand-crafted CHANGELOGs, is the recommendation for keeping an &#8220;Unreleased&#8221; section at the top. This helps users track for potential changes in progress for upcoming releases. Maintaining an &#8220;Unreleased&#8221; section  minimizes the effort of writing the logs at release time, as you can easily add the version number to the section as changes are added and create a new Unreleased header.</p>\n<h3>Software Tools Are for People</h3>\n<p>Lacan makes a strong case for prioritizing the creation of a changelog for your open source project:</p>\n<blockquote><p>Why should I care? Because software tools are for people. If you donâ€™t care, why are you contributing to open source?</p></blockquote>\n<p>He hopes that the Keep a CHANGELOG project will help to shape a better CHANGELOG file convention for all open source projects. Discussions and suggestions are welcome in the <a href=\"https://github.com/olivierlacan/keep-a-changelog/issues\" target=\"_blank\">issues queue</a> of the project&#8217;s GitHub repository. Contributors have already logged more than two dozen considerations.</p>\n<p>WordPress.org offers some <a href=\"https://wordpress.org/news/2009/07/improving-your-plugin-changelogs/\" target=\"_blank\">basic tips for improving change logs</a>, but the official plugin directory doesn&#8217;t require developers to maintain a CHANGELOG file. Lacan&#8217;s <a href=\"http://keepachangelog.com/\" target=\"_blank\">Keep a CHANGELOG project</a> is a complementary resource that can help WordPress developers and all open source project managers to write better logs for users and contributors.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 Feb 2015 21:45:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:10:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sat, 28 Feb 2015 23:05:26 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:14:\"content-length\";s:6:\"225763\";s:10:\"connection\";s:5:\"close\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Sat, 28 Feb 2015 22:45:11 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 249\";s:13:\"accept-ranges\";s:5:\"bytes\";}s:5:\"build\";s:14:\"20130911040210\";}','no'),(122,'_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9','1425207928','no'),(123,'_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9','1425164728','no'),(124,'_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109','1425207930','no'),(125,'_transient_feed_b9388c83948825c1edaef0d856b7b109','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n	\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:72:\"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"WordPress Plugins Â» View: Most Popular\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wordpress.org/plugins/browse/popular/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"WordPress Plugins Â» View: Most Popular\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 28 Feb 2015 22:45:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"http://bbpress.org/?v=1.1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:15:{i:0;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"WordPress SEO by Yoast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wordpress.org/plugins/wordpress-seo/#post-8321\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Jan 2009 20:34:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"8321@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:131:\"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast&#039;s WordPress SEO plugin.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Joost de Valk\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Jetpack by WordPress.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wordpress.org/plugins/jetpack/#post-23862\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Jan 2011 02:21:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"23862@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"Your WordPress, Streamlined.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Tim Moore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Contact Form 7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wordpress.org/plugins/contact-form-7/#post-2141\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 02 Aug 2007 12:45:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"2141@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Just another contact form plugin. Simple but flexible.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Takayuki Miyoshi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"WooCommerce - excelling eCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/plugins/woocommerce/#post-29860\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Sep 2011 08:13:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"29860@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"WooThemes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Akismet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://wordpress.org/plugins/akismet/#post-15\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Mar 2007 22:11:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"15@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Google Analytics by Yoast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Sep 2007 12:15:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"2316@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:124:\"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Joost de Valk\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"NextGEN Gallery\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/plugins/nextgen-gallery/#post-1169\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Apr 2007 20:08:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"1169@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:121:\"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 12 million downloads.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Alex Rabe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"All in One SEO Pack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 30 Mar 2007 20:08:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"753@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:126:\"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"uberdose\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Google Analytics Dashboard for WP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 10 Mar 2013 17:07:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"50539@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:148:\"Displays Google Analytics reports and real-time statistics in your WordPress Dashboard. Inserts the latest tracking code in every page of your site.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Alin Marcu\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"WordPress Importer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wordpress.org/plugins/wordpress-importer/#post-18101\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 May 2010 17:42:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"18101@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Brian Colinger\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"iThemes Security (formerly Better WP Security)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wordpress.org/plugins/better-wp-security/#post-21738\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Oct 2010 22:06:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"21738@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"The easiest, most effective way to secure WordPress in seconds.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Chris Wiegman\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"NextGEN Facebook - Advanced Social SEO for Facebook, Google+, Pinterest, Twitter &amp; More\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/plugins/nextgen-facebook/#post-40409\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Jul 2012 20:13:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"40409@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:132:\"Display your content in the best possible way on Facebook, Google+, Twitter, Pinterest, etc. - no matter how your webpage is shared!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"JS Morisset\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Wordfence Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/plugins/wordfence/#post-29832\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 04 Sep 2011 03:13:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"29832@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:137:\"Wordfence Security is a free enterprise class security and performance plugin that makes your site up to 50 times faster and more secure.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Wordfence\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Google XML Sitemaps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wordpress.org/plugins/google-sitemap-generator/#post-132\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Mar 2007 22:31:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"132@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"This plugin will generate a special XML sitemap which will help search engines to better index your blog.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Arne Brachhold\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:30:\"\n			\n			\n			\n			\n			\n			\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Meta Slider\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/plugins/ml-slider/#post-49521\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Feb 2013 16:56:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"49521@https://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:145:\"Easy to use WordPress slider plugin. Create SEO optimised responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Matcha Labs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:46:\"https://wordpress.org/plugins/rss/view/popular\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:11:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sat, 28 Feb 2015 23:05:30 GMT\";s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:10:\"connection\";s:5:\"close\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:7:\"expires\";s:29:\"Sat, 28 Feb 2015 23:20:10 GMT\";s:13:\"cache-control\";s:0:\"\";s:6:\"pragma\";s:0:\"\";s:13:\"last-modified\";s:31:\"Sat, 28 Feb 2015 22:45:10 +0000\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 250\";}s:5:\"build\";s:14:\"20130911040210\";}','no'),(126,'_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109','1425207931','no'),(127,'_transient_feed_mod_b9388c83948825c1edaef0d856b7b109','1425164731','no'),(128,'_transient_timeout_plugin_slugs','1425256804','no'),(129,'_transient_plugin_slugs','a:4:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:21:\"jigoshop/jigoshop.php\";i:3;s:31:\"photo-gallery/photo-gallery.php\";}','no'),(130,'_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51','1425207931','no'),(131,'_transient_dash_4077549d03da2e451c8b5f002294ff51','<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2015/02/wordpress-4-1-1/\'>WordPress 4.1.1 Maintenance Release</a> <span class=\"rss-date\">18 febrero, 2015</span><div class=\"rssSummary\">WordPress 4.1.1 is now available.Â This maintenance release fixes 21 bugs in versionÂ 4.1. Some of you may have been waiting to update to the latest version until now, but there just wasnâ€™t much to address. WordPress 4.1Â was a smooth-sailing release and has seen more than 14 million downloads in the last two months. For a full [&hellip;]</div></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://ma.tt/2015/02/code-cube/\'>Matt: Writing code is like solving a Rubikâ€™s cube</a></li><li><a class=\'rsswidget\' href=\'https://poststatus.com/popular-wordpress-plugins/\'>Post Status: The most popular WordPress plugins</a></li><li><a class=\'rsswidget\' href=\'http://wptavern.com/time-to-abolish-metaboxes-in-the-wordpress-post-editor\'>WPTavern: Time To Abolish Metaboxes in The WordPress Post Editor</a></li></ul></div><div class=\"rss-widget\"><ul><li class=\'dashboard-news-plugin\'><span>Plugin popular:</span> <a href=\'https://wordpress.org/plugins/nextgen-facebook/\' class=\'dashboard-news-plugin-link\'>NextGEN Facebook - Advanced Social SEO for Facebook, Google+, Pinterest, Twitter &amp; More</a>&nbsp;<span>(<a href=\'plugin-install.php?tab=plugin-information&amp;plugin=nextgen-facebook&amp;_wpnonce=ae7fca1f7e&amp;TB_iframe=true&amp;width=600&amp;height=800\' class=\'thickbox\' title=\'NextGEN Facebook - Advanced Social SEO for Facebook, Google+, Pinterest, Twitter &amp; More\'>Instalar</a>)</span></li></ul></div>','no'),(134,'theme_mods_twentyfifteen','a:5:{s:16:\"background_color\";s:6:\"e9f2f9\";s:12:\"color_scheme\";s:4:\"blue\";s:17:\"sidebar_textcolor\";s:7:\"#ffffff\";s:23:\"header_background_color\";s:7:\"#55c3dc\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1425169700;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),(136,'recently_activated','a:1:{s:21:\"jigoshop/jigoshop.php\";i:1425170395;}','yes'),(137,'_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1425175657','yes'),(138,'_site_transient_poptags_40cd750bba9870f18aada2478b24840a','a:40:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";s:4:\"4916\";}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"Post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";s:4:\"3078\";}s:6:\"plugin\";a:3:{s:4:\"name\";s:6:\"plugin\";s:4:\"slug\";s:6:\"plugin\";s:5:\"count\";s:4:\"3022\";}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";s:4:\"2529\";}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";s:4:\"2346\";}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";s:4:\"1892\";}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";s:4:\"1729\";}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";s:4:\"1680\";}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";s:4:\"1678\";}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";s:4:\"1676\";}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";s:4:\"1612\";}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";s:4:\"1609\";}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";s:4:\"1505\";}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"Facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";s:4:\"1322\";}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";s:4:\"1276\";}s:9:\"wordpress\";a:3:{s:4:\"name\";s:9:\"wordpress\";s:4:\"slug\";s:9:\"wordpress\";s:5:\"count\";s:4:\"1175\";}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";s:4:\"1171\";}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";s:4:\"1083\";}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";s:4:\"1079\";}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";s:3:\"918\";}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";s:3:\"905\";}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";s:3:\"874\";}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";s:3:\"843\";}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";s:3:\"837\";}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";s:3:\"794\";}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";s:3:\"758\";}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"AJAX\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";s:3:\"748\";}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";s:3:\"709\";}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";s:3:\"700\";}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";s:3:\"692\";}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";s:3:\"682\";}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";s:3:\"657\";}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";s:3:\"649\";}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";s:3:\"642\";}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";s:3:\"642\";}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";s:3:\"623\";}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";s:3:\"620\";}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";s:3:\"605\";}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"Share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";s:3:\"600\";}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";s:3:\"593\";}}','yes'),(139,'_site_transient_timeout_available_translations','1425176263','yes'),(140,'_site_transient_available_translations','a:51:{s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-17 19:01:24\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"Ø§Ù„Ø¹Ø±Ø¨ÙŠØ©\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.1.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Ø§Ù„Ù…ØªØ§Ø¨Ø¹Ø©\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-27 15:23:28\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"AzÉ™rbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.1.1/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-18 11:10:33\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Ð‘ÑŠÐ»Ð³Ð°Ñ€ÑÐºÐ¸\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"ÐŸÑ€Ð¾Ð´ÑŠÐ»Ð¶ÐµÐ½Ð¸Ðµ\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-08 17:39:56\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-26 03:38:28\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"CatalÃ \";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.1.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-09 11:12:57\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.1.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-18 22:27:33\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-04 12:59:40\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-18 11:05:07\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-26 19:02:34\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Î•Î»Î»Î·Î½Î¹ÎºÎ¬\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.1.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Î£Ï…Î½Î­Ï‡ÎµÎ¹Î±\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-17 20:53:36\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-28 01:01:02\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-05 09:59:30\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-18 13:11:32\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.1.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"DaÅ­rigi\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-05 15:18:10\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"EspaÃ±ol de MÃ©xico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/es_MX.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-25 14:34:19\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"EspaÃ±ol\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/es_ES.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"es\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2014-12-19 08:14:32\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"EspaÃ±ol de PerÃº\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1/es_PE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:3:\"4.0\";s:7:\"updated\";s:19:\"2014-09-04 19:47:01\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"EspaÃ±ol de Chile\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-09 12:20:08\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.1.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-23 14:29:09\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"ÙØ§Ø±Ø³ÛŒ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Ø§Ø¯Ø§Ù…Ù‡\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2014-12-17 07:01:16\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-17 19:01:48\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"FranÃ§ais\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:3:\"4.0\";s:7:\"updated\";s:19:\"2014-09-05 17:37:43\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"GÃ idhlig\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.0/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-17 18:37:43\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-12 01:05:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"Ù‡Ø²Ø§Ø±Ù‡ Ú¯ÛŒ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.1/haz.zip\";s:3:\"iso\";a:2:{i:1;s:3:\"haz\";i:2;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Ø§Ø¯Ø§Ù…Ù‡\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-29 14:11:31\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"×¢Ö´×‘Ö°×¨Ö´×™×ª\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"×œ×”×ž×©×™×š\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-20 16:50:00\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.1.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-15 20:01:36\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"TovÃ¡bb\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-31 07:30:24\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-26 01:33:47\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Ãslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Ãfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-21 07:43:12\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-29 10:53:40\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"æ—¥æœ¬èªž\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.1.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ç¶šã‘ã‚‹\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-21 03:05:42\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"í•œêµ­ì–´\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"ê³„ì†\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-08 00:36:50\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"LietuviÅ³ kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"TÄ™sti\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-23 10:05:46\";s:12:\"english_name\";s:7:\"Burmese\";s:11:\"native_name\";s:15:\"á€—á€™á€¬á€…á€¬\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"á€†á€€á€ºá€œá€€á€ºá€œá€¯á€•á€ºá€±á€†á€¬á€„á€ºá€•á€«á‹\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-18 11:09:37\";s:12:\"english_name\";s:19:\"Norwegian (BokmÃ¥l)\";s:11:\"native_name\";s:13:\"Norsk bokmÃ¥l\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-18 13:44:24\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-16 15:47:22\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-25 20:46:09\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"PortuguÃªs\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-19 19:37:03\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"PortuguÃªs do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-23 20:32:43\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"RomÃ¢nÄƒ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ContinuÄƒ\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-17 18:16:58\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Ð ÑƒÑÑÐºÐ¸Ð¹\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"ÐŸÑ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÑŒ\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-27 12:38:24\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"SlovenÄina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"PokraÄovaÅ¥\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-13 22:38:48\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"SlovenÅ¡Äina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2014-12-18 19:08:01\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Ð¡Ñ€Ð¿ÑÐºÐ¸ Ñ˜ÐµÐ·Ð¸Ðº\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"ÐÐ°ÑÑ‚Ð°Ð²Ð¸\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-29 09:41:07\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"FortsÃ¤tt\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-26 04:10:43\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"à¹„à¸—à¸¢\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.1.1/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"à¸•à¹ˆà¸­à¹„à¸›\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-01-19 08:42:08\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"TÃ¼rkÃ§e\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-19 05:33:04\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"UyÆ£urqÉ™\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"Ø¯Ø§Û‹Ø§Ù…Ù„Ø§Ø´ØªÛ‡Ø±Û‡Ø´\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2015-02-19 08:39:08\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"ç¹é«”ä¸­æ–‡\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.1.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"ç¹¼çºŒ\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2014-12-26 02:21:02\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"ç®€ä½“ä¸­æ–‡\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"ç»§ç»­\";}}}','yes'),(141,'ftp_credentials','a:3:{s:8:\"hostname\";s:9:\"localhost\";s:8:\"username\";s:7:\"edicson\";s:15:\"connection_type\";s:4:\"ftps\";}','yes'),(149,'shop_order_status_children','a:0:{}','yes'),(150,'jigoshop_db_version','1411270','yes'),(151,'jigoshop_options','a:295:{i:0;a:2:{s:4:\"type\";s:3:\"tab\";s:4:\"name\";s:4:\"Shop\";}i:1;a:3:{s:4:\"name\";s:12:\"Shop Options\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:2;a:5:{s:4:\"name\";s:19:\"Base Country/Region\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:84:\"This is the base country for your business. Tax rates will be based on this country.\";s:2:\"id\";s:24:\"jigoshop_default_country\";s:4:\"type\";s:21:\"single_select_country\";}i:3;a:7:{s:4:\"name\";s:35:\"Default Country/Region for customer\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:55:\"This is the country for your clients with new accounts.\";s:2:\"id\";s:37:\"jigoshop_default_country_for_customer\";s:3:\"std\";N;s:4:\"type\";s:21:\"single_select_country\";s:7:\"options\";a:1:{s:9:\"add_empty\";b:1;}}i:4;a:6:{s:4:\"name\";s:8:\"Currency\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:140:\"This controls what currency the prices are listed with in the Catalog, and which currency PayPal, and other gateways, will take payments in.\";s:2:\"id\";s:17:\"jigoshop_currency\";s:4:\"type\";s:6:\"select\";s:7:\"choices\";a:116:{s:3:\"AFN\";s:29:\"Afghanistan Afghani (&#1547;)\";s:3:\"ALL\";s:17:\"Albania Lek (Lek)\";s:3:\"ARS\";s:18:\"Argentina Peso ($)\";s:3:\"AWG\";s:22:\"Aruba Guilder (&fnof;)\";s:3:\"AUD\";s:20:\"Australia Dollar ($)\";s:3:\"AZN\";s:44:\"Azerbaijan New Manat (&#1084;&#1072;&#1085;)\";s:3:\"BSD\";s:18:\"Bahamas Dollar ($)\";s:3:\"BBD\";s:19:\"Barbados Dollar ($)\";s:3:\"BYR\";s:18:\"Belarus Ruble (p.)\";s:3:\"BZD\";s:19:\"Belize Dollar (BZ$)\";s:3:\"BMD\";s:18:\"Bermuda Dollar ($)\";s:3:\"BOB\";s:22:\"Bolivia Boliviano ($b)\";s:3:\"BAM\";s:45:\"Bosnia and Herzegovina Convertible Marka (KM)\";s:3:\"BWP\";s:17:\"Botswana Pula (P)\";s:3:\"BRL\";s:24:\"Brazil Real (&#82;&#36;)\";s:3:\"BND\";s:28:\"Brunei Darussalam Dollar ($)\";s:3:\"BGN\";s:29:\"Bulgaria Lev (&#1083;&#1074;)\";s:3:\"KHR\";s:23:\"Cambodia Riel (&#6107;)\";s:3:\"CAD\";s:17:\"Canada Dollar ($)\";s:3:\"KYD\";s:25:\"Cayman Islands Dollar ($)\";s:3:\"CLP\";s:14:\"Chile Peso ($)\";s:3:\"CNY\";s:27:\"China Yuan Renminbi (&yen;)\";s:3:\"COP\";s:17:\"Colombia Peso ($)\";s:3:\"CRC\";s:26:\"Costa Rica Colon (&#8353;)\";s:3:\"HRK\";s:17:\"Croatia Kuna (kn)\";s:3:\"CUP\";s:19:\"Cuba Peso (&#8369;)\";s:3:\"CZK\";s:31:\"Czech Republic Koruna (K&#269;)\";s:3:\"DKK\";s:18:\"Denmark Krone (kr)\";s:3:\"DOP\";s:29:\"Dominican Republic Peso (RD$)\";s:3:\"XCD\";s:25:\"East Caribbean Dollar ($)\";s:3:\"EGP\";s:21:\"Egypt Pound (&pound;)\";s:3:\"SVC\";s:21:\"El Salvador Colon ($)\";s:3:\"EEK\";s:18:\"Estonia Kroon (kr)\";s:3:\"EUR\";s:30:\"Euro Member Countries (&euro;)\";s:3:\"FKP\";s:26:\"Falkland Islands (&pound;)\";s:3:\"FJD\";s:15:\"Fiji Dollar ($)\";s:3:\"GEL\";s:19:\"Georgian Lari (áƒš)\";s:3:\"GHC\";s:20:\"Ghana Cedis (&cent;)\";s:3:\"GIP\";s:24:\"Gibraltar Pound (&cent;)\";s:3:\"GTQ\";s:21:\"Guatemala Quetzal (Q)\";s:3:\"GGP\";s:24:\"Guernsey Pound (&pound;)\";s:3:\"GYD\";s:17:\"Guyana Dollar ($)\";s:3:\"HNL\";s:20:\"Honduras Lempira (L)\";s:3:\"HKD\";s:20:\"Hong Kong Dollar ($)\";s:3:\"HUF\";s:28:\"Hungary Forint (&#70;&#116;)\";s:3:\"ISK\";s:18:\"Iceland Krona (kr)\";s:3:\"INR\";s:21:\"India Rupee (&#8360;)\";s:3:\"IDR\";s:30:\"Indonesia Rupiah (&#82;&#112;)\";s:3:\"IRR\";s:20:\"Iran Rial (&#65020;)\";s:3:\"IMP\";s:27:\"Isle of Man Pound (&pound;)\";s:3:\"ILS\";s:23:\"Israel Shekel (&#8362;)\";s:3:\"JMD\";s:19:\"Jamaica Dollar (J$)\";s:3:\"JPY\";s:17:\"Japan Yen (&yen;)\";s:3:\"JEP\";s:22:\"Jersey Pound (&pound;)\";s:3:\"KZT\";s:33:\"Kazakhstan Tenge (&#1083;&#1074;)\";s:3:\"KGS\";s:31:\"Kyrgyzstan Som (&#1083;&#1074;)\";s:3:\"LAK\";s:18:\"Laos Kip (&#8365;)\";s:3:\"LVL\";s:15:\"Latvia Lat (Ls)\";s:3:\"LBP\";s:23:\"Lebanon Pound (&pound;)\";s:3:\"LRD\";s:18:\"Liberia Dollar ($)\";s:3:\"LTL\";s:20:\"Lithuania Litas (Lt)\";s:3:\"MKD\";s:39:\"Macedonia Denar (&#1076;&#1077;&#1085;)\";s:3:\"MYR\";s:21:\"Malaysia Ringgit (RM)\";s:3:\"MUR\";s:25:\"Mauritius Rupee (&#8360;)\";s:3:\"MXN\";s:19:\"Mexico Peso (&#36;)\";s:3:\"MNT\";s:26:\"Mongolia Tughrik (&#8366;)\";s:3:\"MAD\";s:34:\"Moroccan Dirham (&#1583;.&#1605;.)\";s:3:\"MZN\";s:23:\"Mozambique Metical (MT)\";s:3:\"NAD\";s:18:\"Namibia Dollar ($)\";s:3:\"NPR\";s:21:\"Nepal Rupee (&#8360;)\";s:3:\"ANG\";s:37:\"Netherlands Antilles Guilder (&fnof;)\";s:3:\"NZD\";s:22:\"New Zealand Dollar ($)\";s:3:\"NIO\";s:22:\"Nicaragua Cordoba (C$)\";s:3:\"NGN\";s:23:\"Nigeria Naira (&#8358;)\";s:3:\"KPW\";s:25:\"North Korea Won (&#8361;)\";s:3:\"NOK\";s:17:\"Norway Krone (kr)\";s:3:\"OMR\";s:20:\"Oman Rial (&#65020;)\";s:3:\"PKR\";s:24:\"Pakistan Rupee (&#8360;)\";s:3:\"PAB\";s:19:\"Panama Balboa (B/.)\";s:3:\"PYG\";s:21:\"Paraguay Guarani (Gs)\";s:3:\"PEN\";s:20:\"Peru Nuevo Sol (S/.)\";s:3:\"PHP\";s:26:\"Philippines Peso (&#8369;)\";s:3:\"PLN\";s:27:\"Polish Zloty (&#122;&#322;)\";s:3:\"QAR\";s:22:\"Qatar Riyal (&#65020;)\";s:3:\"RON\";s:36:\"Romania New Leu (&#108;&#101;&#105;)\";s:3:\"RUB\";s:36:\"Russia Ruble (&#1088;&#1091;&#1073;)\";s:3:\"SHP\";s:28:\"Saint Helena Pound (&pound;)\";s:3:\"SAR\";s:29:\"Saudi Arabia Riyal (&#65020;)\";s:3:\"RSD\";s:21:\"Serbia Dinar (Ð Ð¡Ð”)\";s:3:\"SCR\";s:26:\"Seychelles Rupee (&#8360;)\";s:3:\"SGD\";s:20:\"Singapore Dollar ($)\";s:3:\"SBD\";s:26:\"Solomon Islands Dollar ($)\";s:3:\"SOS\";s:20:\"Somalia Shilling (S)\";s:3:\"ZAR\";s:21:\"South Africa Rand (R)\";s:3:\"KRW\";s:25:\"South Korea Won (&#8361;)\";s:3:\"LKR\";s:25:\"Sri Lanka Rupee (&#8360;)\";s:3:\"SRD\";s:19:\"Suriname Dollar ($)\";s:3:\"SEK\";s:17:\"Sweden Krona (kr)\";s:3:\"CHF\";s:23:\"Switzerland Franc (CHF)\";s:3:\"SYP\";s:21:\"Syria Pound (&pound;)\";s:3:\"TWD\";s:23:\"Taiwan New Dollar (NT$)\";s:3:\"THB\";s:23:\"Thailand Baht (&#3647;)\";s:3:\"TTD\";s:32:\"Trinidad and Tobago Dollar (TT$)\";s:3:\"TRL\";s:21:\"Turkey Lira (&#8356;)\";s:3:\"TRY\";s:16:\"Turkey Lira (TL)\";s:3:\"TVD\";s:17:\"Tuvalu Dollar ($)\";s:3:\"UAH\";s:24:\"Ukraine Hryvna (&#8372;)\";s:3:\"AED\";s:49:\"United Arab Emirates dirham (&#1583;&#46;&#1573;)\";s:3:\"GBP\";s:30:\"United Kingdom Pound (&pound;)\";s:3:\"USD\";s:24:\"United States Dollar ($)\";s:3:\"UYU\";s:17:\"Uruguay Peso ($U)\";s:3:\"UZS\";s:31:\"Uzbekistan Som (&#1083;&#1074;)\";s:3:\"VEF\";s:29:\"Venezuela Bolivar Fuerte (Bs)\";s:3:\"VND\";s:23:\"Viet Nam Dong (&#8363;)\";s:3:\"YER\";s:21:\"Yemen Rial (&#65020;)\";s:3:\"ZWD\";s:20:\"Zimbabwe Dollar (Z$)\";}}i:5;a:6:{s:4:\"name\";s:17:\"Allowed Countries\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:52:\"These are countries that you are willing to ship to.\";s:2:\"id\";s:26:\"jigoshop_allowed_countries\";s:4:\"type\";s:6:\"select\";s:7:\"choices\";a:2:{s:3:\"all\";s:13:\"All Countries\";s:8:\"specific\";s:18:\"Specific Countries\";}}i:6;a:5:{s:4:\"name\";s:18:\"Specific Countries\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:35:\"jigoshop_specific_allowed_countries\";s:4:\"type\";s:22:\"multi_select_countries\";}i:7;a:6:{s:4:\"name\";s:10:\"Demo store\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:108:\"Enable this option to show a banner at the top of every page stating this shop is currently in testing mode.\";s:2:\"id\";s:19:\"jigoshop_demo_store\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:8;a:3:{s:4:\"name\";s:9:\"Invoicing\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:9;a:5:{s:4:\"name\";s:12:\"Company Name\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:104:\"Setting your company name will enable us to print it out on your invoice emails. Leave blank to disable.\";s:2:\"id\";s:21:\"jigoshop_company_name\";s:4:\"type\";s:4:\"text\";}i:10;a:5:{s:4:\"name\";s:23:\"Tax Registration Number\";s:4:\"desc\";s:132:\"Add your tax registration label before the registration number and it will be printed as well. eg. <code>VAT Number: 88888888</code>\";s:3:\"tip\";s:102:\"Setting your tax number will enable us to print it out on your invoice emails. Leave blank to disable.\";s:2:\"id\";s:19:\"jigoshop_tax_number\";s:4:\"type\";s:4:\"text\";}i:11;a:5:{s:4:\"name\";s:13:\"Address Line1\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:99:\"Setting your address will enable us to print it out on your invoice emails. Leave blank to disable.\";s:2:\"id\";s:18:\"jigoshop_address_1\";s:4:\"type\";s:8:\"longtext\";}i:12;a:5:{s:4:\"name\";s:13:\"Address Line2\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:190:\"If address line1 is not set, address line2 will not display even if you put a value in it. Setting your address will enable us to print it out on your invoice emails. Leave blank to disable.\";s:2:\"id\";s:18:\"jigoshop_address_2\";s:4:\"type\";s:8:\"longtext\";}i:13;a:5:{s:4:\"name\";s:13:\"Company Phone\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:112:\"Setting your company phone number will enable us to print it out on your invoice emails. Leave blank to disable.\";s:2:\"id\";s:22:\"jigoshop_company_phone\";s:4:\"type\";s:4:\"text\";}i:14;a:5:{s:4:\"name\";s:13:\"Company Email\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:105:\"Setting your company email will enable us to print it out on your invoice emails. Leave blank to disable.\";s:2:\"id\";s:22:\"jigoshop_company_email\";s:4:\"type\";s:5:\"email\";}i:15;a:3:{s:4:\"name\";s:10:\"Permalinks\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:16;a:6:{s:4:\"name\";s:47:\"Prepend shop categories and tags with base page\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:193:\"This will only apply to tags &amp; categories.<br/>Enabled: http://yoursite.com / product_category / YourCategory<br/>Disabled: http://yoursite.com / base_page / product_category / YourCategory\";s:2:\"id\";s:34:\"jigoshop_prepend_shop_page_to_urls\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:17;a:6:{s:4:\"name\";s:46:\"Prepend product permalinks with shop base page\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:37:\"jigoshop_prepend_shop_page_to_product\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:18;a:6:{s:4:\"name\";s:48:\"Prepend product permalinks with product category\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:36:\"jigoshop_prepend_category_to_product\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:19;a:5:{s:4:\"name\";s:21:\"Product category slug\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:86:\"Slug displayed in product category URLs. Leave blank to use default \"product-category\"\";s:2:\"id\";s:30:\"jigoshop_product_category_slug\";s:4:\"type\";s:4:\"text\";}i:20;a:5:{s:4:\"name\";s:16:\"Product tag slug\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:76:\"Slug displayed in product tag URLs. Leave blank to use default \"product-tag\"\";s:2:\"id\";s:25:\"jigoshop_product_tag_slug\";s:4:\"type\";s:4:\"text\";}i:21;a:2:{s:4:\"type\";s:3:\"tab\";s:4:\"name\";s:7:\"General\";}i:22;a:3:{s:4:\"name\";s:15:\"General Options\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:23;a:6:{s:4:\"name\";s:34:\"Cart shows \"Return to Shop\" button\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:123:\"Enabling this setting will display a \"Return to Shop\" button on the Cart page along with the \"Continue to Checkout\" button.\";s:2:\"id\";s:31:\"jigoshop_cart_shows_shop_button\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:24;a:7:{s:4:\"name\";s:28:\"After adding product to cart\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:93:\"Define what should happen when a user clicks on &#34;Add to Cart&#34; on any product or page.\";s:2:\"id\";s:29:\"jigoshop_redirect_add_to_cart\";s:4:\"type\";s:5:\"radio\";s:5:\"extra\";a:1:{i:0;s:8:\"vertical\";}s:7:\"choices\";a:3:{s:9:\"same_page\";s:21:\"Stay on the same page\";s:11:\"to_checkout\";s:20:\"Redirect to Checkout\";s:7:\"to_cart\";s:16:\"Redirect to Cart\";}}i:25;a:6:{s:4:\"name\";s:23:\"Cart status after login\";s:4:\"desc\";s:76:\"Current cart <b>always</b> will be loaded if customer logs in checkout page.\";s:3:\"tip\";s:128:\"Define what should happen with shopping cart if customer added items to shopping cart as guest and than he logs in to your shop.\";s:2:\"id\";s:25:\"jigoshop_cart_after_login\";s:4:\"type\";s:6:\"select\";s:7:\"choices\";a:3:{s:10:\"load_saved\";s:15:\"Load saved cart\";s:12:\"load_current\";s:17:\"Load current cart\";s:5:\"merge\";s:29:\"Merge saved and current carts\";}}i:26;a:6:{s:4:\"name\";s:20:\"Reset pending Orders\";s:4:\"desc\";s:61:\"Change all \'Pending\' Orders older than one month to \'On Hold\'\";s:3:\"tip\";s:304:\"For customers that have not completed the Checkout process or haven\'t paid for an Order after a period of time, this will reset the Order to On Hold allowing the Shop owner to take action.  WARNING: For the first use on an existing Shop this setting <em>can</em> generate a <strong>lot</strong> of email!\";s:2:\"id\";s:29:\"jigoshop_reset_pending_orders\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:27;a:6:{s:4:\"name\";s:26:\"Complete processing Orders\";s:4:\"desc\";s:66:\"Change all \'Processing\' Orders older than one month to \'Completed\'\";s:3:\"tip\";s:176:\"For orders that have been completed but the status is still set to \'processing\'.  This will move them to a \'completed\' status without sending an email out to all the customers.\";s:2:\"id\";s:35:\"jigoshop_complete_processing_orders\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:28;a:6:{s:4:\"name\";s:27:\"Enforce login for downloads\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:154:\"If a guest purchases a download, the guest can still download a link without logging in. We recommend disabling guest purchases if you enable this option.\";s:2:\"id\";s:32:\"jigoshop_downloads_require_login\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:29;a:6:{s:4:\"name\";s:29:\"Disable Jigoshop frontend.css\";s:4:\"desc\";s:67:\"(The next option below will have no effect if this one is disabled)\";s:3:\"tip\";s:83:\"Useful if you want to disable Jigoshop styles and theme it yourself via your theme.\";s:2:\"id\";s:20:\"jigoshop_disable_css\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:30;a:6:{s:4:\"name\";s:53:\"Include extra theme styles with Jigoshop frontend.css\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:169:\"With this option <em>on</em>, Jigoshop\'s default frontend.css will still load, and any extra bits found in \'theme/jigoshop/style.css\' for over-rides will also be loaded.\";s:2:\"id\";s:32:\"jigoshop_frontend_with_theme_css\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:31;a:6:{s:4:\"name\";s:24:\"Disable bundled Lightbox\";s:4:\"desc\";s:84:\"Product galleries and images as well as the Add Review form will open in a lightbox.\";s:3:\"tip\";s:129:\"Useful if your theme or other plugin already loads our Lightbox script and css (prettyPhoto), or you want to use a different one.\";s:2:\"id\";s:25:\"jigoshop_disable_fancybox\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:32;a:6:{s:4:\"name\";s:33:\"Use custom product category order\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:82:\"This option allows to make custom product category order, by drag and drop method.\";s:2:\"id\";s:36:\"jigoshop_enable_draggable_categories\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:33;a:3:{s:4:\"name\";s:17:\"Jigoshop messages\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:34;a:4:{s:4:\"name\";s:22:\"Message disappear time\";s:4:\"desc\";s:89:\"How long message is displayed before disappearing (in ms). Set to 0 to keep it displayed.\";s:2:\"id\";s:31:\"jigoshop_message_disappear_time\";s:4:\"type\";s:7:\"natural\";}i:35;a:4:{s:4:\"name\";s:20:\"Error disappear time\";s:4:\"desc\";s:87:\"How long error is displayed before disappearing (in ms). Set to 0 to keep it displayed.\";s:2:\"id\";s:29:\"jigoshop_error_disappear_time\";s:4:\"type\";s:7:\"natural\";}i:36;a:3:{s:4:\"name\";s:13:\"Email Details\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:37;a:5:{s:4:\"name\";s:22:\"Jigoshop email address\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:183:\"The email address used to send all Jigoshop related emails, such as order confirmations and notices.  This may be different than your Company email address on \"Shop Tab -> Invoicing\".\";s:2:\"id\";s:14:\"jigoshop_email\";s:4:\"type\";s:5:\"email\";}i:38;a:5:{s:4:\"name\";s:15:\"Email from name\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:24:\"jigoshop_email_from_name\";s:4:\"type\";s:4:\"text\";}i:39;a:5:{s:4:\"name\";s:12:\"Email footer\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:45:\"The email footer used in all jigoshop emails.\";s:2:\"id\";s:21:\"jigoshop_email_footer\";s:4:\"type\";s:8:\"textarea\";}i:40;a:6:{s:4:\"name\";s:23:\"Generate default emails\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:32:\"jigoshop_email_generete_defaults\";s:4:\"type\";s:12:\"user_defined\";s:7:\"display\";a:2:{i:0;O:16:\"Jigoshop_Options\":1:{s:32:\"\0Jigoshop_Options\0bad_extensions\";a:0:{}}i:1;s:24:\"generate_defaults_emails\";}}i:41;a:3:{s:4:\"name\";s:13:\"Checkout page\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:42;a:6:{s:4:\"name\";s:25:\"Validate postal/zip codes\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:92:\"Enabling this setting will force proper postcodes to be entered by a customer for a country.\";s:2:\"id\";s:35:\"jigoshop_enable_postcode_validating\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:43;a:6:{s:4:\"name\";s:31:\"Show verify information message\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:284:\"Enabling this setting will display a message at the bottom of the Checkout asking customers to verify all their informatioin is correctly entered before placing their Order.  This is useful in particular for Countries that have states to ensure the correct shipping state is selected.\";s:2:\"id\";s:37:\"jigoshop_verify_checkout_info_message\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:44;a:6:{s:4:\"name\";s:29:\"Show EU VAT reduction message\";s:4:\"desc\";s:45:\"This will only apply to EU Union based Shops.\";s:3:\"tip\";s:209:\"Enabling this setting will display a message at the bottom of the Checkout informing the customer that EU VAT will not be removed until the Order is placed and only if they have provided a valid EU VAT Number.\";s:2:\"id\";s:33:\"jigoshop_eu_vat_reduction_message\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:45;a:6:{s:4:\"name\";s:21:\"Allow guest purchases\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:149:\"Enabling this setting will allow users to checkout without registering or signing up. Otherwise, users must be signed in or must sign up to checkout.\";s:2:\"id\";s:30:\"jigoshop_enable_guest_checkout\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:46;a:5:{s:4:\"name\";s:15:\"Show login form\";s:4:\"desc\";s:0:\"\";s:2:\"id\";s:27:\"jigoshop_enable_guest_login\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:47;a:5:{s:4:\"name\";s:18:\"Allow registration\";s:4:\"desc\";s:0:\"\";s:2:\"id\";s:27:\"jigoshop_enable_signup_form\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:48;a:6:{s:4:\"name\";s:21:\"Force SSL on checkout\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:180:\"This will load your checkout page with https://. An SSL certificate is <strong>required</strong> if you choose yes. Contact your hosting provider for more information on SSL Certs.\";s:2:\"id\";s:27:\"jigoshop_force_ssl_checkout\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:49;a:3:{s:4:\"name\";s:11:\"Integration\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:50;a:5:{s:4:\"name\";s:22:\"ShareThis Publisher ID\";s:4:\"desc\";s:113:\"Enter your <a href=\'http://sharethis.com/account/\'>ShareThis publisher ID</a> to show ShareThis on product pages.\";s:3:\"tip\";s:107:\"ShareThis is a small social sharing widget for posting links on popular sites such as Twitter and Facebook.\";s:2:\"id\";s:18:\"jigoshop_sharethis\";s:4:\"type\";s:4:\"text\";}i:51;a:4:{s:4:\"name\";s:19:\"Google Analytics ID\";s:4:\"desc\";s:86:\"Log into your Google Analytics account to find your ID. e.g. <code>UA-XXXXXXX-X</code>\";s:2:\"id\";s:14:\"jigoshop_ga_id\";s:4:\"type\";s:4:\"text\";}i:52;a:6:{s:4:\"name\";s:25:\"Enable eCommerce Tracking\";s:3:\"tip\";s:67:\"Add Google Analytics eCommerce tracking code upon successful orders\";s:4:\"desc\";s:153:\"<a href=\"//support.google.com/analytics/bin/answer.py?hl=en&answer=1009612\">Learn how to enable</a> eCommerce tracking for your Google Analytics account.\";s:2:\"id\";s:38:\"jigoshop_ga_ecommerce_tracking_enabled\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:53;a:2:{s:4:\"type\";s:3:\"tab\";s:4:\"name\";s:5:\"Pages\";}i:54;a:3:{s:4:\"name\";s:19:\"Page configurations\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:55;a:5:{s:4:\"name\";s:9:\"Cart Page\";s:4:\"desc\";s:56:\"Shortcode to place on page: <code>[jigoshop_cart]</code>\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:21:\"jigoshop_cart_page_id\";s:4:\"type\";s:18:\"single_select_page\";}i:56;a:5:{s:4:\"name\";s:13:\"Checkout Page\";s:4:\"desc\";s:60:\"Shortcode to place on page: <code>[jigoshop_checkout]</code>\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:25:\"jigoshop_checkout_page_id\";s:4:\"type\";s:18:\"single_select_page\";}i:57;a:5:{s:4:\"name\";s:8:\"Pay Page\";s:4:\"desc\";s:89:\"Shortcode to place on page: <code>[jigoshop_pay]</code><br/>Default parent page: Checkout\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:20:\"jigoshop_pay_page_id\";s:4:\"type\";s:18:\"single_select_page\";}i:58;a:5:{s:4:\"name\";s:11:\"Thanks Page\";s:4:\"desc\";s:94:\"Shortcode to place on page: <code>[jigoshop_thankyou]</code><br/>Default parent page: Checkout\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:23:\"jigoshop_thanks_page_id\";s:4:\"type\";s:18:\"single_select_page\";}i:59;a:5:{s:4:\"name\";s:15:\"My Account Page\";s:4:\"desc\";s:62:\"Shortcode to place on page: <code>[jigoshop_my_account]</code>\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:26:\"jigoshop_myaccount_page_id\";s:4:\"type\";s:18:\"single_select_page\";}i:60;a:5:{s:4:\"name\";s:17:\"Edit Address Page\";s:4:\"desc\";s:100:\"Shortcode to place on page: <code>[jigoshop_edit_address]</code><br/>Default parent page: My Account\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:29:\"jigoshop_edit_address_page_id\";s:4:\"type\";s:18:\"single_select_page\";}i:61;a:5:{s:4:\"name\";s:15:\"View Order Page\";s:4:\"desc\";s:98:\"Shortcode to place on page: <code>[jigoshop_view_order]</code><br/>Default parent page: My Account\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:27:\"jigoshop_view_order_page_id\";s:4:\"type\";s:18:\"single_select_page\";}i:62;a:5:{s:4:\"name\";s:20:\"Change Password Page\";s:4:\"desc\";s:103:\"Shortcode to place on page: <code>[jigoshop_change_password]</code><br/>Default parent page: My Account\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:32:\"jigoshop_change_password_page_id\";s:4:\"type\";s:18:\"single_select_page\";}i:63;a:5:{s:4:\"name\";s:16:\"Track Order Page\";s:4:\"desc\";s:66:\"Shortcode to place on page: <code>[jigoshop_order_tracking]</code>\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:28:\"jigoshop_track_order_page_id\";s:4:\"type\";s:18:\"single_select_page\";}i:64;a:6:{s:4:\"name\";s:10:\"Terms Page\";s:4:\"desc\";s:119:\"If you define a &#34;Terms&#34; page the customer will be asked to accept it before allowing them to place their order.\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:22:\"jigoshop_terms_page_id\";s:4:\"type\";s:18:\"single_select_page\";s:5:\"extra\";s:21:\"show_option_none=None\";}i:65;a:2:{s:4:\"type\";s:3:\"tab\";s:4:\"name\";s:21:\"Catalog &amp; Pricing\";}i:66;a:3:{s:4:\"name\";s:15:\"Catalog Options\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:67;a:5:{s:4:\"name\";s:17:\"Catalog base page\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:175:\"This sets the base page of your shop. You should not change this value once you have launched your site otherwise you risk breaking urls of other sites pointing to yours, etc.\";s:2:\"id\";s:21:\"jigoshop_shop_page_id\";s:4:\"type\";s:18:\"single_select_page\";}i:68;a:5:{s:4:\"name\";s:21:\"Shop redirection page\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:99:\"This will point users to the page you set for buttons like `Return to shop` or `Continue Shopping`.\";s:2:\"id\";s:30:\"jigoshop_shop_redirect_page_id\";s:4:\"type\";s:18:\"single_select_page\";}i:69;a:6:{s:4:\"name\";s:28:\"Catalog product buttons show\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:160:\"This will determine the type of button and the action it will use when clicked on the Shop and Category product listings.  You can also set it to use no button.\";s:2:\"id\";s:31:\"jigoshop_catalog_product_button\";s:4:\"type\";s:5:\"radio\";s:7:\"choices\";a:3:{s:3:\"add\";s:11:\"Add to Cart\";s:4:\"view\";s:12:\"View Product\";s:4:\"none\";s:9:\"No Button\";}}i:70;a:6:{s:4:\"name\";s:27:\"Sort products in catalog by\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:86:\"Determines the display sort order of products for the Shop, Categories, and Tag pages.\";s:2:\"id\";s:29:\"jigoshop_catalog_sort_orderby\";s:4:\"type\";s:5:\"radio\";s:7:\"choices\";a:3:{s:9:\"post_date\";s:13:\"Creation Date\";s:5:\"title\";s:13:\"Product Title\";s:10:\"menu_order\";s:18:\"Product Post Order\";}}i:71;a:6:{s:4:\"name\";s:22:\"Catalog sort direction\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:71:\"Determines whether the catalog sort orderby is ascending or descending.\";s:2:\"id\";s:31:\"jigoshop_catalog_sort_direction\";s:4:\"type\";s:5:\"radio\";s:7:\"choices\";a:2:{s:3:\"asc\";s:9:\"Ascending\";s:4:\"desc\";s:10:\"Descending\";}}i:72;a:6:{s:4:\"name\";s:24:\"Catalog products per row\";s:4:\"desc\";s:11:\"Default = 3\";s:3:\"tip\";s:89:\"Determines how many products to show on one display row for Shop, Category and Tag pages.\";s:2:\"id\";s:24:\"jigoshop_catalog_columns\";s:4:\"type\";s:6:\"number\";s:5:\"extra\";a:3:{s:3:\"min\";i:1;s:3:\"max\";i:10;s:4:\"step\";i:1;}}i:73;a:6:{s:4:\"name\";s:25:\"Catalog products per page\";s:4:\"desc\";s:12:\"Default = 12\";s:3:\"tip\";s:121:\"Determines how many products to display on Shop, Category and Tag pages before needing next and previous page navigation.\";s:2:\"id\";s:25:\"jigoshop_catalog_per_page\";s:4:\"type\";s:6:\"number\";s:5:\"extra\";a:3:{s:3:\"min\";i:1;s:3:\"max\";i:100;s:4:\"step\";i:1;}}i:74;a:3:{s:4:\"name\";s:15:\"Pricing Options\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:75;a:6:{s:4:\"name\";s:20:\"Show prices with tax\";s:4:\"desc\";s:73:\"This controls the display of the product price in cart and checkout page.\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:29:\"jigoshop_show_prices_with_tax\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:76;a:6:{s:4:\"name\";s:16:\"Currency display\";s:4:\"desc\";s:67:\"This controls the display of the currency symbol and currency code.\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:21:\"jigoshop_currency_pos\";s:4:\"type\";s:6:\"select\";s:7:\"choices\";a:12:{s:4:\"left\";s:5:\"$0.00\";s:10:\"left_space\";s:6:\"$0 .00\";s:5:\"right\";s:5:\"0.00$\";s:11:\"right_space\";s:6:\"0.00 $\";s:9:\"left_code\";s:7:\"GBP0.00\";s:15:\"left_code_space\";s:8:\"GBP 0.00\";s:10:\"right_code\";s:7:\"0.00GBP\";s:16:\"right_code_space\";s:8:\"0.00 GBP\";s:11:\"symbol_code\";s:8:\"$0.00GBP\";s:17:\"symbol_code_space\";s:10:\"$ 0.00 GBP\";s:11:\"code_symbol\";s:8:\"GBP0.00$\";s:17:\"code_symbol_space\";s:10:\"GBP 0.00 $\";}}i:77;a:5:{s:4:\"name\";s:18:\"Thousand separator\";s:4:\"desc\";s:53:\"This sets the thousand separator of displayed prices.\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:27:\"jigoshop_price_thousand_sep\";s:4:\"type\";s:4:\"text\";}i:78;a:5:{s:4:\"name\";s:17:\"Decimal separator\";s:4:\"desc\";s:52:\"This sets the decimal separator of displayed prices.\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:26:\"jigoshop_price_decimal_sep\";s:4:\"type\";s:4:\"text\";}i:79;a:5:{s:4:\"name\";s:18:\"Number of decimals\";s:4:\"desc\";s:65:\"This sets the number of decimal points shown in displayed prices.\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:27:\"jigoshop_price_num_decimals\";s:4:\"type\";s:7:\"natural\";}i:80;a:2:{s:4:\"type\";s:3:\"tab\";s:4:\"name\";s:6:\"Images\";}i:81;a:3:{s:4:\"name\";s:13:\"Image Options\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:632:\"<p>Changing any of these settings will affect the dimensions of images used in your Shop. After changing these settings you may need to <a href=\"http://wordpress.org/extend/plugins/regenerate-thumbnails/\">regenerate your thumbnails</a>.</p><p>Crop: Leave unchecked to set the image size by resizing the image proportionally (that is, without distorting it). Leave checked to set the image size by hard cropping the image (either from the sides, or from the top and bottom).</p><p><strong>Note:</strong> Your images may not display in the size you choose below. This is because they may still be affected by CSS styles in your theme.\";}i:82;a:3:{s:4:\"name\";s:16:\"Cropping Options\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:83;a:6:{s:4:\"name\";s:16:\"Crop Tiny images\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:214:\"Use No to set the image size by resizing the image proportionally (that is, without distorting it).<br />Use Yes to set the image size by hard cropping the image (either from the sides, or from the top and bottom).\";s:2:\"id\";s:32:\"jigoshop_use_wordpress_tiny_crop\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:84;a:6:{s:4:\"name\";s:21:\"Crop Thumbnail images\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:214:\"Use No to set the image size by resizing the image proportionally (that is, without distorting it).<br />Use Yes to set the image size by hard cropping the image (either from the sides, or from the top and bottom).\";s:2:\"id\";s:37:\"jigoshop_use_wordpress_thumbnail_crop\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:85;a:6:{s:4:\"name\";s:19:\"Crop Catalog images\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:214:\"Use No to set the image size by resizing the image proportionally (that is, without distorting it).<br />Use Yes to set the image size by hard cropping the image (either from the sides, or from the top and bottom).\";s:2:\"id\";s:35:\"jigoshop_use_wordpress_catalog_crop\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:86;a:6:{s:4:\"name\";s:17:\"Crop Large images\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:214:\"Use No to set the image size by resizing the image proportionally (that is, without distorting it).<br />Use Yes to set the image size by hard cropping the image (either from the sides, or from the top and bottom).\";s:2:\"id\";s:36:\"jigoshop_use_wordpress_featured_crop\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:87;a:3:{s:4:\"name\";s:11:\"Image Sizes\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:88;a:5:{s:4:\"name\";s:16:\"Tiny Image Width\";s:4:\"desc\";s:14:\"Default = 36px\";s:3:\"tip\";s:80:\"Set the width of the small image used in the Cart, Checkout, Orders and Widgets.\";s:2:\"id\";s:20:\"jigoshop_shop_tiny_w\";s:4:\"type\";s:7:\"natural\";}i:89;a:5:{s:4:\"name\";s:17:\"Tiny Image Height\";s:4:\"desc\";s:14:\"Default = 36px\";s:3:\"tip\";s:81:\"Set the height of the small image used in the Cart, Checkout, Orders and Widgets.\";s:2:\"id\";s:20:\"jigoshop_shop_tiny_h\";s:4:\"type\";s:7:\"natural\";}i:90;a:5:{s:4:\"name\";s:21:\"Thumbnail Image Width\";s:4:\"desc\";s:14:\"Default = 90px\";s:3:\"tip\";s:74:\"Set the width of the thumbnail image for Single Product page extra images.\";s:2:\"id\";s:25:\"jigoshop_shop_thumbnail_w\";s:4:\"type\";s:7:\"natural\";}i:91;a:5:{s:4:\"name\";s:22:\"Thumbnail Image Height\";s:4:\"desc\";s:14:\"Default = 90px\";s:3:\"tip\";s:75:\"Set the height of the thumbnail image for Single Product page extra images.\";s:2:\"id\";s:25:\"jigoshop_shop_thumbnail_h\";s:4:\"type\";s:7:\"natural\";}i:92;a:5:{s:4:\"name\";s:19:\"Catalog Image Width\";s:4:\"desc\";s:15:\"Default = 150px\";s:3:\"tip\";s:84:\"Set the width of the catalog image for Shop, Categories, Tags, and Related Products.\";s:2:\"id\";s:21:\"jigoshop_shop_small_w\";s:4:\"type\";s:7:\"natural\";}i:93;a:5:{s:4:\"name\";s:20:\"Catalog Image Height\";s:4:\"desc\";s:15:\"Default = 150px\";s:3:\"tip\";s:85:\"Set the height of the catalog image for Shop, Categories, Tags, and Related Products.\";s:2:\"id\";s:21:\"jigoshop_shop_small_h\";s:4:\"type\";s:7:\"natural\";}i:94;a:5:{s:4:\"name\";s:17:\"Large Image Width\";s:4:\"desc\";s:15:\"Default = 300px\";s:3:\"tip\";s:65:\"Set the width of the Single Product page large or Featured image.\";s:2:\"id\";s:21:\"jigoshop_shop_large_w\";s:4:\"type\";s:7:\"natural\";}i:95;a:5:{s:4:\"name\";s:18:\"Large Image Height\";s:4:\"desc\";s:15:\"Default = 300px\";s:3:\"tip\";s:66:\"Set the height of the Single Product page large or Featured image.\";s:2:\"id\";s:21:\"jigoshop_shop_large_h\";s:4:\"type\";s:7:\"natural\";}i:96;a:2:{s:4:\"type\";s:3:\"tab\";s:4:\"name\";s:20:\"Products & Inventory\";}i:97;a:3:{s:4:\"name\";s:15:\"Product Options\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:98;a:6:{s:4:\"name\";s:16:\"Enable SKU field\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:69:\"Turning off the SKU field will give products an SKU of their post id.\";s:2:\"id\";s:19:\"jigoshop_enable_sku\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:99;a:6:{s:4:\"name\";s:19:\"Enable weight field\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:22:\"jigoshop_enable_weight\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:100;a:6:{s:4:\"name\";s:11:\"Weight Unit\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:51:\"This controls what unit you will define weights in.\";s:2:\"id\";s:20:\"jigoshop_weight_unit\";s:4:\"type\";s:5:\"radio\";s:7:\"choices\";a:2:{s:2:\"kg\";s:9:\"Kilograms\";s:3:\"lbs\";s:6:\"Pounds\";}}i:101;a:6:{s:4:\"name\";s:25:\"Enable product dimensions\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:26:\"jigoshop_enable_dimensions\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:102;a:6:{s:4:\"name\";s:15:\"Dimensions Unit\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:54:\"This controls what unit you will define dimensions in.\";s:2:\"id\";s:23:\"jigoshop_dimension_unit\";s:4:\"type\";s:5:\"radio\";s:7:\"choices\";a:2:{s:2:\"cm\";s:11:\"centimeters\";s:2:\"in\";s:6:\"inches\";}}i:103;a:6:{s:4:\"name\";s:32:\"Product thumbnail images per row\";s:4:\"desc\";s:11:\"Default = 3\";s:3:\"tip\";s:120:\"Determines how many extra product thumbnail images attached to a product to show on one row for the Single Product page.\";s:2:\"id\";s:34:\"jigoshop_product_thumbnail_columns\";s:4:\"type\";s:6:\"number\";s:5:\"extra\";a:3:{s:3:\"min\";i:1;s:3:\"max\";i:10;s:4:\"step\";i:1;}}i:104;a:6:{s:4:\"name\";s:21:\"Show related products\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:70:\"To show or hide the related products section on a single product page.\";s:2:\"id\";s:32:\"jigoshop_enable_related_products\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:105;a:3:{s:4:\"name\";s:17:\"Inventory Options\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:106;a:6:{s:4:\"name\";s:12:\"Manage stock\";s:4:\"desc\";s:92:\"If you are not managing stock, turn it off here to disable it in admin and on the front-end.\";s:3:\"tip\";s:69:\"You can manage stock on a per-item basis if you leave this option on.\";s:2:\"id\";s:21:\"jigoshop_manage_stock\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:107;a:6:{s:4:\"name\";s:18:\"Show stock amounts\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:82:\"Set to yes to allow customers to view the amount of stock available for a product.\";s:2:\"id\";s:19:\"jigoshop_show_stock\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:108;a:5:{s:4:\"name\";s:19:\"Notify on low stock\";s:4:\"desc\";s:0:\"\";s:2:\"id\";s:25:\"jigoshop_notify_low_stock\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:109;a:6:{s:4:\"name\";s:19:\"Low stock threshold\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:95:\"You will receive a notification as soon this threshold is hit (if notifications are turned on).\";s:2:\"id\";s:32:\"jigoshop_notify_low_stock_amount\";s:4:\"type\";s:7:\"natural\";s:3:\"std\";s:1:\"2\";}i:110;a:5:{s:4:\"name\";s:22:\"Notify on out of stock\";s:4:\"desc\";s:0:\"\";s:2:\"id\";s:24:\"jigoshop_notify_no_stock\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:111;a:5:{s:4:\"name\";s:22:\"Out of stock threshold\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:95:\"You will receive a notification as soon this threshold is hit (if notifications are turned on).\";s:2:\"id\";s:31:\"jigoshop_notify_no_stock_amount\";s:4:\"type\";s:7:\"natural\";}i:112;a:6:{s:4:\"name\";s:26:\"Hide out of stock products\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:170:\"For Yes: When the Out of Stock Threshold (above) is reached, the product visibility will be set to hidden so that it will not appear on the Catalog or Shop product lists.\";s:2:\"id\";s:30:\"jigoshop_hide_no_stock_product\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:113;a:2:{s:4:\"type\";s:3:\"tab\";s:4:\"name\";s:3:\"Tax\";}i:114;a:3:{s:4:\"name\";s:11:\"Tax Options\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:115;a:6:{s:4:\"name\";s:15:\"Calculate Taxes\";s:4:\"desc\";s:68:\"Only turn this off if you are exclusively selling non-taxable items.\";s:3:\"tip\";s:75:\"If you are not calculating taxes then you can ignore all other tax options.\";s:2:\"id\";s:19:\"jigoshop_calc_taxes\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:116;a:6:{s:4:\"name\";s:24:\"Apply Taxes After Coupon\";s:4:\"desc\";s:58:\"This will have no effect if Calculate Taxes is turned off.\";s:3:\"tip\";s:83:\"If yes, taxes get applied after coupons. When no, taxes get applied before coupons.\";s:2:\"id\";s:25:\"jigoshop_tax_after_coupon\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:117;a:6:{s:4:\"name\";s:27:\"Catalog Prices include tax?\";s:4:\"desc\";s:61:\"This will only apply to the Shop, Category and Product pages.\";s:3:\"tip\";s:110:\"This will have no effect on the Cart, Checkout, Emails, or final Orders; prices are always shown with tax out.\";s:2:\"id\";s:27:\"jigoshop_prices_include_tax\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:118;a:5:{s:4:\"name\";s:24:\"Country to base taxes on\";s:4:\"desc\";s:82:\"This option defines whether to use billing or shipping address to calculate taxes.\";s:2:\"id\";s:25:\"jigoshop_country_base_tax\";s:4:\"type\";s:6:\"select\";s:7:\"choices\";a:2:{s:15:\"billing_country\";s:7:\"Billing\";s:16:\"shipping_country\";s:8:\"Shipping\";}}i:119;a:5:{s:4:\"name\";s:22:\"Additional Tax classes\";s:4:\"desc\";s:75:\"List 1 per line. This is in addition to the default <em>Standard Rate</em>.\";s:3:\"tip\";s:72:\"List product and shipping tax classes here, e.g. Zero Tax, Reduced Rate.\";s:2:\"id\";s:20:\"jigoshop_tax_classes\";s:4:\"type\";s:8:\"textarea\";}i:120;a:5:{s:4:\"name\";s:9:\"Tax rates\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:65:\"To avoid rounding errors, insert tax rates with 4 decimal places.\";s:2:\"id\";s:18:\"jigoshop_tax_rates\";s:4:\"type\";s:9:\"tax_rates\";}i:121;a:3:{s:4:\"name\";s:32:\"Default options for new products\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:122;a:6:{s:4:\"name\";s:10:\"Tax status\";s:3:\"tip\";s:50:\"Whether new products should be taxable by default.\";s:2:\"id\";s:28:\"jigoshop_tax_defaults_status\";s:4:\"type\";s:6:\"select\";s:3:\"std\";s:7:\"taxable\";s:7:\"choices\";a:3:{s:7:\"taxable\";s:7:\"Taxable\";s:8:\"shipping\";s:8:\"Shipping\";s:4:\"none\";s:4:\"None\";}}i:123;a:6:{s:4:\"name\";s:11:\"Tax classes\";s:3:\"tip\";s:53:\"List of tax classes added by default to new products.\";s:2:\"id\";s:29:\"jigoshop_tax_defaults_classes\";s:4:\"type\";s:12:\"user_defined\";s:7:\"display\";a:2:{i:0;r:398;i:1;s:27:\"display_default_tax_classes\";}s:6:\"update\";a:2:{i:0;r:398;i:1;s:26:\"update_default_tax_classes\";}}i:124;a:2:{s:4:\"type\";s:3:\"tab\";s:4:\"name\";s:8:\"Shipping\";}i:125;a:3:{s:4:\"name\";s:16:\"Shipping Options\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:126;a:6:{s:4:\"name\";s:15:\"Enable Shipping\";s:4:\"desc\";s:105:\"Only turn this off if you are <strong>not</strong> shipping items, or items have shipping costs included.\";s:3:\"tip\";s:77:\"If turned off, this will also remove shipping address fields on the Checkout.\";s:2:\"id\";s:22:\"jigoshop_calc_shipping\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:127;a:6:{s:4:\"name\";s:34:\"Enable shipping calculator on cart\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:0:\"\";s:2:\"id\";s:29:\"jigoshop_enable_shipping_calc\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:128;a:6:{s:4:\"name\";s:29:\"Only ship to billing address?\";s:4:\"desc\";s:0:\"\";s:3:\"tip\";s:72:\"When activated, Shipping address fields will not appear on the Checkout.\";s:2:\"id\";s:37:\"jigoshop_ship_to_billing_address_only\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:129;a:6:{s:4:\"name\";s:38:\"Checkout always shows Shipping fields?\";s:4:\"desc\";s:72:\"This will have no effect if \"Only ship to billing address\" is activated.\";s:3:\"tip\";s:79:\"When activated, Shipping address fields will appear by default on the Checkout.\";s:2:\"id\";s:38:\"jigoshop_show_checkout_shipping_fields\";s:4:\"type\";s:8:\"checkbox\";s:7:\"choices\";a:2:{s:2:\"no\";s:2:\"No\";s:3:\"yes\";s:3:\"Yes\";}}i:130;a:3:{s:4:\"name\";s:26:\"Available Shipping Methods\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:87:\"Please enable all of the Shipping Methods you wish to make available to your customers.\";}i:131;a:2:{s:4:\"type\";s:3:\"tab\";s:4:\"name\";s:16:\"Payment Gateways\";}i:132;a:3:{s:4:\"name\";s:15:\"Gateway Options\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:0:\"\";}i:133;a:6:{s:4:\"name\";s:15:\"Default Gateway\";s:4:\"desc\";s:47:\"Only enabled gateways will appear in this list.\";s:3:\"tip\";s:92:\"This will determine which gateway appears first in the Payment Methods list on the Checkout.\";s:2:\"id\";s:24:\"jigoshop_default_gateway\";s:4:\"type\";s:15:\"default_gateway\";s:7:\"choices\";a:0:{}}i:134;a:3:{s:4:\"name\";s:18:\"Available gateways\";s:4:\"type\";s:5:\"title\";s:4:\"desc\";s:87:\"Please enable all of the Payment Gateways you wish to make available to your customers.\";}s:24:\"jigoshop_default_country\";s:2:\"GB\";s:17:\"jigoshop_currency\";s:3:\"GBP\";s:26:\"jigoshop_allowed_countries\";s:3:\"all\";s:35:\"jigoshop_specific_allowed_countries\";s:0:\"\";s:19:\"jigoshop_demo_store\";s:2:\"no\";s:21:\"jigoshop_company_name\";s:0:\"\";s:19:\"jigoshop_tax_number\";s:0:\"\";s:18:\"jigoshop_address_1\";s:0:\"\";s:18:\"jigoshop_address_2\";s:0:\"\";s:22:\"jigoshop_company_phone\";s:0:\"\";s:22:\"jigoshop_company_email\";s:0:\"\";s:34:\"jigoshop_prepend_shop_page_to_urls\";s:2:\"no\";s:37:\"jigoshop_prepend_shop_page_to_product\";s:2:\"no\";s:36:\"jigoshop_prepend_category_to_product\";s:2:\"no\";s:30:\"jigoshop_product_category_slug\";s:16:\"product-category\";s:25:\"jigoshop_product_tag_slug\";s:11:\"product-tag\";s:14:\"jigoshop_email\";s:24:\"edicson@billingbuddy.com\";s:31:\"jigoshop_cart_shows_shop_button\";s:3:\"yes\";s:29:\"jigoshop_redirect_add_to_cart\";s:9:\"same_page\";s:29:\"jigoshop_reset_pending_orders\";s:2:\"no\";s:35:\"jigoshop_complete_processing_orders\";s:2:\"no\";s:32:\"jigoshop_downloads_require_login\";s:2:\"no\";s:20:\"jigoshop_disable_css\";s:2:\"no\";s:32:\"jigoshop_frontend_with_theme_css\";s:2:\"no\";s:25:\"jigoshop_disable_fancybox\";s:2:\"no\";s:35:\"jigoshop_enable_postcode_validating\";s:2:\"no\";s:37:\"jigoshop_verify_checkout_info_message\";s:3:\"yes\";s:33:\"jigoshop_eu_vat_reduction_message\";s:3:\"yes\";s:30:\"jigoshop_enable_guest_checkout\";s:3:\"yes\";s:27:\"jigoshop_enable_guest_login\";s:3:\"yes\";s:27:\"jigoshop_enable_signup_form\";s:3:\"yes\";s:27:\"jigoshop_force_ssl_checkout\";s:2:\"no\";s:18:\"jigoshop_sharethis\";s:0:\"\";s:14:\"jigoshop_ga_id\";s:0:\"\";s:38:\"jigoshop_ga_ecommerce_tracking_enabled\";s:2:\"no\";s:31:\"jigoshop_catalog_product_button\";s:3:\"add\";s:29:\"jigoshop_catalog_sort_orderby\";s:9:\"post_date\";s:31:\"jigoshop_catalog_sort_direction\";s:3:\"asc\";s:24:\"jigoshop_catalog_columns\";s:1:\"3\";s:25:\"jigoshop_catalog_per_page\";s:2:\"12\";s:21:\"jigoshop_currency_pos\";s:4:\"left\";s:27:\"jigoshop_price_thousand_sep\";s:1:\",\";s:26:\"jigoshop_price_decimal_sep\";s:1:\".\";s:27:\"jigoshop_price_num_decimals\";s:1:\"2\";s:32:\"jigoshop_use_wordpress_tiny_crop\";s:2:\"no\";s:37:\"jigoshop_use_wordpress_thumbnail_crop\";s:2:\"no\";s:35:\"jigoshop_use_wordpress_catalog_crop\";s:2:\"no\";s:36:\"jigoshop_use_wordpress_featured_crop\";s:2:\"no\";s:20:\"jigoshop_shop_tiny_w\";i:36;s:20:\"jigoshop_shop_tiny_h\";i:36;s:25:\"jigoshop_shop_thumbnail_w\";i:90;s:25:\"jigoshop_shop_thumbnail_h\";i:90;s:21:\"jigoshop_shop_small_w\";i:150;s:21:\"jigoshop_shop_small_h\";i:150;s:21:\"jigoshop_shop_large_w\";i:300;s:21:\"jigoshop_shop_large_h\";i:300;s:19:\"jigoshop_enable_sku\";s:3:\"yes\";s:22:\"jigoshop_enable_weight\";s:3:\"yes\";s:20:\"jigoshop_weight_unit\";s:2:\"kg\";s:26:\"jigoshop_enable_dimensions\";s:3:\"yes\";s:23:\"jigoshop_dimension_unit\";s:2:\"cm\";s:34:\"jigoshop_product_thumbnail_columns\";s:1:\"3\";s:32:\"jigoshop_enable_related_products\";s:3:\"yes\";s:21:\"jigoshop_manage_stock\";s:3:\"yes\";s:19:\"jigoshop_show_stock\";s:3:\"yes\";s:25:\"jigoshop_notify_low_stock\";s:3:\"yes\";s:32:\"jigoshop_notify_low_stock_amount\";s:1:\"2\";s:24:\"jigoshop_notify_no_stock\";s:3:\"yes\";s:31:\"jigoshop_notify_no_stock_amount\";s:1:\"0\";s:30:\"jigoshop_hide_no_stock_product\";s:2:\"no\";s:19:\"jigoshop_calc_taxes\";s:3:\"yes\";s:25:\"jigoshop_tax_after_coupon\";s:3:\"yes\";s:27:\"jigoshop_prices_include_tax\";s:3:\"yes\";s:20:\"jigoshop_tax_classes\";s:22:\"Reduced Rate\nZero Rate\";s:18:\"jigoshop_tax_rates\";s:0:\"\";s:22:\"jigoshop_calc_shipping\";s:3:\"yes\";s:29:\"jigoshop_enable_shipping_calc\";s:3:\"yes\";s:37:\"jigoshop_ship_to_billing_address_only\";s:2:\"no\";s:38:\"jigoshop_show_checkout_shipping_fields\";s:2:\"no\";s:24:\"jigoshop_default_gateway\";s:6:\"cheque\";s:29:\"jigoshop_error_disappear_time\";i:8000;s:31:\"jigoshop_message_disappear_time\";i:4000;s:15:\"jigoshop_emails\";a:12:{s:40:\"admin_order_status_pending_to_processing\";a:1:{i:0;i:4;}s:39:\"admin_order_status_pending_to_completed\";a:1:{i:0;i:4;}s:37:\"admin_order_status_pending_to_on-hold\";a:1:{i:0;i:4;}s:43:\"customer_order_status_pending_to_processing\";a:1:{i:0;i:5;}s:40:\"customer_order_status_pending_to_on-hold\";a:1:{i:0;i:6;}s:43:\"customer_order_status_on-hold_to_processing\";a:1:{i:0;i:7;}s:31:\"customer_order_status_completed\";a:1:{i:0;i:8;}s:30:\"customer_order_status_refunded\";a:1:{i:0;i:9;}s:21:\"send_customer_invoice\";a:1:{i:0;i:10;}s:22:\"low_stock_notification\";a:1:{i:0;i:11;}s:21:\"no_stock_notification\";a:1:{i:0;i:12;}s:33:\"product_on_backorder_notification\";a:1:{i:0;i:13;}}s:21:\"jigoshop_shop_page_id\";i:14;s:17:\"jigoshop_page-ids\";a:10:{i:0;i:14;i:1;i:15;i:2;i:16;i:3;i:17;i:4;i:18;i:5;i:19;i:6;i:20;i:7;i:21;i:8;i:22;i:9;i:23;}s:30:\"jigoshop_shop_redirect_page_id\";i:14;s:21:\"jigoshop_cart_page_id\";i:15;s:28:\"jigoshop_track_order_page_id\";i:16;s:26:\"jigoshop_myaccount_page_id\";i:17;s:29:\"jigoshop_edit_address_page_id\";i:18;s:32:\"jigoshop_change_password_page_id\";i:19;s:27:\"jigoshop_view_order_page_id\";i:20;s:25:\"jigoshop_checkout_page_id\";i:21;s:20:\"jigoshop_pay_page_id\";i:22;s:23:\"jigoshop_thanks_page_id\";i:23;s:26:\"jigoshop_flat_rate_enabled\";s:3:\"yes\";s:24:\"jigoshop_flat_rate_title\";s:12:\"Tarifa plana\";s:23:\"jigoshop_flat_rate_type\";s:5:\"order\";s:29:\"jigoshop_flat_rate_tax_status\";s:7:\"taxable\";s:23:\"jigoshop_flat_rate_cost\";s:1:\"0\";s:31:\"jigoshop_flat_rate_handling_fee\";s:0:\"\";s:31:\"jigoshop_flat_rate_availability\";s:3:\"all\";s:28:\"jigoshop_flat_rate_countries\";s:0:\"\";s:30:\"jigoshop_free_shipping_enabled\";s:2:\"no\";s:28:\"jigoshop_free_shipping_title\";s:14:\"Envio gratuito\";s:37:\"jigoshop_free_shipping_minimum_amount\";s:1:\"0\";s:35:\"jigoshop_free_shipping_availability\";s:3:\"all\";s:32:\"jigoshop_free_shipping_countries\";s:0:\"\";s:29:\"jigoshop_local_pickup_enabled\";s:2:\"no\";s:27:\"jigoshop_local_pickup_title\";s:14:\"Recogida local\";s:34:\"jigoshop_local_pickup_availability\";s:3:\"all\";s:31:\"jigoshop_local_pickup_countries\";s:0:\"\";s:28:\"jigoshop_worldpay_is_enabled\";s:2:\"no\";s:30:\"jigoshop_worldpay_method_title\";s:24:\"Credit Card via WorldPay\";s:38:\"jigoshop_worldpay_checkout_description\";s:189:\"When you Place your Order, you will be directed to the secured WorldPay servers to enter your credit card information.  (Your Billing Address above must match that used on your Credit Card)\";s:27:\"jigoshop_worldpay_test_mode\";s:2:\"no\";s:28:\"jigoshop_worldpay_install_id\";s:0:\"\";s:35:\"jigoshop_worldpay_response_password\";s:0:\"\";s:21:\"jigoshop_worldpay_md5\";s:3:\"yes\";s:33:\"jigoshop_worldpay_md5_secret_word\";s:0:\"\";s:32:\"jigoshop_worldpay_fixed_currency\";s:2:\"no\";s:39:\"jigoshop_worldpay_receive_security_logs\";s:3:\"yes\";s:39:\"jigoshop_worldpay_security_logs_emailto\";s:0:\"\";s:26:\"jigoshop_futurepay_enabled\";s:2:\"no\";s:24:\"jigoshop_futurepay_title\";s:9:\"FuturePay\";s:30:\"jigoshop_futurepay_description\";s:179:\"Pay with FuturePay. Buy now and pay later. No credit card needed.  You will be asked to enter your FuturePay username and password, or create an account when you Place your Order.\";s:23:\"jigoshop_futurepay_gmid\";s:0:\"\";s:23:\"jigoshop_futurepay_mode\";s:2:\"no\";s:23:\"jigoshop_paypal_enabled\";s:3:\"yes\";s:21:\"jigoshop_paypal_title\";s:6:\"PayPal\";s:27:\"jigoshop_paypal_description\";s:105:\"Pagar a travÃ©s de PayPal, usted puede pagar con su tarjeta de crÃ©dito si no tienes una cuenta de PayPal\";s:21:\"jigoshop_paypal_email\";s:0:\"\";s:29:\"jigoshop_paypal_send_shipping\";s:2:\"no\";s:29:\"jigoshop_paypal_force_payment\";s:2:\"no\";s:24:\"jigoshop_paypal_testmode\";s:2:\"no\";s:22:\"jigoshop_sandbox_email\";s:0:\"\";s:23:\"jigoshop_cheque_enabled\";s:3:\"yes\";s:21:\"jigoshop_cheque_title\";s:14:\"Cheque de pago\";s:27:\"jigoshop_cheque_description\";s:140:\"Por favor, envÃ­e su cheque al Nombre de la Tienda, Calle de Tienda, Ciudad de Tienda, Estado / Condado de Tienda, CÃ³digo postal de Tienda.\";s:30:\"jigoshop_bank_transfer_enabled\";s:2:\"no\";s:28:\"jigoshop_bank_transfer_title\";s:31:\"Pago por Transferencia Bancaria\";s:34:\"jigoshop_bank_transfer_description\";s:126:\"Por favor, use el formulario para transferir el pago de su pedido, una vez que se reciba el pago de su pedido serÃ¡ procesado.\";s:32:\"jigoshop_bank_transfer_bank_name\";s:0:\"\";s:33:\"jigoshop_bank_transfer_acc_number\";s:0:\"\";s:37:\"jigoshop_bank_transfer_account_holder\";s:0:\"\";s:32:\"jigoshop_bank_transfer_sort_code\";s:0:\"\";s:27:\"jigoshop_bank_transfer_iban\";s:0:\"\";s:26:\"jigoshop_bank_transfer_bic\";s:0:\"\";s:33:\"jigoshop_bank_transfer_additional\";s:0:\"\";s:20:\"jigoshop_cod_enabled\";s:2:\"no\";s:18:\"jigoshop_cod_title\";s:19:\"Pago contra entrega\";s:24:\"jigoshop_cod_description\";s:128:\"Por favor, pagar a Nombre de la Tienda, Calle de Tienda, Ciudad de Tienda, Estado / Condado de Tienda, CÃ³digo postal de Tienda.\";s:0:\"\";s:0:\"\";s:39:\"jigoshop_web_optimization_system_enable\";s:2:\"no\";s:44:\"jigoshop_web_optimization_system_clear_cache\";s:0:\"\";s:34:\"jigoshop_cart_favicon_count_enable\";s:0:\"\";s:31:\"jigoshop_cart_favicon_count_url\";s:0:\"\";s:36:\"jigoshop_cart_favicon_count_position\";s:0:\"\";s:36:\"jigoshop_cart_favicon_count_bg_color\";s:0:\"\";s:38:\"jigoshop_cart_favicon_count_text_color\";s:0:\"\";}','yes'),(155,'_transient_timeout_feed_47aae926d9ac13cd2ebcfa3c08c1c91e','1425209294','no'),(156,'_transient_feed_47aae926d9ac13cd2ebcfa3c08c1c91e','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Jigoshop\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://www.jigoshop.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"The Complete eCommerce Solution\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Feb 2015 06:53:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"http://wordpress.org/?v=4.1.1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:48:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Jigoshop Extension Updates (02-25-2015)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://www.jigoshop.com/blog/2015/02/25/jigoshop-extension-updates-02-25-2015/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://www.jigoshop.com/blog/2015/02/25/jigoshop-extension-updates-02-25-2015/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Feb 2015 20:45:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://www.jigoshop.com/?p=39439\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:640:\"<p>Hi Jigoshop Users, We are pleased to share with you the latest Jigoshop extension updates. Please check them out below and view the latest entries in their changelogs Follow-Up Email Auto-Responder: updated into 2.0.1 (previously 2.0) Fixed: Proper activation and <a class=\"read-more\" href=\"https://www.jigoshop.com/blog/2015/02/25/jigoshop-extension-updates-02-25-2015/\">Read More</a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/02/25/jigoshop-extension-updates-02-25-2015/\">Jigoshop Extension Updates (02-25-2015)</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Michael Stone Jigoshop Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1759:\"<h2>Hi Jigoshop Users,</h2>\n<p>We are pleased to share with you the latest Jigoshop extension updates. Please check them out below and view the latest entries in their changelogs<span id=\"more-39439\"></span></p>\n<p><strong>Follow-Up Email Auto-Responder:</strong> updated into 2.0.1 (previously 2.0)</p>\n<ul>\n<li>Fixed: Proper activation and deactivation hooks.</li>\n</ul>\n<p><strong>Jigoshop Product Purchasers:</strong> updated into 1.5.2 (previously 1.5.1)</p>\n<ul>\n<li>Fixed: Warnings about invalid argument for PDF and HTML results.</li>\n</ul>\n<p><strong>Premium Shipping:</strong> updated into 1.3.8 (previously 1.3.7)</p>\n<ul>\n<li>Fixed: Removed free shipping when action for multiple products is sum and no rules are matched.</li>\n<li>Fixed: Max value inclusion for all rule types.</li>\n<li>Improved: <code>refreshCache()</code> function renamed to avoid possibility of function redeclaration.</li>\n</ul>\n<p><strong>Jigoshop Multiple Currencies:</strong> updated into 1.8.1 (previously 1.8)</p>\n<ul>\n<li>Fixed: Loosing exchange rates.</li>\n</ul>\n<p><strong>Per Product Shipping:</strong> updated into 2.0.4 (previously 2.0.3)</p>\n<ul>\n<li>Improved: Code de-duplication</li>\n<li>Improved: No fear for removing &#8220;Add range&#8221; button now!</li>\n<li>Fixed: <code>&amp; Up</code> text in last ranges of variable products.</li>\n</ul>\n<p><strong>Stripe for Jigoshop:</strong> updated into 1.3.8 (previously 1.3.7)</p>\n<ul>\n<li>Fixed: Re-enabling order placing on proper validation of fields.</li>\n</ul>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/02/25/jigoshop-extension-updates-02-25-2015/\">Jigoshop Extension Updates (02-25-2015)</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://www.jigoshop.com/blog/2015/02/25/jigoshop-extension-updates-02-25-2015/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Jigoshop Recommended Retail Price Released!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://www.jigoshop.com/blog/2015/02/19/jigoshop-recommended-retail-price-released/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://www.jigoshop.com/blog/2015/02/19/jigoshop-recommended-retail-price-released/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Feb 2015 09:06:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://www.jigoshop.com/?p=39311\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:257:\" <p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/02/19/jigoshop-recommended-retail-price-released/\">Jigoshop Recommended Retail Price Released!</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Eric Olczyk\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:909:\"<h2>Jigoshop Recommended Retail Price has been released!</h2>\n<p>We are happy to announce the release of a newÂ Jigoshop Recommended Retail Price extension.</p>\n<p>This small and useful extension simply adds the additional Recommended Retail Price (RRP) tag to your product page.</p>\n<p>Itâ€™s especially designated for re-sellers willing to emphasizeÂ theirÂ great prices offered on branded products by displaying the RRP Price tag alongside their discounted online price.</p>\n<p>Visit the <a title=\"Recommended Retail Price\" href=\"https://www.jigoshop.com/product/jigoshop-recommended-retail-price/\" target=\"_blank\">plugin page</a> for more info.</p>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/02/19/jigoshop-recommended-retail-price-released/\">Jigoshop Recommended Retail Price Released!</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://www.jigoshop.com/blog/2015/02/19/jigoshop-recommended-retail-price-released/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Jigoshop 1.15.5 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://www.jigoshop.com/blog/2015/02/09/jigoshop-1-15-5-released/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://www.jigoshop.com/blog/2015/02/09/jigoshop-1-15-5-released/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 09 Feb 2015 16:21:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://www.jigoshop.com/?p=39083\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:627:\"<p>Â Dear Jigoshop Users, We are happy to announce the latest update &#8211; JigoshopÂ 1.15.5. In this update are improvements to JavaScript actions triggered for variations on Variable Products and better JavaScript performance on Checkout. View more Changelog items below. Changelog Improved: <a class=\"read-more\" href=\"https://www.jigoshop.com/blog/2015/02/09/jigoshop-1-15-5-released/\">Read More</a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/02/09/jigoshop-1-15-5-released/\">Jigoshop 1.15.5 Released</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Michael Stone Jigoshop Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:951:\"<h4>Â Dear Jigoshop Users,</h4>\n<p>We are happy to announce the latest update &#8211; JigoshopÂ 1.15.5.</p>\n<p>In this update are improvements to JavaScript actions triggered for variations on Variable Products and better JavaScript performance on Checkout. View more Changelog items below.<span id=\"more-39083\"></span></p>\n<h4>Changelog</h4>\n<ul>\n<li>Improved: JavaScript action is triggered after variation is shown:<code>jigoshop.variation.show</code> on <code>div.single_variation</code>.</li>\n<li>Improved: Better loading of checkout JavaScript files.</li>\n<li>Improved: cURL checking in System Info page.</li>\n<li>Fixed: Users can now properly select default tax classes and default taxing status for new products.</li>\n</ul>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/02/09/jigoshop-1-15-5-released/\">Jigoshop 1.15.5 Released</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://www.jigoshop.com/blog/2015/02/09/jigoshop-1-15-5-released/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"Jigoshopâ€™s Rating Improved!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://www.jigoshop.com/blog/2015/01/29/jigoshops-rating-improved/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://www.jigoshop.com/blog/2015/01/29/jigoshops-rating-improved/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 29 Jan 2015 19:49:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://www.jigoshop.com/?p=38817\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:601:\"<p>Dear Fellow Jigoshoppers! Thank you for being with us! You are amazing! As you read this post, the Jigoshop&#8217;s rating is getting higher and higher. In pursuance of your ultimate convenience and satisfaction, Jigoshop is being updated and improved as <a class=\"read-more\" href=\"https://www.jigoshop.com/blog/2015/01/29/jigoshops-rating-improved/\">Read More</a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/01/29/jigoshops-rating-improved/\">Jigoshop&#8217;s Rating Improved!</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Michael Stone Jigoshop Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:982:\"<h2>Dear Fellow Jigoshoppers!</h2>\n<p>Thank you for being with us! You are amazing! As you read this post, the Jigoshop&#8217;s rating is getting higher and higher.<span id=\"more-38817\"></span></p>\n<p>In pursuance of your ultimate convenience and satisfaction, Jigoshop is being updated and improved as frequently as possible.</p>\n<p>Our score on wordpress.org has risen and settled at 4.4/5!!Â It wouldn&#8217;t be possible without you! Thank you for rating and suport!</p>\n<p>If you haven&#8217;t voted yet, please review and rate us on:<a title=\" wordpress.org/support/view/plugin-reviews/jigoshop\" href=\"https://wordpress.org/support/view/plugin-reviews/jigoshop\" target=\"_blank\">Â https://wordpress.org/support/view/plugin-reviews/jigoshop</a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/01/29/jigoshops-rating-improved/\">Jigoshop&#8217;s Rating Improved!</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://www.jigoshop.com/blog/2015/01/29/jigoshops-rating-improved/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:48:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Two New Child Themes for Jigoshop Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://www.jigoshop.com/blog/2015/01/20/two-new-child-themes-jigoshop-available/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://www.jigoshop.com/blog/2015/01/20/two-new-child-themes-jigoshop-available/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 20 Jan 2015 00:06:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:6:\"Themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://www.jigoshop.com/?p=38303\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:552:\"<p>Dear Jigoshop community, We are glad to introduce you to our newest child themes: Decode &#38; Pinbin. Should you need more information, please make an acquaintance with the new themes by clicking the links below: http://extensions.jigoshop.com/pinbin/ http://extensions.jigoshop.com/decode/</p>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/01/20/two-new-child-themes-jigoshop-available/\">Two New Child Themes for Jigoshop Available</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Michael Stone Jigoshop Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:824:\"<p><strong>Dear Jigoshop community,</strong></p>\n<p>We are glad to introduce you to our newest child themes: Decode &amp; Pinbin.</p>\n<p>Should you need more information, please make an acquaintance with the new themes by clicking the links below:</p>\n<ul>\n<li><strong><a title=\"PinBin Demo\" href=\"http://extensions.jigoshop.com/pinbin/\" target=\"_blank\">http://extensions.jigoshop.com/pinbin/</a></strong></li>\n<li><strong><a title=\"Decode Demo\" href=\"http://extensions.jigoshop.com/decode/\" target=\"_blank\">http://extensions.jigoshop.com/decode/</a></strong></li>\n</ul>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/01/20/two-new-child-themes-jigoshop-available/\">Two New Child Themes for Jigoshop Available</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://www.jigoshop.com/blog/2015/01/20/two-new-child-themes-jigoshop-available/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:48:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Jigoshop Extension Updates (01-15-2015)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://www.jigoshop.com/blog/2015/01/15/jigoshop-extension-updates-01-15-2015/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://www.jigoshop.com/blog/2015/01/15/jigoshop-extension-updates-01-15-2015/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Jan 2015 22:23:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://www.jigoshop.com/?p=38065\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:646:\"<p>Dear Jigoshop Users, This time, there are a lot of extensionsÂ within this update pack, but with just one minor change. We&#8217;ve added action links to plugins&#8217; panels (support and some other vital URLs) CardSave Payment Gateway &#8211; Integrated: updated into <a class=\"read-more\" href=\"https://www.jigoshop.com/blog/2015/01/15/jigoshop-extension-updates-01-15-2015/\">Read More</a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/01/15/jigoshop-extension-updates-01-15-2015/\">Jigoshop Extension Updates (01-15-2015)</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Michael Stone Jigoshop Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4448:\"<p>Dear Jigoshop Users,</p>\n<p>This time, there are a lot of extensionsÂ within this update pack, but with just one minor change.<span id=\"more-38065\"></span></p>\n<p>We&#8217;ve added action links to plugins&#8217; panels (support and some other vital URLs)</p>\n<ul>\n<li><strong><a title=\"Cardsave Integrated Payment Gateway\" href=\"https://www.jigoshop.com/documentation/cardsave-integrated-payment-gateway/\" target=\"_blank\">CardSave Payment Gateway &#8211; Integrated</a>:</strong> updated into 2.0.1</li>\n<li><strong><a title=\"Category Pages and Thumbnails\" href=\"https://www.jigoshop.com/product/category-pages-and-thumbnails/\" target=\"_blank\">Category Pages and Thumbnails</a>:</strong> updated into 1.6.6</li>\n<li><strong><a title=\"Checkout Fields Manager\" href=\"https://www.jigoshop.com/product/checkout-fields-manager/\" target=\"_blank\">Checkout Fields Manager</a>:</strong> updated into 1.3.1</li>\n<li><strong><a title=\"Checkout Modal Message Box\" href=\"https://www.jigoshop.com/product/checkout-modal-message-box/\" target=\"_blank\">Checkout Modal Message Box</a>:</strong> updated into 1.4.4</li>\n<li><strong><a title=\"Custom Attributes TinyMCE\" href=\"https://www.jigoshop.com/product/custom-attributes-tinymce/\" target=\"_blank\">Custom Attributes TinyMCE</a>:</strong> updated into 1.7.3</li>\n<li><strong><a title=\"DataCash Payment Gateway\" href=\"https://www.jigoshop.com/product/datacash-payment-gateway/\" target=\"_blank\">DataCash Payment Gateway</a>:</strong> updated into 1.1.1</li>\n<li><strong><a title=\"DotPay Payment Gateway\" href=\"https://www.jigoshop.com/product/dotpay-payment-gateway/\" target=\"_blank\">DotPay Payment Gateway</a>:</strong> updated into 1.4.4</li>\n<li><strong><a title=\"eWAY Payment Gateway\" href=\"https://www.jigoshop.com/product/eway-payment-gateway/\" target=\"_blank\">eWAY Payment Gateway</a>:</strong> updated into 2.0.2</li>\n<li><strong><a title=\"Extended External Products\" href=\"https://www.jigoshop.com/product/extended-external-products/\" target=\"_blank\">Extended Category Widget</a>:</strong> updated into 1.2.1</li>\n<li><strong><a title=\"Fat Zebra Gateway\" href=\"https://www.jigoshop.com/product/fat-zebra-gateway/\" target=\"_blank\">Fat Zebra Gateway</a>:</strong> updated into 2.0.1</li>\n<li><strong><a title=\"Fedex Shipping Rates\" href=\"https://www.jigoshop.com/product/fedex-shipping-rates/\" target=\"_blank\">Fedex Shipping Rates</a>:</strong> updated into 2.2.8</li>\n<li><strong><a title=\"FreshBooks for Jigoshop\" href=\"https://www.jigoshop.com/product/freshbooks-for-jigoshop/\" target=\"_blank\">FreshBooks for Jigoshop</a>:</strong> updated into 1.2.3</li>\n<li><strong><a title=\"Grouped Products Pro\" href=\"https://www.jigoshop.com/product/grouped-products-pro/\" target=\"_blank\">Grouped Products Pro</a>:</strong> updated into 5.0.1</li>\n<li><strong><a title=\"Intuit Innovative Payment Gateway\" href=\"https://www.jigoshop.com/product/intuit-innovative-payment-gateway/\" target=\"_blank\">Intuit Innovative Payment Gateway</a>:</strong> updated into 1.0.1</li>\n<li><strong><a title=\"iPay88 Payment Gateway\" href=\"https://www.jigoshop.com/product/ipay88-payment-gateway/\" target=\"_blank\">iPay88 Payment Gateway</a>:</strong> updated into 2.0.1</li>\n<li><strong><a title=\"Jigoshop Convert To Complete\" href=\"https://www.jigoshop.com/product/jigoshop-convert-complete/\" target=\"_blank\">Jigoshop Convert To Complete</a>:</strong> updated into 2.0.2</li>\n<li><strong><a title=\"Jigoshop Coupon Purchasers\" href=\"https://www.jigoshop.com/product/jigoshop-coupon-purchasers/\" target=\"_blank\">Jigoshop Coupon Purchasers</a>:</strong> updated into 1.3.1</li>\n<li><strong><a title=\"Jigoshop Custom Availability\" href=\"https://www.jigoshop.com/product/jigoshop-custom-availability/\" target=\"_blank\">Jigoshop Custom Availability</a>:</strong> updated into 2.2.1</li>\n<li><strong><a title=\"Jigoshop Custom Availability\" href=\"https://www.jigoshop.com/product/jigoshop-custom-availability/\" target=\"_blank\">Jigoshop Drag &amp; Drop Cart</a>:</strong> updated into 1.0.10</li>\n<li><strong><a title=\"Jigoshop Duplicate Order\" href=\"https://www.jigoshop.com/product/jigoshop-duplicate-order/\" target=\"_blank\">Jigoshop Duplicate Order</a>:</strong> updated into 1.0.2</li>\n</ul>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/01/15/jigoshop-extension-updates-01-15-2015/\">Jigoshop Extension Updates (01-15-2015)</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://www.jigoshop.com/blog/2015/01/15/jigoshop-extension-updates-01-15-2015/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Redevelopment of Jigoshop Split PayPal Sale\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://www.jigoshop.com/blog/2015/01/14/redevelopment-jigoshop-split-paypal-sale/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://www.jigoshop.com/blog/2015/01/14/redevelopment-jigoshop-split-paypal-sale/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 14 Jan 2015 12:00:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://www.jigoshop.com/?p=37857\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:547:\"<p>Dear JigoshopÂ Users, We are content to announce that Jigoshop Split PayPal Sales is under redevelopment and soon will be available in a new, reconstructed version. For more information please visit the plugin&#8217;s page: https://www.jigoshop.com/product/jigoshop-split-paypal-sales/</p>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/01/14/redevelopment-jigoshop-split-paypal-sale/\">Redevelopment of Jigoshop Split PayPal Sale</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Michael Stone Jigoshop Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:735:\"<p>Dear JigoshopÂ Users,</p>\n<p>We are content to announce that Jigoshop Split PayPal Sales is under redevelopment and soon will be available in a new, reconstructed version.<span id=\"more-37857\"></span></p>\n<p><strong>For more information please visit the plugin&#8217;s page: <a title=\"Jigoshop Split Paypal Sales\" href=\"https://www.jigoshop.com/product/jigoshop-split-paypal-sales/\" target=\"_blank\">https://www.jigoshop.com/product/jigoshop-split-paypal-sales/</a></strong></p>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/01/14/redevelopment-jigoshop-split-paypal-sale/\">Redevelopment of Jigoshop Split PayPal Sale</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://www.jigoshop.com/blog/2015/01/14/redevelopment-jigoshop-split-paypal-sale/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:48:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Jigoshop 1.15.4 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://www.jigoshop.com/blog/2015/01/14/jigoshop-1-15-4-released/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://www.jigoshop.com/blog/2015/01/14/jigoshop-1-15-4-released/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 14 Jan 2015 00:19:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://www.jigoshop.com/?p=37901\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:636:\"<p>Dear Jigoshop Users! Our team is pleased to announce a new Jigoshop release of version 1.15.4. Please make your acquaintance with the short changelog below: Improved: [is_bank_transfer], [bank_info], [billing_euvatno] and [all_tax_classes] variables in order emails. Thanks to newash! Improved: Email <a class=\"read-more\" href=\"https://www.jigoshop.com/blog/2015/01/14/jigoshop-1-15-4-released/\">Read More</a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/01/14/jigoshop-1-15-4-released/\">Jigoshop 1.15.4 Released</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Michael Stone Jigoshop Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:712:\"<p>Dear Jigoshop Users!</p>\n<p>Our team is pleased to announce a new Jigoshop release of version 1.15.4.</p>\n<p><strong>Please make your acquaintance with the short changelog below:</strong></p>\n<ul>\n<li>Improved: [is_bank_transfer], [bank_info], [billing_euvatno] and [all_tax_classes] variables in order emails. Thanks to newash!</li>\n<li>Improved: Email shortcode parser to work with new variable.</li>\n<li>Fix: Bulk edit now can change price to not announced. Thanks to newash!</li>\n</ul>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/01/14/jigoshop-1-15-4-released/\">Jigoshop 1.15.4 Released</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://www.jigoshop.com/blog/2015/01/14/jigoshop-1-15-4-released/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"Amazon Simple Pay Gateway Redeveloped!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://www.jigoshop.com/blog/2015/01/13/amazon-simple-pay-gateway-redeveloped/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://www.jigoshop.com/blog/2015/01/13/amazon-simple-pay-gateway-redeveloped/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Jan 2015 12:00:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://www.jigoshop.com/?p=37853\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:531:\"<p>Dear Jigoshop customers! Our team is doing it&#8217;s best to keep you satisfied with our plugins.Â That is why, we have redeveloped following plugin: Amazon Simple Pay Gateway. For more information please visit: https://www.jigoshop.com/product/jigoshop-amazon-simple-gateway/</p>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/01/13/amazon-simple-pay-gateway-redeveloped/\">Amazon Simple Pay Gateway Redeveloped!</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Michael Stone Jigoshop Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:729:\"<p>Dear Jigoshop customers!</p>\n<p>Our team is doing it&#8217;s best to keep you satisfied with our plugins.Â That is why, we have redeveloped following plugin: Amazon Simple Pay Gateway.<span id=\"more-37853\"></span></p>\n<p><strong>For more information please visit: <a title=\"Jigoshop Amazon Simple Pay Gateway\" href=\"https://www.jigoshop.com/product/jigoshop-amazon-simple-gateway/\" target=\"_blank\">https://www.jigoshop.com/product/jigoshop-amazon-simple-gateway/</a></strong></p>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/01/13/amazon-simple-pay-gateway-redeveloped/\">Amazon Simple Pay Gateway Redeveloped!</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://www.jigoshop.com/blog/2015/01/13/amazon-simple-pay-gateway-redeveloped/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Jigoshop Extension Updates (01-12-2015)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://www.jigoshop.com/blog/2015/01/12/jigoshop-extension-updates-01-12-2015/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://www.jigoshop.com/blog/2015/01/12/jigoshop-extension-updates-01-12-2015/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Jan 2015 16:38:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://www.jigoshop.com/?p=37849\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:607:\"<p>Pack of small updates for Jigoshop extensions! Dear Jigoshop family! Have you been waiting for your plugins to get up to date? Our team is proud to announce the newest pack of updates for Jigoshop extensions. Among the changes you <a class=\"read-more\" href=\"https://www.jigoshop.com/blog/2015/01/12/jigoshop-extension-updates-01-12-2015/\">Read More</a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/01/12/jigoshop-extension-updates-01-12-2015/\">Jigoshop Extension Updates (01-12-2015)</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Michael Stone Jigoshop Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2397:\"<h2>Pack of small updates for Jigoshop extensions!</h2>\n<p><strong>Dear Jigoshop family!</strong></p>\n<p>Have you been waiting for your plugins to get up to date?</p>\n<p>Our team is proud to announce the newest pack of updates for Jigoshop extensions.<span id=\"more-37849\"></span></p>\n<p>Among the changes you can find some fixes and additions.</p>\n<p><strong>Read the changelogs below:</strong></p>\n<p><strong><a title=\"Table Rate Shipping\" href=\"https://www.jigoshop.com/product/table-rate-shipping/\" target=\"_blank\">Table Rate Shipping</a>: updated into 3.3.3</strong></p>\n<ul>\n<li>Fixed: Free rate where there was no rate available.</li>\n</ul>\n<p><strong><a title=\"Braintree Payment Supports\" href=\"https://www.jigoshop.com/product/braintree-payment-supports/\" target=\"_blank\">Braintree Payment Supports</a>: updated into 2.1.2</strong></p>\n<ul>\n<li>Added: actions links</li>\n</ul>\n<p><strong><a title=\"Buy Selected\" href=\"https://www.jigoshop.com/product/buy-selected/\" target=\"_blank\">Buy Selected</a>: updated into 1.0.3</strong></p>\n<ul>\n<li>Added: actions links</li>\n</ul>\n<p><strong><a title=\"Google Product Feed\" href=\"https://www.jigoshop.com/product/google-product-feed/\" target=\"_blank\">Google Product Feed</a>: updated into 2.1.1</strong></p>\n<ul>\n<li>Added: actions links</li>\n<li>Fix: removed notice when adding new product</li>\n</ul>\n<p><strong><a title=\"Jigoshop Coupon for Share\" href=\"https://www.jigoshop.com/product/jigoshop-coupon-share/\" target=\"_blank\">Jigoshop Coupon for Share</a>: updated into 1.1.3</strong></p>\n<ul>\n<li>Added: actions links</li>\n</ul>\n<p><strong><a title=\"MailChimp\" href=\"https://www.jigoshop.com/product/mailchimp/\" target=\"_blank\">MailChimp</a>: updated into 2.0.1</strong></p>\n<ul>\n<li>Fixed: Fatal Errors</li>\n<li>Added: actions links</li>\n</ul>\n<p><strong><a title=\"USPS Advanced Shipping\" href=\"https://www.jigoshop.com/product/usps-advanced-shipping/\" target=\"_blank\">USPS Advanced Shipping</a>: updated into 1.3.1</strong></p>\n<ul>\n<li>Added: actions links</li>\n<li>Fixed: Removed missing product dimension shipping error.</li>\n</ul>\n<h2>Once again, Happy New Year and enjoy the updates!</h2>\n<p>The post <a rel=\"nofollow\" href=\"https://www.jigoshop.com/blog/2015/01/12/jigoshop-extension-updates-01-12-2015/\">Jigoshop Extension Updates (01-12-2015)</a> appeared first on <a rel=\"nofollow\" href=\"https://www.jigoshop.com\">Jigoshop</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://www.jigoshop.com/blog/2015/01/12/jigoshop-extension-updates-01-12-2015/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:30:\"https://www.jigoshop.com/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:16:{s:4:\"date\";s:29:\"Sat, 28 Feb 2015 23:28:13 GMT\";s:6:\"server\";s:6:\"Apache\";s:15:\"x-frame-options\";s:4:\"DENY\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:7:\"expires\";s:29:\"Thu, 19 Nov 1981 08:52:00 GMT\";s:13:\"cache-control\";s:62:\"no-store, no-cache, must-revalidate, post-check=0, pre-check=0\";s:6:\"pragma\";s:8:\"no-cache\";s:13:\"last-modified\";s:29:\"Fri, 27 Feb 2015 06:53:49 GMT\";s:12:\"x-robots-tag\";s:14:\"noindex,follow\";s:4:\"vary\";s:26:\"Accept-Encoding,User-Agent\";s:16:\"content-encoding\";s:4:\"gzip\";s:14:\"content-length\";s:4:\"5067\";s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:10:\"set-cookie\";a:2:{i:0;s:44:\"PHPSESSID=g2h1drtav565h6b77v6u7s0ql2; path=/\";i:1;s:18:\"ROUTEID=.1; path=/\";}s:25:\"strict-transport-security\";s:16:\"max-age=15552000\";s:10:\"connection\";s:5:\"close\";}s:5:\"build\";s:14:\"20130911040210\";}','no'),(157,'_transient_timeout_feed_mod_47aae926d9ac13cd2ebcfa3c08c1c91e','1425209294','no'),(158,'_transient_feed_mod_47aae926d9ac13cd2ebcfa3c08c1c91e','1425166094','no'),(162,'current_theme','Twenty Thirteen','yes'),(163,'theme_mods_twentyfourteen','a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1425169713;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";N;s:9:\"sidebar-3\";N;}}}','yes'),(164,'theme_switched','','yes'),(165,'_transient_is_multi_author','0','yes'),(166,'_transient_twentyfifteen_categories','1','yes'),(168,'_transient_twentyfourteen_category_count','1','yes'),(169,'theme_mods_twentythirteen','a:1:{i:0;b:0;}','yes'),(170,'wd_bwg_version','1.2.15','no'),(171,'wd_bwg_theme_version','1.0.0','no'),(172,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1425587596;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.0.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.0.4.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}s:21:\"jigoshop/jigoshop.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"21834\";s:4:\"slug\";s:8:\"jigoshop\";s:6:\"plugin\";s:21:\"jigoshop/jigoshop.php\";s:11:\"new_version\";s:6:\"1.15.5\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/jigoshop/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/jigoshop.1.15.5.zip\";}s:31:\"photo-gallery/photo-gallery.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"47473\";s:4:\"slug\";s:13:\"photo-gallery\";s:6:\"plugin\";s:31:\"photo-gallery/photo-gallery.php\";s:11:\"new_version\";s:6:\"1.2.15\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/photo-gallery/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/photo-gallery.1.2.15.zip\";}}}','yes'),(183,'_site_transient_timeout_theme_roots','1425589391','yes'),(184,'_site_transient_theme_roots','a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,4,'jigoshop_email_subject','[[shop_name]] New Customer Order - [order_number]'),(3,4,'jigoshop_email_actions','a:3:{i:0;s:40:\"admin_order_status_pending_to_processing\";i:1;s:39:\"admin_order_status_pending_to_completed\";i:2;s:37:\"admin_order_status_pending_to_on-hold\";}'),(4,5,'jigoshop_email_subject','[[shop_name]] Order Received'),(5,5,'jigoshop_email_actions','a:1:{i:0;s:43:\"customer_order_status_pending_to_processing\";}'),(6,6,'jigoshop_email_subject','[[shop_name]] Order Received'),(7,6,'jigoshop_email_actions','a:1:{i:0;s:40:\"customer_order_status_pending_to_on-hold\";}'),(8,7,'jigoshop_email_subject','[[shop_name]] Order Received'),(9,7,'jigoshop_email_actions','a:1:{i:0;s:43:\"customer_order_status_on-hold_to_processing\";}'),(10,8,'jigoshop_email_subject','[[shop_name]] Order Complete'),(11,8,'jigoshop_email_actions','a:1:{i:0;s:31:\"customer_order_status_completed\";}'),(12,9,'jigoshop_email_subject','[[shop_name]] Order Refunded'),(13,9,'jigoshop_email_actions','a:1:{i:0;s:30:\"customer_order_status_refunded\";}'),(14,10,'jigoshop_email_subject','Invoice for Order: [order_number]'),(15,10,'jigoshop_email_actions','a:1:{i:0;s:21:\"send_customer_invoice\";}'),(16,11,'jigoshop_email_subject','[[shop_name]] Product low in stock'),(17,11,'jigoshop_email_actions','a:1:{i:0;s:22:\"low_stock_notification\";}'),(18,12,'jigoshop_email_subject','[[shop_name]] Product out of stock'),(19,12,'jigoshop_email_actions','a:1:{i:0;s:21:\"no_stock_notification\";}'),(20,13,'jigoshop_email_subject','[[shop_name]] Product Backorder on Order: [order_number].'),(21,13,'jigoshop_email_actions','a:1:{i:0;s:33:\"product_on_backorder_notification\";}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2015-02-28 23:02:47','2015-02-28 23:02:47','Bienvenido a WordPress. Esta es tu primera entrada. EdÃ­tala o bÃ³rrala, Â¡y comienza a publicar!.','Â¡Hola mundo!','','publish','open','open','','hola-mundo','','','2015-02-28 23:02:47','2015-02-28 23:02:47','',0,'http://mywordpress.com/?p=1',0,'post','',1),(2,1,'2015-02-28 23:02:47','2015-02-28 23:02:47','Esto es una pÃ¡gina de ejemplo. Es diferente a una entrada porque permanece fija en un lugar y se mostrarÃ¡ en la navegaciÃ³n de tu sitio (en la mayorÃ­a de los temas). La mayorÃ­a de la gente empieza con una pÃ¡gina de Acerca de, que les presenta a los potenciales visitantes del sitio. PodrÃ­a ser algo como esto:\n\n<blockquote>Â¡Hola! Soy mensajero por el dÃ­a, aspirante a actor por la noche, y este es mi blog. Vivo en Madrid, tengo un perrazo llamado Duque y me gustan las piÃ±as coladas (y que me pille un chaparrÃ³n)</blockquote>\n\n...o algo asÃ­:\n\n<blockquote>La empresa XYZ se fundÃ³ en 1971 y ha estado ofreciendo \"cosas\" de calidad al pÃºblico desde entonces. Situada en Madrid, XYZ emplea a mÃ¡s de 2.000 personas y hace todo tipo de cosas sorprendentes para la comunidad de Madrid.</blockquote>\n\nSi eres nuevo en WordPress deberÃ­as ir a <a href=\"http://mywordpress.com/wp-admin/\">tu escritorio</a> para borrar esta pÃ¡gina y crear pÃ¡ginas nuevas con tu propio contenido. Â¡PÃ¡salo bien!','PÃ¡gina de ejemplo','','publish','open','open','','pagina-ejemplo','','','2015-02-28 23:02:47','2015-02-28 23:02:47','',0,'http://mywordpress.com/?page_id=2',0,'page','',0),(3,1,'2015-02-28 23:05:23','0000-00-00 00:00:00','','Borrador automÃ¡tico','','auto-draft','open','open','','','','','2015-02-28 23:05:23','0000-00-00 00:00:00','',0,'http://mywordpress.com/?p=3',0,'post','',0),(4,1,'2015-02-28 23:27:24','2015-02-28 23:27:24','You have received an order from [billing_first_name] [billing_last_name]. Their order is as follows:<br/>==============================<wbr />==============================\n		Order details:\n		<span class=\"il\">ORDER</span>Â [order_number] Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â Date:Â [order_date]\n		==============================<wbr />==============================\n\n		[order_items]\n\n		Subtotal:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [subtotal]\n		Shipping:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [shipping_cost] via [shipping_method]\n		Total:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [total]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER DETAILS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		Email:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  <a href=\"mailto:[billing_email]\">[billing_email]</a>\n		Tel:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [billing_phone]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		BILLING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[billing_first_name] [billing_last_name]\n		[billing_address_1], [billing_address_2], [billing_city]\n		[billing_state], [billing_country], [billing_postcode]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		SHIPPING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[shipping_first_name] [shipping_last_name]\n		[shipping_address_1], [shipping_address_2], [shipping_city]\n		[shipping_state], [shipping_country], [shipping_postcode]\n		[customer_note]\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER NOTE\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[value][/customer_note]','New order admin notification','','publish','closed','closed','','new-order-admin-notification','','','2015-02-28 23:27:24','2015-02-28 23:27:24','',0,'http://mywordpress.com/?p=4',0,'shop_email','',0),(5,1,'2015-02-28 23:27:25','2015-02-28 23:27:25','Thank you, we are now processing your order. Your order\'s details are below:<br/>==============================<wbr />==============================\n		Order details:\n		<span class=\"il\">ORDER</span>Â [order_number] Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â Date:Â [order_date]\n		==============================<wbr />==============================\n\n		[order_items]\n\n		Subtotal:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [subtotal]\n		Shipping:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [shipping_cost] via [shipping_method]\n		Total:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [total]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER DETAILS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		Email:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  <a href=\"mailto:[billing_email]\">[billing_email]</a>\n		Tel:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [billing_phone]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		BILLING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[billing_first_name] [billing_last_name]\n		[billing_address_1], [billing_address_2], [billing_city]\n		[billing_state], [billing_country], [billing_postcode]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		SHIPPING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[shipping_first_name] [shipping_last_name]\n		[shipping_address_1], [shipping_address_2], [shipping_city]\n		[shipping_state], [shipping_country], [shipping_postcode]\n		[customer_note]\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER NOTE\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[value][/customer_note]','Customer order status pending to processing','','publish','closed','closed','','customer-order-status-pending-to-processing','','','2015-02-28 23:27:25','2015-02-28 23:27:25','',0,'http://mywordpress.com/?p=5',0,'shop_email','',0),(6,1,'2015-02-28 23:27:25','2015-02-28 23:27:25','Thank you, we have received your order. Your order\'s details are below:<br/>==============================<wbr />==============================\n		Order details:\n		<span class=\"il\">ORDER</span>Â [order_number] Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â Date:Â [order_date]\n		==============================<wbr />==============================\n\n		[order_items]\n\n		Subtotal:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [subtotal]\n		Shipping:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [shipping_cost] via [shipping_method]\n		Total:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [total]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER DETAILS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		Email:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  <a href=\"mailto:[billing_email]\">[billing_email]</a>\n		Tel:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [billing_phone]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		BILLING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[billing_first_name] [billing_last_name]\n		[billing_address_1], [billing_address_2], [billing_city]\n		[billing_state], [billing_country], [billing_postcode]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		SHIPPING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[shipping_first_name] [shipping_last_name]\n		[shipping_address_1], [shipping_address_2], [shipping_city]\n		[shipping_state], [shipping_country], [shipping_postcode]\n		[customer_note]\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER NOTE\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[value][/customer_note]','Customer order status pending to on-hold','','publish','closed','closed','','customer-order-status-pending-to-on-hold','','','2015-02-28 23:27:25','2015-02-28 23:27:25','',0,'http://mywordpress.com/?p=6',0,'shop_email','',0),(7,1,'2015-02-28 23:27:25','2015-02-28 23:27:25','Thank you, we are now processing your order. Your order\'s details are below:<br/>==============================<wbr />==============================\n		Order details:\n		<span class=\"il\">ORDER</span>Â [order_number] Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â Date:Â [order_date]\n		==============================<wbr />==============================\n\n		[order_items]\n\n		Subtotal:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [subtotal]\n		Shipping:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [shipping_cost] via [shipping_method]\n		Total:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [total]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER DETAILS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		Email:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  <a href=\"mailto:[billing_email]\">[billing_email]</a>\n		Tel:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [billing_phone]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		BILLING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[billing_first_name] [billing_last_name]\n		[billing_address_1], [billing_address_2], [billing_city]\n		[billing_state], [billing_country], [billing_postcode]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		SHIPPING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[shipping_first_name] [shipping_last_name]\n		[shipping_address_1], [shipping_address_2], [shipping_city]\n		[shipping_state], [shipping_country], [shipping_postcode]\n		[customer_note]\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER NOTE\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[value][/customer_note]','Customer order status on-hold to processing','','publish','closed','closed','','customer-order-status-on-hold-to-processing','','','2015-02-28 23:27:25','2015-02-28 23:27:25','',0,'http://mywordpress.com/?p=7',0,'shop_email','',0),(8,1,'2015-02-28 23:27:25','2015-02-28 23:27:25','Your order is complete. Your order\'s details are below:<br/>==============================<wbr />==============================\n		Order details:\n		<span class=\"il\">ORDER</span>Â [order_number] Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â Date:Â [order_date]\n		==============================<wbr />==============================\n\n		[order_items]\n\n		Subtotal:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [subtotal]\n		Shipping:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [shipping_cost] via [shipping_method]\n		Total:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [total]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER DETAILS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		Email:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  <a href=\"mailto:[billing_email]\">[billing_email]</a>\n		Tel:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [billing_phone]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		BILLING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[billing_first_name] [billing_last_name]\n		[billing_address_1], [billing_address_2], [billing_city]\n		[billing_state], [billing_country], [billing_postcode]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		SHIPPING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[shipping_first_name] [shipping_last_name]\n		[shipping_address_1], [shipping_address_2], [shipping_city]\n		[shipping_state], [shipping_country], [shipping_postcode]\n		[customer_note]\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER NOTE\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[value][/customer_note]','Customer order status completed','','publish','closed','closed','','customer-order-status-completed','','','2015-02-28 23:27:25','2015-02-28 23:27:25','',0,'http://mywordpress.com/?p=8',0,'shop_email','',0),(9,1,'2015-02-28 23:27:25','2015-02-28 23:27:25','Your order has been refunded. Your order\'s details are below:<br/>==============================<wbr />==============================\n		Order details:\n		<span class=\"il\">ORDER</span>Â [order_number] Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â Date:Â [order_date]\n		==============================<wbr />==============================\n\n		[order_items]\n\n		Subtotal:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [subtotal]\n		Shipping:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [shipping_cost] via [shipping_method]\n		Total:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [total]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER DETAILS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		Email:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  <a href=\"mailto:[billing_email]\">[billing_email]</a>\n		Tel:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [billing_phone]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		BILLING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[billing_first_name] [billing_last_name]\n		[billing_address_1], [billing_address_2], [billing_city]\n		[billing_state], [billing_country], [billing_postcode]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		SHIPPING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[shipping_first_name] [shipping_last_name]\n		[shipping_address_1], [shipping_address_2], [shipping_city]\n		[shipping_state], [shipping_country], [shipping_postcode]\n		[customer_note]\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER NOTE\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[value][/customer_note]','Customer order status refunded','','publish','closed','closed','','customer-order-status-refunded','','','2015-02-28 23:27:25','2015-02-28 23:27:25','',0,'http://mywordpress.com/?p=9',0,'shop_email','',0),(10,1,'2015-02-28 23:27:25','2015-02-28 23:27:25','==============================<wbr />==============================\n		Order details:\n		<span class=\"il\">ORDER</span>Â [order_number] Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â Date:Â [order_date]\n		==============================<wbr />==============================\n\n		[order_items]\n\n		Subtotal:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [subtotal]\n		Shipping:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [shipping_cost] via [shipping_method]\n		Total:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [total]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER DETAILS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		Email:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  <a href=\"mailto:[billing_email]\">[billing_email]</a>\n		Tel:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [billing_phone]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		BILLING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[billing_first_name] [billing_last_name]\n		[billing_address_1], [billing_address_2], [billing_city]\n		[billing_state], [billing_country], [billing_postcode]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		SHIPPING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[shipping_first_name] [shipping_last_name]\n		[shipping_address_1], [shipping_address_2], [shipping_city]\n		[shipping_state], [shipping_country], [shipping_postcode]\n		[customer_note]\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER NOTE\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[value][/customer_note]','Send customer invoice','','publish','closed','closed','','send-customer-invoice','','','2015-02-28 23:27:25','2015-02-28 23:27:25','',0,'http://mywordpress.com/?p=10',0,'shop_email','',0),(11,1,'2015-02-28 23:27:25','2015-02-28 23:27:25','#[product_id] [product_name] ([sku]) is low in stock.','Low stock notification','','publish','closed','closed','','low-stock-notification','','','2015-02-28 23:27:25','2015-02-28 23:27:25','',0,'http://mywordpress.com/?p=11',0,'shop_email','',0),(12,1,'2015-02-28 23:27:26','2015-02-28 23:27:26','#[product_id] [product_name] ([sku]) is out of stock.','No stock notification','','publish','closed','closed','','no-stock-notification','','','2015-02-28 23:27:26','2015-02-28 23:27:26','',0,'http://mywordpress.com/?p=12',0,'shop_email','',0),(13,1,'2015-02-28 23:27:26','2015-02-28 23:27:26','#[product_id] [product_name] ([sku]) was found to be on backorder.<br/>==============================<wbr />==============================\n		Order details:\n		<span class=\"il\">ORDER</span>Â [order_number] Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â Date:Â [order_date]\n		==============================<wbr />==============================\n\n		[order_items]\n\n		Subtotal:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [subtotal]\n		Shipping:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â [shipping_cost] via [shipping_method]\n		Total:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [total]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER DETAILS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		Email:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  <a href=\"mailto:[billing_email]\">[billing_email]</a>\n		Tel:Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  [billing_phone]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		BILLING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[billing_first_name] [billing_last_name]\n		[billing_address_1], [billing_address_2], [billing_city]\n		[billing_state], [billing_country], [billing_postcode]\n\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		SHIPPING ADDRESS\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[shipping_first_name] [shipping_last_name]\n		[shipping_address_1], [shipping_address_2], [shipping_city]\n		[shipping_state], [shipping_country], [shipping_postcode]\n		[customer_note]\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		CUSTOMER NOTE\n		------------------------------<wbr />------------------------------<wbr />--------------------\n		[value][/customer_note]','Product on backorder notification','','publish','closed','closed','','product-on-backorder-notification','','','2015-02-28 23:27:26','2015-02-28 23:27:26','',0,'http://mywordpress.com/?p=13',0,'shop_email','',0),(14,1,'2015-02-28 23:27:27','2015-02-28 23:27:27','','Shop','','publish','closed','open','','shop','','','2015-02-28 23:27:27','2015-02-28 23:27:27','',0,'http://mywordpress.com/?page_id=14',0,'page','',0),(15,1,'2015-02-28 23:27:27','2015-02-28 23:27:27','[jigoshop_cart]','Cart','','publish','closed','open','','cart','','','2015-02-28 23:27:27','2015-02-28 23:27:27','',0,'http://mywordpress.com/?page_id=15',0,'page','',0),(16,1,'2015-02-28 23:27:27','2015-02-28 23:27:27','[jigoshop_order_tracking]','Track your order','','publish','closed','open','','order-tracking','','','2015-02-28 23:27:27','2015-02-28 23:27:27','',0,'http://mywordpress.com/?page_id=16',0,'page','',0),(17,1,'2015-02-28 23:27:27','2015-02-28 23:27:27','[jigoshop_my_account]','My Account','','publish','closed','open','','my-account','','','2015-02-28 23:27:27','2015-02-28 23:27:27','',0,'http://mywordpress.com/?page_id=17',0,'page','',0),(18,1,'2015-02-28 23:27:27','2015-02-28 23:27:27','[jigoshop_edit_address]','Edit My Address','','publish','closed','open','','edit-address','','','2015-02-28 23:27:27','2015-02-28 23:27:27','',17,'http://mywordpress.com/?page_id=18',0,'page','',0),(19,1,'2015-02-28 23:27:27','2015-02-28 23:27:27','[jigoshop_change_password]','Change Password','','publish','closed','open','','change-password','','','2015-02-28 23:27:27','2015-02-28 23:27:27','',17,'http://mywordpress.com/?page_id=19',0,'page','',0),(20,1,'2015-02-28 23:27:27','2015-02-28 23:27:27','[jigoshop_view_order]','View Order','','publish','closed','open','','view-order','','','2015-02-28 23:27:27','2015-02-28 23:27:27','',17,'http://mywordpress.com/?page_id=20',0,'page','',0),(21,1,'2015-02-28 23:27:27','2015-02-28 23:27:27','[jigoshop_checkout]','Checkout','','publish','closed','open','','checkout','','','2015-02-28 23:27:27','2015-02-28 23:27:27','',0,'http://mywordpress.com/?page_id=21',0,'page','',0),(22,1,'2015-02-28 23:27:27','2015-02-28 23:27:27','[jigoshop_pay]','Checkout &rarr; Pay','','publish','closed','open','','pay','','','2015-02-28 23:27:27','2015-02-28 23:27:27','',21,'http://mywordpress.com/?page_id=22',0,'page','',0),(23,1,'2015-02-28 23:27:27','2015-02-28 23:27:27','[jigoshop_thankyou]','Thank you','','publish','closed','open','','thanks','','','2015-02-28 23:27:27','2015-02-28 23:27:27','',21,'http://mywordpress.com/?page_id=23',0,'page','',0),(24,1,'2015-03-01 00:26:11','0000-00-00 00:00:00','','Order &ndash; March 1, 2015 @ 12:26 AM','','auto-draft','open','open','','','','','2015-03-01 00:26:11','0000-00-00 00:00:00','',0,'http://mywordpress.com/?post_type=shop_order&p=24',0,'shop_order','',0),(25,1,'2015-03-01 00:26:53','0000-00-00 00:00:00','','Borrador automÃ¡tico','','auto-draft','open','open','','','','','2015-03-01 00:26:53','0000-00-00 00:00:00','',0,'http://mywordpress.com/?post_type=product&p=25',0,'product','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'product_type','',0,0),(3,3,'product_type','',0,0),(4,4,'product_type','',0,0),(5,5,'product_type','',0,0),(6,6,'product_type','',0,0),(7,7,'product_type','',0,0),(8,8,'shop_order_status','',0,0),(9,9,'shop_order_status','',0,0),(10,10,'shop_order_status','',0,0),(11,11,'shop_order_status','',0,0),(12,12,'shop_order_status','',0,0),(13,13,'shop_order_status','',0,0),(14,14,'shop_order_status','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Sin categorÃ­a','sin-categoria',0),(2,'simple','simple',0),(3,'external','external',0),(4,'grouped','grouped',0),(5,'configurable','configurable',0),(6,'downloadable','downloadable',0),(7,'virtual','virtual',0),(8,'new','new',0),(9,'pending','pending',0),(10,'on-hold','on-hold',0),(11,'processing','processing',0),(12,'completed','completed',0),(13,'refunded','refunded',0),(14,'cancelled','cancelled',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','edicsonm@gmail.com'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'wp_user_level','10'),(12,1,'dismissed_wp_pointers','wp360_locks,wp390_widgets,wp410_dfw'),(13,1,'show_welcome_panel','1'),(15,1,'wp_dashboard_quick_press_last_post_id','3'),(17,1,'session_tokens','a:1:{s:64:\"ae547f4c3b4f648bf010860f4cebe2ff82e49494948a1039b72156fb49702532\";a:4:{s:10:\"expiration\";i:1425343191;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0\";s:5:\"login\";i:1425170391;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'edicsonm@gmail.com','$P$BunOkYfp8If5q.xjOa0JnrWR8j5b1u.','edicsonmgmail-com','edicson@billingbuddy.com','','2015-02-28 23:02:47','',0,'edicsonm@gmail.com');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'WordPress'
--

--
-- Dumping routines for database 'WordPress'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-06 12:45:33
CREATE DATABASE  IF NOT EXISTS `IPG` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `IPG`;
-- MySQL dump 10.13  Distrib 5.6.23, for Linux (x86_64)
--
-- Host: localhost    Database: IPG
-- ------------------------------------------------------
-- Server version	5.6.23

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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `Addr_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Addr_Country` char(2) NOT NULL,
  `Addr_State` char(50) DEFAULT NULL,
  `Addr_City` char(50) NOT NULL,
  `Addr_PostalCode` char(20) NOT NULL,
  `Addr_Line1` char(50) NOT NULL,
  `Addr_Line2` char(50) DEFAULT NULL,
  PRIMARY KEY (`Addr_ID`),
  UNIQUE KEY `Addr_ID` (`Addr_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BusinessType`
--

DROP TABLE IF EXISTS `BusinessType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BusinessType` (
  `Buty_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Buty_Description` varchar(50) NOT NULL,
  `Buty_Status` enum('0','1') NOT NULL DEFAULT '0',
  `Buty_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Buty_ID`),
  UNIQUE KEY `Buty_ID_UNIQUE` (`Buty_ID`),
  UNIQUE KEY `Buty_Description_UNIQUE` (`Buty_Description`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BusinessType`
--

LOCK TABLES `BusinessType` WRITE;
/*!40000 ALTER TABLE `BusinessType` DISABLE KEYS */;
INSERT INTO `BusinessType` VALUES (1,'Corporation','0','2015-03-05 10:12:12'),(2,'Sole Proprietor','0','2015-03-05 10:10:25'),(3,'LLC','1','2015-03-05 10:05:27'),(4,'Partnership','1','2015-03-05 10:05:41');
/*!40000 ALTER TABLE `BusinessType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Card`
--

DROP TABLE IF EXISTS `Card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Card` (
  `Card_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Cust_ID` bigint(20) NOT NULL COMMENT 'Customer ID from the table Customer. Can be null is there are not used registred with this card.',
  `Card_IDStripe` char(50) NOT NULL,
  `Card_Brand` char(20) DEFAULT NULL,
  `Card_ExpMonth` int(2) NOT NULL,
  `Card_ExpYear` int(2) NOT NULL,
  `Card_FingerPrint` char(20) DEFAULT NULL COMMENT 'Stripe Field.',
  `Card_Funding` char(20) DEFAULT NULL,
  `Card_Number` varchar(50) NOT NULL,
  `Card_Name` varchar(50) NOT NULL,
  `Card_Last4` varchar(4) NOT NULL,
  `Card_AddressCity` char(50) DEFAULT NULL,
  `Card_AddressCountry` char(50) DEFAULT NULL,
  `Card_AddressState` char(50) DEFAULT NULL,
  `Card_AddressLine1` char(50) DEFAULT NULL,
  `Card_AddressLine2` char(50) DEFAULT NULL,
  `Card_AddressZip` int(10) DEFAULT NULL,
  `Card_Country` char(3) NOT NULL COMMENT 'Country name in ISO format.',
  `Card_BlackListed` enum('','Yes','No') DEFAULT NULL,
  `Card_BlackListedReason` varchar(100) DEFAULT NULL,
  `Card_BlackListedCreateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Card_ID`),
  UNIQUE KEY `Card_ID` (`Card_ID`),
  UNIQUE KEY `Card_Number_UNIQUE` (`Card_Number`),
  UNIQUE KEY `Card_IDStripe` (`Card_IDStripe`),
  KEY `IX_FK_Card_Customer` (`Cust_ID`),
  CONSTRAINT `FK_Card_Customer` FOREIGN KEY (`Cust_ID`) REFERENCES `Customer` (`Cust_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card`
--

LOCK TABLES `Card` WRITE;
/*!40000 ALTER TABLE `Card` DISABLE KEYS */;
INSERT INTO `Card` VALUES (1,1,'card_15D4Pr2eZvKYlo2CLLBvQcUB',NULL,1,2015,NULL,NULL,'4012888888881881','Isauro Morales','1881',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(2,1,'card_15Dhss2eZvKYlo2CtHD2SycW','Visa',1,2015,NULL,'credit','4242424242424242','Andres Correa','4242',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(4,1,'card_15TiqM2eZvKYlo2CapcjaZYu','Visa',1,2016,'O3pqFmyLW2EZyTSV','credit','4000000000000010','Milton Malpica','0010',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(5,1,'card_15Tit12eZvKYlo2CGfs1HRlb','Visa',1,2016,'3Zbsw8NvUfURjjfT','credit','4000000000000101','Carlos Torres','0101',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(6,2,'card_15TjUM2eZvKYlo2CSuPu7Pq7','MasterCard',1,2016,'7a9bk9ncM08SXfua','credit','5555555555554444','Michelle Earle','4444',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(7,1,'card_15TjsxFBMYSHQioJABIMHNnA','Visa',1,2016,'gms4oo4eC8vfCKQU','credit','4000000000000028','Edicson Morales','0028',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(8,1,'card_15TjuBFBMYSHQioJ8qycMK6r','Visa',1,2016,'Ez8roEj98KES1J95','credit','4000000000000077','Emerson Morales','0077',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL),(9,4,'card_15UQTUFBMYSHQioJEiRsjs0t','MasterCard',1,2016,'uqIccrnlKxFCAptH','prepaid','5105105105105100','Nelcy Torres','5100',NULL,NULL,NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Certificate`
--

DROP TABLE IF EXISTS `Certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Certificate` (
  `Cert_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Merc_ID` bigint(20) NOT NULL,
  `Cert_Name` varchar(50) NOT NULL,
  `Cert_Status` enum('0','1') NOT NULL DEFAULT '1',
  `Cert_CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Cert_ExpirationTime` datetime NOT NULL,
  `Cert_BBKeyStore` blob NOT NULL,
  `Cert_MerchantKeyStore` blob NOT NULL,
  `Cert_Log` varchar(2500) NOT NULL,
  `Cert_BBKeyStoreInformation` varchar(500) NOT NULL,
  `Cert_MerchantKeyStoreInformation` varchar(500) NOT NULL,
  PRIMARY KEY (`Cert_ID`),
  UNIQUE KEY `Cert_ID_UNIQUE` (`Cert_ID`),
  KEY `FK_Certificate_Merchant_idx` (`Merc_ID`),
  CONSTRAINT `FK_Certificate_Merchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Certificate`
--

LOCK TABLES `Certificate` WRITE;
/*!40000 ALTER TABLE `Certificate` DISABLE KEYS */;
INSERT INTO `Certificate` VALUES (1,2,'Tu Carro','0','2015-01-28 14:44:34','2016-01-28 14:44:34','þíþí\0\0\0\0\0\0\0\0\0\0	merchant2\0\0K.w\0X.509\0\0K0‚G0‚/ û^ç0\r	*†H†÷\r\00T10	UVE10U\nTu Carro - Venezuela10U\nTechnology10UTu Carro0\r150128011208Z\r160128011208Z0T10	UVE10U\nTu Carro - Venezuela10U\nTechnology10UTu Carro0‚\"0\r	*†H†÷\r\0‚\00‚\n‚\0¹€3¶ik­ûŽÅ£%¬´pb»XW™¥Øßl\"•lE—Ë%‹–Cí÷ô¨h°½«‹)ïûÖqüÑ®Õ½àºéí%p70#;$‹Ýì;rdVø1×áÖ“q:`\r9Sƒ§¯5=GÙ–Ä‹ã>^A#4Ã#?Šk=\"<:tù0á\\ßqÉÅÕþ\'ÊRKºê`Uœ¿ÈÙéøÚë»r^Ü~F°é‘ìfuQpŸ‰\"A\n¼&cýuŸaå§0Ðð›Q/„§+)Œ©EÚP¥Îß?cbòŠC=05¢{•JÅ…Ä{þò…´ÍÐcèÍ£Ï]÷:tÞ\0ÜqSv÷\0£!00U$\r¶ÈÜtiÄCÖó;å§Ï0\r	*†H†÷\r\0‚\0}½Öë8‰«ô>(Æpu¸Zl¤A–Þ„ YG¶o²¢+#&\\†ZéSê#ãLa•±>Ý4)>õíÖ š]dºÝ_?}y±òy÷Wd.`–žE­ÇbÅËpˆ:ú¿\'r5t²é\Z“€œiæ€¡¨~xìC\r›WÂÜá(¤ly›}pŒ0Ã®cÏJRž@¹’ÈªÔ	ëõÔ7î}„ÚÑ«ÛÑ!ÒTk‡³YuäÖ$!¢ÿ¡Ÿ	û$ø*O®‰Ë^ÎyD6ì‹ÈŠ±·a5ÃIAz§Ý:þ— K/G¬BØüUMÅ[Õ6ruÌÌ¤_XÜ—Á	‰Œ\"\0\0\0\0\rbillingbuddy2\0\0K.uE\0\00‚ÿ0\n+*\0‚ë#ÇÅ½œ„ì«áÑXŽ%dÄ\n×ˆš`P\\Þ¢š*H¢b†MÛÍ¢\"²)B9MRhµõà«íÿ9\0v‡¸L¹çñ˜Bt`èÎ8AosIt7åÎtí ÝL¼ªÝÿ$žn5d•Œ•©fÂã!ðþÊäÄ`\ZÅ½Ö8²jB‚N|½KpKa`»8‚O òª l!±HÞX¸™jö·	0?ÚIê{î}`í«ã‹Fâ°C8Å†Ê¡sÛžc *V»â€%x_dµ{cÏ$èüíã­rÖ€2“SÂtìî?[™õÓ¦	è½?IÔ\rü½¥ÈÎ‡p¬£hSS‘ÀM|~_óållþÜFç]Ý$;ìj\\þò’î¼Š{)CÇ=É7Óâ kß’©û½½’zh0Š¶%ö›þØ‚>ðŒþÔYªiNáë¬ŠnÓ›¡V„€é‹ªrt6üo¿ïDá½¿¡g¹/‰\0X†ï†kHX¿õñžñ+e¸GPÂrRwWA	p1Š‚úß¼ r¢µýÑÊô¦Œ`¦2}—Ò·E3„æVÙ\nÇ{¾¡9HAxcÆÂ4ù¼æö.°/NÒrxÖÃëÈNÓÑý\"Â°‰µQNœ¿›£N¦˜	%Ax y´€nm9C¿Ò¯sôýV¶üJ«=sT=·¬Üñb¶n×§(æøŒ‘&~ÇiîÿøãOÃÑiÇ¹›¢V£¹ÿÛF²®DþZˆº¶„U‹mÄ²Ž¡´˜[á¬«gß/0{¯ãÿ\"JŸb¡ÉÄ\"@5:Ëð®8jÂ6Í®qÎâu\n	ö¬9ûÎ?¡£•*óXÔÙÎ\0óuÄÊ9œM\0¸à)Ög¯d‰¤¼Ýw[šFU!zcíóZp.ÀÓæD…ò–4ãAe@ÙÑ—H*‚ÊýIN8¬D\n©²Ýâˆ¯SK“§nñ«*ÂGG¡i\'ä(ÿÍ˜WÒO6—N<LÂ]Z×+’2Y^æ\0‚m&‘\rúÎ¢ñ…\"¾ù3LWƒtûÞ„œ¾	‰)Ì)ÍüäpÒÚá§Ÿû×°_±=S3W#É‘`¼ÓrÓÎó«Íÿ¸à>ìösV¤eÞ)®p2RÙ+¶˜`B?@œ,ŽI]Ÿ fÏ3™­¯;“hõ!ƒª´/ÈOÈìò/	sÜ5ù$ê¹µ¸¦zÔS\n× ú(ü³ÏzÎIöÓÃö})@Öõ7dlJ Å›÷…X˜%péUÛøšðöÈÇò0ýÞb,E§#h\"{¯foA8Ì¨çy°·9W(ñ’T(/¯*ÞU¡Ô3,\n ûŽžC—Â}/÷mŠÈ†*Ý}¤ Üú¥–w?Ê™aO¿Î: ±¸%–³‰ZÕ}g—yl‹éYË%I&ŽîÙ\Z~oŽ1¡g4…¯\07éiôš©ùrÞ[:?þ[äoëœû_‚*²¿à¸\"|AÎZ &ò`Lož5™ß¦õ­¬èEMû¥)öSGˆ‹°09Þ‚}\'¯DfÒ›.¾2äw¸îpˆ¸œÈ44pÐû$½èm@üLQ|÷t;Ã`úŒ^y”Xï Ä÷ÝogÃãN.XDWêþÈ­B;”îî‹‰Sz{i½Ò¾	W™	šgÉ®íEò{NŸ\0\0\0\0X.509\0\0H0‚D0‚, (É0\r	*†H†÷\r\00S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0\r150128011209Z\r160128011209Z0S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0‚\"0\r	*†H†÷\r\0‚\00‚\n‚\0Æ’Î7=úËâŠ5a@#Aì*Ð\')‡dùª~­a_5ecD}O(ûE\'VUáh³s?I´q±›s«<hº`èuå5\ZVv0•[dzC}‹©‚3;÷-½[<<¯œ·[CkŽCõÀ1ÞÇBUÖ¹¿ª¢>6Á\ZñÆ1~û)CV±Sm6\Z¬‡0· ã<UDæÞ¯³jGU®Ÿ¬‡yÅÁõ}zõ±}ôò€%ß«LÒ©(@‰ÛÄýC°:+zÛºföŠ¼laàròGê²Ç<÷u¼¾út¡ˆZ\0âSõÝoY:.tSUÏŸ“b§Q—Gý‘Á/=qÜ‡à&à®\\	únÃ\0£!00Uê?Ôÿå ¬adc¼|}d~·åÕ0\r	*†H†÷\r\0‚\0Q\0Ðô—´j	;¼š÷ìÊ\\È\\¨FÙ™¹ú2(PaŠÁþ\nxmõ§C¸k[x¡¯ä¦¡‘p-³-Ï“>ì“J¤ÄWÉ¹(T„¿•‰ÇgÜôÏ¤*“¬¯å®>ì–Zæut}Æ1ŠX†F&EqY°*G’‰~™ëä SF«´L+ÉùŒZåÏ4€e³ê$\r%½({å	ìdU”9K\"2ì<…¦]7ZïòÄ¯ÏbYÌ©¨}bã[WÅ›Õ5\0aëŸÈ´ò\næ¯\nÄ¯6~’ =É`i_ôwþH¨±[AmRsFätÎû©W×àõv·XêYèê9¬d«®‹r¤ä6ã\"aò°^ZˆÛ|Z°àf·ÑÃžjÝ@','þíþí\0\0\0\0\0\0\0\0\0\0\rbillingbuddy2\0\0K.vk\0X.509\0\0H0‚D0‚, (É0\r	*†H†÷\r\00S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0\r150128011209Z\r160128011209Z0S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0‚\"0\r	*†H†÷\r\0‚\00‚\n‚\0Æ’Î7=úËâŠ5a@#Aì*Ð\')‡dùª~­a_5ecD}O(ûE\'VUáh³s?I´q±›s«<hº`èuå5\ZVv0•[dzC}‹©‚3;÷-½[<<¯œ·[CkŽCõÀ1ÞÇBUÖ¹¿ª¢>6Á\ZñÆ1~û)CV±Sm6\Z¬‡0· ã<UDæÞ¯³jGU®Ÿ¬‡yÅÁõ}zõ±}ôò€%ß«LÒ©(@‰ÛÄýC°:+zÛºföŠ¼laàròGê²Ç<÷u¼¾út¡ˆZ\0âSõÝoY:.tSUÏŸ“b§Q—Gý‘Á/=qÜ‡à&à®\\	únÃ\0£!00Uê?Ôÿå ¬adc¼|}d~·åÕ0\r	*†H†÷\r\0‚\0Q\0Ðô—´j	;¼š÷ìÊ\\È\\¨FÙ™¹ú2(PaŠÁþ\nxmõ§C¸k[x¡¯ä¦¡‘p-³-Ï“>ì“J¤ÄWÉ¹(T„¿•‰ÇgÜôÏ¤*“¬¯å®>ì–Zæut}Æ1ŠX†F&EqY°*G’‰~™ëä SF«´L+ÉùŒZåÏ4€e³ê$\r%½({å	ìdU”9K\"2ì<…¦]7ZïòÄ¯ÏbYÌ©¨}bã[WÅ›Õ5\0aëŸÈ´ò\næ¯\nÄ¯6~’ =É`i_ôwþH¨±[AmRsFätÎû©W×àõv·XêYèê9¬d«®‹r¤ä6ã\0\0\0\0	merchant2\0\0K.qb\0\00‚þ0\n+*\0‚ê›‚JŸIÿa€¢R*`Àºe¦mtDD”r•lâ\0‘†ëWåTp5a~~Y¼ˆÜ	I+E­M7½~‚Ao3lm˜×Î_n½iVîiÚÃ=K°Õß’ ÷!â¶ÂO,’Ÿå\nñ§xð²,6ÞA|¥/Ó(;‡Î&³\ZÊµ>Kï8ÓmÖ ˜-bžiç“Íþ’âòÝvÄ…Þ,Hïyí\\_ê¡\Z3GW@|ZK”åÆâ¥³Ô­‘ïbn·œ….õš D€\"\0i‡2¯ü†$‘41·wc§Ñ\n¶~=7à*„Új^soîÇ„æ7tØ{V,#}½Æ»k¿.Ø‹J	ªKwž„AÄrË8ØG÷úéãzá¼%­ðèbôÙÎFãu„3›âxœì‡ÖA§V}ª’…Ÿª¥Õ©oÅ?…­¹ÊQµ‘ðW6hŽªZ®#<åƒÝ«Æ”Æ• Ì±9SZÂóx¥=qô(!§,V÷ý4ù²lôíX~ŠúVc§ù’´5ö¼‚H2N<\ZÓZŸ°v®Æ¹3ì¼!ß€©w\\cdîÄ%hê ù<F–ïÌ3Áy3‹5ô\0Ô*¬Nú“pçvü­àåÜGÝ–º£Œ^I9Îy«¾q\rx{j…¦\\Á“¬Eí{~h`p¾®£ÖèÎÿ2p3Øbµöe6è{Ù\"á)¯+ÿ+ÆØ‹žùw2ÿþ&eþQ†8†Í\' ¬ƒ*]§¦™³<\r¹`ßÕÓ Â{\Zg^6¢ïIâò\\?÷ÜØ‹³ÄR?2Æ×f¯Ñ:Æ)È¾#ZÀ8{.Bvqù}}ÜGºó‹²ó\\šü˜¶·DJ„þÐp‚¡™§]ºU(_„®Rëzë«ÎƒêÍÊ†$æR}Û>˜Èb:§Ÿ«”~å,Öþ0É$’ÛŸ_c§<âÉ?TY¦ëŸ‘ ÃVs;µÖMBŠZmx-nÞòyß”2@š„ ÉÁúb¦/‚„û˜®Î×YU`CîË&mçÆVO‰´ŽÿÏÊâ{‹Ë‡Sê˜ëÔª¯Tâ›âÚ‘Ä¡möÞêu»9#\Z!ý‹…¹ªŒÄšéÉÃn,kYÛ›¹±\\#L&9Eâñ\nJƒø‘$³ç”ÈPÉ3Ìuc‡—‡E‡àˆ?¿yÍÛdçÛÌýaèÊþO3\\ô}°âH)kË,\\úiíÔ§1µì_!òonƒò6wù²\Zœ`©)ZïeG¬’³Q8°”wýYu\\käÐT¸.$´€Ù#æï¤ps¤…ŒèØÖ©æ‘¾T&G¶ˆ‚gOba¤„Ã¼ý7ìn£–7M¯X¬a\0¸Hq4BÂŠIyÎ:’àŸÊJ_‹´qê®í\"íÏ±Y\'¡xì)«ûys	ÔØVÀ%³5ýàúwq1Ûö˜31@óÅ5M8¬Ç9ŒËöÄkýŒÚ=k½‰¦(\'Jît-Â+U=ÊûÈ3]¶Yº)EÆ÷óð\Z’Ä,}öÌ–¼àOÏ!fKÜR’ð=ã»²ç£¬FˆcËîc]\\üGªuiFu	ù˜\\„ëS‹W´å¢‚íæbr¿m[ÿï%[¢ÅÓ¶d¼Œ¬.ž;\ZØÖ %§\0vµÍàˆ\'läa§Ãw¢¨õ´š9z?\r‹ÜÌ™ôZ8g‰ì:KÚqw+²ùQ†Z—Ï,äÞ‚Ê\0\0\0\0X.509\0\0K0‚G0‚/ û^ç0\r	*†H†÷\r\00T10	UVE10U\nTu Carro - Venezuela10U\nTechnology10UTu Carro0\r150128011208Z\r160128011208Z0T10	UVE10U\nTu Carro - Venezuela10U\nTechnology10UTu Carro0‚\"0\r	*†H†÷\r\0‚\00‚\n‚\0¹€3¶ik­ûŽÅ£%¬´pb»XW™¥Øßl\"•lE—Ë%‹–Cí÷ô¨h°½«‹)ïûÖqüÑ®Õ½àºéí%p70#;$‹Ýì;rdVø1×áÖ“q:`\r9Sƒ§¯5=GÙ–Ä‹ã>^A#4Ã#?Šk=\"<:tù0á\\ßqÉÅÕþ\'ÊRKºê`Uœ¿ÈÙéøÚë»r^Ü~F°é‘ìfuQpŸ‰\"A\n¼&cýuŸaå§0Ðð›Q/„§+)Œ©EÚP¥Îß?cbòŠC=05¢{•JÅ…Ä{þò…´ÍÐcèÍ£Ï]÷:tÞ\0ÜqSv÷\0£!00U$\r¶ÈÜtiÄCÖó;å§Ï0\r	*†H†÷\r\0‚\0}½Öë8‰«ô>(Æpu¸Zl¤A–Þ„ YG¶o²¢+#&\\†ZéSê#ãLa•±>Ý4)>õíÖ š]dºÝ_?}y±òy÷Wd.`–žE­ÇbÅËpˆ:ú¿\'r5t²é\Z“€œiæ€¡¨~xìC\r›WÂÜá(¤ly›}pŒ0Ã®cÏJRž@¹’ÈªÔ	ëõÔ7î}„ÚÑ«ÛÑ!ÒTk‡³YuäÖ$!¢ÿ¡Ÿ	û$ø*O®‰Ë^ÎyD6ì‹ÈŠ±·a5ÃIAz§Ý:þ— K/G¬BØüUMÅ[Õ6ruÌÌ¤_XÜ—Á	‰Œ\"¬¯j–œá ~_‰x³ð#Ù/Ê-','error de herramienta de claves: java.lang.Exception: La contraseÃ±a de clave debe tener al menos 6 caractereserror de herramienta de claves: java.io.IOException: Keystore was tampered with, or password was incorrecterror de herramienta de claves: java.lang.Exception: No se ha generado el par de claves, el alias <BillingBuddy2> ya existeerror de herramienta de claves: java.io.IOException: Keystore was tampered with, or password was incorrecterror de herramienta de claves: java.lang.Exception: Certificado no importado, el alias <Merchant2> ya existeMerchant Certificate InformationStartMerchantCertificateInformationerror de herramienta de claves: java.io.IOException: Keystore was tampered with, or password was incorrectStopMerchantCertificateInformationBillingBuddy Certificate InformationStartBillingBuddyCertificateInformationTipo de AlmacÃ©n de Claves: JKSProveedor de AlmacÃ©n de Claves: SUNSu almacÃ©n de claves contiene 2 entradasbillingbuddy2, 28/01/2015, PrivateKeyEntry, Huella Digital de Certificado (SHA1): 64:24:8A:CC:F1:E0:A2:63:23:CE:C8:25:D1:B4:B2:AB:15:18:E5:C3merchant2, 28/01/2015, trustedCertEntry, Huella Digital de Certificado (SHA1): 85:F0:D6:7A:A4:F9:0F:05:BB:32:25:EF:26:81:0E:81:66:9B:BD:15StopBillingBuddyCertificateInformationFOLDER#/run/media/Edicson/Informacion IPG/worspaceLifeRay/Pruebas/Merchant01KEYSTOREBB#BillingBuddy2.jksKEYSTOREMERCHANT#Merchant2.jks','Tipo de AlmacÃ©n de Claves: JKSProveedor de AlmacÃ©n de Claves: SUNSu almacÃ©n de claves contiene 2 entradasbillingbuddy2, 28/01/2015, PrivateKeyEntry, Huella Digital de Certificado (SHA1): 64:24:8A:CC:F1:E0:A2:63:23:CE:C8:25:D1:B4:B2:AB:15:18:E5:C3merchant2, 28/01/2015, trustedCertEntry, Huella Digital de Certificado (SHA1): 85:F0:D6:7A:A4:F9:0F:05:BB:32:25:EF:26:81:0E:81:66:9B:BD:15','error de herramienta de claves: java.io.IOException: Keystore was tampered with, or password was incorrect'),(2,2,'Tu Carro','1','2015-01-28 20:06:59','2016-01-28 20:06:59','þíþí\0\0\0\0\0\0\0\0\0\0	merchant2\0\0K.w\0X.509\0\0K0‚G0‚/ û^ç0\r	*†H†÷\r\00T10	UVE10U\nTu Carro - Venezuela10U\nTechnology10UTu Carro0\r150128011208Z\r160128011208Z0T10	UVE10U\nTu Carro - Venezuela10U\nTechnology10UTu Carro0‚\"0\r	*†H†÷\r\0‚\00‚\n‚\0¹€3¶ik­ûŽÅ£%¬´pb»XW™¥Øßl\"•lE—Ë%‹–Cí÷ô¨h°½«‹)ïûÖqüÑ®Õ½àºéí%p70#;$‹Ýì;rdVø1×áÖ“q:`\r9Sƒ§¯5=GÙ–Ä‹ã>^A#4Ã#?Šk=\"<:tù0á\\ßqÉÅÕþ\'ÊRKºê`Uœ¿ÈÙéøÚë»r^Ü~F°é‘ìfuQpŸ‰\"A\n¼&cýuŸaå§0Ðð›Q/„§+)Œ©EÚP¥Îß?cbòŠC=05¢{•JÅ…Ä{þò…´ÍÐcèÍ£Ï]÷:tÞ\0ÜqSv÷\0£!00U$\r¶ÈÜtiÄCÖó;å§Ï0\r	*†H†÷\r\0‚\0}½Öë8‰«ô>(Æpu¸Zl¤A–Þ„ YG¶o²¢+#&\\†ZéSê#ãLa•±>Ý4)>õíÖ š]dºÝ_?}y±òy÷Wd.`–žE­ÇbÅËpˆ:ú¿\'r5t²é\Z“€œiæ€¡¨~xìC\r›WÂÜá(¤ly›}pŒ0Ã®cÏJRž@¹’ÈªÔ	ëõÔ7î}„ÚÑ«ÛÑ!ÒTk‡³YuäÖ$!¢ÿ¡Ÿ	û$ø*O®‰Ë^ÎyD6ì‹ÈŠ±·a5ÃIAz§Ý:þ— K/G¬BØüUMÅ[Õ6ruÌÌ¤_XÜ—Á	‰Œ\"\0\0\0\0\rbillingbuddy2\0\0K.uE\0\00‚ÿ0\n+*\0‚ë#ÇÅ½œ„ì«áÑXŽ%dÄ\n×ˆš`P\\Þ¢š*H¢b†MÛÍ¢\"²)B9MRhµõà«íÿ9\0v‡¸L¹çñ˜Bt`èÎ8AosIt7åÎtí ÝL¼ªÝÿ$žn5d•Œ•©fÂã!ðþÊäÄ`\ZÅ½Ö8²jB‚N|½KpKa`»8‚O òª l!±HÞX¸™jö·	0?ÚIê{î}`í«ã‹Fâ°C8Å†Ê¡sÛžc *V»â€%x_dµ{cÏ$èüíã­rÖ€2“SÂtìî?[™õÓ¦	è½?IÔ\rü½¥ÈÎ‡p¬£hSS‘ÀM|~_óållþÜFç]Ý$;ìj\\þò’î¼Š{)CÇ=É7Óâ kß’©û½½’zh0Š¶%ö›þØ‚>ðŒþÔYªiNáë¬ŠnÓ›¡V„€é‹ªrt6üo¿ïDá½¿¡g¹/‰\0X†ï†kHX¿õñžñ+e¸GPÂrRwWA	p1Š‚úß¼ r¢µýÑÊô¦Œ`¦2}—Ò·E3„æVÙ\nÇ{¾¡9HAxcÆÂ4ù¼æö.°/NÒrxÖÃëÈNÓÑý\"Â°‰µQNœ¿›£N¦˜	%Ax y´€nm9C¿Ò¯sôýV¶üJ«=sT=·¬Üñb¶n×§(æøŒ‘&~ÇiîÿøãOÃÑiÇ¹›¢V£¹ÿÛF²®DþZˆº¶„U‹mÄ²Ž¡´˜[á¬«gß/0{¯ãÿ\"JŸb¡ÉÄ\"@5:Ëð®8jÂ6Í®qÎâu\n	ö¬9ûÎ?¡£•*óXÔÙÎ\0óuÄÊ9œM\0¸à)Ög¯d‰¤¼Ýw[šFU!zcíóZp.ÀÓæD…ò–4ãAe@ÙÑ—H*‚ÊýIN8¬D\n©²Ýâˆ¯SK“§nñ«*ÂGG¡i\'ä(ÿÍ˜WÒO6—N<LÂ]Z×+’2Y^æ\0‚m&‘\rúÎ¢ñ…\"¾ù3LWƒtûÞ„œ¾	‰)Ì)ÍüäpÒÚá§Ÿû×°_±=S3W#É‘`¼ÓrÓÎó«Íÿ¸à>ìösV¤eÞ)®p2RÙ+¶˜`B?@œ,ŽI]Ÿ fÏ3™­¯;“hõ!ƒª´/ÈOÈìò/	sÜ5ù$ê¹µ¸¦zÔS\n× ú(ü³ÏzÎIöÓÃö})@Öõ7dlJ Å›÷…X˜%péUÛøšðöÈÇò0ýÞb,E§#h\"{¯foA8Ì¨çy°·9W(ñ’T(/¯*ÞU¡Ô3,\n ûŽžC—Â}/÷mŠÈ†*Ý}¤ Üú¥–w?Ê™aO¿Î: ±¸%–³‰ZÕ}g—yl‹éYË%I&ŽîÙ\Z~oŽ1¡g4…¯\07éiôš©ùrÞ[:?þ[äoëœû_‚*²¿à¸\"|AÎZ &ò`Lož5™ß¦õ­¬èEMû¥)öSGˆ‹°09Þ‚}\'¯DfÒ›.¾2äw¸îpˆ¸œÈ44pÐû$½èm@üLQ|÷t;Ã`úŒ^y”Xï Ä÷ÝogÃãN.XDWêþÈ­B;”îî‹‰Sz{i½Ò¾	W™	šgÉ®íEò{NŸ\0\0\0\0X.509\0\0H0‚D0‚, (É0\r	*†H†÷\r\00S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0\r150128011209Z\r160128011209Z0S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0‚\"0\r	*†H†÷\r\0‚\00‚\n‚\0Æ’Î7=úËâŠ5a@#Aì*Ð\')‡dùª~­a_5ecD}O(ûE\'VUáh³s?I´q±›s«<hº`èuå5\ZVv0•[dzC}‹©‚3;÷-½[<<¯œ·[CkŽCõÀ1ÞÇBUÖ¹¿ª¢>6Á\ZñÆ1~û)CV±Sm6\Z¬‡0· ã<UDæÞ¯³jGU®Ÿ¬‡yÅÁõ}zõ±}ôò€%ß«LÒ©(@‰ÛÄýC°:+zÛºföŠ¼laàròGê²Ç<÷u¼¾út¡ˆZ\0âSõÝoY:.tSUÏŸ“b§Q—Gý‘Á/=qÜ‡à&à®\\	únÃ\0£!00Uê?Ôÿå ¬adc¼|}d~·åÕ0\r	*†H†÷\r\0‚\0Q\0Ðô—´j	;¼š÷ìÊ\\È\\¨FÙ™¹ú2(PaŠÁþ\nxmõ§C¸k[x¡¯ä¦¡‘p-³-Ï“>ì“J¤ÄWÉ¹(T„¿•‰ÇgÜôÏ¤*“¬¯å®>ì–Zæut}Æ1ŠX†F&EqY°*G’‰~™ëä SF«´L+ÉùŒZåÏ4€e³ê$\r%½({å	ìdU”9K\"2ì<…¦]7ZïòÄ¯ÏbYÌ©¨}bã[WÅ›Õ5\0aëŸÈ´ò\næ¯\nÄ¯6~’ =É`i_ôwþH¨±[AmRsFätÎû©W×àõv·XêYèê9¬d«®‹r¤ä6ã\"aò°^ZˆÛ|Z°àf·ÑÃžjÝ@','þíþí\0\0\0\0\0\0\0\0\0\0\rbillingbuddy2\0\0K.vk\0X.509\0\0H0‚D0‚, (É0\r	*†H†÷\r\00S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0\r150128011209Z\r160128011209Z0S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0‚\"0\r	*†H†÷\r\0‚\00‚\n‚\0Æ’Î7=úËâŠ5a@#Aì*Ð\')‡dùª~­a_5ecD}O(ûE\'VUáh³s?I´q±›s«<hº`èuå5\ZVv0•[dzC}‹©‚3;÷-½[<<¯œ·[CkŽCõÀ1ÞÇBUÖ¹¿ª¢>6Á\ZñÆ1~û)CV±Sm6\Z¬‡0· ã<UDæÞ¯³jGU®Ÿ¬‡yÅÁõ}zõ±}ôò€%ß«LÒ©(@‰ÛÄýC°:+zÛºföŠ¼laàròGê²Ç<÷u¼¾út¡ˆZ\0âSõÝoY:.tSUÏŸ“b§Q—Gý‘Á/=qÜ‡à&à®\\	únÃ\0£!00Uê?Ôÿå ¬adc¼|}d~·åÕ0\r	*†H†÷\r\0‚\0Q\0Ðô—´j	;¼š÷ìÊ\\È\\¨FÙ™¹ú2(PaŠÁþ\nxmõ§C¸k[x¡¯ä¦¡‘p-³-Ï“>ì“J¤ÄWÉ¹(T„¿•‰ÇgÜôÏ¤*“¬¯å®>ì–Zæut}Æ1ŠX†F&EqY°*G’‰~™ëä SF«´L+ÉùŒZåÏ4€e³ê$\r%½({å	ìdU”9K\"2ì<…¦]7ZïòÄ¯ÏbYÌ©¨}bã[WÅ›Õ5\0aëŸÈ´ò\næ¯\nÄ¯6~’ =É`i_ôwþH¨±[AmRsFätÎû©W×àõv·XêYèê9¬d«®‹r¤ä6ã\0\0\0\0	merchant2\0\0K.qb\0\00‚þ0\n+*\0‚ê›‚JŸIÿa€¢R*`Àºe¦mtDD”r•lâ\0‘†ëWåTp5a~~Y¼ˆÜ	I+E­M7½~‚Ao3lm˜×Î_n½iVîiÚÃ=K°Õß’ ÷!â¶ÂO,’Ÿå\nñ§xð²,6ÞA|¥/Ó(;‡Î&³\ZÊµ>Kï8ÓmÖ ˜-bžiç“Íþ’âòÝvÄ…Þ,Hïyí\\_ê¡\Z3GW@|ZK”åÆâ¥³Ô­‘ïbn·œ….õš D€\"\0i‡2¯ü†$‘41·wc§Ñ\n¶~=7à*„Új^soîÇ„æ7tØ{V,#}½Æ»k¿.Ø‹J	ªKwž„AÄrË8ØG÷úéãzá¼%­ðèbôÙÎFãu„3›âxœì‡ÖA§V}ª’…Ÿª¥Õ©oÅ?…­¹ÊQµ‘ðW6hŽªZ®#<åƒÝ«Æ”Æ• Ì±9SZÂóx¥=qô(!§,V÷ý4ù²lôíX~ŠúVc§ù’´5ö¼‚H2N<\ZÓZŸ°v®Æ¹3ì¼!ß€©w\\cdîÄ%hê ù<F–ïÌ3Áy3‹5ô\0Ô*¬Nú“pçvü­àåÜGÝ–º£Œ^I9Îy«¾q\rx{j…¦\\Á“¬Eí{~h`p¾®£ÖèÎÿ2p3Øbµöe6è{Ù\"á)¯+ÿ+ÆØ‹žùw2ÿþ&eþQ†8†Í\' ¬ƒ*]§¦™³<\r¹`ßÕÓ Â{\Zg^6¢ïIâò\\?÷ÜØ‹³ÄR?2Æ×f¯Ñ:Æ)È¾#ZÀ8{.Bvqù}}ÜGºó‹²ó\\šü˜¶·DJ„þÐp‚¡™§]ºU(_„®Rëzë«ÎƒêÍÊ†$æR}Û>˜Èb:§Ÿ«”~å,Öþ0É$’ÛŸ_c§<âÉ?TY¦ëŸ‘ ÃVs;µÖMBŠZmx-nÞòyß”2@š„ ÉÁúb¦/‚„û˜®Î×YU`CîË&mçÆVO‰´ŽÿÏÊâ{‹Ë‡Sê˜ëÔª¯Tâ›âÚ‘Ä¡möÞêu»9#\Z!ý‹…¹ªŒÄšéÉÃn,kYÛ›¹±\\#L&9Eâñ\nJƒø‘$³ç”ÈPÉ3Ìuc‡—‡E‡àˆ?¿yÍÛdçÛÌýaèÊþO3\\ô}°âH)kË,\\úiíÔ§1µì_!òonƒò6wù²\Zœ`©)ZïeG¬’³Q8°”wýYu\\käÐT¸.$´€Ù#æï¤ps¤…ŒèØÖ©æ‘¾T&G¶ˆ‚gOba¤„Ã¼ý7ìn£–7M¯X¬a\0¸Hq4BÂŠIyÎ:’àŸÊJ_‹´qê®í\"íÏ±Y\'¡xì)«ûys	ÔØVÀ%³5ýàúwq1Ûö˜31@óÅ5M8¬Ç9ŒËöÄkýŒÚ=k½‰¦(\'Jît-Â+U=ÊûÈ3]¶Yº)EÆ÷óð\Z’Ä,}öÌ–¼àOÏ!fKÜR’ð=ã»²ç£¬FˆcËîc]\\üGªuiFu	ù˜\\„ëS‹W´å¢‚íæbr¿m[ÿï%[¢ÅÓ¶d¼Œ¬.ž;\ZØÖ %§\0vµÍàˆ\'läa§Ãw¢¨õ´š9z?\r‹ÜÌ™ôZ8g‰ì:KÚqw+²ùQ†Z—Ï,äÞ‚Ê\0\0\0\0X.509\0\0K0‚G0‚/ û^ç0\r	*†H†÷\r\00T10	UVE10U\nTu Carro - Venezuela10U\nTechnology10UTu Carro0\r150128011208Z\r160128011208Z0T10	UVE10U\nTu Carro - Venezuela10U\nTechnology10UTu Carro0‚\"0\r	*†H†÷\r\0‚\00‚\n‚\0¹€3¶ik­ûŽÅ£%¬´pb»XW™¥Øßl\"•lE—Ë%‹–Cí÷ô¨h°½«‹)ïûÖqüÑ®Õ½àºéí%p70#;$‹Ýì;rdVø1×áÖ“q:`\r9Sƒ§¯5=GÙ–Ä‹ã>^A#4Ã#?Šk=\"<:tù0á\\ßqÉÅÕþ\'ÊRKºê`Uœ¿ÈÙéøÚë»r^Ü~F°é‘ìfuQpŸ‰\"A\n¼&cýuŸaå§0Ðð›Q/„§+)Œ©EÚP¥Îß?cbòŠC=05¢{•JÅ…Ä{þò…´ÍÐcèÍ£Ï]÷:tÞ\0ÜqSv÷\0£!00U$\r¶ÈÜtiÄCÖó;å§Ï0\r	*†H†÷\r\0‚\0}½Öë8‰«ô>(Æpu¸Zl¤A–Þ„ YG¶o²¢+#&\\†ZéSê#ãLa•±>Ý4)>õíÖ š]dºÝ_?}y±òy÷Wd.`–žE­ÇbÅËpˆ:ú¿\'r5t²é\Z“€œiæ€¡¨~xìC\r›WÂÜá(¤ly›}pŒ0Ã®cÏJRž@¹’ÈªÔ	ëõÔ7î}„ÚÑ«ÛÑ!ÒTk‡³YuäÖ$!¢ÿ¡Ÿ	û$ø*O®‰Ë^ÎyD6ì‹ÈŠ±·a5ÃIAz§Ý:þ— K/G¬BØüUMÅ[Õ6ruÌÌ¤_XÜ—Á	‰Œ\"¬¯j–œá ~_‰x³ð#Ù/Ê-','error de herramienta de claves: java.io.IOException: Keystore was tampered with, or password was incorrect\nerror de herramienta de claves: java.io.IOException: Keystore was tampered with, or password was incorrect\nerror de herramienta de claves: java.lang.Exception: No se ha generado el par de claves, el alias <BillingBuddy2> ya existe\nerror de herramienta de claves: java.io.IOException: Keystore was tampered with, or password was incorrect\nerror de herramienta de claves: java.lang.Exception: Certificado no importado, el alias <Merchant2> ya existe\nMerchant Certificate Information\nStartMerchantCertificateInformation\nerror de herramienta de claves: java.io.IOException: Keystore was tampered with, or password was incorrect\nStopMerchantCertificateInformation\nBillingBuddy Certificate Information\nStartBillingBuddyCertificateInformation\n\nTipo de AlmacÃ©n de Claves: JKS\nProveedor de AlmacÃ©n de Claves: SUN\n\nSu almacÃ©n de claves contiene 2 entradas\n\nbillingbuddy2, 28/01/2015, PrivateKeyEntry, \nHuella Digital de Certificado (SHA1): 64:24:8A:CC:F1:E0:A2:63:23:CE:C8:25:D1:B4:B2:AB:15:18:E5:C3\nmerchant2, 28/01/2015, trustedCertEntry, \nHuella Digital de Certificado (SHA1): 85:F0:D6:7A:A4:F9:0F:05:BB:32:25:EF:26:81:0E:81:66:9B:BD:15\nStopBillingBuddyCertificateInformation\nFOLDER#/run/media/Edicson/Informacion IPG/worspaceLifeRay/Pruebas/Merchant01\nKEYSTOREBB#BillingBuddy2.jks\nKEYSTOREMERCHANT#Merchant2.jks\n','\nTipo de AlmacÃ©n de Claves: JKS\nProveedor de AlmacÃ©n de Claves: SUN\n\nSu almacÃ©n de claves contiene 2 entradas\n\nbillingbuddy2, 28/01/2015, PrivateKeyEntry, \nHuella Digital de Certificado (SHA1): 64:24:8A:CC:F1:E0:A2:63:23:CE:C8:25:D1:B4:B2:AB:15:18:E5:C3\nmerchant2, 28/01/2015, trustedCertEntry, \nHuella Digital de Certificado (SHA1): 85:F0:D6:7A:A4:F9:0F:05:BB:32:25:EF:26:81:0E:81:66:9B:BD:15\n','error de herramienta de claves: java.io.IOException: Keystore was tampered with, or password was incorrect\n'),(5,2,'Tu Carro','1','2015-01-28 21:10:49','2016-01-28 21:10:49','þíþí\0\0\0\0\0\0\0\0\0\0	merchant2\0\0K.w\0X.509\0\0K0‚G0‚/ û^ç0\r	*†H†÷\r\00T10	UVE10U\nTu Carro - Venezuela10U\nTechnology10UTu Carro0\r150128011208Z\r160128011208Z0T10	UVE10U\nTu Carro - Venezuela10U\nTechnology10UTu Carro0‚\"0\r	*†H†÷\r\0‚\00‚\n‚\0¹€3¶ik­ûŽÅ£%¬´pb»XW™¥Øßl\"•lE—Ë%‹–Cí÷ô¨h°½«‹)ïûÖqüÑ®Õ½àºéí%p70#;$‹Ýì;rdVø1×áÖ“q:`\r9Sƒ§¯5=GÙ–Ä‹ã>^A#4Ã#?Šk=\"<:tù0á\\ßqÉÅÕþ\'ÊRKºê`Uœ¿ÈÙéøÚë»r^Ü~F°é‘ìfuQpŸ‰\"A\n¼&cýuŸaå§0Ðð›Q/„§+)Œ©EÚP¥Îß?cbòŠC=05¢{•JÅ…Ä{þò…´ÍÐcèÍ£Ï]÷:tÞ\0ÜqSv÷\0£!00U$\r¶ÈÜtiÄCÖó;å§Ï0\r	*†H†÷\r\0‚\0}½Öë8‰«ô>(Æpu¸Zl¤A–Þ„ YG¶o²¢+#&\\†ZéSê#ãLa•±>Ý4)>õíÖ š]dºÝ_?}y±òy÷Wd.`–žE­ÇbÅËpˆ:ú¿\'r5t²é\Z“€œiæ€¡¨~xìC\r›WÂÜá(¤ly›}pŒ0Ã®cÏJRž@¹’ÈªÔ	ëõÔ7î}„ÚÑ«ÛÑ!ÒTk‡³YuäÖ$!¢ÿ¡Ÿ	û$ø*O®‰Ë^ÎyD6ì‹ÈŠ±·a5ÃIAz§Ý:þ— K/G¬BØüUMÅ[Õ6ruÌÌ¤_XÜ—Á	‰Œ\"\0\0\0\0\rbillingbuddy2\0\0K.uE\0\00‚ÿ0\n+*\0‚ë#ÇÅ½œ„ì«áÑXŽ%dÄ\n×ˆš`P\\Þ¢š*H¢b†MÛÍ¢\"²)B9MRhµõà«íÿ9\0v‡¸L¹çñ˜Bt`èÎ8AosIt7åÎtí ÝL¼ªÝÿ$žn5d•Œ•©fÂã!ðþÊäÄ`\ZÅ½Ö8²jB‚N|½KpKa`»8‚O òª l!±HÞX¸™jö·	0?ÚIê{î}`í«ã‹Fâ°C8Å†Ê¡sÛžc *V»â€%x_dµ{cÏ$èüíã­rÖ€2“SÂtìî?[™õÓ¦	è½?IÔ\rü½¥ÈÎ‡p¬£hSS‘ÀM|~_óållþÜFç]Ý$;ìj\\þò’î¼Š{)CÇ=É7Óâ kß’©û½½’zh0Š¶%ö›þØ‚>ðŒþÔYªiNáë¬ŠnÓ›¡V„€é‹ªrt6üo¿ïDá½¿¡g¹/‰\0X†ï†kHX¿õñžñ+e¸GPÂrRwWA	p1Š‚úß¼ r¢µýÑÊô¦Œ`¦2}—Ò·E3„æVÙ\nÇ{¾¡9HAxcÆÂ4ù¼æö.°/NÒrxÖÃëÈNÓÑý\"Â°‰µQNœ¿›£N¦˜	%Ax y´€nm9C¿Ò¯sôýV¶üJ«=sT=·¬Üñb¶n×§(æøŒ‘&~ÇiîÿøãOÃÑiÇ¹›¢V£¹ÿÛF²®DþZˆº¶„U‹mÄ²Ž¡´˜[á¬«gß/0{¯ãÿ\"JŸb¡ÉÄ\"@5:Ëð®8jÂ6Í®qÎâu\n	ö¬9ûÎ?¡£•*óXÔÙÎ\0óuÄÊ9œM\0¸à)Ög¯d‰¤¼Ýw[šFU!zcíóZp.ÀÓæD…ò–4ãAe@ÙÑ—H*‚ÊýIN8¬D\n©²Ýâˆ¯SK“§nñ«*ÂGG¡i\'ä(ÿÍ˜WÒO6—N<LÂ]Z×+’2Y^æ\0‚m&‘\rúÎ¢ñ…\"¾ù3LWƒtûÞ„œ¾	‰)Ì)ÍüäpÒÚá§Ÿû×°_±=S3W#É‘`¼ÓrÓÎó«Íÿ¸à>ìösV¤eÞ)®p2RÙ+¶˜`B?@œ,ŽI]Ÿ fÏ3™­¯;“hõ!ƒª´/ÈOÈìò/	sÜ5ù$ê¹µ¸¦zÔS\n× ú(ü³ÏzÎIöÓÃö})@Öõ7dlJ Å›÷…X˜%péUÛøšðöÈÇò0ýÞb,E§#h\"{¯foA8Ì¨çy°·9W(ñ’T(/¯*ÞU¡Ô3,\n ûŽžC—Â}/÷mŠÈ†*Ý}¤ Üú¥–w?Ê™aO¿Î: ±¸%–³‰ZÕ}g—yl‹éYË%I&ŽîÙ\Z~oŽ1¡g4…¯\07éiôš©ùrÞ[:?þ[äoëœû_‚*²¿à¸\"|AÎZ &ò`Lož5™ß¦õ­¬èEMû¥)öSGˆ‹°09Þ‚}\'¯DfÒ›.¾2äw¸îpˆ¸œÈ44pÐû$½èm@üLQ|÷t;Ã`úŒ^y”Xï Ä÷ÝogÃãN.XDWêþÈ­B;”îî‹‰Sz{i½Ò¾	W™	šgÉ®íEò{NŸ\0\0\0\0X.509\0\0H0‚D0‚, (É0\r	*†H†÷\r\00S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0\r150128011209Z\r160128011209Z0S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0‚\"0\r	*†H†÷\r\0‚\00‚\n‚\0Æ’Î7=úËâŠ5a@#Aì*Ð\')‡dùª~­a_5ecD}O(ûE\'VUáh³s?I´q±›s«<hº`èuå5\ZVv0•[dzC}‹©‚3;÷-½[<<¯œ·[CkŽCõÀ1ÞÇBUÖ¹¿ª¢>6Á\ZñÆ1~û)CV±Sm6\Z¬‡0· ã<UDæÞ¯³jGU®Ÿ¬‡yÅÁõ}zõ±}ôò€%ß«LÒ©(@‰ÛÄýC°:+zÛºföŠ¼laàròGê²Ç<÷u¼¾út¡ˆZ\0âSõÝoY:.tSUÏŸ“b§Q—Gý‘Á/=qÜ‡à&à®\\	únÃ\0£!00Uê?Ôÿå ¬adc¼|}d~·åÕ0\r	*†H†÷\r\0‚\0Q\0Ðô—´j	;¼š÷ìÊ\\È\\¨FÙ™¹ú2(PaŠÁþ\nxmõ§C¸k[x¡¯ä¦¡‘p-³-Ï“>ì“J¤ÄWÉ¹(T„¿•‰ÇgÜôÏ¤*“¬¯å®>ì–Zæut}Æ1ŠX†F&EqY°*G’‰~™ëä SF«´L+ÉùŒZåÏ4€e³ê$\r%½({å	ìdU”9K\"2ì<…¦]7ZïòÄ¯ÏbYÌ©¨}bã[WÅ›Õ5\0aëŸÈ´ò\næ¯\nÄ¯6~’ =É`i_ôwþH¨±[AmRsFätÎû©W×àõv·XêYèê9¬d«®‹r¤ä6ã\"aò°^ZˆÛ|Z°àf·ÑÃžjÝ@','þíþí\0\0\0\0\0\0\0\0\0\0\rbillingbuddy2\0\0K.vk\0X.509\0\0H0‚D0‚, (É0\r	*†H†÷\r\00S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0\r150128011209Z\r160128011209Z0S10	UAU10U\nBillingBUddy10USecurity1\Z0UBilling Buddy SSL0‚\"0\r	*†H†÷\r\0‚\00‚\n‚\0Æ’Î7=úËâŠ5a@#Aì*Ð\')‡dùª~­a_5ecD}O(ûE\'VUáh³s?I´q±›s«<hº`èuå5\ZVv0•[dzC}‹©‚3;÷-½[<<¯œ·[CkŽCõÀ1ÞÇBUÖ¹¿ª¢>6Á\ZñÆ1~û)CV±Sm6\Z¬‡0· ã<UDæÞ¯³jGU®Ÿ¬‡yÅÁõ}zõ±}ôò€%ß«LÒ©(@‰ÛÄýC°:+zÛºföŠ¼laàròGê²Ç<÷u¼¾út¡ˆZ\0âSõÝoY:.tSUÏŸ“b§Q—Gý‘Á/=qÜ‡à&à®\\	únÃ\0£!00Uê?Ôÿå ¬adc¼|}d~·åÕ0\r	*†H†÷\r\0‚\0Q\0Ðô—´j	;¼š÷ìÊ\\È\\¨FÙ™¹ú2(PaŠÁþ\nxmõ§C¸k[x¡¯ä¦¡‘p-³-Ï“>ì“J¤ÄWÉ¹(T„¿•‰ÇgÜôÏ¤*“¬¯å®>ì–Zæut}Æ1ŠX†F&EqY°*G’‰~™ëä SF«´L+ÉùŒZåÏ4€e³ê$\r%½({å	ìdU”9K\"2ì<…¦]7ZïòÄ¯ÏbYÌ©¨}bã[WÅ›Õ5\0aëŸÈ´ò\næ¯\nÄ¯6~’ =É`i_ôwþH¨±[AmRsFätÎû©W×àõv·XêYèê9¬d«®‹r¤ä6ã\0\0\0\0	merchant2\0\0K.qb\0\00‚þ0\n+*\0‚ê›‚JŸIÿa€¢R*`Àºe¦mtDD”r•lâ\0‘†ëWåTp5a~~Y¼ˆÜ	I+E­M7½~‚Ao3lm˜×Î_n½iVîiÚÃ=K°Õß’ ÷!â¶ÂO,’Ÿå\nñ§xð²,6ÞA|¥/Ó(;‡Î&³\ZÊµ>Kï8ÓmÖ ˜-bžiç“Íþ’âòÝvÄ…Þ,Hïyí\\_ê¡\Z3GW@|ZK”åÆâ¥³Ô­‘ïbn·œ….õš D€\"\0i‡2¯ü†$‘41·wc§Ñ\n¶~=7à*„Új^soîÇ„æ7tØ{V,#}½Æ»k¿.Ø‹J	ªKwž„AÄrË8ØG÷úéãzá¼%­ðèbôÙÎFãu„3›âxœì‡ÖA§V}ª’…Ÿª¥Õ©oÅ?…­¹ÊQµ‘ðW6hŽªZ®#<åƒÝ«Æ”Æ• Ì±9SZÂóx¥=qô(!§,V÷ý4ù²lôíX~ŠúVc§ù’´5ö¼‚H2N<\ZÓZŸ°v®Æ¹3ì¼!ß€©w\\cdîÄ%hê ù<F–ïÌ3Áy3‹5ô\0Ô*¬Nú“pçvü­àåÜGÝ–º£Œ^I9Îy«¾q\rx{j…¦\\Á“¬Eí{~h`p¾®£ÖèÎÿ2p3Øbµöe6è{Ù\"á)¯+ÿ+ÆØ‹žùw2ÿþ&eþQ†8†Í\' ¬ƒ*]§¦™³<\r¹`ßÕÓ Â{\Zg^6¢ïIâò\\?÷ÜØ‹³ÄR?2Æ×f¯Ñ:Æ)È¾#ZÀ8{.Bvqù}}ÜGºó‹²ó\\šü˜¶·DJ„þÐp‚¡™§]ºU(_„®Rëzë«ÎƒêÍÊ†$æR}Û>˜Èb:§Ÿ«”~å,Öþ0É$’ÛŸ_c§<âÉ?TY¦ëŸ‘ ÃVs;µÖMBŠZmx-nÞòyß”2@š„ ÉÁúb¦/‚„û˜®Î×YU`CîË&mçÆVO‰´ŽÿÏÊâ{‹Ë‡Sê˜ëÔª¯Tâ›âÚ‘Ä¡möÞêu»9#\Z!ý‹…¹ªŒÄšéÉÃn,kYÛ›¹±\\#L&9Eâñ\nJƒø‘$³ç”ÈPÉ3Ìuc‡—‡E‡àˆ?¿yÍÛdçÛÌýaèÊþO3\\ô}°âH)kË,\\úiíÔ§1µì_!òonƒò6wù²\Zœ`©)ZïeG¬’³Q8°”wýYu\\käÐT¸.$´€Ù#æï¤ps¤…ŒèØÖ©æ‘¾T&G¶ˆ‚gOba¤„Ã¼ý7ìn£–7M¯X¬a\0¸Hq4BÂŠIyÎ:’àŸÊJ_‹´qê®í\"íÏ±Y\'¡xì)«ûys	ÔØVÀ%³5ýàúwq1Ûö˜31@óÅ5M8¬Ç9ŒËöÄkýŒÚ=k½‰¦(\'Jît-Â+U=ÊûÈ3]¶Yº)EÆ÷óð\Z’Ä,}öÌ–¼àOÏ!fKÜR’ð=ã»²ç£¬FˆcËîc]\\üGªuiFu	ù˜\\„ëS‹W´å¢‚íæbr¿m[ÿï%[¢ÅÓ¶d¼Œ¬.ž;\ZØÖ %§\0vµÍàˆ\'läa§Ãw¢¨õ´š9z?\r‹ÜÌ™ôZ8g‰ì:KÚqw+²ùQ†Z—Ï,äÞ‚Ê\0\0\0\0X.509\0\0K0‚G0‚/ û^ç0\r	*†H†÷\r\00T10	UVE10U\nTu Carro - Venezuela10U\nTechnology10UTu Carro0\r150128011208Z\r160128011208Z0T10	UVE10U\nTu Carro - Venezuela10U\nTechnology10UTu Carro0‚\"0\r	*†H†÷\r\0‚\00‚\n‚\0¹€3¶ik­ûŽÅ£%¬´pb»XW™¥Øßl\"•lE—Ë%‹–Cí÷ô¨h°½«‹)ïûÖqüÑ®Õ½àºéí%p70#;$‹Ýì;rdVø1×áÖ“q:`\r9Sƒ§¯5=GÙ–Ä‹ã>^A#4Ã#?Šk=\"<:tù0á\\ßqÉÅÕþ\'ÊRKºê`Uœ¿ÈÙéøÚë»r^Ü~F°é‘ìfuQpŸ‰\"A\n¼&cýuŸaå§0Ðð›Q/„§+)Œ©EÚP¥Îß?cbòŠC=05¢{•JÅ…Ä{þò…´ÍÐcèÍ£Ï]÷:tÞ\0ÜqSv÷\0£!00U$\r¶ÈÜtiÄCÖó;å§Ï0\r	*†H†÷\r\0‚\0}½Öë8‰«ô>(Æpu¸Zl¤A–Þ„ YG¶o²¢+#&\\†ZéSê#ãLa•±>Ý4)>õíÖ š]dºÝ_?}y±òy÷Wd.`–žE­ÇbÅËpˆ:ú¿\'r5t²é\Z“€œiæ€¡¨~xìC\r›WÂÜá(¤ly›}pŒ0Ã®cÏJRž@¹’ÈªÔ	ëõÔ7î}„ÚÑ«ÛÑ!ÒTk‡³YuäÖ$!¢ÿ¡Ÿ	û$ø*O®‰Ë^ÎyD6ì‹ÈŠ±·a5ÃIAz§Ý:þ— K/G¬BØüUMÅ[Õ6ruÌÌ¤_XÜ—Á	‰Œ\"¬¯j–œá ~_‰x³ð#Ù/Ê-','error de herramienta de claves: java.io.IOException: Keystore was tampered with, or password was incorrect\nerror de herramienta de claves: java.io.IOException: Keystore was tampered with, or password was incorrect\nerror de herramienta de claves: java.lang.Exception: No se ha generado el par de claves, el alias <BillingBuddy2> ya existe\nerror de herramienta de claves: java.io.IOException: Keystore was tampered with, or password was incorrect\nerror de herramienta de claves: java.lang.Exception: Certificado no importado, el alias <Merchant2> ya existe\nMerchant Certificate Information\nStartMerchantCertificateInformation\nerror de herramienta de claves: java.io.IOException: Keystore was tampered with, or password was incorrect\nStopMerchantCertificateInformation\nBillingBuddy Certificate Information\nStartBillingBuddyCertificateInformation\n\nTipo de AlmacÃ©n de Claves: JKS\nProveedor de AlmacÃ©n de Claves: SUN\n\nSu almacÃ©n de claves contiene 2 entradas\n\nbillingbuddy2, 28/01/2015, PrivateKeyEntry, \nHuella Digital de Certificado (SHA1): 64:24:8A:CC:F1:E0:A2:63:23:CE:C8:25:D1:B4:B2:AB:15:18:E5:C3\nmerchant2, 28/01/2015, trustedCertEntry, \nHuella Digital de Certificado (SHA1): 85:F0:D6:7A:A4:F9:0F:05:BB:32:25:EF:26:81:0E:81:66:9B:BD:15\nStopBillingBuddyCertificateInformation\nFOLDER#/run/media/Edicson/Informacion IPG/worspaceLifeRay/Pruebas/Merchant01\nKEYSTOREBB#BillingBuddy2.jks\nKEYSTOREMERCHANT#Merchant2.jks\n','\nTipo de AlmacÃ©n de Claves: JKS\nProveedor de AlmacÃ©n de Claves: SUN\n\nSu almacÃ©n de claves contiene 2 entradas\n\nbillingbuddy2, 28/01/2015, PrivateKeyEntry, \nHuella Digital de Certificado (SHA1): 64:24:8A:CC:F1:E0:A2:63:23:CE:C8:25:D1:B4:B2:AB:15:18:E5:C3\nmerchant2, 28/01/2015, trustedCertEntry, \nHuella Digital de Certificado (SHA1): 85:F0:D6:7A:A4:F9:0F:05:BB:32:25:EF:26:81:0E:81:66:9B:BD:15\n','error de herramienta de claves: java.io.IOException: Keystore was tampered with, or password was incorrect\n');
/*!40000 ALTER TABLE `Certificate` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IPG`.`Certificate_BEFORE_INSERT` BEFORE INSERT ON `Certificate` FOR EACH ROW 
BEGIN
	DECLARE num_rows INT DEFAULT 0;
    DECLARE msg VARCHAR(50) DEFAULT "";
    
    IF NEW.Cert_Status = "0" then
		SELECT count(*) FROM IPG.Certificate
		WHERE Merc_ID =  new.Merc_ID
		AND Cert_Status = "0" INTO num_rows;
    END IF;
    
    IF num_rows > 0 THEN
        set msg = 'Certificate_BEFORE_INSERT';
        signal sqlstate '45000' set message_text = msg;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `IPG`.`Certificate_BEFORE_UPDATE` BEFORE UPDATE ON `Certificate` FOR EACH ROW
BEGIN
	DECLARE num_rows INT DEFAULT 0;
    DECLARE msg VARCHAR(50) DEFAULT "";
    
    IF NEW.Cert_Status = "0" then
		SELECT count(*) FROM IPG.Certificate
		WHERE Merc_ID =  new.Merc_ID
		AND Cert_Status = "0" INTO num_rows;
    END IF;
    
    IF num_rows > 0 THEN
        set msg = 'Certificate_BEFORE_UPDATE';
        signal sqlstate '45000' set message_text = msg;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Charge`
--

DROP TABLE IF EXISTS `Charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Charge` (
  `Char_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tran_ID` bigint(20) NOT NULL,
  `Card_ID` bigint(20) NOT NULL,
  `Char_IDStripe` varchar(50) NOT NULL,
  `Invo_ID` bigint(20) DEFAULT NULL,
  `Addr_ID` bigint(20) DEFAULT NULL,
  `Char_Amount` decimal(20,0) NOT NULL,
  `Char_Captured` tinyint(1) DEFAULT '0' COMMENT 'A value of zero is considered false. Non-zero values are considered true.',
  `Char_CreateTime` datetime NOT NULL,
  `Char_Currency` char(3) NOT NULL,
  `Char_Paid` tinyint(1) DEFAULT NULL COMMENT 'A value of zero is considered false. Non-zero values are considered true.',
  `Char_Refunded` tinyint(1) DEFAULT NULL COMMENT 'A value of zero is considered false. Non-zero values are considered true.',
  `Char_FailureCode` char(50) DEFAULT NULL,
  `Char_FailureMessage` char(150) DEFAULT NULL,
  `Char_ReceiptEmail` char(50) DEFAULT NULL,
  `Char_ReceiptNumber` char(50) DEFAULT NULL,
  `Char_ProcessTime` varchar(20) NOT NULL,
  PRIMARY KEY (`Char_ID`,`Tran_ID`),
  UNIQUE KEY `Char_ID` (`Char_ID`),
  UNIQUE KEY `Char_IDStripe_UNIQUE` (`Char_IDStripe`),
  KEY `IX_FK_Charges_Card` (`Card_ID`),
  KEY `IX_FK_Charges_Invoice` (`Invo_ID`),
  KEY `IX_FK_Charges_Address` (`Addr_ID`),
  KEY `FK_Charge_Transaction` (`Tran_ID`),
  CONSTRAINT `FK_Charge_Address` FOREIGN KEY (`Addr_ID`) REFERENCES `Address` (`Addr_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Charge_Card` FOREIGN KEY (`Card_ID`) REFERENCES `Card` (`Card_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Charge_Transaction` FOREIGN KEY (`Tran_ID`) REFERENCES `Transaction` (`Tran_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Charges_Invoice` FOREIGN KEY (`Invo_ID`) REFERENCES `Invoice` (`Invo_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Charge`
--

LOCK TABLES `Charge` WRITE;
/*!40000 ALTER TABLE `Charge` DISABLE KEYS */;
INSERT INTO `Charge` VALUES (25,34,2,'ch_14yFyy7eZvKYlo9CQylnRjiq',NULL,NULL,55076,0,'2014-12-25 15:11:25','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(26,35,2,'ch_14yFyy7eZvKYlo9CQylnRjic',NULL,NULL,55076,0,'2014-12-25 15:11:30','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(27,36,1,'ch_14yFyy2eZvKYlo2CQylnRjiq',NULL,NULL,2320,0,'2014-12-25 15:17:56','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(28,37,1,'ch_14yFyy2eZvKYlo2CQylnRjiw',NULL,NULL,55076,0,'2014-12-25 15:20:14','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(29,38,1,'ch_14yFyy2eZvKYlo2CQylnRjiy',NULL,NULL,55076,0,'2014-12-25 15:44:51','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(30,41,1,'ch_15GLvj2eZvKYlo2CRwWqFIAs',NULL,NULL,53096,0,'2015-01-01 22:17:02','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(31,42,1,'ch_15GMF82eZvKYlo2CHT5NlTYm',NULL,NULL,53296,0,'2015-01-01 22:37:04','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(32,43,1,'ch_15GOhj2eZvKYlo2Chz5zrGfs',NULL,NULL,53296,0,'2015-01-02 01:14:45','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(33,44,1,'ch_15GP5Q2eZvKYlo2C6GYDDBFN',NULL,NULL,55076,0,'2015-01-02 01:39:14','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(34,17,1,'ch_15GPc62eZvKYlo2CVorIWf8M',NULL,NULL,55476,0,'2015-01-02 02:13:00','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(35,17,1,'ch_15GPfu2eZvKYlo2C1FgkRWob',NULL,NULL,55476,0,'2015-01-02 02:17:00','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(36,17,1,'ch_15GPlz2eZvKYlo2CMsT6iCkf',NULL,NULL,55476,0,'2015-01-02 02:23:13','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(37,17,1,'ch_15Gjjs2eZvKYlo2CsbbXHuE9',NULL,NULL,55076,0,'2015-01-02 23:42:26','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(38,17,1,'ch_15Gjon2eZvKYlo2CNnRXjWt1',NULL,NULL,1276,0,'2015-01-02 23:47:30','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(39,17,1,'ch_15Gjru2eZvKYlo2CwkbnrI2o',NULL,NULL,131260,0,'2015-01-02 23:50:40','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(40,17,1,'ch_15Gk3W2eZvKYlo2CFKXqcVGV',NULL,NULL,43266,0,'2015-01-03 00:02:40','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(41,17,1,'ch_15MD0P2eZvKYlo2CLQkeHMYx',NULL,NULL,55076,0,'2015-01-18 17:57:54','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(42,17,1,'ch_15MD3S2eZvKYlo2CSdXaCDr6',NULL,NULL,55076,0,'2015-01-18 18:01:03','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(43,17,1,'ch_15MD4p2eZvKYlo2CHYURXmQB',NULL,NULL,55076,0,'2015-01-18 18:02:27','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(44,17,1,'ch_15MD7X2eZvKYlo2ClPjBlTnX',NULL,NULL,55076,0,'2015-01-18 18:05:15','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(45,17,1,'ch_15MDCp2eZvKYlo2CsvQa3h7G',NULL,NULL,55076,0,'2015-01-18 18:10:43','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(46,17,1,'ch_15MDEL2eZvKYlo2CJa4bqOls',NULL,NULL,55076,0,'2015-01-18 18:12:17','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(47,17,1,'ch_15MDFU2eZvKYlo2CezneL8Pf',NULL,NULL,55076,0,'2015-01-18 18:13:28','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(48,17,1,'ch_15MDGB2eZvKYlo2CNFteONkL',NULL,NULL,55076,0,'2015-01-18 18:14:11','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(49,17,1,'ch_15NXGB2eZvKYlo2COJeIz2CZ',NULL,NULL,55076,0,'2015-01-22 09:47:39','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(50,17,1,'ch_15NXI52eZvKYlo2CYRtY2EcK',NULL,NULL,55076,0,'2015-01-22 09:49:37','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(51,17,1,'ch_15NXLp2eZvKYlo2Chg4w2YAY',NULL,NULL,55076,0,'2015-01-22 09:53:30','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(52,17,1,'ch_15NYs32eZvKYlo2C4h3C2b9G',NULL,NULL,55076,0,'2015-01-22 11:30:52','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(53,17,1,'ch_15NYyS2eZvKYlo2COcaFE3yz',NULL,NULL,55076,0,'2015-01-22 11:37:29','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(54,17,1,'ch_15Naqe2eZvKYlo2CS0qLlnZ0',NULL,NULL,55076,0,'2015-01-22 13:37:32','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(55,17,1,'ch_15NbB62eZvKYlo2CTwPN125v',NULL,NULL,55076,0,'2015-01-22 13:58:40','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(56,17,1,'ch_15O00C2eZvKYlo2CtYqzGGKj',NULL,NULL,55076,0,'2015-01-23 16:29:06','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(57,17,1,'ch_15O0EE2eZvKYlo2CCl5gehiR',NULL,NULL,55076,0,'2015-01-23 16:43:35','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(58,17,1,'ch_15O0Fg2eZvKYlo2CU88T6oNH',NULL,NULL,55076,0,'2015-01-23 16:45:04','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(59,17,1,'ch_15O0Ho2eZvKYlo2CJW8ltr1y',NULL,NULL,55076,0,'2015-01-23 16:47:25','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(60,17,1,'ch_15O0Xm2eZvKYlo2CgN0KArMA',NULL,NULL,55076,0,'2015-01-23 17:03:47','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(61,45,1,'ch_15O0qN2eZvKYlo2CZWgXpTVp',NULL,NULL,55076,0,'2015-01-23 17:23:00','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(62,46,1,'ch_15O1bp2eZvKYlo2CYBA8zkqq',NULL,NULL,55076,0,'2015-01-23 18:12:01','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(63,47,1,'ch_15Ozzs2eZvKYlo2CAWu18QuA',NULL,NULL,55076,0,'2015-01-26 10:40:53','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(64,48,1,'ch_15SKPF2eZvKYlo2C9FCpT86D',NULL,NULL,557600,0,'2015-02-04 15:04:50','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(65,49,1,'ch_15SKTp2eZvKYlo2C0jrToafD',NULL,NULL,125100,0,'2015-02-04 15:09:34','usd',0,0,NULL,NULL,NULL,NULL,'0 ms.'),(66,50,1,'ch_15SKUi2eZvKYlo2CMymF5MIR',NULL,NULL,3400,0,'2015-02-04 15:10:28','usd',0,0,NULL,NULL,NULL,NULL,'0 ms.'),(67,51,1,'ch_15SLk22eZvKYlo2CZHRqC0hc',NULL,NULL,55076,0,'2015-02-04 16:30:22','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(68,52,1,'ch_15SNd22eZvKYlo2Cbafk839U',NULL,NULL,12300,0,'2015-02-04 18:31:17','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(69,53,1,'ch_15SNsc2eZvKYlo2CwWl0808r',NULL,NULL,12300,0,'2015-02-04 18:47:22','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(70,54,1,'ch_15SNyr2eZvKYlo2Crb1Rnrqr',NULL,NULL,55076,0,'2015-02-04 18:53:50','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(71,55,1,'ch_15SO882eZvKYlo2CX6O6ahTS',NULL,NULL,55076,0,'2015-02-04 19:03:24','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(72,56,1,'ch_15SOGO2eZvKYlo2C1criZCKw',NULL,NULL,55076,0,'2015-02-04 19:11:56','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(73,57,1,'ch_15SOsw2eZvKYlo2CGOQGyA7s',NULL,NULL,55076,0,'2015-02-04 19:51:47','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(74,58,1,'ch_15SOtZ2eZvKYlo2CmpSYzZN0',NULL,NULL,55076,0,'2015-02-04 19:52:25','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(75,59,1,'ch_15SOwy2eZvKYlo2CJD6pDmyI',NULL,NULL,55076,0,'2015-02-04 19:55:57','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(76,61,1,'ch_15SP6D2eZvKYlo2CKXyunSQX',NULL,NULL,55076,0,'2015-02-04 20:05:30','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(77,62,1,'ch_15SdJt2eZvKYlo2CfBxlCEAZ',NULL,NULL,55076,0,'2015-02-05 11:16:35','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(78,63,1,'ch_15SdQi2eZvKYlo2CdR6svht3',NULL,NULL,55076,0,'2015-02-05 11:23:36','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(79,64,1,'ch_15SddG2eZvKYlo2CYyDmkv6H',NULL,NULL,55076,0,'2015-02-05 11:36:34','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(80,65,1,'ch_15Sdox2eZvKYlo2CW6CXgo8u',NULL,NULL,55076,0,'2015-02-05 11:48:40','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(81,66,1,'ch_15SduW2eZvKYlo2CDxNtFIKt',NULL,NULL,55076,0,'2015-02-05 11:54:25','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(82,67,1,'ch_15Se2N2eZvKYlo2CCduaTuzz',NULL,NULL,55076,0,'2015-02-05 12:02:32','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(83,68,1,'ch_15SeR02eZvKYlo2CfaNQgwIG',NULL,NULL,55076,0,'2015-02-05 12:27:59','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(84,69,1,'ch_15SeTi2eZvKYlo2Ccbh0pXEe',NULL,NULL,55076,0,'2015-02-05 12:30:46','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(85,70,1,'ch_15Sebx2eZvKYlo2C2s6RH467',NULL,NULL,55076,0,'2015-02-05 12:39:18','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(86,71,1,'ch_15SekA2eZvKYlo2CnykVYA2n',NULL,NULL,55076,0,'2015-02-05 12:47:49','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(87,72,1,'ch_15Sixv2eZvKYlo2CptQ4xFlu',NULL,NULL,55076,0,'2015-02-05 17:18:36','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(88,73,1,'ch_15Sj0b2eZvKYlo2CP5d4dCeP',NULL,NULL,55076,0,'2015-02-05 17:21:01','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(89,74,1,'ch_15Sj4q2eZvKYlo2C2njB4SRL',NULL,NULL,55076,0,'2015-02-05 17:25:24','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(90,75,1,'ch_15Sj6c2eZvKYlo2CTAZX6rX6',NULL,NULL,55076,0,'2015-02-05 17:27:14','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(91,76,1,'ch_15Sj9F2eZvKYlo2Cjzmds5Ad',NULL,NULL,55076,0,'2015-02-05 17:29:58','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(92,77,1,'ch_15SjBk2eZvKYlo2CVeTD5hfp',NULL,NULL,55076,0,'2015-02-05 17:32:32','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(93,78,1,'ch_15SjGB2eZvKYlo2C2xIx5Jbx',NULL,NULL,55076,0,'2015-02-05 17:37:13','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(94,79,1,'ch_15SjKC2eZvKYlo2CjU85LfcP',NULL,NULL,55076,0,'2015-02-05 17:41:21','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(95,80,1,'ch_15SjNc2eZvKYlo2CgBVlZUpQ',NULL,NULL,55076,0,'2015-02-05 17:44:48','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(96,82,1,'ch_15SjjN2eZvKYlo2CHWoma8Wl',NULL,NULL,2354,0,'2015-02-05 18:07:18','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(97,88,1,'ch_15TAC22eZvKYlo2ClME5KIfW',NULL,NULL,55076,0,'2015-02-06 22:22:39','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(98,97,1,'ch_15TiTF2eZvKYlo2CcHfhnWTM',NULL,NULL,55076,0,'2015-02-08 10:58:41','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(99,102,4,'ch_15TiqM2eZvKYlo2Cgo8Y14wX',NULL,NULL,55076,0,'2015-02-08 11:22:34','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(100,103,5,'ch_15Tit12eZvKYlo2CjZwTr1Fm',NULL,NULL,55076,0,'2015-02-08 11:25:19','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(101,104,5,'ch_15TiwG2eZvKYlo2CLZptkQUu',NULL,NULL,55076,0,'2015-02-08 11:28:40','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(102,112,2,'ch_15TjSG2eZvKYlo2CWikqfZEO',NULL,NULL,55076,0,'2015-02-08 12:01:44','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(103,113,6,'ch_15TjUM2eZvKYlo2CXVu8PjVV',NULL,NULL,55076,0,'2015-02-08 12:03:54','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(104,114,6,'ch_15TjYa2eZvKYlo2CjLuzlg05',NULL,NULL,55076,0,'2015-02-08 12:08:16','usd',0,1,NULL,NULL,NULL,NULL,'1 ms.'),(105,115,1,'ch_15Tjdq2eZvKYlo2CU4F1qeGq',NULL,NULL,55076,0,'2015-02-08 12:13:42','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(106,116,6,'ch_15Tjj12eZvKYlo2CqbOlaY7p',NULL,NULL,55076,0,'2015-02-08 12:19:03','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(107,119,7,'ch_15TjsxFBMYSHQioJTVfooeuY',NULL,NULL,55076,0,'2015-02-08 12:29:20','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(108,120,8,'ch_15TjuBFBMYSHQioJD6vDzUuw',NULL,NULL,55076,0,'2015-02-08 12:30:35','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(109,121,8,'ch_15Tjv7FBMYSHQioJCq7eBMv0',NULL,NULL,55076,0,'2015-02-08 12:31:33','usd',0,0,NULL,NULL,NULL,NULL,'1 ms.'),(110,122,6,'ch_15UQPTFBMYSHQioJDEt2fXmZ',NULL,NULL,55076,0,'2015-02-10 09:53:44','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.'),(111,123,9,'ch_15UQTUFBMYSHQioJw9WD8bdN',NULL,NULL,55076,0,'2015-02-10 09:57:53','usd',0,1,NULL,NULL,NULL,NULL,'0 ms.');
/*!40000 ALTER TABLE `Charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Country` (
  `Coun_Numeric` int(5) NOT NULL,
  `Coun_Alpha_2` varchar(2) NOT NULL,
  `Coun_Alpha_3` varchar(3) NOT NULL,
  `Coun_Name` varchar(100) NOT NULL,
  `Count_ISO_3166-2` varchar(50) NOT NULL,
  UNIQUE KEY `Coun_Alpha_2_UNIQUE` (`Coun_Alpha_2`),
  UNIQUE KEY `Coun_Alpha_3_UNIQUE` (`Coun_Alpha_3`),
  UNIQUE KEY `Coun_Name_UNIQUE` (`Coun_Name`),
  UNIQUE KEY `Count_ISO_3166-2_UNIQUE` (`Count_ISO_3166-2`),
  UNIQUE KEY `Coun_Numeric_UNIQUE` (`Coun_Numeric`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` VALUES (20,'AD','AND','Andorra','ISO 3166-2:AD'),(784,'AE','ARE','United Arab Emirates','ISO 3166-2:AE'),(4,'AF','AFG','Afghanistan','ISO 3166-2:AF'),(28,'AG','ATG','Antigua and Barbuda','ISO 3166-2:AG'),(660,'AI','AIA','Anguilla','ISO 3166-2:AI'),(8,'AL','ALB','Albania','ISO 3166-2:AL'),(51,'AM','ARM','Armenia','ISO 3166-2:AM'),(24,'AO','AGO','Angola','ISO 3166-2:AO'),(10,'AQ','ATA','Antarctica','ISO 3166-2:AQ'),(32,'AR','ARG','Argentina','ISO 3166-2:AR'),(16,'AS','ASM','American Samoa','ISO 3166-2:AS'),(40,'AT','AUT','Austria','ISO 3166-2:AT'),(36,'AU','AUS','Australia','ISO 3166-2:AU'),(533,'AW','ABW','Aruba','ISO 3166-2:AW'),(248,'AX','ALA','Ã…land Islands','ISO 3166-2:AX'),(31,'AZ','AZE','Azerbaijan','ISO 3166-2:AZ'),(70,'BA','BIH','Bosnia and Herzegovina','ISO 3166-2:BA'),(52,'BB','BRB','Barbados','ISO 3166-2:BB'),(50,'BD','BGD','Bangladesh','ISO 3166-2:BD'),(56,'BE','BEL','Belgium','ISO 3166-2:BE'),(854,'BF','BFA','Burkina Faso','ISO 3166-2:BF'),(100,'BG','BGR','Bulgaria','ISO 3166-2:BG'),(48,'BH','BHR','Bahrain','ISO 3166-2:BH'),(108,'BI','BDI','Burundi','ISO 3166-2:BI'),(204,'BJ','BEN','Benin','ISO 3166-2:BJ'),(652,'BL','BLM','Saint BarthÃ©lemy','ISO 3166-2:BL'),(60,'BM','BMU','Bermuda','ISO 3166-2:BM'),(96,'BN','BRN','Brunei Darussalam','ISO 3166-2:BN'),(68,'BO','BOL','Bolivia (Plurinational State of)','ISO 3166-2:BO'),(535,'BQ','BES','Bonaire, Sint Eustatius and Saba','ISO 3166-2:BQ'),(76,'BR','BRA','Brazil','ISO 3166-2:BR'),(44,'BS','BHS','Bahamas','ISO 3166-2:BS'),(64,'BT','BTN','Bhutan','ISO 3166-2:BT'),(74,'BV','BVT','Bouvet Island','ISO 3166-2:BV'),(72,'BW','BWA','Botswana','ISO 3166-2:BW'),(112,'BY','BLR','Belarus','ISO 3166-2:BY'),(84,'BZ','BLZ','Belize','ISO 3166-2:BZ'),(124,'CA','CAN','Canada','ISO 3166-2:CA'),(166,'CC','CCK','Cocos (Keeling) Islands','ISO 3166-2:CC'),(180,'CD','COD','Congo (Democratic Republic of the)','ISO 3166-2:CD'),(140,'CF','CAF','Central African Republic','ISO 3166-2:CF'),(178,'CG','COG','Congo','ISO 3166-2:CG'),(756,'CH','CHE','Switzerland','ISO 3166-2:CH'),(384,'CI','CIV','CÃ´te d\'Ivoire','ISO 3166-2:CI'),(184,'CK','COK','Cook Islands','ISO 3166-2:CK'),(152,'CL','CHL','Chile','ISO 3166-2:CL'),(120,'CM','CMR','Cameroon','ISO 3166-2:CM'),(156,'CN','CHN','China','ISO 3166-2:CN'),(170,'CO','COL','Colombia','ISO 3166-2:CO'),(188,'CR','CRI','Costa Rica','ISO 3166-2:CR'),(192,'CU','CUB','Cuba','ISO 3166-2:CU'),(132,'CV','CPV','Cabo Verde','ISO 3166-2:CV'),(531,'CW','CUW','CuraÃ§ao','ISO 3166-2:CW'),(162,'CX','CXR','Christmas Island','ISO 3166-2:CX'),(196,'CY','CYP','Cyprus','ISO 3166-2:CY'),(203,'CZ','CZE','Czech Republic','ISO 3166-2:CZ'),(276,'DE','DEU','Germany','ISO 3166-2:DE'),(262,'DJ','DJI','Djibouti','ISO 3166-2:DJ'),(208,'DK','DNK','Denmark','ISO 3166-2:DK'),(212,'DM','DMA','Dominica','ISO 3166-2:DM'),(214,'DO','DOM','Dominican Republic','ISO 3166-2:DO'),(12,'DZ','DZA','Algeria','ISO 3166-2:DZ'),(218,'EC','ECU','Ecuador','ISO 3166-2:EC'),(233,'EE','EST','Estonia','ISO 3166-2:EE'),(818,'EG','EGY','Egypt','ISO 3166-2:EG'),(732,'EH','ESH','Western Sahara','ISO 3166-2:EH'),(232,'ER','ERI','Eritrea','ISO 3166-2:ER'),(724,'ES','ESP','Spain','ISO 3166-2:ES'),(231,'ET','ETH','Ethiopia','ISO 3166-2:ET'),(246,'FI','FIN','Finland','ISO 3166-2:FI'),(242,'FJ','FJI','Fiji','ISO 3166-2:FJ'),(238,'FK','FLK','Falkland Islands (Malvinas)','ISO 3166-2:FK'),(583,'FM','FSM','Micronesia (Federated States of)','ISO 3166-2:FM'),(234,'FO','FRO','Faroe Islands','ISO 3166-2:FO'),(250,'FR','FRA','France','ISO 3166-2:FR'),(266,'GA','GAB','Gabon','ISO 3166-2:GA'),(826,'GB','GBR','United Kingdom of Great Britain and Northern Ireland','ISO 3166-2:GB'),(308,'GD','GRD','Grenada','ISO 3166-2:GD'),(268,'GE','GEO','Georgia','ISO 3166-2:GE'),(254,'GF','GUF','French Guiana','ISO 3166-2:GF'),(831,'GG','GGY','Guernsey','ISO 3166-2:GG'),(288,'GH','GHA','Ghana','ISO 3166-2:GH'),(292,'GI','GIB','Gibraltar','ISO 3166-2:GI'),(304,'GL','GRL','Greenland','ISO 3166-2:GL'),(270,'GM','GMB','Gambia','ISO 3166-2:GM'),(324,'GN','GIN','Guinea','ISO 3166-2:GN'),(312,'GP','GLP','Guadeloupe','ISO 3166-2:GP'),(226,'GQ','GNQ','Equatorial Guinea','ISO 3166-2:GQ'),(300,'GR','GRC','Greece','ISO 3166-2:GR'),(239,'GS','SGS','South Georgia and the South Sandwich Islands','ISO 3166-2:GS'),(320,'GT','GTM','Guatemala','ISO 3166-2:GT'),(316,'GU','GUM','Guam','ISO 3166-2:GU'),(624,'GW','GNB','Guinea-Bissau','ISO 3166-2:GW'),(328,'GY','GUY','Guyana','ISO 3166-2:GY'),(344,'HK','HKG','Hong Kong','ISO 3166-2:HK'),(334,'HM','HMD','Heard Island and McDonald Islands','ISO 3166-2:HM'),(340,'HN','HND','Honduras','ISO 3166-2:HN'),(191,'HR','HRV','Croatia','ISO 3166-2:HR'),(332,'HT','HTI','Haiti','ISO 3166-2:HT'),(348,'HU','HUN','Hungary','ISO 3166-2:HU'),(360,'ID','IDN','Indonesia','ISO 3166-2:ID'),(372,'IE','IRL','Ireland','ISO 3166-2:IE'),(376,'IL','ISR','Israel','ISO 3166-2:IL'),(833,'IM','IMN','Isle of Man','ISO 3166-2:IM'),(356,'IN','IND','India','ISO 3166-2:IN'),(86,'IO','IOT','British Indian Ocean Territory','ISO 3166-2:IO'),(368,'IQ','IRQ','Iraq','ISO 3166-2:IQ'),(364,'IR','IRN','Iran (Islamic Republic of)','ISO 3166-2:IR'),(352,'IS','ISL','Iceland','ISO 3166-2:IS'),(380,'IT','ITA','Italy','ISO 3166-2:IT'),(832,'JE','JEY','Jersey','ISO 3166-2:JE'),(388,'JM','JAM','Jamaica','ISO 3166-2:JM'),(400,'JO','JOR','Jordan','ISO 3166-2:JO'),(392,'JP','JPN','Japan','ISO 3166-2:JP'),(404,'KE','KEN','Kenya','ISO 3166-2:KE'),(417,'KG','KGZ','Kyrgyzstan','ISO 3166-2:KG'),(116,'KH','KHM','Cambodia','ISO 3166-2:KH'),(296,'KI','KIR','Kiribati','ISO 3166-2:KI'),(174,'KM','COM','Comoros','ISO 3166-2:KM'),(659,'KN','KNA','Saint Kitts and Nevis','ISO 3166-2:KN'),(408,'KP','PRK','Korea (Democratic People\'s Republic of)','ISO 3166-2:KP'),(410,'KR','KOR','Korea (Republic of)','ISO 3166-2:KR'),(414,'KW','KWT','Kuwait','ISO 3166-2:KW'),(136,'KY','CYM','Cayman Islands','ISO 3166-2:KY'),(398,'KZ','KAZ','Kazakhstan','ISO 3166-2:KZ'),(418,'LA','LAO','Lao People\'s Democratic Republic','ISO 3166-2:LA'),(422,'LB','LBN','Lebanon','ISO 3166-2:LB'),(662,'LC','LCA','Saint Lucia','ISO 3166-2:LC'),(438,'LI','LIE','Liechtenstein','ISO 3166-2:LI'),(144,'LK','LKA','Sri Lanka','ISO 3166-2:LK'),(430,'LR','LBR','Liberia','ISO 3166-2:LR'),(426,'LS','LSO','Lesotho','ISO 3166-2:LS'),(440,'LT','LTU','Lithuania','ISO 3166-2:LT'),(442,'LU','LUX','Luxembourg','ISO 3166-2:LU'),(428,'LV','LVA','Latvia','ISO 3166-2:LV'),(434,'LY','LBY','Libya','ISO 3166-2:LY'),(504,'MA','MAR','Morocco','ISO 3166-2:MA'),(492,'MC','MCO','Monaco','ISO 3166-2:MC'),(498,'MD','MDA','Moldova (Republic of)','ISO 3166-2:MD'),(499,'ME','MNE','Montenegro','ISO 3166-2:ME'),(663,'MF','MAF','Saint Martin (French part)','ISO 3166-2:MF'),(450,'MG','MDG','Madagascar','ISO 3166-2:MG'),(584,'MH','MHL','Marshall Islands','ISO 3166-2:MH'),(807,'MK','MKD','Macedonia (the former Yugoslav Republic of)','ISO 3166-2:MK'),(466,'ML','MLI','Mali','ISO 3166-2:ML'),(104,'MM','MMR','Myanmar','ISO 3166-2:MM'),(496,'MN','MNG','Mongolia','ISO 3166-2:MN'),(446,'MO','MAC','Macao','ISO 3166-2:MO'),(580,'MP','MNP','Northern Mariana Islands','ISO 3166-2:MP'),(474,'MQ','MTQ','Martinique','ISO 3166-2:MQ'),(478,'MR','MRT','Mauritania','ISO 3166-2:MR'),(500,'MS','MSR','Montserrat','ISO 3166-2:MS'),(470,'MT','MLT','Malta','ISO 3166-2:MT'),(480,'MU','MUS','Mauritius','ISO 3166-2:MU'),(462,'MV','MDV','Maldives','ISO 3166-2:MV'),(454,'MW','MWI','Malawi','ISO 3166-2:MW'),(484,'MX','MEX','Mexico','ISO 3166-2:MX'),(458,'MY','MYS','Malaysia','ISO 3166-2:MY'),(508,'MZ','MOZ','Mozambique','ISO 3166-2:MZ'),(516,'NA','NAM','Namibia','ISO 3166-2:NA'),(540,'NC','NCL','New Caledonia','ISO 3166-2:NC'),(562,'NE','NER','Niger','ISO 3166-2:NE'),(574,'NF','NFK','Norfolk Island','ISO 3166-2:NF'),(566,'NG','NGA','Nigeria','ISO 3166-2:NG'),(558,'NI','NIC','Nicaragua','ISO 3166-2:NI'),(528,'NL','NLD','Netherlands','ISO 3166-2:NL'),(578,'NO','NOR','Norway','ISO 3166-2:NO'),(524,'NP','NPL','Nepal','ISO 3166-2:NP'),(520,'NR','NRU','Nauru','ISO 3166-2:NR'),(570,'NU','NIU','Niue','ISO 3166-2:NU'),(554,'NZ','NZL','New Zealand','ISO 3166-2:NZ'),(512,'OM','OMN','Oman','ISO 3166-2:OM'),(591,'PA','PAN','Panama','ISO 3166-2:PA'),(604,'PE','PER','Peru','ISO 3166-2:PE'),(258,'PF','PYF','French Polynesia','ISO 3166-2:PF'),(598,'PG','PNG','Papua New Guinea','ISO 3166-2:PG'),(608,'PH','PHL','Philippines','ISO 3166-2:PH'),(586,'PK','PAK','Pakistan','ISO 3166-2:PK'),(616,'PL','POL','Poland','ISO 3166-2:PL'),(666,'PM','SPM','Saint Pierre and Miquelon','ISO 3166-2:PM'),(612,'PN','PCN','Pitcairn','ISO 3166-2:PN'),(630,'PR','PRI','Puerto Rico','ISO 3166-2:PR'),(275,'PS','PSE','Palestine, State of','ISO 3166-2:PS'),(620,'PT','PRT','Portugal','ISO 3166-2:PT'),(585,'PW','PLW','Palau','ISO 3166-2:PW'),(600,'PY','PRY','Paraguay','ISO 3166-2:PY'),(634,'QA','QAT','Qatar','ISO 3166-2:QA'),(638,'RE','REU','RÃ©union','ISO 3166-2:RE'),(642,'RO','ROU','Romania','ISO 3166-2:RO'),(688,'RS','SRB','Serbia','ISO 3166-2:RS'),(643,'RU','RUS','Russian Federation','ISO 3166-2:RU'),(646,'RW','RWA','Rwanda','ISO 3166-2:RW'),(682,'SA','SAU','Saudi Arabia','ISO 3166-2:SA'),(90,'SB','SLB','Solomon Islands','ISO 3166-2:SB'),(690,'SC','SYC','Seychelles','ISO 3166-2:SC'),(729,'SD','SDN','Sudan','ISO 3166-2:SD'),(752,'SE','SWE','Sweden','ISO 3166-2:SE'),(702,'SG','SGP','Singapore','ISO 3166-2:SG'),(654,'SH','SHN','Saint Helena, Ascension and Tristan da Cunha','ISO 3166-2:SH'),(705,'SI','SVN','Slovenia','ISO 3166-2:SI'),(744,'SJ','SJM','Svalbard and Jan Mayen','ISO 3166-2:SJ'),(703,'SK','SVK','Slovakia','ISO 3166-2:SK'),(694,'SL','SLE','Sierra Leone','ISO 3166-2:SL'),(674,'SM','SMR','San Marino','ISO 3166-2:SM'),(686,'SN','SEN','Senegal','ISO 3166-2:SN'),(706,'SO','SOM','Somalia','ISO 3166-2:SO'),(740,'SR','SUR','Suriname','ISO 3166-2:SR'),(728,'SS','SSD','South Sudan','ISO 3166-2:SS'),(678,'ST','STP','Sao Tome and Principe','ISO 3166-2:ST'),(222,'SV','SLV','El Salvador','ISO 3166-2:SV'),(534,'SX','SXM','Sint Maarten (Dutch part)','ISO 3166-2:SX'),(760,'SY','SYR','Syrian Arab Republic','ISO 3166-2:SY'),(748,'SZ','SWZ','Swaziland','ISO 3166-2:SZ'),(796,'TC','TCA','Turks and Caicos Islands','ISO 3166-2:TC'),(148,'TD','TCD','Chad','ISO 3166-2:TD'),(260,'TF','ATF','French Southern Territories','ISO 3166-2:TF'),(768,'TG','TGO','Togo','ISO 3166-2:TG'),(764,'TH','THA','Thailand','ISO 3166-2:TH'),(762,'TJ','TJK','Tajikistan','ISO 3166-2:TJ'),(772,'TK','TKL','Tokelau','ISO 3166-2:TK'),(626,'TL','TLS','Timor-Leste','ISO 3166-2:TL'),(795,'TM','TKM','Turkmenistan','ISO 3166-2:TM'),(788,'TN','TUN','Tunisia','ISO 3166-2:TN'),(776,'TO','TON','Tonga','ISO 3166-2:TO'),(792,'TR','TUR','Turkey','ISO 3166-2:TR'),(780,'TT','TTO','Trinidad and Tobago','ISO 3166-2:TT'),(798,'TV','TUV','Tuvalu','ISO 3166-2:TV'),(158,'TW','TWN','Taiwan, Province of China','ISO 3166-2:TW'),(834,'TZ','TZA','Tanzania, United Republic of','ISO 3166-2:TZ'),(804,'UA','UKR','Ukraine','ISO 3166-2:UA'),(800,'UG','UGA','Uganda','ISO 3166-2:UG'),(581,'UM','UMI','United States Minor Outlying Islands','ISO 3166-2:UM'),(840,'US','USA','United States of America','ISO 3166-2:US'),(858,'UY','URY','Uruguay','ISO 3166-2:UY'),(860,'UZ','UZB','Uzbekistan','ISO 3166-2:UZ'),(336,'VA','VAT','Holy See','ISO 3166-2:VA'),(670,'VC','VCT','Saint Vincent and the Grenadines','ISO 3166-2:VC'),(862,'VE','VEN','Venezuela (Bolivarian Republic of)','ISO 3166-2:VE'),(92,'VG','VGB','Virgin Islands (British)','ISO 3166-2:VG'),(850,'VI','VIR','Virgin Islands (U.S.)','ISO 3166-2:VI'),(704,'VN','VNM','Viet Nam','ISO 3166-2:VN'),(548,'VU','VUT','Vanuatu','ISO 3166-2:VU'),(876,'WF','WLF','Wallis and Futuna','ISO 3166-2:WF'),(882,'WS','WSM','Samoa','ISO 3166-2:WS'),(887,'YE','YEM','Yemen','ISO 3166-2:YE'),(175,'YT','MYT','Mayotte','ISO 3166-2:YT'),(710,'ZA','ZAF','South Africa','ISO 3166-2:ZA'),(894,'ZM','ZMB','Zambia','ISO 3166-2:ZM'),(716,'ZW','ZWE','Zimbabwe','ISO 3166-2:ZW');
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CountryBlockList`
--

DROP TABLE IF EXISTS `CountryBlockList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CountryBlockList` (
  `Cobl_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Coun_Numeric` int(5) NOT NULL,
  `Cobl_Transaction` tinyint(1) DEFAULT '0',
  `Cobl_MerchantServerLocation` tinyint(1) DEFAULT '0',
  `Cobl_MerchantRegistrationLocation` tinyint(1) DEFAULT '0',
  `Cobl_CreditCardIssueLocation` tinyint(1) DEFAULT '0',
  `Cobl_CreditCardHolderLocation` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Cobl_ID`),
  UNIQUE KEY `Cobl_ID_UNIQUE` (`Cobl_ID`),
  UNIQUE KEY `Coun_Numeric_UNIQUE` (`Coun_Numeric`),
  CONSTRAINT `FK_CountryBlockList_Country` FOREIGN KEY (`Coun_Numeric`) REFERENCES `Country` (`Coun_Numeric`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=997 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CountryBlockList`
--

LOCK TABLES `CountryBlockList` WRITE;
/*!40000 ALTER TABLE `CountryBlockList` DISABLE KEYS */;
INSERT INTO `CountryBlockList` VALUES (748,4,1,0,0,1,1),(749,8,0,0,0,0,0),(750,12,0,0,0,0,1),(751,16,0,0,0,0,0),(752,20,0,1,0,0,0),(753,24,0,0,0,0,0),(754,660,0,0,0,0,0),(755,10,1,0,0,0,0),(756,28,1,0,0,0,0),(757,32,0,0,0,0,0),(758,51,0,0,0,0,0),(759,533,0,0,0,0,0),(760,36,0,0,0,0,0),(761,40,0,0,0,0,0),(762,31,0,0,0,0,0),(763,44,0,0,0,0,0),(764,48,0,0,0,0,0),(765,50,0,0,0,0,0),(766,52,0,0,0,0,0),(767,112,0,0,0,0,0),(768,56,0,0,0,0,0),(769,84,0,0,0,0,0),(770,204,0,0,0,0,0),(771,60,0,0,0,0,0),(772,64,0,0,0,0,0),(773,68,0,0,0,0,0),(774,535,0,0,0,0,0),(775,70,0,0,0,0,0),(776,72,0,0,0,0,0),(777,74,0,0,0,0,0),(778,76,0,0,0,0,0),(779,86,0,0,0,0,0),(780,96,0,0,0,0,0),(781,100,0,0,0,0,0),(782,854,0,0,0,0,0),(783,108,0,0,0,0,0),(784,132,0,0,0,0,0),(785,116,0,0,0,0,0),(786,120,0,0,0,0,0),(787,124,0,0,0,0,0),(788,136,0,0,0,0,0),(789,140,0,0,0,0,0),(790,148,0,0,0,0,0),(791,152,0,0,0,0,0),(792,156,0,0,0,0,0),(793,162,0,0,0,0,0),(794,166,0,0,0,0,0),(795,170,0,0,0,0,0),(796,174,0,0,0,0,0),(797,178,0,0,0,0,0),(798,180,0,0,0,0,0),(799,184,0,0,0,0,0),(800,188,0,0,0,0,0),(801,191,0,0,0,0,0),(802,192,0,0,0,0,0),(803,531,0,0,0,0,0),(804,196,0,0,0,0,0),(805,203,0,0,0,0,0),(806,384,0,0,0,0,0),(807,208,0,0,0,0,0),(808,262,0,0,0,0,0),(809,212,0,0,0,0,0),(810,214,0,0,0,0,0),(811,218,0,0,0,0,0),(812,818,0,0,0,0,0),(813,222,0,0,0,0,0),(814,226,0,0,0,0,0),(815,232,0,0,0,0,0),(816,233,0,0,0,0,0),(817,231,0,0,0,0,0),(818,238,0,0,0,0,0),(819,234,0,0,0,0,0),(820,242,0,0,0,0,0),(821,246,0,0,0,0,0),(822,250,0,0,0,0,0),(823,254,0,0,0,0,0),(824,258,0,0,0,0,0),(825,260,0,0,0,0,0),(826,266,0,0,0,0,0),(827,270,0,0,0,0,0),(828,268,0,0,0,0,0),(829,276,0,0,0,0,0),(830,288,0,0,0,0,0),(831,292,0,0,0,0,0),(832,300,0,0,0,0,0),(833,304,0,0,0,0,0),(834,308,0,0,0,0,0),(835,312,0,0,0,0,0),(836,316,0,0,0,0,0),(837,320,0,0,0,0,0),(838,831,0,0,0,0,0),(839,324,0,0,0,0,0),(840,624,0,0,0,0,0),(841,328,0,0,0,0,0),(842,332,0,0,0,0,0),(843,334,0,0,0,0,0),(844,336,0,0,0,0,0),(845,340,0,0,0,0,0),(846,344,0,0,0,0,0),(847,348,0,0,0,0,0),(848,352,0,0,0,0,0),(849,356,0,0,0,0,0),(850,360,0,0,0,0,0),(851,364,0,0,0,0,0),(852,368,0,0,0,0,0),(853,372,0,0,0,0,0),(854,833,0,0,0,0,0),(855,376,0,0,0,0,0),(856,380,0,0,0,0,0),(857,388,0,0,0,0,0),(858,392,0,0,0,0,0),(859,832,0,0,0,0,0),(860,400,0,0,0,0,0),(861,398,0,0,0,0,0),(862,404,0,0,0,0,0),(863,296,0,0,0,0,0),(864,408,0,0,0,0,0),(865,410,0,0,0,0,0),(866,414,0,0,0,0,0),(867,417,0,0,0,0,0),(868,418,0,0,0,0,0),(869,428,0,0,0,0,0),(870,422,0,0,0,0,0),(871,426,0,0,0,0,0),(872,430,0,0,0,0,0),(873,434,0,0,0,0,0),(874,438,0,0,0,0,0),(875,440,0,0,0,0,0),(876,442,0,0,0,0,0),(877,446,0,0,0,0,0),(878,807,0,0,0,0,0),(879,450,0,0,0,0,0),(880,454,0,0,0,0,0),(881,458,0,0,0,0,0),(882,462,0,0,0,0,0),(883,466,0,0,0,0,0),(884,470,0,0,0,0,0),(885,584,0,0,0,0,0),(886,474,0,0,0,0,0),(887,478,0,0,0,0,0),(888,480,0,0,0,0,0),(889,175,0,0,0,0,0),(890,484,0,0,0,0,0),(891,583,0,0,0,0,0),(892,498,0,0,0,0,0),(893,492,0,0,0,0,0),(894,496,0,0,0,0,0),(895,499,0,0,0,0,0),(896,500,0,0,0,0,0),(897,504,0,0,0,0,0),(898,508,0,0,0,0,0),(899,104,0,0,0,0,0),(900,516,0,0,0,0,0),(901,520,0,0,0,0,0),(902,524,0,0,0,0,0),(903,528,0,0,0,0,0),(904,540,0,0,0,0,0),(905,554,0,0,0,0,0),(906,558,0,0,0,0,0),(907,562,0,0,0,0,0),(908,566,0,0,0,0,0),(909,570,0,0,0,0,0),(910,574,0,0,0,0,0),(911,580,0,0,0,0,0),(912,578,0,0,0,0,0),(913,512,0,0,0,0,0),(914,586,0,0,0,0,0),(915,585,0,0,0,0,0),(916,275,0,0,0,0,0),(917,591,0,0,0,0,0),(918,598,0,0,0,0,0),(919,600,0,0,0,0,0),(920,604,0,0,0,0,0),(921,608,0,0,0,0,0),(922,612,0,0,0,0,0),(923,616,0,0,0,0,0),(924,620,0,0,0,0,0),(925,630,0,0,0,0,0),(926,634,0,0,0,0,0),(927,642,0,0,0,0,0),(928,643,0,0,0,0,0),(929,646,0,0,0,0,0),(930,638,0,0,0,0,0),(931,652,0,0,0,0,0),(932,654,0,0,0,0,0),(933,659,0,0,0,0,0),(934,662,0,0,0,0,0),(935,663,0,0,0,0,0),(936,666,0,0,0,0,0),(937,670,0,0,0,0,0),(938,882,0,0,0,0,0),(939,674,0,0,0,0,0),(940,678,0,0,0,0,0),(941,682,0,0,0,0,0),(942,686,0,0,0,0,0),(943,688,0,0,0,0,0),(944,690,0,0,0,0,0),(945,694,0,0,0,0,0),(946,702,0,0,0,0,0),(947,534,0,0,0,0,0),(948,703,0,0,0,0,0),(949,705,0,0,0,0,0),(950,90,0,0,0,0,0),(951,706,0,0,0,0,0),(952,710,0,0,0,0,0),(953,239,0,0,0,0,0),(954,728,0,0,0,0,0),(955,724,0,0,0,0,0),(956,144,0,0,0,0,0),(957,729,0,0,0,0,0),(958,740,0,0,0,0,0),(959,744,0,0,0,0,0),(960,748,0,0,0,0,0),(961,752,0,0,0,0,0),(962,756,0,0,0,0,0),(963,760,0,0,0,0,0),(964,158,0,0,0,0,0),(965,762,0,0,0,0,0),(966,834,0,0,0,0,0),(967,764,0,0,0,0,0),(968,626,0,0,0,0,0),(969,768,0,0,0,0,0),(970,772,0,0,0,0,0),(971,776,0,0,0,0,0),(972,780,0,0,0,0,0),(973,788,0,0,0,0,0),(974,792,0,0,0,0,0),(975,795,0,0,0,0,0),(976,796,0,0,0,0,0),(977,798,0,0,0,0,0),(978,800,0,0,0,0,0),(979,804,0,0,0,0,0),(980,784,0,0,0,0,0),(981,826,0,0,0,0,0),(982,581,0,0,0,0,0),(983,840,0,0,0,0,0),(984,858,0,0,0,0,0),(985,860,0,0,0,0,0),(986,548,0,0,0,0,0),(987,862,0,0,0,0,0),(988,704,0,0,0,0,0),(989,92,0,0,0,0,0),(990,850,0,0,0,0,0),(991,876,0,0,0,0,0),(992,732,0,0,0,0,0),(993,887,0,0,0,0,0),(994,894,0,0,0,0,0),(995,716,0,0,0,0,0),(996,248,0,0,0,0,0);
/*!40000 ALTER TABLE `CountryBlockList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CountryRestriction`
--

DROP TABLE IF EXISTS `CountryRestriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CountryRestriction` (
  `Core_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Coun_Numeric` int(5) NOT NULL,
  `Core_Value` int(5) NOT NULL DEFAULT '0',
  `Core_Concept` varchar(50) NOT NULL,
  `Core_TimeUnit` varchar(50) NOT NULL,
  `Core_Status` enum('0','1') NOT NULL DEFAULT '0',
  `Core_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Core_ID`),
  KEY `FK_CountryRestrictionCountry_idx` (`Coun_Numeric`),
  CONSTRAINT `FK_CountryRestrictionCountry` FOREIGN KEY (`Coun_Numeric`) REFERENCES `Country` (`Coun_Numeric`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CountryRestriction`
--

LOCK TABLES `CountryRestriction` WRITE;
/*!40000 ALTER TABLE `CountryRestriction` DISABLE KEYS */;
INSERT INTO `CountryRestriction` VALUES (2,24,1300,'Transactions','1440','0','2015-02-25 11:24:25'),(3,24,300,'Amount','1440','0','2015-01-15 17:45:57');
/*!40000 ALTER TABLE `CountryRestriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CreditCardRestriction`
--

DROP TABLE IF EXISTS `CreditCardRestriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CreditCardRestriction` (
  `Ccre_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Ccre_Value` int(5) NOT NULL,
  `Ccre_Concept` varchar(50) NOT NULL,
  `Ccre_TimeUnit` varchar(50) NOT NULL,
  `Ccre_Status` enum('0','1') NOT NULL,
  `Ccre_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Ccre_ID`),
  UNIQUE KEY `Ccre_ID_UNIQUE` (`Ccre_ID`),
  UNIQUE KEY `Ccre_Concept_UNIQUE` (`Ccre_Concept`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CreditCardRestriction`
--

LOCK TABLES `CreditCardRestriction` WRITE;
/*!40000 ALTER TABLE `CreditCardRestriction` DISABLE KEYS */;
INSERT INTO `CreditCardRestriction` VALUES (1,10,'Amount','14400','0','2015-02-02 20:01:42'),(6,1000,'Transactions','1440','0','2015-02-02 20:01:31');
/*!40000 ALTER TABLE `CreditCardRestriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Currency`
--

DROP TABLE IF EXISTS `Currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Currency` (
  `Curr_NumericCode` int(3) NOT NULL DEFAULT '0',
  `Coun_Numeric` int(5) DEFAULT NULL,
  `Coun_Name` varchar(100) NOT NULL DEFAULT 'NA',
  `Curr_Name` varchar(50) NOT NULL DEFAULT 'NA',
  `Curr_AlphabeticCode` varchar(3) NOT NULL DEFAULT 'NA',
  `Curr_MinorUnit` int(3) NOT NULL DEFAULT '0',
  KEY `FK_Currency_Currency_idx` (`Coun_Name`,`Coun_Numeric`),
  KEY `FK_Currency_Country_Numeric_idx` (`Coun_Numeric`),
  CONSTRAINT `FK_Currency_Country_Numeric` FOREIGN KEY (`Coun_Numeric`) REFERENCES `Country` (`Coun_Numeric`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Currency`
--

LOCK TABLES `Currency` WRITE;
/*!40000 ALTER TABLE `Currency` DISABLE KEYS */;
INSERT INTO `Currency` VALUES (971,4,'Afghanistan','Afghani','AFN',2),(978,248,'Ã…land Islands','Euro','EUR',2),(8,8,'Albania','Lek','ALL',2),(12,12,'Algeria','Algerian Dinar','DZD',2),(840,16,'American Samoa','US Dollar','USD',2),(978,20,'Andorra','Euro','EUR',2),(973,24,'Angola','Kwanza','AOA',2),(951,660,'Anguilla','East Caribbean Dollar','XCD',2),(951,28,'Antigua and Barbuda','East Caribbean Dollar','XCD',2),(32,32,'Argentina','Argentine Peso','ARS',2),(51,51,'Armenia','Armenian Dram','AMD',2),(533,533,'Aruba','Aruban Florin','AWG',2),(36,36,'Australia','Australian Dollar','AUD',2),(978,40,'Austria','Euro','EUR',2),(944,31,'Azerbaijan','Azerbaijanian Manat','AZN',2),(44,44,'Bahamas','Bahamian Dollar','BSD',2),(48,48,'Bahrain','Bahraini Dinar','BHD',3),(50,50,'Bangladesh','Taka','BDT',2),(52,52,'Barbados','Barbados Dollar','BBD',2),(974,112,'Belarus','Belarussian Ruble','BYR',0),(978,56,'Belgium','Euro','EUR',2),(84,84,'Belize','Belize Dollar','BZD',2),(952,204,'Benin','CFA Franc BCEAO','XOF',0),(60,60,'Bermuda','Bermudian Dollar','BMD',2),(64,64,'Bhutan','Ngultrum','BTN',2),(356,64,'Bhutan','Indian Rupee','INR',2),(840,535,'Bonaire, Sint Eustatius and Saba','US Dollar','USD',2),(977,70,'Bosnia and Herzegovina','Convertible Mark','BAM',2),(72,72,'Botswana','Pula','BWP',2),(578,74,'Bouvet Island','Norwegian Krone','NOK',2),(986,76,'Brazil','Brazilian Real','BRL',2),(840,86,'British Indian Ocean Territory','US Dollar','USD',2),(96,96,'Brunei Darussalam','Brunei Dollar','BND',2),(975,100,'Bulgaria','Bulgarian Lev','BGN',2),(952,854,'Burkina Faso','CFA Franc BCEAO','XOF',0),(108,108,'Burundi','Burundi Franc','BIF',0),(116,116,'Cambodia','Riel','KHR',2),(950,120,'Cameroon','CFA Franc BEAC','XAF',0),(124,124,'Canada','Canadian Dollar','CAD',2),(132,132,'Cabo Verde','Cabo Verde Escudo','CVE',2),(136,136,'Cayman Islands','Cayman Islands Dollar','KYD',2),(950,140,'Central African Republic','CFA Franc BEAC','XAF',0),(950,148,'Chad','CFA Franc BEAC','XAF',0),(990,152,'Chile','Unidad de Fomento','CLF',4),(152,152,'Chile','Chilean Peso','CLP',0),(156,156,'China','Yuan Renminbi','CNY',2),(36,162,'Christmas Island','Australian Dollar','AUD',2),(36,166,'Cocos (Keeling) Islands','Australian Dollar','AUD',2),(170,170,'Colombia','Colombian Peso','COP',2),(970,170,'Colombia','Unidad de Valor Real','COU',2),(174,174,'Comoros','Comoro Franc','KMF',0),(950,178,'Congo','CFA Franc BEAC','XAF',0),(554,184,'Cook Islands','New Zealand Dollar','NZD',2),(188,188,'Costa Rica','Costa Rican Colon','CRC',2),(952,384,'CÃ´te d\'Ivoire','CFA Franc BCEAO','XOF',0),(191,191,'Croatia','Croatian Kuna','HRK',2),(931,192,'Cuba','Peso Convertible','CUC',2),(192,192,'Cuba','Cuban Peso','CUP',2),(532,531,'CuraÃ§ao','Netherlands Antillean Guilder','ANG',2),(978,196,'Cyprus','Euro','EUR',2),(203,203,'Czech Republic','Czech Koruna','CZK',2),(208,208,'Denmark','Danish Krone','DKK',2),(262,262,'Djibouti','Djibouti Franc','DJF',0),(951,212,'Dominica','East Caribbean Dollar','XCD',2),(214,214,'Dominican Republic','Dominican Peso','DOP',2),(840,218,'Ecuador','US Dollar','USD',2),(818,818,'Egypt','Egyptian Pound','EGP',2),(222,222,'El Salvador','El Salvador Colon','SVC',2),(840,222,'El Salvador','US Dollar','USD',2),(950,226,'Equatorial Guinea','CFA Franc BEAC','XAF',0),(232,232,'Eritrea','Nakfa','ERN',2),(978,233,'Estonia','Euro','EUR',2),(230,231,'Ethiopia','Ethiopian Birr','ETB',2),(238,238,'Falkland Islands (Malvinas)','Falkland Islands Pound','FKP',2),(208,234,'Faroe Islands','Danish Krone','DKK',2),(242,242,'Fiji','Fiji Dollar','FJD',2),(978,246,'Finland','Euro','EUR',2),(978,250,'France','Euro','EUR',2),(978,254,'French Guiana','Euro','EUR',2),(953,258,'French Polynesia','CFP Franc','XPF',0),(978,260,'French Southern Territories','Euro','EUR',2),(950,266,'Gabon','CFA Franc BEAC','XAF',0),(270,270,'Gambia','Dalasi','GMD',2),(981,268,'Georgia','Lari','GEL',2),(978,276,'Germany','Euro','EUR',2),(936,288,'Ghana','Ghana Cedi','GHS',2),(292,292,'Gibraltar','Gibraltar Pound','GIP',2),(978,300,'Greece','Euro','EUR',2),(208,304,'Greenland','Danish Krone','DKK',2),(951,308,'Grenada','East Caribbean Dollar','XCD',2),(978,312,'Guadeloupe','Euro','EUR',2),(840,316,'Guam','US Dollar','USD',2),(320,320,'Guatemala','Quetzal','GTQ',2),(826,831,'Guernsey','Pound Sterling','GBP',2),(324,324,'Guinea','Guinea Franc','GNF',0),(952,624,'Guinea-Bissau','CFA Franc BCEAO','XOF',0),(328,328,'Guyana','Guyana Dollar','GYD',2),(332,332,'Haiti','Gourde','HTG',2),(840,332,'Haiti','US Dollar','USD',2),(36,334,'Heard Island and McDonald Islands','Australian Dollar','AUD',2),(340,340,'Honduras','Lempira','HNL',2),(344,344,'Hong Kong','Hong Kong Dollar','HKD',2),(348,348,'Hungary','Forint','HUF',2),(352,352,'Iceland','Iceland Krona','ISK',0),(356,356,'India','Indian Rupee','INR',2),(360,360,'Indonesia','Rupiah','IDR',2),(368,368,'Iraq','Iraqi Dinar','IQD',3),(978,372,'Ireland','Euro','EUR',2),(826,833,'Isle of Man','Pound Sterling','GBP',2),(376,376,'Israel','New Israeli Sheqel','ILS',2),(978,380,'Italy','Euro','EUR',2),(388,388,'Jamaica','Jamaican Dollar','JMD',2),(392,392,'Japan','Yen','JPY',0),(826,832,'Jersey','Pound Sterling','GBP',2),(400,400,'Jordan','Jordanian Dinar','JOD',3),(398,398,'Kazakhstan','Tenge','KZT',2),(404,404,'Kenya','Kenyan Shilling','KES',2),(36,296,'Kiribati','Australian Dollar','AUD',2),(414,414,'Kuwait','Kuwaiti Dinar','KWD',3),(417,417,'Kyrgyzstan','Som','KGS',2),(978,428,'Latvia','Euro','EUR',2),(422,422,'Lebanon','Lebanese Pound','LBP',2),(426,426,'Lesotho','Loti','LSL',2),(710,426,'Lesotho','Rand','ZAR',2),(430,430,'Liberia','Liberian Dollar','LRD',2),(434,434,'Libya','Libyan Dinar','LYD',3),(756,438,'Liechtenstein','Swiss Franc','CHF',2),(978,440,'Lithuania','Euro','EUR',2),(978,442,'Luxembourg','Euro','EUR',2),(446,446,'Macao','Pataca','MOP',2),(969,450,'Madagascar','Malagasy Ariary','MGA',2),(454,454,'Malawi','Kwacha','MWK',2),(458,458,'Malaysia','Malaysian Ringgit','MYR',2),(462,462,'Maldives','Rufiyaa','MVR',2),(952,466,'Mali','CFA Franc BCEAO','XOF',0),(978,470,'Malta','Euro','EUR',2),(840,584,'Marshall Islands','US Dollar','USD',2),(978,474,'Martinique','Euro','EUR',2),(478,478,'Mauritania','Ouguiya','MRO',2),(480,480,'Mauritius','Mauritius Rupee','MUR',2),(978,175,'Mayotte','Euro','EUR',2),(484,484,'Mexico','Mexican Peso','MXN',2),(979,484,'Mexico','Mexican Unidad de Inversion (UDI)','MXV',2),(978,492,'Monaco','Euro','EUR',2),(496,496,'Mongolia','Tugrik','MNT',2),(978,499,'Montenegro','Euro','EUR',2),(951,500,'Montserrat','East Caribbean Dollar','XCD',2),(504,504,'Morocco','Moroccan Dirham','MAD',2),(943,508,'Mozambique','Mozambique Metical','MZN',2),(104,104,'Myanmar','Kyat','MMK',2),(516,516,'Namibia','Namibia Dollar','NAD',2),(710,516,'Namibia','Rand','ZAR',2),(36,520,'Nauru','Australian Dollar','AUD',2),(524,524,'Nepal','Nepalese Rupee','NPR',2),(978,528,'Netherlands','Euro','EUR',2),(953,540,'New Caledonia','CFP Franc','XPF',0),(554,554,'New Zealand','New Zealand Dollar','NZD',2),(558,558,'Nicaragua','Cordoba Oro','NIO',2),(952,562,'Niger','CFA Franc BCEAO','XOF',0),(566,566,'Nigeria','Naira','NGN',2),(554,570,'Niue','New Zealand Dollar','NZD',2),(36,574,'Norfolk Island','Australian Dollar','AUD',2),(840,580,'Northern Mariana Islands','US Dollar','USD',2),(578,578,'Norway','Norwegian Krone','NOK',2),(512,512,'Oman','Rial Omani','OMR',3),(586,586,'Pakistan','Pakistan Rupee','PKR',2),(840,585,'Palau','US Dollar','USD',2),(590,591,'Panama','Balboa','PAB',2),(840,591,'Panama','US Dollar','USD',2),(598,598,'Papua New Guinea','Kina','PGK',2),(600,600,'Paraguay','Guarani','PYG',0),(604,604,'Peru','Nuevo Sol','PEN',2),(608,608,'Philippines','Philippine Peso','PHP',2),(554,612,'Pitcairn','New Zealand Dollar','NZD',2),(985,616,'Poland','Zloty','PLN',2),(978,620,'Portugal','Euro','EUR',2),(840,630,'Puerto Rico','US Dollar','USD',2),(634,634,'Qatar','Qatari Rial','QAR',2),(978,638,'RÃ©union','Euro','EUR',2),(946,642,'Romania','New Romanian Leu','RON',2),(643,643,'Russian Federation','Russian Ruble','RUB',2),(646,646,'Rwanda','Rwanda Franc','RWF',0),(978,652,'Saint BarthÃ©lemy','Euro','EUR',2),(951,659,'Saint Kitts and Nevis','East Caribbean Dollar','XCD',2),(951,662,'Saint Lucia','East Caribbean Dollar','XCD',2),(978,663,'Saint Martin (French part)','Euro','EUR',2),(978,666,'Saint Pierre and Miquelon','Euro','EUR',2),(951,670,'Saint Vincent and the Grenadines','East Caribbean Dollar','XCD',2),(882,882,'Samoa','Tala','WST',2),(978,674,'San Marino','Euro','EUR',2),(678,678,'Sao Tome and Principe','Dobra','STD',2),(682,682,'Saudi Arabia','Saudi Riyal','SAR',2),(952,686,'Senegal','CFA Franc BCEAO','XOF',0),(941,688,'Serbia','Serbian Dinar','RSD',2),(690,690,'Seychelles','Seychelles Rupee','SCR',2),(694,694,'Sierra Leone','Leone','SLL',2),(702,702,'Singapore','Singapore Dollar','SGD',2),(532,534,'Sint Maarten (Dutch part)','Netherlands Antillean Guilder','ANG',2),(978,703,'Slovakia','Euro','EUR',2),(978,705,'Slovenia','Euro','EUR',2),(90,90,'Solomon Islands','Solomon Islands Dollar','SBD',2),(706,706,'Somalia','Somali Shilling','SOS',2),(710,710,'South Africa','Rand','ZAR',2),(728,728,'South Sudan','South Sudanese Pound','SSP',2),(978,724,'Spain','Euro','EUR',2),(144,144,'Sri Lanka','Sri Lanka Rupee','LKR',2),(938,729,'Sudan','Sudanese Pound','SDG',2),(968,740,'Suriname','Surinam Dollar','SRD',2),(578,744,'Svalbard and Jan Mayen','Norwegian Krone','NOK',2),(748,748,'Swaziland','Lilangeni','SZL',2),(752,752,'Sweden','Swedish Krona','SEK',2),(947,756,'Switzerland','WIR Euro','CHE',2),(756,756,'Switzerland','Swiss Franc','CHF',2),(948,756,'Switzerland','WIR Franc','CHW',2),(760,760,'Syrian Arab Republic','Syrian Pound','SYP',2),(901,158,'Taiwan, Province of China','New Taiwan Dollar','TWD',2),(972,762,'Tajikistan','Somoni','TJS',2),(834,834,'Tanzania, United Republic of','Tanzanian Shilling','TZS',2),(764,764,'Thailand','Baht','THB',2),(840,626,'Timor-Leste','US Dollar','USD',2),(952,768,'Togo','CFA Franc BCEAO','XOF',0),(554,772,'Tokelau','New Zealand Dollar','NZD',2),(776,776,'Tonga','Paâ€™anga','TOP',2),(780,780,'Trinidad and Tobago','Trinidad and Tobago Dollar','TTD',2),(788,788,'Tunisia','Tunisian Dinar','TND',3),(949,792,'Turkey','Turkish Lira','TRY',2),(934,795,'Turkmenistan','Turkmenistan New Manat','TMT',2),(840,796,'Turks and Caicos Islands','US Dollar','USD',2),(36,798,'Tuvalu','Australian Dollar','AUD',2),(800,800,'Uganda','Uganda Shilling','UGX',0),(980,804,'Ukraine','Hryvnia','UAH',2),(784,784,'United Arab Emirates','UAE Dirham','AED',2);
/*!40000 ALTER TABLE `Currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Currency_Aux`
--

DROP TABLE IF EXISTS `Currency_Aux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Currency_Aux` (
  `ENTITY` varchar(50) DEFAULT NULL,
  `Currency` varchar(45) DEFAULT NULL,
  `Alphabetic_Code` varchar(45) DEFAULT NULL,
  `Numeric_Code` int(3) DEFAULT NULL,
  `Minor_unit` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Currency_Aux`
--

LOCK TABLES `Currency_Aux` WRITE;
/*!40000 ALTER TABLE `Currency_Aux` DISABLE KEYS */;
INSERT INTO `Currency_Aux` VALUES ('AFGHANISTAN','Afghani','AFN',971,2),('Ã…LAND ISLANDS','Euro','EUR',978,2),('ALBANIA','Lek','ALL',8,2),('ALGERIA','Algerian Dinar','DZD',12,2),('AMERICAN SAMOA','US Dollar','USD',840,2),('ANDORRA','Euro','EUR',978,2),('ANGOLA','Kwanza','AOA',973,2),('ANGUILLA','East Caribbean Dollar','XCD',951,2),('ANTIGUA AND BARBUDA','East Caribbean Dollar','XCD',951,2),('ARGENTINA','Argentine Peso','ARS',32,2),('ARMENIA','Armenian Dram','AMD',51,2),('ARUBA','Aruban Florin','AWG',533,2),('AUSTRALIA','Australian Dollar','AUD',36,2),('AUSTRIA','Euro','EUR',978,2),('AZERBAIJAN','Azerbaijanian Manat','AZN',944,2),('BAHAMAS','Bahamian Dollar','BSD',44,2),('BAHRAIN','Bahraini Dinar','BHD',48,3),('BANGLADESH','Taka','BDT',50,2),('BARBADOS','Barbados Dollar','BBD',52,2),('BELARUS','Belarussian Ruble','BYR',974,0),('BELGIUM','Euro','EUR',978,2),('BELIZE','Belize Dollar','BZD',84,2),('BENIN','CFA Franc BCEAO','XOF',952,0),('BERMUDA','Bermudian Dollar','BMD',60,2),('BHUTAN','Ngultrum','BTN',64,2),('BHUTAN','Indian Rupee','INR',356,2),('BOLIVIA, PLURINATIONAL STATE OF','Boliviano','BOB',68,2),('BOLIVIA, PLURINATIONAL STATE OF','Mvdol','BOV',984,2),('BONAIRE, SINT EUSTATIUS AND SABA','US Dollar','USD',840,2),('BOSNIA AND HERZEGOVINA','Convertible Mark','BAM',977,2),('BOTSWANA','Pula','BWP',72,2),('BOUVET ISLAND','Norwegian Krone','NOK',578,2),('BRAZIL','Brazilian Real','BRL',986,2),('BRITISH INDIAN OCEAN TERRITORY','US Dollar','USD',840,2),('BRUNEI DARUSSALAM','Brunei Dollar','BND',96,2),('BULGARIA','Bulgarian Lev','BGN',975,2),('BURKINA FASO','CFA Franc BCEAO','XOF',952,0),('BURUNDI','Burundi Franc','BIF',108,0),('CAMBODIA','Riel','KHR',116,2),('CAMEROON','CFA Franc BEAC','XAF',950,0),('CANADA','Canadian Dollar','CAD',124,2),('CABO VERDE','Cabo Verde Escudo','CVE',132,2),('CAYMAN ISLANDS','Cayman Islands Dollar','KYD',136,2),('CENTRAL AFRICAN REPUBLIC','CFA Franc BEAC','XAF',950,0),('CHAD','CFA Franc BEAC','XAF',950,0),('CHILE','Unidad de Fomento','CLF',990,4),('CHILE','Chilean Peso','CLP',152,0),('CHINA','Yuan Renminbi','CNY',156,2),('CHRISTMAS ISLAND','Australian Dollar','AUD',36,2),('COCOS (KEELING) ISLANDS','Australian Dollar','AUD',36,2),('COLOMBIA','Colombian Peso','COP',170,2),('COLOMBIA','Unidad de Valor Real','COU',970,2),('COMOROS','Comoro Franc','KMF',174,0),('CONGO','CFA Franc BEAC','XAF',950,0),('CONGO, DEMOCRATIC REPUBLIC OF THE ','Congolese Franc','CDF',976,2),('COOK ISLANDS','New Zealand Dollar','NZD',554,2),('COSTA RICA','Costa Rican Colon','CRC',188,2),('CÃ”TE D\'IVOIRE','CFA Franc BCEAO','XOF',952,0),('CROATIA','Croatian Kuna','HRK',191,2),('CUBA','Peso Convertible','CUC',931,2),('CUBA','Cuban Peso','CUP',192,2),('CURAÃ‡AO','Netherlands Antillean Guilder','ANG',532,2),('CYPRUS','Euro','EUR',978,2),('CZECH REPUBLIC','Czech Koruna','CZK',203,2),('DENMARK','Danish Krone','DKK',208,2),('DJIBOUTI','Djibouti Franc','DJF',262,0),('DOMINICA','East Caribbean Dollar','XCD',951,2),('DOMINICAN REPUBLIC','Dominican Peso','DOP',214,2),('ECUADOR','US Dollar','USD',840,2),('EGYPT','Egyptian Pound','EGP',818,2),('EL SALVADOR','El Salvador Colon','SVC',222,2),('EL SALVADOR','US Dollar','USD',840,2),('EQUATORIAL GUINEA','CFA Franc BEAC','XAF',950,0),('ERITREA','Nakfa','ERN',232,2),('ESTONIA','Euro','EUR',978,2),('ETHIOPIA','Ethiopian Birr','ETB',230,2),('EUROPEAN UNION','Euro','EUR',978,2),('FALKLAND ISLANDS (MALVINAS)','Falkland Islands Pound','FKP',238,2),('FAROE ISLANDS','Danish Krone','DKK',208,2),('FIJI','Fiji Dollar','FJD',242,2),('FINLAND','Euro','EUR',978,2),('FRANCE','Euro','EUR',978,2),('FRENCH GUIANA','Euro','EUR',978,2),('FRENCH POLYNESIA','CFP Franc','XPF',953,0),('FRENCH SOUTHERN TERRITORIES','Euro','EUR',978,2),('GABON','CFA Franc BEAC','XAF',950,0),('GAMBIA','Dalasi','GMD',270,2),('GEORGIA','Lari','GEL',981,2),('GERMANY','Euro','EUR',978,2),('GHANA','Ghana Cedi','GHS',936,2),('GIBRALTAR','Gibraltar Pound','GIP',292,2),('GREECE','Euro','EUR',978,2),('GREENLAND','Danish Krone','DKK',208,2),('GRENADA','East Caribbean Dollar','XCD',951,2),('GUADELOUPE','Euro','EUR',978,2),('GUAM','US Dollar','USD',840,2),('GUATEMALA','Quetzal','GTQ',320,2),('GUERNSEY','Pound Sterling','GBP',826,2),('GUINEA','Guinea Franc','GNF',324,0),('GUINEA-BISSAU','CFA Franc BCEAO','XOF',952,0),('GUYANA','Guyana Dollar','GYD',328,2),('HAITI','Gourde','HTG',332,2),('HAITI','US Dollar','USD',840,2),('HEARD ISLAND AND McDONALD ISLANDS','Australian Dollar','AUD',36,2),('HOLY SEE (VATICAN CITY STATE)','Euro','EUR',978,2),('HONDURAS','Lempira','HNL',340,2),('HONG KONG','Hong Kong Dollar','HKD',344,2),('HUNGARY','Forint','HUF',348,2),('ICELAND','Iceland Krona','ISK',352,0),('INDIA','Indian Rupee','INR',356,2),('INDONESIA','Rupiah','IDR',360,2),('IRAN, ISLAMIC REPUBLIC OF','Iranian Rial','IRR',364,2),('IRAQ','Iraqi Dinar','IQD',368,3),('IRELAND','Euro','EUR',978,2),('ISLE OF MAN','Pound Sterling','GBP',826,2),('ISRAEL','New Israeli Sheqel','ILS',376,2),('ITALY','Euro','EUR',978,2),('JAMAICA','Jamaican Dollar','JMD',388,2),('JAPAN','Yen','JPY',392,0),('JERSEY','Pound Sterling','GBP',826,2),('JORDAN','Jordanian Dinar','JOD',400,3),('KAZAKHSTAN','Tenge','KZT',398,2),('KENYA','Kenyan Shilling','KES',404,2),('KIRIBATI','Australian Dollar','AUD',36,2),('KOREA, DEMOCRATIC PEOPLEâ€™S REPUBLIC OF','North Korean Won','KPW',408,2),('KOREA, REPUBLIC OF','Won','KRW',410,0),('KUWAIT','Kuwaiti Dinar','KWD',414,3),('KYRGYZSTAN','Som','KGS',417,2),('LAO PEOPLEâ€™S DEMOCRATIC REPUBLIC','Kip','LAK',418,2),('LATVIA','Euro','EUR',978,2),('LEBANON','Lebanese Pound','LBP',422,2),('LESOTHO','Loti','LSL',426,2),('LESOTHO','Rand','ZAR',710,2),('LIBERIA','Liberian Dollar','LRD',430,2),('LIBYA','Libyan Dinar','LYD',434,3),('LIECHTENSTEIN','Swiss Franc','CHF',756,2),('LITHUANIA','Euro','EUR',978,2),('LUXEMBOURG','Euro','EUR',978,2),('MACAO','Pataca','MOP',446,2),('MACEDONIA, THE FORMER \nYUGOSLAV REPUBLIC OF','Denar','MKD',807,2),('MADAGASCAR','Malagasy Ariary','MGA',969,2),('MALAWI','Kwacha','MWK',454,2),('MALAYSIA','Malaysian Ringgit','MYR',458,2),('MALDIVES','Rufiyaa','MVR',462,2),('MALI','CFA Franc BCEAO','XOF',952,0),('MALTA','Euro','EUR',978,2),('MARSHALL ISLANDS','US Dollar','USD',840,2),('MARTINIQUE','Euro','EUR',978,2),('MAURITANIA','Ouguiya','MRO',478,2),('MAURITIUS','Mauritius Rupee','MUR',480,2),('MAYOTTE','Euro','EUR',978,2),('MEXICO','Mexican Peso','MXN',484,2),('MEXICO','Mexican Unidad de Inversion (UDI)','MXV',979,2),('MICRONESIA, FEDERATED STATES OF','US Dollar','USD',840,2),('MOLDOVA, REPUBLIC OF','Moldovan Leu','MDL',498,2),('MONACO','Euro','EUR',978,2),('MONGOLIA','Tugrik','MNT',496,2),('MONTENEGRO','Euro','EUR',978,2),('MONTSERRAT','East Caribbean Dollar','XCD',951,2),('MOROCCO','Moroccan Dirham','MAD',504,2),('MOZAMBIQUE','Mozambique Metical','MZN',943,2),('MYANMAR','Kyat','MMK',104,2),('NAMIBIA','Namibia Dollar','NAD',516,2),('NAMIBIA','Rand','ZAR',710,2),('NAURU','Australian Dollar','AUD',36,2),('NEPAL','Nepalese Rupee','NPR',524,2),('NETHERLANDS','Euro','EUR',978,2),('NEW CALEDONIA','CFP Franc','XPF',953,0),('NEW ZEALAND','New Zealand Dollar','NZD',554,2),('NICARAGUA','Cordoba Oro','NIO',558,2),('NIGER','CFA Franc BCEAO','XOF',952,0),('NIGERIA','Naira','NGN',566,2),('NIUE','New Zealand Dollar','NZD',554,2),('NORFOLK ISLAND','Australian Dollar','AUD',36,2),('NORTHERN MARIANA ISLANDS','US Dollar','USD',840,2),('NORWAY','Norwegian Krone','NOK',578,2),('OMAN','Rial Omani','OMR',512,3),('PAKISTAN','Pakistan Rupee','PKR',586,2),('PALAU','US Dollar','USD',840,2),('PANAMA','Balboa','PAB',590,2),('PANAMA','US Dollar','USD',840,2),('PAPUA NEW GUINEA','Kina','PGK',598,2),('PARAGUAY','Guarani','PYG',600,0),('PERU','Nuevo Sol','PEN',604,2),('PHILIPPINES','Philippine Peso','PHP',608,2),('PITCAIRN','New Zealand Dollar','NZD',554,2),('POLAND','Zloty','PLN',985,2),('PORTUGAL','Euro','EUR',978,2),('PUERTO RICO','US Dollar','USD',840,2),('QATAR','Qatari Rial','QAR',634,2),('RÃ‰UNION','Euro','EUR',978,2),('ROMANIA','New Romanian Leu','RON',946,2),('RUSSIAN FEDERATION','Russian Ruble','RUB',643,2),('RWANDA','Rwanda Franc','RWF',646,0),('SAINT BARTHÃ‰LEMY','Euro','EUR',978,2),('SAINT HELENA, ASCENSION AND \nTRISTAN DA CUNHA','Saint Helena Pound','SHP',654,2),('SAINT KITTS AND NEVIS','East Caribbean Dollar','XCD',951,2),('SAINT LUCIA','East Caribbean Dollar','XCD',951,2),('SAINT MARTIN (FRENCH PART)','Euro','EUR',978,2),('SAINT PIERRE AND MIQUELON','Euro','EUR',978,2),('SAINT VINCENT AND THE GRENADINES','East Caribbean Dollar','XCD',951,2),('SAMOA','Tala','WST',882,2),('SAN MARINO','Euro','EUR',978,2),('SAO TOME AND PRINCIPE','Dobra','STD',678,2),('SAUDI ARABIA','Saudi Riyal','SAR',682,2),('SENEGAL','CFA Franc BCEAO','XOF',952,0),('SERBIA','Serbian Dinar','RSD',941,2),('SEYCHELLES','Seychelles Rupee','SCR',690,2),('SIERRA LEONE','Leone','SLL',694,2),('SINGAPORE','Singapore Dollar','SGD',702,2),('SINT MAARTEN (DUTCH PART)','Netherlands Antillean Guilder','ANG',532,2),('SLOVAKIA','Euro','EUR',978,2),('SLOVENIA','Euro','EUR',978,2),('SOLOMON ISLANDS','Solomon Islands Dollar','SBD',90,2),('SOMALIA','Somali Shilling','SOS',706,2),('SOUTH AFRICA','Rand','ZAR',710,2),('SOUTH SUDAN','South Sudanese Pound','SSP',728,2),('SPAIN','Euro','EUR',978,2),('SRI LANKA','Sri Lanka Rupee','LKR',144,2),('SUDAN','Sudanese Pound','SDG',938,2),('SURINAME','Surinam Dollar','SRD',968,2),('SVALBARD AND JAN MAYEN','Norwegian Krone','NOK',578,2),('SWAZILAND','Lilangeni','SZL',748,2),('SWEDEN','Swedish Krona','SEK',752,2),('SWITZERLAND','WIR Euro','CHE',947,2),('SWITZERLAND','Swiss Franc','CHF',756,2),('SWITZERLAND','WIR Franc','CHW',948,2),('SYRIAN ARAB REPUBLIC','Syrian Pound','SYP',760,2),('TAIWAN, PROVINCE OF CHINA','New Taiwan Dollar','TWD',901,2),('TAJIKISTAN','Somoni','TJS',972,2),('TANZANIA, UNITED REPUBLIC OF','Tanzanian Shilling','TZS',834,2),('THAILAND','Baht','THB',764,2),('TIMOR-LESTE','US Dollar','USD',840,2),('TOGO','CFA Franc BCEAO','XOF',952,0),('TOKELAU','New Zealand Dollar','NZD',554,2),('TONGA','Paâ€™anga','TOP',776,2),('TRINIDAD AND TOBAGO','Trinidad and Tobago Dollar','TTD',780,2),('TUNISIA','Tunisian Dinar','TND',788,3),('TURKEY','Turkish Lira','TRY',949,2),('TURKMENISTAN','Turkmenistan New Manat','TMT',934,2),('TURKS AND CAICOS ISLANDS','US Dollar','USD',840,2),('TUVALU','Australian Dollar','AUD',36,2),('UGANDA','Uganda Shilling','UGX',800,0),('UKRAINE','Hryvnia','UAH',980,2),('UNITED ARAB EMIRATES','UAE Dirham','AED',784,2),('UNITED KINGDOM','Pound Sterling','GBP',826,2),('UNITED STATES','US Dollar','USD',840,2);
/*!40000 ALTER TABLE `Currency_Aux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `Cust_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Cust_CreateTime` datetime NOT NULL,
  `Cust_Email` char(30) NOT NULL,
  `Cust_PhoneNumber` char(20) NOT NULL,
  PRIMARY KEY (`Cust_ID`),
  UNIQUE KEY `Cust_ID` (`Cust_ID`),
  UNIQUE KEY `Cust_Email` (`Cust_Email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'2014-12-23 20:19:37','edicsonm@gmail.com','6100000000'),(2,'2015-02-08 12:01:44','mearle@gmail.com','6100000000'),(3,'2015-02-08 12:31:33','hmorales@gmail.com','6100000000'),(4,'2015-02-10 09:57:52','ntorres@gmail.com','6100000000');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Industry`
--

DROP TABLE IF EXISTS `Industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Industry` (
  `Indu_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Indu_Description` varchar(50) NOT NULL,
  `Indu_Status` varchar(50) NOT NULL DEFAULT '0',
  `Indu_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Indu_ID`),
  UNIQUE KEY `Indu_ID_UNIQUE` (`Indu_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Industry`
--

LOCK TABLES `Industry` WRITE;
/*!40000 ALTER TABLE `Industry` DISABLE KEYS */;
INSERT INTO `Industry` VALUES (1,'Adult','0','2015-03-05 09:46:56'),(2,'Gaming','1','2015-03-05 08:54:18'),(3,'Travel','0','2015-03-04 23:14:48'),(4,'Pharmaceutical','0','2015-03-05 19:53:01');
/*!40000 ALTER TABLE `Industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Invoice`
--

DROP TABLE IF EXISTS `Invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Invoice` (
  `Invo_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Invo_ID`),
  UNIQUE KEY `Invo_ID` (`Invo_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Invoice`
--

LOCK TABLES `Invoice` WRITE;
/*!40000 ALTER TABLE `Invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `Invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Merchant`
--

DROP TABLE IF EXISTS `Merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Merchant` (
  `Merc_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Buty_ID` bigint(20) NOT NULL,
  `Indu_ID` bigint(20) NOT NULL,
  `Coun_NumericMerchant` int(5) NOT NULL,
  `Coun_NumericPersonalInformation` int(5) NOT NULL,
  `Merc_Name` varchar(100) NOT NULL,
  `Merc_Status` enum('0','1') NOT NULL DEFAULT '0',
  `Merc_CreateTime` datetime NOT NULL,
  `Merc_TradingName` varchar(50) NOT NULL,
  `Merc_LegalPhysicalAddress` varchar(50) NOT NULL,
  `Merc_StatementAddress` varchar(50) NOT NULL,
  `Merc_TaxFileNumber` varchar(50) NOT NULL,
  `Merc_CityBusinessInformation` varchar(50) NOT NULL,
  `Merc_PostCodeBusinessInformation` varchar(50) NOT NULL,
  `Merc_IssuedBusinessID` varchar(50) NOT NULL,
  `Merc_IssuedPersonalID` varchar(50) NOT NULL,
  `Merc_TypeAccountApplication` varchar(50) NOT NULL,
  `Merc_EstimatedAnnualSales` varchar(50) NOT NULL,
  `Merc_FirstName` varchar(50) NOT NULL,
  `Merc_LastName` varchar(50) NOT NULL,
  `Merc_PhoneNumber` varchar(50) NOT NULL,
  `Merc_FaxNumber` varchar(50) NOT NULL,
  `Merc_EmailAddress` varchar(50) NOT NULL,
  `Merc_AlternateEmailAddress` varchar(50) NOT NULL,
  `Merc_CityPersonalInformation` varchar(50) NOT NULL,
  `Merc_PostCodePersonalInformation` varchar(50) NOT NULL,
  PRIMARY KEY (`Merc_ID`),
  KEY `FK_Merchant_Country_idx` (`Coun_NumericMerchant`),
  KEY `FK_Merchant_Industry_idx` (`Indu_ID`),
  KEY `FK_Merchant_BusinessType` (`Buty_ID`),
  KEY `FK_Merchant_Country2_idx` (`Coun_NumericPersonalInformation`),
  CONSTRAINT `FK_Merchant_BusinessType` FOREIGN KEY (`Buty_ID`) REFERENCES `BusinessType` (`Buty_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Merchant_Country1` FOREIGN KEY (`Coun_NumericMerchant`) REFERENCES `Country` (`Coun_Numeric`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Merchant_Country2` FOREIGN KEY (`Coun_NumericPersonalInformation`) REFERENCES `Country` (`Coun_Numeric`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Merchant_Industry` FOREIGN KEY (`Indu_ID`) REFERENCES `Industry` (`Indu_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Merchant`
--

LOCK TABLES `Merchant` WRITE;
/*!40000 ALTER TABLE `Merchant` DISABLE KEYS */;
INSERT INTO `Merchant` VALUES (1,1,1,170,170,'Tuticket.com.co','0','2015-01-18 18:49:50','','','','','','','','','','','','','','','','','',''),(2,1,1,862,170,'Tucarro.com.ve','0','2015-01-16 21:29:55','','','','','','','','','','','','','','','','','',''),(3,1,1,862,170,'Tutickewww','0','2015-01-16 21:21:25','','','','','','','','','','','','','','','','','',''),(4,1,1,170,170,'Mercado Libre','0','2015-02-02 11:15:48','','','','','','','','','','','','','','','','','',''),(5,2,3,170,170,'Empresas Polar Colombia','0','2015-03-05 19:52:09','Empresas Polar Colombia','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19'),(6,1,1,862,862,'Empresas Polar Venezuela','0','2015-03-05 19:52:25','Empresas Polar Venezuela','Caracas','Av Ppal El Bosque','102030','Caracas','1060','8','9','10','11','12','13','14','15','16','17','18','19');
/*!40000 ALTER TABLE `Merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MerchantConfiguration`
--

DROP TABLE IF EXISTS `MerchantConfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MerchantConfiguration` (
  `Meco_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Merc_ID` bigint(20) NOT NULL,
  `Meco_UrlDeny` varchar(100) NOT NULL,
  `Meco_UrlApproved` varchar(100) NOT NULL,
  `Meco_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Meco_ID`),
  UNIQUE KEY `Come_ID_UNIQUE` (`Meco_ID`),
  UNIQUE KEY `Merc_ID_UNIQUE` (`Merc_ID`),
  KEY `FK_MerchantConfiguration_Merchant_idx` (`Merc_ID`),
  CONSTRAINT `FK_MerchantConfiguration_Merchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MerchantConfiguration`
--

LOCK TABLES `MerchantConfiguration` WRITE;
/*!40000 ALTER TABLE `MerchantConfiguration` DISABLE KEYS */;
INSERT INTO `MerchantConfiguration` VALUES (1,2,'https://merchant/Merchant/rejected','https://merchant/Merchant/approved','2015-02-06 22:04:12');
/*!40000 ALTER TABLE `MerchantConfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MerchantRestriction`
--

DROP TABLE IF EXISTS `MerchantRestriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MerchantRestriction` (
  `Mere_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Merc_ID` bigint(20) NOT NULL,
  `Mere_Value` int(5) NOT NULL DEFAULT '0',
  `Mere_Concept` enum('Amount','Transactions') NOT NULL,
  `Mere_TimeUnit` varchar(50) NOT NULL,
  `Mere_Status` enum('0','1') NOT NULL DEFAULT '0',
  `Mere_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Mere_ID`),
  UNIQUE KEY `UNIQUE_Merc_ID_Mere_Concept` (`Merc_ID`,`Mere_Concept`),
  KEY `FK_MerchantRestrictionMerchant_idx` (`Merc_ID`),
  CONSTRAINT `FK_MerchantRestrictionMerchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MerchantRestriction`
--

LOCK TABLES `MerchantRestriction` WRITE;
/*!40000 ALTER TABLE `MerchantRestriction` DISABLE KEYS */;
INSERT INTO `MerchantRestriction` VALUES (1,2,100000,'Amount','1440','0','2015-02-04 15:09:14'),(2,2,100,'Transactions','1440','0','2015-02-04 19:55:32');
/*!40000 ALTER TABLE `MerchantRestriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Plan`
--

DROP TABLE IF EXISTS `Plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Plan` (
  `Plan_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Plan_Amount` decimal(20,0) NOT NULL,
  `Plan_CreateTime` datetime NOT NULL,
  `Plan_Currency` char(3) NOT NULL,
  `Plan_Interval` enum('Day','Week','Month','Year') NOT NULL,
  `Plan_IntervalCount` int(4) NOT NULL DEFAULT '1',
  `Plan_Name` varchar(50) NOT NULL,
  `Plan_TrialPeriodDays` int(4) DEFAULT '0',
  `Plan_StatementDescriptor` varchar(200) DEFAULT NULL,
  `Plan_Status` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`Plan_ID`),
  UNIQUE KEY `Plan_id_UNIQUE` (`Plan_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Plan`
--

LOCK TABLES `Plan` WRITE;
/*!40000 ALTER TABLE `Plan` DISABLE KEYS */;
INSERT INTO `Plan` VALUES (1,12,'2015-01-05 22:15:34','USD','Week',3,'Mobile Gold Plan',0,'','0'),(2,32,'2015-01-05 22:19:55','USD','Day',12,'Mobile Gold Plan 2',0,'','0'),(3,24,'2015-01-05 22:21:22','USD','Day',1,'Mobile Gold Plan 3',0,'','0'),(4,43,'2015-01-06 15:51:31','USD','Year',36,'Mobile Gold Plan 4',100,'Statement Descriptor','0');
/*!40000 ALTER TABLE `Plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pruebas`
--

DROP TABLE IF EXISTS `Pruebas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pruebas` (
  `idPruebas` datetime NOT NULL,
  PRIMARY KEY (`idPruebas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pruebas`
--

LOCK TABLES `Pruebas` WRITE;
/*!40000 ALTER TABLE `Pruebas` DISABLE KEYS */;
INSERT INTO `Pruebas` VALUES ('2015-01-09 00:00:00');
/*!40000 ALTER TABLE `Pruebas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Refund`
--

DROP TABLE IF EXISTS `Refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Refund` (
  `Refu_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Char_ID` bigint(20) NOT NULL,
  `Refu_IDStripe` varchar(50) DEFAULT NULL,
  `Refu_Amount` decimal(20,0) NOT NULL,
  `Refu_CreateTime` datetime NOT NULL,
  `Refu_Currency` char(3) NOT NULL,
  `Refu_BalanceTransaction` char(50) DEFAULT NULL,
  `Refu_Reason` char(100) NOT NULL,
  `Refu_ReceiptNumber` char(50) DEFAULT NULL,
  `Tran_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Refu_ID`),
  UNIQUE KEY `Refu_ID` (`Refu_ID`),
  KEY `IX_FK_Refund_Charges` (`Char_ID`,`Tran_ID`),
  CONSTRAINT `FK_Refund_Charge` FOREIGN KEY (`Char_ID`, `Tran_ID`) REFERENCES `Charge` (`Char_ID`, `Tran_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Refund`
--

LOCK TABLES `Refund` WRITE;
/*!40000 ALTER TABLE `Refund` DISABLE KEYS */;
INSERT INTO `Refund` VALUES (1,36,NULL,55476,'2015-01-02 02:23:39','usd','txn_15GPmV2eZvKYlo2CUTD0iug4','asd',NULL,NULL),(2,37,NULL,55076,'2015-01-02 23:43:39','usd','txn_15GjlD2eZvKYlo2Cfb1ThhcO','sdas',NULL,NULL),(3,38,NULL,1276,'2015-01-02 23:48:12','usd','txn_15Gjpc2eZvKYlo2C5bIXrv7V','sad',NULL,NULL),(4,39,NULL,131260,'2015-01-02 23:51:08','usd','txn_15GjsT2eZvKYlo2CHOWgVldg','adasd',NULL,NULL),(5,40,NULL,4390,'2015-01-03 00:14:56','usd','txn_15GkFU2eZvKYlo2CSc9KGHee','sad',NULL,NULL),(6,40,'re_15GkRC2eZvKYlo2ChzNeOoji',687,'2015-01-03 00:27:02','usd','txn_15GkRC2eZvKYlo2CNzl6JnEy','3323',NULL,17),(7,40,'re_15HVLX2eZvKYlo2CRzCrUaqR',266,'2015-01-05 02:32:24','usd','txn_15HVLX2eZvKYlo2C3cNObyEV','asdasd',NULL,17),(8,40,'re_15HVO02eZvKYlo2CP6SYLH6R',121,'2015-01-05 02:34:51','usd','txn_15HVO02eZvKYlo2Cvi7uXJ47','qweqwe',NULL,17),(9,40,'re_15HVRM2eZvKYlo2C8AmX3LyW',387,'2015-01-05 02:38:20','usd','txn_15HVRM2eZvKYlo2Cfq1g9Uz3',' Reason',NULL,17),(10,40,'re_15HVTM2eZvKYlo2Cwvp04Vwt',400,'2015-01-05 02:40:24','usd','txn_15HVTM2eZvKYlo2CPRNrjskF','Reason 2',NULL,17),(11,66,'re_15SKoN2eZvKYlo2Cbop7uikw',200,'2015-02-04 15:30:47','usd','txn_15SKoN2eZvKYlo2CrDQ4X5EF','No definida',NULL,50),(12,65,'re_15SKrU2eZvKYlo2CFfX4cAhG',1254,'2015-02-04 15:34:00','usd','txn_15SKrU2eZvKYlo2CELaVCSOV','No definida',NULL,49),(13,109,'re_15TjxzFBMYSHQioJmn6sHCsB',526,'2015-02-08 12:34:31','usd','txn_15TjxzFBMYSHQioJcnBksviK','NA',NULL,121),(14,109,'re_15TjyaFBMYSHQioJnTBKnXhk',1234,'2015-02-08 12:35:09','usd','txn_15TjyaFBMYSHQioJDeGGLYeR','NA',NULL,121);
/*!40000 ALTER TABLE `Refund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RejectedCharges`
--

DROP TABLE IF EXISTS `RejectedCharges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RejectedCharges` (
  `Rech_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tran_ID` bigint(20) NOT NULL,
  `Rech_Amount` decimal(20,0) NOT NULL,
  `Rech_Currency` varchar(3) NOT NULL,
  `Rech_FailureCode` varchar(50) NOT NULL,
  `Rech_FailureMessage` varchar(150) NOT NULL,
  `Rech_CardNumber` varchar(50) NOT NULL,
  `Rech_Card_ExpYear` varchar(50) NOT NULL,
  `Rech_Card_ExpMonth` varchar(50) NOT NULL,
  `Rech_CardHolderName` varchar(50) NOT NULL,
  `Rech_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Rech_ID`),
  UNIQUE KEY `Rech_ID_UNIQUE` (`Rech_ID`),
  UNIQUE KEY `Tran_ID_UNIQUE` (`Tran_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RejectedCharges`
--

LOCK TABLES `RejectedCharges` WRITE;
/*!40000 ALTER TABLE `RejectedCharges` DISABLE KEYS */;
INSERT INTO `RejectedCharges` VALUES (1,99,55076,'USD','incorrect_number','Your card number is incorrect.','40128888888818812','2016','01','Edicson Morales','2015-01-08 11:03:52'),(2,100,55076,'USD','incorrect_number','Your card number is incorrect.','40000566556655563','2016','01','Edicson Morales','2015-01-08 11:20:43'),(3,101,55076,'USD','incorrect_number','Your card number is incorrect.','555555555555444422','2016','01','MIchelle Earle','2015-01-10 11:21:26'),(4,105,55076,'USD','card_declined','Your card was declined.','4000000000000341','2016','01','Hamilton Morales','2015-01-10 11:30:38'),(5,106,55076,'USD','card_declined','Your card was declined.','4000000000000341','2016','01','Emerson Morales','2015-02-04 11:33:21'),(6,107,55076,'USD','card_declined','Your card was declined.','4000000000000002','2016','01','Nelcy Torres','2015-02-04 11:34:24'),(7,108,55076,'USD','incorrect_cvc','Your card\'s security code is incorrect.','4000000000000127','2016','01','Isauro Morales','2015-02-06 11:35:03'),(8,109,55076,'USD','incorrect_cvc','Your card\'s security code is incorrect.','4000000000000127','2016','01','Veronica Castro','2015-02-08 11:38:38'),(9,110,55076,'USD','expired_card','Your card has expired.','4000000000000069','2016','01','Nelcy Torres','2015-02-08 11:39:51'),(10,111,55076,'USD','processing_error','An error occurred while processing your card. Try again in a little bit.','4000000000000119','2016','01','Edicson Morales','2015-02-08 12:00:38'),(11,117,55076,'USD','incorrect_cvc','Your card\'s security code is incorrect.','4000000000000101','2016','01','Edicson Morales','2015-02-08 12:28:18'),(12,118,55076,'USD','incorrect_cvc','Your card\'s security code is incorrect.','4000000000000101','2016','01','Edicson Morales','2015-02-08 12:28:43');
/*!40000 ALTER TABLE `RejectedCharges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscription`
--

DROP TABLE IF EXISTS `Subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subscription` (
  `Subs_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Plan_ID` bigint(20) NOT NULL,
  `Cust_ID` bigint(20) DEFAULT NULL,
  `Disc_ID` bigint(20) DEFAULT '0',
  `Subs_CancelAtPeriodEnd` tinyint(1) NOT NULL DEFAULT '1',
  `Subs_Quantity` int(4) NOT NULL,
  `Subs_Start` datetime NOT NULL,
  `Subs_Status` enum('Trialing','Active','Past_due','Canceled','Unpaid') NOT NULL,
  `Subs_ApplicationFeePercent` decimal(5,2) NOT NULL,
  `Subs_CanceledAt` datetime NOT NULL,
  `Subs_CurrentPeriodStart` datetime NOT NULL,
  `Subs_CurrentPeriodEnd` datetime NOT NULL,
  `Subs_TrialEnd` datetime NOT NULL,
  `Subs_EndedAt` datetime NOT NULL,
  `Subs_TrialStart` datetime NOT NULL,
  `Subs_TaxPercent` decimal(3,2) NOT NULL,
  `Subs_CreationTime` datetime NOT NULL,
  `Subs_StatusRow` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`Subs_ID`),
  UNIQUE KEY `Subs_ID_UNIQUE` (`Subs_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscription`
--

LOCK TABLES `Subscription` WRITE;
/*!40000 ALTER TABLE `Subscription` DISABLE KEYS */;
INSERT INTO `Subscription` VALUES (1,1,NULL,NULL,0,1,'2015-08-29 00:00:00','Active',12.00,'2015-01-10 00:00:00','2015-01-10 00:00:00','2015-01-21 00:00:00','2015-01-14 00:00:00','2015-01-13 00:00:00','2015-01-10 00:00:00',0.00,'2015-02-10 16:36:55','0'),(2,2,NULL,NULL,0,1,'2015-01-12 00:00:00','Trialing',12.00,'2015-01-17 00:00:00','2015-10-12 00:00:00','2013-08-12 00:00:00','2001-12-30 00:00:00','2015-01-12 00:00:00','2002-06-18 00:00:00',0.00,'2015-01-12 21:26:41','0'),(3,2,NULL,NULL,0,111,'2015-01-12 00:00:00','Canceled',13.00,'2015-01-12 00:00:00','2015-01-12 00:00:00','2015-01-12 00:00:00','2015-01-12 00:00:00','2015-01-12 00:00:00','2015-01-12 00:00:00',1.00,'2015-01-12 21:08:10','0');
/*!40000 ALTER TABLE `Subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transaction` (
  `Tran_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Merc_ID` bigint(20) NOT NULL COMMENT 'Your internal ID for the shop, affiliate, or merchant this order is coming from. Required for minFraud users who are resellers, payment providers, gateways and affiliate networks.',
  `Tran_IP` varchar(20) NOT NULL COMMENT 'The IP address of the customer placing the order. This should be passed as a string like â€œ44.55.66.77â€ or â€œ2001:db8::2:1â€³.',
  `Tran_MaxmindID` char(8) NOT NULL COMMENT 'This is a unique eight character string identifying this minFraud request. Please use this ID in bug reports or support requests to MaxMind so that we can easily identify a particular request.',
  `Tran_BillingAddressCity` char(20) DEFAULT NULL COMMENT 'The billing city for the customer.',
  `Tran_BillingAddressRegion` char(20) DEFAULT NULL COMMENT 'The billing region/state for the customer.',
  `Tran_BillingAddressPostal` char(20) DEFAULT NULL COMMENT 'The billing postal (zip) code for the customer.',
  `Tran_BillingAddressCountry` char(20) DEFAULT NULL COMMENT 'The billing country for the customer. This can be passed as the full country name or as an ISO 3166 code.',
  `Tran_ShippingAddress` char(100) DEFAULT NULL COMMENT 'The shipping street address.',
  `Tran_ShippingAddressCity` char(100) DEFAULT NULL COMMENT 'The shipping address city.',
  `Tran_ShippingAddressRegion` char(100) DEFAULT NULL COMMENT 'The shipping address region/state.',
  `Tran_ShippingAddressPostal` char(100) DEFAULT NULL COMMENT 'The shipping address postal (zip) code.',
  `Tran_ShippingAddressCountry` char(100) DEFAULT NULL COMMENT 'The shipping address country.',
  `Tran_Domain` char(50) DEFAULT NULL COMMENT 'The domain for the userâ€™s email address. This field should not be hashed.',
  `Tran_CustomerPhone` char(20) DEFAULT NULL COMMENT 'The customerâ€™s phone number, including area code and local exchange. This is used to verify that the customerâ€™s phone number is in the same billing location as the cardholder. Most formats are acceptable. We strip out all non-numeric characters from the input.',
  `Tran_EmailMD5` char(32) DEFAULT NULL COMMENT 'An MD5 hash of the userâ€™s email address in ASCII encoding.',
  `Tran_UsernameMD5` char(32) DEFAULT NULL COMMENT 'An MD5 hash of the userâ€™s username in ASCII encoding.',
  `Tran_Bin` char(6) DEFAULT NULL COMMENT 'The credit card BIN number. This is the first 6 digits of the credit card number. It identifies the issuing bank.',
  `Tran_BinName` char(50) DEFAULT NULL COMMENT 'The name of the bank which issued the credit card, based on the BIN number. This is used to verify that cardholder is in possession of credit card. You must set the bin field if you set this one.',
  `Tran_BinPhone` char(20) DEFAULT NULL COMMENT 'The customer service phone number listed on the back of the credit card. This is used to verify that cardholder is in possession of credit card. You must set the bin field if you set this one.',
  `Tran_UserAgent` char(200) NOT NULL COMMENT 'The User-Agent HTTP header.',
  `Tran_AcceptLanguage` char(200) DEFAULT NULL COMMENT 'The Accept-Language HTTP header.',
  `Tran_OrderAmount` decimal(20,3) NOT NULL COMMENT 'The customerâ€™s order amount.',
  `Tran_OrderCurrency` char(3) NOT NULL COMMENT 'The currency used for the customerâ€™s order as an ISO 4217 code.',
  `Tran_TxnType` enum('creditcard','debitcard','paypal','google â€“ Google checkout','other','lead â€“ lead generation','survey â€“ online survey','sitereg â€“ site registration') DEFAULT NULL COMMENT 'The transaction type. This can be set to one of the following strings:\n    creditcard\n    debitcard\n    paypal\n    google â€“ Google checkout\n    other\n    lead â€“ lead generation\n    survey â€“ online survey\n    sitereg â€“ site registration\n\nThe lead, survey, and sitereg types are used for non-purchase transactions.',
  `Tran_CVVResult` enum('Y','N') DEFAULT NULL COMMENT 'The CVV check result. This should be either â€œNâ€ or â€œYâ€. Do not pass the CVV code itself.',
  `Tran_RequestedType` enum('standard','premium') DEFAULT NULL,
  `Tran_RiskScore` decimal(5,2) DEFAULT NULL,
  `Tran_CountryMatch` enum('Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. It indicates whether the country of the IP address matched the billing address country. A mismatch indicates a higher risk of fraud. If no country input was provided, this field will be left blank.',
  `Tran_HighRiskCountry` enum('Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. The field will be set to â€œYesâ€ if either the billing country or the IP country are associated with a high risk of fraud; otherwise, it will be set to â€œNoâ€.',
  `Tran_Distance` bigint(20) DEFAULT NULL COMMENT 'The distance from the IP address location to the billing location, in kilometers. A higher distance indicates a higher risk of fraud.',
  `Tran_IPAccuracyRadius` bigint(20) DEFAULT NULL COMMENT 'The radius in kilometers around the specified location where the IP address is likely to be.',
  `Tran_IPCity` char(20) DEFAULT NULL,
  `Tran_IPRegion` char(2) DEFAULT NULL COMMENT 'A two character ISO-3166-2 or FIPS 10-4 code for the state/region associated with the IP address.\n\nFor the US and Canada, we return an ISO-3166-2 code. In addition to the standard ISO codes, we may also return one of the following:\n\n    AA â€“ Armed Forces America\n    AE â€“ Armed Forces Europe\n    AP â€“ Armed Forces Pacific\n\nWe return a FIPS code for all other countries.\n\nWe provide a CSV file which maps our region codes to region names. The columns are ISO country code, region code (FIPS or ISO), and the region name.',
  `Tran_IPRegionName` char(100) DEFAULT NULL COMMENT 'The region name associated with the IP address.',
  `Tran_IPPostalCode` char(20) DEFAULT NULL COMMENT 'The postal code associated with the IP address. These are available for some IP addresses in Australia, Canada, France, Germany, Italy, Spain, Switzerland, United Kingdom, and the US. We return the first 3 characters for Canadian postal codes. We return the the first 2-4 characters (outward code) for postal codes in the United Kingdom.',
  `Tran_IPMetroCode` bigint(20) DEFAULT NULL,
  `Tran_IPAreaCode` char(50) DEFAULT NULL COMMENT 'The telephone area code associated with the IP address. These are only available for IP addresses in the US. This output is deprecated, and may not reflect newer area codes.',
  `Tran_CountryCode` char(2) DEFAULT NULL COMMENT 'A two-character ISO 3166-1 country code for the country associated with the IP address. In addition to the standard codes, we may also return one of the following:\n\n    A1 â€“ an anonymous proxy.\n    A2 â€“ a satellite provider.\n    EU â€“ an IP in a block used by multiple European countries.\n    AP â€“ an IP in a block used by multiple Asia/Pacific region countries.\n\nThe US country code is returned for IP addresses associated with overseas US military bases.',
  `Tran_IPCountryName` char(100) DEFAULT NULL,
  `Tran_IPContinentCode` char(2) DEFAULT NULL COMMENT 'A two-character code for the continent associated with the IP address. The possible codes are:\n\n    AF â€“ Africa\n    AS â€“ Asia\n    EU â€“ Europe\n    NA â€“ North America\n    OC â€“ Oceania\n    SA â€“ South America',
  `Tran_IPLatitude` bigint(20) DEFAULT NULL,
  `Tran_IPLongitude` bigint(20) DEFAULT NULL,
  `Tran_IPTimeZone` char(50) DEFAULT NULL COMMENT 'The time zone associated with the IP address. Time zone names are taken from the IANA time zone database. See the list of possible values.',
  `Tran_IPAsnum` char(50) DEFAULT NULL COMMENT 'The autonomous system number associated with the IP address.',
  `Tran_IPUserType` enum('business','cafe','cellular','college','contentDeliveryNetwork','government','hosting','library','military','residential','router','school','searchEngineSpider','traveler') DEFAULT NULL COMMENT 'The user type associated with the IP address. This will be one of the following values.\n\n    business\n    cafe\n    cellular\n    college\n    contentDeliveryNetwork\n    government\n    hosting\n    library\n    military\n    residential\n    router\n    school\n    searchEngineSpider\n    traveler',
  `Tran_IPNetSpeedCell` enum('Dialup','Cable/DSL','Corporate','Cellular') DEFAULT NULL,
  `Tran_IPDomain` char(50) DEFAULT NULL COMMENT 'The second level domain associated with the IP address. This will be something like â€œexample.comâ€ or â€œexample.co.ukâ€, not â€œfoo.example.comâ€.',
  `Tran_IPIsp` char(20) DEFAULT NULL COMMENT 'The name of the ISP associated with the IP address.',
  `Tran_IPOrg` char(50) DEFAULT NULL COMMENT 'The name of the organization associated with the IP address.',
  `Tran_IPCityConf` bigint(20) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the city is correct.',
  `Tran_IPRegionConf` bigint(3) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the region is correct.',
  `Tran_IPPostalConf` bigint(3) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the postal code is correct.',
  `Tran_IPCountryConf` bigint(3) DEFAULT NULL COMMENT 'A value from 0-100 representing our confidence that the country is correct.',
  `Tran_AnonymousProxy` enum('Yes','No') DEFAULT NULL,
  `Tran_ProxyScore` decimal(2,2) DEFAULT NULL,
  `Tran_IPCorporateProxy` enum('Yes','No') DEFAULT NULL,
  `Tran_FreeMail` enum('','Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. It indicates whether the userâ€™s email address is from a free email provider. Note that this will be set to â€œNoâ€ if no domain is passed in the input.',
  `Tran_CarderEmail` enum('','Yes','No') DEFAULT NULL COMMENT 'This field can be either Yes or No. It indicates whether the userâ€™s email address is in a database of known high risk emails.',
  `Tran_BinMatch` enum('','Yes','No','NotFound','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, NotFound, or NA It indicates whether the credit cardâ€™s bank is in the same country as the userâ€™s billing address.\n\nThe NotFound response means that we could not find a match for the provided bin input field. The NA response means that you did not provide a bin in the input.',
  `Tran_BinCountry` char(2) DEFAULT NULL COMMENT 'The two letter ISO 3166 country code for the bank. This is available for approximately 99% of all BIN numbers. This field is returned for premium service level queries. For standard service level queries the field is only returned if the binMatch is Yes.',
  `Tran_BinNameMatch` enum('Yes','No','NotFound','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, NotFound, or NA It indicates whether the credit cardâ€™s bank name matches the binName input field.\n\nThe NotFound response means that we could not find a match for the provided bin input field. The NA response means that you did not provide a binName in the input.',
  `Tran_BinPhoneMatch` enum('Yes','No','NotFound','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, NotFound, or NA It indicates whether the credit cardâ€™s bank name matches the binPhone input field.\n\nThe NotFound response means that we could not find a match for the provided bin input field. The NA response means that you did not provide a binPhone in the input.',
  `Tran_Prepaid` enum('','Yes','No') DEFAULT NULL,
  `Tran_CustPhoneInBillingLoc` enum('','Yes','No','NotFound') DEFAULT NULL COMMENT 'This field can be either Yes, No, or NotFound. This indicates whether the customerâ€™s phone number is in the billing addressâ€™s postal code.\n\nThe No response means that phone number may be in a different area, or it is not listed in our database. The NotFound response indicates that the phone number prefix is not in our database.\n\nCurrently we only return information about US phone numbers. For all other countries, this field will be left blank.',
  `Tran_ShipForward` enum('Yes','No','NA') DEFAULT NULL COMMENT 'This field can be either Yes, No, or NA. This indicates whether the customerâ€™s shipping address is in a database of known high risk shipping addresses. The NA response indicates that we could not parse the shipping address.',
  `Tran_CityPostalMatch` enum('','Yes','No') DEFAULT NULL,
  `Tran_ShipCityPostalMatch` enum('','Yes','No') DEFAULT NULL,
  `Tran_MinfraudVersion` char(20) DEFAULT NULL COMMENT 'This returns the API version that was used for this request.',
  `Tran_ServiceLevel` enum('','standard','premium') DEFAULT NULL COMMENT 'This returns the service level that was used for this request. This can be either standard or premium.',
  `Tran_Error` enum('','INVALID_LICENSE_KEY','IP_REQUIRED','IP_NOT_FOUND','MAX_REQUESTS_REACHED','LICENSE_REQUIRED','COUNTRY_NOT_FOUND','CITY_NOT_FOUND','CITY_REQUIRED','INVALID_EMAIL_MD5','POSTAL_CODE_REQUIRED','POSTAL_CODE_NOT_FOUND') DEFAULT NULL COMMENT 'If there was an error or warning with this request, this field contains an error code string.\n\nThe possible error codes are:\n\n    INVALID_LICENSE_KEY\n    IP_REQUIRED\n    IP_NOT_FOUND â€“ this error will be returned if the IP address is not valid, if it is not public, or if it is not in our GeoIP database.\n    MAX_REQUESTS_REACHED â€“ this is returned when your account is out of queries.\n    LICENSE_REQUIRED â€“ this is returned if you do not provide a license key at all.\n\nThe possible warning codes are:\n\n    COUNTRY_NOT_FOUND\n    CITY_NOT_FOUND\n    CITY_REQUIRED\n    INVALID_EMAIL_MD5\n    POSTAL_CODE_REQUIRED\n    POSTAL_CODE_NOT_FOUND\n',
  `Tran_ProcessTime` varchar(20) DEFAULT NULL,
  `Tran_CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Tran_ID`),
  UNIQUE KEY `Tran_ID` (`Tran_ID`),
  UNIQUE KEY `Tran_MaxmindID` (`Tran_MaxmindID`),
  KEY `FK_Transaction_Merchant_idx` (`Merc_ID`),
  CONSTRAINT `FK_Transaction_Merchant` FOREIGN KEY (`Merc_ID`) REFERENCES `Merchant` (`Merc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
INSERT INTO `Transaction` VALUES (1,2,'27.32.44.176','8C5NWSU2','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,NULL,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','7084 ms.','2015-01-21 18:41:12'),(2,2,'27.32.44.176','6CU4JN7O','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,NULL,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1617 ms.','2015-01-21 19:18:00'),(3,2,'27.32.44.176','Z554FR53','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1542 ms.','2015-01-20 19:18:54'),(4,2,'27.32.44.176','PX02Y4DL','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1513 ms.','2015-01-21 20:38:27'),(5,2,'27.32.44.176','64CEL08V','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1519 ms.','2015-01-21 18:41:12'),(6,2,'27.32.44.176','3H3IQMIC','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1598 ms.','2015-01-20 19:18:54'),(7,2,'27.32.44.176','HG48UZDL','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1574 ms.','2015-01-21 20:38:33'),(8,2,'27.32.44.176','2MCG93IM','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1679 ms.','2015-01-21 19:18:00'),(9,2,'27.32.44.176','KCRUM88K','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1367 ms.','2015-01-20 19:18:54'),(10,2,'27.32.44.176','ZXLSCLYG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1516 ms.','2015-01-21 19:18:00'),(11,2,'27.32.44.176','1BQ7K02U','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1613 ms.','2015-01-21 18:41:12'),(12,2,'27.32.44.176','JTJQCB9L','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1646 ms.','2015-01-20 19:18:54'),(13,2,'27.32.44.176','0C5XAFF6','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1214 ms.','2015-01-21 18:41:12'),(14,2,'27.32.44.176','W13U7IJ7','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1221 ms.','2015-01-18 19:19:13'),(15,2,'27.32.44.176','1V025050','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','3983 ms.','2015-01-20 19:18:54'),(16,2,'27.32.44.176','7MDM2GMO','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2765 ms.','2015-01-21 19:18:00'),(17,2,'27.32.44.176','KMO1TM8M','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.33,'Yes','No',11,1,'Rockdale','02','New South Wales','47',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,93,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1623 ms.','2015-01-21 18:41:12'),(18,2,'27.32.44.176','3RN99MIG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','290 ms.','2015-01-20 19:18:54'),(19,2,'27.32.44.176','J23G239Q','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','622 ms.','2015-01-21 18:41:12'),(20,2,'27.32.44.176','QK3IROGE','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','307 ms.','2015-01-21 19:18:00'),(21,2,'27.32.44.176','N45JWPQY','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','627 ms.','2015-01-18 19:19:13'),(22,2,'27.32.44.176','5ACCWCHG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','330 ms.','2015-01-21 19:18:00'),(23,2,'27.32.44.176','ZBV4H8SA','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'BSD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','689 ms.','2015-01-21 18:41:12'),(24,2,'27.32.44.176','7EHO7P4I','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'BSD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','421 ms.','2015-01-20 19:18:54'),(25,2,'27.32.44.176','HDM0F9RP','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.61,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','706 ms.','2015-01-21 18:41:12'),(26,2,'27.32.44.176','5669NEKK','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','280 ms.','2015-01-21 20:38:24'),(27,2,'27.32.44.176','OCEXSY0W','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',150.000,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','281 ms.','2015-01-20 19:18:54'),(28,2,'27.32.44.176','SSWQJ4J3','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/8.0.2 Safari/600.2.5','en-us',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','289 ms.','2015-01-18 19:19:13'),(29,2,'27.32.44.176','3VTD2WJZ','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/8.0.2 Safari/600.2.5','en-us',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','279 ms.','2015-01-21 18:41:12'),(30,2,'27.32.44.176','QHB3RQNS','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','269 ms.','2015-01-20 19:18:54'),(31,2,'27.32.44.176','JPBM02CW','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','270 ms.','2015-01-21 18:41:12'),(32,2,'27.32.44.176','5QVDJ68H','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','271 ms.','2015-01-21 19:18:00'),(33,2,'27.32.44.176','ER3ZALW2','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','277 ms.','2015-01-20 19:18:54'),(34,2,'27.32.44.176','QLALIT8A','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','253 ms.','2015-01-21 19:18:00'),(35,2,'27.32.44.176','KO0DH66Z','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','275 ms.','2015-01-18 19:19:13'),(36,2,'27.32.44.176','NCMDV07B','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36','en-US,en;q=0.8',23.200,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','295 ms.','2015-01-20 19:18:54'),(37,2,'27.32.44.176','C26QSXYN','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/8.0.2 Safari/600.2.5','en-us',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','283 ms.','2015-01-21 18:41:12'),(38,2,'27.32.44.176','Z6UMLX0G','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','43',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',39,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','272 ms.','2015-01-21 19:18:00'),(39,2,'27.32.44.176','4QO7VW22','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',530.960,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1519 ms.','2015-01-20 19:18:54'),(40,2,'27.32.44.176','F25J65PG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',530.960,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1195 ms.','2015-01-21 19:18:00'),(41,2,'27.32.44.176','IVDZQW0U','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',530.960,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1240 ms.','2015-01-21 18:41:12'),(42,2,'27.32.44.176','4DAR2K8H','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',532.960,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1445 ms.','2015-01-18 19:19:13'),(43,2,'27.32.44.176','NF1XOJ21','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','en-US,en;q=0.5',532.960,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1632 ms.','2015-01-21 18:41:12'),(44,2,'27.32.44.176','H6AA686B','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0','es-ar,es;q=0.8,en-us;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.30,'Yes','No',10,2,'Sydney','02','New South Wales','41',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',37,99,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2303 ms.','2015-01-21 20:38:13'),(45,2,'27.32.44.176','LJ86EMO0','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.48,'Yes','No',11,4,'Rockdale','02','New South Wales','36',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',26,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1426 ms.','2015-01-23 17:22:58'),(46,2,'27.32.44.176','9S75HC5A','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.48,'Yes','No',11,4,'Rockdale','02','New South Wales','36',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',26,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1695 ms.','2015-01-23 18:12:00'),(47,2,'27.32.44.176','YSOML0BF','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.48,'Yes','No',11,4,'Rockdale','02','New South Wales','36',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',26,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2200 ms.','2015-01-26 10:40:49'),(48,2,'27.32.44.176','5PGT2KHU','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',5576.000,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,5,'Rockdale','02','New South Wales','34',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','6714 ms.','2015-02-04 15:04:48'),(49,2,'27.32.44.176','5ELJ3895','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',1251.000,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,5,'Rockdale','02','New South Wales','34',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1229 ms.','2015-02-04 15:09:32'),(50,2,'27.32.44.176','PPFQDEZ8','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',34.000,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,5,'Rockdale','02','New South Wales','34',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1244 ms.','2015-02-04 15:10:27'),(51,2,'27.32.44.176','X8Q9GM9O','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,5,'Rockdale','02','New South Wales','34',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1395 ms.','2015-02-04 16:30:20'),(52,2,'27.32.44.176','GBJ19Y0I','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',123.000,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,5,'Rockdale','02','New South Wales','34',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2296 ms.','2015-02-04 18:31:15'),(53,2,'27.32.44.176','AWZC6P6T','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',123.000,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,5,'Rockdale','02','New South Wales','34',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1299 ms.','2015-02-04 18:47:21'),(54,2,'27.32.44.176','DIRI6XF2','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,5,'Rockdale','02','New South Wales','34',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','3538 ms.','2015-02-04 18:53:48'),(55,2,'27.32.44.176','3XVSNJ7H','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,5,'Rockdale','02','New South Wales','34',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2019 ms.','2015-02-04 19:03:22'),(56,2,'27.32.44.176','0PV1SY7R','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,5,'Rockdale','02','New South Wales','34',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1527 ms.','2015-02-04 19:11:55'),(57,2,'27.32.44.176','UWTM1AD1','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,5,'Rockdale','02','New South Wales','34',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1879 ms.','2015-02-04 19:51:44'),(58,2,'27.32.44.176','4FRWKXS8','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,5,'Rockdale','02','New South Wales','34',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2901 ms.','2015-02-04 19:52:23'),(59,2,'27.32.44.176','571DU4Q7','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,5,'Rockdale','02','New South Wales','34',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1513 ms.','2015-02-04 19:55:55'),(60,2,'27.32.44.176','8YTU7HNM','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,5,'Rockdale','02','New South Wales','34',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1681 ms.','2015-02-04 20:02:21'),(61,2,'27.32.44.176','Z1248JP9','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,5,'Rockdale','02','New South Wales','34',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',27,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1244 ms.','2015-02-04 20:05:26'),(62,2,'27.32.44.176','TBZN9JEH','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1302 ms.','2015-02-05 11:16:32'),(63,2,'27.32.44.176','N8KUWGWK','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2198 ms.','2015-02-05 11:23:35'),(64,2,'27.32.44.176','NILNBEZJ','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1568 ms.','2015-02-05 11:36:29'),(65,2,'27.32.44.176','11RLJQ62','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1955 ms.','2015-02-05 11:48:38'),(66,2,'27.32.44.176','VQL073H1','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1427 ms.','2015-02-05 11:54:23'),(67,2,'27.32.44.176','XQLF17GL','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1436 ms.','2015-02-05 12:02:29'),(68,2,'27.32.44.176','R3NB4R42','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1495 ms.','2015-02-05 12:27:56'),(69,2,'27.32.44.176','ARD4V78X','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1309 ms.','2015-02-05 12:30:45'),(70,2,'27.32.44.176','K8O5QRZ8','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2349 ms.','2015-02-05 12:39:15'),(71,2,'27.32.44.176','PK793UV4','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','11847 ms.','2015-02-05 12:47:42'),(72,2,'27.32.44.176','P1K95DKD','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','4469 ms.','2015-02-05 17:18:12'),(73,2,'27.32.44.176','FQVDMXXC','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1603 ms.','2015-02-05 17:20:59'),(74,2,'27.32.44.176','UO8BWLM8','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1329 ms.','2015-02-05 17:25:23'),(75,2,'27.32.44.176','GNM4NHOW','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1615 ms.','2015-02-05 17:27:12'),(76,2,'27.32.44.176','8ANJ3CC4','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','3961 ms.','2015-02-05 17:29:55'),(77,2,'27.32.44.176','1QMQH0BT','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2265 ms.','2015-02-05 17:32:30'),(78,2,'27.32.44.176','TB5A4XES','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1504 ms.','2015-02-05 17:37:04'),(79,2,'27.32.44.176','MXONGWLB','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1010 ms.','2015-02-05 17:41:14'),(80,2,'27.32.44.176','0WINE2E7','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','6224 ms.','2015-02-05 17:44:47'),(81,2,'27.32.44.176','UE8YKVAD','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1299 ms.','2015-02-05 17:50:58'),(82,2,'27.32.44.176','9Q1ROQ19','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',23.540,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','4599 ms.','2015-02-05 18:07:16'),(83,2,'27.32.44.176','JGN0329I','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',56.820,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','6582 ms.','2015-02-05 18:08:02'),(84,2,'27.32.44.176','PN9L0EQF','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',56.820,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','7799 ms.','2015-02-05 18:11:32'),(85,2,'27.32.44.176','5AXW991W','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1997 ms.','2015-02-05 18:18:48'),(86,2,'27.32.44.176','Z1PWOFMR','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',78.560,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2374 ms.','2015-02-05 18:21:09'),(87,2,'27.32.44.176','A0GI32OQ','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','3299 ms.','2015-02-05 18:25:09'),(88,2,'27.32.44.176','QK96R2RP','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1787 ms.','2015-02-06 22:22:37'),(89,2,'27.32.44.176','O2J1LTX7','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1595 ms.','2015-02-08 07:32:21'),(90,2,'27.32.44.176','L5WCYZSH','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1595 ms.','2015-02-08 07:46:26'),(91,2,'27.32.44.176','VDVU0I8U','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1743 ms.','2015-02-08 07:52:07'),(92,2,'27.32.44.176','6WYUFWKX','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1341 ms.','2015-02-08 07:58:19'),(93,2,'27.32.44.176','I5VDT5IC','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1495 ms.','2015-02-08 08:00:46'),(94,2,'27.32.44.176','MEQ7SMXW','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1401 ms.','2015-02-08 08:01:36'),(95,2,'27.32.44.176','7PTZ40VR','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1374 ms.','2015-02-08 08:02:28'),(96,2,'27.32.44.176','0VLZYU18','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2024 ms.','2015-02-08 10:51:56'),(97,2,'27.32.44.176','EL6ZWPZO','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1673 ms.','2015-02-08 10:58:39'),(98,2,'27.32.44.176','RB0P9S81','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1445 ms.','2015-02-08 10:59:02'),(99,2,'27.32.44.176','SDV1WH8Y','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1726 ms.','2015-02-08 11:03:51'),(100,2,'27.32.44.176','F5BA8MB9','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,7.12,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1403 ms.','2015-02-08 11:20:42'),(101,2,'27.32.44.176','1YI07Z8W','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1434 ms.','2015-02-08 11:21:25'),(102,2,'27.32.44.176','2486HDDD','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1495 ms.','2015-02-08 11:22:33'),(103,2,'27.32.44.176','XBSI3CUB','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1375 ms.','2015-02-08 11:25:18'),(104,2,'27.32.44.176','4A9X994N','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1405 ms.','2015-02-08 11:28:39'),(105,2,'27.32.44.176','78LJA828','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1369 ms.','2015-02-08 11:30:37'),(106,2,'27.32.44.176','E6TYZYR5','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1516 ms.','2015-02-08 11:33:20'),(107,2,'27.32.44.176','7SGUIR4E','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1379 ms.','2015-02-08 11:34:23'),(108,2,'27.32.44.176','9WOKPOLK','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1384 ms.','2015-02-08 11:35:02'),(109,2,'27.32.44.176','9Q9YR5AV','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1491 ms.','2015-02-08 11:38:37'),(110,2,'27.32.44.176','JJZQR4CX','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1421 ms.','2015-02-08 11:39:50'),(111,2,'27.32.44.176','GM82HR9P','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1379 ms.','2015-02-08 12:00:36'),(112,2,'27.32.44.176','WDCVCNEG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1401 ms.','2015-02-08 12:01:43'),(113,2,'27.32.44.176','6ASJACKE','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1359 ms.','2015-02-08 12:03:53'),(114,2,'27.32.44.176','QUVV10P3','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1424 ms.','2015-02-08 12:08:15'),(115,2,'27.32.44.176','T3Y9MI31','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1674 ms.','2015-02-08 12:13:40'),(116,2,'27.32.44.176','0R402ESG','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1352 ms.','2015-02-08 12:19:01'),(117,2,'27.32.44.176','95VLVJZ8','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1586 ms.','2015-02-08 12:28:17'),(118,2,'27.32.44.176','6GOB4584','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1468 ms.','2015-02-08 12:28:42'),(119,2,'27.32.44.176','A05FBF6U','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1362 ms.','2015-02-08 12:29:19'),(120,2,'27.32.44.176','YZ4YEDSM','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1408 ms.','2015-02-08 12:30:34'),(121,2,'27.32.44.176','9UURRTSM','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','2015 ms.','2015-02-08 12:31:32'),(122,2,'27.32.44.176','YU85D2ZI','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','1562 ms.','2015-02-10 09:53:41'),(123,2,'27.32.44.176','835RWKL2','Sydney','NSW','2016','AU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-us,es-ar;q=0.8,es;q=0.5,en;q=0.3',550.760,'USD',NULL,NULL,NULL,0.47,'Yes','No',11,4,'Rockdale','02','New South Wales','37',0,'0','AU','Australia','OC',151,NULL,'Australia/Sydney','AS7545 TPG Telecom Limited','residential','Cable/DSL','tpgi.com.au','TPG Internet','TPG Internet',31,90,NULL,99,'No',0.00,'No','No',NULL,'No','','NA','NA','','',NULL,'','','1.3','standard','','11026 ms.','2015-02-10 09:57:51');
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechas`
--

DROP TABLE IF EXISTS `fechas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fechas` (
  `inicial` varchar(45) DEFAULT NULL,
  `final` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechas`
--

LOCK TABLES `fechas` WRITE;
/*!40000 ALTER TABLE `fechas` DISABLE KEYS */;
INSERT INTO `fechas` VALUES ('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2015-02-11','2015-02-18'),('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2015-01-01','2015-02-18'),('2014-12-04','2015-02-18'),('2015-01-01','2015-02-18'),('2015-02-11','2015-02-18'),('2015-01-01','2015-02-18'),('2015-02-11','2015-02-18'),('2015-01-01','2015-02-18');
/*!40000 ALTER TABLE `fechas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'IPG'
--

--
-- Dumping routines for database 'IPG'
--
/*!50003 DROP PROCEDURE IF EXISTS `PROC_CHANGE_CERTIFICATE_STATUS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_CHANGE_CERTIFICATE_STATUS`(
`P_Cert_Status`	enum('0','1'),
INOUT `P_Cert_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`Certificate`
	SET Cert_Status = P_Cert_Status
	WHERE Cert_ID = P_Cert_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_DELETE_COUNTRY_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_DELETE_COUNTRY_RESTRICTION`(
INOUT `P_Core_ID` bigint(20))
BEGIN
	
    UPDATE `IPG`.`CountryRestriction`
		SET
		`Core_Status` = '1'
		WHERE `Core_ID` = P_Core_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_DELETE_CREDITCARD_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_DELETE_CREDITCARD_RESTRICTION`(
INOUT `P_Ccre_ID` bigint(20))
BEGIN
	
    UPDATE `IPG`.`CreditCardRestriction`
		SET
		`Ccre_Status` = '1'
		WHERE `Ccre_ID` = P_Ccre_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_DELETE_MERCHANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_DELETE_MERCHANT`(
INOUT `P_Merc_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`Merchant`
	SET `Merc_Status` = '1'
	WHERE `Merc_ID` = P_Merc_ID;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_DELETE_MERCHANT_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_DELETE_MERCHANT_RESTRICTION`(
INOUT `P_Mere_ID` bigint(20))
BEGIN
	
    UPDATE `IPG`.`MerchantRestriction`
		SET
		`Mere_Status` = '1'
		WHERE `Mere_ID` = P_Mere_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_DELETE_PLAN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_DELETE_PLAN`(
INOUT `P_Plan_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`Plan`
		SET
		`Plan_Status` = '1'
		WHERE `Plan_ID` = P_Plan_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_DELETE_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_DELETE_SUBSCRIPTION`(
INOUT `P_Subs_ID`	bigint(20))
BEGIN	
    UPDATE `IPG`.`Subscription`
	SET
	`Subs_StatusRow` = '1'	
	WHERE `Subs_ID` = P_Subs_ID;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_BUSINESSTYPE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_BUSINESSTYPE`(
`P_Buty_Description` varchar(50),
INOUT `P_Buty_ID`	bigint(20))
BEGIN
	INSERT INTO `IPG`.`BusinessType`
	(`Buty_Description`,
    `Buty_CreateTime`)
	VALUES
	(P_Buty_Description,
    NOW());
	SET P_Buty_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_CARD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_CARD`(
`P_Cust_ID`	bigint(20),
`P_Card_IDStripe`	char(50),
`P_Card_Brand`	char(20),
`P_Card_ExpMonth`	int(2),
`P_Card_ExpYear`	int(2),
`P_Card_FingerPrint`	char(20),
`P_Card_Funding`	char(20),
`P_Card_Number` char(50),
`P_Card_Name` char(50),
`P_Card_Last4`	int(4),
`P_Card_AddressCity`	char(50),
`P_Card_AddressCountry`	char(50),
`P_Card_AddressState`	char(50),
`P_Card_AddressLine1`	char(50),
`P_Card_AddressLine2`	char(50),
`P_Card_AddressZip`	int(10),
`P_Card_Country`	char(3),
`P_Card_BlackListed`	enum('','Yes','No'),
`P_Card_BlackListedReason`	varchar(100),
`P_Card_BlackListedCreateTime`	datetime,
INOUT `P_Card_ID`	bigint(20))
BEGIN
	
    SET P_Card_ID = (SELECT `Card_Id`  FROM `IPG`.`Card` WHERE `Card_Number` = P_Card_Number);
    IF (P_Card_ID IS NULL) THEN 
    
		INSERT INTO `IPG`.`Card`
			(`Cust_ID`,
			`Card_IDStripe`,
			`Card_Brand`,
			`Card_ExpMonth`,
			`Card_ExpYear`,
			`Card_FingerPrint`,
			`Card_Funding`,
            `Card_Number`,
            `Card_Name`,
			`Card_Last4`,
			`Card_AddressCity`,
			`Card_AddressCountry`,
			`Card_AddressState`,
			`Card_AddressLine1`,
			`Card_AddressLine2`,
			`Card_AddressZip`,
			`Card_Country`,
			`Card_BlackListed`,
			`Card_BlackListedReason`,
			`Card_BlackListedCreateTime`)
		VALUES
			(P_Cust_ID,
			P_Card_IDStripe,
			P_Card_Brand,
			P_Card_ExpMonth,
			P_Card_ExpYear,
			P_Card_FingerPrint,
			P_Card_Funding,
            P_Card_Number,
            P_Card_Name,
			P_Card_Last4,
			P_Card_AddressCity,
			P_Card_AddressCountry,
			P_Card_AddressState,
			P_Card_AddressLine1,
			P_Card_AddressLine2,
			P_Card_AddressZip,
			P_Card_Country,
			P_Card_BlackListed,
			P_Card_BlackListedReason,
			P_Card_BlackListedCreateTime);

		SET P_Card_ID = (SELECT LAST_INSERT_ID());
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_CERTIFICATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_CERTIFICATE`(
`P_Merc_ID`	bigint(20),
`P_Cert_Name` varchar(50),
`P_Cert_BBKeyStore`	blob,
`P_Cert_MerchantKeyStore` blob,
`P_Cert_Log`	varchar(2500),
`P_Cert_BBKeyStoreInformation`	varchar(500),
`P_Cert_MerchantKeyStoreInformation`	varchar(500),
INOUT `P_Cert_ID` bigint(20))
BEGIN
	INSERT INTO `IPG`.`Certificate`
	(`Merc_ID`,
	`Cert_Name`,
	`Cert_CreateTime`,
	`Cert_ExpirationTime`,
	`Cert_BBKeyStore`,
	`Cert_MerchantKeyStore`,
    `Cert_Log`,
    `Cert_BBKeyStoreInformation`,
    `Cert_MerchantKeyStoreInformation`)
	VALUES
	(P_Merc_ID,
	P_Cert_Name,
	now(),
	now() + INTERVAL 365 DAY,
	P_Cert_BBKeyStore,
	P_Cert_MerchantKeyStore,
    P_Cert_Log,
    P_Cert_BBKeyStoreInformation,
    P_Cert_MerchantKeyStoreInformation);
	SET P_Cert_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_CHARGE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_CHARGE`(
`P_Tran_ID`	bigint(20),
`P_Card_ID`	bigint(20),
`P_Char_IDStripe` varchar(50),
`P_Invo_ID`	bigint(20),
`P_Addr_ID`	bigint(20),
`P_Char_Amount`	decimal(20,3),
`P_Char_Captured`	tinyint(1),
`P_Char_CreateTime`	datetime,
`P_Char_Currency`	char(3),
`P_Char_Paid`	tinyint(1),
`P_Char_Refunded`	tinyint(1),
`P_Char_FailureCode`	char(50),
`P_Char_FailureMessage`	char(150),
`P_Char_ReceiptEmail`	char(50),
`P_Char_ReceiptNumber`	char(50),
`P_Char_ProcessTime` char(20),
INOUT `P_Char_ID`	bigint(20))
BEGIN
	INSERT INTO `IPG`.`Charge`
		(`Tran_ID`,
		`Card_ID`,
		`Invo_ID`,
		`Addr_ID`,
        `Char_IDStripe`,
		`Char_Amount`,
		`Char_Captured`,
		`Char_CreateTime`,
		`Char_Currency`,
		`Char_Paid`,
		`Char_Refunded`,
		`Char_FailureCode`,
		`Char_FailureMessage`,
		`Char_ReceiptEmail`,
		`Char_ReceiptNumber`,
        `Char_ProcessTime`)
		VALUES
		(P_Tran_ID,
		P_Card_ID,
		P_Invo_ID,
		P_Addr_ID,
        P_Char_IDStripe,
		P_Char_Amount,
		P_Char_Captured,
		now(),
		P_Char_Currency,
		P_Char_Paid,
		P_Char_Refunded,
		P_Char_FailureCode,
		P_Char_FailureMessage,
		P_Char_ReceiptEmail,
		P_Char_ReceiptNumber,
        P_Char_ProcessTime);

	SET P_Char_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_COUNTRYBLOCKLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_COUNTRYBLOCKLIST`(
`P_Coun_Numeric`	int(5),
`P_Cobl_Transaction`	tinyint(1),
`P_Cobl_MerchantServerLocation`	tinyint(1),
`P_Cobl_MerchantRegistrationLocation`	tinyint(1),
`P_Cobl_CreditCardIssueLocation`	tinyint(1),
`P_Cobl_CreditCardHolderLocation`	tinyint(1),
INOUT `P_Cobl_ID` bigint(20))
BEGIN
	INSERT INTO `IPG`.`CountryBlockList`
		(`Coun_Numeric`,
		`Cobl_Transaction`,
		`Cobl_MerchantServerLocation`,
		`Cobl_MerchantRegistrationLocation`,
		`Cobl_CreditCardIssueLocation`,
		`Cobl_CreditCardHolderLocation`)
	VALUES
		(P_Coun_Numeric,
		P_Cobl_Transaction,
		P_Cobl_MerchantServerLocation,
		P_Cobl_MerchantRegistrationLocation,
		P_Cobl_CreditCardIssueLocation,
		P_Cobl_CreditCardHolderLocation);    
        SET P_Cobl_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_COUNTRY_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_COUNTRY_RESTRICTION`(
`P_Coun_Numeric` int(5),
`P_Core_Value` int(5),
`P_Core_Concept` varchar(50),
`P_Core_TimeUnit` varchar(50),
INOUT `P_Core_ID` bigint(20))
BEGIN

	INSERT INTO `IPG`.`CountryRestriction`
		(`Coun_Numeric`,
		`Core_Value`,
		`Core_Concept`,
		`Core_TimeUnit`,
        `Core_CreateTime`)
		VALUES
		(P_Coun_Numeric,
		P_Core_Value,
		P_Core_Concept,
		P_Core_TimeUnit,
		now());
		SET P_Core_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_CREDITCARD_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_CREDITCARD_RESTRICTION`(
`P_Ccre_Value` int(5),
`P_Ccre_Concept` varchar(50),
`P_Ccre_TimeUnit` varchar(50),
INOUT `P_Ccre_ID` bigint(20))
BEGIN

	INSERT INTO `IPG`.`CreditCardRestriction`
		(`Ccre_Value`,
		`Ccre_Concept`,
		`Ccre_TimeUnit`,
        `Ccre_CreateTime`)
		VALUES
		(P_Ccre_Value,
		P_Ccre_Concept,
		P_Ccre_TimeUnit,
		now());
		SET P_Ccre_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_CUSTOMER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_CUSTOMER`(
`P_Cust_CreateTime`	datetime,
`P_Cust_Email`	char(30),
`P_Cust_PhoneNumber`	char(20),
INOUT `P_Cust_ID`	bigint(20))
BEGIN
    SET P_Cust_ID = (SELECT `Cust_ID`  FROM `IPG`.`Customer` WHERE `Cust_Email` = P_Cust_Email);
    IF (P_Cust_ID IS NULL) THEN 
		
		INSERT INTO `IPG`.`Customer`
			(`Cust_CreateTime`,
			`Cust_Email`,
			`Cust_PhoneNumber`)
		VALUES
			(now(),
			P_Cust_Email,
			P_Cust_PhoneNumber);

		SET P_Cust_ID = (SELECT LAST_INSERT_ID());
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_INDUSTRY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_INDUSTRY`(
`P_Indu_Description` varchar(50),
INOUT `P_Indu_ID`	bigint(20))
BEGIN
	INSERT INTO `IPG`.`Industry`
	(`Indu_Description`,
    `Indu_CreateTime`)
	VALUES
	(P_Indu_Description,
    NOW());
	SET P_Indu_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_MERCHANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_MERCHANT`(
`P_Buty_ID` bigint(20),
`P_Indu_ID` bigint(20),
`P_Coun_NumericMerchant` int(5),
`P_Coun_NumericPersonalInformation` int(5),
`P_Merc_Name` varchar(100),
`P_Merc_TradingName` varchar(50),
`P_Merc_LegalPhysicalAddress` varchar(50),
`P_Merc_StatementAddress` varchar(50),
`P_Merc_TaxFileNumber` varchar(50),
`P_Merc_CityBusinessInformation` varchar(50),
`P_Merc_PostCodeBusinessInformation` varchar(50),
`P_Merc_IssuedBusinessID` varchar(50),
`P_Merc_IssuedPersonalID` varchar(50),
`P_Merc_TypeAccountApplication` varchar(50),
`P_Merc_EstimatedAnnualSales` varchar(50),
`P_Merc_FirstName` varchar(50),
`P_Merc_LastName` varchar(50),
`P_Merc_PhoneNumber` varchar(50),
`P_Merc_FaxNumber` varchar(50),
`P_Merc_EmailAddress` varchar(50),
`P_Merc_AlternateEmailAddress` varchar(50),
`P_Merc_CityPersonalInformation` varchar(50),
`P_Merc_PostCodePersonalInformation` varchar(50),
INOUT `P_Merc_ID` bigint(20))
BEGIN
	INSERT INTO `IPG`.`Merchant`
		(`Buty_ID`,
		`Indu_ID`,
		`Coun_NumericMerchant`,
		`Merc_Name`,
		`Merc_CreateTime`,
		`Merc_TradingName`,
		`Merc_LegalPhysicalAddress`,
		`Merc_StatementAddress`,
		`Merc_TaxFileNumber`,
		`Merc_CityBusinessInformation`,
		`Merc_PostCodeBusinessInformation`,
		`Merc_IssuedBusinessID`,
		`Merc_IssuedPersonalID`,
		`Merc_TypeAccountApplication`,
		`Merc_EstimatedAnnualSales`,
		`Merc_FirstName`,
		`Merc_LastName`,
		`Merc_PhoneNumber`,
		`Merc_FaxNumber`,
		`Merc_EmailAddress`,
		`Merc_AlternateEmailAddress`,
		`Merc_CityPersonalInformation`,
		`Merc_PostCodePersonalInformation`,
		`Coun_NumericPersonalInformation`)
	VALUES
		(P_Buty_ID,
		P_Indu_ID,
		P_Coun_NumericMerchant,
		P_Merc_Name,
		NOW(),
		P_Merc_TradingName,
		P_Merc_LegalPhysicalAddress,
		P_Merc_StatementAddress,
		P_Merc_TaxFileNumber,
		P_Merc_CityBusinessInformation,
		P_Merc_PostCodeBusinessInformation,
		P_Merc_IssuedBusinessID,
		P_Merc_IssuedPersonalID,
		P_Merc_TypeAccountApplication,
		P_Merc_EstimatedAnnualSales,
		P_Merc_FirstName,
		P_Merc_LastName,
		P_Merc_PhoneNumber,
		P_Merc_FaxNumber,
		P_Merc_EmailAddress,
		P_Merc_AlternateEmailAddress,
		P_Merc_CityPersonalInformation,
		P_Merc_PostCodePersonalInformation,
		P_Coun_NumericPersonalInformation);
        SET P_Merc_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_MERCHANT_CONFIGURATION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_MERCHANT_CONFIGURATION`(
`P_Merc_ID`	bigint(20),
`P_Meco_UrlDeny`	varchar(100),
`P_Meco_UrlApproved`	varchar(100),
INOUT `P_Meco_ID`	bigint(20))
BEGIN
	INSERT INTO `IPG`.`MerchantConfiguration`
	(`Merc_ID`,
	`Meco_UrlDeny`,
	`Meco_UrlApproved`,
    `Meco_CreateTime`)
	VALUES
	(P_Merc_ID,
	P_Meco_UrlDeny,
	P_Meco_UrlApproved,
	NOW());
	SET P_Meco_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_MERCHANT_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_MERCHANT_RESTRICTION`(
`P_Merc_ID` bigint(20),
`P_Mere_Value` int(5),
`P_Mere_Concept` ENUM('Amount','Transactions'),
`P_Mere_TimeUnit` varchar(50),
INOUT `P_Mere_ID` bigint(20))
BEGIN
	INSERT INTO `IPG`.`MerchantRestriction`
		(`Merc_ID`,
		`Mere_Value`,
		`Mere_Concept`,
		`Mere_TimeUnit`,
        `Mere_CreateTime`)
		VALUES
		(P_Merc_ID,
		P_Mere_Value,
		P_Mere_Concept,
		P_Mere_TimeUnit,
		now());
		SET P_Mere_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_PLAN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_PLAN`(
`P_Plan_Amount` decimal(20,0),
`P_Plan_CreateTime` datetime,
`P_Plan_Currency` char(3),
`P_Plan_Interval` enum('Day','Week','Month','Year'),
`P_Plan_IntervalCount` int(4),
`P_Plan_Name` varchar(50),
`P_Plan_TrialPeriodDays` int(4),
`P_Plan_StatementDescriptor` varchar(200),
INOUT `P_Plan_ID` bigint(20))
BEGIN
	INSERT INTO `IPG`.`Plan`
		(`Plan_Amount`,
		`Plan_CreateTime`,
		`Plan_Currency`,
		`Plan_Interval`,
		`Plan_IntervalCount`,
		`Plan_Name`,
		`Plan_TrialPeriodDays`,
		`Plan_StatementDescriptor`)
		VALUES
		(P_Plan_Amount,
		NOW(),
		P_Plan_Currency,
		P_Plan_Interval,
		P_Plan_IntervalCount,
		P_Plan_Name,
		P_Plan_TrialPeriodDays,
		P_Plan_StatementDescriptor);
        SET P_Plan_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_REFUND` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_REFUND`(	
`P_Char_ID`	bigint(20),
`P_Refu_IDStripe` char(50),
`P_Refu_Amount`	decimal(20,3),
`P_Refu_Currency`	char(3),
`P_Refu_BalanceTransaction`	char(50),
`P_Refu_Reason`	char(100),
`P_Refu_ReceiptNumber`	char(50),
`P_Tran_ID`	bigint(20),
INOUT `P_Refu_ID` bigint(20))
BEGIN
	INSERT INTO `IPG`.`Refund`
	(`Char_ID`,
    `Refu_IDStripe`,
	`Refu_Amount`,
	`Refu_CreateTime`,
	`Refu_Currency`,
	`Refu_BalanceTransaction`,
	`Refu_Reason`,
	`Refu_ReceiptNumber`,
	`Tran_ID`)
	VALUES
	(P_Char_ID,
    P_Refu_IDStripe,
	P_Refu_Amount,
	NOW(),
	P_Refu_Currency,
	P_Refu_BalanceTransaction,
	P_Refu_Reason,
	P_Refu_ReceiptNumber,
	P_Tran_ID);
    SET P_Refu_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_REJECTED_CHARGE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_REJECTED_CHARGE`(
`P_Tran_ID`	bigint(20),
`P_Rech_Amount`	decimal(20,0),
`P_Rech_Currency`	varchar(3),
`P_Rech_FailureCode`	varchar(50),
`P_Rech_FailureMessage`	varchar(150),
`P_Rech_CardNumber`	varchar(50),
`P_Rech_Card_ExpYear`	varchar(50),
`P_Rech_Card_ExpMonth`	varchar(50),
`P_Rech_CardHolderName`	varchar(50),
INOUT `P_Rech_ID`	bigint(20))
BEGIN
	INSERT INTO `IPG`.`RejectedCharges`
	(`Tran_ID`,
	`Rech_Amount`,
	`Rech_Currency`,
	`Rech_FailureCode`,
	`Rech_FailureMessage`,
	`Rech_CardNumber`,
	`Rech_Card_ExpYear`,
	`Rech_Card_ExpMonth`,
	`Rech_CardHolderName`,
    `Rech_CreateTime`)
	VALUES
	(P_Tran_ID,
	P_Rech_Amount,
	P_Rech_Currency,
	P_Rech_FailureCode,
	P_Rech_FailureMessage,
	P_Rech_CardNumber,
	P_Rech_Card_ExpYear,
	P_Rech_Card_ExpMonth,
	P_Rech_CardHolderName,
    now());
	SET P_Rech_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_SUBSCRIPTION`(
`P_Plan_ID`	bigint(20),
`P_Cust_ID`	bigint(20),
`P_Disc_ID`	bigint(20),
`P_Subs_CancelAtPeriodEnd`	tinyint(1),
`P_Subs_Quantity`	int(4),
`P_Subs_Start`	datetime,
`P_Subs_Status`	enum('Trialing','Active','Past_due','Canceled','Unpaid'),
`P_Subs_ApplicationFeePercent`	decimal(5,2),
`P_Subs_CanceledAt`	datetime,
`P_Subs_CurrentPeriodStart`	datetime,
`P_Subs_TrialEnd`	datetime,
`P_Subs_EndedAt`	datetime,
`P_Subs_TrialStart`	datetime,
`P_Subs_TaxPercent`	decimal(3,2),
`P_Subs_CurrentPeriodEnd`	datetime,
INOUT `P_Subs_ID`	bigint(20))
BEGIN	
    INSERT INTO `IPG`.`Subscription`
	(`Plan_ID`,
	`Cust_ID`,
	`Disc_ID`,
	`Subs_CancelAtPeriodEnd`,
	`Subs_Quantity`,
	`Subs_Start`,
	`Subs_Status`,
	`Subs_ApplicationFeePercent`,
	`Subs_CanceledAt`,
	`Subs_CurrentPeriodStart`,
    `Subs_CurrentPeriodEnd`,
	`Subs_TrialEnd`,
	`Subs_EndedAt`,
	`Subs_TrialStart`,
	`Subs_TaxPercent`,
	`Subs_CreationTime`)
	VALUES
	(P_Plan_ID,
	P_Cust_ID,
	P_Disc_ID,
	P_Subs_CancelAtPeriodEnd,
	P_Subs_Quantity,
	P_Subs_Start,
	P_Subs_Status,
	P_Subs_ApplicationFeePercent,
	P_Subs_CanceledAt,
	P_Subs_CurrentPeriodStart,
    P_Subs_CurrentPeriodEnd,
	P_Subs_TrialEnd,
	P_Subs_EndedAt,
	P_Subs_TrialStart,
	P_Subs_TaxPercent,
	now());
	SET P_Subs_ID = (SELECT LAST_INSERT_ID());    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SAVE_TRANSACTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SAVE_TRANSACTION`(
`P_Tran_IP` varchar(20),
`P_Tran_MaxmindID` char(8),
`P_Tran_BillingAddressCity` char(20),
`P_Tran_BillingAddressRegion` char(20),
`P_Tran_BillingAddressPostal` char(20),
`P_Tran_BillingAddressCountry` char(20),
`P_Tran_ShippingAddress` char(100),
`P_Tran_ShippingAddressCity` char(100),
`P_Tran_ShippingAddressRegion` char(100),
`P_Tran_ShippingAddressPostal` char(100),
`P_Tran_ShippingAddressCountry` char(100),
`P_Tran_Domain` char(50),
`P_Tran_CustomerPhone` char(20),
`P_Tran_EmailMD5` char(32),
`P_Tran_UsernameMD5` char(32),
`P_Tran_Bin` char(6),
`P_Tran_BinName` char(50),
`P_Tran_BinPhone` char(20) ,
`P_Tran_UserAgent` char(200),
`P_Tran_AcceptLanguage` char(200),
`P_Tran_OrderAmount` decimal(20,3),
`P_Tran_OrderCurrency` char(3),
`P_Merc_ID` bigint(20),
`P_Tran_TxnType` enum('creditcard','debitcard','paypal','google â€“ Google checkout','other','lead â€“ lead generation','survey â€“ online survey','sitereg â€“ site registration'),
`P_Tran_CVVResult` enum('Y','N'),
`P_Tran_RequestedType` enum('standard','premium'),
`P_Tran_RiskScore` decimal(5,2),
`P_Tran_CountryMatch` enum('Yes','No'),
`P_Tran_HighRiskCountry` enum('Yes','No'),
`P_Tran_Distance` bigint(20),
`P_Tran_IPAccuracyRadius` bigint(20),
`P_Tran_IPCity` char(20),
`P_Tran_IPRegion` char(2),
`P_Tran_IPRegionName` char(100),
`P_Tran_IPPostalCode` char(20),
`P_Tran_IPMetroCode` bigint(20),
`P_Tran_IPAreaCode` char(50),
`P_Tran_CountryCode` char(2),
`P_Tran_IPCountryName` char(100),
`P_Tran_IPContinentCode` char(2),
`P_Tran_IPLatitude` bigint(20),
`P_Tran_IPLongitude` bigint(20),
`P_Tran_IPTimeZone` char(50) ,
`P_Tran_IPAsnum` char(50) ,
`P_Tran_IPUserType` enum('business','cafe','cellular','college','contentDeliveryNetwork','government','hosting','library','military','residential','router','school','searchEngineSpider','traveler'),
`P_Tran_IPNetSpeedCell` enum('Dialup','Cable/DSL','Corporate','Cellular'),
`P_Tran_IPDomain` char(50),
`P_Tran_IPIsp` char(20),
`P_Tran_IPOrg` char(50),
`P_Tran_IPCityConf` bigint(20),
`P_Tran_IPRegionConf` bigint(3),
`P_Tran_IPPostalConf` bigint(3),
`P_Tran_IPCountryConf` bigint(3),
`P_Tran_AnonymousProxy` enum('Yes','No'),
`P_Tran_ProxyScore` decimal(2,2),
`P_Tran_IPCorporateProxy` enum('Yes','No'),
`P_Tran_FreeMail` enum('Yes','No'),
`P_Tran_CarderEmail` enum('Yes','No'),
`P_Tran_BinMatch` enum('Yes','No','NotFound','NA'),
`P_Tran_BinCountry` char(2),
`P_Tran_BinNameMatch` enum('Yes','No','NotFound','NA'),
`P_Tran_BinPhoneMatch` enum('Yes','No','NotFound','NA'),
`P_Tran_Prepaid` enum('','Yes','No'),
`P_Tran_CustPhoneInBillingLoc` enum('','Yes','No','NotFound'),
`P_Tran_ShipForward` enum('Yes','No','NA'),
`P_Tran_CityPostalMatch` enum('','Yes','No'),
`P_Tran_ShipCityPostalMatch` enum('','Yes','No'),
`P_Tran_MinfraudVersion` char(20),
`P_Tran_ServiceLevel` enum('','standard','premium'),
`P_Tran_Error` enum('','INVALID_LICENSE_KEY','IP_REQUIRED','IP_NOT_FOUND','MAX_REQUESTS_REACHED','LICENSE_REQUIRED','COUNTRY_NOT_FOUND','CITY_NOT_FOUND','CITY_REQUIRED','INVALID_EMAIL_MD5','POSTAL_CODE_REQUIRED','POSTAL_CODE_NOT_FOUND'),
`P_Tran_ProcessTime` char(20),
INOUT  `P_Tran_ID` bigint(20))
BEGIN

	INSERT INTO `IPG`.`Transaction`
		(`Tran_IP`,
		`Tran_MaxmindID`,
		`Tran_BillingAddressCity`,
		`Tran_BillingAddressRegion`,
		`Tran_BillingAddressPostal`,
		`Tran_BillingAddressCountry`,
		`Tran_ShippingAddress`,
		`Tran_ShippingAddressCity`,
		`Tran_ShippingAddressRegion`,
		`Tran_ShippingAddressPostal`,
		`Tran_ShippingAddressCountry`,
		`Tran_Domain`,
		`Tran_CustomerPhone`,
		`Tran_EmailMD5`,
		`Tran_UsernameMD5`,
		`Tran_Bin`,
		`Tran_BinName`,
		`Tran_BinPhone`,
		`Tran_UserAgent`,
		`Tran_AcceptLanguage`,
		`Tran_OrderAmount`,
		`Tran_OrderCurrency`,
		`Merc_ID`,
		`Tran_TxnType`,
		`Tran_CVVResult`,
		`Tran_RequestedType`,
		`Tran_RiskScore`,
		`Tran_CountryMatch`,
		`Tran_HighRiskCountry`,
		`Tran_Distance`,
		`Tran_IPAccuracyRadius`,
		`Tran_IPCity`,
		`Tran_IPRegion`,
		`Tran_IPRegionName`,
		`Tran_IPPostalCode`,
		`Tran_IPMetroCode`,
		`Tran_IPAreaCode`,
		`Tran_CountryCode`,
		`Tran_IPCountryName`,
		`Tran_IPContinentCode`,
		`Tran_IPLatitude`,
		`Tran_IPLongitude`,
		`Tran_IPTimeZone`,
		`Tran_IPAsnum`,
		`Tran_IPUserType`,
		`Tran_IPNetSpeedCell`,
		`Tran_IPDomain`,
		`Tran_IPIsp`,
		`Tran_IPOrg`,
		`Tran_IPCityConf`,
		`Tran_IPRegionConf`,
		`Tran_IPPostalConf`,
		`Tran_IPCountryConf`,
		`Tran_AnonymousProxy`,
		`Tran_ProxyScore`,
		`Tran_IPCorporateProxy`,
		`Tran_FreeMail`,
		`Tran_CarderEmail`,
		`Tran_BinMatch`,
		`Tran_BinCountry`,
		`Tran_BinNameMatch`,
		`Tran_BinPhoneMatch`,
		`Tran_Prepaid`,
		`Tran_CustPhoneInBillingLoc`,
		`Tran_ShipForward`,
		`Tran_CityPostalMatch`,
		`Tran_ShipCityPostalMatch`,
		`Tran_MinfraudVersion`,
		`Tran_ServiceLevel`,
        `Tran_ProcessTime`,
		`Tran_Error`)
	VALUES
		(P_Tran_IP,
		P_Tran_MaxmindID,
		P_Tran_BillingAddressCity,
		P_Tran_BillingAddressRegion,
		P_Tran_BillingAddressPostal,
		P_Tran_BillingAddressCountry,
		P_Tran_ShippingAddress,
		P_Tran_ShippingAddressCity,
		P_Tran_ShippingAddressRegion,
		P_Tran_ShippingAddressPostal,
		P_Tran_ShippingAddressCountry,
		P_Tran_Domain,
		P_Tran_CustomerPhone,
		P_Tran_EmailMD5,
		P_Tran_UsernameMD5,
		P_Tran_Bin,
		P_Tran_BinName,
		P_Tran_BinPhone,
		P_Tran_UserAgent,
		P_Tran_AcceptLanguage,
		P_Tran_OrderAmount,
		P_Tran_OrderCurrency,
		P_Merc_ID,
		P_Tran_TxnType,
		P_Tran_CVVResult,
		P_Tran_RequestedType,
		P_Tran_RiskScore,
		P_Tran_CountryMatch,
		P_Tran_HighRiskCountry,
		P_Tran_Distance,
		P_Tran_IPAccuracyRadius,
		P_Tran_IPCity,
		P_Tran_IPRegion,
		P_Tran_IPRegionName,
		P_Tran_IPPostalCode,
		P_Tran_IPMetroCode,
		P_Tran_IPAreaCode,
		P_Tran_CountryCode,
		P_Tran_IPCountryName,
		P_Tran_IPContinentCode,
		P_Tran_IPLatitude,
		P_Tran_IPLongitude,
		P_Tran_IPTimeZone,
		P_Tran_IPAsnum,
		P_Tran_IPUserType,
		P_Tran_IPNetSpeedCell,
		P_Tran_IPDomain,
		P_Tran_IPIsp,
		P_Tran_IPOrg,
		P_Tran_IPCityConf,
		P_Tran_IPRegionConf,
		P_Tran_IPPostalConf,
		P_Tran_IPCountryConf,
		P_Tran_AnonymousProxy,
		P_Tran_ProxyScore,
		P_Tran_IPCorporateProxy,
		P_Tran_FreeMail,
		P_Tran_CarderEmail,
		P_Tran_BinMatch,
		P_Tran_BinCountry,
		P_Tran_BinNameMatch,
		P_Tran_BinPhoneMatch,
		P_Tran_Prepaid,
		P_Tran_CustPhoneInBillingLoc,
		P_Tran_ShipForward,
		P_Tran_CityPostalMatch,
		P_Tran_ShipCityPostalMatch,
		P_Tran_MinfraudVersion,
		P_Tran_ServiceLevel,
        P_Tran_ProcessTime,
		P_Tran_Error);

	SET P_Tran_ID = (SELECT LAST_INSERT_ID());

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_AMOUNT_BY_DAY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_AMOUNT_BY_DAY`(
`P_Initial_Day`	varchar(10),
`P_Final_Day`	varchar(10))
BEGIN
	SELECT DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d') DAY, SUM(CHAR_AMOUNT) TOTAL FROM IPG.Charge
	WHERE DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d') BETWEEN P_Initial_Day AND P_Final_Day
	GROUP BY DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d')
	ORDER BY DATE(DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d')) DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_BUSINESSTYPE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_BUSINESSTYPE`()
BEGIN
	SELECT * FROM IPG.BusinessType;
--    WHERE Buty_Status = '0'; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CERTIFICATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CERTIFICATE`()
BEGIN
	SELECT `Certificate`.`Cert_ID`,
		`Certificate`.`Merc_ID`,
		`Certificate`.`Cert_Name`,
		`Certificate`.`Cert_Status`,
		`Certificate`.`Cert_CreateTime`,
		`Certificate`.`Cert_ExpirationTime`,
		`Certificate`.`Cert_Log`,
		`Certificate`.`Cert_BBKeyStoreInformation`,
		`Certificate`.`Cert_MerchantKeyStoreInformation`
	FROM `IPG`.`Certificate`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CERTIFICATE_DETAIL_BB` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CERTIFICATE_DETAIL_BB`(
`P_Cert_ID`	bigint(20))
BEGIN
	SELECT `Certificate`.`Cert_ID`,
    `Certificate`.`Merc_ID`,
    `Certificate`.`Cert_BBKeyStore`
	FROM `IPG`.`Certificate`
    WHERE `Cert_ID` = P_Cert_ID ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CERTIFICATE_DETAIL_MERCHANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CERTIFICATE_DETAIL_MERCHANT`(
`P_Cert_ID`	bigint(20))
BEGIN
	SELECT `Certificate`.`Cert_ID`,
    `Certificate`.`Merc_ID`,
    `Certificate`.`Cert_MerchantKeyStore`
	FROM `IPG`.`Certificate`
    WHERE `Cert_ID` = P_Cert_ID ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CHARGE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CHARGE`()
BEGIN
	SELECT A.*, IFNULL(B.REFUND,0) REFUND FROM (SELECT `Charge`.`Char_ID`,
			`Charge`.`Card_ID`,
			`Charge`.`Char_IDStripe`,
			`Card`.`Card_Brand`,
			`Card`.`Card_Funding`,
			`Card`.`Card_Last4`,
			`Charge`.`Tran_ID`,
			`Charge`.`Invo_ID`,
			`Charge`.`Addr_ID`,
			`Charge`.`Char_Amount`,
			`Charge`.`Char_Captured`,
			`Charge`.`Char_CreateTime`,
			`Charge`.`Char_Currency`,
			`Charge`.`Char_Paid`,
			`Charge`.`Char_Refunded`,
			`Charge`.`Char_FailureCode`,
			`Charge`.`Char_FailureMessage`,
			`Charge`.`Char_ReceiptEmail`,
			`Charge`.`Char_ReceiptNumber`,   
			`Charge`.`Char_ProcessTime` 
		FROM `IPG`.`Charge`, `IPG`.`Card`
		WHERE `Charge`.`Card_ID` = `Card`.`Card_ID`) A LEFT OUTER JOIN(select Char_ID, sum(Refu_Amount) REFUND from `IPG`.`Refund` group by Char_ID) B
        on A.Char_ID = B.Char_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CHARGES_BY_DAY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CHARGES_BY_DAY`(
`P_Initial_Day`	varchar(10),
`P_Final_Day`	varchar(10))
BEGIN
	SELECT DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d') DAY, COUNT(*) TOTAL FROM IPG.Charge
	WHERE DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d') BETWEEN P_Initial_Day AND P_Final_Day
	GROUP BY DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d')
	ORDER BY DATE(DATE_FORMAT(CHAR_CREATETIME,'%Y-%m-%d')) DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_COUNTRIES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_COUNTRIES`()
BEGIN
	SELECT * FROM IPG.Country
    ORDER BY COUN_NAME;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_COUNTRYBLOCKLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_COUNTRYBLOCKLIST`()
BEGIN
	SELECT A.Coun_Name,A.Coun_Numeric, 
	B.Cobl_ID,
    IFNULL(B.Cobl_Transaction,0) Cobl_Transaction,
	IFNULL(B.Cobl_MerchantServerLocation,0) Cobl_MerchantServerLocation,
	IFNULL(B.Cobl_MerchantRegistrationLocation,0) Cobl_MerchantRegistrationLocation,
	IFNULL(B.Cobl_CreditCardIssueLocation,0) Cobl_CreditCardIssueLocation,
	IFNULL(B.Cobl_CreditCardHolderLocation,0) Cobl_CreditCardHolderLocation
	FROM IPG.Country A
	LEFT OUTER JOIN IPG.CountryBlockList B
	ON A.Coun_Numeric = B.Coun_Numeric;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_COUNTRY_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_COUNTRY_RESTRICTION`()
BEGIN
	SELECT A.*, B.Coun_Name
	FROM `IPG`.`CountryRestriction` A, `IPG`.`Country` B
	WHERE Core_Status <> '1'
	AND A.Coun_Numeric = B.Coun_Numeric;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_CREDITCARD_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_CREDITCARD_RESTRICTION`()
BEGIN
	SELECT *
	FROM `IPG`.`CreditCardRestriction`
	WHERE Ccre_Status <> '1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_INDUSTRY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_INDUSTRY`()
BEGIN
	SELECT * FROM IPG.Industry;
--    WHERE Indu_Status = '0'; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT`()
BEGIN
	SELECT A.*, B.Coun_Name CountryBusiness, C.Coun_Name CountryPersonalInformation, D.Indu_Description, E.Buty_Description 
    FROM IPG.Merchant A, IPG.Country B, IPG.Country C, IPG.Industry D, IPG.BusinessType E
    WHERE `Merc_Status` = '0'
    AND A.Coun_NumericMerchant = B.Coun_Numeric
    AND A.Coun_NumericPersonalInformation = C.Coun_Numeric
    AND A.Indu_ID = D.Indu_ID
    AND A.Buty_ID = E.Buty_ID
    ORDER BY Merc_NAME;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_CONFIGURATION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_CONFIGURATION`()
BEGIN
	SELECT A.Merc_Name, B.* FROM IPG.Merchant A, IPG.MerchantConfiguration B
    WHERE A.Merc_ID = B.Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_CONFIGURATION_DETAIL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_CONFIGURATION_DETAIL`(
`P_Meco_ID` bigint(20))
BEGIN
	SELECT A.Merc_Name, B.* FROM IPG.Merchant A, IPG.MerchantConfiguration B
    WHERE `Meco_ID` = P_Meco_ID
    AND A.Merc_ID = B.Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_CONFIGURATION_DETAIL_BY_MERCHANT_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_CONFIGURATION_DETAIL_BY_MERCHANT_ID`(
`P_Merc_ID` bigint(20))
BEGIN
	SELECT B.* FROM IPG.MerchantConfiguration B
    WHERE `Merc_ID` = P_Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_DETAIL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_DETAIL`(
`P_Merc_ID` bigint(20))
BEGIN
	SELECT A.*, B.Coun_Name FROM IPG.Merchant A, IPG.Country B
    WHERE `Merc_Status` = '0'
    AND `Merc_ID` = P_Merc_ID
    AND A.Coun_Numeric = B.Coun_Numeric;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_RESTRICTION`()
BEGIN
	SELECT A.*, B.Merc_Name
	FROM `IPG`.`MerchantRestriction` A, `IPG`.`Merchant` B
	WHERE Mere_Status <> '1'
	AND A.Merc_ID = B.Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_MERCHANT_RESTRICTION_BY_MERCHANT_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_MERCHANT_RESTRICTION_BY_MERCHANT_ID`(
`P_Merc_ID` bigint(20))
BEGIN
	SELECT * FROM `IPG`.`MerchantRestriction`
	WHERE Mere_Status <> '1'
	AND Merc_ID = P_Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_PLAN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_PLAN`()
BEGIN
	SELECT * FROM IPG.Plan
    WHERE Plan_Status = '0'; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_REFUND` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_REFUND`(
`P_Char_ID` bigint(20))
BEGIN
	SELECT * FROM IPG.Refund
	WHERE Char_ID = P_Char_ID
    ORDER BY `Refu_CreateTime` DESC ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_REJECTEDS_BY_DAY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_REJECTEDS_BY_DAY`(
`P_Initial_Day`	varchar(10),
`P_Final_Day`	varchar(10))
BEGIN     
    SELECT DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d') DAY, COUNT(*) TOTAL FROM IPG.RejectedCharges
	WHERE DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d') BETWEEN P_Initial_Day AND P_Final_Day
	GROUP BY DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d')
	ORDER BY DATE(DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d')) DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_REJECTED_BY_DAY_XXXXXXX` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_REJECTED_BY_DAY_XXXXXXX`(
`P_Initial_Day`	varchar(10),
`P_Final_Day`	varchar(10))
BEGIN
	
    SELECT A.Tran_CreateTime, A.Tran_ID, C.Rech_ID, C.Rech_Currency, C.Rech_Amount, C.Rech_CardHolderName
	FROM IPG.Transaction A, IPG.RejectedCharges C 
	WHERE DATE_FORMAT(A.Tran_CreateTime,'%Y-%m-%d') BETWEEN @P_Initial_Day AND @P_Final_Day 
	AND  A.Tran_ID = C.Tran_ID
	ORDER BY A.Tran_CreateTime DESC;
    
    /*SELECT A.Tran_CreateTime, A.Tran_ID, C.Rech_ID, C.Rech_Currency, C.Rech_Amount, C.Rech_CardHolderName, B.Char_ID, B.Char_Currency, B.Card_ID, B.Card_Last4, B.Cust_ID, B.Card_Name, B.Char_Amount
	FROM (SELECT A2.Tran_CreateTime, A2.Tran_ID FROM IPG.Transaction A2 
	WHERE DATE_FORMAT(A2.Tran_CreateTime,'%Y-%m-%d') BETWEEN P_Initial_Day AND P_Final_Day) A
	LEFT JOIN (SELECT A1.Tran_ID ,A1.Char_ID, A1.Card_ID, B1.Card_Last4, B1.Cust_ID, B1.Card_Name, A1.Char_Amount, A1.Char_Currency
	FROM IPG.Charge A1, IPG.Card B1, IPG.Customer C1
	WHERE A1.Card_ID = B1.Card_ID
	AND B1.Cust_ID = C1.Cust_ID) B ON A.Tran_ID = B.Tran_ID
	LEFT JOIN IPG.RejectedCharges C ON A.Tran_ID = C.Tran_ID
	ORDER BY A.Tran_CreateTime DESC;*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_SUBSCRIPTION`()
BEGIN
	SELECT A.*, B.Plan_Name FROM IPG.Subscription A, IPG.Plan B
    WHERE Subs_StatusRow <> '1'
    AND A.Plan_ID = B.Plan_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEARCH_TRANSACTIONS_BY_DAY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEARCH_TRANSACTIONS_BY_DAY`(
`P_Initial_Day`	varchar(10),
`P_Final_Day`	varchar(10))
BEGIN
	
	SELECT  A.Tran_CreateTime, A.Tran_ID, A.Tran_IPCity, A.Tran_IPRegionName, A.Tran_CountryCode, A.Tran_IPCountryName,
	   B.Char_ID, B.Card_ID, B.Char_Amount, B.Char_Currency , B.Char_CreateTime, 
	   C.Card_Last4, C.Cust_ID, C.Card_Name, C.Card_Brand, C.Card_Funding, C.Card_ExpMonth, C.Card_ExpYear, C.Card_Country
	FROM 
	IPG.Transaction A, 
	IPG.Charge B, 
	IPG.Card C, 
	IPG.Customer D
	WHERE DATE_FORMAT(A.Tran_CreateTime,'%Y-%m-%d') BETWEEN P_Initial_Day AND P_Final_Day
	AND A.Tran_ID = B.Tran_ID
	AND B.Card_ID = C.Card_ID
	AND C.Cust_ID = D.Cust_ID
	ORDER BY A.Tran_CreateTime DESC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_BUSINESSTYPE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_BUSINESSTYPE`(
`P_Buty_Description` varchar(50),
`P_Buty_Status`	enum('0','1'),
INOUT `P_Buty_ID`	bigint(20))
BEGIN
	UPDATE `IPG`.`BusinessType`
	SET `Buty_Description` = P_Buty_Description,
	`Buty_Status` = P_Buty_Status,
    `Buty_CreateTime` = NOW()
	WHERE `Buty_ID` = P_Buty_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_COUNTRYBLOCKLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_COUNTRYBLOCKLIST`(
`P_Coun_Numeric`	int(5),
`P_Cobl_Transaction`	tinyint(1),
`P_Cobl_MerchantServerLocation`	tinyint(1),
`P_Cobl_MerchantRegistrationLocation`	tinyint(1),
`P_Cobl_CreditCardIssueLocation`	tinyint(1),
`P_Cobl_CreditCardHolderLocation`	tinyint(1),
INOUT `P_Cobl_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`CountryBlockList`
	SET
	`Cobl_ID` = P_Cobl_ID,
	`Coun_Numeric` = P_Coun_Numeric,
	`Cobl_Transaction` = P_Cobl_Transaction,
	`Cobl_MerchantServerLocation` = P_Cobl_MerchantServerLocation,
	`Cobl_MerchantRegistrationLocation` = P_Cobl_MerchantRegistrationLocation,
	`Cobl_CreditCardIssueLocation` = P_Cobl_CreditCardIssueLocation,
	`Cobl_CreditCardHolderLocation` = P_Cobl_CreditCardHolderLocation
	WHERE `Cobl_ID` = P_Cobl_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_COUNTRY_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_COUNTRY_RESTRICTION`(
`P_Coun_Numeric` int(5),
`P_Core_Value` int(5),
`P_Core_Concept` varchar(50),
`P_Core_TimeUnit` varchar(50),
INOUT `P_Core_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`CountryRestriction`
	SET
	`Coun_Numeric` = P_Coun_Numeric,
	`Core_Value` = P_Core_Value,
	`Core_Concept` = P_Core_Concept,
	`Core_TimeUnit` = P_Core_TimeUnit,
    `Core_CreateTime` = NOW()
	WHERE `Core_ID` = P_Core_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_CREDITCARD_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_CREDITCARD_RESTRICTION`(
`P_Ccre_Value` int(5),
`P_Ccre_Concept` varchar(50),
`P_Ccre_TimeUnit` varchar(50),
INOUT `P_Ccre_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`CreditCardRestriction`
    SET
		`Ccre_Value` = P_Ccre_Value,
		`Ccre_Concept` = P_Ccre_Concept,
		`Ccre_TimeUnit` = P_Ccre_TimeUnit,
        `Ccre_CreateTime` = now()
		WHERE `Ccre_ID` = P_Ccre_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_INDUSTRY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_INDUSTRY`(
`P_Indu_Description` varchar(50),
`P_Indu_Status`	enum('0','1'),
INOUT `P_Indu_ID` bigint(20))
BEGIN	
	UPDATE `IPG`.`Industry`
	SET  `Indu_Description` = P_Indu_Description,
		  `Indu_Status` = P_Indu_Status,
          `Indu_CreateTime` = NOW()
	WHERE `Indu_ID` = P_Indu_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_MERCHANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_MERCHANT`(
`P_Buty_ID` bigint(20),
`P_Indu_ID` bigint(20),
`P_Coun_NumericMerchant` int(5),
`P_Coun_NumericPersonalInformation` int(5),
`P_Merc_Name` varchar(100),
`P_Merc_TradingName` varchar(50),
`P_Merc_LegalPhysicalAddress` varchar(50),
`P_Merc_StatementAddress` varchar(50),
`P_Merc_TaxFileNumber` varchar(50),
`P_Merc_CityBusinessInformation` varchar(50),
`P_Merc_PostCodeBusinessInformation` varchar(50),
`P_Merc_IssuedBusinessID` varchar(50),
`P_Merc_IssuedPersonalID` varchar(50),
`P_Merc_TypeAccountApplication` varchar(50),
`P_Merc_EstimatedAnnualSales` varchar(50),
`P_Merc_FirstName` varchar(50),
`P_Merc_LastName` varchar(50),
`P_Merc_PhoneNumber` varchar(50),
`P_Merc_FaxNumber` varchar(50),
`P_Merc_EmailAddress` varchar(50),
`P_Merc_AlternateEmailAddress` varchar(50),
`P_Merc_CityPersonalInformation` varchar(50),
`P_Merc_PostCodePersonalInformation` varchar(50),
INOUT `P_Merc_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`Merchant`
	SET
	`Merc_ID` = P_Merc_ID,
	`Buty_ID` = P_Buty_ID,
	`Indu_ID` = P_Indu_ID,
	`Coun_NumericMerchant` = P_Coun_NumericMerchant,
	`Coun_NumericPersonalInformation` = P_Coun_NumericPersonalInformation,
	`Merc_Name` = P_Merc_Name,
	`Merc_CreateTime` = NOW(),
	`Merc_TradingName` = P_Merc_TradingName,
	`Merc_LegalPhysicalAddress` = P_Merc_LegalPhysicalAddress,
	`Merc_StatementAddress` = P_Merc_StatementAddress,
	`Merc_TaxFileNumber` = P_Merc_TaxFileNumber,
	`Merc_CityBusinessInformation` = P_Merc_CityBusinessInformation,
	`Merc_PostCodeBusinessInformation` = P_Merc_PostCodeBusinessInformation,
	`Merc_IssuedBusinessID` = P_Merc_IssuedBusinessID,
	`Merc_IssuedPersonalID` = P_Merc_IssuedPersonalID,
	`Merc_TypeAccountApplication` = P_Merc_TypeAccountApplication,
	`Merc_EstimatedAnnualSales` = P_Merc_EstimatedAnnualSales,
	`Merc_FirstName` = P_Merc_FirstName,
	`Merc_LastName` = P_Merc_LastName,
	`Merc_PhoneNumber` = P_Merc_PhoneNumber,
	`Merc_FaxNumber` = P_Merc_FaxNumber,
	`Merc_EmailAddress` = P_Merc_EmailAddress,
	`Merc_AlternateEmailAddress` = P_Merc_AlternateEmailAddress,
	`Merc_CityPersonalInformation` = P_Merc_CityPersonalInformation,
	`Merc_PostCodePersonalInformation` = P_Merc_PostCodePersonalInformation
	WHERE `Merc_ID` = P_Merc_ID;  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_MERCHANT_CONFIGURATION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_MERCHANT_CONFIGURATION`(
`P_Meco_UrlDeny`	varchar(100),
`P_Meco_UrlApproved`	varchar(100),
INOUT `P_Meco_ID`	bigint(20))
BEGIN
	UPDATE `IPG`.`MerchantConfiguration`
	SET `Meco_UrlDeny` = P_Meco_UrlDeny,
	`Meco_UrlApproved` = P_Meco_UrlApproved,
    `Meco_CreateTime` = NOW()
    WHERE `Meco_ID` = P_Meco_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_MERCHANT_RESTRICTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_MERCHANT_RESTRICTION`(
`P_Merc_ID` bigint(20),
`P_Mere_Value` int(5),
`P_Mere_Concept` ENUM('Amount','Transactions'),
`P_Mere_TimeUnit` varchar(50),
INOUT `P_Mere_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`MerchantRestriction`
	SET
	`Merc_ID` = P_Merc_ID,
	`Mere_Value` = P_Mere_Value,
	`Mere_Concept` = P_Mere_Concept,
	`Mere_TimeUnit` = P_Mere_TimeUnit,
    `Mere_CreateTime` = NOW()
	WHERE `Mere_ID` = P_Mere_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_PLAN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_PLAN`(
`P_Plan_Amount` decimal(20,0),
`P_Plan_CreateTime` datetime,
`P_Plan_Currency` char(3),
`P_Plan_Interval` enum('Day','Week','Month','Year'),
`P_Plan_IntervalCount` int(4),
`P_Plan_Name` varchar(50),
`P_Plan_TrialPeriodDays` int(4),
`P_Plan_StatementDescriptor` varchar(200),
INOUT `P_Plan_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`Plan`
		SET
		`Plan_Amount` = P_Plan_Amount,
		`Plan_CreateTime` = P_Plan_CreateTime,
		`Plan_Currency` = P_Plan_Currency,
		`Plan_Interval` = P_Plan_Interval,
		`Plan_IntervalCount` = P_Plan_IntervalCount,
		`Plan_Name` = P_Plan_Name,
		`Plan_TrialPeriodDays` = P_Plan_TrialPeriodDays,
		`Plan_StatementDescriptor` = P_Plan_StatementDescriptor
		WHERE `Plan_ID` = P_Plan_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_STATUS_REFUND` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_STATUS_REFUND`(
`P_Char_ID` bigint(20))
BEGIN
	UPDATE `IPG`.`Charge`
	SET Char_Refunded = 0
	WHERE `Char_ID` = P_Char_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_UPDATE_SUBSCRIPTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_UPDATE_SUBSCRIPTION`(
`P_Plan_ID`	bigint(20),
`P_Cust_ID`	bigint(20),
`P_Disc_ID`	bigint(20),
`P_Subs_CancelAtPeriodEnd`	tinyint(1),
`P_Subs_Quantity`	int(4),
`P_Subs_Start`	datetime,
`P_Subs_Status`	enum('Trialing','Active','Past_due','Canceled','Unpaid'),
`P_Subs_ApplicationFeePercent`	decimal(5,2),
`P_Subs_CanceledAt`	datetime,
`P_Subs_CurrentPeriodStart`	datetime,
`P_Subs_TrialEnd`	datetime,
`P_Subs_EndedAt`	datetime,
`P_Subs_TrialStart`	datetime,
`P_Subs_TaxPercent`	decimal(3,2),
`P_Subs_CurrentPeriodEnd`	datetime,
INOUT `P_Subs_ID`	bigint(20))
BEGIN	
    UPDATE `IPG`.`Subscription`
	SET
	`Plan_ID` = P_Plan_ID,
	`Cust_ID` = P_Cust_ID,
	`Disc_ID` = P_Disc_ID,
	`Subs_CancelAtPeriodEnd` = P_Subs_CancelAtPeriodEnd,
	`Subs_Quantity` = P_Subs_Quantity,
	`Subs_Start` = P_Subs_Start,
	`Subs_Status` = P_Subs_Status,
	`Subs_ApplicationFeePercent` = P_Subs_ApplicationFeePercent,
	`Subs_CanceledAt` = P_Subs_CanceledAt,
	`Subs_CurrentPeriodStart` = P_Subs_CurrentPeriodStart,
    `Subs_CurrentPeriodEnd` = P_Subs_CurrentPeriodEnd,
	`Subs_TrialEnd` = P_Subs_TrialEnd,
	`Subs_EndedAt` = P_Subs_EndedAt,
	`Subs_TrialStart` = P_Subs_TrialStart,
	`Subs_TaxPercent` = P_Subs_TaxPercent,
	`Subs_CreationTime` = now()
	WHERE `Subs_ID` = P_Subs_ID;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_VERIFY_MERCHANT_RESTRICTION_BY_AMOUNT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_VERIFY_MERCHANT_RESTRICTION_BY_AMOUNT`(
`P_Merc_ID`	bigint(20),
`P_Mere_TimeUnit` varchar(50))
BEGIN
	SELECT SUM(Tran_OrderAmount) Amount_Transactions, Merc_ID, (now() - INTERVAL P_Mere_TimeUnit MINUTE) Since, NOW() 'To'
	FROM IPG.Transaction
	WHERE Tran_CreateTime BETWEEN (now() - INTERVAL P_Mere_TimeUnit MINUTE) AND now()
	AND Merc_ID = P_Merc_ID
	GROUP BY Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_VERIFY_MERCHANT_RESTRICTION_BY_TRANSACTIONS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_VERIFY_MERCHANT_RESTRICTION_BY_TRANSACTIONS`(
`P_Merc_ID`	bigint(20),
`P_Mere_TimeUnit` varchar(50))
BEGIN
	SELECT count(*) Number_Transactions ,Merc_ID, (now() - INTERVAL P_Mere_TimeUnit MINUTE) Since, NOW() 'To'
	FROM IPG.Transaction
	WHERE Tran_CreateTime BETWEEN (now() - INTERVAL P_Mere_TimeUnit MINUTE) AND now()
	AND Merc_ID = P_Merc_ID
	GROUP BY Merc_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prueba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prueba`(
`P_Initial_Day`	varchar(10),
`P_Final_Day`	varchar(10))
BEGIN
	   
	INSERT INTO `IPG`.`fechas`
	(`inicial`,
	`final`)
	VALUES
	(P_Initial_Day,
	P_Final_Day);
    
    
    SELECT DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d') DAY, COUNT(*) TOTAL FROM IPG.RejectedCharges
	WHERE DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d') BETWEEN @P_Initial_Day AND @P_Final_Day
	GROUP BY DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d')
	ORDER BY DATE(DATE_FORMAT(RECH_CREATETIME,'%Y-%m-%d')) DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-06 12:45:33
