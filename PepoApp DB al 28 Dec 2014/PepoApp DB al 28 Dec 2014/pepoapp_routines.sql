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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-28  9:52:16
