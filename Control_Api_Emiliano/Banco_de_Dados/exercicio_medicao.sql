CREATE DATABASE  IF NOT EXISTS `exercicio` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `exercicio`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: exercicio
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `medicao`
--

DROP TABLE IF EXISTS `medicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicao` (
  `codSensor` decimal(4,0) NOT NULL,
  `dataMedicao` varchar(10) NOT NULL,
  `horaMedicao` varchar(4) NOT NULL,
  `valorMedicao` decimal(10,2) NOT NULL,
  `idMedicao` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idMedicao`),
  UNIQUE KEY `indx_medicao` (`dataMedicao`,`horaMedicao`,`valorMedicao`),
  KEY `fk_sensor` (`codSensor`),
  CONSTRAINT `fk_sensor` FOREIGN KEY (`codSensor`) REFERENCES `sensor` (`codSensor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicao`
--

LOCK TABLES `medicao` WRITE;
/*!40000 ALTER TABLE `medicao` DISABLE KEYS */;
INSERT INTO `medicao` VALUES (1,'2025-04-28','0920',2.30,1),(1,'2025-04-28','0925',2.60,2),(2,'2025-04-28','0920',2.40,3),(2,'2025-04-28','0925',2.20,4);
/*!40000 ALTER TABLE `medicao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-16 16:38:16
