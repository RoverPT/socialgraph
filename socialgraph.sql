CREATE DATABASE  IF NOT EXISTS `socialgraph` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `socialgraph`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: socialgraph
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `citie_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Dublin'),(2,'New York'),(3,'Paris'),(4,'Madrid'),(5,'London'),(6,'Barcelona'),(7,'Moscow'),(8,'Chicago');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connections`
--

DROP TABLE IF EXISTS `connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `connections` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `id_user_1` int DEFAULT NULL,
  `id_user_2` int DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connections`
--

LOCK TABLES `connections` WRITE;
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
INSERT INTO `connections` VALUES (1,1,2),(2,2,1),(3,2,3),(4,3,2),(5,3,4),(6,3,5),(7,3,7),(8,4,3),(9,5,3),(10,5,6),(11,5,11),(12,5,10),(13,5,7),(14,6,5),(15,7,3),(16,7,5),(17,7,20),(18,7,12),(19,7,8),(20,8,7),(21,9,12),(22,10,5),(23,10,11),(24,11,5),(25,11,10),(26,11,19),(27,11,20),(28,12,7),(29,12,9),(30,12,13),(31,12,20),(32,13,12),(33,13,14),(34,13,20),(35,14,13),(36,14,15),(37,15,14),(38,16,18),(39,16,20),(40,17,18),(41,17,20),(42,18,17),(43,19,11),(44,19,20),(45,20,7),(46,20,11),(47,20,12),(48,20,13),(49,20,16),(50,20,17),(51,20,19);
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel`
--

DROP TABLE IF EXISTS `travel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `id_citie` int DEFAULT NULL,
  `percent` float DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel`
--

LOCK TABLES `travel` WRITE;
/*!40000 ALTER TABLE `travel` DISABLE KEYS */;
INSERT INTO `travel` VALUES (1,1,1,80),(2,1,2,100),(3,1,3,95),(4,1,4,100),(5,1,5,80),(6,1,6,100),(7,1,7,20),(8,2,1,40),(9,2,2,100),(10,2,3,65),(11,2,4,90),(12,3,3,90),(13,3,4,40),(14,3,5,85),(15,3,6,90),(16,3,7,80),(17,4,3,80),(18,4,4,80),(19,4,5,80),(20,4,6,80),(21,4,7,40),(22,5,1,60),(23,5,2,100),(24,5,3,75),(25,6,5,80),(26,7,2,100),(27,7,8,70),(28,8,8,70),(29,8,1,80),(30,9,8,70),(31,10,3,95),(32,10,6,80),(33,10,7,100),(34,11,1,75),(35,11,8,60),(36,11,7,70),(37,12,1,75),(38,12,7,75),(39,13,1,80),(40,14,1,80),(41,14,2,90),(42,14,7,50),(43,16,3,95),(44,16,8,80),(45,16,7,20),(46,17,7,30),(47,18,8,30),(48,19,8,40),(49,20,1,90),(50,20,5,90);
/*!40000 ALTER TABLE `travel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `_id` int NOT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `surname` varchar(200) DEFAULT NULL,
  `age` varchar(200) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Paul','Crowe','28','male'),(2,'Rob','Fitz','23','male'),(3,'Ben','O\'Carolan',NULL,'male'),(4,'Victor',NULL,'28','male'),(5,'Peter','Mac','29','male'),(6,'John','Barry','18','male'),(7,'Sarah','Lane','30','female'),(8,'Susan','Downe','28','female'),(9,'Jack','Stam','28','male'),(10,'Amy','Lane','24','female'),(11,'Sandra','Phelan','28','female'),(12,'Laura','Murphy','33','female'),(13,'Lisa','Daly','28','female'),(14,'Mark','Johnson','28','male'),(15,'Seamus','Crowe','24','male'),(16,'Daren','Slater','28','male'),(17,'Dara','Zoltan','48','male'),(18,'Marie','D','28','female'),(19,'Catriona','Long','28','female'),(20,'Katy','Couch','28','female');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-11 20:49:16
