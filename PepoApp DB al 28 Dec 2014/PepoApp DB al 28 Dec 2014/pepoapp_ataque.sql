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
-- Table structure for table `ataque`
--

DROP TABLE IF EXISTS `ataque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ataque` (
  `Ejem_ID` bigint(20) NOT NULL,
  `Pers_ID` bigint(20) NOT NULL,
  `Atac_Fecha` date NOT NULL,
  `Ataq_Lugar` char(200) NOT NULL,
  `Ataq_Descripcion` char(250) NOT NULL,
  `Ataq_Foto` blob NOT NULL,
  `Ataq_Documento` blob,
  PRIMARY KEY (`Ejem_ID`,`Pers_ID`,`Atac_Fecha`),
  KEY `Persona_Ataque_FK` (`Pers_ID`),
  CONSTRAINT `EjemplarCanino_Ataque_FK` FOREIGN KEY (`Ejem_ID`) REFERENCES `ejemplarcanino` (`Ejem_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Persona_Ataque_FK` FOREIGN KEY (`Pers_ID`) REFERENCES `persona` (`Pers_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ataque`
--

LOCK TABLES `ataque` WRITE;
/*!40000 ALTER TABLE `ataque` DISABLE KEYS */;
/*!40000 ALTER TABLE `ataque` ENABLE KEYS */;
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
