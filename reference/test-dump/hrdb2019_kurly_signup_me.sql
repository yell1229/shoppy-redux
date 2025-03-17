-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: hrdb2019
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Table structure for table `kurly_signup_me`
--

DROP TABLE IF EXISTS `kurly_signup_me`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kurly_signup_me` (
  `id` varchar(30) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `name` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` char(13) NOT NULL,
  `zipcode` char(5) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `birth` char(10) DEFAULT NULL,
  `mdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kurly_signup_me`
--

LOCK TABLES `kurly_signup_me` WRITE;
/*!40000 ALTER TABLE `kurly_signup_me` DISABLE KEYS */;
INSERT INTO `kurly_signup_me` VALUES ('test1','1111','홍길동','abcd@naver.com','010-1111-1111',NULL,' 강남대로 328 (역삼동, 강남역 쉐르빌) 101호','m','','2025-02-19 16:31:37'),('test2','12345','홍길순','aaaa@gmail.com','010-0000-1111',NULL,' 강남대로 298 (역삼동, KB라이프타워) 202호','f','','2025-02-19 16:39:06'),('test3','12345','김서방','zxcv@gmail.com','010-2323-5678',NULL,' 간호대로 3 (홍제동) 11','m','','2025-02-19 16:57:51');
/*!40000 ALTER TABLE `kurly_signup_me` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17 10:46:50
