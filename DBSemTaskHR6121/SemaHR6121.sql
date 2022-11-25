-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: semahr6121
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autobusz`
--

DROP TABLE IF EXISTS `autobusz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `autobusz` (
  `BID` int(5) NOT NULL,
  `rendszam` tinytext DEFAULT NULL,
  `tipus` tinytext DEFAULT NULL,
  `max_hely` int(3) DEFAULT NULL,
  PRIMARY KEY (`BID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autobusz`
--

LOCK TABLES `autobusz` WRITE;
/*!40000 ALTER TABLE `autobusz` DISABLE KEYS */;
INSERT INTO `autobusz` VALUES (1,'AAA-111','Ikarus',40),(2,'BBB-222','Man',45),(3,'CCC-333','Volvo',50),(4,'DDD-444','Ikarus',40),(5,'EEE-555','Ikarus',40),(6,'FFF-666','Ikarus',40),(7,'GGG-777','Volvo',50),(8,'HHH-888','Ikarus',40),(9,'III-999','Man',45),(10,'JJJ-000','Ikarus',40);
/*!40000 ALTER TABLE `autobusz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eszkoz`
--

DROP TABLE IF EXISTS `eszkoz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `eszkoz` (
  `EID` int(5) NOT NULL,
  `termek_szam` int(10) DEFAULT NULL,
  `gyarto` tinytext DEFAULT NULL,
  `hasznalt_evek` int(2) DEFAULT NULL,
  `KID` int(5) DEFAULT NULL,
  PRIMARY KEY (`EID`),
  KEY `KID` (`KID`),
  CONSTRAINT `eszkoz_ibfk_1` FOREIGN KEY (`KID`) REFERENCES `karbantarto` (`KID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eszkoz`
--

LOCK TABLES `eszkoz` WRITE;
/*!40000 ALTER TABLE `eszkoz` DISABLE KEYS */;
INSERT INTO `eszkoz` VALUES (1,42,'Bosch',3,1),(2,97,'Bosch',1,2),(3,55,'Makita',5,3),(4,12,'Bosch',0,4),(5,11,'Bosch',2,5);
/*!40000 ALTER TABLE `eszkoz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `felugyelo`
--

DROP TABLE IF EXISTS `felugyelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `felugyelo` (
  `FID` int(5) NOT NULL,
  `nev` tinytext DEFAULT NULL,
  `SID` int(5) DEFAULT NULL,
  `KID` int(5) DEFAULT NULL,
  `telefonszam` int(15) DEFAULT NULL,
  `email` tinytext DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `SID` (`SID`),
  KEY `KID` (`KID`),
  CONSTRAINT `felugyelo_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `sofor` (`SID`),
  CONSTRAINT `felugyelo_ibfk_2` FOREIGN KEY (`KID`) REFERENCES `karbantarto` (`KID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `felugyelo`
--

LOCK TABLES `felugyelo` WRITE;
/*!40000 ALTER TABLE `felugyelo` DISABLE KEYS */;
INSERT INTO `felugyelo` VALUES (1,'Pataki Csanád',102,4,709876543,'pat.csan@gmail.com'),(2,'Gábor Borbála',104,2,701234567,'gab.bor@gmail.com'),(3,'Szabó Oszkár',103,1,706549876,'szab.osz@gmail.com'),(4,'Hegyi Bora',108,3,701597463,'hegy.bor@gmail.com'),(5,'Nagy Andrea',109,5,709657412,'nagy.and@gmail.com');
/*!40000 ALTER TABLE `felugyelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `halad`
--

DROP TABLE IF EXISTS `halad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `halad` (
  `BID` int(5) DEFAULT NULL,
  `UID` int(5) DEFAULT NULL,
  `menetido` int(3) DEFAULT NULL,
  KEY `BID` (`BID`),
  KEY `UID` (`UID`),
  CONSTRAINT `halad_ibfk_1` FOREIGN KEY (`BID`) REFERENCES `autobusz` (`BID`),
  CONSTRAINT `halad_ibfk_2` FOREIGN KEY (`UID`) REFERENCES `utvonal` (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `halad`
--

LOCK TABLES `halad` WRITE;
/*!40000 ALTER TABLE `halad` DISABLE KEYS */;
INSERT INTO `halad` VALUES (3,2,25),(1,6,26),(7,35,19),(2,3,24),(3,6,21),(9,5,20),(1,35,23);
/*!40000 ALTER TABLE `halad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `karbantarto`
--

DROP TABLE IF EXISTS `karbantarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `karbantarto` (
  `KID` int(5) NOT NULL,
  `javitoi_szam` tinytext DEFAULT NULL,
  `nev` tinytext DEFAULT NULL,
  `BID` int(5) DEFAULT NULL,
  PRIMARY KEY (`KID`),
  KEY `BID` (`BID`),
  CONSTRAINT `karbantarto_ibfk_1` FOREIGN KEY (`BID`) REFERENCES `autobusz` (`BID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `karbantarto`
--

LOCK TABLES `karbantarto` WRITE;
/*!40000 ALTER TABLE `karbantarto` DISABLE KEYS */;
INSERT INTO `karbantarto` VALUES (1,'A0001','Lázár Csilla',4),(2,'B0002','Simka Armand',3),(3,'C0003','Katona József',1),(4,'D0004','Józsa Tünde',8),(5,'E0005','Szöllős Fruzsina',9);
/*!40000 ALTER TABLE `karbantarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sofor`
--

DROP TABLE IF EXISTS `sofor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sofor` (
  `SID` int(5) NOT NULL,
  `jegykiado_szam` tinytext DEFAULT NULL,
  `nev` tinytext DEFAULT NULL,
  `BID` int(5) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `BID` (`BID`),
  CONSTRAINT `sofor_ibfk_1` FOREIGN KEY (`BID`) REFERENCES `autobusz` (`BID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sofor`
--

LOCK TABLES `sofor` WRITE;
/*!40000 ALTER TABLE `sofor` DISABLE KEYS */;
INSERT INTO `sofor` VALUES (100,'A54321','Mejer Dániel',9),(101,'B12345','Galambos Judit',5),(102,'C98765','Benkö Rezső',3),(103,'D56789','Illés Pázmán',8),(104,'E23456','Kuruc Adorjan',1),(105,'F65432','Faragó Keled',2),(106,'G34567','Gáspár Veronika',3),(107,'H76543','Pataky Gitta',4),(108,'I45678','Nagy Borka',6),(109,'J87654','Szöke Csongor',5);
/*!40000 ALTER TABLE `sofor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utvonal`
--

DROP TABLE IF EXISTS `utvonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `utvonal` (
  `UID` int(5) NOT NULL,
  `kezdeti_allomas` tinytext DEFAULT NULL,
  `vegallomas` tinytext DEFAULT NULL,
  `km` int(3) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utvonal`
--

LOCK TABLES `utvonal` WRITE;
/*!40000 ALTER TABLE `utvonal` DISABLE KEYS */;
INSERT INTO `utvonal` VALUES (2,'Búza Tér','Tapolca',8),(3,'Búza Tér','Szirma',9),(5,'Felső-Majláth','Lillafüred',6),(6,'Újgyőri Főtér','Pereces',7),(35,'Avas Kilátó','Centrum',5);
/*!40000 ALTER TABLE `utvonal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-25 18:22:24
