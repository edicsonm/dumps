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
-- Table structure for table `SyncDLObject`
--

DROP TABLE IF EXISTS `SyncDLObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SyncDLObject` (
  `objectId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  `modifiedTime` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `checksum` varchar(75) DEFAULT NULL,
  `event` varchar(75) DEFAULT NULL,
  `lockExpirationDate` datetime DEFAULT NULL,
  `lockUserId` bigint(20) DEFAULT NULL,
  `lockUserName` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `typeUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`objectId`),
  UNIQUE KEY `IX_69ADEDD1` (`typePK`),
  KEY `IX_7F996123` (`companyId`,`modifiedTime`,`repositoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SyncDLObject`
--

LOCK TABLES `SyncDLObject` WRITE;
/*!40000 ALTER TABLE `SyncDLObject` DISABLE KEYS */;
INSERT INTO `SyncDLObject` VALUES (11341,10155,1425629736496,1425630844198,10182,0,'','','','','','','',0,'','delete',NULL,0,'','file',11323,'ce45a6c5-5a5c-4b3f-8324-1ef02ad53e7f'),(11343,10155,1425629736720,1425630845061,10182,0,'','','','','','','',0,'','delete',NULL,0,'','file',11333,'05092e0d-42e6-4a81-bdb9-5432b0b36ef9'),(11354,10155,1425629736786,1425630845271,10182,0,'','','','','','','',0,'','delete',NULL,0,'','file',11344,'39aad4dc-95f4-4d15-b9b8-e49ed948ee7f'),(11367,10155,1425629736847,1425630845480,10182,0,'','','','','','','',0,'','delete',NULL,0,'','file',11355,'c6d2a363-44fe-4181-9061-2f36f7a867db'),(11377,10155,1425629736966,1425630845695,10182,0,'','','','','','','',0,'','delete',NULL,0,'','file',11368,'8bd88d06-9df4-4a09-9f16-f20b79d6037f'),(11391,10155,1425629737943,1425630845855,10182,0,'','','','','','','',0,'','delete',NULL,0,'','file',11378,'44d21a8d-d8b9-4b47-a24b-8b67b4941fed'),(11580,10155,1425630846988,1425675380517,10182,0,'','','','','','','',0,'','delete',NULL,0,'','file',11569,'bf3c95c5-2cd1-46e9-87e5-3537dfbc3b87'),(11589,10155,1425630847588,1425675381349,10182,0,'','','','','','','',0,'','delete',NULL,0,'','file',11578,'f1ef7997-58ec-4eed-a86a-df3013669bfe'),(11606,10155,1425630847840,1425675381590,10182,0,'','','','','','','',0,'','delete',NULL,0,'','file',11590,'37a6846c-897c-4fe9-9b15-5add7d76f25b'),(11620,10155,1425630848070,1425675381728,10182,0,'','','','','','','',0,'','delete',NULL,0,'','file',11607,'6196073a-63c8-495b-b28c-963e38b4972e'),(11634,10155,1425630848234,1425675381944,10182,0,'','','','','','','',0,'','delete',NULL,0,'','file',11624,'2b9b3df6-cc15-4d20-8a0f-a2efda00acd7'),(11648,10155,1425630849795,1425675382043,10182,0,'','','','','','','',0,'','delete',NULL,0,'','file',11635,'2164a055-2516-4746-a00c-6fd0a4f1cefc'),(11878,10155,1425675382700,1425675382700,10182,0,'welcome_cube','png','image/png','','','','1.0',452,'u7ezbZ5yW4ulWfonrR5PWzJicp4=','add',NULL,0,'','file',11869,'ec183d4c-447f-48e8-a9fd-8e1377403008'),(11893,10155,1425675383298,1425675383298,10182,0,'welcome_ee','png','image/png','','','','1.0',218,'bAZ1F0qHRb1PCB42YiADy/l4ABI=','add',NULL,0,'','file',11879,'8b7ff91a-44c7-4e68-b78a-109534f96cfb'),(11906,10155,1425675383542,1425675383542,10182,0,'welcome_community','png','image/png','','','','1.0',435,'MRLiI1X3aES3j3bNEXOaoJK6CbA=','add',NULL,0,'','file',11894,'a08b6439-3927-48f2-b5cd-5b1985fa7575'),(11921,10155,1425675383895,1425675383895,10182,0,'welcome_learn','png','image/png','','','','1.0',565,'VN9lePxKZwl+N76+bzYB4oeMgg4=','add',NULL,0,'','file',11907,'6f450206-1ad3-4a73-9642-1035bca2085a'),(11934,10155,1425675384120,1425675384120,10182,0,'helpful_links_for_using_liferay_portal','pdf','application/pdf','','','','1.0',148065,'UMErxgdyPxLp8QXdkDJ75XNBbWA=','add',NULL,0,'','file',11925,'cc8a54b6-c48c-4c84-a218-e9b0f97f6e9c'),(11948,10155,1425675385262,1425675385262,10182,0,'welcome_tools','png','image/png','','','','1.0',528,'M0/IPjARFwXLT/FpD6vPuE+zotA=','add',NULL,0,'','file',11935,'82b5641e-fb0f-494a-8c74-9054265a1e72');
/*!40000 ALTER TABLE `SyncDLObject` ENABLE KEYS */;
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
