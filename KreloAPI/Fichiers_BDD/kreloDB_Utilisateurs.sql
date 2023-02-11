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
-- Table structure for table `Utilisateurs`
--

DROP TABLE IF EXISTS `Utilisateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Utilisateurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `adresse` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Utilisateurs`
--

LOCK TABLES `Utilisateurs` WRITE;
/*!40000 ALTER TABLE `Utilisateurs` DISABLE KEYS */;
INSERT INTO `Utilisateurs` VALUES (1,'s_batata@esi.dz',1,'Batata','Sofiane','0777777777','This is an adress'),(2,'s_laoudi@esi.dz',1,'Laoudi','Soraya','0777777777','This is an adress'),(3,'l_yessad@esi.dz',1,'Yessad','Lamia','0777777777','This is an adress'),(4,'km_rezazi@esi.dz',1,'Rezazi','Abdessamed Mohammed','0705698004','This is an adress'),(5,'ka_dandani@esi.dz',1,'Dandani','Abderraouf','0561806778','Babezzouar,Alger'),(6,'user0@gmail.com',0,'nom 0','prenom 0','0659856856','This is an adress'),(7,'user1@gmail.com',0,'nom 1','prenom 1','0659856856','This is an adress'),(8,'user2@gmail.com',0,'nom 2','prenom 2','0659856856','This is an adress'),(9,'user3@gmail.com',0,'nom 3','prenom 3','0659856856','This is an adress'),(10,'user4@gmail.com',0,'nom 4','prenom 4','0659856856','This is an adress');
/*!40000 ALTER TABLE `Utilisateurs` ENABLE KEYS */;
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
