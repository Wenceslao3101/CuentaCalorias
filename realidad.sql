CREATE DATABASE  IF NOT EXISTS `realidad` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `realidad`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: realidad
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `privilegio`
--

DROP TABLE IF EXISTS `privilegio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilegio` (
  `cve_pri` int(10) unsigned NOT NULL,
  `des_pri` varchar(45) NOT NULL,
  PRIMARY KEY (`cve_pri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilegio`
--

LOCK TABLES `privilegio` WRITE;
/*!40000 ALTER TABLE `privilegio` DISABLE KEYS */;
INSERT INTO `privilegio` VALUES (1,'Profesor'),(2,'Alumno'),(3,'Administrador');
/*!40000 ALTER TABLE `privilegio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `Id_usu` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(45) NOT NULL,
  `nom_per` varchar(45) NOT NULL,
  `app_per` varchar(45) NOT NULL,
  `apm_per` varchar(45) NOT NULL,
  `cor_person` varchar(45) NOT NULL,
  `con_usu` varchar(45) NOT NULL,
  `cve_pri` int(10) unsigned NOT NULL,
  `cal_usu` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id_usu`),
  KEY `cve_pri_idx` (`cve_pri`),
  CONSTRAINT `cve_pri` FOREIGN KEY (`cve_pri`) REFERENCES `privilegio` (`cve_pri`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

CREATE TABLE `video` (
  `Id_vid` varchar(40) NOT NULL ,
  `videoName` varchar(45) NOT NULL,
  `videoPostDate` DATETIME NOT NULL,
  `User_idUser` int(11) NOT NULL,
  
  PRIMARY KEY (`Id_vid`),
  CONSTRAINT `fk_Videos`
    FOREIGN KEY (`User_idUser`)
    REFERENCES `realidad`.`usuario` (`Id_usu`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'cesar','Cesar','Monroy','Perez','payo_monroy@live.com.mx','masiel',1,NULL),(3,'autentico','Cesar','Monroy','Perez','payo_monroy@live.com.mx','masiel',3,NULL),(4,'holis','dbsJSRvFCPf6LAgm/zEvaQ==','nGviAlI3VGPmHir9bwi0AA==','azOd/VtiP1+JbNILsq5Meg==','payo_monroy@live.com.mx','Ma9d+27ze6ETWOw/qx/NjA==',1,NULL),(5,'adriana','vVcjo8ZZg79Hb9aFAQHjSQ==','azOd/VtiP1+JbNILsq5Meg==','2XGYw33+w0jcdmu3Y3MpKA==','adriana@hotmail.com','Ma9d+27ze6ETWOw/qx/NjA==',2,NULL),(7,'carlitos','dbsJSRvFCPf6LAgm/zEvaQ==','nGviAlI3VGPmHir9bwi0AA==','azOd/VtiP1+JbNILsq5Meg==','payo_monroy@live.com.mx','tXFqyKae5bg6DwE0k1nDTA==',1,NULL),(8,'mat','3lyi9LUutVMlZ39YX+Qmgg==','XhIezEhXtpjm7eHq1/xuBQ==','am08MolPBcpFH3djmhxTRA==','mario_monroy2206@yahoo.co','5QDhWzuaAgvIdoQmsx/OJw==',2,NULL),(13,'max','3lyi9LUutVMlZ39YX+Qmgg==','XhIezEhXtpjm7eHq1/xuBQ==','am08MolPBcpFH3djmhxTRA==','payo_monroy@live.com.mx','5QDhWzuaAgvIdoQmsx/OJw==',1,NULL),(14,'rawwm','A+qDrJgBwjHfAlus64h/SQ==','SmtPelM6CwNw4/g1i7xw5A==','JU0CCv6M7jil+qevJpqhDw==','payo_monroy@live.com.mx','fShQ63QTi09N2CTBlhg5qg==',1,NULL),(15,'papy','dbsJSRvFCPf6LAgm/zEvaQ==','SmtPelM6CwNw4/g1i7xw5A==','JU0CCv6M7jil+qevJpqhDw==','payo_monroy@live.com.mx','gHot2TRDDs1iO/zOLC/RLQ==',1,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-06  0:02:08
