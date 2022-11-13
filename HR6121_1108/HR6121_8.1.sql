-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: webalk
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auto`
--

DROP TABLE IF EXISTS `auto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto` (
  `Rendszam` char(7) NOT NULL,
  `Tipus` varchar(25) NOT NULL,
  `Szin` varchar(15) DEFAULT NULL,
  `Kor` int(2) DEFAULT NULL,
  `Ar` int(8) DEFAULT NULL,
  `Tulaj` int(3) DEFAULT NULL,
  PRIMARY KEY (`Rendszam`),
  KEY `Tulaj` (`Tulaj`),
  CONSTRAINT `auto_ibfk_1` FOREIGN KEY (`Tulaj`) REFERENCES `tulajdonos` (`Tkod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto`
--

LOCK TABLES `auto` WRITE;
/*!40000 ALTER TABLE `auto` DISABLE KEYS */;
INSERT INTO `auto` VALUES ('FER-831','Opel Corsa','Piros',18,390,101),('GDF-525','Renault Twingo','Fekete',16,280,NULL),('HUB-936','Suzuki Swift','Fekete',16,500,NULL),('IXL-239','Suzuki Swift','Zöld',15,450,105),('JAH-425','Skoda Fabia','Piros',13,620,102),('JCD-443','Opel Astra','Fehér',12,990,107),('KAP-290','BMW 316','Fekete',6,3250,102),('KFT-204','Opel Astra','Szürke',7,1250,106),('MLM-211','Toyota Yaris','Fehér',3,1850,105);
/*!40000 ALTER TABLE `auto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tulajdonos`
--

DROP TABLE IF EXISTS `tulajdonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tulajdonos` (
  `Tkod` int(3) NOT NULL AUTO_INCREMENT,
  `Nev` varchar(20) NOT NULL,
  `Varos` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Tkod`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tulajdonos`
--

LOCK TABLES `tulajdonos` WRITE;
/*!40000 ALTER TABLE `tulajdonos` DISABLE KEYS */;
INSERT INTO `tulajdonos` VALUES (101,'Kis János','Miskolc'),(102,'Kis Éva','Szerencs'),(103,'Retek Ödön','Miskolc'),(104,'Virág Zoltán','Nyék'),(105,'Nagy Eszter','Nyék'),(106,'Kovács Magor','Szerencs'),(107,'Asztal Antal','Miskolc');
/*!40000 ALTER TABLE `tulajdonos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-13 22:14:27
