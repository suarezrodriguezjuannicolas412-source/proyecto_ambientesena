-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: pruebamvc
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
-- Table structure for table `ambientes`
--

DROP TABLE IF EXISTS `ambientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ambientes` (
  `id_ambiente` int NOT NULL AUTO_INCREMENT,
  `nombre_ambiente` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tipo_ambiente` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `observaciones` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_ambiente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ambientes`
--

LOCK TABLES `ambientes` WRITE;
/*!40000 ALTER TABLE `ambientes` DISABLE KEYS */;
INSERT INTO `ambientes` VALUES (1,'Ambiente 504','Sistemas','Computadoras Fuertes'),(2,'Ambiente 450','Sistemas','Computadoras Especiales'),(3,'Ambiente 412','Laboratorio','Experimentos Nuevos'),(4,'Ambiente 114','Biblioteca-1','Libros'),(5,'Ambiente 609','Biblioteca-2','Libros'),(6,'Ambiente 313','Medio Ambiental','Ecologia Universal');
/*!40000 ALTER TABLE `ambientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `password` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `intentos` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Pedro','pedro@gmail.com','123456',2),(3,'Maria Jose','majo@hotmail.com','321',0),(8,'Daniela','daniela@gmail.com','123',2),(10,'Juan Suarez','juansuarez@gmail.com','845',0),(11,'Jackson Cantor','jacksoncantor@gmail.com','$2a$07$asxx54ahjppf45sd87a5au9ewVMTaR4vtoO/byonukbTMWoEhY5gu',0),(12,'Guillermo Orjuela','guillermoorjuela@gmail.com','9428',0),(15,'Jeisonjimenez','jeisonjimenez@gmail.com','$2a$07$asxx54ahjppf45sd87a5aureTtxUXBDmh2X6/f2..DSshHOLCHD3O',0),(16,'Benavides','benavides@gmail.com','$2a$07$asxx54ahjppf45sd87a5aureTtxUXBDmh2X6/f2..DSshHOLCHD3O',0),(17,'Sofia','sofia123@gmail.com','$2a$07$asxx54ahjppf45sd87a5auxX9WRmhYe69XMj9LGnOrtdmXpAu0ufC',0);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16  9:44:00
