-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: gwwb
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal` (
  `Animal_Id` int NOT NULL AUTO_INCREMENT,
  `Animal_Name` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Year_of_Arrival` year DEFAULT NULL,
  `Species_Species_Id` int NOT NULL,
  `Keeper_Keeper_Id` int NOT NULL,
  `Enclosures_Enclosure_Id` int NOT NULL,
  `Diet_Diet_Id` int NOT NULL,
  PRIMARY KEY (`Animal_Id`,`Species_Species_Id`,`Keeper_Keeper_Id`,`Enclosures_Enclosure_Id`,`Diet_Diet_Id`),
  KEY `fk_Animal_Species_idx` (`Species_Species_Id`),
  KEY `fk_Animal_Keeper1_idx` (`Keeper_Keeper_Id`),
  KEY `fk_Animal_Enclosures1_idx` (`Enclosures_Enclosure_Id`),
  KEY `fk_Animal_Diet1_idx` (`Diet_Diet_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diet`
--

DROP TABLE IF EXISTS `diet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diet` (
  `Diet_Id` int NOT NULL AUTO_INCREMENT,
  `Diet_Type` varchar(45) DEFAULT NULL,
  `No_of_feed` int DEFAULT NULL,
  PRIMARY KEY (`Diet_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diet`
--

LOCK TABLES `diet` WRITE;
/*!40000 ALTER TABLE `diet` DISABLE KEYS */;
INSERT INTO `diet` VALUES (3,'Light Weight',3);
/*!40000 ALTER TABLE `diet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enclosures`
--

DROP TABLE IF EXISTS `enclosures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enclosures` (
  `Enclosure_Id` int NOT NULL AUTO_INCREMENT,
  `Enclosure_Type` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Enclosure_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enclosures`
--

LOCK TABLES `enclosures` WRITE;
/*!40000 ALTER TABLE `enclosures` DISABLE KEYS */;
/*!40000 ALTER TABLE `enclosures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keeper`
--

DROP TABLE IF EXISTS `keeper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keeper` (
  `Keeper_Id` int NOT NULL AUTO_INCREMENT,
  `Keeper_Name` varchar(45) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Rank` int DEFAULT NULL,
  PRIMARY KEY (`Keeper_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keeper`
--

LOCK TABLES `keeper` WRITE;
/*!40000 ALTER TABLE `keeper` DISABLE KEYS */;
/*!40000 ALTER TABLE `keeper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `species`
--

DROP TABLE IF EXISTS `species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `species` (
  `Species_Id` int NOT NULL AUTO_INCREMENT,
  `Species_Type` varchar(45) DEFAULT NULL,
  `Species_Group` varchar(45) DEFAULT NULL,
  `Lifestyle` varchar(45) DEFAULT NULL,
  `Conservation_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Species_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species`
--

LOCK TABLES `species` WRITE;
/*!40000 ALTER TABLE `species` DISABLE KEYS */;
/*!40000 ALTER TABLE `species` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-18 14:33:13
