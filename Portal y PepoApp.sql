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
-- Current Database: `pepoapp`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `pepoapp` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pepoapp`;

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

--
-- Table structure for table `incidente`
--

DROP TABLE IF EXISTS `incidente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incidente` (
  `Tiin_ID` bigint(20) NOT NULL,
  `Ejem_ID` bigint(20) NOT NULL,
  `Inci_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Inci_Fecha` date NOT NULL,
  `Inci_Lugar` char(200) NOT NULL,
  PRIMARY KEY (`Inci_ID`,`Ejem_ID`),
  UNIQUE KEY `Inci_ID` (`Inci_ID`),
  KEY `TipoIncidente_Incidente_FK` (`Tiin_ID`),
  KEY `EjemplarCanino_Incidente_FK` (`Ejem_ID`),
  CONSTRAINT `EjemplarCanino_Incidente_FK` FOREIGN KEY (`Ejem_ID`) REFERENCES `ejemplarcanino` (`Ejem_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TipoIncidente_Incidente_FK` FOREIGN KEY (`Tiin_ID`) REFERENCES `tipoincidente` (`Tiin_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidente`
--

LOCK TABLES `incidente` WRITE;
/*!40000 ALTER TABLE `incidente` DISABLE KEYS */;
/*!40000 ALTER TABLE `incidente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `Pers_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Pers_Nombre` char(50) NOT NULL,
  `Pers_Apellidos` char(100) NOT NULL,
  `Pers_DocumentoIdentidad` char(50) NOT NULL,
  `Pers_DireccionResidencia` char(100) NOT NULL,
  `Pers_DireccionEmpleo` char(100) DEFAULT NULL,
  `Pers_NumeroMovil1` char(20) NOT NULL,
  `Pers_NumeroMovil2` char(20) DEFAULT NULL,
  `Pers_NumeroFijo1` char(20) DEFAULT NULL,
  `Pers_NumeroFijo2` char(20) DEFAULT NULL,
  `Pers_DireccionCorreo` char(50) NOT NULL,
  `Pers_Estatus` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Pers_ID`),
  UNIQUE KEY `Pers_ID` (`Pers_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Edicson','Morales Tores','88031153','Sydney. Australia.','NA','000','','','','edicsonm@gmail.com',0),(2,'Hamilton','Morales Torres','88161283','Pamplona. NS. Colombia','Alcaldia de Pamplona','000','','','','hamoto@gmail.com',0);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietario`
--

DROP TABLE IF EXISTS `propietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propietario` (
  `Ejem_ID` bigint(20) NOT NULL,
  `Pers_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`Pers_ID`,`Ejem_ID`),
  KEY `EjemplarCanino_Propietario_FK` (`Ejem_ID`),
  CONSTRAINT `EjemplarCanino_Propietario_FK` FOREIGN KEY (`Ejem_ID`) REFERENCES `ejemplarcanino` (`Ejem_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Persona_Propietario_FK` FOREIGN KEY (`Pers_ID`) REFERENCES `persona` (`Pers_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietario`
--

LOCK TABLES `propietario` WRITE;
/*!40000 ALTER TABLE `propietario` DISABLE KEYS */;
INSERT INTO `propietario` VALUES (1,1);
/*!40000 ALTER TABLE `propietario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raza`
--

DROP TABLE IF EXISTS `raza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raza` (
  `Raza_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Raza_Nombre` varchar(50) NOT NULL,
  `Raza_Descripcion` varchar(100) DEFAULT NULL,
  `Raza_Estatus` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Raza_ID`),
  UNIQUE KEY `Raza_ID_UNIQUE` (`Raza_ID`),
  UNIQUE KEY `Raza_Nombre_UNIQUE` (`Raza_Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raza`
--

LOCK TABLES `raza` WRITE;
/*!40000 ALTER TABLE `raza` DISABLE KEYS */;
INSERT INTO `raza` VALUES (1,'Staffordshire terrier','N/A',0);
/*!40000 ALTER TABLE `raza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoincidente`
--

DROP TABLE IF EXISTS `tipoincidente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoincidente` (
  `Tiin_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tiin_Nombre` char(100) NOT NULL,
  `Tiin_Descripcion` char(250) NOT NULL,
  PRIMARY KEY (`Tiin_ID`),
  UNIQUE KEY `Tiin_ID` (`Tiin_ID`),
  UNIQUE KEY `Tiin_Nombre` (`Tiin_Nombre`),
  UNIQUE KEY `Tiin_Descripcion` (`Tiin_Descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoincidente`
--

LOCK TABLES `tipoincidente` WRITE;
/*!40000 ALTER TABLE `tipoincidente` DISABLE KEYS */;
INSERT INTO `tipoincidente` VALUES (1,'Sin Bozal','N/A');
/*!40000 ALTER TABLE `tipoincidente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pepoapp'
--

--
-- Dumping routines for database 'pepoapp'
--
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Ejemplar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Ejemplar`(
P_Ejem_ID bigint(20),
P_Ejem_Nombre char(20),
P_Raza_ID char(50),
P_Ejem_Sexo char(50),
P_Ejem_ColorDominante char(100),
P_Ejem_FechaNacimiento date,
P_Ejem_Destinacion char(50),
P_Ejem_Descripcion char(200) ,
P_Ejem_CarnetVacuna LONGBLOB,
P_Ejem_CartaSanidad LONGBLOB ,
P_Ejem_Foto LONGBLOB,
P_Ejem_PolizaSeguro LONGBLOB,
INOUT SALIDA TEXT(500))
BEGIN
SET @condicional = CONCAT('UPDATE `pepoapp`.`ejemplarcanino` SET `Ejem_Nombre` = ''',P_Ejem_Nombre,'''',', `Ejem_Sexo` = ''',P_Ejem_Sexo,'''',', `Raza_ID` = ''',P_Raza_ID,'''',', `Ejem_ColorDominante` = ''',P_Ejem_ColorDominante,'''',', `Ejem_FechaNacimiento` = ''',P_Ejem_FechaNacimiento,'''',', `Ejem_Destinacion` = ''',P_Ejem_Destinacion,'''',', `Ejem_Descripcion` = ''',P_Ejem_Descripcion,'''');
SET @condicionales1 = CONCAT(' `Ejem_CarnetVacuna` = '', P_Ejem_CarnetVacuna,''');
SET @condicionales2 = CONCAT(' `Ejem_CartaSanidad` = '', P_Ejem_CartaSanidad,''');
SET @condicionales3 = CONCAT(' `Ejem_Foto` = '', P_Ejem_Foto,''');
SET @condicionales4 = CONCAT(' `Ejem_PolizaSeguro` = '', P_Ejem_PolizaSeguro,''');

IF(P_Ejem_CarnetVacuna IS NOT NULL) THEN 
	SET @condicional = CONCAT(@condicional,', ', @condicionales1);
END IF;
IF(P_Ejem_CartaSanidad IS NOT NULL) THEN 
		SET @condicional = CONCAT(@condicional,', ',@condicionales2);		
END IF;
IF(P_Ejem_Foto IS NOT NULL) THEN 
	SET @condicional = CONCAT(@condicional,', ', @condicionales3);
END IF;
IF(P_Ejem_PolizaSeguro IS NOT NULL) THEN 
	SET @condicional = CONCAT(@condicional,', ', @condicionales4);
END IF;

SET @condicional = CONCAT(@condicional,' WHERE `Ejem_ID` = ',P_Ejem_ID,';');

PREPARE stmt FROM @condicional;
EXECUTE stmt;
SET SALIDA = ROW_COUNT();
DEALLOCATE PREPARE stmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Ejemplar_Pruebas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Ejemplar_Pruebas`(
P_Ejem_ID bigint(20),
P_Ejem_Foto LONGBLOB)
BEGIN
SET @condicional = CONCAT('UPDATE `pepoapp`.`ejemplarcanino` SET ');
SET @condicionales3 = CONCAT(' `Ejem_Foto` = ''', P_Ejem_Foto,'''');

IF(P_Ejem_Foto IS NOT NULL) THEN 
	SET @condicional = CONCAT(@condicional,', ', @condicionales3);
END IF;

SET @condicional = CONCAT(@condicional,' WHERE `Ejem_ID` = ',P_Ejem_ID,';');

PREPARE stmt FROM @condicional;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Persona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Persona`(
P_Pers_ID bigint(20),
P_Pers_Nombre VARCHAR(50),
P_Pers_Apellidos VARCHAR(100),
P_Pers_DocumentoIdentidad VARCHAR(50),
P_Pers_DireccionResidencia VARCHAR(100),
P_Pers_DireccionEmpleo VARCHAR(100),
P_Pers_NumeroMovil1 VARCHAR(20),
P_Pers_NumeroMovil2 VARCHAR(20),
P_Pers_NumeroFijo1 VARCHAR(20),
P_Pers_NumeroFijo2 VARCHAR(20),
P_Pers_DireccionCorreo VARCHAR(50))
BEGIN
UPDATE `pepoapp`.`persona`
SET
`Pers_Nombre` = P_Pers_Nombre,
`Pers_Apellidos` = P_Pers_Apellidos,
`Pers_DocumentoIdentidad` = P_Pers_DocumentoIdentidad,
`Pers_DireccionResidencia` = P_Pers_DireccionResidencia,
`Pers_DireccionEmpleo` = P_Pers_DireccionEmpleo,
`Pers_NumeroMovil1` = P_Pers_NumeroMovil1,
`Pers_NumeroMovil2` = P_Pers_NumeroMovil2,
`Pers_NumeroFijo1` = P_Pers_NumeroFijo1,
`Pers_NumeroFijo2` = P_Pers_NumeroFijo2,
`Pers_DireccionCorreo` = P_Pers_DireccionCorreo
WHERE `Pers_ID` = P_Pers_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Tipo_Incidente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Tipo_Incidente`(
P_Tiin_ID BIGINT(20),
P_Tiin_Nombre VARCHAR(100), 
P_Tiin_Descripcion VARCHAR(250))
BEGIN
	UPDATE `pepoapp`.`tipoincidente`
	SET
	`Tiin_Nombre` = P_Tiin_Nombre,
	`Tiin_Descripcion` = P_Tiin_Descripcion
	WHERE `Tiin_ID` = P_Tiin_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Eliminar_Persona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar_Persona`(
P_Pers_ID bigint(20))
BEGIN
UPDATE `pepoapp`.`persona`
SET
`Pers_Estatus` = 1
WHERE `Pers_ID` = P_Pers_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Detalle_Ejemplar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Detalle_Ejemplar`(
P_Ejem_ID bigint(20))
BEGIN


SELECT 
	A.Ejem_Foto, A.Ejem_PolizaSeguro, A.Ejem_CarnetVacuna, A.Ejem_CartaSanidad,
	C.Pers_Apellidos, C.Pers_Nombre, C.Pers_DocumentoIdentidad
FROM pepoapp.ejemplarcanino A, 
	 pepoapp.propietario B,
	 pepoapp.persona C
WHERE A.Ejem_ID = P_Ejem_ID
AND A.Ejem_ID = B.Ejem_ID
AND B.Pers_ID = C.Pers_ID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Detalle_Persona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Detalle_Persona`(P_Pers_DocumentoIdentidad VARCHAR(50))
BEGIN
SELECT
`persona`.`Pers_ID`,
`persona`.`Pers_Nombre`,
`persona`.`Pers_Apellidos`,
`persona`.`Pers_DocumentoIdentidad`,
`persona`.`Pers_DireccionResidencia`,
`persona`.`Pers_DireccionEmpleo`,
`persona`.`Pers_NumeroMovil1`,
`persona`.`Pers_NumeroMovil2`,
`persona`.`Pers_NumeroFijo1`,
`persona`.`Pers_NumeroFijo2`,
`persona`.`Pers_DireccionCorreo`
	FROM `pepoapp`.`persona`
	WHERE `Pers_DocumentoIdentidad` = P_Pers_DocumentoIdentidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Detalle_Tipo_Incidente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Detalle_Tipo_Incidente`(Tiin_ID BIGINT(20))
BEGIN
SELECT
`tipoincidente`.`Tiin_ID`,
`tipoincidente`.`Tiin_Nombre`,
`tipoincidente`.`Tiin_Descripcion`
FROM `pepoapp`.`tipoincidente`
WHERE `tipoincidente`.`Tiin_ID` = Tiin_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Ejemplares` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Ejemplares`(
P_Ejem_Nombre VARCHAR(50),
P_Raza_ID BIGINT(20),
P_Ejem_Destinacion VARCHAR(50))
BEGIN
SET @columnas = ' ejemplarcanino.Ejem_ID, ejemplarcanino.Ejem_Nombre, ejemplarcanino.Raza_ID,raza.Raza_Nombre, ejemplarcanino.Ejem_ColorDominante, ejemplarcanino.Ejem_FechaNacimiento, ejemplarcanino.Ejem_Sexo, ejemplarcanino.Ejem_Destinacion, ejemplarcanino.Ejem_Descripcion';	
SET @condicionales1 = CONCAT(' Ejem_Nombre like ', '''%',P_Ejem_Nombre,'%''');
SET @condicionales2 = CONCAT(' ejemplarcanino.Raza_ID = ',P_Raza_ID);
SET @condicionales3 = CONCAT(' Ejem_Destinacion like ', '''%',P_Ejem_Destinacion,'%''');
SET @condicionales4 = 'ejemplarcanino.Raza_ID = raza.Raza_ID';
SET @tablas = ' from  pepoapp.ejemplarcanino, pepoapp.raza ';
SET @clausulaWhere = '0';
SET @condicional = '';
SET @prue = 'prue';

IF(P_Ejem_Nombre IS NOT NULL) THEN
	SET @condicional = CONCAT(' WHERE ', @condicional,@condicionales1);
	SET @clausulaWhere = @clausulaWhere + 1;
END IF;

IF(P_Raza_ID IS NOT NULL) THEN
	IF(@clausulaWhere = '0') THEN
		SET @condicional = CONCAT(' WHERE ', @condicional,@condicionales2);
		SET @clausulaWhere = @clausulaWhere + 1;
	ELSE
		SET @condicional = CONCAT(@condicional, ' AND ',@condicionales2);
	END IF;
END IF;

IF(P_Ejem_Destinacion IS NOT NULL) THEN
	IF(@clausulaWhere = '0') THEN
		SET @condicional = CONCAT(' WHERE ', @condicional,@condicionales3);
		SET @clausulaWhere = @clausulaWhere + 1;
	ELSE
		SET @condicional = CONCAT(@condicional, ' AND ',@condicionales3);
	END IF;
END IF;


/*
IF(P_Ejem_Nombre IS NOT NULL) THEN 
	SET @condicional = CONCAT(@condicional,' WHERE ',@condicionales1);
	IF(P_Raza_ID IS NOT NULL) THEN
		SET @condicional = CONCAT(@condicional,' AND ',@condicionales2);
		IF(P_Ejem_Destinacion IS NOT NULL) THEN
			SET @condicional = CONCAT(@condicional,' AND ',@condicionales3);
		END IF;
	ELSE
		IF(P_Ejem_Destinacion IS NOT NULL) THEN
			SET @condicional = CONCAT(@condicional,' AND ',condicionales3);
		END IF;
	END IF;	
ELSE
	IF(P_Raza_ID IS NOT NULL) THEN
		SET @condicional = CONCAT(@condicional,' WHERE ',@condicionales2);
		IF(P_Ejem_Destinacion IS NOT NULL) THEN
			SET @condicional = CONCAT(@condicional,' AND ',@condicionales3);
		END IF;
	ELSE
		IF(P_Ejem_Destinacion IS NOT NULL) THEN
			SET @condicional = CONCAT(@condicional,' WHERE ',@condicionales3);
		END IF;
	END IF;		
END IF;
*/
SET @consulta = CONCAT('SELECT ', @columnas , @tablas, @condicional);
PREPARE stmt FROM @consulta;
EXECUTE stmt;
/*select @condicional;*/
DEALLOCATE PREPARE stmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Ejemplares_BK` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Ejemplares_BK`()
BEGIN
SELECT
`ejemplarcanino`.`Ejem_ID`,
`ejemplarcanino`.`Ejem_Nombre`,
`ejemplarcanino`.`Ejem_Raza`,
`ejemplarcanino`.`Ejem_ColorDominante`,
`ejemplarcanino`.`Ejem_FechaNacimiento`,
`ejemplarcanino`.`Ejem_Destinacion`,
`ejemplarcanino`.`Ejem_Descripcion`
	FROM `pepoapp`.`ejemplarcanino`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Personas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Personas`(
P_Pers_DocumentoIdentidad VARCHAR(50)
)
BEGIN

IF(P_Pers_DocumentoIdentidad IS NOT NULL) THEN 
	SELECT
	`persona`.`Pers_ID`,
	`persona`.`Pers_Nombre`,
	`persona`.`Pers_Apellidos`,
	`persona`.`Pers_DocumentoIdentidad`,
	`persona`.`Pers_DireccionResidencia`,
	`persona`.`Pers_DireccionEmpleo`,
	`persona`.`Pers_NumeroMovil1`,
	`persona`.`Pers_NumeroMovil2`,
	`persona`.`Pers_NumeroFijo1`,
	`persona`.`Pers_NumeroFijo2`,
	`persona`.`Pers_DireccionCorreo`
	FROM `pepoapp`.`persona`
	WHERE `persona`.`Pers_DocumentoIdentidad` = P_Pers_DocumentoIdentidad
	AND `persona`.`Pers_Estatus` <> 1;	
ELSE
	SELECT
	`persona`.`Pers_ID`,
	`persona`.`Pers_Nombre`,
	`persona`.`Pers_Apellidos`,
	`persona`.`Pers_DocumentoIdentidad`,
	`persona`.`Pers_DireccionResidencia`,
	`persona`.`Pers_DireccionEmpleo`,
	`persona`.`Pers_NumeroMovil1`,
	`persona`.`Pers_NumeroMovil2`,
	`persona`.`Pers_NumeroFijo1`,
	`persona`.`Pers_NumeroFijo2`,
	`persona`.`Pers_DireccionCorreo`
	FROM `pepoapp`.`persona`
	WHERE `persona`.`Pers_Estatus` <> 1;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Razas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Razas`(
P_Raza_Nombre VARCHAR(50)
)
BEGIN

IF(P_Raza_Nombre IS NOT NULL) THEN 
	SELECT 
		`raza`.`Raza_ID`,
		`raza`.`Raza_Nombre`,
		`raza`.`Raza_Descripcion`,
		`raza`.`Raza_Estatus`
	FROM `pepoapp`.`raza`
	WHERE `raza`.`Raza_Nombre` like CONCAT('%',P_Raza_Nombre,'%');
	
ELSE
	SELECT
		`raza`.`Raza_ID`,
		`raza`.`Raza_Nombre`,
		`raza`.`Raza_Descripcion`,
		`raza`.`Raza_Estatus`
	FROM `pepoapp`.`raza`;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Tipo_Incidente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Tipo_Incidente`(
P_Tiin_Nombre VARCHAR(100)
)
BEGIN
IF(P_Tiin_Nombre IS NOT NULL) THEN 
SELECT
	`tipoincidente`.`Tiin_ID`,
	`tipoincidente`.`Tiin_Nombre`,
	`tipoincidente`.`Tiin_Descripcion`
	FROM `pepoapp`.`tipoincidente`
	WHERE `tipoincidente`.`Tiin_Nombre` LIKE CONCAT('%',P_Tiin_Nombre,'%');
ELSE
	SELECT
	`tipoincidente`.`Tiin_ID`,
	`tipoincidente`.`Tiin_Nombre`,
	`tipoincidente`.`Tiin_Descripcion`
	FROM `pepoapp`.`tipoincidente`;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Registrar_Ejemplar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Registrar_Ejemplar`(
P_Ejem_Nombre char(20),
P_Raza_ID bigint(20),
P_Ejem_Sexo char(50),
P_Ejem_ColorDominante char(100),
P_Ejem_FechaNacimiento date,
P_Ejem_Destinacion char(50),
P_Ejem_Descripcion char(200) ,
P_Ejem_CarnetVacuna LONGBLOB,
P_Ejem_CartaSanidad LONGBLOB ,
P_Ejem_Foto LONGBLOB,
P_Ejem_PolizaSeguro LONGBLOB,
INOUT P_Ejem_ID bigint(20))
BEGIN
INSERT INTO `pepoapp`.`ejemplarcanino`
(`Ejem_Nombre`,
`Raza_ID`,
`Ejem_ColorDominante`,
`Ejem_FechaNacimiento`,
`Ejem_Destinacion`,
`Ejem_Descripcion`,
`Ejem_CarnetVacuna`,
`Ejem_CartaSanidad`,
`Ejem_Foto`,
`Ejem_PolizaSeguro`)
VALUES (
P_Ejem_Nombre,
P_Raza_ID,
P_Ejem_ColorDominante,
P_Ejem_FechaNacimiento,
P_Ejem_Destinacion,
P_Ejem_Descripcion,
P_Ejem_CarnetVacuna,
P_Ejem_CartaSanidad,
P_Ejem_Foto,
P_Ejem_PolizaSeguro);
SET P_Ejem_ID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Registrar_Persona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Registrar_Persona`(
P_Pers_Nombre VARCHAR(50),
P_Pers_Apellidos VARCHAR(100),
P_Pers_DocumentoIdentidad VARCHAR(50),
P_Pers_DireccionResidencia VARCHAR(100),
P_Pers_DireccionEmpleo VARCHAR(100),
P_Pers_NumeroMovil1 VARCHAR(20),
P_Pers_NumeroMovil2 VARCHAR(20),
P_Pers_NumeroFijo1 VARCHAR(20),
P_Pers_NumeroFijo2 VARCHAR(20),
P_Pers_DireccionCorreo VARCHAR(50))
BEGIN
INSERT INTO `pepoapp`.`persona`
(`Pers_Nombre`,
`Pers_Apellidos`,
`Pers_DocumentoIdentidad`,
`Pers_DireccionResidencia`,
`Pers_DireccionEmpleo`,
`Pers_NumeroMovil1`,
`Pers_NumeroMovil2`,
`Pers_NumeroFijo1`,
`Pers_NumeroFijo2`,
`Pers_DireccionCorreo`)
VALUES (P_Pers_Nombre,
P_Pers_Apellidos,
P_Pers_DocumentoIdentidad,
P_Pers_DireccionResidencia,
P_Pers_DireccionEmpleo,
P_Pers_NumeroMovil1,
P_Pers_NumeroMovil2,
P_Pers_NumeroFijo1,
P_Pers_NumeroFijo2,
P_Pers_DireccionCorreo);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Registrar_Propietario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Registrar_Propietario`(
P_Ejem_ID bigint(20),
P_Pers_ID bigint(20))
BEGIN
INSERT INTO `pepoapp`.`propietario`
(`Ejem_ID`,
`Pers_ID`)
VALUES (
P_Ejem_ID,
P_Pers_ID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Registrar_Prueba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Registrar_Prueba`(
P_valor char(50),
INOUT PropertyID bigint(20))
BEGIN
INSERT INTO `pepoapp`.`prueba`
(`valor`)
VALUES (
P_valor);
SET PropertyID = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Registrar_Raza` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Registrar_Raza`(nombre VARCHAR(100), descripcion VARCHAR(250))
BEGIN
INSERT INTO `pepoapp`.`raza`
(`raza`.`Raza_Nombre`,
`raza`.`Raza_Descripcion`)
VALUES (nombre,descripcion);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Registrar_Tipo_Incidente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Registrar_Tipo_Incidente`(nombre VARCHAR(100), descripcion VARCHAR(250))
BEGIN
INSERT INTO `pepoapp`.`tipoincidente`
(`Tiin_Nombre`,
`Tiin_Descripcion`)
VALUES (nombre,descripcion);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `lportal`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `lportal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `lportal`;

--
-- Table structure for table `Account_`
--

DROP TABLE IF EXISTS `Account_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Account_` (
  `accountId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentAccountId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `legalName` varchar(75) DEFAULT NULL,
  `legalId` varchar(75) DEFAULT NULL,
  `legalType` varchar(75) DEFAULT NULL,
  `sicCode` varchar(75) DEFAULT NULL,
  `tickerSymbol` varchar(75) DEFAULT NULL,
  `industry` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `size_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account_`
--

LOCK TABLES `Account_` WRITE;
/*!40000 ALTER TABLE `Account_` DISABLE KEYS */;
INSERT INTO `Account_` VALUES (10255,10253,0,'','2014-06-11 21:08:26','2014-07-22 10:48:24',0,'PepoApp','','','','','','','','');
/*!40000 ALTER TABLE `Account_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `addressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `street1` varchar(75) DEFAULT NULL,
  `street2` varchar(75) DEFAULT NULL,
  `street3` varchar(75) DEFAULT NULL,
  `city` varchar(75) DEFAULT NULL,
  `zip` varchar(75) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `mailing` tinyint(4) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`addressId`)
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
-- Table structure for table `AnnouncementsDelivery`
--

DROP TABLE IF EXISTS `AnnouncementsDelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnouncementsDelivery` (
  `deliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `email` tinyint(4) DEFAULT NULL,
  `sms` tinyint(4) DEFAULT NULL,
  `website` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`deliveryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsDelivery`
--

LOCK TABLES `AnnouncementsDelivery` WRITE;
/*!40000 ALTER TABLE `AnnouncementsDelivery` DISABLE KEYS */;
INSERT INTO `AnnouncementsDelivery` VALUES (11210,10253,11203,'general',0,0,0),(11211,10253,11203,'news',0,0,0),(11212,10253,11203,'test',0,0,0),(11213,10253,10506,'general',0,0,1),(11214,10253,10506,'news',0,0,1),(11215,10253,10506,'test',0,0,1);
/*!40000 ALTER TABLE `AnnouncementsDelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnnouncementsEntry`
--

DROP TABLE IF EXISTS `AnnouncementsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnouncementsEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `content` longtext,
  `url` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `alert` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsEntry`
--

LOCK TABLES `AnnouncementsEntry` WRITE;
/*!40000 ALTER TABLE `AnnouncementsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnouncementsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnnouncementsFlag`
--

DROP TABLE IF EXISTS `AnnouncementsFlag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnouncementsFlag` (
  `flagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`flagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsFlag`
--

LOCK TABLES `AnnouncementsFlag` WRITE;
/*!40000 ALTER TABLE `AnnouncementsFlag` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnouncementsFlag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetCategory`
--

DROP TABLE IF EXISTS `AssetCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetCategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `leftCategoryId` bigint(20) DEFAULT NULL,
  `rightCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `vocabularyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetCategory`
--

LOCK TABLES `AssetCategory` WRITE;
/*!40000 ALTER TABLE `AssetCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetCategoryProperty`
--

DROP TABLE IF EXISTS `AssetCategoryProperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetCategoryProperty` (
  `categoryPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`categoryPropertyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetCategoryProperty`
--

LOCK TABLES `AssetCategoryProperty` WRITE;
/*!40000 ALTER TABLE `AssetCategoryProperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetCategoryProperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetEntries_AssetCategories`
--

DROP TABLE IF EXISTS `AssetEntries_AssetCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetEntries_AssetCategories` (
  `categoryId` bigint(20) NOT NULL,
  `entryId` bigint(20) NOT NULL,
  PRIMARY KEY (`categoryId`,`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetEntries_AssetCategories`
--

LOCK TABLES `AssetEntries_AssetCategories` WRITE;
/*!40000 ALTER TABLE `AssetEntries_AssetCategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetEntries_AssetCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetEntries_AssetTags`
--

DROP TABLE IF EXISTS `AssetEntries_AssetTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetEntries_AssetTags` (
  `entryId` bigint(20) NOT NULL,
  `tagId` bigint(20) NOT NULL,
  PRIMARY KEY (`entryId`,`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetEntries_AssetTags`
--

LOCK TABLES `AssetEntries_AssetTags` WRITE;
/*!40000 ALTER TABLE `AssetEntries_AssetTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetEntries_AssetTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetEntry`
--

DROP TABLE IF EXISTS `AssetEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetEntry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `classTypeId` bigint(20) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `summary` longtext,
  `url` longtext,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetEntry`
--

LOCK TABLES `AssetEntry` WRITE;
/*!40000 ALTER TABLE `AssetEntry` DISABLE KEYS */;
INSERT INTO `AssetEntry` VALUES (10277,10271,10253,10257,'','2014-06-11 21:08:27','2014-06-11 21:08:27',10217,10275,'6ffdb795-53e7-400b-9b0e-7481a5a83f31',0,0,NULL,NULL,NULL,NULL,'text/html','10274','','','','',0,0,0,0),(10301,10291,10253,10295,'Test Test','2014-06-11 21:08:28','2014-06-11 21:08:28',10105,10295,'5442a24f-baec-4bb2-947e-b0075e287cf5',0,0,NULL,NULL,NULL,NULL,'','Test Test','','','','',0,0,0,0),(10417,10410,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30',10217,10414,'9e21cfef-906b-46ff-8942-b12d71bae132',0,0,NULL,NULL,NULL,NULL,'text/html','10413','','','','',0,0,0,0),(10426,10420,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30',10217,10424,'82679055-eec9-44dc-be6d-16e2dcd3c904',0,0,NULL,NULL,NULL,NULL,'text/html','10423','','','','',0,0,0,0),(10435,10429,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30',10217,10433,'c1974e89-a2c4-4ff8-bb57-24b4134f04c8',0,0,NULL,NULL,NULL,NULL,'text/html','10432','','','','',0,0,0,0),(10449,10438,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10217,10447,'9c4bcb5e-5f0f-456d-85dc-23f6adaa3a51',0,0,NULL,NULL,NULL,NULL,'text/html','10446','','','','',0,0,0,0),(10455,10438,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10217,10453,'d0c54a69-efe5-42d2-8a91-67d0e6d01675',0,0,NULL,NULL,NULL,NULL,'text/html','10452','','','','',0,0,0,0),(10461,10438,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10217,10459,'18209b6a-e433-4f7f-be7e-533bb6e723cf',0,0,NULL,NULL,NULL,NULL,'text/html','10458','','','','',0,0,0,0),(10475,10464,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10217,10473,'6a869727-8f6d-4bb4-93bf-46ac321b562e',0,0,NULL,NULL,NULL,NULL,'text/html','10472','','','','',0,0,0,0),(10483,10464,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10217,10481,'0dad790a-b127-4e9d-a3ca-bf47c87a493c',0,0,NULL,NULL,NULL,NULL,'text/html','10480','','','','',0,0,0,0),(10489,10464,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10217,10487,'6f8e65b9-a413-454a-b6c0-1bcd79c95066',0,0,NULL,NULL,NULL,NULL,'text/html','10486','','','','',0,0,0,0),(10495,10464,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10217,10493,'16b34af8-341e-4483-a73c-a097d0164205',0,0,NULL,NULL,NULL,NULL,'text/html','10492','','','','',0,0,0,0),(10512,10291,10253,10506,'Edicson Morales','2014-06-11 21:09:36','2014-06-11 21:09:36',10105,10506,'32a8f9fd-8d08-46d5-8374-911e031a8fb5',0,0,NULL,NULL,NULL,NULL,'','Edicson Morales','','','','',0,0,0,0),(10524,10279,10253,10257,'','2014-06-11 21:09:37','2014-06-11 21:09:37',10110,10522,'867828ab-3df1-4277-8d04-725b9c0c7ccd',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_3','','','','',0,0,0,0),(10527,10279,10253,10257,'','2014-06-11 21:09:37','2014-06-11 21:09:37',10217,10525,'2fb80600-e2d2-4c3c-852e-268bfcf82c1a',0,0,NULL,NULL,NULL,NULL,'text/html','10522','','','','',0,0,0,0),(10533,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10531,'5bafa385-7019-4bd2-a8be-0c24d9ad0aca',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_7','','','','',0,0,0,2),(10537,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10217,10534,'1178be0b-2063-4d91-953f-8ba460382f81',0,0,NULL,NULL,NULL,NULL,'text/html','10531','','','','',0,0,0,0),(10542,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10540,'75c64424-0896-4709-8e4a-6431d8ce5d19',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_11','','','','',0,0,0,0),(10545,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10217,10543,'f68fc345-4962-4da4-b33d-ed6a868b98ef',0,0,NULL,NULL,NULL,NULL,'text/html','10540','','','','',0,0,0,0),(10551,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10548,'0ed6ed2a-b1ce-4f93-bb01-8b98b0bdd6f9',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_12','','','','',0,0,0,0),(10555,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10217,10552,'d95aedc4-a6cd-420d-893b-6c5634a681be',0,0,NULL,NULL,NULL,NULL,'text/html','10548','','','','',0,0,0,0),(10561,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10559,'addc1724-be5f-4dce-914c-4d3ecac83f6e',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_5','','','','',0,0,0,2),(10564,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10217,10562,'2ebed41f-5ba4-49c9-ae6b-d4f2c10f5223',0,0,NULL,NULL,NULL,NULL,'text/html','10559','','','','',0,0,0,0),(10577,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10575,'b7c8cae8-97f5-4fc2-b18b-5dff73214c7a',0,1,NULL,NULL,NULL,NULL,'image/png','welcome_bg_10','','','','',0,0,0,0),(10580,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10217,10578,'1f9a7920-8e99-4220-b564-32edde716b27',0,0,NULL,NULL,NULL,NULL,'text/html','10575','','','','',0,0,0,0),(10594,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10591,'af82a1a5-cda0-4a81-a781-456307acb33d',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_2','','','','',0,0,0,2),(10598,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10217,10595,'07931662-c152-4959-be28-f255ce6c7361',0,0,NULL,NULL,NULL,NULL,'text/html','10591','','','','',0,0,0,0),(10609,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10603,'546ad8bc-3aec-488d-951f-ce5c84472786',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_13','','','','',0,0,0,0),(10612,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10217,10610,'e006f70a-94cf-461b-af88-c35b5359a982',0,0,NULL,NULL,NULL,NULL,'text/html','10603','','','','',0,0,0,0),(10621,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10615,'adb27b76-47f0-487f-bbb5-f53a80696c62',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_9','','','','',0,0,0,4),(10624,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10217,10622,'0c04ead8-d480-43e7-a550-9f50e64984cb',0,0,NULL,NULL,NULL,NULL,'text/html','10615','','','','',0,0,0,0),(10633,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10627,'7a39b107-66d5-48af-a019-0e6bd719a1d0',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_1','','','','',0,0,0,4),(10636,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10217,10634,'33952a9b-ccd4-44df-8bb7-ffa61d0a2459',0,0,NULL,NULL,NULL,NULL,'text/html','10627','','','','',0,0,0,0),(10645,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10110,10639,'91c5cd03-b85c-4621-bee5-90ba8ccd35ef',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_4','','','','',0,0,0,2),(10648,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10217,10646,'82099037-09ed-4b7f-9621-544888f0ec12',0,0,NULL,NULL,NULL,NULL,'text/html','10639','','','','',0,0,0,0),(10657,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10110,10651,'049d5164-f2a6-4b7e-9cfa-2f71d6f2257b',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_8','','','','',0,0,0,5),(10660,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10217,10658,'d19c5957-e344-48e1-8ad0-6d8305f44e07',0,0,NULL,NULL,NULL,NULL,'text/html','10651','','','','',0,0,0,0),(10669,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10110,10663,'e9235cdb-1b9e-4f7c-83b7-080a8aa4e67a',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_6','','','','',0,0,0,0),(10672,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10217,10670,'1d743059-7d65-4227-9584-17d3a059c793',0,0,NULL,NULL,NULL,NULL,'text/html','10663','','','','',0,0,0,0),(10682,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10208,10680,'4f5a084a-1f78-4f7a-a88b-1ee013689368',0,1,NULL,NULL,'2010-02-01 00:00:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Who Is Using Liferay</Title></root>','','','','',0,0,0,8),(10685,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10217,10683,'b7e4f7a7-6aae-4b35-8108-8b6f59b36f8d',0,0,NULL,NULL,NULL,NULL,'text/html','10680','','','','',0,0,0,0),(10694,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10208,10692,'54082afe-87c6-4d54-a9d3-1eb88aaea014',10688,1,NULL,NULL,'2010-02-01 00:00:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Liferay Benefits</Title></root>','','','','',0,0,0,3),(10697,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10217,10695,'47fdfa81-fb4f-4f6a-921f-847068b2492c',0,0,NULL,NULL,NULL,NULL,'text/html','10692','','','','',0,0,0,0),(10702,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10208,10700,'97bae23a-2205-44ba-9717-c9e42a75a945',10688,1,NULL,NULL,'2010-02-01 00:00:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">What We Do</Title></root>','','','','',0,0,0,20),(10705,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10217,10703,'7258736e-bf20-467e-a1ac-ee85f90a82de',0,0,NULL,NULL,NULL,NULL,'text/html','10700','','','','',0,0,0,0),(10910,10904,10253,10506,'Edicson Morales','2014-06-11 22:27:26','2014-06-11 22:27:26',10217,10908,'047783bd-a052-43da-951d-40becd812343',0,0,NULL,NULL,NULL,NULL,'text/html','10907','','','','',0,0,0,0),(10919,10913,10253,10506,'Edicson Morales','2014-06-11 22:28:54','2014-06-11 22:28:54',10217,10917,'e3fe2083-ab68-4bca-9ebf-899bf6be43e1',0,0,NULL,NULL,NULL,NULL,'text/html','10916','','','','',0,0,0,0),(10928,10922,10253,10506,'Edicson Morales','2014-06-11 22:29:13','2014-06-11 22:29:13',10217,10926,'a55a3f96-3fc7-4055-9c88-b8a2a65b6235',0,0,NULL,NULL,NULL,NULL,'text/html','10925','','','','',0,0,0,0),(10937,10931,10253,10506,'Edicson Morales','2014-06-11 22:29:22','2014-06-11 22:29:22',10217,10935,'dba0845a-8da3-4845-9ba0-9c8c90e9ffca',0,0,NULL,NULL,NULL,NULL,'text/html','10934','','','','',0,0,0,0),(10946,10940,10253,10506,'Edicson Morales','2014-06-11 22:29:32','2014-06-11 22:29:32',10217,10944,'05f0596f-98ff-4563-9292-0a71be8e0bf4',0,0,NULL,NULL,NULL,NULL,'text/html','10943','','','','',0,0,0,0),(11007,10279,10253,10506,'Edicson Morales','2014-06-11 23:14:37','2014-06-11 23:14:37',10217,11005,'eb560ab8-a853-4bf8-b77a-c9a36e87d693',0,0,NULL,NULL,NULL,NULL,'text/html','11004','','','','',0,0,0,0),(11209,10291,10253,10506,'Edicson Morales','2014-06-12 18:22:48','2014-06-12 18:25:36',10105,11203,'0f948cfd-ed3e-4ff2-8d33-e35e2b60dacf',0,0,NULL,NULL,NULL,NULL,'','Pepo','','','','',0,0,0,0),(11229,10279,10253,10506,'Edicson Morales','2014-06-12 18:33:40','2014-06-12 18:33:40',10217,11227,'7ad01454-2524-4a7a-b74f-6f10f94beea8',0,0,NULL,NULL,NULL,NULL,'text/html','11226','','','','',0,0,0,0),(11237,10279,10253,10506,'Edicson Morales','2014-06-12 18:34:45','2014-06-12 18:34:45',10217,11235,'20a02b2e-8a30-466d-a864-cc46db556a01',0,0,NULL,NULL,NULL,NULL,'text/html','11234','','','','',0,0,0,0),(11243,10279,10253,10506,'Edicson Morales','2014-06-12 18:36:27','2014-06-12 18:36:27',10217,11241,'b5980e1e-dcc0-48cb-9685-a3b49f8d51c5',0,0,NULL,NULL,NULL,NULL,'text/html','11240','','','','',0,0,0,0),(11249,10279,10253,10506,'Edicson Morales','2014-06-12 18:36:52','2014-06-12 18:36:52',10217,11247,'5ba03d63-97a5-415b-a407-affe911ff741',0,0,NULL,NULL,NULL,NULL,'text/html','11246','','','','',0,0,0,0),(11309,11303,10253,10506,'Edicson Morales','2014-06-12 22:29:27','2014-06-12 22:29:27',10217,11307,'21c5d874-f577-4596-9e7e-399a6ff8b72d',0,0,NULL,NULL,NULL,NULL,'text/html','11306','','','','',0,0,0,0),(11329,10279,10253,10506,'Edicson Morales','2014-06-12 23:23:48','2014-06-12 23:23:48',10217,11327,'1626858c-baeb-4e77-a771-ead8f929c181',0,0,NULL,NULL,NULL,NULL,'text/html','11326','','','','',0,0,0,0),(11401,10291,10253,10257,'','2014-06-13 16:07:39','2014-07-10 08:38:57',10101,10279,'',0,0,NULL,NULL,NULL,NULL,'','PepoApp','','','','',0,0,0,0),(11409,11403,10253,10506,'Edicson Morales','2014-06-13 18:39:37','2014-06-13 18:39:37',10217,11407,'059a694e-530b-4501-856e-4db293097b74',0,0,NULL,NULL,NULL,NULL,'text/html','11406','','','','',0,0,0,0),(11418,11412,10253,10506,'Edicson Morales','2014-06-13 18:40:07','2014-06-13 18:40:07',10217,11416,'38ee4b83-535d-4d8a-b02f-efb4beb0596b',0,0,NULL,NULL,NULL,NULL,'text/html','11415','','','','',0,0,0,0),(11427,11421,10253,10506,'Edicson Morales','2014-06-13 18:40:27','2014-06-13 18:40:27',10217,11425,'9fbe5128-49f2-4154-a7ca-4f4d1e2d2d5b',0,0,NULL,NULL,NULL,NULL,'text/html','11424','','','','',0,0,0,0),(11436,11430,10253,10506,'Edicson Morales','2014-06-13 18:40:42','2014-06-13 18:40:42',10217,11434,'9e3c1105-e1f2-4457-8e24-141613ba2dcb',0,0,NULL,NULL,NULL,NULL,'text/html','11433','','','','',0,0,0,0),(11446,10279,10253,10506,'Edicson Morales','2014-06-13 20:55:17','2014-06-13 20:55:17',10217,11444,'92083451-358d-4ef4-8422-9fd966fd69bf',0,0,NULL,NULL,NULL,NULL,'text/html','11443','','','','',0,0,0,0),(11509,10279,10253,10506,'Edicson Morales','2014-06-15 12:51:36','2014-06-15 12:51:36',10217,11507,'25d77fe5-5b27-4bb7-b8e0-3e12608544db',0,0,NULL,NULL,NULL,NULL,'text/html','11506','','','','',0,0,0,0),(11607,10279,10253,10506,'Edicson Morales','2014-06-15 13:36:55','2014-06-15 13:36:55',10217,11605,'c5f7c4e8-0d57-4de9-a350-9e6ccadaea3d',0,0,NULL,NULL,NULL,NULL,'text/html','11604','','','','',0,0,0,0),(11904,10279,10253,10506,'Edicson Morales','2014-07-26 08:41:18','2014-07-26 08:41:18',10217,11902,'6fc4acc9-d933-4360-bdd8-ca8b9d2fcb69',0,0,NULL,NULL,NULL,NULL,'text/html','11901','','','','',0,0,0,0);
/*!40000 ALTER TABLE `AssetEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetLink`
--

DROP TABLE IF EXISTS `AssetLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetLink` (
  `linkId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId1` bigint(20) DEFAULT NULL,
  `entryId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`linkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetLink`
--

LOCK TABLES `AssetLink` WRITE;
/*!40000 ALTER TABLE `AssetLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetTag`
--

DROP TABLE IF EXISTS `AssetTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetTag` (
  `tagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetTag`
--

LOCK TABLES `AssetTag` WRITE;
/*!40000 ALTER TABLE `AssetTag` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetTagProperty`
--

DROP TABLE IF EXISTS `AssetTagProperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetTagProperty` (
  `tagPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tagPropertyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetTagProperty`
--

LOCK TABLES `AssetTagProperty` WRITE;
/*!40000 ALTER TABLE `AssetTagProperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTagProperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetTagStats`
--

DROP TABLE IF EXISTS `AssetTagStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetTagStats` (
  `tagStatsId` bigint(20) NOT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagStatsId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetTagStats`
--

LOCK TABLES `AssetTagStats` WRITE;
/*!40000 ALTER TABLE `AssetTagStats` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTagStats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetVocabulary`
--

DROP TABLE IF EXISTS `AssetVocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetVocabulary` (
  `uuid_` varchar(75) DEFAULT NULL,
  `vocabularyId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `settings_` longtext,
  PRIMARY KEY (`vocabularyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetVocabulary`
--

LOCK TABLES `AssetVocabulary` WRITE;
/*!40000 ALTER TABLE `AssetVocabulary` DISABLE KEYS */;
INSERT INTO `AssetVocabulary` VALUES ('c29a3252-a2b5-44b6-b120-f3ada17d9ff1',10416,10291,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','','');
/*!40000 ALTER TABLE `AssetVocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogsEntry`
--

DROP TABLE IF EXISTS `BlogsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogsEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `content` longtext,
  `displayDate` datetime DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `allowTrackbacks` tinyint(4) DEFAULT NULL,
  `trackbacks` longtext,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogsEntry`
--

LOCK TABLES `BlogsEntry` WRITE;
/*!40000 ALTER TABLE `BlogsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogsStatsUser`
--

DROP TABLE IF EXISTS `BlogsStatsUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogsStatsUser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `entryCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `ratingsTotalEntries` int(11) DEFAULT NULL,
  `ratingsTotalScore` double DEFAULT NULL,
  `ratingsAverageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogsStatsUser`
--

LOCK TABLES `BlogsStatsUser` WRITE;
/*!40000 ALTER TABLE `BlogsStatsUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogsStatsUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookmarksEntry`
--

DROP TABLE IF EXISTS `BookmarksEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BookmarksEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `description` longtext,
  `visits` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookmarksEntry`
--

LOCK TABLES `BookmarksEntry` WRITE;
/*!40000 ALTER TABLE `BookmarksEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `BookmarksEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookmarksFolder`
--

DROP TABLE IF EXISTS `BookmarksFolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BookmarksFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookmarksFolder`
--

LOCK TABLES `BookmarksFolder` WRITE;
/*!40000 ALTER TABLE `BookmarksFolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `BookmarksFolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BrowserTracker`
--

DROP TABLE IF EXISTS `BrowserTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BrowserTracker` (
  `browserTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `browserKey` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`browserTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BrowserTracker`
--

LOCK TABLES `BrowserTracker` WRITE;
/*!40000 ALTER TABLE `BrowserTracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `BrowserTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CalEvent`
--

DROP TABLE IF EXISTS `CalEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalEvent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `eventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `location` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `durationHour` int(11) DEFAULT NULL,
  `durationMinute` int(11) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `timeZoneSensitive` tinyint(4) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `repeating` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `remindBy` int(11) DEFAULT NULL,
  `firstReminder` int(11) DEFAULT NULL,
  `secondReminder` int(11) DEFAULT NULL,
  PRIMARY KEY (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalEvent`
--

LOCK TABLES `CalEvent` WRITE;
/*!40000 ALTER TABLE `CalEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `CalEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClassName_`
--

DROP TABLE IF EXISTS `ClassName_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClassName_` (
  `classNameId` bigint(20) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClassName_`
--

LOCK TABLES `ClassName_` WRITE;
/*!40000 ALTER TABLE `ClassName_` DISABLE KEYS */;
INSERT INTO `ClassName_` VALUES (10101,'com.liferay.portal.model.Group'),(10102,'com.liferay.portal.model.Layout'),(10103,'com.liferay.portal.model.Organization'),(10104,'com.liferay.portal.model.Role'),(10105,'com.liferay.portal.model.User'),(10106,'com.liferay.portal.model.UserGroup'),(10107,'com.liferay.portlet.blogs.model.BlogsEntry'),(10108,'com.liferay.portlet.bookmarks.model.BookmarksEntry'),(10109,'com.liferay.portlet.calendar.model.CalEvent'),(10110,'com.liferay.portlet.documentlibrary.model.DLFileEntry'),(10111,'com.liferay.portlet.messageboards.model.MBMessage'),(10112,'com.liferay.portlet.messageboards.model.MBThread'),(10113,'com.liferay.portlet.wiki.model.WikiPage'),(10114,'com.liferay.counter.model.Counter'),(10115,'com.liferay.portal.kernel.workflow.WorkflowTask'),(10116,'com.liferay.portal.model.Account'),(10117,'com.liferay.portal.model.Address'),(10118,'com.liferay.portal.model.BrowserTracker'),(10119,'com.liferay.portal.model.ClassName'),(10120,'com.liferay.portal.model.ClusterGroup'),(10121,'com.liferay.portal.model.Company'),(10122,'com.liferay.portal.model.Contact'),(10123,'com.liferay.portal.model.Country'),(10124,'com.liferay.portal.model.EmailAddress'),(10125,'com.liferay.portal.model.Image'),(10126,'com.liferay.portal.model.LayoutBranch'),(10127,'com.liferay.portal.model.LayoutPrototype'),(10128,'com.liferay.portal.model.LayoutRevision'),(10129,'com.liferay.portal.model.LayoutSet'),(10130,'com.liferay.portal.model.LayoutSetBranch'),(10131,'com.liferay.portal.model.LayoutSetPrototype'),(10132,'com.liferay.portal.model.ListType'),(10133,'com.liferay.portal.model.Lock'),(10134,'com.liferay.portal.model.MembershipRequest'),(10135,'com.liferay.portal.model.OrgGroupPermission'),(10136,'com.liferay.portal.model.OrgGroupRole'),(10137,'com.liferay.portal.model.OrgLabor'),(10138,'com.liferay.portal.model.PasswordPolicy'),(10139,'com.liferay.portal.model.PasswordPolicyRel'),(10140,'com.liferay.portal.model.PasswordTracker'),(10141,'com.liferay.portal.model.Permission'),(10142,'com.liferay.portal.model.Phone'),(10143,'com.liferay.portal.model.PluginSetting'),(10144,'com.liferay.portal.model.PortalPreferences'),(10145,'com.liferay.portal.model.Portlet'),(10146,'com.liferay.portal.model.PortletItem'),(10147,'com.liferay.portal.model.PortletPreferences'),(10148,'com.liferay.portal.model.Region'),(10149,'com.liferay.portal.model.Release'),(10150,'com.liferay.portal.model.Repository'),(10151,'com.liferay.portal.model.RepositoryEntry'),(10152,'com.liferay.portal.model.Resource'),(10153,'com.liferay.portal.model.ResourceAction'),(10154,'com.liferay.portal.model.ResourceBlock'),(10155,'com.liferay.portal.model.ResourceBlockPermission'),(10156,'com.liferay.portal.model.ResourceCode'),(10157,'com.liferay.portal.model.ResourcePermission'),(10158,'com.liferay.portal.model.ResourceTypePermission'),(10159,'com.liferay.portal.model.ServiceComponent'),(10160,'com.liferay.portal.model.Shard'),(10161,'com.liferay.portal.model.Subscription'),(10162,'com.liferay.portal.model.Team'),(10163,'com.liferay.portal.model.Ticket'),(10164,'com.liferay.portal.model.UserGroupGroupRole'),(10165,'com.liferay.portal.model.UserGroupRole'),(10166,'com.liferay.portal.model.UserIdMapper'),(10167,'com.liferay.portal.model.UserNotificationEvent'),(10168,'com.liferay.portal.model.UserTracker'),(10169,'com.liferay.portal.model.UserTrackerPath'),(10170,'com.liferay.portal.model.VirtualHost'),(10171,'com.liferay.portal.model.WebDAVProps'),(10172,'com.liferay.portal.model.Website'),(10173,'com.liferay.portal.model.WorkflowDefinitionLink'),(10174,'com.liferay.portal.model.WorkflowInstanceLink'),(10175,'com.liferay.portlet.announcements.model.AnnouncementsDelivery'),(10176,'com.liferay.portlet.announcements.model.AnnouncementsEntry'),(10177,'com.liferay.portlet.announcements.model.AnnouncementsFlag'),(10178,'com.liferay.portlet.asset.model.AssetCategory'),(10179,'com.liferay.portlet.asset.model.AssetCategoryProperty'),(10180,'com.liferay.portlet.asset.model.AssetEntry'),(10181,'com.liferay.portlet.asset.model.AssetLink'),(10182,'com.liferay.portlet.asset.model.AssetTag'),(10183,'com.liferay.portlet.asset.model.AssetTagProperty'),(10184,'com.liferay.portlet.asset.model.AssetTagStats'),(10185,'com.liferay.portlet.asset.model.AssetVocabulary'),(10186,'com.liferay.portlet.blogs.model.BlogsStatsUser'),(10187,'com.liferay.portlet.bookmarks.model.BookmarksFolder'),(10188,'com.liferay.portlet.documentlibrary.model.DLContent'),(10189,'com.liferay.portlet.documentlibrary.model.DLFileEntryMetadata'),(10190,'com.liferay.portlet.documentlibrary.model.DLFileEntryType'),(10191,'com.liferay.portlet.documentlibrary.model.DLFileRank'),(10192,'com.liferay.portlet.documentlibrary.model.DLFileShortcut'),(10193,'com.liferay.portlet.documentlibrary.model.DLFileVersion'),(10194,'com.liferay.portlet.documentlibrary.model.DLFolder'),(10195,'com.liferay.portlet.documentlibrary.model.DLSync'),(10196,'com.liferay.portlet.dynamicdatalists.model.DDLRecord'),(10197,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet'),(10198,'com.liferay.portlet.dynamicdatalists.model.DDLRecordVersion'),(10199,'com.liferay.portlet.dynamicdatamapping.model.DDMContent'),(10200,'com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink'),(10201,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure'),(10202,'com.liferay.portlet.dynamicdatamapping.model.DDMStructureLink'),(10203,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate'),(10204,'com.liferay.portlet.expando.model.ExpandoColumn'),(10205,'com.liferay.portlet.expando.model.ExpandoRow'),(10206,'com.liferay.portlet.expando.model.ExpandoTable'),(10207,'com.liferay.portlet.expando.model.ExpandoValue'),(10208,'com.liferay.portlet.journal.model.JournalArticle'),(10209,'com.liferay.portlet.journal.model.JournalArticleImage'),(10210,'com.liferay.portlet.journal.model.JournalArticleResource'),(10211,'com.liferay.portlet.journal.model.JournalContentSearch'),(10212,'com.liferay.portlet.journal.model.JournalFeed'),(10213,'com.liferay.portlet.journal.model.JournalStructure'),(10214,'com.liferay.portlet.journal.model.JournalTemplate'),(10215,'com.liferay.portlet.messageboards.model.MBBan'),(10216,'com.liferay.portlet.messageboards.model.MBCategory'),(10217,'com.liferay.portlet.messageboards.model.MBDiscussion'),(10218,'com.liferay.portlet.messageboards.model.MBMailingList'),(10219,'com.liferay.portlet.messageboards.model.MBStatsUser'),(10220,'com.liferay.portlet.messageboards.model.MBThreadFlag'),(10221,'com.liferay.portlet.mobiledevicerules.model.MDRAction'),(10222,'com.liferay.portlet.mobiledevicerules.model.MDRRule'),(10223,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup'),(10224,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance'),(10225,'com.liferay.portlet.polls.model.PollsChoice'),(10226,'com.liferay.portlet.polls.model.PollsQuestion'),(10227,'com.liferay.portlet.polls.model.PollsVote'),(10228,'com.liferay.portlet.ratings.model.RatingsEntry'),(10229,'com.liferay.portlet.ratings.model.RatingsStats'),(10230,'com.liferay.portlet.shopping.model.ShoppingCart'),(10231,'com.liferay.portlet.shopping.model.ShoppingCategory'),(10232,'com.liferay.portlet.shopping.model.ShoppingCoupon'),(10233,'com.liferay.portlet.shopping.model.ShoppingItem'),(10234,'com.liferay.portlet.shopping.model.ShoppingItemField'),(10235,'com.liferay.portlet.shopping.model.ShoppingItemPrice'),(10236,'com.liferay.portlet.shopping.model.ShoppingOrder'),(10237,'com.liferay.portlet.shopping.model.ShoppingOrderItem'),(10238,'com.liferay.portlet.social.model.SocialActivity'),(10239,'com.liferay.portlet.social.model.SocialActivityAchievement'),(10240,'com.liferay.portlet.social.model.SocialActivityCounter'),(10241,'com.liferay.portlet.social.model.SocialActivityLimit'),(10242,'com.liferay.portlet.social.model.SocialActivitySetting'),(10243,'com.liferay.portlet.social.model.SocialRelation'),(10244,'com.liferay.portlet.social.model.SocialRequest'),(10245,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion'),(10246,'com.liferay.portlet.softwarecatalog.model.SCLicense'),(10247,'com.liferay.portlet.softwarecatalog.model.SCProductEntry'),(10248,'com.liferay.portlet.softwarecatalog.model.SCProductScreenshot'),(10249,'com.liferay.portlet.softwarecatalog.model.SCProductVersion'),(10250,'com.liferay.portlet.usernotifications.model.UserNotificationEvent'),(10251,'com.liferay.portlet.wiki.model.WikiNode'),(10252,'com.liferay.portlet.wiki.model.WikiPageResource'),(10287,'com.liferay.portal.model.UserPersonalSite'),(10515,'com.liferay.marketplace.model.App'),(10516,'com.liferay.marketplace.model.Module'),(10521,'com.liferay.portal.repository.liferayrepository.LiferayRepository');
/*!40000 ALTER TABLE `ClassName_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClusterGroup`
--

DROP TABLE IF EXISTS `ClusterGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClusterGroup` (
  `clusterGroupId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `clusterNodeIds` varchar(75) DEFAULT NULL,
  `wholeCluster` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`clusterGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClusterGroup`
--

LOCK TABLES `ClusterGroup` WRITE;
/*!40000 ALTER TABLE `ClusterGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClusterGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `companyId` bigint(20) NOT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `webId` varchar(75) DEFAULT NULL,
  `key_` longtext,
  `mx` varchar(75) DEFAULT NULL,
  `homeURL` longtext,
  `logoId` bigint(20) DEFAULT NULL,
  `system` tinyint(4) DEFAULT NULL,
  `maxUsers` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES (10253,10255,'liferay.com','rO0ABXNyABRqYXZhLnNlY3VyaXR5LktleVJlcL35T7OImqVDAgAETAAJYWxnb3JpdGhtdAASTGphdmEvbGFuZy9TdHJpbmc7WwAHZW5jb2RlZHQAAltCTAAGZm9ybWF0cQB+AAFMAAR0eXBldAAbTGphdmEvc2VjdXJpdHkvS2V5UmVwJFR5cGU7eHB0AANERVN1cgACW0Ks8xf4BghU4AIAAHhwAAAACInQ0zQ4XQjBdAADUkFXfnIAGWphdmEuc2VjdXJpdHkuS2V5UmVwJFR5cGUAAAAAAAAAABIAAHhyAA5qYXZhLmxhbmcuRW51bQAAAAAAAAAAEgAAeHB0AAZTRUNSRVQ=','liferay.com','http://localhost:8080/web/guest/bienvenida',0,0,0,1);
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contact_`
--

DROP TABLE IF EXISTS `Contact_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contact_` (
  `contactId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `parentContactId` bigint(20) DEFAULT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `prefixId` int(11) DEFAULT NULL,
  `suffixId` int(11) DEFAULT NULL,
  `male` tinyint(4) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `smsSn` varchar(75) DEFAULT NULL,
  `aimSn` varchar(75) DEFAULT NULL,
  `facebookSn` varchar(75) DEFAULT NULL,
  `icqSn` varchar(75) DEFAULT NULL,
  `jabberSn` varchar(75) DEFAULT NULL,
  `msnSn` varchar(75) DEFAULT NULL,
  `mySpaceSn` varchar(75) DEFAULT NULL,
  `skypeSn` varchar(75) DEFAULT NULL,
  `twitterSn` varchar(75) DEFAULT NULL,
  `ymSn` varchar(75) DEFAULT NULL,
  `employeeStatusId` varchar(75) DEFAULT NULL,
  `employeeNumber` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobClass` varchar(75) DEFAULT NULL,
  `hoursOfOperation` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contactId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contact_`
--

LOCK TABLES `Contact_` WRITE;
/*!40000 ALTER TABLE `Contact_` DISABLE KEYS */;
INSERT INTO `Contact_` VALUES (10258,10253,10257,'','2014-06-11 21:08:26','2014-06-11 21:08:26',10255,0,'','','',0,0,1,'2014-06-11 21:08:26','','','','','','','','','','','','','','',''),(10296,10253,10295,'','2014-06-11 21:08:28','2014-06-11 21:08:28',10255,0,'Test','','Test',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10507,10253,10506,'','2014-06-11 21:09:36','2014-06-11 21:09:36',10255,0,'Edicson','','Morales',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11204,10253,10506,'Edicson Morales','2014-06-12 18:22:48','2014-06-12 18:25:36',10255,0,'Pepo','','',11015,11025,1,'1970-01-01 00:00:00','','','','','','','','','','','','','Pepo App','','');
/*!40000 ALTER TABLE `Contact_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Counter`
--

DROP TABLE IF EXISTS `Counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Counter` (
  `name` varchar(75) NOT NULL,
  `currentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Counter`
--

LOCK TABLES `Counter` WRITE;
/*!40000 ALTER TABLE `Counter` DISABLE KEYS */;
INSERT INTO `Counter` VALUES ('com.liferay.counter.model.Counter',12200),('com.liferay.portal.model.Layout#10271#true',1),('com.liferay.portal.model.Layout#10279#false',9),('com.liferay.portal.model.Layout#10279#true',5),('com.liferay.portal.model.Layout#10410#true',1),('com.liferay.portal.model.Layout#10420#true',1),('com.liferay.portal.model.Layout#10429#true',1),('com.liferay.portal.model.Layout#10438#true',3),('com.liferay.portal.model.Layout#10464#true',4),('com.liferay.portal.model.Layout#10904#true',1),('com.liferay.portal.model.Layout#10913#true',1),('com.liferay.portal.model.Layout#10922#true',1),('com.liferay.portal.model.Layout#10931#true',1),('com.liferay.portal.model.Layout#10940#true',1),('com.liferay.portal.model.Layout#11303#true',1),('com.liferay.portal.model.Layout#11403#true',1),('com.liferay.portal.model.Layout#11412#true',1),('com.liferay.portal.model.Layout#11421#true',1),('com.liferay.portal.model.Layout#11430#true',1),('com.liferay.portal.model.Permission',100),('com.liferay.portal.model.Resource',100),('com.liferay.portal.model.ResourceAction',1500),('com.liferay.portal.model.ResourcePermission',1900),('com.liferay.portlet.documentlibrary.model.DLFileEntry',100),('com.liferay.portlet.social.model.SocialActivity',100);
/*!40000 ALTER TABLE `Counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Country` (
  `countryId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `a2` varchar(75) DEFAULT NULL,
  `a3` varchar(75) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `idd_` varchar(75) DEFAULT NULL,
  `zipRequired` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` VALUES (1,'Canada','CA','CAN','124','001',1,1),(2,'China','CN','CHN','156','086',1,1),(3,'France','FR','FRA','250','033',1,1),(4,'Germany','DE','DEU','276','049',1,1),(5,'Hong Kong','HK','HKG','344','852',1,1),(6,'Hungary','HU','HUN','348','036',1,1),(7,'Israel','IL','ISR','376','972',1,1),(8,'Italy','IT','ITA','380','039',1,1),(9,'Japan','JP','JPN','392','081',1,1),(10,'South Korea','KR','KOR','410','082',1,1),(11,'Netherlands','NL','NLD','528','031',1,1),(12,'Portugal','PT','PRT','620','351',1,1),(13,'Russia','RU','RUS','643','007',1,1),(14,'Singapore','SG','SGP','702','065',1,1),(15,'Spain','ES','ESP','724','034',1,1),(16,'Turkey','TR','TUR','792','090',1,1),(17,'Vietnam','VN','VNM','704','084',1,1),(18,'United Kingdom','GB','GBR','826','044',1,1),(19,'United States','US','USA','840','001',1,1),(20,'Afghanistan','AF','AFG','4','093',1,1),(21,'Albania','AL','ALB','8','355',1,1),(22,'Algeria','DZ','DZA','12','213',1,1),(23,'American Samoa','AS','ASM','16','684',1,1),(24,'Andorra','AD','AND','20','376',1,1),(25,'Angola','AO','AGO','24','244',0,1),(26,'Anguilla','AI','AIA','660','264',1,1),(27,'Antarctica','AQ','ATA','10','672',1,1),(28,'Antigua','AG','ATG','28','268',0,1),(29,'Argentina','AR','ARG','32','054',1,1),(30,'Armenia','AM','ARM','51','374',1,1),(31,'Aruba','AW','ABW','533','297',0,1),(32,'Australia','AU','AUS','36','061',1,1),(33,'Austria','AT','AUT','40','043',1,1),(34,'Azerbaijan','AZ','AZE','31','994',1,1),(35,'Bahamas','BS','BHS','44','242',0,1),(36,'Bahrain','BH','BHR','48','973',1,1),(37,'Bangladesh','BD','BGD','50','880',1,1),(38,'Barbados','BB','BRB','52','246',1,1),(39,'Belarus','BY','BLR','112','375',1,1),(40,'Belgium','BE','BEL','56','032',1,1),(41,'Belize','BZ','BLZ','84','501',0,1),(42,'Benin','BJ','BEN','204','229',0,1),(43,'Bermuda','BM','BMU','60','441',1,1),(44,'Bhutan','BT','BTN','64','975',1,1),(45,'Bolivia','BO','BOL','68','591',1,1),(46,'Bosnia-Herzegovina','BA','BIH','70','387',1,1),(47,'Botswana','BW','BWA','72','267',0,1),(48,'Brazil','BR','BRA','76','055',1,1),(49,'British Virgin Islands','VG','VGB','92','284',1,1),(50,'Brunei','BN','BRN','96','673',1,1),(51,'Bulgaria','BG','BGR','100','359',1,1),(52,'Burkina Faso','BF','BFA','854','226',0,1),(53,'Burma (Myanmar)','MM','MMR','104','095',1,1),(54,'Burundi','BI','BDI','108','257',0,1),(55,'Cambodia','KH','KHM','116','855',1,1),(56,'Cameroon','CM','CMR','120','237',1,1),(57,'Cape Verde Island','CV','CPV','132','238',1,1),(58,'Cayman Islands','KY','CYM','136','345',1,1),(59,'Central African Republic','CF','CAF','140','236',0,1),(60,'Chad','TD','TCD','148','235',1,1),(61,'Chile','CL','CHL','152','056',1,1),(62,'Christmas Island','CX','CXR','162','061',1,1),(63,'Cocos Islands','CC','CCK','166','061',1,1),(64,'Colombia','CO','COL','170','057',1,1),(65,'Comoros','KM','COM','174','269',0,1),(66,'Republic of Congo','CD','COD','180','242',0,1),(67,'Democratic Republic of Congo','CG','COG','178','243',0,1),(68,'Cook Islands','CK','COK','184','682',0,1),(69,'Costa Rica','CR','CRI','188','506',1,1),(70,'Croatia','HR','HRV','191','385',1,1),(71,'Cuba','CU','CUB','192','053',1,1),(72,'Cyprus','CY','CYP','196','357',1,1),(73,'Czech Republic','CZ','CZE','203','420',1,1),(74,'Denmark','DK','DNK','208','045',1,1),(75,'Djibouti','DJ','DJI','262','253',0,1),(76,'Dominica','DM','DMA','212','767',0,1),(77,'Dominican Republic','DO','DOM','214','809',1,1),(78,'Ecuador','EC','ECU','218','593',1,1),(79,'Egypt','EG','EGY','818','020',1,1),(80,'El Salvador','SV','SLV','222','503',1,1),(81,'Equatorial Guinea','GQ','GNQ','226','240',0,1),(82,'Eritrea','ER','ERI','232','291',0,1),(83,'Estonia','EE','EST','233','372',1,1),(84,'Ethiopia','ET','ETH','231','251',1,1),(85,'Faeroe Islands','FO','FRO','234','298',1,1),(86,'Falkland Islands','FK','FLK','238','500',1,1),(87,'Fiji Islands','FJ','FJI','242','679',0,1),(88,'Finland','FI','FIN','246','358',1,1),(89,'French Guiana','GF','GUF','254','594',1,1),(90,'French Polynesia','PF','PYF','258','689',1,1),(91,'Gabon','GA','GAB','266','241',1,1),(92,'Gambia','GM','GMB','270','220',0,1),(93,'Georgia','GE','GEO','268','995',1,1),(94,'Ghana','GH','GHA','288','233',0,1),(95,'Gibraltar','GI','GIB','292','350',1,1),(96,'Greece','GR','GRC','300','030',1,1),(97,'Greenland','GL','GRL','304','299',1,1),(98,'Grenada','GD','GRD','308','473',0,1),(99,'Guadeloupe','GP','GLP','312','590',1,1),(100,'Guam','GU','GUM','316','671',1,1),(101,'Guatemala','GT','GTM','320','502',1,1),(102,'Guinea','GN','GIN','324','224',0,1),(103,'Guinea-Bissau','GW','GNB','624','245',1,1),(104,'Guyana','GY','GUY','328','592',0,1),(105,'Haiti','HT','HTI','332','509',1,1),(106,'Honduras','HN','HND','340','504',1,1),(107,'Iceland','IS','ISL','352','354',1,1),(108,'India','IN','IND','356','091',1,1),(109,'Indonesia','ID','IDN','360','062',1,1),(110,'Iran','IR','IRN','364','098',1,1),(111,'Iraq','IQ','IRQ','368','964',1,1),(112,'Ireland','IE','IRL','372','353',0,1),(113,'Ivory Coast','CI','CIV','384','225',1,1),(114,'Jamaica','JM','JAM','388','876',1,1),(115,'Jordan','JO','JOR','400','962',1,1),(116,'Kazakhstan','KZ','KAZ','398','007',1,1),(117,'Kenya','KE','KEN','404','254',1,1),(118,'Kiribati','KI','KIR','408','686',0,1),(119,'Kuwait','KW','KWT','414','965',1,1),(120,'North Korea','KP','PRK','408','850',0,1),(121,'Kyrgyzstan','KG','KGZ','471','996',1,1),(122,'Laos','LA','LAO','418','856',1,1),(123,'Latvia','LV','LVA','428','371',1,1),(124,'Lebanon','LB','LBN','422','961',1,1),(125,'Lesotho','LS','LSO','426','266',1,1),(126,'Liberia','LR','LBR','430','231',1,1),(127,'Libya','LY','LBY','434','218',1,1),(128,'Liechtenstein','LI','LIE','438','423',1,1),(129,'Lithuania','LT','LTU','440','370',1,1),(130,'Luxembourg','LU','LUX','442','352',1,1),(131,'Macau','MO','MAC','446','853',0,1),(132,'Macedonia','MK','MKD','807','389',1,1),(133,'Madagascar','MG','MDG','450','261',1,1),(134,'Malawi','MW','MWI','454','265',0,1),(135,'Malaysia','MY','MYS','458','060',1,1),(136,'Maldives','MV','MDV','462','960',1,1),(137,'Mali','ML','MLI','466','223',0,1),(138,'Malta','MT','MLT','470','356',1,1),(139,'Marshall Islands','MH','MHL','584','692',1,1),(140,'Martinique','MQ','MTQ','474','596',1,1),(141,'Mauritania','MR','MRT','478','222',0,1),(142,'Mauritius','MU','MUS','480','230',0,1),(143,'Mayotte Island','YT','MYT','175','269',1,1),(144,'Mexico','MX','MEX','484','052',1,1),(145,'Micronesia','FM','FSM','583','691',1,1),(146,'Moldova','MD','MDA','498','373',1,1),(147,'Monaco','MC','MCO','492','377',1,1),(148,'Mongolia','MN','MNG','496','976',1,1),(149,'Montenegro','ME','MNE','499','382',1,1),(150,'Montserrat','MS','MSR','500','664',0,1),(151,'Morocco','MA','MAR','504','212',1,1),(152,'Mozambique','MZ','MOZ','508','258',1,1),(153,'Namibia','NA','NAM','516','264',1,1),(154,'Nauru','NR','NRU','520','674',0,1),(155,'Nepal','NP','NPL','524','977',1,1),(156,'Netherlands Antilles','AN','ANT','530','599',1,1),(157,'New Caledonia','NC','NCL','540','687',1,1),(158,'New Zealand','NZ','NZL','554','064',1,1),(159,'Nicaragua','NI','NIC','558','505',1,1),(160,'Niger','NE','NER','562','227',1,1),(161,'Nigeria','NG','NGA','566','234',1,1),(162,'Niue','NU','NIU','570','683',0,1),(163,'Norfolk Island','NF','NFK','574','672',1,1),(164,'Norway','NO','NOR','578','047',1,1),(165,'Oman','OM','OMN','512','968',1,1),(166,'Pakistan','PK','PAK','586','092',1,1),(167,'Palau','PW','PLW','585','680',1,1),(168,'Palestine','PS','PSE','275','970',1,1),(169,'Panama','PA','PAN','591','507',1,1),(170,'Papua New Guinea','PG','PNG','598','675',1,1),(171,'Paraguay','PY','PRY','600','595',1,1),(172,'Peru','PE','PER','604','051',1,1),(173,'Philippines','PH','PHL','608','063',1,1),(174,'Poland','PL','POL','616','048',1,1),(175,'Puerto Rico','PR','PRI','630','787',1,1),(176,'Qatar','QA','QAT','634','974',0,1),(177,'Reunion Island','RE','REU','638','262',1,1),(178,'Romania','RO','ROU','642','040',1,1),(179,'Rwanda','RW','RWA','646','250',0,1),(180,'St. Helena','SH','SHN','654','290',1,1),(181,'St. Kitts','KN','KNA','659','869',0,1),(182,'St. Lucia','LC','LCA','662','758',0,1),(183,'St. Pierre & Miquelon','PM','SPM','666','508',1,1),(184,'St. Vincent','VC','VCT','670','784',1,1),(185,'San Marino','SM','SMR','674','378',1,1),(186,'Sao Tome & Principe','ST','STP','678','239',0,1),(187,'Saudi Arabia','SA','SAU','682','966',1,1),(188,'Senegal','SN','SEN','686','221',1,1),(189,'Serbia','RS','SRB','688','381',1,1),(190,'Seychelles','SC','SYC','690','248',0,1),(191,'Sierra Leone','SL','SLE','694','249',0,1),(192,'Slovakia','SK','SVK','703','421',1,1),(193,'Slovenia','SI','SVN','705','386',1,1),(194,'Solomon Islands','SB','SLB','90','677',0,1),(195,'Somalia','SO','SOM','706','252',0,1),(196,'South Africa','ZA','ZAF','710','027',1,1),(197,'Sri Lanka','LK','LKA','144','094',1,1),(198,'Sudan','SD','SDN','736','095',1,1),(199,'Suriname','SR','SUR','740','597',0,1),(200,'Swaziland','SZ','SWZ','748','268',1,1),(201,'Sweden','SE','SWE','752','046',1,1),(202,'Switzerland','CH','CHE','756','041',1,1),(203,'Syria','SY','SYR','760','963',0,1),(204,'Taiwan','TW','TWN','158','886',1,1),(205,'Tajikistan','TJ','TJK','762','992',1,1),(206,'Tanzania','TZ','TZA','834','255',0,1),(207,'Thailand','TH','THA','764','066',1,1),(208,'Togo','TG','TGO','768','228',1,1),(209,'Tonga','TO','TON','776','676',0,1),(210,'Trinidad & Tobago','TT','TTO','780','868',0,1),(211,'Tunisia','TN','TUN','788','216',1,1),(212,'Turkmenistan','TM','TKM','795','993',1,1),(213,'Turks & Caicos','TC','TCA','796','649',1,1),(214,'Tuvalu','TV','TUV','798','688',0,1),(215,'Uganda','UG','UGA','800','256',0,1),(216,'Ukraine','UA','UKR','804','380',1,1),(217,'United Arab Emirates','AE','ARE','784','971',0,1),(218,'Uruguay','UY','URY','858','598',1,1),(219,'Uzbekistan','UZ','UZB','860','998',1,1),(220,'Vanuatu','VU','VUT','548','678',0,1),(221,'Vatican City','VA','VAT','336','039',1,1),(222,'Venezuela','VE','VEN','862','058',1,1),(223,'Wallis & Futuna','WF','WLF','876','681',1,1),(224,'Western Samoa','EH','ESH','732','685',1,1),(225,'Yemen','YE','YEM','887','967',0,1),(226,'Zambia','ZM','ZMB','894','260',1,1),(227,'Zimbabwe','ZW','ZWE','716','263',0,1);
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CyrusUser`
--

DROP TABLE IF EXISTS `CyrusUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CyrusUser` (
  `userId` varchar(75) NOT NULL,
  `password_` varchar(75) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CyrusUser`
--

LOCK TABLES `CyrusUser` WRITE;
/*!40000 ALTER TABLE `CyrusUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `CyrusUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CyrusVirtual`
--

DROP TABLE IF EXISTS `CyrusVirtual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CyrusVirtual` (
  `emailAddress` varchar(75) NOT NULL,
  `userId` varchar(75) NOT NULL,
  PRIMARY KEY (`emailAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CyrusVirtual`
--

LOCK TABLES `CyrusVirtual` WRITE;
/*!40000 ALTER TABLE `CyrusVirtual` DISABLE KEYS */;
/*!40000 ALTER TABLE `CyrusVirtual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDLRecord`
--

DROP TABLE IF EXISTS `DDLRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDLRecord` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDLRecord`
--

LOCK TABLES `DDLRecord` WRITE;
/*!40000 ALTER TABLE `DDLRecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDLRecordSet`
--

DROP TABLE IF EXISTS `DDLRecordSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDLRecordSet` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `recordSetKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `minDisplayRows` int(11) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDLRecordSet`
--

LOCK TABLES `DDLRecordSet` WRITE;
/*!40000 ALTER TABLE `DDLRecordSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecordSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDLRecordVersion`
--

DROP TABLE IF EXISTS `DDLRecordVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDLRecordVersion` (
  `recordVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `recordId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`recordVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDLRecordVersion`
--

LOCK TABLES `DDLRecordVersion` WRITE;
/*!40000 ALTER TABLE `DDLRecordVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecordVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMContent`
--

DROP TABLE IF EXISTS `DDMContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMContent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xml` longtext,
  PRIMARY KEY (`contentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMContent`
--

LOCK TABLES `DDMContent` WRITE;
/*!40000 ALTER TABLE `DDMContent` DISABLE KEYS */;
INSERT INTO `DDMContent` VALUES ('a8fdbf61-fec0-4d88-9860-7aafb0926345',10550,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('dd1a65f7-07de-494a-8c2c-2292fa48f43d',10566,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('83679ab9-bea3-40aa-9763-10eb928092c8',10572,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('741ce52b-151d-4189-8bbd-9ac06b12caaf',10584,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('da313dd0-acdc-4306-aa9d-3ea8b6ebd1cc',10588,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('bb9e4c4a-90e6-4b96-9438-99238f8a0a31',10597,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[700]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[304]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8 8 8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('0be54ade-06bf-4570-a6bd-ba1533f59659',10606,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('1ad9d174-b0c9-4074-af91-dbcb4aa2504d',10618,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('05ae5af4-e62d-4264-a5cd-59a772bf1d8e',10630,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('068f9eb3-44bd-4c97-9582-98fef499ae12',10642,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('aa864b1e-913b-446d-a03b-a45e1e79649a',10654,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('8f1448b1-cd76-42d8-a71d-137cfae99df3',10666,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('e06a12bc-7a43-4055-aad7-c4fefbe7adf7',10676,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>');
/*!40000 ALTER TABLE `DDMContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMStorageLink`
--

DROP TABLE IF EXISTS `DDMStorageLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMStorageLink` (
  `uuid_` varchar(75) DEFAULT NULL,
  `storageLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`storageLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMStorageLink`
--

LOCK TABLES `DDMStorageLink` WRITE;
/*!40000 ALTER TABLE `DDMStorageLink` DISABLE KEYS */;
INSERT INTO `DDMStorageLink` VALUES ('3f8ad82f-0892-439f-ab50-6fe46e1981e0',10554,10199,10550,10408),('1aced7e8-8990-484c-bbb8-1d2280b61ff3',10567,10199,10566,10408),('b328999b-a2bc-4165-bb69-9a5cc34794ee',10573,10199,10572,10408),('e3cbd3ee-50a8-4bfa-b6b9-39bc7942430e',10585,10199,10584,10408),('b7a8c1ad-a9a3-4d46-9a1d-d33052cd4d9e',10589,10199,10588,10408),('6305f5d9-02e5-4c44-bfd2-d56ca9995086',10599,10199,10597,10408),('b719c69b-3ccf-4d34-90d9-396e44686eda',10607,10199,10606,10408),('1312078a-559c-4a23-ba45-3c77f0087913',10619,10199,10618,10408),('4ddbff46-4b9a-4e95-ae3f-9c3988181a06',10631,10199,10630,10408),('7207ea9e-931f-429d-806a-d37e7b6f8d07',10643,10199,10642,10408),('73c53b38-ea20-4882-b335-767e65068e9e',10655,10199,10654,10408),('ec6958ed-7722-43be-baee-60672aecd64e',10667,10199,10666,10408),('2bfc49a4-107a-427c-b371-1d0a02405cf6',10677,10199,10676,10408);
/*!40000 ALTER TABLE `DDMStorageLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMStructure`
--

DROP TABLE IF EXISTS `DDMStructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMStructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `structureId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `structureKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  `storageType` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMStructure`
--

LOCK TABLES `DDMStructure` WRITE;
/*!40000 ALTER TABLE `DDMStructure` DISABLE KEYS */;
INSERT INTO `DDMStructure` VALUES ('37b568ba-b27c-4392-83ef-c5ad636f6b30',10397,10291,10253,10257,'','2014-06-11 21:08:29','2014-06-11 21:08:29',10189,'Learning Module Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Learning Module Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Learning Module Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2235\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3212\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4115\" type=\"select\">\n		<dynamic-element name=\"administration\" type=\"option\" value=\"admin\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Administration]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"installation\" type=\"option\" value=\"install\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"configuration\" type=\"option\" value=\"config\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Topics]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5069\" type=\"select\">\n		<dynamic-element name=\"beginner\" type=\"option\" value=\"beginner\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Beginner]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intermediate\" type=\"option\" value=\"intermediate\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"advanced\" type=\"option\" value=\"advanced\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Level]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('2bef069b-5fe6-4698-a140-975e7a528c55',10398,10291,10253,10257,'','2014-06-11 21:08:29','2014-06-11 21:08:29',10189,'Marketing Campaign Theme Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Campaign Theme Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Campaign Theme Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2305\" type=\"select\">\n		<dynamic-element name=\"strong_company\" type=\"option\" value=\"strong\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Strong Company]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"new_product_launch\" type=\"option\" value=\"product\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"company_philosophy\" type=\"option\" value=\"philosophy\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Select]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3229\" type=\"select\">\n		<dynamic-element name=\"your_trusted_advisor\" type=\"option\" value=\"advisor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Your Trusted Advisor]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"10_years_of_customer_solutions\" type=\"option\" value=\"solutions\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"making_a_difference\" type=\"option\" value=\"difference\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Campaign Theme]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4282\" type=\"select\">\n		<dynamic-element name=\"awareness\" type=\"option\" value=\"awareness\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Awareness]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"lead_generation\" type=\"option\" value=\"leads\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"customer_service\" type=\"option\" value=\"service\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Business Goal]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('f1d72815-a673-4395-b204-5d223c4b6d48',10399,10291,10253,10257,'','2014-06-11 21:08:29','2014-06-11 21:08:29',10189,'Meeting Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Metadata for meeting</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date3054\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2217\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Meeting Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text4569\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text5638\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea6584\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea7502\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Participants]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('fdd5352c-72e1-4e72-8376-521af7aa78db',10401,10291,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30',10189,'auto_10b2b77c-95c9-4dcf-bdd0-50b5f455008a','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date18949\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Effective Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date20127\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Expiration Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select10264\" type=\"select\">\n		<dynamic-element name=\"nda\" type=\"option\" value=\"NDA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[NDA]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"msa\" type=\"option\" value=\"MSA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"license_agreement\" type=\"option\" value=\"License\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Contract Type]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4893\" type=\"select\">\n		<dynamic-element name=\"draft\" type=\"option\" value=\"Draft\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Draft]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"in_review\" type=\"option\" value=\"Review\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"suspended\" type=\"option\" value=\"Suspended\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"signed\" type=\"option\" value=\"Signed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text14822\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Legal Reviewer]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text17700\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Signing Authority]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2087\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Deal Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('8e25e593-bb45-42c9-a8da-ba1626789af1',10403,10291,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30',10189,'auto_683e81f1-a1cc-4a73-9f2f-9ef0f149de0f','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"radio5547\" type=\"radio\">\n		<dynamic-element name=\"yes\" type=\"option\" value=\"yes\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"no\" type=\"option\" value=\"no\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Needs Legal Review]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2033\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Banner Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea2873\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('ea7a6d7b-ad7c-4ec9-a926-65cd9873f285',10405,10291,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30',10189,'auto_645db046-b71a-4f08-8a97-d332270c1e52','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"text2082\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Lesson Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2979\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('d3382286-1717-4ba8-a30e-8329e0d4f22c',10407,10291,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30',10189,'auto_90a9beea-ba0b-40d9-81a6-51204f79cfd4','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2890\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3864\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4831\" type=\"select\">\n		<dynamic-element name=\"website\" type=\"option\" value=\"website\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Website]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"collaboration\" type=\"option\" value=\"collaboration\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intranet\" type=\"option\" value=\"intranet\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Areas of Interest]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5929\" type=\"select\">\n		<dynamic-element name=\"acme\" type=\"option\" value=\"acme\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[ACME]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"sevencogs\" type=\"option\" value=\"sevencogs\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"freeplus\" type=\"option\" value=\"freeplus\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Competitors]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text1993\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Prospect Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('8cd4a059-4fd8-491d-864a-0f0b293ab6db',10408,10291,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30',10110,'TikaRawMetadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">TikaRawMetadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">TikaRawMetadata</Description></root>','<root available-locales=\"es_ES\" default-locale=\"es_ES\"><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROGRAM_ID\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMAND_LINE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_HISTORY\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_TABLE_ID\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_INSTITUTION\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_SOURCE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONTACT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROJECT_ID\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONVENTIONS\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REFERENCES\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_ACKNOWLEDGEMENT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REALIZATION\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_EXPERIMENT_ID\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMENT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_MODEL_NAME_ENGLISH\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_URL\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_LOCATION\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_WORK_TYPE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC_TERMS\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC_TERMS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC_TERMS\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC_TERMS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_FORMAT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_IDENTIFIER\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_MODIFIED\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CONTRIBUTOR\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_COVERAGE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.COVERAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CREATOR\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CREATOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CREATED\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CREATED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DATE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DESCRIPTION\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_LANGUAGE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PUBLISHER\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RELATION\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RELATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RIGHTS\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RIGHTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SOURCE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SUBJECT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SUBJECT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TITLE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TITLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TYPE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LATITUDE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.Geographic.LATITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LONGITUDE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.Geographic.LONGITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_ALTITUDE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.Geographic.ALTITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_ENCODING\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LANGUAGE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LENGTH\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LOCATION\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_DISPOSITION\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_MD5\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_TYPE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LAST_MODIFIED\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LOCATION\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_RECIPIENT_ADDRESS\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_FROM\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_TO\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_TO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_CC\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_CC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_BCC\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_KEYWORDS\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMMENTS\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMMENTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_AUTHOR\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_AUTHOR\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_NAME\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_REVISION_NUMBER\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TEMPLATE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TOTAL_TIME\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PRESENTATION_FORMAT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_NOTES\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.NOTES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_MANAGER\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.MANAGER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_VERSION\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_VERSION\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CONTENT_STATUS\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CATEGORY\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CATEGORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMPANY\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMPANY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SECURITY\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SECURITY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SLIDE_COUNT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PAGE_COUNT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PARAGRAPH_COUNT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LINE_COUNT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_WORD_COUNT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT_WITH_SPACES\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TABLE_COUNT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TABLE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_IMAGE_COUNT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.IMAGE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_OBJECT_COUNT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.OBJECT_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_EDIT_TIME\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CREATION_DATE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_SAVED\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_PRINTED\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_USER_DEFINED_METADATA_NAME_PREFIX\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.MSOffice.USER_DEFINED_METADATA_NAME_PREFIX]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_BITS_PER_SAMPLE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_LENGTH\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_WIDTH\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SAMPLES_PER_PIXEL\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FLASH_FIRED\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EXPOSURE_TIME\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_F_NUMBER\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.F_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FOCAL_LENGTH\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ISO_SPEED_RATINGS\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MAKE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MODEL\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SOFTWARE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.SOFTWARE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIENTATION\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIENTATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_HORIZONTAL\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_VERTICAL\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_UNIT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIGINAL_DATE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_RESOURCE_NAME_KEY\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_PROTECTED\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_EMBEDDED_RELATIONSHIP_ID\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.EMBEDDED_RELATIONSHIP_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_TIKA_MIME_FILE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_MIME_TYPE_MAGIC\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_DURATION\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.DURATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ABS_PEAK_AUDIO_FILE_PATH\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALBUM\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALBUM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALT_TAPE_NAME\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ARTIST\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ARTIST]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_MOD_DATE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_RATE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_TYPE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_CHANNEL_TYPE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_COMPRESSOR\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COMPOSER\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COMPOSER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COPYRIGHT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ENGINEER\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ENGINEER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_FILE_DATA_RATE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_GENRE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.GENRE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_INSTRUMENT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_KEY\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOG_COMMENT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOOP\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOOP]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_NUMBER_OF_BEATS\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_METADATA_MOD_DATE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_PULL_DOWN\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELEASE_DATE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCALE_TYPE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCENE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCENE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_DATE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_LOCATION\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_NAME\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SPEAKER_PLACEMENT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_STRETCH_MODE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TAPE_NAME\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TEMPO\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TEMPO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TIME_SIGNATURE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TRACK_NUMBER\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_MODE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COLOR_SPACE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COMPRESSOR\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FIELD_ORDER\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FRAME_RATE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_MOD_DATE\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_DEPTH\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_ASPECT_RATIO\" type=\"text\"><meta-data locale=\"es_ES\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element></root>','xml',0),('9dfdc1e2-5506-4126-a6c0-88bddb1d66bc',10499,10279,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10197,'Contacts','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contacts</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contacts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"company\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Company]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"email\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Email]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"firstName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[First Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imService\" type=\"select\">\n		<dynamic-element name=\"aol\" type=\"option\" value=\"aol\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[AOL]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"yahoo\" type=\"option\" value=\"yahoo\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yahoo]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"gtalk\" type=\"option\" value=\"gtalk\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[GTalk]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger Service]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"gtalk\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imUserName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Instant Messenger]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"jobTitle\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Job Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"lastName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Last Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"notes\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Notes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneMobile\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Phone (Mobile)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneOffice\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Phone (Office)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('c2120907-7e29-4bb0-be5b-1e2133cebf5f',10500,10279,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10197,'Events','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Events</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Events</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"cost\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Cost]]></entry>\n			<entry name=\"name\"><![CDATA[cost]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"name\"><![CDATA[description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[textarea]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"eventDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"name\"><![CDATA[eventDate]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-date]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Event Name]]></entry>\n			<entry name=\"name\"><![CDATA[eventName]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventTime\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"name\"><![CDATA[eventTime]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"name\"><![CDATA[location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('c9d77d14-31c4-4a98-a074-d1937f90e9e3',10501,10279,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10197,'Inventory','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Inventory</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Inventory</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"item\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Item]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"purchaseDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Purchase Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"purchasePrice\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Purchase Price]]></entry>\n			<entry name=\"name\"><![CDATA[purchasePrice]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"quantity\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Quantity]]></entry>\n			<entry name=\"name\"><![CDATA[quantity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('4b6eac22-1a5a-4202-9610-1d69b3ca1f72',10502,10279,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10197,'Issues Tracking','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Issues Tracking</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Issue Tracking</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"dueDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Due Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"issueId\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Issue ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"severity\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"status\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('8ae32be6-ba53-41a3-a5cd-16f897d5723e',10503,10279,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10197,'Meeting Minutes','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Minutes</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Meeting Minutes</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"author\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"duration\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Duration]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"meetingDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"minutes\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Minutes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('934f18b4-52d7-4220-b8ab-9a09b2d6829a',10504,10279,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10197,'To Do','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">To Do</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">To Do</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"endDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[End Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"integer\" fieldNamespace=\"ddm\" name=\"percentComplete\" type=\"ddm-integer\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[% Complete]]></entry>\n			<entry name=\"name\"><![CDATA[percentComplete]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[0]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-integer]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"severity\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"startDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Start Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"status\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
/*!40000 ALTER TABLE `DDMStructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMStructureLink`
--

DROP TABLE IF EXISTS `DDMStructureLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMStructureLink` (
  `structureLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`structureLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMStructureLink`
--

LOCK TABLES `DDMStructureLink` WRITE;
/*!40000 ALTER TABLE `DDMStructureLink` DISABLE KEYS */;
INSERT INTO `DDMStructureLink` VALUES (10556,10189,10536,10408),(10569,10189,10565,10408),(10574,10189,10571,10408),(10586,10189,10582,10408),(10590,10189,10587,10408),(10600,10189,10593,10408),(10608,10189,10604,10408),(10620,10189,10617,10408),(10632,10189,10629,10408),(10644,10189,10641,10408),(10656,10189,10653,10408),(10668,10189,10665,10408),(10678,10189,10675,10408);
/*!40000 ALTER TABLE `DDMStructureLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMTemplate`
--

DROP TABLE IF EXISTS `DDMTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMTemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `templateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `mode_` varchar(75) DEFAULT NULL,
  `language` varchar(75) DEFAULT NULL,
  `script` longtext,
  PRIMARY KEY (`templateId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMTemplate`
--

LOCK TABLES `DDMTemplate` WRITE;
/*!40000 ALTER TABLE `DDMTemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDMTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLContent`
--

DROP TABLE IF EXISTS `DLContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLContent` (
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `path_` varchar(255) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `data_` longblob,
  `size_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLContent`
--

LOCK TABLES `DLContent` WRITE;
/*!40000 ALTER TABLE `DLContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntry`
--

DROP TABLE IF EXISTS `DLFileEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `readCount` int(11) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `custom1ImageId` bigint(20) DEFAULT NULL,
  `custom2ImageId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntry`
--

LOCK TABLES `DLFileEntry` WRITE;
/*!40000 ALTER TABLE `DLFileEntry` DISABLE KEYS */;
INSERT INTO `DLFileEntry` VALUES ('867828ab-3df1-4277-8d04-725b9c0c7ccd',10522,10279,10253,10257,'',10257,'','2014-06-11 21:09:37','2014-06-11 21:09:37',10279,0,'1','jpg','image/jpeg','welcome_bg_3','','',0,'1.0',65684,0,0,0,0,0),('5bafa385-7019-4bd2-a8be-0c24d9ad0aca',10531,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'2','jpg','image/jpeg','welcome_bg_7','','',0,'1.0',68705,2,0,0,0,0),('75c64424-0896-4709-8e4a-6431d8ce5d19',10540,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'3','jpg','image/jpeg','welcome_bg_11','','',0,'1.0',43583,0,0,0,0,0),('0ed6ed2a-b1ce-4f93-bb01-8b98b0bdd6f9',10548,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'4','jpg','image/jpeg','welcome_bg_12','','',0,'1.0',46446,0,0,0,0,0),('addc1724-be5f-4dce-914c-4d3ecac83f6e',10559,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'5','jpg','image/jpeg','welcome_bg_5','','',0,'1.0',40022,2,0,0,0,0),('b7c8cae8-97f5-4fc2-b18b-5dff73214c7a',10575,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'6','png','image/png','welcome_bg_10','','',0,'1.0',27139,0,0,0,0,0),('af82a1a5-cda0-4a81-a781-456307acb33d',10591,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'7','jpg','image/jpeg','welcome_bg_2','','',0,'1.0',72911,2,0,0,0,0),('546ad8bc-3aec-488d-951f-ce5c84472786',10603,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'8','jpg','image/jpeg','welcome_bg_13','','',0,'1.0',33632,0,0,0,0,0),('adb27b76-47f0-487f-bbb5-f53a80696c62',10615,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'9','jpg','image/jpeg','welcome_bg_9','','',0,'1.0',50215,4,0,0,0,0),('7a39b107-66d5-48af-a019-0e6bd719a1d0',10627,10279,10253,10257,'',10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,'10','jpg','image/jpeg','welcome_bg_1','','',0,'1.0',54277,4,0,0,0,0),('91c5cd03-b85c-4621-bee5-90ba8ccd35ef',10639,10279,10253,10257,'',10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10279,0,'11','jpg','image/jpeg','welcome_bg_4','','',0,'1.0',62483,2,0,0,0,0),('049d5164-f2a6-4b7e-9cfa-2f71d6f2257b',10651,10279,10253,10257,'',10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10279,0,'12','jpg','image/jpeg','welcome_bg_8','','',0,'1.0',43664,5,0,0,0,0),('e9235cdb-1b9e-4f7c-83b7-080a8aa4e67a',10663,10279,10253,10257,'',10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10279,0,'13','jpg','image/jpeg','welcome_bg_6','','',0,'1.0',45456,0,0,0,0,0);
/*!40000 ALTER TABLE `DLFileEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryMetadata`
--

DROP TABLE IF EXISTS `DLFileEntryMetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryMetadata` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryMetadataId` bigint(20) NOT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `fileVersionId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryMetadataId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryMetadata`
--

LOCK TABLES `DLFileEntryMetadata` WRITE;
/*!40000 ALTER TABLE `DLFileEntryMetadata` DISABLE KEYS */;
INSERT INTO `DLFileEntryMetadata` VALUES ('4e5a21d4-559b-4ee3-a79f-71fb91514533',10536,10550,10408,0,10522,10523),('61263ef8-00c9-46ae-be5b-7ad432d116d0',10565,10566,10408,0,10531,10532),('dbf9bf3c-e13d-4414-9423-02a497e63631',10571,10572,10408,0,10540,10541),('a01ce15f-061a-43a8-89ee-5662eb1e3a26',10582,10584,10408,0,10548,10549),('974e54f4-b9c4-404a-b799-146035f1d33f',10587,10588,10408,0,10559,10560),('b169d25a-5acf-479b-82ee-815e3a623756',10593,10597,10408,0,10575,10576),('abf1fbd6-96e6-48f9-aa76-b9f03032ebc4',10604,10606,10408,0,10591,10592),('3c4da6c1-d141-400a-ac8b-d6c6b27af156',10617,10618,10408,0,10603,10605),('63aa3199-1003-4aa2-8fea-a0a2213ce061',10629,10630,10408,0,10615,10616),('bd5d5bda-cb52-4f92-b24e-22bcd70facaf',10641,10642,10408,0,10627,10628),('8425d9be-da39-4f4c-85ad-b96bf33f8302',10653,10654,10408,0,10639,10640),('f1d75ab6-49d5-43c8-9d69-a8a11a5392b4',10665,10666,10408,0,10651,10652),('1e2cfb1d-454c-4821-825f-ac00ca155c23',10675,10676,10408,0,10663,10664);
/*!40000 ALTER TABLE `DLFileEntryMetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryType`
--

DROP TABLE IF EXISTS `DLFileEntryType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryType` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`fileEntryTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryType`
--

LOCK TABLES `DLFileEntryType` WRITE;
/*!40000 ALTER TABLE `DLFileEntryType` DISABLE KEYS */;
INSERT INTO `DLFileEntryType` VALUES ('43f0d923-1a89-44e2-8cbf-8ebfff9134b8',0,0,0,0,'','2014-06-11 21:08:23','2014-06-11 21:08:23','Basic Document',''),('10b2b77c-95c9-4dcf-bdd0-50b5f455008a',10400,10291,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30','Contract','Contract'),('683e81f1-a1cc-4a73-9f2f-9ef0f149de0f',10402,10291,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30','Marketing Banner','Marketing Banner'),('645db046-b71a-4f08-8a97-d332270c1e52',10404,10291,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30','Online Training','Online Training'),('90a9beea-ba0b-40d9-81a6-51204f79cfd4',10406,10291,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30','Sales Presentation','Sales Presentation');
/*!40000 ALTER TABLE `DLFileEntryType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryTypes_DDMStructures`
--

DROP TABLE IF EXISTS `DLFileEntryTypes_DDMStructures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryTypes_DDMStructures` (
  `structureId` bigint(20) NOT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  PRIMARY KEY (`structureId`,`fileEntryTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryTypes_DDMStructures`
--

LOCK TABLES `DLFileEntryTypes_DDMStructures` WRITE;
/*!40000 ALTER TABLE `DLFileEntryTypes_DDMStructures` DISABLE KEYS */;
INSERT INTO `DLFileEntryTypes_DDMStructures` VALUES (10397,10404),(10398,10402),(10399,10406),(10401,10400),(10403,10402),(10405,10404),(10407,10406);
/*!40000 ALTER TABLE `DLFileEntryTypes_DDMStructures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryTypes_DLFolders`
--

DROP TABLE IF EXISTS `DLFileEntryTypes_DLFolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryTypes_DLFolders` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `folderId` bigint(20) NOT NULL,
  PRIMARY KEY (`fileEntryTypeId`,`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryTypes_DLFolders`
--

LOCK TABLES `DLFileEntryTypes_DLFolders` WRITE;
/*!40000 ALTER TABLE `DLFileEntryTypes_DLFolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileEntryTypes_DLFolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileRank`
--

DROP TABLE IF EXISTS `DLFileRank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileRank` (
  `fileRankId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileRankId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileRank`
--

LOCK TABLES `DLFileRank` WRITE;
/*!40000 ALTER TABLE `DLFileRank` DISABLE KEYS */;
INSERT INTO `DLFileRank` VALUES (10728,10279,10253,10506,'2014-06-11 21:11:10',10627),(10810,10279,10253,10506,'2014-06-11 21:17:18',10651),(10811,10279,10253,10257,'2014-06-11 22:41:37',10651),(10814,10279,10253,10257,'2014-06-11 22:41:38',10615),(10949,10279,10253,10257,'2014-06-11 22:37:48',10639),(10950,10279,10253,10257,'2014-06-11 22:37:50',10531),(10951,10279,10253,10257,'2014-06-11 22:37:56',10559);
/*!40000 ALTER TABLE `DLFileRank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileShortcut`
--

DROP TABLE IF EXISTS `DLFileShortcut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileShortcut` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileShortcutId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `toFileEntryId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileShortcutId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileShortcut`
--

LOCK TABLES `DLFileShortcut` WRITE;
/*!40000 ALTER TABLE `DLFileShortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileShortcut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileVersion`
--

DROP TABLE IF EXISTS `DLFileVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileVersion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileVersion`
--

LOCK TABLES `DLFileVersion` WRITE;
/*!40000 ALTER TABLE `DLFileVersion` DISABLE KEYS */;
INSERT INTO `DLFileVersion` VALUES ('1ef47ba9-55b7-4309-b1e0-7c78cb85a165',10523,10279,10253,10257,'','2014-06-11 21:09:37','2014-06-11 21:09:37',10279,0,10522,'jpg','image/jpeg','welcome_bg_3','','','',0,'1.0',65684,0,10257,'','2014-06-11 21:09:37'),('add27eb8-db5b-474d-988f-50f894c529ab',10532,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10531,'jpg','image/jpeg','welcome_bg_7','','','',0,'1.0',68705,0,10257,'','2014-06-11 21:09:38'),('8976ba04-d26a-4034-9dd1-7c1d58e65e44',10541,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10540,'jpg','image/jpeg','welcome_bg_11','','','',0,'1.0',43583,0,10257,'','2014-06-11 21:09:38'),('021a72b7-a882-4bad-b4ea-852045aa99fd',10549,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10548,'jpg','image/jpeg','welcome_bg_12','','','',0,'1.0',46446,0,10257,'','2014-06-11 21:09:38'),('de3c39fc-b975-4cb9-b5f4-33f4e92f5500',10560,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10559,'jpg','image/jpeg','welcome_bg_5','','','',0,'1.0',40022,0,10257,'','2014-06-11 21:09:38'),('a914bef3-b5cc-432b-a07d-4272ca128283',10576,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10575,'png','image/png','welcome_bg_10','','','',0,'1.0',27139,0,10257,'','2014-06-11 21:09:38'),('2699f6da-1fc5-4065-b374-e9888a92402a',10592,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10591,'jpg','image/jpeg','welcome_bg_2','','','',0,'1.0',72911,0,10257,'','2014-06-11 21:09:38'),('1739307d-d5ed-4c6a-8370-b1f2d38148b6',10605,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10603,'jpg','image/jpeg','welcome_bg_13','','','',0,'1.0',33632,0,10257,'','2014-06-11 21:09:38'),('0c445a7a-c36a-4dfc-941a-f95043cdf1aa',10616,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10615,'jpg','image/jpeg','welcome_bg_9','','','',0,'1.0',50215,0,10257,'','2014-06-11 21:09:38'),('55d16311-4b36-4afd-acea-7c2bfe219a02',10628,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10279,0,10627,'jpg','image/jpeg','welcome_bg_1','','','',0,'1.0',54277,0,10257,'','2014-06-11 21:09:39'),('9d90a047-f587-4ee0-b884-49d5a6502c68',10640,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10279,0,10639,'jpg','image/jpeg','welcome_bg_4','','','',0,'1.0',62483,0,10257,'','2014-06-11 21:09:39'),('f32de6dc-c3cf-4395-9e20-b7bf539e95ec',10652,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10279,0,10651,'jpg','image/jpeg','welcome_bg_8','','','',0,'1.0',43664,0,10257,'','2014-06-11 21:09:39'),('c831a97d-9f3b-4188-8467-dfc187b5009a',10664,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10279,0,10663,'jpg','image/jpeg','welcome_bg_6','','','',0,'1.0',45456,0,10257,'','2014-06-11 21:09:39');
/*!40000 ALTER TABLE `DLFileVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFolder`
--

DROP TABLE IF EXISTS `DLFolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mountPoint` tinyint(4) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `defaultFileEntryTypeId` bigint(20) DEFAULT NULL,
  `overrideFileEntryTypes` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFolder`
--

LOCK TABLES `DLFolder` WRITE;
/*!40000 ALTER TABLE `DLFolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLSync`
--

DROP TABLE IF EXISTS `DLSync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLSync` (
  `syncId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `fileId` bigint(20) DEFAULT NULL,
  `fileUuid` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `event` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`syncId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLSync`
--

LOCK TABLES `DLSync` WRITE;
/*!40000 ALTER TABLE `DLSync` DISABLE KEYS */;
INSERT INTO `DLSync` VALUES (10529,10253,'2014-06-11 21:09:37','2014-06-11 21:09:37',10522,'867828ab-3df1-4277-8d04-725b9c0c7ccd',10279,0,'welcome_bg_3','','add','file','1.0'),(10539,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10531,'5bafa385-7019-4bd2-a8be-0c24d9ad0aca',10279,0,'welcome_bg_7','','add','file','1.0'),(10547,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10540,'75c64424-0896-4709-8e4a-6431d8ce5d19',10279,0,'welcome_bg_11','','add','file','1.0'),(10558,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10548,'0ed6ed2a-b1ce-4f93-bb01-8b98b0bdd6f9',10279,0,'welcome_bg_12','','add','file','1.0'),(10570,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10559,'addc1724-be5f-4dce-914c-4d3ecac83f6e',10279,0,'welcome_bg_5','','add','file','1.0'),(10583,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10575,'b7c8cae8-97f5-4fc2-b18b-5dff73214c7a',10279,0,'welcome_bg_10','','add','file','1.0'),(10602,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10591,'af82a1a5-cda0-4a81-a781-456307acb33d',10279,0,'welcome_bg_2','','add','file','1.0'),(10614,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10603,'546ad8bc-3aec-488d-951f-ce5c84472786',10279,0,'welcome_bg_13','','add','file','1.0'),(10626,10253,'2014-06-11 21:09:38','2014-06-11 21:09:38',10615,'adb27b76-47f0-487f-bbb5-f53a80696c62',10279,0,'welcome_bg_9','','add','file','1.0'),(10638,10253,'2014-06-11 21:09:39','2014-06-11 21:09:39',10627,'7a39b107-66d5-48af-a019-0e6bd719a1d0',10279,0,'welcome_bg_1','','add','file','1.0'),(10650,10253,'2014-06-11 21:09:39','2014-06-11 21:09:39',10639,'91c5cd03-b85c-4621-bee5-90ba8ccd35ef',10279,0,'welcome_bg_4','','add','file','1.0'),(10662,10253,'2014-06-11 21:09:39','2014-06-11 21:09:39',10651,'049d5164-f2a6-4b7e-9cfa-2f71d6f2257b',10279,0,'welcome_bg_8','','add','file','1.0'),(10674,10253,'2014-06-11 21:09:39','2014-06-11 21:09:39',10663,'e9235cdb-1b9e-4f7c-83b7-080a8aa4e67a',10279,0,'welcome_bg_6','','add','file','1.0');
/*!40000 ALTER TABLE `DLSync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmailAddress`
--

DROP TABLE IF EXISTS `EmailAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmailAddress` (
  `emailAddressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`emailAddressId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmailAddress`
--

LOCK TABLES `EmailAddress` WRITE;
/*!40000 ALTER TABLE `EmailAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `EmailAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoColumn`
--

DROP TABLE IF EXISTS `ExpandoColumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoColumn` (
  `columnId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `defaultData` longtext,
  `typeSettings` longtext,
  PRIMARY KEY (`columnId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoColumn`
--

LOCK TABLES `ExpandoColumn` WRITE;
/*!40000 ALTER TABLE `ExpandoColumn` DISABLE KEYS */;
INSERT INTO `ExpandoColumn` VALUES (10514,10253,10513,'manualCheckInRequired',1,'','hidden=true\n'),(10520,10253,10519,'clientId',15,'','');
/*!40000 ALTER TABLE `ExpandoColumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoRow`
--

DROP TABLE IF EXISTS `ExpandoRow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoRow` (
  `rowId_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rowId_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoRow`
--

LOCK TABLES `ExpandoRow` WRITE;
/*!40000 ALTER TABLE `ExpandoRow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpandoRow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoTable`
--

DROP TABLE IF EXISTS `ExpandoTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoTable` (
  `tableId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoTable`
--

LOCK TABLES `ExpandoTable` WRITE;
/*!40000 ALTER TABLE `ExpandoTable` DISABLE KEYS */;
INSERT INTO `ExpandoTable` VALUES (10513,10253,10110,'CUSTOM_FIELDS'),(10519,10253,10105,'MP');
/*!40000 ALTER TABLE `ExpandoTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoValue`
--

DROP TABLE IF EXISTS `ExpandoValue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoValue` (
  `valueId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `columnId` bigint(20) DEFAULT NULL,
  `rowId_` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`valueId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoValue`
--

LOCK TABLES `ExpandoValue` WRITE;
/*!40000 ALTER TABLE `ExpandoValue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpandoValue` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `Groups_Orgs`
--

DROP TABLE IF EXISTS `Groups_Orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_Orgs` (
  `groupId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_Orgs`
--

LOCK TABLES `Groups_Orgs` WRITE;
/*!40000 ALTER TABLE `Groups_Orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_Orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups_Permissions`
--

DROP TABLE IF EXISTS `Groups_Permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_Permissions` (
  `groupId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_Permissions`
--

LOCK TABLES `Groups_Permissions` WRITE;
/*!40000 ALTER TABLE `Groups_Permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_Permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups_Roles`
--

DROP TABLE IF EXISTS `Groups_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_Roles` (
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_Roles`
--

LOCK TABLES `Groups_Roles` WRITE;
/*!40000 ALTER TABLE `Groups_Roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups_UserGroups`
--

DROP TABLE IF EXISTS `Groups_UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_UserGroups` (
  `groupId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_UserGroups`
--

LOCK TABLES `Groups_UserGroups` WRITE;
/*!40000 ALTER TABLE `Groups_UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Image`
--

DROP TABLE IF EXISTS `Image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Image` (
  `imageId` bigint(20) NOT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `text_` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `size_` int(11) DEFAULT NULL,
  PRIMARY KEY (`imageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Image`
--

LOCK TABLES `Image` WRITE;
/*!40000 ALTER TABLE `Image` DISABLE KEYS */;
INSERT INTO `Image` VALUES (10902,'2014-07-10 08:26:43','','png',259,269,47088);
/*!40000 ALTER TABLE `Image` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `JournalArticleImage`
--

DROP TABLE IF EXISTS `JournalArticleImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalArticleImage` (
  `articleImageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `elInstanceId` varchar(75) DEFAULT NULL,
  `elName` varchar(75) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `tempImage` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`articleImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalArticleImage`
--

LOCK TABLES `JournalArticleImage` WRITE;
/*!40000 ALTER TABLE `JournalArticleImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalArticleImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalArticleResource`
--

DROP TABLE IF EXISTS `JournalArticleResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalArticleResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalArticleResource`
--

LOCK TABLES `JournalArticleResource` WRITE;
/*!40000 ALTER TABLE `JournalArticleResource` DISABLE KEYS */;
INSERT INTO `JournalArticleResource` VALUES ('4f5a084a-1f78-4f7a-a88b-1ee013689368',10680,10279,'WHO-IS-USING-LIFERAY'),('54082afe-87c6-4d54-a9d3-1eb88aaea014',10692,10279,'LIFERAY-BENEFITS'),('97bae23a-2205-44ba-9717-c9e42a75a945',10700,10279,'WHAT-WE-DO');
/*!40000 ALTER TABLE `JournalArticleResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalContentSearch`
--

DROP TABLE IF EXISTS `JournalContentSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalContentSearch` (
  `contentSearchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contentSearchId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalContentSearch`
--

LOCK TABLES `JournalContentSearch` WRITE;
/*!40000 ALTER TABLE `JournalContentSearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalContentSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalFeed`
--

DROP TABLE IF EXISTS `JournalFeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalFeed` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `feedId` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `rendererTemplateId` varchar(75) DEFAULT NULL,
  `delta` int(11) DEFAULT NULL,
  `orderByCol` varchar(75) DEFAULT NULL,
  `orderByType` varchar(75) DEFAULT NULL,
  `targetLayoutFriendlyUrl` varchar(255) DEFAULT NULL,
  `targetPortletId` varchar(75) DEFAULT NULL,
  `contentField` varchar(75) DEFAULT NULL,
  `feedType` varchar(75) DEFAULT NULL,
  `feedVersion` double DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalFeed`
--

LOCK TABLES `JournalFeed` WRITE;
/*!40000 ALTER TABLE `JournalFeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalFeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalStructure`
--

DROP TABLE IF EXISTS `JournalStructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalStructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `parentStructureId` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalStructure`
--

LOCK TABLES `JournalStructure` WRITE;
/*!40000 ALTER TABLE `JournalStructure` DISABLE KEYS */;
INSERT INTO `JournalStructure` VALUES ('0cf8ab7a-7054-4e30-b1ba-b0a15cdc841c',10688,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39','WELCOME-CONTENT-STRUCTURE','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome Content Structure</Name></root>','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"page-title\" type=\"text\" index-type=\"\" repeatable=\"false\">\n		<meta-data>\n			<entry name=\"displayAsTooltip\"><![CDATA[true]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"instructions\"><![CDATA[]]></entry>\n			<entry name=\"label\"><![CDATA[Sub Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element name=\"links\" type=\"text\" index-type=\"\" repeatable=\"true\">\n		<meta-data>\n			<entry name=\"displayAsTooltip\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"instructions\"><![CDATA[]]></entry>\n			<entry name=\"label\"><![CDATA[Link Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n		<dynamic-element name=\"bg-image\" type=\"document_library\" index-type=\"\" repeatable=\"false\">\n			<meta-data>\n				<entry name=\"displayAsTooltip\"><![CDATA[true]]></entry>\n				<entry name=\"required\"><![CDATA[false]]></entry>\n				<entry name=\"instructions\"><![CDATA[]]></entry>\n				<entry name=\"label\"><![CDATA[Background Image]]></entry>\n				<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"action-link-url\" type=\"text\" index-type=\"\" repeatable=\"false\">\n			<meta-data>\n				<entry name=\"displayAsTooltip\"><![CDATA[false]]></entry>\n				<entry name=\"required\"><![CDATA[false]]></entry>\n				<entry name=\"instructions\"><![CDATA[]]></entry>\n				<entry name=\"label\"><![CDATA[Call to Action URL]]></entry>\n				<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			</meta-data>\n		</dynamic-element>\n	</dynamic-element>\n</root>');
/*!40000 ALTER TABLE `JournalStructure` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `Layout`
--

DROP TABLE IF EXISTS `Layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Layout` (
  `uuid_` varchar(75) DEFAULT NULL,
  `plid` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `parentLayoutId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `hidden_` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `priority` int(11) DEFAULT NULL,
  `layoutPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  `sourcePrototypeLayoutUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`plid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Layout`
--

LOCK TABLES `Layout` WRITE;
/*!40000 ALTER TABLE `Layout` DISABLE KEYS */;
INSERT INTO `Layout` VALUES ('e7b7fcd8-043c-41c8-9a45-b952a61f1b19',10274,10271,10253,'2014-06-11 21:08:27','2014-06-11 21:08:27',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Control Panel</Name></root>','','','','','control_panel','',0,'/manage',0,0,'','','','','',0,'',0,''),('728bd6b9-2c51-4fab-bc87-55f55f373242',10413,10410,10253,'2014-06-11 21:08:30','2014-06-11 21:08:30',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=148_INSTANCE_HB8RhihRIWbU,114,\ncolumn-1=33,\n',0,'/layout',0,0,'','','','','',0,'',0,''),('a77216cf-858b-4da6-a5a4-f1f75ec132ac',10423,10420,10253,'2014-06-11 21:08:30','2014-06-11 21:08:30',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','','','','','portlet','default-asset-publisher-portlet-id=101_INSTANCE_Rc3CNB8tDg3t\nlayout-template-id=2_columns_ii\ncolumn-2=3,101_INSTANCE_Rc3CNB8tDg3t,\ncolumn-1=141_INSTANCE_1gvsJieBnKew,122_INSTANCE_PKdetvSymW6R,\n',0,'/layout',0,0,'','','','','',0,'',0,''),('687f0f5b-99ea-4822-b5a0-7d8682204d20',10432,10429,10253,'2014-06-11 21:08:30','2014-06-11 21:08:30',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_91H6F7yq8S74,141_INSTANCE_3pC8rFirI7ht,\ncolumn-1=36,\n',0,'/layout',0,0,'','','','','',0,'',0,''),('7773d279-23b3-49e1-932d-e39a023fd6f2',10446,10438,10253,'2014-06-11 21:08:31','2014-06-11 21:08:31',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=3,59_INSTANCE_gw8EHWFbg9nq,180,\ncolumn-1=19,\n',0,'/home',0,0,'','','','','',0,'',0,''),('f7ebb1f2-e47b-4db0-8548-f0619148cc12',10452,10438,10253,'2014-06-11 21:08:31','2014-06-11 21:08:31',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=101_INSTANCE_sX9IkmDTYQWq,\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',1,'',0,''),('26c7fdc4-d15d-4c4f-b44a-16096285e091',10458,10438,10253,'2014-06-11 21:08:31','2014-06-11 21:08:31',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_OG9oDTuqDaHO,148_INSTANCE_hy2OCaLcvSqb,\ncolumn-1=36,\n',0,'/wiki',0,0,'','','','','',2,'',0,''),('e996abd5-b190-4288-a9ec-444d719a3fbb',10472,10464,10253,'2014-06-11 21:08:31','2014-06-11 21:08:31',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_i\ncolumn-2=3,82,101_INSTANCE_YKL9Ihv1t3XH,\ncolumn-1=116,\n',0,'/home',0,0,'','','','','',0,'',0,''),('09266cad-3213-4174-94dd-92b3bd459104',10480,10464,10253,'2014-06-11 21:08:31','2014-06-11 21:08:31',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=20,\n',0,'/documents',0,0,'','','','','',1,'',0,''),('5db880cc-bbb5-42dc-aadc-e0712b6916cf',10486,10464,10253,'2014-06-11 21:08:31','2014-06-11 21:08:31',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=101_INSTANCE_cZZpL979qao6,\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',2,'',0,''),('f2709ccf-00d6-4ffd-82b6-ec0f65ef64da',10492,10464,10253,'2014-06-11 21:08:31','2014-06-11 21:08:31',1,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=39_INSTANCE_bzn1R6XCZreC,\ncolumn-1=39_INSTANCE_SGrtnUVY7c9J,\n',0,'/news',0,0,'','','','','',3,'',0,''),('30c103b0-cc2f-4a00-b882-dd4fe02f124f',10907,10904,10253,'2014-06-11 22:27:26','2014-07-26 01:56:20',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Bienvenida_PepoApp</Name></root>','','','','','portlet','layout-template-id=Layout_25_50_25\nshow-alternate-links=true\nmerge-fail-count=0\nlayoutUpdateable=true\ncolumn-2=mygreeting_WAR_mygreetingportlet\ncolumn-1=58,\n',0,'/layout',0,0,'classic','','classic','','',0,'',0,''),('50722cde-1b0b-4e1d-ad27-175ebb59e28e',10916,10913,10253,'2014-06-11 22:28:54','2014-06-12 22:47:36',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Que_Es_Pepo</Name></root>','','','','','portlet','show-alternate-links=true\nlayout-template-id=Layout_25_50_25\nmerge-fail-count=0\nlayoutUpdateable=true\n',0,'/layout',0,0,'classic','','classic','','',0,'',0,''),('c7c282fd-f439-49a2-8dff-d4f0df2f7749',10925,10922,10253,'2014-06-11 22:29:12','2014-06-12 22:47:14',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Aliados_PepoApp</Name></root>','','','','','portlet','show-alternate-links=true\nlayout-template-id=2_columns_ii\nmerge-fail-count=0\nlayoutUpdateable=true\n',0,'/layout',0,0,'classic','','classic','','',0,'',0,''),('b8dc2f12-43fa-4594-88dc-2a328fcbc446',10934,10931,10253,'2014-06-11 22:29:22','2014-06-12 22:46:49',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Clubes_Pepo_PepoApp</Name></root>','','','','','portlet','show-alternate-links=true\nlayout-template-id=2_columns_ii\nmerge-fail-count=0\nlayoutUpdateable=true\n',0,'/layout',0,0,'classic','','classic','','',0,'',0,''),('71341849-ac42-47e7-8459-acc151dfe218',10943,10940,10253,'2014-06-11 22:29:32','2014-06-12 22:46:25',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Galeria_PepoApp</Name></root>','','','','','portlet','show-alternate-links=true\nlayout-template-id=2_columns_ii\nmerge-fail-count=0\nlayoutUpdateable=true\n',0,'/layout',0,0,'classic','','classic','','',0,'',0,''),('76b42c28-7e73-41d5-b006-32e6870ae917',11004,10279,10253,'2014-06-11 23:14:37','2014-07-26 01:56:28',0,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Bienvenida</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Bienvenida</Title></root>','','','','portlet','last-merge-time=1406339788458\nshow-alternate-links=true\nlayout-template-id=Layout_25_50_25\nmerge-fail-count=0\nlayoutUpdateable=true\ncolumn-2=mygreeting_WAR_mygreetingportlet\ncolumn-1=58,\n',0,'/bienvenida',0,0,'classic','','classic','','',0,'ebc7c024-f67f-4c6b-90d8-cd709e06326b',1,''),('91629413-9eef-4999-aebe-30efe0a0a067',11226,10279,10253,'2014-06-12 18:33:40','2014-06-12 23:23:30',0,6,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Que es Pepo</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Que es Pepo</Title></root>','','','','portlet','last-merge-time=1402615409970\nlayout-template-id=Layout_25_50_25\nshow-alternate-links=true\nmerge-fail-count=0\nlayoutUpdateable=true\n',0,'/queespepo',0,0,'classic','','classic','','',1,'e1636721-b850-4522-b656-482c160f67f1',1,''),('29dc1fe7-ee6e-4771-9f3b-a25fab03a171',11234,10279,10253,'2014-06-12 18:34:45','2014-06-12 23:23:30',0,7,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Aliados</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Aliados</Title></root>','','','','portlet','last-merge-time=1402615410034\nlayout-template-id=2_columns_ii\nshow-alternate-links=true\nmerge-fail-count=0\nlayoutUpdateable=true\n',0,'/aliados',0,0,'classic','','classic','','',2,'f4e3600f-f063-42c5-a716-7fba388a113c',1,''),('17bed9ea-b878-4eb7-bac7-3e8872f3bbaa',11240,10279,10253,'2014-06-12 18:36:27','2014-06-12 23:23:30',0,8,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Clubes Pepo</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Clubes Pepo</Title></root>','','','','portlet','last-merge-time=1402615410097\nlayout-template-id=2_columns_ii\nshow-alternate-links=true\nmerge-fail-count=0\nlayoutUpdateable=true\n',0,'/clubespepo',0,0,'classic','','classic','','',3,'947f9497-a78e-4c28-97fa-a7bf481c8be8',1,''),('738fde1a-b16e-461e-bb25-eb25664953dd',11246,10279,10253,'2014-06-12 18:36:52','2014-06-12 23:23:30',0,9,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Galeria</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Galeria</Title></root>','','','','portlet','last-merge-time=1402615410160\nlayout-template-id=2_columns_ii\nshow-alternate-links=true\nmerge-fail-count=0\nlayoutUpdateable=true\n',0,'/galeria',0,0,'classic','','classic','','',4,'3b42d8bb-eb6f-41d8-a2e6-bc438e926d97',1,''),('07087e06-c697-473d-8ebb-52dc923cb1a8',11306,11303,10253,'2014-06-12 22:29:27','2014-06-12 23:23:08',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_RegistroPersona_PepoApp</Name></root>','','','','','portlet','layout-template-id=Layout_25_50_25\nshow-alternate-links=true\nmerge-fail-count=0\nlayoutUpdateable=true\ncolumn-2=FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet\n',0,'/layout',0,0,'classic','','classic','','',0,'',0,''),('3b0488bf-5f0b-4388-810e-dd3928a9dd47',11326,10279,10253,'2014-06-12 23:23:48','2014-07-26 08:41:23',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Persona</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Persona</Title></root>','','','','portlet','column-3-customizable=false\nlast-merge-time=1402615428681\nshow-alternate-links=true\nlayout-template-id=Layout_25_50_25\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\ncolumn-2=FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet\n',0,'/persona',0,0,'classic','','classic','','',1,'dcc42873-2d90-4a24-b586-c22d3dd9dd0c',1,''),('f4c58271-246d-4b19-bc2d-3deb948b6fea',11406,11403,10253,'2014-06-13 18:39:37','2014-06-13 20:54:09',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Raza_PepoApp</Name></root>','','','','','portlet','layout-template-id=Layout_25_50_25\nshow-alternate-links=true\nmerge-fail-count=0\nlayoutUpdateable=true\ncolumn-2=FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet\n',0,'/layout',0,0,'classic','','classic','','',0,'',0,''),('1b24d2cb-54ea-4d3e-a077-3f22c917e0cc',11415,11412,10253,'2014-06-13 18:40:07','2014-06-15 13:36:35',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Incidente_PepoApp</Name></root>','','','','','portlet','layout-template-id=Layout_25_50_25\nshow-alternate-links=true\nmerge-fail-count=0\nlayoutUpdateable=true\ncolumn-2=FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet\n',0,'/layout',0,0,'classic','','classic','','',0,'',0,''),('d9a3f6a7-7cf5-4a81-b159-9806084e760c',11424,11421,10253,'2014-06-13 18:40:27','2014-07-26 08:47:19',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Ejemplar_PepoApp</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\nmerge-fail-count=0\ncolumn-2=FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet\n',0,'/layout',0,0,'','','','','',0,'',0,''),('f352f1ac-90df-4253-9f00-dee7056bce22',11433,11430,10253,'2014-06-13 18:40:42','2014-06-15 12:50:54',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Plantilla_Tipo_Incidente_PepoApp</Name></root>','','','','','portlet','show-alternate-links=true\nlayout-template-id=Layout_25_50_25\nmerge-fail-count=0\nlayoutUpdateable=true\ncolumn-2=FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet\n',0,'/layout',0,0,'classic','','classic','','',0,'',0,''),('fc7d47eb-ad06-4124-a78c-a9c162151a15',11443,10279,10253,'2014-06-13 20:55:17','2014-07-26 08:41:23',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Raza</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Raza</Title></root>','','','','portlet','column-3-customizable=false\nlast-merge-time=1402692917792\nshow-alternate-links=true\nlayout-template-id=Layout_25_50_25\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\ncolumn-2=FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet\n',0,'/raza',0,0,'classic','','classic','','',2,'0cfb8f36-1267-459f-a80a-2a0b3ed66a95',1,''),('9792465a-35e6-4a1b-b1b3-5b30b33db3d3',11506,10279,10253,'2014-06-15 12:51:36','2014-07-26 08:41:23',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Tipo Incidente</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Tipo Incidente</Title></root>','','','','portlet','column-3-customizable=false\nlast-merge-time=1402836696948\nlayout-template-id=Layout_25_50_25\nshow-alternate-links=true\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\ncolumn-2=FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet\n',0,'/tipoincidente',0,0,'classic','','classic','','',3,'f892a2a9-fefc-4e01-8877-fe22cf003836',1,''),('3dbcbd16-319c-4566-aa31-82e36981a9ef',11604,10279,10253,'2014-06-15 13:36:55','2014-07-26 08:41:23',1,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Incidente</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Incidente</Title></root>','','','','portlet','column-3-customizable=false\nlast-merge-time=1402839415990\nshow-alternate-links=true\nlayout-template-id=Layout_25_50_25\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\ncolumn-2=FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet\n',0,'/incidente',0,0,'classic','','classic','','',4,'d2e6c7a4-cdc6-4fbc-8521-cface62f8d35',1,''),('6a049e42-1618-4b0a-a9ac-1042c3e2b311',11901,10279,10253,'2014-07-26 08:41:18','2014-07-26 08:47:24',1,5,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Ejemplar</Name></root>','','','','','portlet','last-merge-time=1406364444173\nlayout-template-id=2_columns_ii\nmerge-fail-count=0\ncolumn-2=FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet\n',0,'/ejemplar',0,0,'','','','','',0,'01b0ebda-e850-48ce-a656-a5e3b579602e',1,'');
/*!40000 ALTER TABLE `Layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutBranch`
--

DROP TABLE IF EXISTS `LayoutBranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutBranch` (
  `LayoutBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`LayoutBranchId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutBranch`
--

LOCK TABLES `LayoutBranch` WRITE;
/*!40000 ALTER TABLE `LayoutBranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutBranch` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `LayoutRevision`
--

DROP TABLE IF EXISTS `LayoutRevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutRevision` (
  `layoutRevisionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `layoutBranchId` bigint(20) DEFAULT NULL,
  `parentLayoutRevisionId` bigint(20) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `major` tinyint(4) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `typeSettings` longtext,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`layoutRevisionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutRevision`
--

LOCK TABLES `LayoutRevision` WRITE;
/*!40000 ALTER TABLE `LayoutRevision` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutRevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutSet`
--

DROP TABLE IF EXISTS `LayoutSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutSet` (
  `layoutSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `pageCount` int(11) DEFAULT NULL,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSet`
--

LOCK TABLES `LayoutSet` WRITE;
/*!40000 ALTER TABLE `LayoutSet` DISABLE KEYS */;
INSERT INTO `LayoutSet` VALUES (10272,10271,10253,'2014-06-11 21:08:27','2014-06-11 21:08:27',1,0,0,'classic','01','mobile','01','',1,'','',0),(10273,10271,10253,'2014-06-11 21:08:27','2014-06-11 21:08:27',0,0,0,'classic','01','mobile','01','',0,'','',0),(10280,10279,10253,'2014-06-11 21:08:27','2014-07-26 08:41:34',1,0,0,'Tema_21_03_2014_WAR_Tema_21_03_2014theme','01','mobile','01','',5,'','',0),(10281,10279,10253,'2014-06-11 21:08:27','2014-07-10 08:26:46',0,1,10902,'Tema_21_03_2014_WAR_Tema_21_03_2014theme','01','mobile','01','',5,'','',0),(10289,10288,10253,'2014-06-11 21:08:27','2014-06-11 21:08:27',1,0,0,'classic','01','mobile','01','',0,'','',0),(10290,10288,10253,'2014-06-11 21:08:27','2014-06-11 21:08:27',0,0,0,'classic','01','mobile','01','',0,'','',0),(10292,10291,10253,'2014-06-11 21:08:28','2014-06-11 21:08:28',1,0,0,'classic','01','mobile','01','',0,'','',0),(10293,10291,10253,'2014-06-11 21:08:28','2014-06-11 21:08:28',0,0,0,'classic','01','mobile','01','',0,'','',0),(10299,10298,10253,'2014-06-11 21:08:28','2014-06-11 21:08:28',1,0,0,'classic','01','mobile','01','',0,'','',0),(10300,10298,10253,'2014-06-11 21:08:28','2014-06-11 21:08:28',0,0,0,'classic','01','mobile','01','',0,'','',0),(10411,10410,10253,'2014-06-11 21:08:30','2014-06-11 21:08:30',1,0,0,'classic','01','mobile','01','',1,'','',0),(10412,10410,10253,'2014-06-11 21:08:30','2014-06-11 21:08:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(10421,10420,10253,'2014-06-11 21:08:30','2014-06-11 21:08:30',1,0,0,'classic','01','mobile','01','',1,'','',0),(10422,10420,10253,'2014-06-11 21:08:30','2014-06-11 21:08:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(10430,10429,10253,'2014-06-11 21:08:30','2014-06-11 21:08:30',1,0,0,'classic','01','mobile','01','',1,'','',0),(10431,10429,10253,'2014-06-11 21:08:30','2014-06-11 21:08:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(10439,10438,10253,'2014-06-11 21:08:30','2014-06-11 21:08:31',1,0,0,'classic','01','mobile','01','',3,'','',0),(10440,10438,10253,'2014-06-11 21:08:30','2014-06-11 21:08:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(10465,10464,10253,'2014-06-11 21:08:31','2014-06-11 21:08:31',1,0,0,'classic','01','mobile','01','',4,'','',0),(10466,10464,10253,'2014-06-11 21:08:31','2014-06-11 21:08:31',0,0,0,'classic','01','mobile','01','',0,'','',0),(10510,10509,10253,'2014-06-11 21:09:36','2014-06-11 21:09:36',1,0,0,'classic','01','mobile','01','',0,'','',0),(10511,10509,10253,'2014-06-11 21:09:36','2014-06-11 21:09:36',0,0,0,'classic','01','mobile','01','',0,'','',0),(10905,10904,10253,'2014-06-11 22:27:26','2014-06-11 22:27:26',1,0,0,'classic','01','mobile','01','',1,'','',0),(10906,10904,10253,'2014-06-11 22:27:26','2014-06-11 22:27:26',0,0,0,'classic','01','mobile','01','',0,'','',0),(10914,10913,10253,'2014-06-11 22:28:54','2014-06-11 22:28:54',1,0,0,'classic','01','mobile','01','',1,'','',0),(10915,10913,10253,'2014-06-11 22:28:54','2014-06-11 22:28:54',0,0,0,'classic','01','mobile','01','',0,'','',0),(10923,10922,10253,'2014-06-11 22:29:12','2014-06-11 22:29:13',1,0,0,'classic','01','mobile','01','',1,'','',0),(10924,10922,10253,'2014-06-11 22:29:12','2014-06-11 22:29:12',0,0,0,'classic','01','mobile','01','',0,'','',0),(10932,10931,10253,'2014-06-11 22:29:22','2014-06-11 22:29:22',1,0,0,'classic','01','mobile','01','',1,'','',0),(10933,10931,10253,'2014-06-11 22:29:22','2014-06-11 22:29:22',0,0,0,'classic','01','mobile','01','',0,'','',0),(10941,10940,10253,'2014-06-11 22:29:32','2014-06-11 22:29:32',1,0,0,'classic','01','mobile','01','',1,'','',0),(10942,10940,10253,'2014-06-11 22:29:32','2014-06-11 22:29:32',0,0,0,'classic','01','mobile','01','',0,'','',0),(11207,11206,10253,'2014-06-12 18:22:48','2014-06-12 18:22:48',1,0,0,'classic','01','mobile','01','',0,'','',0),(11208,11206,10253,'2014-06-12 18:22:48','2014-06-12 18:22:48',0,0,0,'classic','01','mobile','01','',0,'','',0),(11304,11303,10253,'2014-06-12 22:29:27','2014-06-12 22:29:27',1,0,0,'classic','01','mobile','01','',1,'','',0),(11305,11303,10253,'2014-06-12 22:29:27','2014-06-12 22:29:27',0,0,0,'classic','01','mobile','01','',0,'','',0),(11404,11403,10253,'2014-06-13 18:39:37','2014-06-13 18:39:37',1,0,0,'classic','01','mobile','01','',1,'','',0),(11405,11403,10253,'2014-06-13 18:39:37','2014-06-13 18:39:37',0,0,0,'classic','01','mobile','01','',0,'','',0),(11413,11412,10253,'2014-06-13 18:40:07','2014-06-13 18:40:07',1,0,0,'classic','01','mobile','01','',1,'','',0),(11414,11412,10253,'2014-06-13 18:40:07','2014-06-13 18:40:07',0,0,0,'classic','01','mobile','01','',0,'','',0),(11422,11421,10253,'2014-06-13 18:40:27','2014-06-13 18:40:27',1,0,0,'classic','01','mobile','01','',1,'','',0),(11423,11421,10253,'2014-06-13 18:40:27','2014-06-13 18:40:27',0,0,0,'classic','01','mobile','01','',0,'','',0),(11431,11430,10253,'2014-06-13 18:40:42','2014-06-13 18:40:42',1,0,0,'classic','01','mobile','01','',1,'','',0),(11432,11430,10253,'2014-06-13 18:40:42','2014-06-13 18:40:42',0,0,0,'classic','01','mobile','01','',0,'','',0);
/*!40000 ALTER TABLE `LayoutSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutSetBranch`
--

DROP TABLE IF EXISTS `LayoutSetBranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutSetBranch` (
  `layoutSetBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetBranchId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSetBranch`
--

LOCK TABLES `LayoutSetBranch` WRITE;
/*!40000 ALTER TABLE `LayoutSetBranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutSetBranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutSetPrototype`
--

DROP TABLE IF EXISTS `LayoutSetPrototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutSetPrototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetPrototypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSetPrototype`
--

LOCK TABLES `LayoutSetPrototype` WRITE;
/*!40000 ALTER TABLE `LayoutSetPrototype` DISABLE KEYS */;
INSERT INTO `LayoutSetPrototype` VALUES ('8d3029fe-1437-4207-b826-6d75c097d0db',10437,10253,'2014-06-11 21:08:30','2014-07-22 10:48:24','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Community Site</Name></root>','Site with Forums, Calendar and Wiki','layoutsUpdateable=true\n',1),('82be87f6-6867-4b3d-92c2-d58d8f127fb7',10463,10253,'2014-06-11 21:08:31','2014-07-22 10:48:24','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Intranet Site</Name></root>','Site with Documents, Calendar and News','layoutsUpdateable=true\n',1);
/*!40000 ALTER TABLE `LayoutSetPrototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ListType`
--

DROP TABLE IF EXISTS `ListType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ListType` (
  `listTypeId` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`listTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListType`
--

LOCK TABLES `ListType` WRITE;
/*!40000 ALTER TABLE `ListType` DISABLE KEYS */;
INSERT INTO `ListType` VALUES (10000,'billing','com.liferay.portal.model.Account.address'),(10001,'other','com.liferay.portal.model.Account.address'),(10002,'p-o-box','com.liferay.portal.model.Account.address'),(10003,'shipping','com.liferay.portal.model.Account.address'),(10004,'email-address','com.liferay.portal.model.Account.emailAddress'),(10005,'email-address-2','com.liferay.portal.model.Account.emailAddress'),(10006,'email-address-3','com.liferay.portal.model.Account.emailAddress'),(10007,'fax','com.liferay.portal.model.Account.phone'),(10008,'local','com.liferay.portal.model.Account.phone'),(10009,'other','com.liferay.portal.model.Account.phone'),(10010,'toll-free','com.liferay.portal.model.Account.phone'),(10011,'tty','com.liferay.portal.model.Account.phone'),(10012,'intranet','com.liferay.portal.model.Account.website'),(10013,'public','com.liferay.portal.model.Account.website'),(11000,'business','com.liferay.portal.model.Contact.address'),(11001,'other','com.liferay.portal.model.Contact.address'),(11002,'personal','com.liferay.portal.model.Contact.address'),(11003,'email-address','com.liferay.portal.model.Contact.emailAddress'),(11004,'email-address-2','com.liferay.portal.model.Contact.emailAddress'),(11005,'email-address-3','com.liferay.portal.model.Contact.emailAddress'),(11006,'business','com.liferay.portal.model.Contact.phone'),(11007,'business-fax','com.liferay.portal.model.Contact.phone'),(11008,'mobile-phone','com.liferay.portal.model.Contact.phone'),(11009,'other','com.liferay.portal.model.Contact.phone'),(11010,'pager','com.liferay.portal.model.Contact.phone'),(11011,'personal','com.liferay.portal.model.Contact.phone'),(11012,'personal-fax','com.liferay.portal.model.Contact.phone'),(11013,'tty','com.liferay.portal.model.Contact.phone'),(11014,'dr','com.liferay.portal.model.Contact.prefix'),(11015,'mr','com.liferay.portal.model.Contact.prefix'),(11016,'mrs','com.liferay.portal.model.Contact.prefix'),(11017,'ms','com.liferay.portal.model.Contact.prefix'),(11020,'ii','com.liferay.portal.model.Contact.suffix'),(11021,'iii','com.liferay.portal.model.Contact.suffix'),(11022,'iv','com.liferay.portal.model.Contact.suffix'),(11023,'jr','com.liferay.portal.model.Contact.suffix'),(11024,'phd','com.liferay.portal.model.Contact.suffix'),(11025,'sr','com.liferay.portal.model.Contact.suffix'),(11026,'blog','com.liferay.portal.model.Contact.website'),(11027,'business','com.liferay.portal.model.Contact.website'),(11028,'other','com.liferay.portal.model.Contact.website'),(11029,'personal','com.liferay.portal.model.Contact.website'),(12000,'billing','com.liferay.portal.model.Organization.address'),(12001,'other','com.liferay.portal.model.Organization.address'),(12002,'p-o-box','com.liferay.portal.model.Organization.address'),(12003,'shipping','com.liferay.portal.model.Organization.address'),(12004,'email-address','com.liferay.portal.model.Organization.emailAddress'),(12005,'email-address-2','com.liferay.portal.model.Organization.emailAddress'),(12006,'email-address-3','com.liferay.portal.model.Organization.emailAddress'),(12007,'fax','com.liferay.portal.model.Organization.phone'),(12008,'local','com.liferay.portal.model.Organization.phone'),(12009,'other','com.liferay.portal.model.Organization.phone'),(12010,'toll-free','com.liferay.portal.model.Organization.phone'),(12011,'tty','com.liferay.portal.model.Organization.phone'),(12012,'administrative','com.liferay.portal.model.Organization.service'),(12013,'contracts','com.liferay.portal.model.Organization.service'),(12014,'donation','com.liferay.portal.model.Organization.service'),(12015,'retail','com.liferay.portal.model.Organization.service'),(12016,'training','com.liferay.portal.model.Organization.service'),(12017,'full-member','com.liferay.portal.model.Organization.status'),(12018,'provisional-member','com.liferay.portal.model.Organization.status'),(12019,'intranet','com.liferay.portal.model.Organization.website'),(12020,'public','com.liferay.portal.model.Organization.website');
/*!40000 ALTER TABLE `ListType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lock_`
--

DROP TABLE IF EXISTS `Lock_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lock_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `lockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `className` varchar(75) DEFAULT NULL,
  `key_` varchar(200) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `inheritable` tinyint(4) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`lockId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lock_`
--

LOCK TABLES `Lock_` WRITE;
/*!40000 ALTER TABLE `Lock_` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lock_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBBan`
--

DROP TABLE IF EXISTS `MBBan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBBan` (
  `banId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `banUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`banId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBBan`
--

LOCK TABLES `MBBan` WRITE;
/*!40000 ALTER TABLE `MBBan` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBBan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBCategory`
--

DROP TABLE IF EXISTS `MBCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBCategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `displayStyle` varchar(75) DEFAULT NULL,
  `threadCount` int(11) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBCategory`
--

LOCK TABLES `MBCategory` WRITE;
/*!40000 ALTER TABLE `MBCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBDiscussion`
--

DROP TABLE IF EXISTS `MBDiscussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBDiscussion` (
  `discussionId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`discussionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBDiscussion`
--

LOCK TABLES `MBDiscussion` WRITE;
/*!40000 ALTER TABLE `MBDiscussion` DISABLE KEYS */;
INSERT INTO `MBDiscussion` VALUES (10278,10102,10274,10276),(10418,10102,10413,10415),(10427,10102,10423,10425),(10436,10102,10432,10434),(10450,10102,10446,10448),(10456,10102,10452,10454),(10462,10102,10458,10460),(10476,10102,10472,10474),(10484,10102,10480,10482),(10490,10102,10486,10488),(10496,10102,10492,10494),(10528,10110,10522,10526),(10538,10110,10531,10535),(10546,10110,10540,10544),(10557,10110,10548,10553),(10568,10110,10559,10563),(10581,10110,10575,10579),(10601,10110,10591,10596),(10613,10110,10603,10611),(10625,10110,10615,10623),(10637,10110,10627,10635),(10649,10110,10639,10647),(10661,10110,10651,10659),(10673,10110,10663,10671),(10686,10208,10680,10684),(10698,10208,10692,10696),(10706,10208,10700,10704),(10911,10102,10907,10909),(10920,10102,10916,10918),(10929,10102,10925,10927),(10938,10102,10934,10936),(10947,10102,10943,10945),(11008,10102,11004,11006),(11230,10102,11226,11228),(11238,10102,11234,11236),(11244,10102,11240,11242),(11250,10102,11246,11248),(11310,10102,11306,11308),(11330,10102,11326,11328),(11410,10102,11406,11408),(11419,10102,11415,11417),(11428,10102,11424,11426),(11437,10102,11433,11435),(11447,10102,11443,11445),(11510,10102,11506,11508),(11608,10102,11604,11606),(11905,10102,11901,11903);
/*!40000 ALTER TABLE `MBDiscussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBMailingList`
--

DROP TABLE IF EXISTS `MBMailingList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBMailingList` (
  `uuid_` varchar(75) DEFAULT NULL,
  `mailingListId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `inProtocol` varchar(75) DEFAULT NULL,
  `inServerName` varchar(75) DEFAULT NULL,
  `inServerPort` int(11) DEFAULT NULL,
  `inUseSSL` tinyint(4) DEFAULT NULL,
  `inUserName` varchar(75) DEFAULT NULL,
  `inPassword` varchar(75) DEFAULT NULL,
  `inReadInterval` int(11) DEFAULT NULL,
  `outEmailAddress` varchar(75) DEFAULT NULL,
  `outCustom` tinyint(4) DEFAULT NULL,
  `outServerName` varchar(75) DEFAULT NULL,
  `outServerPort` int(11) DEFAULT NULL,
  `outUseSSL` tinyint(4) DEFAULT NULL,
  `outUserName` varchar(75) DEFAULT NULL,
  `outPassword` varchar(75) DEFAULT NULL,
  `allowAnonymous` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mailingListId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBMailingList`
--

LOCK TABLES `MBMailingList` WRITE;
/*!40000 ALTER TABLE `MBMailingList` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBMailingList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBMessage`
--

DROP TABLE IF EXISTS `MBMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBMessage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `messageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `parentMessageId` bigint(20) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  `format` varchar(75) DEFAULT NULL,
  `attachments` tinyint(4) DEFAULT NULL,
  `anonymous` tinyint(4) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `answer` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBMessage`
--

LOCK TABLES `MBMessage` WRITE;
/*!40000 ALTER TABLE `MBMessage` DISABLE KEYS */;
INSERT INTO `MBMessage` VALUES ('6ffdb795-53e7-400b-9b0e-7481a5a83f31',10275,10271,10253,10257,'','2014-06-11 21:08:27','2014-06-11 21:08:27',10102,10274,-1,10276,10275,0,'10274','10274','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:08:27'),('9e21cfef-906b-46ff-8942-b12d71bae132',10414,10410,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30',10102,10413,-1,10415,10414,0,'10413','10413','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:08:30'),('82679055-eec9-44dc-be6d-16e2dcd3c904',10424,10420,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30',10102,10423,-1,10425,10424,0,'10423','10423','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:08:30'),('c1974e89-a2c4-4ff8-bb57-24b4134f04c8',10433,10429,10253,10257,'','2014-06-11 21:08:30','2014-06-11 21:08:30',10102,10432,-1,10434,10433,0,'10432','10432','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:08:30'),('9c4bcb5e-5f0f-456d-85dc-23f6adaa3a51',10447,10438,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10102,10446,-1,10448,10447,0,'10446','10446','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:08:31'),('d0c54a69-efe5-42d2-8a91-67d0e6d01675',10453,10438,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10102,10452,-1,10454,10453,0,'10452','10452','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:08:31'),('18209b6a-e433-4f7f-be7e-533bb6e723cf',10459,10438,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10102,10458,-1,10460,10459,0,'10458','10458','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:08:31'),('6a869727-8f6d-4bb4-93bf-46ac321b562e',10473,10464,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10102,10472,-1,10474,10473,0,'10472','10472','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:08:31'),('0dad790a-b127-4e9d-a3ca-bf47c87a493c',10481,10464,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10102,10480,-1,10482,10481,0,'10480','10480','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:08:31'),('6f8e65b9-a413-454a-b6c0-1bcd79c95066',10487,10464,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10102,10486,-1,10488,10487,0,'10486','10486','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:08:31'),('16b34af8-341e-4483-a73c-a097d0164205',10493,10464,10253,10257,'','2014-06-11 21:08:31','2014-06-11 21:08:31',10102,10492,-1,10494,10493,0,'10492','10492','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:08:31'),('2fb80600-e2d2-4c3c-852e-268bfcf82c1a',10525,10279,10253,10257,'','2014-06-11 21:09:37','2014-06-11 21:09:37',10110,10522,-1,10526,10525,0,'10522','10522','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:37'),('1178be0b-2063-4d91-953f-8ba460382f81',10534,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10531,-1,10535,10534,0,'10531','10531','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:38'),('f68fc345-4962-4da4-b33d-ed6a868b98ef',10543,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10540,-1,10544,10543,0,'10540','10540','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:38'),('d95aedc4-a6cd-420d-893b-6c5634a681be',10552,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10548,-1,10553,10552,0,'10548','10548','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:38'),('2ebed41f-5ba4-49c9-ae6b-d4f2c10f5223',10562,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10559,-1,10563,10562,0,'10559','10559','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:38'),('1f9a7920-8e99-4220-b564-32edde716b27',10578,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10575,-1,10579,10578,0,'10575','10575','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:38'),('07931662-c152-4959-be28-f255ce6c7361',10595,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10591,-1,10596,10595,0,'10591','10591','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:38'),('e006f70a-94cf-461b-af88-c35b5359a982',10610,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10603,-1,10611,10610,0,'10603','10603','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:38'),('0c04ead8-d480-43e7-a550-9f50e64984cb',10622,10279,10253,10257,'','2014-06-11 21:09:38','2014-06-11 21:09:38',10110,10615,-1,10623,10622,0,'10615','10615','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:38'),('33952a9b-ccd4-44df-8bb7-ffa61d0a2459',10634,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10110,10627,-1,10635,10634,0,'10627','10627','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:39'),('82099037-09ed-4b7f-9621-544888f0ec12',10646,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10110,10639,-1,10647,10646,0,'10639','10639','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:39'),('d19c5957-e344-48e1-8ad0-6d8305f44e07',10658,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10110,10651,-1,10659,10658,0,'10651','10651','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:39'),('1d743059-7d65-4227-9584-17d3a059c793',10670,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10110,10663,-1,10671,10670,0,'10663','10663','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:39'),('b7e4f7a7-6aae-4b35-8108-8b6f59b36f8d',10683,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10208,10680,-1,10684,10683,0,'10680','10680','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:39'),('47fdfa81-fb4f-4f6a-921f-847068b2492c',10695,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10208,10692,-1,10696,10695,0,'10692','10692','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:39'),('7258736e-bf20-467e-a1ac-ee85f90a82de',10703,10279,10253,10257,'','2014-06-11 21:09:39','2014-06-11 21:09:39',10208,10700,-1,10704,10703,0,'10700','10700','bbcode',0,1,0,0,0,0,10257,'','2014-06-11 21:09:39'),('047783bd-a052-43da-951d-40becd812343',10908,10904,10253,10506,'Edicson Morales','2014-06-11 22:27:26','2014-06-11 22:27:26',10102,10907,-1,10909,10908,0,'10907','10907','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-11 22:27:26'),('e3fe2083-ab68-4bca-9ebf-899bf6be43e1',10917,10913,10253,10506,'Edicson Morales','2014-06-11 22:28:54','2014-06-11 22:28:54',10102,10916,-1,10918,10917,0,'10916','10916','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-11 22:28:54'),('a55a3f96-3fc7-4055-9c88-b8a2a65b6235',10926,10922,10253,10506,'Edicson Morales','2014-06-11 22:29:13','2014-06-11 22:29:13',10102,10925,-1,10927,10926,0,'10925','10925','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-11 22:29:13'),('dba0845a-8da3-4845-9ba0-9c8c90e9ffca',10935,10931,10253,10506,'Edicson Morales','2014-06-11 22:29:22','2014-06-11 22:29:22',10102,10934,-1,10936,10935,0,'10934','10934','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-11 22:29:22'),('05f0596f-98ff-4563-9292-0a71be8e0bf4',10944,10940,10253,10506,'Edicson Morales','2014-06-11 22:29:32','2014-06-11 22:29:32',10102,10943,-1,10945,10944,0,'10943','10943','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-11 22:29:32'),('eb560ab8-a853-4bf8-b77a-c9a36e87d693',11005,10279,10253,10506,'Edicson Morales','2014-06-11 23:14:37','2014-06-11 23:14:37',10102,11004,-1,11006,11005,0,'11004','11004','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-11 23:14:37'),('7ad01454-2524-4a7a-b74f-6f10f94beea8',11227,10279,10253,10506,'Edicson Morales','2014-06-12 18:33:40','2014-06-12 18:33:40',10102,11226,-1,11228,11227,0,'11226','11226','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-12 18:33:40'),('20a02b2e-8a30-466d-a864-cc46db556a01',11235,10279,10253,10506,'Edicson Morales','2014-06-12 18:34:45','2014-06-12 18:34:45',10102,11234,-1,11236,11235,0,'11234','11234','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-12 18:34:45'),('b5980e1e-dcc0-48cb-9685-a3b49f8d51c5',11241,10279,10253,10506,'Edicson Morales','2014-06-12 18:36:27','2014-06-12 18:36:27',10102,11240,-1,11242,11241,0,'11240','11240','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-12 18:36:27'),('5ba03d63-97a5-415b-a407-affe911ff741',11247,10279,10253,10506,'Edicson Morales','2014-06-12 18:36:52','2014-06-12 18:36:52',10102,11246,-1,11248,11247,0,'11246','11246','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-12 18:36:52'),('21c5d874-f577-4596-9e7e-399a6ff8b72d',11307,11303,10253,10506,'Edicson Morales','2014-06-12 22:29:27','2014-06-12 22:29:27',10102,11306,-1,11308,11307,0,'11306','11306','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-12 22:29:27'),('1626858c-baeb-4e77-a771-ead8f929c181',11327,10279,10253,10506,'Edicson Morales','2014-06-12 23:23:48','2014-06-12 23:23:48',10102,11326,-1,11328,11327,0,'11326','11326','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-12 23:23:48'),('059a694e-530b-4501-856e-4db293097b74',11407,11403,10253,10506,'Edicson Morales','2014-06-13 18:39:37','2014-06-13 18:39:37',10102,11406,-1,11408,11407,0,'11406','11406','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-13 18:39:37'),('38ee4b83-535d-4d8a-b02f-efb4beb0596b',11416,11412,10253,10506,'Edicson Morales','2014-06-13 18:40:07','2014-06-13 18:40:07',10102,11415,-1,11417,11416,0,'11415','11415','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-13 18:40:07'),('9fbe5128-49f2-4154-a7ca-4f4d1e2d2d5b',11425,11421,10253,10506,'Edicson Morales','2014-06-13 18:40:27','2014-06-13 18:40:27',10102,11424,-1,11426,11425,0,'11424','11424','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-13 18:40:27'),('9e3c1105-e1f2-4457-8e24-141613ba2dcb',11434,11430,10253,10506,'Edicson Morales','2014-06-13 18:40:42','2014-06-13 18:40:42',10102,11433,-1,11435,11434,0,'11433','11433','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-13 18:40:42'),('92083451-358d-4ef4-8422-9fd966fd69bf',11444,10279,10253,10506,'Edicson Morales','2014-06-13 20:55:17','2014-06-13 20:55:17',10102,11443,-1,11445,11444,0,'11443','11443','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-13 20:55:17'),('25d77fe5-5b27-4bb7-b8e0-3e12608544db',11507,10279,10253,10506,'Edicson Morales','2014-06-15 12:51:36','2014-06-15 12:51:36',10102,11506,-1,11508,11507,0,'11506','11506','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-15 12:51:37'),('c5f7c4e8-0d57-4de9-a350-9e6ccadaea3d',11605,10279,10253,10506,'Edicson Morales','2014-06-15 13:36:55','2014-06-15 13:36:55',10102,11604,-1,11606,11605,0,'11604','11604','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-06-15 13:36:55'),('6fc4acc9-d933-4360-bdd8-ca8b9d2fcb69',11902,10279,10253,10506,'Edicson Morales','2014-07-26 08:41:18','2014-07-26 08:41:18',10102,11901,-1,11903,11902,0,'11901','11901','bbcode',0,0,0,0,0,0,10506,'Edicson Morales','2014-07-26 08:41:18');
/*!40000 ALTER TABLE `MBMessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBStatsUser`
--

DROP TABLE IF EXISTS `MBStatsUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBStatsUser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`statsUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBStatsUser`
--

LOCK TABLES `MBStatsUser` WRITE;
/*!40000 ALTER TABLE `MBStatsUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBStatsUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBThread`
--

DROP TABLE IF EXISTS `MBThread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBThread` (
  `threadId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `rootMessageUserId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `lastPostByUserId` bigint(20) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `question` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`threadId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBThread`
--

LOCK TABLES `MBThread` WRITE;
/*!40000 ALTER TABLE `MBThread` DISABLE KEYS */;
INSERT INTO `MBThread` VALUES (10276,10271,10253,-1,10275,10257,1,0,0,'2014-06-11 21:08:27',0,0,0,10257,'','2014-06-11 21:08:27'),(10415,10410,10253,-1,10414,10257,1,0,0,'2014-06-11 21:08:30',0,0,0,10257,'','2014-06-11 21:08:30'),(10425,10420,10253,-1,10424,10257,1,0,0,'2014-06-11 21:08:30',0,0,0,10257,'','2014-06-11 21:08:30'),(10434,10429,10253,-1,10433,10257,1,0,0,'2014-06-11 21:08:30',0,0,0,10257,'','2014-06-11 21:08:30'),(10448,10438,10253,-1,10447,10257,1,0,0,'2014-06-11 21:08:31',0,0,0,10257,'','2014-06-11 21:08:31'),(10454,10438,10253,-1,10453,10257,1,0,0,'2014-06-11 21:08:31',0,0,0,10257,'','2014-06-11 21:08:31'),(10460,10438,10253,-1,10459,10257,1,0,0,'2014-06-11 21:08:31',0,0,0,10257,'','2014-06-11 21:08:31'),(10474,10464,10253,-1,10473,10257,1,0,0,'2014-06-11 21:08:31',0,0,0,10257,'','2014-06-11 21:08:31'),(10482,10464,10253,-1,10481,10257,1,0,0,'2014-06-11 21:08:31',0,0,0,10257,'','2014-06-11 21:08:31'),(10488,10464,10253,-1,10487,10257,1,0,0,'2014-06-11 21:08:31',0,0,0,10257,'','2014-06-11 21:08:31'),(10494,10464,10253,-1,10493,10257,1,0,0,'2014-06-11 21:08:31',0,0,0,10257,'','2014-06-11 21:08:31'),(10526,10279,10253,-1,10525,10257,1,0,0,'2014-06-11 21:09:37',0,0,0,10257,'','2014-06-11 21:09:37'),(10535,10279,10253,-1,10534,10257,1,0,0,'2014-06-11 21:09:38',0,0,0,10257,'','2014-06-11 21:09:38'),(10544,10279,10253,-1,10543,10257,1,0,0,'2014-06-11 21:09:38',0,0,0,10257,'','2014-06-11 21:09:38'),(10553,10279,10253,-1,10552,10257,1,0,0,'2014-06-11 21:09:38',0,0,0,10257,'','2014-06-11 21:09:38'),(10563,10279,10253,-1,10562,10257,1,0,0,'2014-06-11 21:09:38',0,0,0,10257,'','2014-06-11 21:09:38'),(10579,10279,10253,-1,10578,10257,1,0,0,'2014-06-11 21:09:38',0,0,0,10257,'','2014-06-11 21:09:38'),(10596,10279,10253,-1,10595,10257,1,0,0,'2014-06-11 21:09:38',0,0,0,10257,'','2014-06-11 21:09:38'),(10611,10279,10253,-1,10610,10257,1,0,0,'2014-06-11 21:09:38',0,0,0,10257,'','2014-06-11 21:09:38'),(10623,10279,10253,-1,10622,10257,1,0,0,'2014-06-11 21:09:38',0,0,0,10257,'','2014-06-11 21:09:38'),(10635,10279,10253,-1,10634,10257,1,0,0,'2014-06-11 21:09:39',0,0,0,10257,'','2014-06-11 21:09:39'),(10647,10279,10253,-1,10646,10257,1,0,0,'2014-06-11 21:09:39',0,0,0,10257,'','2014-06-11 21:09:39'),(10659,10279,10253,-1,10658,10257,1,0,0,'2014-06-11 21:09:39',0,0,0,10257,'','2014-06-11 21:09:39'),(10671,10279,10253,-1,10670,10257,1,0,0,'2014-06-11 21:09:39',0,0,0,10257,'','2014-06-11 21:09:39'),(10684,10279,10253,-1,10683,10257,1,0,0,'2014-06-11 21:09:39',0,0,0,10257,'','2014-06-11 21:09:39'),(10696,10279,10253,-1,10695,10257,1,0,0,'2014-06-11 21:09:39',0,0,0,10257,'','2014-06-11 21:09:39'),(10704,10279,10253,-1,10703,10257,1,0,0,'2014-06-11 21:09:39',0,0,0,10257,'','2014-06-11 21:09:39'),(10909,10904,10253,-1,10908,10506,1,0,10506,'2014-06-11 22:27:26',0,0,0,10506,'Edicson Morales','2014-06-11 22:27:26'),(10918,10913,10253,-1,10917,10506,1,0,10506,'2014-06-11 22:28:54',0,0,0,10506,'Edicson Morales','2014-06-11 22:28:54'),(10927,10922,10253,-1,10926,10506,1,0,10506,'2014-06-11 22:29:13',0,0,0,10506,'Edicson Morales','2014-06-11 22:29:13'),(10936,10931,10253,-1,10935,10506,1,0,10506,'2014-06-11 22:29:22',0,0,0,10506,'Edicson Morales','2014-06-11 22:29:22'),(10945,10940,10253,-1,10944,10506,1,0,10506,'2014-06-11 22:29:32',0,0,0,10506,'Edicson Morales','2014-06-11 22:29:32'),(11006,10279,10253,-1,11005,10506,1,0,10506,'2014-06-11 23:14:37',0,0,0,10506,'Edicson Morales','2014-06-11 23:14:37'),(11228,10279,10253,-1,11227,10506,1,0,10506,'2014-06-12 18:33:40',0,0,0,10506,'Edicson Morales','2014-06-12 18:33:40'),(11236,10279,10253,-1,11235,10506,1,0,10506,'2014-06-12 18:34:45',0,0,0,10506,'Edicson Morales','2014-06-12 18:34:45'),(11242,10279,10253,-1,11241,10506,1,0,10506,'2014-06-12 18:36:27',0,0,0,10506,'Edicson Morales','2014-06-12 18:36:27'),(11248,10279,10253,-1,11247,10506,1,0,10506,'2014-06-12 18:36:52',0,0,0,10506,'Edicson Morales','2014-06-12 18:36:52'),(11308,11303,10253,-1,11307,10506,1,0,10506,'2014-06-12 22:29:27',0,0,0,10506,'Edicson Morales','2014-06-12 22:29:27'),(11328,10279,10253,-1,11327,10506,1,0,10506,'2014-06-12 23:23:48',0,0,0,10506,'Edicson Morales','2014-06-12 23:23:48'),(11408,11403,10253,-1,11407,10506,1,0,10506,'2014-06-13 18:39:37',0,0,0,10506,'Edicson Morales','2014-06-13 18:39:37'),(11417,11412,10253,-1,11416,10506,1,0,10506,'2014-06-13 18:40:07',0,0,0,10506,'Edicson Morales','2014-06-13 18:40:07'),(11426,11421,10253,-1,11425,10506,1,0,10506,'2014-06-13 18:40:27',0,0,0,10506,'Edicson Morales','2014-06-13 18:40:27'),(11435,11430,10253,-1,11434,10506,1,0,10506,'2014-06-13 18:40:42',0,0,0,10506,'Edicson Morales','2014-06-13 18:40:42'),(11445,10279,10253,-1,11444,10506,1,0,10506,'2014-06-13 20:55:17',0,0,0,10506,'Edicson Morales','2014-06-13 20:55:17'),(11508,10279,10253,-1,11507,10506,1,0,10506,'2014-06-15 12:51:37',0,0,0,10506,'Edicson Morales','2014-06-15 12:51:37'),(11606,10279,10253,-1,11605,10506,1,0,10506,'2014-06-15 13:36:55',0,0,0,10506,'Edicson Morales','2014-06-15 13:36:55'),(11903,10279,10253,-1,11902,10506,1,0,10506,'2014-07-26 08:41:18',0,0,0,10506,'Edicson Morales','2014-07-26 08:41:18');
/*!40000 ALTER TABLE `MBThread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBThreadFlag`
--

DROP TABLE IF EXISTS `MBThreadFlag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBThreadFlag` (
  `threadFlagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`threadFlagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBThreadFlag`
--

LOCK TABLES `MBThreadFlag` WRITE;
/*!40000 ALTER TABLE `MBThreadFlag` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBThreadFlag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRAction`
--

DROP TABLE IF EXISTS `MDRAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRAction` (
  `uuid_` varchar(75) DEFAULT NULL,
  `actionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`actionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRAction`
--

LOCK TABLES `MDRAction` WRITE;
/*!40000 ALTER TABLE `MDRAction` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRRule`
--

DROP TABLE IF EXISTS `MDRRule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRRule` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`ruleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRRule`
--

LOCK TABLES `MDRRule` WRITE;
/*!40000 ALTER TABLE `MDRRule` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRRule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRRuleGroup`
--

DROP TABLE IF EXISTS `MDRRuleGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRRuleGroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`ruleGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRRuleGroup`
--

LOCK TABLES `MDRRuleGroup` WRITE;
/*!40000 ALTER TABLE `MDRRuleGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRRuleGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRRuleGroupInstance`
--

DROP TABLE IF EXISTS `MDRRuleGroupInstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRRuleGroupInstance` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ruleGroupInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRRuleGroupInstance`
--

LOCK TABLES `MDRRuleGroupInstance` WRITE;
/*!40000 ALTER TABLE `MDRRuleGroupInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRRuleGroupInstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Marketplace_App`
--

DROP TABLE IF EXISTS `Marketplace_App`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Marketplace_App` (
  `uuid_` varchar(75) DEFAULT NULL,
  `appId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `remoteAppId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`appId`),
  KEY `IX_865B7BD5` (`companyId`),
  KEY `IX_20F14D93` (`remoteAppId`),
  KEY `IX_3E667FE1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Marketplace_App`
--

LOCK TABLES `Marketplace_App` WRITE;
/*!40000 ALTER TABLE `Marketplace_App` DISABLE KEYS */;
/*!40000 ALTER TABLE `Marketplace_App` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Marketplace_Module`
--

DROP TABLE IF EXISTS `Marketplace_Module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Marketplace_Module` (
  `uuid_` varchar(75) DEFAULT NULL,
  `moduleId` bigint(20) NOT NULL,
  `appId` bigint(20) DEFAULT NULL,
  `contextName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`moduleId`),
  KEY `IX_7DC16D26` (`appId`),
  KEY `IX_C6938724` (`appId`,`contextName`),
  KEY `IX_F2F1E964` (`contextName`),
  KEY `IX_A7EFD80E` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Marketplace_Module`
--

LOCK TABLES `Marketplace_Module` WRITE;
/*!40000 ALTER TABLE `Marketplace_Module` DISABLE KEYS */;
/*!40000 ALTER TABLE `Marketplace_Module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MembershipRequest`
--

DROP TABLE IF EXISTS `MembershipRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MembershipRequest` (
  `membershipRequestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `comments` longtext,
  `replyComments` longtext,
  `replyDate` datetime DEFAULT NULL,
  `replierUserId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`membershipRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MembershipRequest`
--

LOCK TABLES `MembershipRequest` WRITE;
/*!40000 ALTER TABLE `MembershipRequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `MembershipRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrgGroupPermission`
--

DROP TABLE IF EXISTS `OrgGroupPermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrgGroupPermission` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrgGroupPermission`
--

LOCK TABLES `OrgGroupPermission` WRITE;
/*!40000 ALTER TABLE `OrgGroupPermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrgGroupPermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrgGroupRole`
--

DROP TABLE IF EXISTS `OrgGroupRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrgGroupRole` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrgGroupRole`
--

LOCK TABLES `OrgGroupRole` WRITE;
/*!40000 ALTER TABLE `OrgGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrgGroupRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrgLabor`
--

DROP TABLE IF EXISTS `OrgLabor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrgLabor` (
  `orgLaborId` bigint(20) NOT NULL,
  `organizationId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sunOpen` int(11) DEFAULT NULL,
  `sunClose` int(11) DEFAULT NULL,
  `monOpen` int(11) DEFAULT NULL,
  `monClose` int(11) DEFAULT NULL,
  `tueOpen` int(11) DEFAULT NULL,
  `tueClose` int(11) DEFAULT NULL,
  `wedOpen` int(11) DEFAULT NULL,
  `wedClose` int(11) DEFAULT NULL,
  `thuOpen` int(11) DEFAULT NULL,
  `thuClose` int(11) DEFAULT NULL,
  `friOpen` int(11) DEFAULT NULL,
  `friClose` int(11) DEFAULT NULL,
  `satOpen` int(11) DEFAULT NULL,
  `satClose` int(11) DEFAULT NULL,
  PRIMARY KEY (`orgLaborId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrgLabor`
--

LOCK TABLES `OrgLabor` WRITE;
/*!40000 ALTER TABLE `OrgLabor` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrgLabor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Organization_`
--

DROP TABLE IF EXISTS `Organization_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Organization_` (
  `organizationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `parentOrganizationId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `recursable` tinyint(4) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organization_`
--

LOCK TABLES `Organization_` WRITE;
/*!40000 ALTER TABLE `Organization_` DISABLE KEYS */;
/*!40000 ALTER TABLE `Organization_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasswordPolicy`
--

DROP TABLE IF EXISTS `PasswordPolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasswordPolicy` (
  `passwordPolicyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultPolicy` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeable` tinyint(4) DEFAULT NULL,
  `changeRequired` tinyint(4) DEFAULT NULL,
  `minAge` bigint(20) DEFAULT NULL,
  `checkSyntax` tinyint(4) DEFAULT NULL,
  `allowDictionaryWords` tinyint(4) DEFAULT NULL,
  `minAlphanumeric` int(11) DEFAULT NULL,
  `minLength` int(11) DEFAULT NULL,
  `minLowerCase` int(11) DEFAULT NULL,
  `minNumbers` int(11) DEFAULT NULL,
  `minSymbols` int(11) DEFAULT NULL,
  `minUpperCase` int(11) DEFAULT NULL,
  `history` tinyint(4) DEFAULT NULL,
  `historyCount` int(11) DEFAULT NULL,
  `expireable` tinyint(4) DEFAULT NULL,
  `maxAge` bigint(20) DEFAULT NULL,
  `warningTime` bigint(20) DEFAULT NULL,
  `graceLimit` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `maxFailure` int(11) DEFAULT NULL,
  `lockoutDuration` bigint(20) DEFAULT NULL,
  `requireUnlock` tinyint(4) DEFAULT NULL,
  `resetFailureCount` bigint(20) DEFAULT NULL,
  `resetTicketMaxAge` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordPolicy`
--

LOCK TABLES `PasswordPolicy` WRITE;
/*!40000 ALTER TABLE `PasswordPolicy` DISABLE KEYS */;
INSERT INTO `PasswordPolicy` VALUES (10294,10253,10257,'','2014-06-11 21:08:28','2014-06-11 21:08:28',1,'Default Password Policy','Default Password Policy',1,1,0,0,1,0,6,0,1,0,1,0,6,0,8640000,86400,0,0,3,0,1,600,86400);
/*!40000 ALTER TABLE `PasswordPolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasswordPolicyRel`
--

DROP TABLE IF EXISTS `PasswordPolicyRel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasswordPolicyRel` (
  `passwordPolicyRelId` bigint(20) NOT NULL,
  `passwordPolicyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyRelId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordPolicyRel`
--

LOCK TABLES `PasswordPolicyRel` WRITE;
/*!40000 ALTER TABLE `PasswordPolicyRel` DISABLE KEYS */;
INSERT INTO `PasswordPolicyRel` VALUES (10297,10294,10105,10295),(10508,10294,10105,10506),(11205,10294,10105,11203);
/*!40000 ALTER TABLE `PasswordPolicyRel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasswordTracker`
--

DROP TABLE IF EXISTS `PasswordTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasswordTracker` (
  `passwordTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`passwordTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordTracker`
--

LOCK TABLES `PasswordTracker` WRITE;
/*!40000 ALTER TABLE `PasswordTracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `PasswordTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permission_`
--

DROP TABLE IF EXISTS `Permission_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Permission_` (
  `permissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `resourceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permission_`
--

LOCK TABLES `Permission_` WRITE;
/*!40000 ALTER TABLE `Permission_` DISABLE KEYS */;
/*!40000 ALTER TABLE `Permission_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Phone`
--

DROP TABLE IF EXISTS `Phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Phone` (
  `phoneId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`phoneId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Phone`
--

LOCK TABLES `Phone` WRITE;
/*!40000 ALTER TABLE `Phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `Phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PluginSetting`
--

DROP TABLE IF EXISTS `PluginSetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PluginSetting` (
  `pluginSettingId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `pluginId` varchar(75) DEFAULT NULL,
  `pluginType` varchar(75) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pluginSettingId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PluginSetting`
--

LOCK TABLES `PluginSetting` WRITE;
/*!40000 ALTER TABLE `PluginSetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `PluginSetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PollsChoice`
--

DROP TABLE IF EXISTS `PollsChoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PollsChoice` (
  `uuid_` varchar(75) DEFAULT NULL,
  `choiceId` bigint(20) NOT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`choiceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PollsChoice`
--

LOCK TABLES `PollsChoice` WRITE;
/*!40000 ALTER TABLE `PollsChoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsChoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PollsQuestion`
--

DROP TABLE IF EXISTS `PollsQuestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PollsQuestion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `questionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `expirationDate` datetime DEFAULT NULL,
  `lastVoteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`questionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PollsQuestion`
--

LOCK TABLES `PollsQuestion` WRITE;
/*!40000 ALTER TABLE `PollsQuestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsQuestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PollsVote`
--

DROP TABLE IF EXISTS `PollsVote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PollsVote` (
  `voteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `choiceId` bigint(20) DEFAULT NULL,
  `voteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`voteId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PollsVote`
--

LOCK TABLES `PollsVote` WRITE;
/*!40000 ALTER TABLE `PollsVote` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsVote` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `Portlet`
--

DROP TABLE IF EXISTS `Portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Portlet` (
  `id_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Portlet`
--

LOCK TABLES `Portlet` WRITE;
/*!40000 ALTER TABLE `Portlet` DISABLE KEYS */;
INSERT INTO `Portlet` VALUES (10302,10253,'98','',1),(10303,10253,'66','',1),(10304,10253,'180','',1),(10305,10253,'27','',1),(10306,10253,'152','',1),(10307,10253,'134','',1),(10308,10253,'130','',1),(10309,10253,'122','',1),(10310,10253,'36','',1),(10311,10253,'26','',1),(10312,10253,'104','',1),(10313,10253,'175','',1),(10314,10253,'64','',1),(10315,10253,'153','',1),(10316,10253,'129','',1),(10317,10253,'179','',1),(10318,10253,'173','',1),(10319,10253,'100','',1),(10320,10253,'19','',1),(10321,10253,'157','',1),(10322,10253,'181','',1),(10323,10253,'128','',1),(10324,10253,'154','',1),(10325,10253,'148','',1),(10326,10253,'11','',1),(10327,10253,'29','',1),(10328,10253,'158','',1),(10329,10253,'178','',1),(10330,10253,'8','',1),(10331,10253,'58','',1),(10332,10253,'71','',1),(10333,10253,'97','',1),(10334,10253,'39','',1),(10335,10253,'177','',1),(10336,10253,'85','',1),(10337,10253,'118','',1),(10338,10253,'107','',1),(10339,10253,'30','',1),(10340,10253,'147','',1),(10341,10253,'48','',1),(10342,10253,'125','',1),(10343,10253,'161','',1),(10344,10253,'146','',1),(10345,10253,'62','',1),(10346,10253,'162','',1),(10347,10253,'176','',1),(10348,10253,'108','',1),(10349,10253,'84','',1),(10350,10253,'101','',1),(10351,10253,'121','',1),(10352,10253,'143','',1),(10353,10253,'77','',1),(10354,10253,'167','',1),(10355,10253,'115','',1),(10356,10253,'56','',1),(10357,10253,'111','',1),(10358,10253,'3','',1),(10359,10253,'20','',1),(10360,10253,'16','',1),(10361,10253,'23','',1),(10362,10253,'83','',1),(10363,10253,'99','',1),(10364,10253,'70','',1),(10365,10253,'164','',1),(10366,10253,'141','',1),(10367,10253,'9','',1),(10368,10253,'28','',1),(10369,10253,'137','',1),(10370,10253,'15','',1),(10371,10253,'47','',1),(10372,10253,'116','',1),(10373,10253,'82','',1),(10374,10253,'151','',1),(10375,10253,'54','',1),(10376,10253,'34','',1),(10377,10253,'132','',1),(10378,10253,'169','',1),(10379,10253,'61','',1),(10380,10253,'73','',1),(10381,10253,'136','',1),(10382,10253,'50','',1),(10383,10253,'127','',1),(10384,10253,'31','',1),(10385,10253,'25','',1),(10386,10253,'166','',1),(10387,10253,'33','',1),(10388,10253,'150','',1),(10389,10253,'114','',1),(10390,10253,'149','',1),(10391,10253,'67','',1),(10392,10253,'110','',1),(10393,10253,'59','',1),(10394,10253,'135','',1),(10395,10253,'131','',1),(10396,10253,'102','',1),(11301,10253,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet','',1),(11441,10253,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet','',1),(11451,10253,'FormularioRaza_WAR_FormularioRegistroRazaportlet','',1),(11452,10253,'\"FormularioRegistroRaza\"_WAR_FormularioRegistroRazaportlet','',1),(11504,10253,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet','',1),(11601,10253,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet','',1),(11801,10253,'mygreeting_WAR_mygreetingportlet','',1),(12001,10253,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet','',1);
/*!40000 ALTER TABLE `Portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PortletItem`
--

DROP TABLE IF EXISTS `PortletItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PortletItem` (
  `portletItemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `portletId` varchar(75) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`portletItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortletItem`
--

LOCK TABLES `PortletItem` WRITE;
/*!40000 ALTER TABLE `PortletItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `PortletItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PortletPreferences`
--

DROP TABLE IF EXISTS `PortletPreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PortletPreferences` (
  `portletPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portletPreferencesId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortletPreferences`
--

LOCK TABLES `PortletPreferences` WRITE;
/*!40000 ALTER TABLE `PortletPreferences` DISABLE KEYS */;
INSERT INTO `PortletPreferences` VALUES (10451,0,3,10446,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10457,0,3,10452,'101_INSTANCE_sX9IkmDTYQWq','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10109</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),(10477,0,3,10472,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10478,0,3,10472,'82','<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),(10479,0,3,10472,'101_INSTANCE_YKL9Ihv1t3XH','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),(10485,0,3,10480,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10491,0,3,10486,'101_INSTANCE_cZZpL979qao6','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10109</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),(10497,0,3,10492,'39_INSTANCE_SGrtnUVY7c9J','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference></portlet-preferences>'),(10498,0,3,10492,'39_INSTANCE_bzn1R6XCZreC','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference></portlet-preferences>'),(10687,10279,2,0,'15','<portlet-preferences />'),(10729,0,3,10274,'160','<portlet-preferences />'),(10730,0,3,10274,'145','<portlet-preferences />'),(10731,0,3,10274,'49','<portlet-preferences />'),(10732,0,3,10274,'165','<portlet-preferences />'),(10733,0,3,10274,'156','<portlet-preferences />'),(10802,0,3,10274,'137','<portlet-preferences />'),(10803,0,3,10274,'135','<portlet-preferences />'),(10804,0,3,10274,'125','<portlet-preferences />'),(10805,0,3,10274,'134','<portlet-preferences />'),(10806,0,3,10274,'149','<portlet-preferences />'),(10807,0,3,10274,'146','<portlet-preferences />'),(10901,0,3,10274,'1_WAR_marketplaceportlet','<portlet-preferences />'),(10952,0,3,10907,'103','<portlet-preferences />'),(10953,0,3,10907,'145','<portlet-preferences />'),(10954,0,3,10274,'88','<portlet-preferences />'),(10955,0,3,10274,'130','<portlet-preferences />'),(11001,0,3,10907,'49','<portlet-preferences />'),(11002,0,3,10916,'103','<portlet-preferences />'),(11003,0,3,10916,'145','<portlet-preferences />'),(11010,0,3,11004,'103','<portlet-preferences />'),(11011,0,3,10907,'87','<portlet-preferences />'),(11012,0,3,10907,'58','<portlet-preferences />'),(11014,0,3,11004,'58','<portlet-preferences />'),(11015,0,3,11004,'145','<portlet-preferences />'),(11201,0,3,10274,'136','<portlet-preferences />'),(11202,0,3,10274,'127','<portlet-preferences />'),(11217,0,3,10274,'2','<portlet-preferences />'),(11218,0,3,10274,'174','<portlet-preferences />'),(11219,0,3,11004,'49','<portlet-preferences />'),(11232,0,3,11226,'103','<portlet-preferences />'),(11233,0,3,11226,'145','<portlet-preferences />'),(11252,0,3,11234,'103','<portlet-preferences />'),(11253,0,3,11234,'145','<portlet-preferences />'),(11254,0,3,11240,'103','<portlet-preferences />'),(11255,0,3,11240,'145','<portlet-preferences />'),(11256,0,3,11246,'103','<portlet-preferences />'),(11257,0,3,11246,'145','<portlet-preferences />'),(11311,0,3,11306,'103','<portlet-preferences />'),(11312,0,3,11306,'145','<portlet-preferences />'),(11313,0,3,10943,'103','<portlet-preferences />'),(11314,0,3,10943,'145','<portlet-preferences />'),(11315,0,3,10934,'103','<portlet-preferences />'),(11316,0,3,10934,'145','<portlet-preferences />'),(11317,0,3,10925,'103','<portlet-preferences />'),(11318,0,3,10925,'145','<portlet-preferences />'),(11320,0,3,11306,'87','<portlet-preferences />'),(11321,0,3,11306,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet','<portlet-preferences />'),(11332,0,3,11326,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet','<portlet-preferences />'),(11333,0,3,11326,'103','<portlet-preferences />'),(11438,0,3,11406,'103','<portlet-preferences />'),(11439,0,3,11406,'145','<portlet-preferences />'),(11440,0,3,11406,'87','<portlet-preferences />'),(11442,0,3,11406,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet','<portlet-preferences />'),(11449,0,3,11443,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet','<portlet-preferences />'),(11450,0,3,11443,'103','<portlet-preferences />'),(11453,0,3,10274,'132','<portlet-preferences />'),(11501,0,3,11433,'103','<portlet-preferences />'),(11502,0,3,11433,'145','<portlet-preferences />'),(11503,0,3,11433,'87','<portlet-preferences />'),(11505,0,3,11433,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet','<portlet-preferences />'),(11512,0,3,11506,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet','<portlet-preferences />'),(11513,0,3,11506,'103','<portlet-preferences />'),(11514,0,3,11415,'103','<portlet-preferences />'),(11515,0,3,11415,'145','<portlet-preferences />'),(11602,0,3,11415,'87','<portlet-preferences />'),(11603,0,3,11415,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet','<portlet-preferences />'),(11610,0,3,11604,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet','<portlet-preferences />'),(11611,0,3,11604,'103','<portlet-preferences />'),(11701,0,3,11226,'58','<portlet-preferences />'),(11702,0,3,11443,'49','<portlet-preferences />'),(11802,0,3,10907,'mygreeting_WAR_mygreetingportlet','<portlet-preferences />'),(11804,0,3,11004,'mygreeting_WAR_mygreetingportlet','<portlet-preferences />'),(11907,0,3,11901,'103','<portlet-preferences />'),(11908,0,3,11424,'103','<portlet-preferences />'),(11909,0,3,11424,'145','<portlet-preferences />'),(11910,0,3,11424,'87','<portlet-preferences />'),(12002,0,3,11424,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet','<portlet-preferences />'),(12004,0,3,11901,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet','<portlet-preferences />'),(12101,0,3,11326,'49','<portlet-preferences />');
/*!40000 ALTER TABLE `PortletPreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QUARTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QUARTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` longblob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_CALENDARS`
--

LOCK TABLES `QUARTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_CRON_TRIGGERS`
--

LOCK TABLES `QUARTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` tinyint(4) DEFAULT NULL,
  `REQUESTS_RECOVERY` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IX_BE3835E5` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_4BD722BM` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_204D31E8` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IX_339E078M` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IX_5005E3AF` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_BC2F03B0` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QUARTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QUARTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` tinyint(4) NOT NULL,
  `IS_NONCONCURRENT` tinyint(4) NOT NULL,
  `IS_UPDATE_DATA` tinyint(4) NOT NULL,
  `REQUESTS_RECOVERY` tinyint(4) NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_88328984` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_779BCA37` (`SCHED_NAME`,`REQUESTS_RECOVERY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_JOB_DETAILS`
--

LOCK TABLES `QUARTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_LOCKS`
--

DROP TABLE IF EXISTS `QUARTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_LOCKS`
--

LOCK TABLES `QUARTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_LOCKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QUARTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QUARTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QUARTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SCHEDULER_STATE`
--

LOCK TABLES `QUARTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QUARTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` tinyint(4) DEFAULT NULL,
  `BOOL_PROP_2` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QUARTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` int(11) DEFAULT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_186442A4` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_1BA1F9DC` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_91CA7CCE` (`SCHED_NAME`,`TRIGGER_GROUP`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_D219AFDE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_A85822A0` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_8AA50BE1` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_EEFE382A` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IX_F026CF4C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IX_F2DD7C7E` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_1F92813C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`MISFIRE_INSTR`),
  KEY `IX_99108B6E` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IX_CD7132D0` (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_TRIGGERS`
--

LOCK TABLES `QUARTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RatingsEntry`
--

DROP TABLE IF EXISTS `RatingsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RatingsEntry` (
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RatingsEntry`
--

LOCK TABLES `RatingsEntry` WRITE;
/*!40000 ALTER TABLE `RatingsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `RatingsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RatingsStats`
--

DROP TABLE IF EXISTS `RatingsStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RatingsStats` (
  `statsId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `totalScore` double DEFAULT NULL,
  `averageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RatingsStats`
--

LOCK TABLES `RatingsStats` WRITE;
/*!40000 ALTER TABLE `RatingsStats` DISABLE KEYS */;
/*!40000 ALTER TABLE `RatingsStats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Region`
--

DROP TABLE IF EXISTS `Region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Region` (
  `regionId` bigint(20) NOT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `regionCode` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`regionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Region`
--

LOCK TABLES `Region` WRITE;
/*!40000 ALTER TABLE `Region` DISABLE KEYS */;
INSERT INTO `Region` VALUES (1001,1,'AB','Alberta',1),(1002,1,'BC','British Columbia',1),(1003,1,'MB','Manitoba',1),(1004,1,'NB','New Brunswick',1),(1005,1,'NL','Newfoundland and Labrador',1),(1006,1,'NT','Northwest Territories',1),(1007,1,'NS','Nova Scotia',1),(1008,1,'NU','Nunavut',1),(1009,1,'ON','Ontario',1),(1010,1,'PE','Prince Edward Island',1),(1011,1,'QC','Quebec',1),(1012,1,'SK','Saskatchewan',1),(1013,1,'YT','Yukon',1),(2001,2,'CN-34','Anhui',1),(2002,2,'CN-92','Aomen',1),(2003,2,'CN-11','Beijing',1),(2004,2,'CN-50','Chongqing',1),(2005,2,'CN-35','Fujian',1),(2006,2,'CN-62','Gansu',1),(2007,2,'CN-44','Guangdong',1),(2008,2,'CN-45','Guangxi',1),(2009,2,'CN-52','Guizhou',1),(2010,2,'CN-46','Hainan',1),(2011,2,'CN-13','Hebei',1),(2012,2,'CN-23','Heilongjiang',1),(2013,2,'CN-41','Henan',1),(2014,2,'CN-42','Hubei',1),(2015,2,'CN-43','Hunan',1),(2016,2,'CN-32','Jiangsu',1),(2017,2,'CN-36','Jiangxi',1),(2018,2,'CN-22','Jilin',1),(2019,2,'CN-21','Liaoning',1),(2020,2,'CN-15','Nei Mongol',1),(2021,2,'CN-64','Ningxia',1),(2022,2,'CN-63','Qinghai',1),(2023,2,'CN-61','Shaanxi',1),(2024,2,'CN-37','Shandong',1),(2025,2,'CN-31','Shanghai',1),(2026,2,'CN-14','Shanxi',1),(2027,2,'CN-51','Sichuan',1),(2028,2,'CN-71','Taiwan',1),(2029,2,'CN-12','Tianjin',1),(2030,2,'CN-91','Xianggang',1),(2031,2,'CN-65','Xinjiang',1),(2032,2,'CN-54','Xizang',1),(2033,2,'CN-53','Yunnan',1),(2034,2,'CN-33','Zhejiang',1),(3001,3,'A','Alsace',1),(3002,3,'B','Aquitaine',1),(3003,3,'C','Auvergne',1),(3004,3,'P','Basse-Normandie',1),(3005,3,'D','Bourgogne',1),(3006,3,'E','Bretagne',1),(3007,3,'F','Centre',1),(3008,3,'G','Champagne-Ardenne',1),(3009,3,'H','Corse',1),(3010,3,'GF','Guyane',1),(3011,3,'I','Franche Comté',1),(3012,3,'GP','Guadeloupe',1),(3013,3,'Q','Haute-Normandie',1),(3014,3,'J','Île-de-France',1),(3015,3,'K','Languedoc-Roussillon',1),(3016,3,'L','Limousin',1),(3017,3,'M','Lorraine',1),(3018,3,'MQ','Martinique',1),(3019,3,'N','Midi-Pyrénées',1),(3020,3,'O','Nord Pas de Calais',1),(3021,3,'R','Pays de la Loire',1),(3022,3,'S','Picardie',1),(3023,3,'T','Poitou-Charentes',1),(3024,3,'U','Provence-Alpes-Côte-d\'Azur',1),(3025,3,'RE','Réunion',1),(3026,3,'V','Rhône-Alpes',1),(4001,4,'BW','Baden-Württemberg',1),(4002,4,'BY','Bayern',1),(4003,4,'BE','Berlin',1),(4004,4,'BR','Brandenburg',1),(4005,4,'HB','Bremen',1),(4006,4,'HH','Hamburg',1),(4007,4,'HE','Hessen',1),(4008,4,'MV','Mecklenburg-Vorpommern',1),(4009,4,'NI','Niedersachsen',1),(4010,4,'NW','Nordrhein-Westfalen',1),(4011,4,'RP','Rheinland-Pfalz',1),(4012,4,'SL','Saarland',1),(4013,4,'SN','Sachsen',1),(4014,4,'ST','Sachsen-Anhalt',1),(4015,4,'SH','Schleswig-Holstein',1),(4016,4,'TH','Thüringen',1),(8001,8,'AG','Agrigento',1),(8002,8,'AL','Alessandria',1),(8003,8,'AN','Ancona',1),(8004,8,'AO','Aosta',1),(8005,8,'AR','Arezzo',1),(8006,8,'AP','Ascoli Piceno',1),(8007,8,'AT','Asti',1),(8008,8,'AV','Avellino',1),(8009,8,'BA','Bari',1),(8010,8,'BT','Barletta-Andria-Trani',1),(8011,8,'BL','Belluno',1),(8012,8,'BN','Benevento',1),(8013,8,'BG','Bergamo',1),(8014,8,'BI','Biella',1),(8015,8,'BO','Bologna',1),(8016,8,'BZ','Bolzano',1),(8017,8,'BS','Brescia',1),(8018,8,'BR','Brindisi',1),(8019,8,'CA','Cagliari',1),(8020,8,'CL','Caltanissetta',1),(8021,8,'CB','Campobasso',1),(8022,8,'CI','Carbonia-Iglesias',1),(8023,8,'CE','Caserta',1),(8024,8,'CT','Catania',1),(8025,8,'CZ','Catanzaro',1),(8026,8,'CH','Chieti',1),(8027,8,'CO','Como',1),(8028,8,'CS','Cosenza',1),(8029,8,'CR','Cremona',1),(8030,8,'KR','Crotone',1),(8031,8,'CN','Cuneo',1),(8032,8,'EN','Enna',1),(8033,8,'FM','Fermo',1),(8034,8,'FE','Ferrara',1),(8035,8,'FI','Firenze',1),(8036,8,'FG','Foggia',1),(8037,8,'FC','Forli-Cesena',1),(8038,8,'FR','Frosinone',1),(8039,8,'GE','Genova',1),(8040,8,'GO','Gorizia',1),(8041,8,'GR','Grosseto',1),(8042,8,'IM','Imperia',1),(8043,8,'IS','Isernia',1),(8044,8,'AQ','L\'Aquila',1),(8045,8,'SP','La Spezia',1),(8046,8,'LT','Latina',1),(8047,8,'LE','Lecce',1),(8048,8,'LC','Lecco',1),(8049,8,'LI','Livorno',1),(8050,8,'LO','Lodi',1),(8051,8,'LU','Lucca',1),(8052,8,'MC','Macerata',1),(8053,8,'MN','Mantova',1),(8054,8,'MS','Massa-Carrara',1),(8055,8,'MT','Matera',1),(8056,8,'MA','Medio Campidano',1),(8057,8,'ME','Messina',1),(8058,8,'MI','Milano',1),(8059,8,'MO','Modena',1),(8060,8,'MZ','Monza',1),(8061,8,'NA','Napoli',1),(8062,8,'NO','Novara',1),(8063,8,'NU','Nuoro',1),(8064,8,'OG','Ogliastra',1),(8065,8,'OT','Olbia-Tempio',1),(8066,8,'OR','Oristano',1),(8067,8,'PD','Padova',1),(8068,8,'PA','Palermo',1),(8069,8,'PR','Parma',1),(8070,8,'PV','Pavia',1),(8071,8,'PG','Perugia',1),(8072,8,'PU','Pesaro e Urbino',1),(8073,8,'PE','Pescara',1),(8074,8,'PC','Piacenza',1),(8075,8,'PI','Pisa',1),(8076,8,'PT','Pistoia',1),(8077,8,'PN','Pordenone',1),(8078,8,'PZ','Potenza',1),(8079,8,'PO','Prato',1),(8080,8,'RG','Ragusa',1),(8081,8,'RA','Ravenna',1),(8082,8,'RC','Reggio Calabria',1),(8083,8,'RE','Reggio Emilia',1),(8084,8,'RI','Rieti',1),(8085,8,'RN','Rimini',1),(8086,8,'RM','Roma',1),(8087,8,'RO','Rovigo',1),(8088,8,'SA','Salerno',1),(8089,8,'SS','Sassari',1),(8090,8,'SV','Savona',1),(8091,8,'SI','Siena',1),(8092,8,'SR','Siracusa',1),(8093,8,'SO','Sondrio',1),(8094,8,'TA','Taranto',1),(8095,8,'TE','Teramo',1),(8096,8,'TR','Terni',1),(8097,8,'TO','Torino',1),(8098,8,'TP','Trapani',1),(8099,8,'TN','Trento',1),(8100,8,'TV','Treviso',1),(8101,8,'TS','Trieste',1),(8102,8,'UD','Udine',1),(8103,8,'VA','Varese',1),(8104,8,'VE','Venezia',1),(8105,8,'VB','Verbano-Cusio-Ossola',1),(8106,8,'VC','Vercelli',1),(8107,8,'VR','Verona',1),(8108,8,'VV','Vibo Valentia',1),(8109,8,'VI','Vicenza',1),(8110,8,'VT','Viterbo',1),(11001,11,'DR','Drenthe',1),(11002,11,'FL','Flevoland',1),(11003,11,'FR','Friesland',1),(11004,11,'GE','Gelderland',1),(11005,11,'GR','Groningen',1),(11006,11,'LI','Limburg',1),(11007,11,'NB','Noord-Brabant',1),(11008,11,'NH','Noord-Holland',1),(11009,11,'OV','Overijssel',1),(11010,11,'UT','Utrecht',1),(11011,11,'ZE','Zeeland',1),(11012,11,'ZH','Zuid-Holland',1),(15001,15,'AN','Andalusia',1),(15002,15,'AR','Aragon',1),(15003,15,'AS','Asturias',1),(15004,15,'IB','Balearic Islands',1),(15005,15,'PV','Basque Country',1),(15006,15,'CN','Canary Islands',1),(15007,15,'CB','Cantabria',1),(15008,15,'CL','Castile and Leon',1),(15009,15,'CM','Castile-La Mancha',1),(15010,15,'CT','Catalonia',1),(15011,15,'CE','Ceuta',1),(15012,15,'EX','Extremadura',1),(15013,15,'GA','Galicia',1),(15014,15,'LO','La Rioja',1),(15015,15,'M','Madrid',1),(15016,15,'ML','Melilla',1),(15017,15,'MU','Murcia',1),(15018,15,'NA','Navarra',1),(15019,15,'VC','Valencia',1),(19001,19,'AL','Alabama',1),(19002,19,'AK','Alaska',1),(19003,19,'AZ','Arizona',1),(19004,19,'AR','Arkansas',1),(19005,19,'CA','California',1),(19006,19,'CO','Colorado',1),(19007,19,'CT','Connecticut',1),(19008,19,'DC','District of Columbia',1),(19009,19,'DE','Delaware',1),(19010,19,'FL','Florida',1),(19011,19,'GA','Georgia',1),(19012,19,'HI','Hawaii',1),(19013,19,'ID','Idaho',1),(19014,19,'IL','Illinois',1),(19015,19,'IN','Indiana',1),(19016,19,'IA','Iowa',1),(19017,19,'KS','Kansas',1),(19018,19,'KY','Kentucky ',1),(19019,19,'LA','Louisiana ',1),(19020,19,'ME','Maine',1),(19021,19,'MD','Maryland',1),(19022,19,'MA','Massachusetts',1),(19023,19,'MI','Michigan',1),(19024,19,'MN','Minnesota',1),(19025,19,'MS','Mississippi',1),(19026,19,'MO','Missouri',1),(19027,19,'MT','Montana',1),(19028,19,'NE','Nebraska',1),(19029,19,'NV','Nevada',1),(19030,19,'NH','New Hampshire',1),(19031,19,'NJ','New Jersey',1),(19032,19,'NM','New Mexico',1),(19033,19,'NY','New York',1),(19034,19,'NC','North Carolina',1),(19035,19,'ND','North Dakota',1),(19036,19,'OH','Ohio',1),(19037,19,'OK','Oklahoma ',1),(19038,19,'OR','Oregon',1),(19039,19,'PA','Pennsylvania',1),(19040,19,'PR','Puerto Rico',1),(19041,19,'RI','Rhode Island',1),(19042,19,'SC','South Carolina',1),(19043,19,'SD','South Dakota',1),(19044,19,'TN','Tennessee',1),(19045,19,'TX','Texas',1),(19046,19,'UT','Utah',1),(19047,19,'VT','Vermont',1),(19048,19,'VA','Virginia',1),(19049,19,'WA','Washington',1),(19050,19,'WV','West Virginia',1),(19051,19,'WI','Wisconsin',1),(19052,19,'WY','Wyoming',1),(32001,32,'ACT','Australian Capital Territory',1),(32002,32,'NSW','New South Wales',1),(32003,32,'NT','Northern Territory',1),(32004,32,'QLD','Queensland',1),(32005,32,'SA','South Australia',1),(32006,32,'TAS','Tasmania',1),(32007,32,'VIC','Victoria',1),(32008,32,'WA','Western Australia',1),(144001,144,'MX-AGS','Aguascalientes',1),(144002,144,'MX-BCN','Baja California',1),(144003,144,'MX-BCS','Baja California Sur',1),(144004,144,'MX-CAM','Campeche',1),(144005,144,'MX-CHP','Chiapas',1),(144006,144,'MX-CHI','Chihuahua',1),(144007,144,'MX-COA','Coahuila',1),(144008,144,'MX-COL','Colima',1),(144009,144,'MX-DUR','Durango',1),(144010,144,'MX-GTO','Guanajuato',1),(144011,144,'MX-GRO','Guerrero',1),(144012,144,'MX-HGO','Hidalgo',1),(144013,144,'MX-JAL','Jalisco',1),(144014,144,'MX-MEX','Mexico',1),(144015,144,'MX-MIC','Michoacan',1),(144016,144,'MX-MOR','Morelos',1),(144017,144,'MX-NAY','Nayarit',1),(144018,144,'MX-NLE','Nuevo Leon',1),(144019,144,'MX-OAX','Oaxaca',1),(144020,144,'MX-PUE','Puebla',1),(144021,144,'MX-QRO','Queretaro',1),(144023,144,'MX-ROO','Quintana Roo',1),(144024,144,'MX-SLP','San Luis Potosí',1),(144025,144,'MX-SIN','Sinaloa',1),(144026,144,'MX-SON','Sonora',1),(144027,144,'MX-TAB','Tabasco',1),(144028,144,'MX-TAM','Tamaulipas',1),(144029,144,'MX-TLX','Tlaxcala',1),(144030,144,'MX-VER','Veracruz',1),(144031,144,'MX-YUC','Yucatan',1),(144032,144,'MX-ZAC','Zacatecas',1),(164001,164,'01','Østfold',1),(164002,164,'02','Akershus',1),(164003,164,'03','Oslo',1),(164004,164,'04','Hedmark',1),(164005,164,'05','Oppland',1),(164006,164,'06','Buskerud',1),(164007,164,'07','Vestfold',1),(164008,164,'08','Telemark',1),(164009,164,'09','Aust-Agder',1),(164010,164,'10','Vest-Agder',1),(164011,164,'11','Rogaland',1),(164012,164,'12','Hordaland',1),(164013,164,'14','Sogn og Fjordane',1),(164014,164,'15','Møre of Romsdal',1),(164015,164,'16','Sør-Trøndelag',1),(164016,164,'17','Nord-Trøndelag',1),(164017,164,'18','Nordland',1),(164018,164,'19','Troms',1),(164019,164,'20','Finnmark',1),(202001,202,'AG','Aargau',1),(202002,202,'AR','Appenzell Ausserrhoden',1),(202003,202,'AI','Appenzell Innerrhoden',1),(202004,202,'BL','Basel-Landschaft',1),(202005,202,'BS','Basel-Stadt',1),(202006,202,'BE','Bern',1),(202007,202,'FR','Fribourg',1),(202008,202,'GE','Geneva',1),(202009,202,'GL','Glarus',1),(202010,202,'GR','Graubünden',1),(202011,202,'JU','Jura',1),(202012,202,'LU','Lucerne',1),(202013,202,'NE','Neuchâtel',1),(202014,202,'NW','Nidwalden',1),(202015,202,'OW','Obwalden',1),(202016,202,'SH','Schaffhausen',1),(202017,202,'SZ','Schwyz',1),(202018,202,'SO','Solothurn',1),(202019,202,'SG','St. Gallen',1),(202020,202,'TG','Thurgau',1),(202021,202,'TI','Ticino',1),(202022,202,'UR','Uri',1),(202023,202,'VS','Valais',1),(202024,202,'VD','Vaud',1),(202025,202,'ZG','Zug',1),(202026,202,'ZH','Zürich',1);
/*!40000 ALTER TABLE `Region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Release_`
--

DROP TABLE IF EXISTS `Release_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Release_` (
  `releaseId` bigint(20) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `servletContextName` varchar(75) DEFAULT NULL,
  `buildNumber` int(11) DEFAULT NULL,
  `buildDate` datetime DEFAULT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `state_` int(11) DEFAULT NULL,
  `testString` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`releaseId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Release_`
--

LOCK TABLES `Release_` WRITE;
/*!40000 ALTER TABLE `Release_` DISABLE KEYS */;
INSERT INTO `Release_` VALUES (1,'2014-06-11 21:06:49','2014-11-20 04:50:12','portal',6102,'2014-11-20 04:50:12',1,0,'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.'),(10518,'2014-06-11 21:09:37','2014-08-02 23:45:20','marketplace-portlet',100,NULL,1,0,'');
/*!40000 ALTER TABLE `Release_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Repository`
--

DROP TABLE IF EXISTS `Repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Repository` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `portletId` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `dlFolderId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`repositoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Repository`
--

LOCK TABLES `Repository` WRITE;
/*!40000 ALTER TABLE `Repository` DISABLE KEYS */;
/*!40000 ALTER TABLE `Repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RepositoryEntry`
--

DROP TABLE IF EXISTS `RepositoryEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RepositoryEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mappedId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`repositoryEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RepositoryEntry`
--

LOCK TABLES `RepositoryEntry` WRITE;
/*!40000 ALTER TABLE `RepositoryEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `RepositoryEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceAction`
--

DROP TABLE IF EXISTS `ResourceAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceAction` (
  `resourceActionId` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `bitwiseValue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceActionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceAction`
--

LOCK TABLES `ResourceAction` WRITE;
/*!40000 ALTER TABLE `ResourceAction` DISABLE KEYS */;
INSERT INTO `ResourceAction` VALUES (1,'com.liferay.portlet.softwarecatalog','ADD_FRAMEWORK_VERSION',2),(2,'com.liferay.portlet.softwarecatalog','ADD_PRODUCT_ENTRY',4),(3,'com.liferay.portlet.softwarecatalog','PERMISSIONS',8),(4,'com.liferay.portal.model.Team','ASSIGN_MEMBERS',2),(5,'com.liferay.portal.model.Team','DELETE',4),(6,'com.liferay.portal.model.Team','PERMISSIONS',8),(7,'com.liferay.portal.model.Team','UPDATE',16),(8,'com.liferay.portal.model.Team','VIEW',1),(9,'com.liferay.portal.model.PasswordPolicy','ASSIGN_MEMBERS',2),(10,'com.liferay.portal.model.PasswordPolicy','DELETE',4),(11,'com.liferay.portal.model.PasswordPolicy','PERMISSIONS',8),(12,'com.liferay.portal.model.PasswordPolicy','UPDATE',16),(13,'com.liferay.portal.model.PasswordPolicy','VIEW',1),(14,'com.liferay.portlet.blogs.model.BlogsEntry','ADD_DISCUSSION',2),(15,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE',4),(16,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE_DISCUSSION',8),(17,'com.liferay.portlet.blogs.model.BlogsEntry','PERMISSIONS',16),(18,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE',32),(19,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE_DISCUSSION',64),(20,'com.liferay.portlet.blogs.model.BlogsEntry','VIEW',1),(21,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','DELETE',2),(22,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','PERMISSIONS',4),(23,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','UPDATE',8),(24,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','VIEW',1),(25,'com.liferay.portlet.journal.model.JournalFeed','DELETE',2),(26,'com.liferay.portlet.journal.model.JournalFeed','PERMISSIONS',4),(27,'com.liferay.portlet.journal.model.JournalFeed','UPDATE',8),(28,'com.liferay.portlet.journal.model.JournalFeed','VIEW',1),(29,'com.liferay.portlet.wiki.model.WikiNode','ADD_ATTACHMENT',2),(30,'com.liferay.portlet.wiki.model.WikiNode','ADD_PAGE',4),(31,'com.liferay.portlet.wiki.model.WikiNode','DELETE',8),(32,'com.liferay.portlet.wiki.model.WikiNode','IMPORT',16),(33,'com.liferay.portlet.wiki.model.WikiNode','PERMISSIONS',32),(34,'com.liferay.portlet.wiki.model.WikiNode','SUBSCRIBE',64),(35,'com.liferay.portlet.wiki.model.WikiNode','UPDATE',128),(36,'com.liferay.portlet.wiki.model.WikiNode','VIEW',1),(37,'com.liferay.portlet.announcements.model.AnnouncementsEntry','DELETE',2),(38,'com.liferay.portlet.announcements.model.AnnouncementsEntry','UPDATE',4),(39,'com.liferay.portlet.announcements.model.AnnouncementsEntry','VIEW',1),(40,'com.liferay.portlet.announcements.model.AnnouncementsEntry','PERMISSIONS',8),(41,'com.liferay.portlet.bookmarks','ADD_ENTRY',2),(42,'com.liferay.portlet.bookmarks','ADD_FOLDER',4),(43,'com.liferay.portlet.bookmarks','PERMISSIONS',8),(44,'com.liferay.portlet.bookmarks','VIEW',1),(45,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','DELETE',2),(46,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','PERMISSIONS',4),(47,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','UPDATE',8),(48,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','VIEW',1),(49,'com.liferay.portlet.asset.model.AssetVocabulary','DELETE',2),(50,'com.liferay.portlet.asset.model.AssetVocabulary','PERMISSIONS',4),(51,'com.liferay.portlet.asset.model.AssetVocabulary','UPDATE',8),(52,'com.liferay.portlet.asset.model.AssetVocabulary','VIEW',1),(53,'com.liferay.portlet.documentlibrary.model.DLFolder','ACCESS',2),(54,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_DOCUMENT',4),(55,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SHORTCUT',8),(56,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SUBFOLDER',16),(57,'com.liferay.portlet.documentlibrary.model.DLFolder','DELETE',32),(58,'com.liferay.portlet.documentlibrary.model.DLFolder','PERMISSIONS',64),(59,'com.liferay.portlet.documentlibrary.model.DLFolder','UPDATE',128),(60,'com.liferay.portlet.documentlibrary.model.DLFolder','VIEW',1),(61,'com.liferay.portlet.expando.model.ExpandoColumn','DELETE',2),(62,'com.liferay.portlet.expando.model.ExpandoColumn','PERMISSIONS',4),(63,'com.liferay.portlet.expando.model.ExpandoColumn','UPDATE',8),(64,'com.liferay.portlet.expando.model.ExpandoColumn','VIEW',1),(65,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT',2),(66,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT_TYPE',4),(67,'com.liferay.portlet.documentlibrary','ADD_FOLDER',8),(68,'com.liferay.portlet.documentlibrary','ADD_REPOSITORY',16),(69,'com.liferay.portlet.documentlibrary','ADD_STRUCTURE',32),(70,'com.liferay.portlet.documentlibrary','ADD_SHORTCUT',64),(71,'com.liferay.portlet.documentlibrary','PERMISSIONS',128),(72,'com.liferay.portlet.documentlibrary','UPDATE',256),(73,'com.liferay.portlet.documentlibrary','VIEW',1),(74,'com.liferay.portlet.calendar.model.CalEvent','ADD_DISCUSSION',2),(75,'com.liferay.portlet.calendar.model.CalEvent','DELETE',4),(76,'com.liferay.portlet.calendar.model.CalEvent','DELETE_DISCUSSION',8),(77,'com.liferay.portlet.calendar.model.CalEvent','PERMISSIONS',16),(78,'com.liferay.portlet.calendar.model.CalEvent','UPDATE',32),(79,'com.liferay.portlet.calendar.model.CalEvent','UPDATE_DISCUSSION',64),(80,'com.liferay.portlet.calendar.model.CalEvent','VIEW',1),(81,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_ITEM',2),(82,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_SUBCATEGORY',4),(83,'com.liferay.portlet.shopping.model.ShoppingCategory','DELETE',8),(84,'com.liferay.portlet.shopping.model.ShoppingCategory','PERMISSIONS',16),(85,'com.liferay.portlet.shopping.model.ShoppingCategory','UPDATE',32),(86,'com.liferay.portlet.shopping.model.ShoppingCategory','VIEW',1),(87,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','ADD_DISCUSSION',2),(88,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE',4),(89,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE_DISCUSSION',8),(90,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','PERMISSIONS',16),(91,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE',32),(92,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE_DISCUSSION',64),(93,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','VIEW',1),(94,'com.liferay.portlet.journal','ADD_ARTICLE',2),(95,'com.liferay.portlet.journal','ADD_FEED',4),(96,'com.liferay.portlet.journal','ADD_STRUCTURE',8),(97,'com.liferay.portlet.journal','ADD_TEMPLATE',16),(98,'com.liferay.portlet.journal','SUBSCRIBE',32),(99,'com.liferay.portlet.journal','PERMISSIONS',64),(100,'com.liferay.portlet.calendar','ADD_EVENT',2),(101,'com.liferay.portlet.calendar','EXPORT_ALL_EVENTS',4),(102,'com.liferay.portlet.calendar','PERMISSIONS',8),(103,'com.liferay.portal.model.LayoutPrototype','DELETE',2),(104,'com.liferay.portal.model.LayoutPrototype','PERMISSIONS',4),(105,'com.liferay.portal.model.LayoutPrototype','UPDATE',8),(106,'com.liferay.portal.model.LayoutPrototype','VIEW',1),(107,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','ADD_RECORD',2),(108,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','DELETE',4),(109,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','PERMISSIONS',8),(110,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','UPDATE',16),(111,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','VIEW',1),(112,'com.liferay.portal.model.Organization','ASSIGN_MEMBERS',2),(113,'com.liferay.portal.model.Organization','ASSIGN_USER_ROLES',4),(114,'com.liferay.portal.model.Organization','DELETE',8),(115,'com.liferay.portal.model.Organization','MANAGE_ANNOUNCEMENTS',16),(116,'com.liferay.portal.model.Organization','MANAGE_SUBORGANIZATIONS',32),(117,'com.liferay.portal.model.Organization','MANAGE_USERS',64),(118,'com.liferay.portal.model.Organization','PERMISSIONS',128),(119,'com.liferay.portal.model.Organization','UPDATE',256),(120,'com.liferay.portal.model.Organization','VIEW',1),(121,'com.liferay.portal.model.Organization','VIEW_MEMBERS',512),(122,'com.liferay.portlet.softwarecatalog.model.SCLicense','DELETE',2),(123,'com.liferay.portlet.softwarecatalog.model.SCLicense','PERMISSIONS',4),(124,'com.liferay.portlet.softwarecatalog.model.SCLicense','UPDATE',8),(125,'com.liferay.portlet.softwarecatalog.model.SCLicense','VIEW',1),(126,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','DELETE',2),(127,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','PERMISSIONS',4),(128,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','UPDATE',8),(129,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','VIEW',1),(130,'com.liferay.portlet.journal.model.JournalTemplate','DELETE',2),(131,'com.liferay.portlet.journal.model.JournalTemplate','PERMISSIONS',4),(132,'com.liferay.portlet.journal.model.JournalTemplate','UPDATE',8),(133,'com.liferay.portlet.journal.model.JournalTemplate','VIEW',1),(134,'com.liferay.portlet.journal.model.JournalArticle','ADD_DISCUSSION',2),(135,'com.liferay.portlet.journal.model.JournalArticle','DELETE',4),(136,'com.liferay.portlet.journal.model.JournalArticle','DELETE_DISCUSSION',8),(137,'com.liferay.portlet.journal.model.JournalArticle','EXPIRE',16),(138,'com.liferay.portlet.journal.model.JournalArticle','PERMISSIONS',32),(139,'com.liferay.portlet.journal.model.JournalArticle','UPDATE',64),(140,'com.liferay.portlet.journal.model.JournalArticle','UPDATE_DISCUSSION',128),(141,'com.liferay.portlet.journal.model.JournalArticle','VIEW',1),(142,'com.liferay.portlet.dynamicdatalists','ADD_RECORD_SET',2),(143,'com.liferay.portlet.dynamicdatalists','ADD_STRUCTURE',4),(144,'com.liferay.portlet.dynamicdatalists','ADD_TEMPLATE',8),(145,'com.liferay.portlet.dynamicdatalists','PERMISSIONS',16),(146,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ACCESS',2),(147,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_ENTRY',4),(148,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_SUBFOLDER',8),(149,'com.liferay.portlet.bookmarks.model.BookmarksFolder','DELETE',16),(150,'com.liferay.portlet.bookmarks.model.BookmarksFolder','PERMISSIONS',32),(151,'com.liferay.portlet.bookmarks.model.BookmarksFolder','UPDATE',64),(152,'com.liferay.portlet.bookmarks.model.BookmarksFolder','VIEW',1),(153,'com.liferay.portal.model.Group','ADD_LAYOUT',2),(154,'com.liferay.portal.model.Group','ADD_LAYOUT_BRANCH',4),(155,'com.liferay.portal.model.Group','ADD_LAYOUT_SET_BRANCH',8),(156,'com.liferay.portal.model.Group','ASSIGN_MEMBERS',16),(157,'com.liferay.portal.model.Group','ASSIGN_USER_ROLES',32),(158,'com.liferay.portal.model.Group','CONFIGURE_PORTLETS',64),(159,'com.liferay.portal.model.Group','DELETE',128),(160,'com.liferay.portal.model.Group','EXPORT_IMPORT_LAYOUTS',256),(161,'com.liferay.portal.model.Group','EXPORT_IMPORT_PORTLET_INFO',512),(162,'com.liferay.portal.model.Group','MANAGE_ANNOUNCEMENTS',1024),(163,'com.liferay.portal.model.Group','MANAGE_ARCHIVED_SETUPS',2048),(164,'com.liferay.portal.model.Group','MANAGE_LAYOUTS',4096),(165,'com.liferay.portal.model.Group','MANAGE_STAGING',8192),(166,'com.liferay.portal.model.Group','MANAGE_TEAMS',16384),(167,'com.liferay.portal.model.Group','PERMISSIONS',32768),(168,'com.liferay.portal.model.Group','PUBLISH_STAGING',65536),(169,'com.liferay.portal.model.Group','PUBLISH_TO_REMOTE',131072),(170,'com.liferay.portal.model.Group','UPDATE',262144),(171,'com.liferay.portal.model.Group','VIEW',1),(172,'com.liferay.portal.model.Group','VIEW_MEMBERS',524288),(173,'com.liferay.portal.model.Group','VIEW_STAGING',1048576),(174,'com.liferay.portlet.journal.model.JournalStructure','DELETE',2),(175,'com.liferay.portlet.journal.model.JournalStructure','PERMISSIONS',4),(176,'com.liferay.portlet.journal.model.JournalStructure','UPDATE',8),(177,'com.liferay.portlet.journal.model.JournalStructure','VIEW',1),(178,'com.liferay.portlet.asset.model.AssetTag','DELETE',2),(179,'com.liferay.portlet.asset.model.AssetTag','PERMISSIONS',4),(180,'com.liferay.portlet.asset.model.AssetTag','UPDATE',8),(181,'com.liferay.portlet.asset.model.AssetTag','VIEW',1),(182,'com.liferay.portal.model.Layout','ADD_DISCUSSION',2),(183,'com.liferay.portal.model.Layout','ADD_LAYOUT',4),(184,'com.liferay.portal.model.Layout','CONFIGURE_PORTLETS',8),(185,'com.liferay.portal.model.Layout','CUSTOMIZE',16),(186,'com.liferay.portal.model.Layout','DELETE',32),(187,'com.liferay.portal.model.Layout','DELETE_DISCUSSION',64),(188,'com.liferay.portal.model.Layout','PERMISSIONS',128),(189,'com.liferay.portal.model.Layout','UPDATE',256),(190,'com.liferay.portal.model.Layout','UPDATE_DISCUSSION',512),(191,'com.liferay.portal.model.Layout','VIEW',1),(192,'com.liferay.portlet.asset','ADD_TAG',2),(193,'com.liferay.portlet.asset','PERMISSIONS',4),(194,'com.liferay.portlet.asset','ADD_CATEGORY',8),(195,'com.liferay.portlet.asset','ADD_VOCABULARY',16),(196,'com.liferay.portal.model.LayoutBranch','DELETE',2),(197,'com.liferay.portal.model.LayoutBranch','PERMISSIONS',4),(198,'com.liferay.portal.model.LayoutBranch','UPDATE',8),(199,'com.liferay.portal.model.LayoutSetBranch','DELETE',2),(200,'com.liferay.portal.model.LayoutSetBranch','MERGE',4),(201,'com.liferay.portal.model.LayoutSetBranch','PERMISSIONS',8),(202,'com.liferay.portal.model.LayoutSetBranch','UPDATE',16),(203,'com.liferay.portlet.messageboards','ADD_CATEGORY',2),(204,'com.liferay.portlet.messageboards','ADD_FILE',4),(205,'com.liferay.portlet.messageboards','ADD_MESSAGE',8),(206,'com.liferay.portlet.messageboards','BAN_USER',16),(207,'com.liferay.portlet.messageboards','MOVE_THREAD',32),(208,'com.liferay.portlet.messageboards','LOCK_THREAD',64),(209,'com.liferay.portlet.messageboards','PERMISSIONS',128),(210,'com.liferay.portlet.messageboards','REPLY_TO_MESSAGE',256),(211,'com.liferay.portlet.messageboards','SUBSCRIBE',512),(212,'com.liferay.portlet.messageboards','UPDATE_THREAD_PRIORITY',1024),(213,'com.liferay.portlet.messageboards','VIEW',1),(214,'com.liferay.portlet.polls','ADD_QUESTION',2),(215,'com.liferay.portlet.polls','PERMISSIONS',4),(216,'com.liferay.portlet.shopping.model.ShoppingItem','DELETE',2),(217,'com.liferay.portlet.shopping.model.ShoppingItem','PERMISSIONS',4),(218,'com.liferay.portlet.shopping.model.ShoppingItem','UPDATE',8),(219,'com.liferay.portlet.shopping.model.ShoppingItem','VIEW',1),(220,'com.liferay.portlet.bookmarks.model.BookmarksEntry','DELETE',2),(221,'com.liferay.portlet.bookmarks.model.BookmarksEntry','PERMISSIONS',4),(222,'com.liferay.portlet.bookmarks.model.BookmarksEntry','UPDATE',8),(223,'com.liferay.portlet.bookmarks.model.BookmarksEntry','VIEW',1),(224,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','ADD_DISCUSSION',2),(225,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE',4),(226,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE_DISCUSSION',8),(227,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','PERMISSIONS',16),(228,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE',32),(229,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE_DISCUSSION',64),(230,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','VIEW',1),(231,'com.liferay.portal.model.User','DELETE',2),(232,'com.liferay.portal.model.User','IMPERSONATE',4),(233,'com.liferay.portal.model.User','PERMISSIONS',8),(234,'com.liferay.portal.model.User','UPDATE',16),(235,'com.liferay.portal.model.User','VIEW',1),(236,'com.liferay.portal.model.LayoutSetPrototype','DELETE',2),(237,'com.liferay.portal.model.LayoutSetPrototype','PERMISSIONS',4),(238,'com.liferay.portal.model.LayoutSetPrototype','UPDATE',8),(239,'com.liferay.portal.model.LayoutSetPrototype','VIEW',1),(240,'com.liferay.portlet.shopping','ADD_CATEGORY',2),(241,'com.liferay.portlet.shopping','ADD_ITEM',4),(242,'com.liferay.portlet.shopping','MANAGE_COUPONS',8),(243,'com.liferay.portlet.shopping','MANAGE_ORDERS',16),(244,'com.liferay.portlet.shopping','PERMISSIONS',32),(245,'com.liferay.portlet.shopping','VIEW',1),(246,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','DELETE',2),(247,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','PERMISSIONS',4),(248,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','UPDATE',8),(249,'com.liferay.portlet.wiki','ADD_NODE',2),(250,'com.liferay.portlet.wiki','PERMISSIONS',4),(251,'com.liferay.portlet.polls.model.PollsQuestion','ADD_VOTE',2),(252,'com.liferay.portlet.polls.model.PollsQuestion','DELETE',4),(253,'com.liferay.portlet.polls.model.PollsQuestion','PERMISSIONS',8),(254,'com.liferay.portlet.polls.model.PollsQuestion','UPDATE',16),(255,'com.liferay.portlet.polls.model.PollsQuestion','VIEW',1),(256,'com.liferay.portlet.shopping.model.ShoppingOrder','DELETE',2),(257,'com.liferay.portlet.shopping.model.ShoppingOrder','PERMISSIONS',4),(258,'com.liferay.portlet.shopping.model.ShoppingOrder','UPDATE',8),(259,'com.liferay.portlet.shopping.model.ShoppingOrder','VIEW',1),(260,'com.liferay.portal.model.UserGroup','ASSIGN_MEMBERS',2),(261,'com.liferay.portal.model.UserGroup','DELETE',4),(262,'com.liferay.portal.model.UserGroup','MANAGE_ANNOUNCEMENTS',8),(263,'com.liferay.portal.model.UserGroup','PERMISSIONS',16),(264,'com.liferay.portal.model.UserGroup','UPDATE',32),(265,'com.liferay.portal.model.UserGroup','VIEW',1),(266,'com.liferay.portal.model.Role','ASSIGN_MEMBERS',2),(267,'com.liferay.portal.model.Role','DEFINE_PERMISSIONS',4),(268,'com.liferay.portal.model.Role','DELETE',8),(269,'com.liferay.portal.model.Role','MANAGE_ANNOUNCEMENTS',16),(270,'com.liferay.portal.model.Role','PERMISSIONS',32),(271,'com.liferay.portal.model.Role','UPDATE',64),(272,'com.liferay.portal.model.Role','VIEW',1),(273,'com.liferay.portlet.messageboards.model.MBCategory','ADD_FILE',2),(274,'com.liferay.portlet.messageboards.model.MBCategory','ADD_MESSAGE',4),(275,'com.liferay.portlet.messageboards.model.MBCategory','ADD_SUBCATEGORY',8),(276,'com.liferay.portlet.messageboards.model.MBCategory','DELETE',16),(277,'com.liferay.portlet.messageboards.model.MBCategory','LOCK_THREAD',32),(278,'com.liferay.portlet.messageboards.model.MBCategory','MOVE_THREAD',64),(279,'com.liferay.portlet.messageboards.model.MBCategory','PERMISSIONS',128),(280,'com.liferay.portlet.messageboards.model.MBCategory','REPLY_TO_MESSAGE',256),(281,'com.liferay.portlet.messageboards.model.MBCategory','SUBSCRIBE',512),(282,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE',1024),(283,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE_THREAD_PRIORITY',2048),(284,'com.liferay.portlet.messageboards.model.MBCategory','VIEW',1),(285,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP',2),(286,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP_INSTANCE',4),(287,'com.liferay.portlet.mobiledevicerules','CONFIGURATION',8),(288,'com.liferay.portlet.mobiledevicerules','VIEW',1),(289,'com.liferay.portlet.mobiledevicerules','PERMISSIONS',16),(290,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','DELETE',2),(291,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','PERMISSIONS',4),(292,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','UPDATE',8),(293,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','VIEW',1),(294,'com.liferay.portlet.wiki.model.WikiPage','ADD_DISCUSSION',2),(295,'com.liferay.portlet.wiki.model.WikiPage','DELETE',4),(296,'com.liferay.portlet.wiki.model.WikiPage','DELETE_DISCUSSION',8),(297,'com.liferay.portlet.wiki.model.WikiPage','PERMISSIONS',16),(298,'com.liferay.portlet.wiki.model.WikiPage','SUBSCRIBE',32),(299,'com.liferay.portlet.wiki.model.WikiPage','UPDATE',64),(300,'com.liferay.portlet.wiki.model.WikiPage','UPDATE_DISCUSSION',128),(301,'com.liferay.portlet.wiki.model.WikiPage','VIEW',1),(302,'com.liferay.portlet.asset.model.AssetCategory','ADD_CATEGORY',2),(303,'com.liferay.portlet.asset.model.AssetCategory','DELETE',4),(304,'com.liferay.portlet.asset.model.AssetCategory','PERMISSIONS',8),(305,'com.liferay.portlet.asset.model.AssetCategory','UPDATE',16),(306,'com.liferay.portlet.asset.model.AssetCategory','VIEW',1),(307,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','DELETE',2),(308,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','PERMISSIONS',4),(309,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','UPDATE',8),(310,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','VIEW',1),(311,'com.liferay.portlet.messageboards.model.MBMessage','DELETE',2),(312,'com.liferay.portlet.messageboards.model.MBMessage','PERMISSIONS',4),(313,'com.liferay.portlet.messageboards.model.MBMessage','SUBSCRIBE',8),(314,'com.liferay.portlet.messageboards.model.MBMessage','UPDATE',16),(315,'com.liferay.portlet.messageboards.model.MBMessage','VIEW',1),(316,'com.liferay.portlet.messageboards.model.MBThread','SUBSCRIBE',2),(317,'com.liferay.portlet.messageboards.model.MBThread','PERMISSIONS',4),(318,'com.liferay.portlet.blogs','ADD_ENTRY',2),(319,'com.liferay.portlet.blogs','PERMISSIONS',4),(320,'com.liferay.portlet.blogs','SUBSCRIBE',8),(321,'com.liferay.portlet.documentlibrary.model.DLFileEntry','ADD_DISCUSSION',2),(322,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE',4),(323,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE_DISCUSSION',8),(324,'com.liferay.portlet.documentlibrary.model.DLFileEntry','OVERRIDE_CHECKOUT',16),(325,'com.liferay.portlet.documentlibrary.model.DLFileEntry','PERMISSIONS',32),(326,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE',64),(327,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE_DISCUSSION',128),(328,'com.liferay.portlet.documentlibrary.model.DLFileEntry','VIEW',1),(329,'98','ACCESS_IN_CONTROL_PANEL',2),(330,'98','ADD_TO_PAGE',4),(331,'98','CONFIGURATION',8),(332,'98','VIEW',1),(333,'98','PERMISSIONS',16),(334,'66','VIEW',1),(335,'66','ADD_TO_PAGE',2),(336,'66','CONFIGURATION',4),(337,'66','PERMISSIONS',8),(338,'156','VIEW',1),(339,'156','ADD_TO_PAGE',2),(340,'156','ACCESS_IN_CONTROL_PANEL',4),(341,'156','CONFIGURATION',8),(342,'156','PERMISSIONS',16),(343,'180','VIEW',1),(344,'180','ADD_TO_PAGE',2),(345,'180','CONFIGURATION',4),(346,'180','PERMISSIONS',8),(347,'152','ACCESS_IN_CONTROL_PANEL',2),(348,'152','CONFIGURATION',4),(349,'152','VIEW',1),(350,'152','PERMISSIONS',8),(351,'27','VIEW',1),(352,'27','ADD_TO_PAGE',2),(353,'27','CONFIGURATION',4),(354,'27','PERMISSIONS',8),(355,'88','VIEW',1),(356,'88','ADD_TO_PAGE',2),(357,'88','CONFIGURATION',4),(358,'88','PERMISSIONS',8),(359,'87','VIEW',1),(360,'87','ADD_TO_PAGE',2),(361,'87','CONFIGURATION',4),(362,'87','PERMISSIONS',8),(363,'134','ACCESS_IN_CONTROL_PANEL',2),(364,'134','CONFIGURATION',4),(365,'134','VIEW',1),(366,'134','PERMISSIONS',8),(367,'130','ACCESS_IN_CONTROL_PANEL',2),(368,'130','CONFIGURATION',4),(369,'130','VIEW',1),(370,'130','PERMISSIONS',8),(371,'122','VIEW',1),(372,'122','ADD_TO_PAGE',2),(373,'122','CONFIGURATION',4),(374,'122','PERMISSIONS',8),(375,'36','ADD_TO_PAGE',2),(376,'36','CONFIGURATION',4),(377,'36','VIEW',1),(378,'36','PERMISSIONS',8),(379,'26','VIEW',1),(380,'26','ADD_TO_PAGE',2),(381,'26','CONFIGURATION',4),(382,'26','PERMISSIONS',8),(383,'104','VIEW',1),(384,'104','ADD_TO_PAGE',2),(385,'104','ACCESS_IN_CONTROL_PANEL',4),(386,'104','CONFIGURATION',8),(387,'104','PERMISSIONS',16),(388,'175','VIEW',1),(389,'175','ADD_TO_PAGE',2),(390,'175','CONFIGURATION',4),(391,'175','PERMISSIONS',8),(392,'153','ACCESS_IN_CONTROL_PANEL',2),(393,'153','ADD_TO_PAGE',4),(394,'153','CONFIGURATION',8),(395,'153','VIEW',1),(396,'153','PERMISSIONS',16),(397,'64','VIEW',1),(398,'64','ADD_TO_PAGE',2),(399,'64','CONFIGURATION',4),(400,'64','PERMISSIONS',8),(401,'129','ACCESS_IN_CONTROL_PANEL',2),(402,'129','CONFIGURATION',4),(403,'129','VIEW',1),(404,'129','PERMISSIONS',8),(405,'179','VIEW',1),(406,'179','ADD_TO_PAGE',2),(407,'179','ACCESS_IN_CONTROL_PANEL',4),(408,'179','CONFIGURATION',8),(409,'179','PERMISSIONS',16),(410,'173','VIEW',1),(411,'173','ADD_TO_PAGE',2),(412,'173','ACCESS_IN_CONTROL_PANEL',4),(413,'173','CONFIGURATION',8),(414,'173','PERMISSIONS',16),(415,'100','VIEW',1),(416,'100','ADD_TO_PAGE',2),(417,'100','CONFIGURATION',4),(418,'100','PERMISSIONS',8),(419,'157','ACCESS_IN_CONTROL_PANEL',2),(420,'157','CONFIGURATION',4),(421,'157','VIEW',1),(422,'157','PERMISSIONS',8),(423,'19','ADD_TO_PAGE',2),(424,'19','CONFIGURATION',4),(425,'19','VIEW',1),(426,'19','PERMISSIONS',8),(427,'160','VIEW',1),(428,'160','ADD_TO_PAGE',2),(429,'160','CONFIGURATION',4),(430,'160','PERMISSIONS',8),(431,'181','VIEW',1),(432,'181','ADD_TO_PAGE',2),(433,'181','CONFIGURATION',4),(434,'181','PERMISSIONS',8),(435,'128','ACCESS_IN_CONTROL_PANEL',2),(436,'128','CONFIGURATION',4),(437,'128','VIEW',1),(438,'128','PERMISSIONS',8),(439,'86','VIEW',1),(440,'86','ADD_TO_PAGE',2),(441,'86','CONFIGURATION',4),(442,'86','PERMISSIONS',8),(443,'154','ACCESS_IN_CONTROL_PANEL',2),(444,'154','CONFIGURATION',4),(445,'154','VIEW',1),(446,'154','PERMISSIONS',8),(447,'148','VIEW',1),(448,'148','ADD_TO_PAGE',2),(449,'148','CONFIGURATION',4),(450,'148','PERMISSIONS',8),(451,'11','ADD_TO_PAGE',2),(452,'11','CONFIGURATION',4),(453,'11','VIEW',1),(454,'11','PERMISSIONS',8),(455,'29','ADD_TO_PAGE',2),(456,'29','CONFIGURATION',4),(457,'29','VIEW',1),(458,'29','PERMISSIONS',8),(459,'174','VIEW',1),(460,'174','ADD_TO_PAGE',2),(461,'174','ACCESS_IN_CONTROL_PANEL',4),(462,'174','CONFIGURATION',8),(463,'174','PERMISSIONS',16),(464,'158','ACCESS_IN_CONTROL_PANEL',2),(465,'158','ADD_TO_PAGE',4),(466,'158','CONFIGURATION',8),(467,'158','VIEW',1),(468,'158','PERMISSIONS',16),(469,'178','VIEW',1),(470,'178','ADD_TO_PAGE',2),(471,'178','ACCESS_IN_CONTROL_PANEL',4),(472,'178','CONFIGURATION',8),(473,'178','PERMISSIONS',16),(474,'124','VIEW',1),(475,'124','ADD_TO_PAGE',2),(476,'124','CONFIGURATION',4),(477,'124','PERMISSIONS',8),(478,'8','ACCESS_IN_CONTROL_PANEL',2),(479,'8','ADD_TO_PAGE',4),(480,'8','CONFIGURATION',8),(481,'8','VIEW',1),(482,'8','PERMISSIONS',16),(483,'58','ADD_TO_PAGE',2),(484,'58','CONFIGURATION',4),(485,'58','VIEW',1),(486,'58','PERMISSIONS',8),(487,'97','VIEW',1),(488,'97','ADD_TO_PAGE',2),(489,'97','CONFIGURATION',4),(490,'97','PERMISSIONS',8),(491,'71','ADD_TO_PAGE',2),(492,'71','CONFIGURATION',4),(493,'71','VIEW',1),(494,'71','PERMISSIONS',8),(495,'39','VIEW',1),(496,'39','ADD_TO_PAGE',2),(497,'39','CONFIGURATION',4),(498,'39','PERMISSIONS',8),(499,'177','CONFIGURATION',2),(500,'177','VIEW',1),(501,'177','ADD_TO_PAGE',4),(502,'177','PERMISSIONS',8),(503,'177','ACCESS_IN_CONTROL_PANEL',16),(504,'170','VIEW',1),(505,'170','ADD_TO_PAGE',2),(506,'170','CONFIGURATION',4),(507,'170','PERMISSIONS',8),(508,'85','ADD_TO_PAGE',2),(509,'85','CONFIGURATION',4),(510,'85','VIEW',1),(511,'85','PERMISSIONS',8),(512,'118','VIEW',1),(513,'118','ADD_TO_PAGE',2),(514,'118','CONFIGURATION',4),(515,'118','PERMISSIONS',8),(516,'107','VIEW',1),(517,'107','ADD_TO_PAGE',2),(518,'107','CONFIGURATION',4),(519,'107','PERMISSIONS',8),(520,'30','VIEW',1),(521,'30','ADD_TO_PAGE',2),(522,'30','CONFIGURATION',4),(523,'30','PERMISSIONS',8),(524,'147','ACCESS_IN_CONTROL_PANEL',2),(525,'147','CONFIGURATION',4),(526,'147','VIEW',1),(527,'147','PERMISSIONS',8),(528,'48','VIEW',1),(529,'48','ADD_TO_PAGE',2),(530,'48','CONFIGURATION',4),(531,'48','PERMISSIONS',8),(532,'125','ACCESS_IN_CONTROL_PANEL',2),(533,'125','CONFIGURATION',4),(534,'125','EXPORT_USER',8),(535,'125','VIEW',1),(536,'125','PERMISSIONS',16),(537,'161','ACCESS_IN_CONTROL_PANEL',2),(538,'161','CONFIGURATION',4),(539,'161','VIEW',1),(540,'161','PERMISSIONS',8),(541,'144','VIEW',1),(542,'144','ADD_TO_PAGE',2),(543,'144','CONFIGURATION',4),(544,'144','PERMISSIONS',8),(545,'146','ACCESS_IN_CONTROL_PANEL',2),(546,'146','CONFIGURATION',4),(547,'146','VIEW',1),(548,'146','PERMISSIONS',8),(549,'62','VIEW',1),(550,'62','ADD_TO_PAGE',2),(551,'62','CONFIGURATION',4),(552,'62','PERMISSIONS',8),(553,'162','ACCESS_IN_CONTROL_PANEL',2),(554,'162','CONFIGURATION',4),(555,'162','VIEW',1),(556,'162','PERMISSIONS',8),(557,'176','VIEW',1),(558,'176','ADD_TO_PAGE',2),(559,'176','ACCESS_IN_CONTROL_PANEL',4),(560,'176','CONFIGURATION',8),(561,'176','PERMISSIONS',16),(562,'172','VIEW',1),(563,'172','ADD_TO_PAGE',2),(564,'172','CONFIGURATION',4),(565,'172','PERMISSIONS',8),(566,'108','VIEW',1),(567,'108','ADD_TO_PAGE',2),(568,'108','CONFIGURATION',4),(569,'108','PERMISSIONS',8),(570,'139','ACCESS_IN_CONTROL_PANEL',2),(571,'139','ADD_EXPANDO',4),(572,'139','CONFIGURATION',8),(573,'139','VIEW',1),(574,'139','PERMISSIONS',16),(575,'84','ADD_ENTRY',2),(576,'84','ADD_TO_PAGE',4),(577,'84','CONFIGURATION',8),(578,'84','VIEW',1),(579,'84','PERMISSIONS',16),(580,'101','VIEW',1),(581,'101','ADD_TO_PAGE',2),(582,'101','CONFIGURATION',4),(583,'101','PERMISSIONS',8),(584,'121','VIEW',1),(585,'121','ADD_TO_PAGE',2),(586,'121','CONFIGURATION',4),(587,'121','PERMISSIONS',8),(588,'49','VIEW',1),(589,'49','ADD_TO_PAGE',2),(590,'49','CONFIGURATION',4),(591,'49','PERMISSIONS',8),(592,'143','VIEW',1),(593,'143','ADD_TO_PAGE',2),(594,'143','CONFIGURATION',4),(595,'143','PERMISSIONS',8),(596,'167','ACCESS_IN_CONTROL_PANEL',2),(597,'167','ADD_TO_PAGE',4),(598,'167','CONFIGURATION',8),(599,'167','VIEW',1),(600,'167','PERMISSIONS',16),(601,'77','VIEW',1),(602,'77','ADD_TO_PAGE',2),(603,'77','CONFIGURATION',4),(604,'77','PERMISSIONS',8),(605,'115','VIEW',1),(606,'115','ADD_TO_PAGE',2),(607,'115','CONFIGURATION',4),(608,'115','PERMISSIONS',8),(609,'56','ADD_TO_PAGE',2),(610,'56','CONFIGURATION',4),(611,'56','VIEW',1),(612,'56','PERMISSIONS',8),(613,'111','VIEW',1),(614,'111','ADD_TO_PAGE',2),(615,'111','CONFIGURATION',4),(616,'111','PERMISSIONS',8),(617,'142','VIEW',1),(618,'142','ADD_TO_PAGE',2),(619,'142','CONFIGURATION',4),(620,'142','PERMISSIONS',8),(621,'3','VIEW',1),(622,'3','ADD_TO_PAGE',2),(623,'3','CONFIGURATION',4),(624,'3','PERMISSIONS',8),(625,'20','ACCESS_IN_CONTROL_PANEL',2),(626,'20','ADD_TO_PAGE',4),(627,'20','CONFIGURATION',8),(628,'20','VIEW',1),(629,'20','PERMISSIONS',16),(630,'145','VIEW',1),(631,'145','ADD_TO_PAGE',2),(632,'145','CONFIGURATION',4),(633,'145','PERMISSIONS',8),(634,'16','PREFERENCES',2),(635,'16','GUEST_PREFERENCES',4),(636,'16','VIEW',1),(637,'16','ADD_TO_PAGE',8),(638,'16','CONFIGURATION',16),(639,'16','PERMISSIONS',32),(640,'23','VIEW',1),(641,'23','ADD_TO_PAGE',2),(642,'23','CONFIGURATION',4),(643,'23','PERMISSIONS',8),(644,'83','ADD_ENTRY',2),(645,'83','ADD_TO_PAGE',4),(646,'83','CONFIGURATION',8),(647,'83','VIEW',1),(648,'83','PERMISSIONS',16),(649,'99','ACCESS_IN_CONTROL_PANEL',2),(650,'99','CONFIGURATION',4),(651,'99','VIEW',1),(652,'99','PERMISSIONS',8),(653,'70','VIEW',1),(654,'70','ADD_TO_PAGE',2),(655,'70','CONFIGURATION',4),(656,'70','PERMISSIONS',8),(657,'164','VIEW',1),(658,'164','ADD_TO_PAGE',2),(659,'164','CONFIGURATION',4),(660,'164','PERMISSIONS',8),(661,'141','VIEW',1),(662,'141','ADD_TO_PAGE',2),(663,'141','CONFIGURATION',4),(664,'141','PERMISSIONS',8),(665,'9','VIEW',1),(666,'9','ADD_TO_PAGE',2),(667,'9','CONFIGURATION',4),(668,'9','PERMISSIONS',8),(669,'137','ACCESS_IN_CONTROL_PANEL',2),(670,'137','CONFIGURATION',4),(671,'137','VIEW',1),(672,'137','PERMISSIONS',8),(673,'28','ACCESS_IN_CONTROL_PANEL',2),(674,'28','ADD_TO_PAGE',4),(675,'28','CONFIGURATION',8),(676,'28','VIEW',1),(677,'28','PERMISSIONS',16),(678,'133','VIEW',1),(679,'133','ADD_TO_PAGE',2),(680,'133','CONFIGURATION',4),(681,'133','PERMISSIONS',8),(682,'116','VIEW',1),(683,'116','ADD_TO_PAGE',2),(684,'116','CONFIGURATION',4),(685,'116','PERMISSIONS',8),(686,'47','VIEW',1),(687,'47','ADD_TO_PAGE',2),(688,'47','CONFIGURATION',4),(689,'47','PERMISSIONS',8),(690,'15','ACCESS_IN_CONTROL_PANEL',2),(691,'15','ADD_TO_PAGE',4),(692,'15','CONFIGURATION',8),(693,'15','VIEW',1),(694,'15','PERMISSIONS',16),(695,'82','VIEW',1),(696,'82','ADD_TO_PAGE',2),(697,'82','CONFIGURATION',4),(698,'82','PERMISSIONS',8),(699,'103','VIEW',1),(700,'103','ADD_TO_PAGE',2),(701,'103','CONFIGURATION',4),(702,'103','PERMISSIONS',8),(703,'151','ACCESS_IN_CONTROL_PANEL',2),(704,'151','CONFIGURATION',4),(705,'151','VIEW',1),(706,'151','PERMISSIONS',8),(707,'140','ACCESS_IN_CONTROL_PANEL',2),(708,'140','CONFIGURATION',4),(709,'140','VIEW',1),(710,'140','PERMISSIONS',8),(711,'54','VIEW',1),(712,'54','ADD_TO_PAGE',2),(713,'54','CONFIGURATION',4),(714,'54','PERMISSIONS',8),(715,'169','VIEW',1),(716,'169','ADD_TO_PAGE',2),(717,'169','CONFIGURATION',4),(718,'169','PERMISSIONS',8),(719,'132','ACCESS_IN_CONTROL_PANEL',2),(720,'132','CONFIGURATION',4),(721,'132','VIEW',1),(722,'132','PERMISSIONS',8),(723,'34','ADD_TO_PAGE',2),(724,'34','CONFIGURATION',4),(725,'34','VIEW',1),(726,'34','PERMISSIONS',8),(727,'61','VIEW',1),(728,'61','ADD_TO_PAGE',2),(729,'61','CONFIGURATION',4),(730,'61','PERMISSIONS',8),(731,'73','ADD_TO_PAGE',2),(732,'73','CONFIGURATION',4),(733,'73','VIEW',1),(734,'73','PERMISSIONS',8),(735,'136','ACCESS_IN_CONTROL_PANEL',2),(736,'136','CONFIGURATION',4),(737,'136','VIEW',1),(738,'136','PERMISSIONS',8),(739,'127','VIEW',1),(740,'127','ADD_TO_PAGE',2),(741,'127','ACCESS_IN_CONTROL_PANEL',4),(742,'127','CONFIGURATION',8),(743,'127','PERMISSIONS',16),(744,'50','VIEW',1),(745,'50','ADD_TO_PAGE',2),(746,'50','CONFIGURATION',4),(747,'50','PERMISSIONS',8),(748,'31','VIEW',1),(749,'31','ADD_TO_PAGE',2),(750,'31','CONFIGURATION',4),(751,'31','PERMISSIONS',8),(752,'165','VIEW',1),(753,'165','ADD_TO_PAGE',2),(754,'165','ACCESS_IN_CONTROL_PANEL',4),(755,'165','CONFIGURATION',8),(756,'165','PERMISSIONS',16),(757,'25','ACCESS_IN_CONTROL_PANEL',2),(758,'25','CONFIGURATION',4),(759,'25','VIEW',1),(760,'25','PERMISSIONS',8),(761,'166','ACCESS_IN_CONTROL_PANEL',2),(762,'166','ADD_TO_PAGE',4),(763,'166','CONFIGURATION',8),(764,'166','VIEW',1),(765,'166','PERMISSIONS',16),(766,'90','ADD_COMMUNITY',2),(767,'90','ADD_LAYOUT_PROTOTYPE',4),(768,'90','ADD_LAYOUT_SET_PROTOTYPE',8),(769,'90','ADD_LICENSE',16),(770,'90','ADD_ORGANIZATION',32),(771,'90','ADD_PASSWORD_POLICY',64),(772,'90','ADD_ROLE',128),(773,'90','ADD_USER',256),(774,'90','ADD_USER_GROUP',512),(775,'90','CONFIGURATION',1024),(776,'90','EXPORT_USER',2048),(777,'90','IMPERSONATE',4096),(778,'90','UNLINK_LAYOUT_SET_PROTOTYPE',8192),(779,'90','VIEW_CONTROL_PANEL',16384),(780,'90','ADD_TO_PAGE',32768),(781,'90','PERMISSIONS',65536),(782,'90','VIEW',1),(783,'150','ACCESS_IN_CONTROL_PANEL',2),(784,'150','CONFIGURATION',4),(785,'150','VIEW',1),(786,'150','PERMISSIONS',8),(787,'113','VIEW',1),(788,'113','ADD_TO_PAGE',2),(789,'113','CONFIGURATION',4),(790,'113','PERMISSIONS',8),(791,'33','ADD_TO_PAGE',2),(792,'33','CONFIGURATION',4),(793,'33','VIEW',1),(794,'33','PERMISSIONS',8),(795,'2','ACCESS_IN_CONTROL_PANEL',2),(796,'2','CONFIGURATION',4),(797,'2','VIEW',1),(798,'2','PERMISSIONS',8),(799,'119','VIEW',1),(800,'119','ADD_TO_PAGE',2),(801,'119','CONFIGURATION',4),(802,'119','PERMISSIONS',8),(803,'114','VIEW',1),(804,'114','ADD_TO_PAGE',2),(805,'114','CONFIGURATION',4),(806,'114','PERMISSIONS',8),(807,'149','ACCESS_IN_CONTROL_PANEL',2),(808,'149','CONFIGURATION',4),(809,'149','VIEW',1),(810,'149','PERMISSIONS',8),(811,'67','VIEW',1),(812,'67','ADD_TO_PAGE',2),(813,'67','CONFIGURATION',4),(814,'67','PERMISSIONS',8),(815,'110','VIEW',1),(816,'110','ADD_TO_PAGE',2),(817,'110','CONFIGURATION',4),(818,'110','PERMISSIONS',8),(819,'135','ACCESS_IN_CONTROL_PANEL',2),(820,'135','CONFIGURATION',4),(821,'135','VIEW',1),(822,'135','PERMISSIONS',8),(823,'59','VIEW',1),(824,'59','ADD_TO_PAGE',2),(825,'59','CONFIGURATION',4),(826,'59','PERMISSIONS',8),(827,'131','ACCESS_IN_CONTROL_PANEL',2),(828,'131','CONFIGURATION',4),(829,'131','VIEW',1),(830,'131','PERMISSIONS',8),(831,'102','VIEW',1),(832,'102','ADD_TO_PAGE',2),(833,'102','CONFIGURATION',4),(834,'102','PERMISSIONS',8),(835,'1_WAR_marketplaceportlet','VIEW',1),(836,'1_WAR_marketplaceportlet','ADD_TO_PAGE',2),(837,'1_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',4),(838,'1_WAR_marketplaceportlet','CONFIGURATION',8),(839,'1_WAR_marketplaceportlet','PERMISSIONS',16),(840,'2_WAR_marketplaceportlet','VIEW',1),(841,'2_WAR_marketplaceportlet','ADD_TO_PAGE',2),(842,'2_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',4),(843,'2_WAR_marketplaceportlet','CONFIGURATION',8),(844,'2_WAR_marketplaceportlet','PERMISSIONS',16),(901,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet','VIEW',1),(902,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet','ADD_TO_PAGE',2),(903,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet','CONFIGURATION',4),(904,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet','PERMISSIONS',8),(1001,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet','VIEW',1),(1002,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet','ADD_TO_PAGE',2),(1003,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet','CONFIGURATION',4),(1004,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet','PERMISSIONS',8),(1005,'FormularioRaza_WAR_FormularioRegistroRazaportlet','VIEW',1),(1006,'FormularioRaza_WAR_FormularioRegistroRazaportlet','ADD_TO_PAGE',2),(1007,'FormularioRaza_WAR_FormularioRegistroRazaportlet','CONFIGURATION',4),(1008,'FormularioRaza_WAR_FormularioRegistroRazaportlet','PERMISSIONS',8),(1009,'\"FormularioRegistroRaza\"_WAR_FormularioRegistroRazaportlet','VIEW',1),(1010,'\"FormularioRegistroRaza\"_WAR_FormularioRegistroRazaportlet','ADD_TO_PAGE',2),(1011,'\"FormularioRegistroRaza\"_WAR_FormularioRegistroRazaportlet','CONFIGURATION',4),(1012,'\"FormularioRegistroRaza\"_WAR_FormularioRegistroRazaportlet','PERMISSIONS',8),(1101,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet','VIEW',1),(1102,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet','ADD_TO_PAGE',2),(1103,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet','CONFIGURATION',4),(1104,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet','PERMISSIONS',8),(1201,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet','VIEW',1),(1202,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet','ADD_TO_PAGE',2),(1203,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet','CONFIGURATION',4),(1204,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet','PERMISSIONS',8),(1301,'mygreeting_WAR_mygreetingportlet','VIEW',1),(1302,'mygreeting_WAR_mygreetingportlet','ADD_TO_PAGE',2),(1303,'mygreeting_WAR_mygreetingportlet','CONFIGURATION',4),(1304,'mygreeting_WAR_mygreetingportlet','PERMISSIONS',8),(1401,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet','VIEW',1),(1402,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet','ADD_TO_PAGE',2),(1403,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet','CONFIGURATION',4),(1404,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet','PERMISSIONS',8);
/*!40000 ALTER TABLE `ResourceAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceBlock`
--

DROP TABLE IF EXISTS `ResourceBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceBlock` (
  `resourceBlockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `permissionsHash` varchar(75) DEFAULT NULL,
  `referenceCount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceBlock`
--

LOCK TABLES `ResourceBlock` WRITE;
/*!40000 ALTER TABLE `ResourceBlock` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResourceBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceBlockPermission`
--

DROP TABLE IF EXISTS `ResourceBlockPermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceBlockPermission` (
  `resourceBlockPermissionId` bigint(20) NOT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockPermissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceBlockPermission`
--

LOCK TABLES `ResourceBlockPermission` WRITE;
/*!40000 ALTER TABLE `ResourceBlockPermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResourceBlockPermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceCode`
--

DROP TABLE IF EXISTS `ResourceCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceCode` (
  `codeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`codeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceCode`
--

LOCK TABLES `ResourceCode` WRITE;
/*!40000 ALTER TABLE `ResourceCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResourceCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourcePermission`
--

DROP TABLE IF EXISTS `ResourcePermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourcePermission` (
  `resourcePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourcePermissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourcePermission`
--

LOCK TABLES `ResourcePermission` WRITE;
/*!40000 ALTER TABLE `ResourcePermission` DISABLE KEYS */;
INSERT INTO `ResourcePermission` VALUES (1,10253,'2',1,'10253',10264,0,2),(2,10253,'140',1,'10253',10264,0,2),(3,10253,'158',1,'10253',10264,0,6),(4,10253,'153',1,'10253',10264,0,6),(5,10253,'com.liferay.portal.model.Layout',4,'10274',10262,10257,1023),(6,10253,'com.liferay.portal.model.Layout',4,'10274',10269,0,19),(7,10253,'com.liferay.portal.model.Layout',4,'10274',10261,0,1),(11,10253,'90',1,'10253',10264,0,16384),(12,10253,'98',2,'10288',10264,0,1),(13,10253,'66',2,'10288',10264,0,1),(14,10253,'180',2,'10288',10264,0,1),(15,10253,'27',2,'10288',10264,0,1),(16,10253,'152',2,'10288',10264,0,1),(17,10253,'134',2,'10288',10264,0,1),(18,10253,'130',2,'10288',10264,0,1),(19,10253,'122',2,'10288',10264,0,1),(20,10253,'36',2,'10288',10264,0,1),(21,10253,'26',2,'10288',10264,0,1),(22,10253,'104',2,'10288',10264,0,1),(23,10253,'175',2,'10288',10264,0,1),(24,10253,'64',2,'10288',10264,0,1),(25,10253,'153',2,'10288',10264,0,1),(26,10253,'129',2,'10288',10264,0,1),(27,10253,'179',2,'10288',10264,0,1),(28,10253,'173',2,'10288',10264,0,1),(29,10253,'100',2,'10288',10264,0,1),(30,10253,'19',2,'10288',10264,0,1),(31,10253,'157',2,'10288',10264,0,1),(32,10253,'181',2,'10288',10264,0,1),(33,10253,'128',2,'10288',10264,0,1),(34,10253,'154',2,'10288',10264,0,1),(35,10253,'148',2,'10288',10264,0,1),(36,10253,'11',2,'10288',10264,0,1),(37,10253,'29',2,'10288',10264,0,1),(38,10253,'158',2,'10288',10264,0,1),(39,10253,'178',2,'10288',10264,0,1),(40,10253,'8',2,'10288',10264,0,1),(41,10253,'58',2,'10288',10264,0,1),(42,10253,'71',2,'10288',10264,0,1),(43,10253,'97',2,'10288',10264,0,1),(44,10253,'39',2,'10288',10264,0,1),(45,10253,'177',2,'10288',10264,0,1),(46,10253,'85',2,'10288',10264,0,1),(47,10253,'118',2,'10288',10264,0,1),(48,10253,'107',2,'10288',10264,0,1),(49,10253,'30',2,'10288',10264,0,1),(50,10253,'147',2,'10288',10264,0,1),(51,10253,'48',2,'10288',10264,0,1),(52,10253,'125',2,'10288',10264,0,1),(53,10253,'161',2,'10288',10264,0,1),(54,10253,'146',2,'10288',10264,0,1),(55,10253,'62',2,'10288',10264,0,1),(56,10253,'162',2,'10288',10264,0,1),(57,10253,'176',2,'10288',10264,0,1),(58,10253,'108',2,'10288',10264,0,1),(59,10253,'84',2,'10288',10264,0,1),(60,10253,'101',2,'10288',10264,0,1),(61,10253,'121',2,'10288',10264,0,1),(62,10253,'143',2,'10288',10264,0,1),(63,10253,'77',2,'10288',10264,0,1),(64,10253,'167',2,'10288',10264,0,1),(65,10253,'115',2,'10288',10264,0,1),(66,10253,'56',2,'10288',10264,0,1),(67,10253,'111',2,'10288',10264,0,1),(68,10253,'3',2,'10288',10264,0,1),(69,10253,'20',2,'10288',10264,0,1),(70,10253,'16',2,'10288',10264,0,1),(71,10253,'23',2,'10288',10264,0,1),(72,10253,'83',2,'10288',10264,0,1),(73,10253,'99',2,'10288',10264,0,1),(74,10253,'70',2,'10288',10264,0,1),(75,10253,'164',2,'10288',10264,0,1),(76,10253,'141',2,'10288',10264,0,1),(77,10253,'9',2,'10288',10264,0,1),(78,10253,'28',2,'10288',10264,0,1),(79,10253,'137',2,'10288',10264,0,1),(80,10253,'15',2,'10288',10264,0,1),(81,10253,'47',2,'10288',10264,0,1),(82,10253,'116',2,'10288',10264,0,1),(83,10253,'82',2,'10288',10264,0,1),(84,10253,'151',2,'10288',10264,0,1),(85,10253,'54',2,'10288',10264,0,1),(86,10253,'34',2,'10288',10264,0,1),(87,10253,'132',2,'10288',10264,0,1),(88,10253,'169',2,'10288',10264,0,1),(89,10253,'61',2,'10288',10264,0,1),(90,10253,'73',2,'10288',10264,0,1),(91,10253,'136',2,'10288',10264,0,1),(92,10253,'50',2,'10288',10264,0,1),(93,10253,'127',2,'10288',10264,0,1),(94,10253,'31',2,'10288',10264,0,1),(95,10253,'25',2,'10288',10264,0,1),(96,10253,'166',2,'10288',10264,0,1),(97,10253,'33',2,'10288',10264,0,1),(98,10253,'150',2,'10288',10264,0,1),(99,10253,'114',2,'10288',10264,0,1),(100,10253,'149',2,'10288',10264,0,1),(101,10253,'67',2,'10288',10264,0,1),(102,10253,'110',2,'10288',10264,0,1),(103,10253,'59',2,'10288',10264,0,1),(104,10253,'135',2,'10288',10264,0,1),(105,10253,'131',2,'10288',10264,0,1),(106,10253,'102',2,'10288',10264,0,1),(107,10253,'com.liferay.portal.model.Layout',2,'10288',10264,0,1),(108,10253,'com.liferay.portlet.blogs',2,'10288',10264,0,14),(109,10253,'com.liferay.portlet.calendar',2,'10288',10264,0,14),(110,10253,'98',2,'10288',10263,0,2),(111,10253,'152',2,'10288',10263,0,2),(112,10253,'179',2,'10288',10263,0,4),(113,10253,'173',2,'10288',10263,0,4),(114,10253,'154',2,'10288',10263,0,2),(115,10253,'178',2,'10288',10263,0,4),(116,10253,'8',2,'10288',10263,0,2),(117,10253,'147',2,'10288',10263,0,2),(118,10253,'161',2,'10288',10263,0,2),(119,10253,'162',2,'10288',10263,0,2),(120,10253,'167',2,'10288',10263,0,2),(121,10253,'20',2,'10288',10263,0,2),(122,10253,'99',2,'10288',10263,0,2),(123,10253,'28',2,'10288',10263,0,2),(124,10253,'15',2,'10288',10263,0,2),(125,10253,'25',2,'10288',10263,0,2),(126,10253,'com.liferay.portal.model.Group',2,'10288',10263,0,4096),(127,10253,'com.liferay.portlet.asset',2,'10288',10263,0,30),(128,10253,'com.liferay.portlet.blogs',2,'10288',10263,0,14),(129,10253,'com.liferay.portlet.bookmarks',2,'10288',10263,0,15),(130,10253,'com.liferay.portlet.calendar',2,'10288',10263,0,14),(131,10253,'com.liferay.portlet.documentlibrary',2,'10288',10263,0,511),(132,10253,'com.liferay.portlet.messageboards',2,'10288',10263,0,2047),(133,10253,'com.liferay.portlet.polls',2,'10288',10263,0,6),(134,10253,'com.liferay.portlet.wiki',2,'10288',10263,0,6),(135,10253,'com.liferay.portal.model.User',4,'10295',10262,10295,31),(136,10253,'98',1,'10253',10263,0,4),(137,10253,'98',1,'10253',10264,0,4),(138,10253,'66',1,'10253',10263,0,2),(139,10253,'66',1,'10253',10264,0,2),(140,10253,'180',1,'10253',10261,0,2),(141,10253,'180',1,'10253',10263,0,2),(142,10253,'180',1,'10253',10264,0,2),(143,10253,'27',1,'10253',10263,0,2),(144,10253,'27',1,'10253',10264,0,2),(145,10253,'122',1,'10253',10261,0,2),(146,10253,'122',1,'10253',10263,0,2),(147,10253,'122',1,'10253',10264,0,2),(148,10253,'36',1,'10253',10263,0,2),(149,10253,'36',1,'10253',10264,0,2),(150,10253,'26',1,'10253',10263,0,2),(151,10253,'26',1,'10253',10264,0,2),(152,10253,'104',1,'10253',10260,0,2),(153,10253,'175',1,'10253',10261,0,2),(154,10253,'175',1,'10253',10263,0,2),(155,10253,'175',1,'10253',10264,0,2),(156,10253,'64',1,'10253',10261,0,2),(157,10253,'64',1,'10253',10263,0,2),(158,10253,'64',1,'10253',10264,0,2),(159,10253,'153',1,'10253',10263,0,4),(160,10253,'179',1,'10253',10260,0,2),(161,10253,'173',1,'10253',10261,0,2),(162,10253,'173',1,'10253',10263,0,2),(163,10253,'173',1,'10253',10264,0,2),(164,10253,'100',1,'10253',10263,0,2),(165,10253,'100',1,'10253',10264,0,2),(166,10253,'19',1,'10253',10263,0,2),(167,10253,'19',1,'10253',10264,0,2),(168,10253,'181',1,'10253',10261,0,2),(169,10253,'181',1,'10253',10263,0,2),(170,10253,'181',1,'10253',10264,0,2),(171,10253,'148',1,'10253',10261,0,2),(172,10253,'148',1,'10253',10263,0,2),(173,10253,'148',1,'10253',10264,0,2),(174,10253,'11',1,'10253',10263,0,2),(175,10253,'11',1,'10253',10264,0,2),(176,10253,'29',1,'10253',10263,0,2),(177,10253,'29',1,'10253',10264,0,2),(178,10253,'158',1,'10253',10263,0,4),(179,10253,'178',1,'10253',10263,0,2),(180,10253,'178',1,'10253',10264,0,2),(181,10253,'8',1,'10253',10263,0,4),(182,10253,'8',1,'10253',10264,0,4),(183,10253,'58',1,'10253',10261,0,2),(184,10253,'58',1,'10253',10263,0,2),(185,10253,'58',1,'10253',10264,0,2),(186,10253,'71',1,'10253',10261,0,2),(187,10253,'71',1,'10253',10263,0,2),(188,10253,'71',1,'10253',10264,0,2),(189,10253,'97',1,'10253',10263,0,2),(190,10253,'97',1,'10253',10264,0,2),(191,10253,'39',1,'10253',10263,0,2),(192,10253,'39',1,'10253',10264,0,2),(193,10253,'177',1,'10253',10263,0,4),(194,10253,'177',1,'10253',10264,0,4),(195,10253,'85',1,'10253',10261,0,2),(196,10253,'85',1,'10253',10263,0,2),(197,10253,'85',1,'10253',10264,0,2),(198,10253,'118',1,'10253',10261,0,2),(199,10253,'118',1,'10253',10263,0,2),(200,10253,'118',1,'10253',10264,0,2),(201,10253,'107',1,'10253',10263,0,2),(202,10253,'107',1,'10253',10264,0,2),(203,10253,'30',1,'10253',10263,0,2),(204,10253,'30',1,'10253',10264,0,2),(205,10253,'48',1,'10253',10263,0,2),(206,10253,'48',1,'10253',10264,0,2),(207,10253,'62',1,'10253',10263,0,2),(208,10253,'62',1,'10253',10264,0,2),(209,10253,'176',1,'10253',10260,0,2),(210,10253,'108',1,'10253',10263,0,2),(211,10253,'108',1,'10253',10264,0,2),(212,10253,'84',1,'10253',10263,0,4),(213,10253,'84',1,'10253',10264,0,4),(214,10253,'101',1,'10253',10261,0,2),(215,10253,'101',1,'10253',10263,0,2),(216,10253,'101',1,'10253',10264,0,2),(217,10253,'121',1,'10253',10261,0,2),(218,10253,'121',1,'10253',10263,0,2),(219,10253,'121',1,'10253',10264,0,2),(220,10253,'143',1,'10253',10261,0,2),(221,10253,'143',1,'10253',10263,0,2),(222,10253,'143',1,'10253',10264,0,2),(223,10253,'77',1,'10253',10261,0,2),(224,10253,'77',1,'10253',10263,0,2),(225,10253,'77',1,'10253',10264,0,2),(226,10253,'167',1,'10253',10263,0,4),(227,10253,'167',1,'10253',10264,0,4),(228,10253,'115',1,'10253',10261,0,2),(229,10253,'115',1,'10253',10263,0,2),(230,10253,'115',1,'10253',10264,0,2),(231,10253,'56',1,'10253',10261,0,2),(232,10253,'56',1,'10253',10263,0,2),(233,10253,'56',1,'10253',10264,0,2),(234,10253,'111',1,'10253',10260,0,2),(235,10253,'3',1,'10253',10261,0,2),(236,10253,'3',1,'10253',10263,0,2),(237,10253,'3',1,'10253',10264,0,2),(238,10253,'20',1,'10253',10261,0,4),(239,10253,'20',1,'10253',10263,0,4),(240,10253,'20',1,'10253',10264,0,4),(241,10253,'16',1,'10253',10263,0,8),(242,10253,'16',1,'10253',10264,0,8),(243,10253,'23',1,'10253',10263,0,2),(244,10253,'23',1,'10253',10264,0,2),(245,10253,'83',1,'10253',10263,0,4),(246,10253,'83',1,'10253',10264,0,4),(247,10253,'70',1,'10253',10263,0,2),(248,10253,'70',1,'10253',10264,0,2),(249,10253,'164',1,'10253',10261,0,2),(250,10253,'164',1,'10253',10263,0,2),(251,10253,'164',1,'10253',10264,0,2),(252,10253,'141',1,'10253',10261,0,2),(253,10253,'141',1,'10253',10263,0,2),(254,10253,'141',1,'10253',10264,0,2),(255,10253,'9',1,'10253',10260,0,2),(256,10253,'28',1,'10253',10263,0,4),(257,10253,'28',1,'10253',10264,0,4),(258,10253,'15',1,'10253',10263,0,4),(259,10253,'15',1,'10253',10264,0,4),(260,10253,'47',1,'10253',10261,0,2),(261,10253,'47',1,'10253',10263,0,2),(262,10253,'47',1,'10253',10264,0,2),(263,10253,'116',1,'10253',10261,0,2),(264,10253,'116',1,'10253',10263,0,2),(265,10253,'116',1,'10253',10264,0,2),(266,10253,'82',1,'10253',10261,0,2),(267,10253,'82',1,'10253',10263,0,2),(268,10253,'82',1,'10253',10264,0,2),(269,10253,'54',1,'10253',10263,0,2),(270,10253,'54',1,'10253',10264,0,2),(271,10253,'34',1,'10253',10263,0,2),(272,10253,'34',1,'10253',10264,0,2),(273,10253,'169',1,'10253',10263,0,2),(274,10253,'169',1,'10253',10264,0,2),(275,10253,'61',1,'10253',10263,0,2),(276,10253,'61',1,'10253',10264,0,2),(277,10253,'73',1,'10253',10261,0,2),(278,10253,'73',1,'10253',10263,0,2),(279,10253,'73',1,'10253',10264,0,2),(280,10253,'50',1,'10253',10261,0,2),(281,10253,'50',1,'10253',10263,0,2),(282,10253,'50',1,'10253',10264,0,2),(283,10253,'127',1,'10253',10260,0,2),(284,10253,'31',1,'10253',10261,0,2),(285,10253,'31',1,'10253',10263,0,2),(286,10253,'31',1,'10253',10264,0,2),(287,10253,'166',1,'10253',10263,0,4),(288,10253,'166',1,'10253',10264,0,4),(289,10253,'33',1,'10253',10261,0,2),(290,10253,'33',1,'10253',10263,0,2),(291,10253,'33',1,'10253',10264,0,2),(292,10253,'114',1,'10253',10261,0,2),(293,10253,'114',1,'10253',10263,0,2),(294,10253,'114',1,'10253',10264,0,2),(295,10253,'67',1,'10253',10263,0,2),(296,10253,'67',1,'10253',10264,0,2),(297,10253,'110',1,'10253',10263,0,2),(298,10253,'110',1,'10253',10264,0,2),(299,10253,'59',1,'10253',10263,0,2),(300,10253,'59',1,'10253',10264,0,2),(301,10253,'102',1,'10253',10261,0,2),(302,10253,'102',1,'10253',10263,0,2),(303,10253,'102',1,'10253',10264,0,2),(304,10253,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10397',10262,10257,15),(305,10253,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10398',10262,10257,15),(306,10253,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10399',10262,10257,15),(307,10253,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10401',10262,10257,15),(308,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10400',10262,10257,15),(309,10253,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10403',10262,10257,15),(310,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10402',10262,10257,15),(311,10253,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10405',10262,10257,15),(312,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10404',10262,10257,15),(313,10253,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10407',10262,10257,15),(314,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10406',10262,10257,15),(315,10253,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10408',10262,10257,15),(316,10253,'com.liferay.portal.model.LayoutPrototype',4,'10409',10262,10257,15),(317,10253,'com.liferay.portal.model.Layout',4,'10413',10262,10257,1023),(318,10253,'com.liferay.portal.model.Layout',4,'10413',10269,0,19),(319,10253,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10416',10262,10257,15),(320,10253,'33',4,'10413_LAYOUT_33',10262,0,15),(321,10253,'33',4,'10413_LAYOUT_33',10269,0,1),(322,10253,'33',4,'10413_LAYOUT_33',10261,0,1),(323,10253,'com.liferay.portlet.blogs',4,'10410',10262,0,14),(324,10253,'148',4,'10413_LAYOUT_148_INSTANCE_HB8RhihRIWbU',10262,0,15),(325,10253,'148',4,'10413_LAYOUT_148_INSTANCE_HB8RhihRIWbU',10269,0,1),(326,10253,'148',4,'10413_LAYOUT_148_INSTANCE_HB8RhihRIWbU',10261,0,1),(327,10253,'114',4,'10413_LAYOUT_114',10262,0,15),(328,10253,'114',4,'10413_LAYOUT_114',10269,0,1),(329,10253,'114',4,'10413_LAYOUT_114',10261,0,1),(330,10253,'com.liferay.portal.model.LayoutPrototype',4,'10419',10262,10257,15),(331,10253,'com.liferay.portal.model.Layout',4,'10423',10262,10257,1023),(332,10253,'com.liferay.portal.model.Layout',4,'10423',10269,0,19),(333,10253,'141',4,'10423_LAYOUT_141_INSTANCE_1gvsJieBnKew',10262,0,15),(334,10253,'141',4,'10423_LAYOUT_141_INSTANCE_1gvsJieBnKew',10269,0,1),(335,10253,'141',4,'10423_LAYOUT_141_INSTANCE_1gvsJieBnKew',10261,0,1),(336,10253,'122',4,'10423_LAYOUT_122_INSTANCE_PKdetvSymW6R',10262,0,15),(337,10253,'122',4,'10423_LAYOUT_122_INSTANCE_PKdetvSymW6R',10269,0,1),(338,10253,'122',4,'10423_LAYOUT_122_INSTANCE_PKdetvSymW6R',10261,0,1),(339,10253,'3',4,'10423_LAYOUT_3',10262,0,15),(340,10253,'3',4,'10423_LAYOUT_3',10269,0,1),(341,10253,'3',4,'10423_LAYOUT_3',10261,0,1),(342,10253,'101',4,'10423_LAYOUT_101_INSTANCE_Rc3CNB8tDg3t',10262,0,15),(343,10253,'101',4,'10423_LAYOUT_101_INSTANCE_Rc3CNB8tDg3t',10269,0,1),(344,10253,'101',4,'10423_LAYOUT_101_INSTANCE_Rc3CNB8tDg3t',10261,0,1),(345,10253,'com.liferay.portal.model.LayoutPrototype',4,'10428',10262,10257,15),(346,10253,'com.liferay.portal.model.Layout',4,'10432',10262,10257,1023),(347,10253,'com.liferay.portal.model.Layout',4,'10432',10269,0,19),(348,10253,'36',4,'10432_LAYOUT_36',10262,0,15),(349,10253,'36',4,'10432_LAYOUT_36',10269,0,1),(350,10253,'36',4,'10432_LAYOUT_36',10261,0,1),(351,10253,'com.liferay.portlet.wiki',4,'10429',10262,0,6),(352,10253,'122',4,'10432_LAYOUT_122_INSTANCE_91H6F7yq8S74',10262,0,15),(353,10253,'122',4,'10432_LAYOUT_122_INSTANCE_91H6F7yq8S74',10269,0,1),(354,10253,'122',4,'10432_LAYOUT_122_INSTANCE_91H6F7yq8S74',10261,0,1),(355,10253,'141',4,'10432_LAYOUT_141_INSTANCE_3pC8rFirI7ht',10262,0,15),(356,10253,'141',4,'10432_LAYOUT_141_INSTANCE_3pC8rFirI7ht',10269,0,1),(357,10253,'141',4,'10432_LAYOUT_141_INSTANCE_3pC8rFirI7ht',10261,0,1),(358,10253,'com.liferay.portal.model.LayoutSetPrototype',4,'10437',10262,10257,15),(362,10253,'com.liferay.portal.model.Layout',4,'10446',10262,10257,1023),(363,10253,'com.liferay.portal.model.Layout',4,'10446',10269,0,19),(364,10253,'com.liferay.portal.model.Layout',4,'10446',10261,0,1),(365,10253,'19',4,'10446_LAYOUT_19',10262,0,15),(366,10253,'19',4,'10446_LAYOUT_19',10269,0,1),(367,10253,'com.liferay.portlet.messageboards',4,'10438',10262,0,2047),(368,10253,'com.liferay.portlet.messageboards',4,'10438',10269,0,781),(369,10253,'com.liferay.portlet.messageboards',4,'10438',10261,0,1),(370,10253,'3',4,'10446_LAYOUT_3',10262,0,15),(371,10253,'3',4,'10446_LAYOUT_3',10269,0,1),(372,10253,'59',4,'10446_LAYOUT_59_INSTANCE_gw8EHWFbg9nq',10262,0,15),(373,10253,'59',4,'10446_LAYOUT_59_INSTANCE_gw8EHWFbg9nq',10269,0,1),(374,10253,'180',4,'10446_LAYOUT_180',10262,0,15),(375,10253,'180',4,'10446_LAYOUT_180',10269,0,1),(376,10253,'com.liferay.portal.model.Layout',4,'10452',10262,10257,1023),(377,10253,'com.liferay.portal.model.Layout',4,'10452',10269,0,19),(378,10253,'com.liferay.portal.model.Layout',4,'10452',10261,0,1),(379,10253,'8',4,'10452_LAYOUT_8',10262,0,31),(380,10253,'8',4,'10452_LAYOUT_8',10269,0,1),(381,10253,'com.liferay.portlet.calendar',4,'10438',10262,0,14),(382,10253,'101',4,'10452_LAYOUT_101_INSTANCE_sX9IkmDTYQWq',10262,0,15),(383,10253,'101',4,'10452_LAYOUT_101_INSTANCE_sX9IkmDTYQWq',10269,0,1),(384,10253,'com.liferay.portal.model.Layout',4,'10458',10262,10257,1023),(385,10253,'com.liferay.portal.model.Layout',4,'10458',10269,0,19),(386,10253,'com.liferay.portal.model.Layout',4,'10458',10261,0,1),(387,10253,'36',4,'10458_LAYOUT_36',10262,0,15),(388,10253,'36',4,'10458_LAYOUT_36',10269,0,1),(389,10253,'com.liferay.portlet.wiki',4,'10438',10262,0,6),(390,10253,'122',4,'10458_LAYOUT_122_INSTANCE_OG9oDTuqDaHO',10262,0,15),(391,10253,'122',4,'10458_LAYOUT_122_INSTANCE_OG9oDTuqDaHO',10269,0,1),(392,10253,'148',4,'10458_LAYOUT_148_INSTANCE_hy2OCaLcvSqb',10262,0,15),(393,10253,'148',4,'10458_LAYOUT_148_INSTANCE_hy2OCaLcvSqb',10269,0,1),(394,10253,'com.liferay.portal.model.LayoutSetPrototype',4,'10463',10262,10257,15),(398,10253,'com.liferay.portal.model.Layout',4,'10472',10262,10257,1023),(399,10253,'com.liferay.portal.model.Layout',4,'10472',10269,0,19),(400,10253,'com.liferay.portal.model.Layout',4,'10472',10261,0,1),(401,10253,'116',4,'10472_LAYOUT_116',10262,0,15),(402,10253,'116',4,'10472_LAYOUT_116',10269,0,1),(403,10253,'3',4,'10472_LAYOUT_3',10262,0,15),(404,10253,'3',4,'10472_LAYOUT_3',10269,0,1),(405,10253,'82',4,'10472_LAYOUT_82',10262,0,15),(406,10253,'82',4,'10472_LAYOUT_82',10269,0,1),(407,10253,'101',4,'10472_LAYOUT_101_INSTANCE_YKL9Ihv1t3XH',10262,0,15),(408,10253,'101',4,'10472_LAYOUT_101_INSTANCE_YKL9Ihv1t3XH',10269,0,1),(409,10253,'com.liferay.portal.model.Layout',4,'10480',10262,10257,1023),(410,10253,'com.liferay.portal.model.Layout',4,'10480',10269,0,19),(411,10253,'com.liferay.portal.model.Layout',4,'10480',10261,0,1),(412,10253,'20',4,'10480_LAYOUT_20',10262,0,31),(413,10253,'20',4,'10480_LAYOUT_20',10269,0,1),(414,10253,'com.liferay.portlet.documentlibrary',4,'10464',10262,0,511),(415,10253,'com.liferay.portlet.documentlibrary',4,'10464',10269,0,1),(416,10253,'com.liferay.portlet.documentlibrary',4,'10464',10261,0,1),(417,10253,'com.liferay.portal.model.Layout',4,'10486',10262,10257,1023),(418,10253,'com.liferay.portal.model.Layout',4,'10486',10269,0,19),(419,10253,'com.liferay.portal.model.Layout',4,'10486',10261,0,1),(420,10253,'8',4,'10486_LAYOUT_8',10262,0,31),(421,10253,'8',4,'10486_LAYOUT_8',10269,0,1),(422,10253,'com.liferay.portlet.calendar',4,'10464',10262,0,14),(423,10253,'101',4,'10486_LAYOUT_101_INSTANCE_cZZpL979qao6',10262,0,15),(424,10253,'101',4,'10486_LAYOUT_101_INSTANCE_cZZpL979qao6',10269,0,1),(425,10253,'com.liferay.portal.model.Layout',4,'10492',10262,10257,1023),(426,10253,'com.liferay.portal.model.Layout',4,'10492',10269,0,19),(427,10253,'com.liferay.portal.model.Layout',4,'10492',10261,0,1),(428,10253,'39',4,'10492_LAYOUT_39_INSTANCE_SGrtnUVY7c9J',10262,0,15),(429,10253,'39',4,'10492_LAYOUT_39_INSTANCE_SGrtnUVY7c9J',10269,0,1),(430,10253,'39',4,'10492_LAYOUT_39_INSTANCE_bzn1R6XCZreC',10262,0,15),(431,10253,'39',4,'10492_LAYOUT_39_INSTANCE_bzn1R6XCZreC',10269,0,1),(432,10253,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10499',10262,10257,15),(433,10253,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10500',10262,10257,15),(434,10253,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10501',10262,10257,15),(435,10253,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10502',10262,10257,15),(436,10253,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10503',10262,10257,15),(437,10253,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10504',10262,10257,15),(438,10253,'com.liferay.portal.model.User',4,'10506',10262,10506,31),(439,10253,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10514',10262,0,15),(440,10253,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10520',10262,0,15),(441,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10522',10262,10257,255),(442,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10522',10269,0,3),(443,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10522',10261,0,3),(444,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10531',10262,10257,255),(445,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10531',10269,0,3),(446,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10531',10261,0,3),(447,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10540',10262,10257,255),(448,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10540',10269,0,3),(449,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10540',10261,0,3),(450,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10548',10262,10257,255),(451,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10548',10269,0,3),(452,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10548',10261,0,3),(453,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10559',10262,10257,255),(454,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10559',10269,0,3),(455,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10559',10261,0,3),(456,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10575',10262,10257,255),(457,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10575',10269,0,3),(458,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10575',10261,0,3),(459,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10591',10262,10257,255),(460,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10591',10269,0,3),(461,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10591',10261,0,3),(462,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10603',10262,10257,255),(463,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10603',10269,0,3),(464,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10603',10261,0,3),(465,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10615',10262,10257,255),(466,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10615',10269,0,3),(467,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10615',10261,0,3),(468,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10627',10262,10257,255),(469,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10627',10269,0,3),(470,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10627',10261,0,3),(471,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10639',10262,10257,255),(472,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10639',10269,0,3),(473,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10639',10261,0,3),(474,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10651',10262,10257,255),(475,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10651',10269,0,3),(476,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10651',10261,0,3),(477,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10663',10262,10257,255),(478,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10663',10269,0,3),(479,10253,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10663',10261,0,3),(480,10253,'com.liferay.portlet.journal.model.JournalArticle',4,'10680',10262,10257,255),(481,10253,'com.liferay.portlet.journal.model.JournalArticle',4,'10680',10269,0,3),(482,10253,'com.liferay.portlet.journal.model.JournalArticle',4,'10680',10261,0,3),(483,10253,'com.liferay.portlet.journal.model.JournalStructure',4,'10688',10262,10257,15),(484,10253,'com.liferay.portlet.journal.model.JournalStructure',4,'10688',10269,0,1),(485,10253,'com.liferay.portlet.journal.model.JournalStructure',4,'10688',10261,0,1),(486,10253,'com.liferay.portlet.journal.model.JournalTemplate',4,'10689',10262,10257,15),(487,10253,'com.liferay.portlet.journal.model.JournalTemplate',4,'10689',10269,0,1),(488,10253,'com.liferay.portlet.journal.model.JournalTemplate',4,'10689',10261,0,1),(489,10253,'com.liferay.portlet.journal.model.JournalArticle',4,'10692',10262,10257,255),(490,10253,'com.liferay.portlet.journal.model.JournalArticle',4,'10692',10269,0,3),(491,10253,'com.liferay.portlet.journal.model.JournalArticle',4,'10692',10261,0,3),(492,10253,'com.liferay.portlet.journal.model.JournalArticle',4,'10700',10262,10257,255),(493,10253,'com.liferay.portlet.journal.model.JournalArticle',4,'10700',10269,0,3),(494,10253,'com.liferay.portlet.journal.model.JournalArticle',4,'10700',10261,0,3),(516,10253,'160',4,'10274_LAYOUT_160',10262,0,15),(517,10253,'160',4,'10274_LAYOUT_160',10269,0,1),(518,10253,'145',4,'10274_LAYOUT_145',10262,0,15),(519,10253,'145',4,'10274_LAYOUT_145',10269,0,1),(520,10253,'49',4,'10274_LAYOUT_49',10262,0,15),(521,10253,'49',4,'10274_LAYOUT_49',10269,0,1),(522,10253,'165',4,'10274_LAYOUT_165',10262,0,31),(523,10253,'165',4,'10274_LAYOUT_165',10269,0,1),(524,10253,'156',4,'10274_LAYOUT_156',10262,0,31),(525,10253,'156',4,'10274_LAYOUT_156',10269,0,1),(604,10253,'137',4,'10274_LAYOUT_137',10262,0,15),(605,10253,'137',4,'10274_LAYOUT_137',10269,0,1),(606,10253,'135',4,'10274_LAYOUT_135',10262,0,15),(607,10253,'135',4,'10274_LAYOUT_135',10269,0,1),(608,10253,'125',4,'10274_LAYOUT_125',10262,0,31),(609,10253,'125',4,'10274_LAYOUT_125',10269,0,1),(610,10253,'134',4,'10274_LAYOUT_134',10262,0,15),(611,10253,'134',4,'10274_LAYOUT_134',10269,0,1),(612,10253,'149',4,'10274_LAYOUT_149',10262,0,15),(613,10253,'149',4,'10274_LAYOUT_149',10269,0,1),(614,10253,'146',4,'10274_LAYOUT_146',10262,0,15),(615,10253,'146',4,'10274_LAYOUT_146',10269,0,1),(701,10253,'1_WAR_marketplaceportlet',4,'10274_LAYOUT_1_WAR_marketplaceportlet',10262,0,31),(702,10253,'1_WAR_marketplaceportlet',4,'10274_LAYOUT_1_WAR_marketplaceportlet',10269,0,1),(703,10253,'com.liferay.portal.model.LayoutPrototype',4,'10903',10262,10506,15),(704,10253,'com.liferay.portal.model.Layout',4,'10907',10262,10506,1023),(705,10253,'com.liferay.portal.model.Layout',4,'10907',10269,0,19),(706,10253,'com.liferay.portal.model.LayoutPrototype',4,'10912',10262,10506,15),(707,10253,'com.liferay.portal.model.Layout',4,'10916',10262,10506,1023),(708,10253,'com.liferay.portal.model.Layout',4,'10916',10269,0,19),(709,10253,'com.liferay.portal.model.LayoutPrototype',4,'10921',10262,10506,15),(710,10253,'com.liferay.portal.model.Layout',4,'10925',10262,10506,1023),(711,10253,'com.liferay.portal.model.Layout',4,'10925',10269,0,19),(712,10253,'com.liferay.portal.model.LayoutPrototype',4,'10930',10262,10506,15),(713,10253,'com.liferay.portal.model.Layout',4,'10934',10262,10506,1023),(714,10253,'com.liferay.portal.model.Layout',4,'10934',10269,0,19),(715,10253,'com.liferay.portal.model.LayoutPrototype',4,'10939',10262,10506,15),(716,10253,'com.liferay.portal.model.Layout',4,'10943',10262,10506,1023),(717,10253,'com.liferay.portal.model.Layout',4,'10943',10269,0,19),(718,10253,'103',4,'10907_LAYOUT_103',10262,0,15),(719,10253,'103',4,'10907_LAYOUT_103',10269,0,1),(720,10253,'103',4,'10907_LAYOUT_103',10261,0,1),(721,10253,'145',4,'10907_LAYOUT_145',10262,0,15),(722,10253,'145',4,'10907_LAYOUT_145',10269,0,1),(723,10253,'145',4,'10907_LAYOUT_145',10261,0,1),(724,10253,'88',4,'10274_LAYOUT_88',10262,0,15),(725,10253,'88',4,'10274_LAYOUT_88',10269,0,1),(726,10253,'130',4,'10274_LAYOUT_130',10262,0,15),(727,10253,'130',4,'10274_LAYOUT_130',10269,0,1),(801,10253,'49',4,'10907_LAYOUT_49',10262,0,15),(802,10253,'49',4,'10907_LAYOUT_49',10269,0,1),(803,10253,'49',4,'10907_LAYOUT_49',10261,0,1),(804,10253,'103',4,'10916_LAYOUT_103',10262,0,15),(805,10253,'103',4,'10916_LAYOUT_103',10269,0,1),(806,10253,'103',4,'10916_LAYOUT_103',10261,0,1),(807,10253,'145',4,'10916_LAYOUT_145',10262,0,15),(808,10253,'145',4,'10916_LAYOUT_145',10269,0,1),(809,10253,'145',4,'10916_LAYOUT_145',10261,0,1),(810,10253,'com.liferay.portal.model.Layout',4,'11004',10262,10506,1023),(811,10253,'com.liferay.portal.model.Layout',4,'11004',10269,0,19),(812,10253,'com.liferay.portal.model.Layout',4,'11004',10261,0,1),(813,10253,'103',4,'11004_LAYOUT_103',10262,0,15),(814,10253,'103',4,'11004_LAYOUT_103',10269,0,1),(815,10253,'103',4,'11004_LAYOUT_103',10261,0,1),(816,10253,'87',4,'10907_LAYOUT_87',10262,0,15),(817,10253,'87',4,'10907_LAYOUT_87',10269,0,1),(818,10253,'87',4,'10907_LAYOUT_87',10261,0,1),(819,10253,'58',4,'10907_LAYOUT_58',10262,0,15),(820,10253,'58',4,'10907_LAYOUT_58',10269,0,1),(821,10253,'58',4,'10907_LAYOUT_58',10261,0,1),(822,10253,'58',4,'11004_LAYOUT_58',10261,0,1),(823,10253,'58',4,'11004_LAYOUT_58',10262,0,15),(824,10253,'58',4,'11004_LAYOUT_58',10269,0,1),(825,10253,'145',4,'11004_LAYOUT_145',10262,0,15),(826,10253,'145',4,'11004_LAYOUT_145',10269,0,1),(827,10253,'145',4,'11004_LAYOUT_145',10261,0,1),(901,10253,'136',4,'10274_LAYOUT_136',10262,0,15),(902,10253,'136',4,'10274_LAYOUT_136',10269,0,1),(903,10253,'127',4,'10274_LAYOUT_127',10262,0,31),(904,10253,'127',4,'10274_LAYOUT_127',10269,0,1),(905,10253,'com.liferay.portal.model.User',4,'11203',10262,10506,31),(906,10253,'2',4,'10274_LAYOUT_2',10262,0,15),(907,10253,'174',4,'10274_LAYOUT_174',10262,0,31),(908,10253,'174',4,'10274_LAYOUT_174',10269,0,1),(909,10253,'49',4,'11004_LAYOUT_49',10262,0,15),(910,10253,'49',4,'11004_LAYOUT_49',10269,0,1),(911,10253,'49',4,'11004_LAYOUT_49',10261,0,1),(915,10253,'com.liferay.portal.model.Layout',4,'11226',10262,10506,1023),(916,10253,'com.liferay.portal.model.Layout',4,'11226',10269,0,19),(917,10253,'com.liferay.portal.model.Layout',4,'11226',10261,0,1),(918,10253,'103',4,'11226_LAYOUT_103',10262,0,15),(919,10253,'103',4,'11226_LAYOUT_103',10269,0,1),(920,10253,'103',4,'11226_LAYOUT_103',10261,0,1),(921,10253,'145',4,'11226_LAYOUT_145',10262,0,15),(922,10253,'145',4,'11226_LAYOUT_145',10269,0,1),(923,10253,'145',4,'11226_LAYOUT_145',10261,0,1),(924,10253,'com.liferay.portal.model.Layout',4,'11234',10262,10506,1023),(925,10253,'com.liferay.portal.model.Layout',4,'11234',10269,0,19),(926,10253,'com.liferay.portal.model.Layout',4,'11234',10261,0,1),(927,10253,'com.liferay.portal.model.Layout',4,'11240',10262,10506,1023),(928,10253,'com.liferay.portal.model.Layout',4,'11240',10269,0,19),(929,10253,'com.liferay.portal.model.Layout',4,'11240',10261,0,1),(930,10253,'com.liferay.portal.model.Layout',4,'11246',10262,10506,1023),(931,10253,'com.liferay.portal.model.Layout',4,'11246',10269,0,19),(932,10253,'com.liferay.portal.model.Layout',4,'11246',10261,0,1),(933,10253,'103',4,'11234_LAYOUT_103',10262,0,15),(934,10253,'103',4,'11234_LAYOUT_103',10269,0,1),(935,10253,'103',4,'11234_LAYOUT_103',10261,0,1),(936,10253,'145',4,'11234_LAYOUT_145',10262,0,15),(937,10253,'145',4,'11234_LAYOUT_145',10269,0,1),(938,10253,'145',4,'11234_LAYOUT_145',10261,0,1),(939,10253,'103',4,'11240_LAYOUT_103',10262,0,15),(940,10253,'103',4,'11240_LAYOUT_103',10269,0,1),(941,10253,'103',4,'11240_LAYOUT_103',10261,0,1),(942,10253,'145',4,'11240_LAYOUT_145',10262,0,15),(943,10253,'145',4,'11240_LAYOUT_145',10269,0,1),(944,10253,'145',4,'11240_LAYOUT_145',10261,0,1),(945,10253,'103',4,'11246_LAYOUT_103',10262,0,15),(946,10253,'103',4,'11246_LAYOUT_103',10269,0,1),(947,10253,'103',4,'11246_LAYOUT_103',10261,0,1),(948,10253,'145',4,'11246_LAYOUT_145',10262,0,15),(949,10253,'145',4,'11246_LAYOUT_145',10269,0,1),(950,10253,'145',4,'11246_LAYOUT_145',10261,0,1),(1001,10253,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet',1,'10253',10260,0,2),(1002,10253,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet',1,'10253',10261,0,2),(1003,10253,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet',1,'10253',10263,0,2),(1004,10253,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet',1,'10253',10264,0,2),(1005,10253,'com.liferay.portal.model.LayoutPrototype',4,'11302',10262,10506,15),(1006,10253,'com.liferay.portal.model.Layout',4,'11306',10262,10506,1023),(1007,10253,'com.liferay.portal.model.Layout',4,'11306',10269,0,19),(1008,10253,'103',4,'11306_LAYOUT_103',10262,0,15),(1009,10253,'103',4,'11306_LAYOUT_103',10269,0,1),(1010,10253,'103',4,'11306_LAYOUT_103',10261,0,1),(1011,10253,'145',4,'11306_LAYOUT_145',10262,0,15),(1012,10253,'145',4,'11306_LAYOUT_145',10269,0,1),(1013,10253,'145',4,'11306_LAYOUT_145',10261,0,1),(1014,10253,'103',4,'10943_LAYOUT_103',10262,0,15),(1015,10253,'103',4,'10943_LAYOUT_103',10269,0,1),(1016,10253,'103',4,'10943_LAYOUT_103',10261,0,1),(1017,10253,'145',4,'10943_LAYOUT_145',10262,0,15),(1018,10253,'145',4,'10943_LAYOUT_145',10269,0,1),(1019,10253,'145',4,'10943_LAYOUT_145',10261,0,1),(1020,10253,'103',4,'10934_LAYOUT_103',10262,0,15),(1021,10253,'103',4,'10934_LAYOUT_103',10269,0,1),(1022,10253,'103',4,'10934_LAYOUT_103',10261,0,1),(1023,10253,'145',4,'10934_LAYOUT_145',10262,0,15),(1024,10253,'145',4,'10934_LAYOUT_145',10269,0,1),(1025,10253,'145',4,'10934_LAYOUT_145',10261,0,1),(1026,10253,'103',4,'10925_LAYOUT_103',10262,0,15),(1027,10253,'103',4,'10925_LAYOUT_103',10269,0,1),(1028,10253,'103',4,'10925_LAYOUT_103',10261,0,1),(1029,10253,'145',4,'10925_LAYOUT_145',10262,0,15),(1030,10253,'145',4,'10925_LAYOUT_145',10269,0,1),(1031,10253,'145',4,'10925_LAYOUT_145',10261,0,1),(1032,10253,'87',4,'11306_LAYOUT_87',10262,0,15),(1033,10253,'87',4,'11306_LAYOUT_87',10269,0,1),(1034,10253,'87',4,'11306_LAYOUT_87',10261,0,1),(1035,10253,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet',4,'11306_LAYOUT_FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet',10262,0,15),(1036,10253,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet',4,'11306_LAYOUT_FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet',10269,0,1),(1037,10253,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet',4,'11306_LAYOUT_FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet',10261,0,1),(1038,10253,'com.liferay.portal.model.Layout',4,'11326',10262,10506,1023),(1039,10253,'com.liferay.portal.model.Layout',4,'11326',10269,0,19),(1040,10253,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet',4,'11326_LAYOUT_FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet',10262,0,15),(1041,10253,'FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet',4,'11326_LAYOUT_FormularioRegistroPersona_WAR_FormularioRegistroPersonaportlet',10269,0,1),(1042,10253,'103',4,'11326_LAYOUT_103',10262,0,15),(1043,10253,'103',4,'11326_LAYOUT_103',10269,0,1),(1101,10253,'com.liferay.portal.model.LayoutPrototype',4,'11402',10262,10506,15),(1102,10253,'com.liferay.portal.model.Layout',4,'11406',10262,10506,1023),(1103,10253,'com.liferay.portal.model.Layout',4,'11406',10269,0,19),(1104,10253,'com.liferay.portal.model.LayoutPrototype',4,'11411',10262,10506,15),(1105,10253,'com.liferay.portal.model.Layout',4,'11415',10262,10506,1023),(1106,10253,'com.liferay.portal.model.Layout',4,'11415',10269,0,19),(1107,10253,'com.liferay.portal.model.LayoutPrototype',4,'11420',10262,10506,15),(1108,10253,'com.liferay.portal.model.Layout',4,'11424',10262,10506,1023),(1109,10253,'com.liferay.portal.model.Layout',4,'11424',10269,0,19),(1110,10253,'com.liferay.portal.model.LayoutPrototype',4,'11429',10262,10506,15),(1111,10253,'com.liferay.portal.model.Layout',4,'11433',10262,10506,1023),(1112,10253,'com.liferay.portal.model.Layout',4,'11433',10269,0,19),(1113,10253,'103',4,'11406_LAYOUT_103',10262,0,15),(1114,10253,'103',4,'11406_LAYOUT_103',10269,0,1),(1115,10253,'103',4,'11406_LAYOUT_103',10261,0,1),(1116,10253,'145',4,'11406_LAYOUT_145',10262,0,15),(1117,10253,'145',4,'11406_LAYOUT_145',10269,0,1),(1118,10253,'145',4,'11406_LAYOUT_145',10261,0,1),(1119,10253,'87',4,'11406_LAYOUT_87',10262,0,15),(1120,10253,'87',4,'11406_LAYOUT_87',10269,0,1),(1121,10253,'87',4,'11406_LAYOUT_87',10261,0,1),(1122,10253,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet',1,'10253',10260,0,2),(1123,10253,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet',1,'10253',10261,0,2),(1124,10253,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet',1,'10253',10263,0,2),(1125,10253,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet',1,'10253',10264,0,2),(1126,10253,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet',4,'11406_LAYOUT_FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet',10262,0,15),(1127,10253,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet',4,'11406_LAYOUT_FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet',10269,0,1),(1128,10253,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet',4,'11406_LAYOUT_FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet',10261,0,1),(1129,10253,'com.liferay.portal.model.Layout',4,'11443',10262,10506,1023),(1130,10253,'com.liferay.portal.model.Layout',4,'11443',10269,0,19),(1131,10253,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet',4,'11443_LAYOUT_FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet',10262,0,15),(1132,10253,'FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet',4,'11443_LAYOUT_FormularioRegistroRaza_WAR_FormularioRegistroRazaportlet',10269,0,1),(1133,10253,'103',4,'11443_LAYOUT_103',10262,0,15),(1134,10253,'103',4,'11443_LAYOUT_103',10269,0,1),(1135,10253,'FormularioRaza_WAR_FormularioRegistroRazaportlet',1,'10253',10260,0,2),(1136,10253,'FormularioRaza_WAR_FormularioRegistroRazaportlet',1,'10253',10261,0,2),(1137,10253,'FormularioRaza_WAR_FormularioRegistroRazaportlet',1,'10253',10263,0,2),(1138,10253,'FormularioRaza_WAR_FormularioRegistroRazaportlet',1,'10253',10264,0,2),(1139,10253,'\"FormularioRegistroRaza\"_WAR_FormularioRegistroRazaportlet',1,'10253',10260,0,2),(1140,10253,'\"FormularioRegistroRaza\"_WAR_FormularioRegistroRazaportlet',1,'10253',10261,0,2),(1141,10253,'\"FormularioRegistroRaza\"_WAR_FormularioRegistroRazaportlet',1,'10253',10263,0,2),(1142,10253,'\"FormularioRegistroRaza\"_WAR_FormularioRegistroRazaportlet',1,'10253',10264,0,2),(1143,10253,'132',4,'10274_LAYOUT_132',10262,0,15),(1144,10253,'132',4,'10274_LAYOUT_132',10269,0,1),(1201,10253,'103',4,'11433_LAYOUT_103',10262,0,15),(1202,10253,'103',4,'11433_LAYOUT_103',10269,0,1),(1203,10253,'103',4,'11433_LAYOUT_103',10261,0,1),(1204,10253,'145',4,'11433_LAYOUT_145',10262,0,15),(1205,10253,'145',4,'11433_LAYOUT_145',10269,0,1),(1206,10253,'145',4,'11433_LAYOUT_145',10261,0,1),(1207,10253,'87',4,'11433_LAYOUT_87',10262,0,15),(1208,10253,'87',4,'11433_LAYOUT_87',10269,0,1),(1209,10253,'87',4,'11433_LAYOUT_87',10261,0,1),(1210,10253,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet',1,'10253',10260,0,2),(1211,10253,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet',1,'10253',10261,0,2),(1212,10253,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet',1,'10253',10263,0,2),(1213,10253,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet',1,'10253',10264,0,2),(1214,10253,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet',4,'11433_LAYOUT_FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet',10262,0,15),(1215,10253,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet',4,'11433_LAYOUT_FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet',10269,0,1),(1216,10253,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet',4,'11433_LAYOUT_FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet',10261,0,1),(1217,10253,'com.liferay.portal.model.Layout',4,'11506',10262,10506,1023),(1218,10253,'com.liferay.portal.model.Layout',4,'11506',10269,0,19),(1219,10253,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet',4,'11506_LAYOUT_FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet',10262,0,15),(1220,10253,'FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet',4,'11506_LAYOUT_FormularioRegistroTipoIncidente_WAR_FormularioRegistroTipoIncidenteportlet',10269,0,1),(1221,10253,'103',4,'11506_LAYOUT_103',10262,0,15),(1222,10253,'103',4,'11506_LAYOUT_103',10269,0,1),(1223,10253,'103',4,'11415_LAYOUT_103',10262,0,15),(1224,10253,'103',4,'11415_LAYOUT_103',10269,0,1),(1225,10253,'103',4,'11415_LAYOUT_103',10261,0,1),(1226,10253,'145',4,'11415_LAYOUT_145',10262,0,15),(1227,10253,'145',4,'11415_LAYOUT_145',10269,0,1),(1228,10253,'145',4,'11415_LAYOUT_145',10261,0,1),(1301,10253,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet',1,'10253',10260,0,2),(1302,10253,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet',1,'10253',10261,0,2),(1303,10253,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet',1,'10253',10263,0,2),(1304,10253,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet',1,'10253',10264,0,2),(1305,10253,'87',4,'11415_LAYOUT_87',10262,0,15),(1306,10253,'87',4,'11415_LAYOUT_87',10269,0,1),(1307,10253,'87',4,'11415_LAYOUT_87',10261,0,1),(1308,10253,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet',4,'11415_LAYOUT_FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet',10262,0,15),(1309,10253,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet',4,'11415_LAYOUT_FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet',10269,0,1),(1310,10253,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet',4,'11415_LAYOUT_FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet',10261,0,1),(1311,10253,'com.liferay.portal.model.Layout',4,'11604',10262,10506,1023),(1312,10253,'com.liferay.portal.model.Layout',4,'11604',10269,0,19),(1313,10253,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet',4,'11604_LAYOUT_FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet',10262,0,15),(1314,10253,'FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet',4,'11604_LAYOUT_FormularioRegistroIncidente_WAR_FormularioRegistroIncidenteportlet',10269,0,1),(1315,10253,'103',4,'11604_LAYOUT_103',10262,0,15),(1316,10253,'103',4,'11604_LAYOUT_103',10269,0,1),(1401,10253,'58',4,'11226_LAYOUT_58',10262,0,15),(1402,10253,'58',4,'11226_LAYOUT_58',10269,0,1),(1403,10253,'58',4,'11226_LAYOUT_58',10261,0,1),(1404,10253,'49',4,'11443_LAYOUT_49',10262,0,15),(1405,10253,'49',4,'11443_LAYOUT_49',10269,0,1),(1501,10253,'mygreeting_WAR_mygreetingportlet',1,'10253',10260,0,2),(1502,10253,'mygreeting_WAR_mygreetingportlet',1,'10253',10261,0,2),(1503,10253,'mygreeting_WAR_mygreetingportlet',1,'10253',10263,0,2),(1504,10253,'mygreeting_WAR_mygreetingportlet',1,'10253',10264,0,2),(1505,10253,'mygreeting_WAR_mygreetingportlet',4,'10907_LAYOUT_mygreeting_WAR_mygreetingportlet',10262,0,15),(1506,10253,'mygreeting_WAR_mygreetingportlet',4,'10907_LAYOUT_mygreeting_WAR_mygreetingportlet',10269,0,1),(1507,10253,'mygreeting_WAR_mygreetingportlet',4,'10907_LAYOUT_mygreeting_WAR_mygreetingportlet',10261,0,1),(1508,10253,'mygreeting_WAR_mygreetingportlet',4,'11004_LAYOUT_mygreeting_WAR_mygreetingportlet',10261,0,1),(1509,10253,'mygreeting_WAR_mygreetingportlet',4,'11004_LAYOUT_mygreeting_WAR_mygreetingportlet',10262,0,15),(1510,10253,'mygreeting_WAR_mygreetingportlet',4,'11004_LAYOUT_mygreeting_WAR_mygreetingportlet',10269,0,1),(1601,10253,'com.liferay.portal.model.Layout',4,'11901',10262,10506,1023),(1602,10253,'com.liferay.portal.model.Layout',4,'11901',10269,0,19),(1603,10253,'103',4,'11901_LAYOUT_103',10262,0,15),(1604,10253,'103',4,'11901_LAYOUT_103',10269,0,1),(1605,10253,'103',4,'11424_LAYOUT_103',10262,0,15),(1606,10253,'103',4,'11424_LAYOUT_103',10269,0,1),(1607,10253,'103',4,'11424_LAYOUT_103',10261,0,1),(1608,10253,'145',4,'11424_LAYOUT_145',10262,0,15),(1609,10253,'145',4,'11424_LAYOUT_145',10269,0,1),(1610,10253,'145',4,'11424_LAYOUT_145',10261,0,1),(1611,10253,'87',4,'11424_LAYOUT_87',10262,0,15),(1612,10253,'87',4,'11424_LAYOUT_87',10269,0,1),(1613,10253,'87',4,'11424_LAYOUT_87',10261,0,1),(1701,10253,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet',1,'10253',10260,0,2),(1702,10253,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet',1,'10253',10261,0,2),(1703,10253,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet',1,'10253',10263,0,2),(1704,10253,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet',1,'10253',10264,0,2),(1705,10253,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet',4,'11424_LAYOUT_FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet',10262,0,15),(1706,10253,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet',4,'11424_LAYOUT_FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet',10269,0,1),(1707,10253,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet',4,'11424_LAYOUT_FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet',10261,0,1),(1708,10253,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet',4,'11901_LAYOUT_FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet',10262,0,15),(1709,10253,'FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet',4,'11901_LAYOUT_FormularioRegistroEjemplarCanino_WAR_FormularioRegistroEjemplarCaninoportlet',10269,0,1),(1801,10253,'49',4,'11326_LAYOUT_49',10262,0,15),(1802,10253,'49',4,'11326_LAYOUT_49',10269,0,1);
/*!40000 ALTER TABLE `ResourcePermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceTypePermission`
--

DROP TABLE IF EXISTS `ResourceTypePermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceTypePermission` (
  `resourceTypePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceTypePermissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceTypePermission`
--

LOCK TABLES `ResourceTypePermission` WRITE;
/*!40000 ALTER TABLE `ResourceTypePermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResourceTypePermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Resource_`
--

DROP TABLE IF EXISTS `Resource_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Resource_` (
  `resourceId` bigint(20) NOT NULL,
  `codeId` bigint(20) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Resource_`
--

LOCK TABLES `Resource_` WRITE;
/*!40000 ALTER TABLE `Resource_` DISABLE KEYS */;
/*!40000 ALTER TABLE `Resource_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role_`
--

DROP TABLE IF EXISTS `Role_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Role_` (
  `roleId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `subtype` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role_`
--

LOCK TABLES `Role_` WRITE;
/*!40000 ALTER TABLE `Role_` DISABLE KEYS */;
INSERT INTO `Role_` VALUES (10260,10253,10104,10260,'Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Administrators are super users who can do anything.</Description></root>',1,''),(10261,10253,10104,10261,'Guest','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Unauthenticated users always have this role.</Description></root>',1,''),(10262,10253,10104,10262,'Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This is an implied role with respect to the objects users create.</Description></root>',1,''),(10263,10253,10104,10263,'Power User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Power Users have their own personal site.</Description></root>',1,''),(10264,10253,10104,10264,'User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Authenticated users should be assigned this role.</Description></root>',1,''),(10265,10253,10104,10265,'Organization Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.</Description></root>',3,''),(10266,10253,10104,10266,'Organization Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Owners are super users of their organization and can assign organization roles to users.</Description></root>',3,''),(10267,10253,10104,10267,'Organization User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to an organization have this role within that organization.</Description></root>',3,''),(10268,10253,10104,10268,'Site Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Administrators are super users of their site but cannot make other users into Site Administrators.</Description></root>',2,''),(10269,10253,10104,10269,'Site Member','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to a site have this role within that site.</Description></root>',2,''),(10270,10253,10104,10270,'Site Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Owners are super users of their site and can assign site roles to users.</Description></root>',2,'');
/*!40000 ALTER TABLE `Role_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Roles_Permissions`
--

DROP TABLE IF EXISTS `Roles_Permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Roles_Permissions` (
  `permissionId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`permissionId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Roles_Permissions`
--

LOCK TABLES `Roles_Permissions` WRITE;
/*!40000 ALTER TABLE `Roles_Permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Roles_Permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCFrameworkVersi_SCProductVers`
--

DROP TABLE IF EXISTS `SCFrameworkVersi_SCProductVers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCFrameworkVersi_SCProductVers` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `productVersionId` bigint(20) NOT NULL,
  PRIMARY KEY (`frameworkVersionId`,`productVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCFrameworkVersi_SCProductVers`
--

LOCK TABLES `SCFrameworkVersi_SCProductVers` WRITE;
/*!40000 ALTER TABLE `SCFrameworkVersi_SCProductVers` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCFrameworkVersi_SCProductVers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCFrameworkVersion`
--

DROP TABLE IF EXISTS `SCFrameworkVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCFrameworkVersion` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`frameworkVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCFrameworkVersion`
--

LOCK TABLES `SCFrameworkVersion` WRITE;
/*!40000 ALTER TABLE `SCFrameworkVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCFrameworkVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCLicense`
--

DROP TABLE IF EXISTS `SCLicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCLicense` (
  `licenseId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `openSource` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `recommended` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`licenseId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCLicense`
--

LOCK TABLES `SCLicense` WRITE;
/*!40000 ALTER TABLE `SCLicense` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCLicense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCLicenses_SCProductEntries`
--

DROP TABLE IF EXISTS `SCLicenses_SCProductEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCLicenses_SCProductEntries` (
  `licenseId` bigint(20) NOT NULL,
  `productEntryId` bigint(20) NOT NULL,
  PRIMARY KEY (`licenseId`,`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCLicenses_SCProductEntries`
--

LOCK TABLES `SCLicenses_SCProductEntries` WRITE;
/*!40000 ALTER TABLE `SCLicenses_SCProductEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCLicenses_SCProductEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCProductEntry`
--

DROP TABLE IF EXISTS `SCProductEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCProductEntry` (
  `productEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `shortDescription` longtext,
  `longDescription` longtext,
  `pageURL` longtext,
  `author` varchar(75) DEFAULT NULL,
  `repoGroupId` varchar(75) DEFAULT NULL,
  `repoArtifactId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCProductEntry`
--

LOCK TABLES `SCProductEntry` WRITE;
/*!40000 ALTER TABLE `SCProductEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCProductScreenshot`
--

DROP TABLE IF EXISTS `SCProductScreenshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCProductScreenshot` (
  `productScreenshotId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `thumbnailId` bigint(20) DEFAULT NULL,
  `fullImageId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`productScreenshotId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCProductScreenshot`
--

LOCK TABLES `SCProductScreenshot` WRITE;
/*!40000 ALTER TABLE `SCProductScreenshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductScreenshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCProductVersion`
--

DROP TABLE IF EXISTS `SCProductVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCProductVersion` (
  `productVersionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `changeLog` longtext,
  `downloadPageURL` longtext,
  `directDownloadURL` varchar(2000) DEFAULT NULL,
  `repoStoreArtifact` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`productVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCProductVersion`
--

LOCK TABLES `SCProductVersion` WRITE;
/*!40000 ALTER TABLE `SCProductVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ServiceComponent`
--

DROP TABLE IF EXISTS `ServiceComponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ServiceComponent` (
  `serviceComponentId` bigint(20) NOT NULL,
  `buildNamespace` varchar(75) DEFAULT NULL,
  `buildNumber` bigint(20) DEFAULT NULL,
  `buildDate` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`serviceComponentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServiceComponent`
--

LOCK TABLES `ServiceComponent` WRITE;
/*!40000 ALTER TABLE `ServiceComponent` DISABLE KEYS */;
INSERT INTO `ServiceComponent` VALUES (10517,'Marketplace',2,1343264386388,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Marketplace_App (\n	uuid_ VARCHAR(75) null,\n	appId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	remoteAppId LONG,\n	version VARCHAR(75) null\n);\n\ncreate table Marketplace_Module (\n	uuid_ VARCHAR(75) null,\n	moduleId LONG not null primary key,\n	appId LONG,\n	contextName VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_865B7BD5 on Marketplace_App (companyId);\ncreate index IX_20F14D93 on Marketplace_App (remoteAppId);\ncreate index IX_3E667FE1 on Marketplace_App (uuid_);\n\ncreate index IX_7DC16D26 on Marketplace_Module (appId);\ncreate index IX_C6938724 on Marketplace_Module (appId, contextName);\ncreate index IX_F2F1E964 on Marketplace_Module (contextName);\ncreate index IX_A7EFD80E on Marketplace_Module (uuid_);]]></indexes-sql>\n</data>');
/*!40000 ALTER TABLE `ServiceComponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shard`
--

DROP TABLE IF EXISTS `Shard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Shard` (
  `shardId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`shardId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shard`
--

LOCK TABLES `Shard` WRITE;
/*!40000 ALTER TABLE `Shard` DISABLE KEYS */;
INSERT INTO `Shard` VALUES (10254,10121,10253,'default');
/*!40000 ALTER TABLE `Shard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCart`
--

DROP TABLE IF EXISTS `ShoppingCart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingCart` (
  `cartId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `itemIds` longtext,
  `couponCodes` varchar(75) DEFAULT NULL,
  `altShipping` int(11) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCart`
--

LOCK TABLES `ShoppingCart` WRITE;
/*!40000 ALTER TABLE `ShoppingCart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCategory`
--

DROP TABLE IF EXISTS `ShoppingCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingCategory` (
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCategory`
--

LOCK TABLES `ShoppingCategory` WRITE;
/*!40000 ALTER TABLE `ShoppingCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCoupon`
--

DROP TABLE IF EXISTS `ShoppingCoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingCoupon` (
  `couponId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `limitCategories` longtext,
  `limitSkus` longtext,
  `minOrder` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discountType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`couponId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCoupon`
--

LOCK TABLES `ShoppingCoupon` WRITE;
/*!40000 ALTER TABLE `ShoppingCoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCoupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingItem`
--

DROP TABLE IF EXISTS `ShoppingItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingItem` (
  `itemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `fields_` tinyint(4) DEFAULT NULL,
  `fieldsQuantities` longtext,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `stockQuantity` int(11) DEFAULT NULL,
  `featured_` tinyint(4) DEFAULT NULL,
  `sale_` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `mediumImage` tinyint(4) DEFAULT NULL,
  `mediumImageId` bigint(20) DEFAULT NULL,
  `mediumImageURL` longtext,
  `largeImage` tinyint(4) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `largeImageURL` longtext,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingItem`
--

LOCK TABLES `ShoppingItem` WRITE;
/*!40000 ALTER TABLE `ShoppingItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingItemField`
--

DROP TABLE IF EXISTS `ShoppingItemField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingItemField` (
  `itemFieldId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `values_` longtext,
  `description` longtext,
  PRIMARY KEY (`itemFieldId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingItemField`
--

LOCK TABLES `ShoppingItemField` WRITE;
/*!40000 ALTER TABLE `ShoppingItemField` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItemField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingItemPrice`
--

DROP TABLE IF EXISTS `ShoppingItemPrice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingItemPrice` (
  `itemPriceId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemPriceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingItemPrice`
--

LOCK TABLES `ShoppingItemPrice` WRITE;
/*!40000 ALTER TABLE `ShoppingItemPrice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItemPrice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingOrder`
--

DROP TABLE IF EXISTS `ShoppingOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingOrder` (
  `orderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `altShipping` varchar(75) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  `insurance` double DEFAULT NULL,
  `couponCodes` varchar(75) DEFAULT NULL,
  `couponDiscount` double DEFAULT NULL,
  `billingFirstName` varchar(75) DEFAULT NULL,
  `billingLastName` varchar(75) DEFAULT NULL,
  `billingEmailAddress` varchar(75) DEFAULT NULL,
  `billingCompany` varchar(75) DEFAULT NULL,
  `billingStreet` varchar(75) DEFAULT NULL,
  `billingCity` varchar(75) DEFAULT NULL,
  `billingState` varchar(75) DEFAULT NULL,
  `billingZip` varchar(75) DEFAULT NULL,
  `billingCountry` varchar(75) DEFAULT NULL,
  `billingPhone` varchar(75) DEFAULT NULL,
  `shipToBilling` tinyint(4) DEFAULT NULL,
  `shippingFirstName` varchar(75) DEFAULT NULL,
  `shippingLastName` varchar(75) DEFAULT NULL,
  `shippingEmailAddress` varchar(75) DEFAULT NULL,
  `shippingCompany` varchar(75) DEFAULT NULL,
  `shippingStreet` varchar(75) DEFAULT NULL,
  `shippingCity` varchar(75) DEFAULT NULL,
  `shippingState` varchar(75) DEFAULT NULL,
  `shippingZip` varchar(75) DEFAULT NULL,
  `shippingCountry` varchar(75) DEFAULT NULL,
  `shippingPhone` varchar(75) DEFAULT NULL,
  `ccName` varchar(75) DEFAULT NULL,
  `ccType` varchar(75) DEFAULT NULL,
  `ccNumber` varchar(75) DEFAULT NULL,
  `ccExpMonth` int(11) DEFAULT NULL,
  `ccExpYear` int(11) DEFAULT NULL,
  `ccVerNumber` varchar(75) DEFAULT NULL,
  `comments` longtext,
  `ppTxnId` varchar(75) DEFAULT NULL,
  `ppPaymentStatus` varchar(75) DEFAULT NULL,
  `ppPaymentGross` double DEFAULT NULL,
  `ppReceiverEmail` varchar(75) DEFAULT NULL,
  `ppPayerEmail` varchar(75) DEFAULT NULL,
  `sendOrderEmail` tinyint(4) DEFAULT NULL,
  `sendShippingEmail` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingOrder`
--

LOCK TABLES `ShoppingOrder` WRITE;
/*!40000 ALTER TABLE `ShoppingOrder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingOrderItem`
--

DROP TABLE IF EXISTS `ShoppingOrderItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingOrderItem` (
  `orderItemId` bigint(20) NOT NULL,
  `orderId` bigint(20) DEFAULT NULL,
  `itemId` varchar(75) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `shippedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingOrderItem`
--

LOCK TABLES `ShoppingOrderItem` WRITE;
/*!40000 ALTER TABLE `ShoppingOrderItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingOrderItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivity`
--

DROP TABLE IF EXISTS `SocialActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivity` (
  `activityId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `mirrorActivityId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`activityId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivity`
--

LOCK TABLES `SocialActivity` WRITE;
/*!40000 ALTER TABLE `SocialActivity` DISABLE KEYS */;
INSERT INTO `SocialActivity` VALUES (1,10279,10253,10257,1402520977237,0,10110,10522,1,'{\"title\":\"welcome_bg_3\"}',0),(2,10279,10253,10257,1402520977652,0,10110,10531,1,'{\"title\":\"welcome_bg_7\"}',0),(3,10279,10253,10257,1402520977750,0,10110,10540,1,'{\"title\":\"welcome_bg_11\"}',0),(4,10279,10253,10257,1402520977808,0,10110,10548,1,'{\"title\":\"welcome_bg_12\"}',0),(5,10279,10253,10257,1402520977878,0,10110,10559,1,'{\"title\":\"welcome_bg_5\"}',0),(6,10279,10253,10257,1402520977969,0,10110,10575,1,'{\"title\":\"welcome_bg_10\"}',0),(7,10279,10253,10257,1402520978055,0,10110,10591,1,'{\"title\":\"welcome_bg_2\"}',0),(8,10279,10253,10257,1402520978129,0,10110,10603,1,'{\"title\":\"welcome_bg_13\"}',0),(9,10279,10253,10257,1402520978207,0,10110,10615,1,'{\"title\":\"welcome_bg_9\"}',0),(10,10279,10253,10257,1402520978278,0,10110,10627,1,'{\"title\":\"welcome_bg_1\"}',0),(11,10279,10253,10257,1402520978753,0,10110,10639,1,'{\"title\":\"welcome_bg_4\"}',0),(12,10279,10253,10257,1402520978810,0,10110,10651,1,'{\"title\":\"welcome_bg_8\"}',0),(13,10279,10253,10257,1402520978865,0,10110,10663,1,'{\"title\":\"welcome_bg_6\"}',0);
/*!40000 ALTER TABLE `SocialActivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivityAchievement`
--

DROP TABLE IF EXISTS `SocialActivityAchievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivityAchievement` (
  `activityAchievementId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `firstInGroup` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityAchievementId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivityAchievement`
--

LOCK TABLES `SocialActivityAchievement` WRITE;
/*!40000 ALTER TABLE `SocialActivityAchievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityAchievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivityCounter`
--

DROP TABLE IF EXISTS `SocialActivityCounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivityCounter` (
  `activityCounterId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `currentValue` int(11) DEFAULT NULL,
  `totalValue` int(11) DEFAULT NULL,
  `graceValue` int(11) DEFAULT NULL,
  `startPeriod` int(11) DEFAULT NULL,
  `endPeriod` int(11) DEFAULT NULL,
  PRIMARY KEY (`activityCounterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivityCounter`
--

LOCK TABLES `SocialActivityCounter` WRITE;
/*!40000 ALTER TABLE `SocialActivityCounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityCounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivityLimit`
--

DROP TABLE IF EXISTS `SocialActivityLimit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivityLimit` (
  `activityLimitId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `activityCounterName` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`activityLimitId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivityLimit`
--

LOCK TABLES `SocialActivityLimit` WRITE;
/*!40000 ALTER TABLE `SocialActivityLimit` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityLimit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivitySetting`
--

DROP TABLE IF EXISTS `SocialActivitySetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivitySetting` (
  `activitySettingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`activitySettingId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivitySetting`
--

LOCK TABLES `SocialActivitySetting` WRITE;
/*!40000 ALTER TABLE `SocialActivitySetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivitySetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialRelation`
--

DROP TABLE IF EXISTS `SocialRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialRelation` (
  `uuid_` varchar(75) DEFAULT NULL,
  `relationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `userId1` bigint(20) DEFAULT NULL,
  `userId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`relationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialRelation`
--

LOCK TABLES `SocialRelation` WRITE;
/*!40000 ALTER TABLE `SocialRelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialRelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialRequest`
--

DROP TABLE IF EXISTS `SocialRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialRequest` (
  `uuid_` varchar(75) DEFAULT NULL,
  `requestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`requestId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialRequest`
--

LOCK TABLES `SocialRequest` WRITE;
/*!40000 ALTER TABLE `SocialRequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscription`
--

DROP TABLE IF EXISTS `Subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subscription` (
  `subscriptionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `frequency` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`subscriptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscription`
--

LOCK TABLES `Subscription` WRITE;
/*!40000 ALTER TABLE `Subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `Subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Team`
--

DROP TABLE IF EXISTS `Team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Team` (
  `teamId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`teamId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Team`
--

LOCK TABLES `Team` WRITE;
/*!40000 ALTER TABLE `Team` DISABLE KEYS */;
/*!40000 ALTER TABLE `Team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ticket`
--

DROP TABLE IF EXISTS `Ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ticket` (
  `ticketId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraInfo` longtext,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ticketId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ticket`
--

LOCK TABLES `Ticket` WRITE;
/*!40000 ALTER TABLE `Ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroup`
--

DROP TABLE IF EXISTS `UserGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroup` (
  `userGroupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `parentUserGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `addedByLDAPImport` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroup`
--

LOCK TABLES `UserGroup` WRITE;
/*!40000 ALTER TABLE `UserGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroupGroupRole`
--

DROP TABLE IF EXISTS `UserGroupGroupRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroupGroupRole` (
  `userGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`groupId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroupGroupRole`
--

LOCK TABLES `UserGroupGroupRole` WRITE;
/*!40000 ALTER TABLE `UserGroupGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroupGroupRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroupRole`
--

DROP TABLE IF EXISTS `UserGroupRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroupRole` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`groupId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroupRole`
--

LOCK TABLES `UserGroupRole` WRITE;
/*!40000 ALTER TABLE `UserGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroupRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups_Teams`
--

DROP TABLE IF EXISTS `UserGroups_Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups_Teams` (
  `teamId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups_Teams`
--

LOCK TABLES `UserGroups_Teams` WRITE;
/*!40000 ALTER TABLE `UserGroups_Teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroups_Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserIdMapper`
--

DROP TABLE IF EXISTS `UserIdMapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserIdMapper` (
  `userIdMapperId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `externalUserId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`userIdMapperId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserIdMapper`
--

LOCK TABLES `UserIdMapper` WRITE;
/*!40000 ALTER TABLE `UserIdMapper` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserIdMapper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserNotificationEvent`
--

DROP TABLE IF EXISTS `UserNotificationEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserNotificationEvent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userNotificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `deliverBy` bigint(20) DEFAULT NULL,
  `payload` longtext,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationEventId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserNotificationEvent`
--

LOCK TABLES `UserNotificationEvent` WRITE;
/*!40000 ALTER TABLE `UserNotificationEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserNotificationEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserTracker`
--

DROP TABLE IF EXISTS `UserTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserTracker` (
  `userTrackerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `sessionId` varchar(200) DEFAULT NULL,
  `remoteAddr` varchar(75) DEFAULT NULL,
  `remoteHost` varchar(75) DEFAULT NULL,
  `userAgent` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserTracker`
--

LOCK TABLES `UserTracker` WRITE;
/*!40000 ALTER TABLE `UserTracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserTrackerPath`
--

DROP TABLE IF EXISTS `UserTrackerPath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserTrackerPath` (
  `userTrackerPathId` bigint(20) NOT NULL,
  `userTrackerId` bigint(20) DEFAULT NULL,
  `path_` longtext,
  `pathDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userTrackerPathId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserTrackerPath`
--

LOCK TABLES `UserTrackerPath` WRITE;
/*!40000 ALTER TABLE `UserTrackerPath` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserTrackerPath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_`
--

DROP TABLE IF EXISTS `User_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultUser` tinyint(4) DEFAULT NULL,
  `contactId` bigint(20) DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  `passwordEncrypted` tinyint(4) DEFAULT NULL,
  `passwordReset` tinyint(4) DEFAULT NULL,
  `passwordModifiedDate` datetime DEFAULT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `reminderQueryQuestion` varchar(75) DEFAULT NULL,
  `reminderQueryAnswer` varchar(75) DEFAULT NULL,
  `graceLoginCount` int(11) DEFAULT NULL,
  `screenName` varchar(75) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `facebookId` bigint(20) DEFAULT NULL,
  `openId` varchar(1024) DEFAULT NULL,
  `portraitId` bigint(20) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `greeting` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `loginIP` varchar(75) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginIP` varchar(75) DEFAULT NULL,
  `lastFailedLoginDate` datetime DEFAULT NULL,
  `failedLoginAttempts` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `agreedToTermsOfUse` tinyint(4) DEFAULT NULL,
  `emailAddressVerified` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_`
--

LOCK TABLES `User_` WRITE;
/*!40000 ALTER TABLE `User_` DISABLE KEYS */;
INSERT INTO `User_` VALUES ('c409acf6-fe15-4c6f-b6c3-a6538b915843',10257,10253,'2014-06-11 21:08:26','2014-06-11 21:08:26',1,10258,'password',0,0,NULL,'5533ed38b5e33c076a804bb4bca644f9,7c493c1781eaa795ae648c5dc1d2be70,7c493c1781eaa795ae648c5dc1d2be70','','',0,'10257','default@liferay.com',0,'',0,'es_ES','UTC','Welcome!','','','','','','2014-06-11 21:08:26','',NULL,'',NULL,0,0,NULL,1,0,0),('5442a24f-baec-4bb2-947e-b0075e287cf5',10295,10253,'2014-06-11 21:08:28','2014-06-11 21:08:28',0,10296,'qUqP5cyxm6YcTAhz05Hph5gvu9M=',1,0,NULL,'','','',0,'test','test@liferay.com',0,'',0,'en_US','UTC','Welcome Test Test!','','Test','','Test','','2014-06-11 21:08:28','','2014-06-11 21:08:28','',NULL,0,0,NULL,0,1,5),('32a8f9fd-8d08-46d5-8374-911e031a8fb5',10506,10253,'2014-06-11 21:09:36','2014-06-11 21:09:36',0,10507,'W6ph5Mm5Pz8GgiULbPgzG37mj9g=',1,0,'2014-06-11 21:10:47','0b76f15b0abaf23fc0ed0f153e80b095,0d74134f283c0a02912913353cb775c7,38827acee68170c25ecc23c57a131e16','what-is-your-father\'s-middle-name','Caro',0,'edicsonm','edicsonm@liferay.com',0,'',0,'es_ES','UTC','Bienvenido  Edicson Morales!','','Edicson','','Morales','','2014-08-01 08:24:58','127.0.0.1','2014-07-26 08:40:04','127.0.0.1',NULL,0,0,NULL,1,1,0),('0f948cfd-ed3e-4ff2-8d33-e35e2b60dacf',11203,10253,'2014-06-12 18:22:48','2014-06-12 18:25:36',0,11204,'W6ph5Mm5Pz8GgiULbPgzG37mj9g=',1,0,'2014-06-12 18:26:48','45c1f3cd0ada55d2f1d9e9ba4e92de18,efab3b871a1c4fabb4bf9a1d254bb193,43174a3ea6d1e6bb13fbe858d371c706','what-is-your-father\'s-middle-name','Caro',0,'pepo','pepo@liferay.com',0,'',0,'es_ES','UTC','Bienvenido  Pepo!','','Pepo','','','Pepo App','2014-08-03 02:59:32','127.0.0.1','2014-08-03 01:50:26','127.0.0.1',NULL,0,0,NULL,1,0,0);
/*!40000 ALTER TABLE `User_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Groups`
--

DROP TABLE IF EXISTS `Users_Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Groups` (
  `groupId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Groups`
--

LOCK TABLES `Users_Groups` WRITE;
/*!40000 ALTER TABLE `Users_Groups` DISABLE KEYS */;
INSERT INTO `Users_Groups` VALUES (10279,10295),(10279,10506),(10279,11203);
/*!40000 ALTER TABLE `Users_Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Orgs`
--

DROP TABLE IF EXISTS `Users_Orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Orgs` (
  `organizationId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Orgs`
--

LOCK TABLES `Users_Orgs` WRITE;
/*!40000 ALTER TABLE `Users_Orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_Orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Permissions`
--

DROP TABLE IF EXISTS `Users_Permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Permissions` (
  `permissionId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`permissionId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Permissions`
--

LOCK TABLES `Users_Permissions` WRITE;
/*!40000 ALTER TABLE `Users_Permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_Permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Roles`
--

DROP TABLE IF EXISTS `Users_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Roles` (
  `roleId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Roles`
--

LOCK TABLES `Users_Roles` WRITE;
/*!40000 ALTER TABLE `Users_Roles` DISABLE KEYS */;
INSERT INTO `Users_Roles` VALUES (10260,10295),(10260,10506),(10261,10257),(10263,10295),(10263,10506),(10263,11203),(10264,10295),(10264,10506),(10264,11203);
/*!40000 ALTER TABLE `Users_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Teams`
--

DROP TABLE IF EXISTS `Users_Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Teams` (
  `teamId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Teams`
--

LOCK TABLES `Users_Teams` WRITE;
/*!40000 ALTER TABLE `Users_Teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_UserGroups`
--

DROP TABLE IF EXISTS `Users_UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_UserGroups` (
  `userId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_UserGroups`
--

LOCK TABLES `Users_UserGroups` WRITE;
/*!40000 ALTER TABLE `Users_UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualHost`
--

DROP TABLE IF EXISTS `VirtualHost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualHost` (
  `virtualHostId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `layoutSetId` bigint(20) DEFAULT NULL,
  `hostname` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`virtualHostId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualHost`
--

LOCK TABLES `VirtualHost` WRITE;
/*!40000 ALTER TABLE `VirtualHost` DISABLE KEYS */;
INSERT INTO `VirtualHost` VALUES (10256,10253,0,'localhost');
/*!40000 ALTER TABLE `VirtualHost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WebDAVProps`
--

DROP TABLE IF EXISTS `WebDAVProps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WebDAVProps` (
  `webDavPropsId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `props` longtext,
  PRIMARY KEY (`webDavPropsId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WebDAVProps`
--

LOCK TABLES `WebDAVProps` WRITE;
/*!40000 ALTER TABLE `WebDAVProps` DISABLE KEYS */;
/*!40000 ALTER TABLE `WebDAVProps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website`
--

DROP TABLE IF EXISTS `Website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website` (
  `websiteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `url` longtext,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`websiteId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website`
--

LOCK TABLES `Website` WRITE;
/*!40000 ALTER TABLE `Website` DISABLE KEYS */;
/*!40000 ALTER TABLE `Website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WikiNode`
--

DROP TABLE IF EXISTS `WikiNode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WikiNode` (
  `uuid_` varchar(75) DEFAULT NULL,
  `nodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`nodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WikiNode`
--

LOCK TABLES `WikiNode` WRITE;
/*!40000 ALTER TABLE `WikiNode` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiNode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WikiPage`
--

DROP TABLE IF EXISTS `WikiPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WikiPage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `pageId` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `minorEdit` tinyint(4) DEFAULT NULL,
  `content` longtext,
  `summary` longtext,
  `format` varchar(75) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `parentTitle` varchar(255) DEFAULT NULL,
  `redirectTitle` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WikiPage`
--

LOCK TABLES `WikiPage` WRITE;
/*!40000 ALTER TABLE `WikiPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WikiPageResource`
--

DROP TABLE IF EXISTS `WikiPageResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WikiPageResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WikiPageResource`
--

LOCK TABLES `WikiPageResource` WRITE;
/*!40000 ALTER TABLE `WikiPageResource` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiPageResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowDefinitionLink`
--

DROP TABLE IF EXISTS `WorkflowDefinitionLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowDefinitionLink` (
  `workflowDefinitionLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `workflowDefinitionName` varchar(75) DEFAULT NULL,
  `workflowDefinitionVersion` int(11) DEFAULT NULL,
  PRIMARY KEY (`workflowDefinitionLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowDefinitionLink`
--

LOCK TABLES `WorkflowDefinitionLink` WRITE;
/*!40000 ALTER TABLE `WorkflowDefinitionLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowDefinitionLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowInstanceLink`
--

DROP TABLE IF EXISTS `WorkflowInstanceLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowInstanceLink` (
  `workflowInstanceLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `workflowInstanceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`workflowInstanceLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowInstanceLink`
--

LOCK TABLES `WorkflowInstanceLink` WRITE;
/*!40000 ALTER TABLE `WorkflowInstanceLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowInstanceLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lportal'
--

--
-- Dumping routines for database 'lportal'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-01 20:41:45
