CREATE DATABASE  IF NOT EXISTS `notas_tp_db` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `notas_tp_db`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: notas_tp_db
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Comedy'),(2,'Drama|Horror'),(3,'Western'),(4,'Drama'),(5,'Adventure|Drama'),(6,'Drama|War'),(7,'Drama|Horror|Thriller'),(8,'Action'),(9,'Drama|War'),(10,'Comedy|Western');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `eliminar` tinyint NOT NULL,
  `Usuarios_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Notas_Usuarios1_idx` (`Usuarios_id`),
  CONSTRAINT `fk_Notas_Usuarios1` FOREIGN KEY (`Usuarios_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'The Squeeze','Other iridectomy','2021-07-09','2021-03-13',1,1),(2,'Chang: A Drama of the Wilderness','Other arthrotomy, hand and finger','2020-11-03','2020-11-20',1,2),(3,'Charlotte Sometimes','Other radiotherapeutic procedure','2021-01-24','2021-05-22',0,3),(4,'Book of Love','Spinal tap','2020-10-16','2020-09-11',0,4),(5,'Rapa Nui','Other incision of other bile duct','2021-01-08','2021-04-23',1,5),(6,'One Sunday Afternoon','Anastomosis of gallbladder to pancreas','2021-05-21','2020-10-21',1,6),(7,'The \'High Sign\'','Microscopic examination of specimen from bladder, urethra, prostate, seminal vesicle, perivesical tissue, and of urine and semen, cell block and Papanicolaou smear','2020-09-10','2021-01-01',0,7),(8,'Sherlock Holmes in Washington','Intrathoracic esophageal anastomosis with interposition of colon','2021-02-19','2021-07-13',0,8),(9,'The Shadow of the Eagle','Other psychiatric interview and evaluation','2021-03-02','2021-08-15',0,9),(10,'Batman','Intravascular imaging, unspecified vessel(s)','2020-11-16','2021-06-07',0,10);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_categorias`
--

DROP TABLE IF EXISTS `notas_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas_categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Categorias_id` int NOT NULL,
  `Notas_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Notas_Categorias_Categorias1_idx` (`Categorias_id`),
  KEY `fk_Notas_Categorias_Notas1_idx` (`Notas_id`),
  CONSTRAINT `fk_Notas_Categorias_Categorias1` FOREIGN KEY (`Categorias_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `fk_Notas_Categorias_Notas1` FOREIGN KEY (`Notas_id`) REFERENCES `notas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_categorias`
--

LOCK TABLES `notas_categorias` WRITE;
/*!40000 ALTER TABLE `notas_categorias` DISABLE KEYS */;
INSERT INTO `notas_categorias` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `notas_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Raychel','rligoe0@people.com.cn'),(2,'Mikel','mproudlove1@studiopress.com'),(3,'Mady','mstaniland2@wiley.com'),(4,'Colet','cbaines3@sun.com'),(5,'Patrizia','pbrazil4@artisteer.com'),(6,'Genevieve','gzellner5@unblog.fr'),(7,'Willette','whazeldene6@t.co'),(8,'Elisabetta','elichfield7@comcast.net'),(9,'Zerk','zvanbrug8@ezinearticles.com'),(10,'Sarette','sgoodinson9@ca.gov');
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

-- Dump completed on 2021-09-01 17:53:54
