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
-- Table structure for table `vacation`
--

DROP TABLE IF EXISTS `vacation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacation` (
  `vacation_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` char(5) NOT NULL,
  `begin_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(50) NOT NULL DEFAULT '개인사유',
  `duration` int GENERATED ALWAYS AS (((to_days(`end_date`) - to_days(`begin_date`)) + 1)) VIRTUAL,
  PRIMARY KEY (`vacation_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `vacation_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `vacation_chk_1` CHECK ((`end_date` >= `begin_date`))
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacation`
--

LOCK TABLES `vacation` WRITE;
/*!40000 ALTER TABLE `vacation` DISABLE KEYS */;
INSERT INTO `vacation` (`vacation_id`, `emp_id`, `begin_date`, `end_date`, `reason`) VALUES (1,'S0001','2013-01-12','2013-01-12','감기몸살'),(2,'S0001','2013-03-21','2013-03-21','글쎄요'),(3,'S0001','2013-06-13','2013-06-14','글쎄요'),(4,'S0001','2013-07-07','2013-07-07','중요 행사 준비'),(5,'S0002','2013-07-21','2013-07-25','놀고싶어서'),(6,'S0001','2013-08-01','2013-08-01','치통이 심해서'),(7,'S0001','2013-08-03','2013-08-08','놀고싶어서'),(8,'S0002','2013-11-17','2013-11-17','두통'),(9,'S0001','2013-12-01','2013-12-15','비밀'),(10,'S0002','2014-02-10','2014-02-13','두통'),(11,'S0002','2014-04-19','2014-04-19','놀고싶어서'),(12,'S0002','2014-06-15','2014-06-18','데이트'),(13,'S0003','2014-09-17','2014-09-17','휴식이 필요'),(14,'S0003','2014-10-26','2014-10-26','중요 행사 준비'),(15,'S0001','2014-10-26','2014-10-29','치통이 심해서'),(16,'S0003','2015-01-18','2015-01-18','치통이 심해서'),(17,'S0005','2015-03-25','2015-03-29','이사'),(18,'S0006','2015-04-08','2015-04-08','궁금해하지 마세요'),(19,'S0005','2015-04-08','2015-04-17','휴식이 필요'),(20,'S0002','2015-04-15','2015-04-15','그냥'),(21,'S0007','2015-06-06','2015-06-06','비밀'),(22,'S0005','2015-06-06','2015-06-06','두통'),(23,'S0002','2015-06-06','2015-06-06','궁금해하지 마세요'),(24,'S0002','2015-06-28','2015-07-02','두통'),(25,'S0006','2015-06-28','2015-07-01','그냥'),(26,'S0005','2015-06-28','2015-07-01','아이가 가지 말래서'),(27,'S0007','2015-07-11','2015-07-11','비밀'),(28,'S0006','2015-07-15','2015-07-15','그냥'),(29,'S0006','2015-07-16','2015-07-25','병원진료'),(30,'S0003','2015-07-18','2015-07-18','가족행사'),(31,'S0001','2015-07-18','2015-07-29','개인사유'),(32,'S0003','2015-09-12','2015-09-16','배탈'),(33,'S0008','2015-09-12','2015-09-12','가족행사'),(34,'S0003','2015-10-08','2015-10-17','집안 청소'),(35,'S0001','2015-11-19','2015-11-19','슬퍼서'),(36,'S0008','2015-12-27','2015-12-27','그냥'),(37,'S0001','2016-01-20','2016-01-22','그냥'),(38,'S0007','2016-01-20','2016-01-20','머리가 지끈지끈'),(39,'S0001','2016-04-04','2016-04-07','피곤해서'),(40,'S0007','2016-04-04','2016-04-07','이사'),(41,'S0006','2016-04-04','2016-04-04','홈쇼핑'),(42,'S0011','2016-04-04','2016-04-08','머리가 지끈지끈'),(43,'S0008','2016-04-04','2016-04-08','너무 외로워서'),(44,'S0013','2016-05-09','2016-05-09','개인사유'),(45,'S0001','2016-05-09','2016-05-12','놀고싶어서'),(46,'S0012','2016-07-25','2016-07-25','그냥'),(47,'S0013','2016-07-25','2016-07-25','개인사유'),(48,'S0016','2016-07-25','2016-07-25','피곤해서'),(49,'S0008','2016-07-25','2016-07-25','병원진료'),(50,'S0001','2016-08-06','2016-08-07','치통이 심해서'),(51,'S0003','2016-08-28','2016-09-01','두통'),(52,'S0012','2016-08-28','2016-08-28','감기몸살'),(53,'S0002','2016-10-02','2016-10-03','글쎄요'),(54,'S0001','2016-10-02','2016-10-02','중요 행사 준비'),(55,'S0007','2016-10-02','2016-10-02','비밀'),(56,'S0016','2016-10-07','2016-10-07','개인사유'),(57,'S0001','2016-10-16','2016-10-17','배탈'),(58,'S0011','2016-10-16','2016-10-20','글쎄요'),(59,'S0007','2016-10-16','2016-10-20','치통이 심해서'),(60,'S0013','2016-10-16','2016-10-16','궁금해하지 마세요'),(61,'S0005','2016-10-16','2016-10-17','너무 외로워서'),(62,'S0016','2016-11-28','2016-11-28','집안 청소'),(63,'S0005','2016-12-02','2016-12-02','머리가 지끈지끈'),(64,'S0010','2016-12-26','2016-12-29','아이가 가지 말래서'),(65,'S0001','2016-12-26','2016-12-26','비밀'),(66,'S0012','2016-12-26','2016-12-29','중요 행사 준비'),(67,'S0001','2017-01-28','2017-01-28','가족행사'),(68,'S0010','2017-01-28','2017-01-28','머리가 지끈지끈'),(69,'S0012','2017-03-10','2017-03-10','두통'),(70,'S0001','2017-03-10','2017-03-11','가족행사'),(71,'S0012','2017-04-30','2017-04-30','두통'),(72,'S0007','2017-04-30','2017-04-30','집안 청소'),(73,'S0003','2017-05-08','2017-05-08','데이트'),(74,'S0007','2017-05-08','2017-05-08','배탈'),(75,'S0007','2017-07-14','2017-07-14','두통'),(76,'S0003','2017-07-14','2017-07-20','아이가 가지 말래서'),(77,'S0001','2017-08-06','2017-08-10','이사'),(78,'S0013','2017-08-12','2017-08-12','중요 행사 준비'),(79,'S0011','2017-08-12','2017-08-12','머리가 지끈지끈'),(80,'S0011','2017-11-03','2017-11-05','글쎄요'),(81,'S0002','2017-11-03','2017-11-03','너무 외로워서'),(82,'S0003','2017-11-18','2017-11-18','휴식이 필요'),(83,'S0010','2017-11-30','2017-12-01','놀고싶어서'),(84,'S0007','2018-02-03','2018-02-03','데이트'),(85,'S0011','2018-03-07','2018-03-11','궁금해하지 마세요'),(86,'S0016','2018-03-07','2018-03-07','글쎄요'),(87,'S0002','2018-03-07','2018-03-09','배탈'),(88,'S0017','2018-04-22','2018-04-22','이사'),(89,'S0002','2018-04-22','2018-04-26','집안 청소'),(90,'S0006','2018-04-25','2018-05-04','개인사유'),(91,'S0001','2018-05-05','2018-05-06','홈쇼핑'),(92,'S0002','2018-05-05','2018-05-06','아이가 가지 말래서'),(93,'S0017','2018-05-20','2018-05-23','집안 청소'),(94,'S0012','2018-05-30','2018-06-01','그냥'),(95,'S0019','2018-05-30','2018-06-03','집안 청소'),(96,'S0017','2018-06-03','2018-06-06','치통이 심해서'),(97,'S0012','2018-06-03','2018-06-06','집안 청소'),(98,'S0012','2018-07-18','2018-07-18','홈쇼핑'),(99,'S0007','2018-08-10','2018-08-10','글쎄요'),(100,'S0013','2018-08-10','2018-08-15','슬퍼서'),(101,'S0007','2018-08-17','2018-08-19','집안 청소'),(102,'S0019','2018-09-08','2018-09-08','너무 외로워서');
/*!40000 ALTER TABLE `vacation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17 10:46:51
