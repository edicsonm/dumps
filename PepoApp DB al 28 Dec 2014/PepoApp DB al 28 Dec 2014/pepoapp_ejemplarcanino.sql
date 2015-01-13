-- MySQL dump 10.13  Distrib 5.6.19, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: pepoapp
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
-- Table structure for table `ejemplarcanino`
--

DROP TABLE IF EXISTS `ejemplarcanino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ejemplarcanino` (
  `Ejem_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Ejem_Nombre` char(20) NOT NULL,
  `Raza_ID` bigint(20) NOT NULL,
  `Ejem_ColorDominante` char(100) NOT NULL,
  `Ejem_FechaNacimiento` date NOT NULL,
  `Ejem_Sexo` varchar(50) NOT NULL DEFAULT 'N/D',
  `Ejem_Destinacion` varchar(50) NOT NULL,
  `Ejem_Descripcion` char(200) DEFAULT NULL,
  `Ejem_CarnetVacuna` longblob,
  `Ejem_CartaSanidad` longblob NOT NULL,
  `Ejem_Foto` longblob NOT NULL,
  `Ejem_PolizaSeguro` longblob,
  PRIMARY KEY (`Ejem_ID`),
  UNIQUE KEY `Ejem_ID` (`Ejem_ID`),
  KEY `FK_ejemplarcanino_raza_idx` (`Raza_ID`),
  CONSTRAINT `FK_ejemplarcanino_raza` FOREIGN KEY (`Raza_ID`) REFERENCES `raza` (`Raza_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejemplarcanino`
--

LOCK TABLES `ejemplarcanino` WRITE;
/*!40000 ALTER TABLE `ejemplarcanino` DISABLE KEYS */;
INSERT INTO `ejemplarcanino` VALUES (1,'Nala',1,'Merle','2014-08-01','Hembra','Hogar','N/A',', P_Ejem_CarnetVacuna,',', P_Ejem_CartaSanidad,',', P_Ejem_Foto,',', P_Ejem_PolizaSeguro,');
/*!40000 ALTER TABLE `ejemplarcanino` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-28  9:52:16
