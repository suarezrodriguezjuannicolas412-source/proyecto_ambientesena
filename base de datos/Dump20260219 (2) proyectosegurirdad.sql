-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: pruebas
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `ciudad1`
--

DROP TABLE IF EXISTS `ciudad1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad1` (
  `nombre` varchar(20) NOT NULL,
  `poblacion` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad1`
--

LOCK TABLES `ciudad1` WRITE;
/*!40000 ALTER TABLE `ciudad1` DISABLE KEYS */;
INSERT INTO `ciudad1` VALUES ('Ibague',NULL);
/*!40000 ALTER TABLE `ciudad1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad2`
--

DROP TABLE IF EXISTS `ciudad2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad2` (
  `nombre` varchar(20) NOT NULL,
  `poblacion` int DEFAULT '50000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad2`
--

LOCK TABLES `ciudad2` WRITE;
/*!40000 ALTER TABLE `ciudad2` DISABLE KEYS */;
INSERT INTO `ciudad2` VALUES ('Ibague',50000);
/*!40000 ALTER TABLE `ciudad2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad3`
--

DROP TABLE IF EXISTS `ciudad3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad3` (
  `nombre` varchar(20) NOT NULL,
  `poblacion` int DEFAULT '50000',
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad3`
--

LOCK TABLES `ciudad3` WRITE;
/*!40000 ALTER TABLE `ciudad3` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciudad3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad4`
--

DROP TABLE IF EXISTS `ciudad4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad4` (
  `clave` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `poblacion` int DEFAULT '50000',
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad4`
--

LOCK TABLES `ciudad4` WRITE;
/*!40000 ALTER TABLE `ciudad4` DISABLE KEYS */;
INSERT INTO `ciudad4` VALUES (1,'Cartagena',127000),(2,'Barranquilla',1200000);
/*!40000 ALTER TABLE `ciudad4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad6`
--

DROP TABLE IF EXISTS `ciudad6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad6` (
  `nombre` varchar(20) NOT NULL,
  `poblacion` int DEFAULT '40000',
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad6`
--

LOCK TABLES `ciudad6` WRITE;
/*!40000 ALTER TABLE `ciudad6` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciudad6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indices1`
--

DROP TABLE IF EXISTS `indices1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indices1` (
  `id` int DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indices1`
--

LOCK TABLES `indices1` WRITE;
/*!40000 ALTER TABLE `indices1` DISABLE KEYS */;
/*!40000 ALTER TABLE `indices1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indices2`
--

DROP TABLE IF EXISTS `indices2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indices2` (
  `id` int DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indices2`
--

LOCK TABLES `indices2` WRITE;
/*!40000 ALTER TABLE `indices2` DISABLE KEYS */;
/*!40000 ALTER TABLE `indices2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indices3`
--

DROP TABLE IF EXISTS `indices3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indices3` (
  `id` int DEFAULT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indices3`
--

LOCK TABLES `indices3` WRITE;
/*!40000 ALTER TABLE `indices3` DISABLE KEYS */;
INSERT INTO `indices3` VALUES (NULL,'Pepito');
/*!40000 ALTER TABLE `indices3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona3`
--

DROP TABLE IF EXISTS `persona3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona3` (
  `id_persona` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `edad` int DEFAULT NULL,
  PRIMARY KEY (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona3`
--

LOCK TABLES `persona3` WRITE;
/*!40000 ALTER TABLE `persona3` DISABLE KEYS */;
INSERT INTO `persona3` VALUES (1,'Fulanito','2021-06-09',30),(2,'Menganito','1985-10-15',20),(3,'Tulanito','2021-06-23',35),(4,'Miguelito','1985-10-15',20),(5,'nombre actualizado','1985-10-15',20),(6,'Pepito Perez','1985-10-15',20),(7,'Jose Luis','1985-10-15',25),(8,'Maria Jose','1985-10-15',20),(9,'Shakir','1985-10-15',20),(10,'Alberto','1967-02-20',30),(11,'Bernardo','1967-02-20',30),(12,'Carlos','1967-02-20',30),(13,'Dionicio','1967-02-20',30),(14,'Diomedes','1967-02-20',30),(15,'Ernesto','1967-02-20',30);
/*!40000 ALTER TABLE `persona3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id_personas` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_personas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'Pedro','2000-01-25'),(2,'Maria','2000-01-25');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonos2`
--

DROP TABLE IF EXISTS `telefonos2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonos2` (
  `persona_id` int NOT NULL,
  `numero` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  PRIMARY KEY (`numero`),
  KEY `persona_id` (`persona_id`),
  CONSTRAINT `telefonos2_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id_personas`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonos2`
--

LOCK TABLES `telefonos2` WRITE;
/*!40000 ALTER TABLE `telefonos2` DISABLE KEYS */;
INSERT INTO `telefonos2` VALUES (1,'3001002001','fijo'),(1,'3001002002','fijo'),(1,'3001002003','celular'),(2,'3001002004','celular'),(2,'3001002005','fijo');
/*!40000 ALTER TABLE `telefonos2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonos3`
--

DROP TABLE IF EXISTS `telefonos3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonos3` (
  `numero` varchar(20) DEFAULT NULL,
  `persona_id` int NOT NULL,
  KEY `numero` (`numero`),
  KEY `persona_id` (`persona_id`),
  CONSTRAINT `telefonos3_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `persona3` (`id_persona`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonos3`
--

LOCK TABLES `telefonos3` WRITE;
/*!40000 ALTER TABLE `telefonos3` DISABLE KEYS */;
INSERT INTO `telefonos3` VALUES ('322479354',1),('3143543534',2),('311813343',3),('3105224376',4),('321235465',4),('30598346',3);
/*!40000 ALTER TABLE `telefonos3` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16  9:44:18
