-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sanfermin1
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

USE sanfermin;

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
-- Table structure for table `Botika`
--

DROP TABLE IF EXISTS `Botika`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Botika` (
  `izena` varchar(45) NOT NULL,
  PRIMARY KEY (`izena`),
  UNIQUE KEY `izena_UNIQUE` (`izena`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Botika`
--

LOCK TABLES `Botika` WRITE;
/*!40000 ALTER TABLE `Botika` DISABLE KEYS */;
INSERT INTO `Botika` VALUES ('omeoprazol');
/*!40000 ALTER TABLE `Botika` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bozkaketa`
--

DROP TABLE IF EXISTS `Bozkaketa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bozkaketa` (
  `noiz` date NOT NULL,
  `identifikatzaileEmalea` int(11) NOT NULL,
  `identifikatzaileJasotzailea` int(11) NOT NULL,
  PRIMARY KEY (`identifikatzaileEmalea`,`identifikatzaileJasotzailea`,`noiz`),
  KEY `gan2` (`identifikatzaileJasotzailea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bozkaketa`
--

LOCK TABLES `Bozkaketa` WRITE;
/*!40000 ALTER TABLE `Bozkaketa` DISABLE KEYS */;
INSERT INTO `Bozkaketa` VALUES (5,1,2013-12-21);
/*!40000 ALTER TABLE `Bozkaketa` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `Entzierroa`
--

DROP TABLE IF EXISTS `Entzierroa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Entzierroa` (
  `noiz` date NOT NULL,
  `distantzia` int(11) NOT NULL,
  PRIMARY KEY (`noiz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entzierroa`
--

LOCK TABLES `Entzierroa` WRITE;
/*!40000 ALTER TABLE `Entzierroa` DISABLE KEYS */;
INSERT INTO `Entzierroa` VALUES ('2013-12-21',12);
/*!40000 ALTER TABLE `Entzierroa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ganadutegia`
--

DROP TABLE IF EXISTS `Ganadutegia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ganadutegia` (
  `idGanadutegia` int(11) NOT NULL AUTO_INCREMENT,
  `helbidea` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idGanadutegia`),
  UNIQUE KEY `idGanadutegia_UNIQUE` (`idGanadutegia`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ganadutegia`
--

LOCK TABLES `Ganadutegia` WRITE;
/*!40000 ALTER TABLE `Ganadutegia` DISABLE KEYS */;
INSERT INTO `Ganadutegia` VALUES (1,'Alcurrucen');
/*!40000 ALTER TABLE `Ganadutegia` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `Joalduna`
--

DROP TABLE IF EXISTS `Joalduna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Joalduna` (
  `animaliKodea` int(11) NOT NULL AUTO_INCREMENT,
  `kolorea` varchar(45) NOT NULL,
  `jaiotze-data` date NOT NULL,
  `altuera` int(11) NOT NULL,
  `pisua` int(11) NOT NULL,
  `ganadutegiaId` int(11) NOT NULL,
  PRIMARY KEY (`animaliKodea`),
  UNIQUE KEY `animaliKodea_UNIQUE` (`animaliKodea`),
  KEY `ida` (`ganadutegiaId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Joalduna`
--

LOCK TABLES `Joalduna` WRITE;
/*!40000 ALTER TABLE `Joalduna` DISABLE KEYS */;
INSERT INTO `Joalduna` VALUES (1,'Marroia','2015-01-01',160,550,1),(2,'Marroia','2015-01-01',163,560,2),(3,'Marroia','2015-01-01',165,560,2),(4,'Marroia','2015-01-01',164,550,1),(5,'Marroia','2015-01-01',163,560,3),(6,'Marroia','2015-01-01',162,560,3),(7,'Marroia','2015-01-01',161,550,4),(8,'Marroia','2015-01-01',163,560,2),(9,'Marroia','2015-01-01',164,560,2),(10,'gorria','2015-01-01',120,100,5),(11,'berdea','2015-01-01',120,100,5);
/*!40000 ALTER TABLE `Joalduna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ordezkatu`
--

DROP TABLE IF EXISTS `Ordezkatu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ordezkatu` (
  `animaliOrdezkatzaile` int(11) NOT NULL,
  `animaliOrdezkatua` int(11) NOT NULL,
  PRIMARY KEY (`animaliOrdezkatua`),
  KEY `kod1` (`animaliOrdezkatzaile`),
  KEY `kod2` (`animaliOrdezkatzaile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ordezkatu`
--

LOCK TABLES `Ordezkatu` WRITE;
/*!40000 ALTER TABLE `Ordezkatu` DISABLE KEYS */;
INSERT INTO `Ordezkatu` VALUES (14,3);
/*!40000 ALTER TABLE `Ordezkatu` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `Zezena`
--

DROP TABLE IF EXISTS `Zezena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Zezena` (
  `animaliKodea` int(11) NOT NULL AUTO_INCREMENT,
  `izena` varchar(45) NOT NULL,
  `ganadutegiaId` int(11) NOT NULL,
  `jaiotze-data` date NOT NULL,
  `altuera` int(11) NOT NULL,
  `pisua` int(11) NOT NULL,
  `adarrarenLuzera` int(11) NOT NULL,
  PRIMARY KEY (`animaliKodea`),
  UNIQUE KEY `animaliKodea_UNIQUE` (`animaliKodea`),
  KEY `id` (`ganadutegiaId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zezena`
--

LOCK TABLES `Zezena` WRITE;
/*!40000 ALTER TABLE `Zezena` DISABLE KEYS */;
INSERT INTO `Zezena` VALUES (1,'Raton',1,'2015-01-01',140,450,38),(2,'Potrico',1,'2015-01-01',162,500,45),(3,'Idolico',1,'2015-01-01',153,476,26),(4,'Velador',2,'2015-01-01',151,450,32),(5,'Descarado',2,'2015-01-01',132,420,0),(6,'Desteñido',3,'2015-01-01',165,520,46),(7,'Harinero',3,'2015-01-01',164,500,45),(8,'Palolero',4,'2015-01-01',156,450,32),(9,'Timador',4,'2015-01-01',147,450,35),(10,'Barbero',2,'2015-01-01',163,500,45),(11,'Ollero',4,'2015-01-01',152,476,26),(12,'Melenito',4,'2015-01-01',151,476,26),(13,'Bravio',1,'2015-01-01',156,450,32),(14,'Bragao',1,'2015-01-01',147,450,35),(15,'zezen1',5,'2015-01-01',120,100,25),(16,'zezen2',5,'2015-01-01',120,100,25),(17,'zezen3',5,'2015-01-01',120,100,25),(19,'zezen4',5,'2015-01-01',120,100,25),(20,'zezen1',7,'2015-01-01',120,100,25),(21,'zezen2',7,'2015-01-01',120,100,25),(22,'zezen3',7,'2015-01-01',120,100,25),(23,'zezen4',7,'2015-01-01',120,100,25);
/*!40000 ALTER TABLE `Zezena` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-16  9:47:07
