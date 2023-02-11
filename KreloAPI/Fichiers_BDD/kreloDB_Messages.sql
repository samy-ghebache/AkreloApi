-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: kreloDB
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.10.2

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
-- Table structure for table `Messages`
--

DROP TABLE IF EXISTS `Messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `annonce_id` int DEFAULT NULL,
  `utilisateur_id` int DEFAULT NULL,
  `body` text NOT NULL,
  `dateEnvoi` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `annonce_id` (`annonce_id`),
  KEY `utilisateur_id` (`utilisateur_id`),
  CONSTRAINT `Messages_ibfk_1` FOREIGN KEY (`annonce_id`) REFERENCES `Annonces` (`id`),
  CONSTRAINT `Messages_ibfk_2` FOREIGN KEY (`utilisateur_id`) REFERENCES `Utilisateurs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Messages`
--

LOCK TABLES `Messages` WRITE;
/*!40000 ALTER TABLE `Messages` DISABLE KEYS */;
INSERT INTO `Messages` VALUES (1,3,6,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09'),(2,3,6,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09'),(3,4,6,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09'),(4,4,6,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09'),(5,5,7,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09'),(6,5,7,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09'),(7,6,7,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09'),(8,6,7,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09'),(9,7,8,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09'),(10,7,8,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09'),(11,8,8,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09'),(12,8,8,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09'),(13,9,9,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09'),(14,9,9,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09'),(15,10,9,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09'),(16,10,9,'Hello I want this item !\ntesttesttesttesttesttesttesttesttesttesttesttesttesttesttest','2023-02-09');
/*!40000 ALTER TABLE `Messages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-09  1:05:12
