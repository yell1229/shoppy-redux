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
-- Table structure for table `kurly_product`
--

DROP TABLE IF EXISTS `kurly_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kurly_product` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `brend` varchar(20) NOT NULL,
  `cate_depth1` char(3) NOT NULL,
  `cate_depth2` char(3) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `sub_desc` varchar(100) DEFAULT NULL,
  `price` int NOT NULL,
  `dc` int DEFAULT NULL,
  `delivery` char(2) DEFAULT NULL,
  `event_label` tinyint(1) DEFAULT NULL,
  `upload_img` varchar(100) DEFAULT NULL,
  `org_img` varchar(50) DEFAULT NULL,
  `info_imgs` json DEFAULT NULL,
  `info_org_imgs` json DEFAULT NULL,
  `detail_imgs` json DEFAULT NULL,
  `detail_org_imgs` json DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kurly_product`
--

LOCK TABLES `kurly_product` WRITE;
/*!40000 ALTER TABLE `kurly_product` DISABLE KEYS */;
INSERT INTO `kurly_product` VALUES (1,'크리니크','101','003','[크리니크] 쏙보습크림 (핑크수분크림) 75ml (+50ml 크림 증정)','피부 깊숙이 촉촉한 수분 충전',64000,15,'상온',1,'upload_files\\1739782571803_4.jpeg','4.jpeg','[\"http://localhost:9000/upload_files\\\\1739782577325-4_1.jpg\", \"http://localhost:9000/upload_files\\\\1739782577328-4_2.jpg\"]',NULL,'[\"http://localhost:9000/upload_files\\\\1739782633796-4_3.jpg\"]',NULL,'2025-02-17 18:00:52'),(2,'달바','101','1','[달바] 화이트 트러플 퍼스트 스프레이 세럼 100ml 2개 세트 (옐로우 미스트 세럼)(+마스크팩 1매 증정)','윤기와 보습을 더하는 산뜻 미스트 ',59800,43,'상온',1,'[\"upload_files/2.jpg\"]',NULL,'[\"upload_files/2_1_1.jpg\", \"upload_files/2_1_2.jpg\"]',NULL,'[\"upload_files/2_2_1.jpg\", \"upload_files/2_2_2.jpg\"]',NULL,'2025-01-26 12:41:00'),(3,'피토메르','101','2','[타임특가][피토메르] 특별 기획 세트 (올리고포스세럼 30ml+멜팅크림 30ml+올리고 비타C세럼 15ml)','홈 에스테틱을 위한 기획 세트',272000,65,'상온',1,'[\"upload_files/3.jpg\"]',NULL,'[\"upload_files/3_1_1.jpg\", \"upload_files/3_1_2.jpg\"]',NULL,'[\"upload_files/3_2_1.jpg\"]',NULL,'2025-01-27 12:41:00'),(4,'라 메르','101','2','[라 메르] 크렘 드 라 메르 30ml','깊은 보습감을 선사하는 기적의 크림',312000,15,'상온',1,'[\"upload_files/4.jpg\"]',NULL,'[\"upload_files/4_1_1.jpg\", \"upload_files/4_1_2.jpg\"]',NULL,'[\"upload_files/4_2_1.jpg\", \"upload_files/4_2_2.jpg\"]',NULL,'2025-01-28 12:41:00'),(5,'피지오겔','101','2','[피지오겔] DMT 로션 선물세트(로션 200ml, 크림30ml, 토너 50ml, 클렌징 젤 30ml) (쇼핑백 포함)','피지오겔 베스트 상품으로 구성된 선물세트',47500,37,'상온',1,'[\"upload_files/5.jpg\"]',NULL,'[\"upload_files/5_1_1.jpg\", \"upload_files/5_1_2.jpg\"]',NULL,'[\"upload_files/5_2_1.jpg\", \"upload_files/5_2_2.jpg\"]',NULL,'2025-01-29 12:41:00'),(6,'에스티로더','102','1','[에스티로더] 더블웨어 파운데이션 30ml 8종(택1, 펌핑기 증정)','무너짐 없는 베이스 메이크업의 비결',91000,15,'상온',0,'[\"upload_files/6.jpg\"]',NULL,'[\"upload_files/6_1_1.jpg\", \"upload_files/6_1_2.jpg\"]',NULL,'[\"upload_files/6_2_1.jpg\", \"upload_files/6_2_2.jpg\"]',NULL,'2025-01-30 12:41:00'),(7,'달바','102','1','[달바] 워터풀 핑크 톤업 선크림 50ml (비건)','맑은 광채를 더해주는 혼합자차',34000,29,'상온',0,'[\"upload_files/7.jpg\"]',NULL,'[\"upload_files/7_1_1.jpg\", \"upload_files/7_1_2.jpg\"]',NULL,'[\"upload_files/7_2_1.jpg\", \"upload_files/7_2_2.jpg\"]',NULL,'2025-01-31 12:41:00'),(8,'프레시안','102','2','[프레시안] 에그라이크 크림 블러쉬 6종 (택1)','메이크업 아티스트 나겸쌤 공동개발 블러쉬',22000,5,'상온',0,'[\"upload_files/8.jpg\"]',NULL,'[\"upload_files/8_1_1.jpg\", \"upload_files/8_1_2.jpg\"]',NULL,'[\"upload_files/8_2_1.jpg\", \"upload_files/8_2_2.jpg\"]',NULL,'2025-02-12 12:41:00'),(9,'글린트','102','2','[글린트] 하이라이터 피치문 기획세트','맑고 청초한 피치빛 광채',22000,10,'상온',1,'[\"upload_files/9.jpg\"]',NULL,'[\"upload_files/9_1_1.jpg\", \"upload_files/9_1_2j.pg\"]',NULL,'[\"upload_files/9_2_1.jpg\", \"upload_files/9_2_2.jpg\"]',NULL,'2025-02-13 12:41:00'),(10,'페리페라','102','2','[페리페라] 약과몰입에디션NEW 맑게 물든 선샤인 치크 2종(택1)','두 볼을 맑게 물들인 햇살 컬러',8000,18,'상온',1,'[\"upload_files/10.jpg\"]',NULL,'[\"upload_files/10_1_1.jpg\", \"upload_files/10_1_2jpg\"]',NULL,'[\"upload_files/10_2_1.jpg\", \"upload_files/10_2_2.jpg\"]',NULL,'2025-02-14 12:41:00'),(11,'아벤느','103','1','[아벤느] 미셀라 클렌징 워터 트리플 기획세트 (400mL*3개, 화장솜 50매)','화장솜 증정, 풍성한 용량으로 알차게 꾸려낸',81000,51,'상온',1,'[\"upload_files/11.jpg\"]',NULL,'[\"upload_files/11_1_1.jpg\", \"upload_files/11_1_2.jpg\"]',NULL,'[\"upload_files/11_2_1.jpg\"]',NULL,'2025-02-15 12:41:00'),(12,'바비 브라운','103','1','[바비브라운] 수딩 클렌징 오일 200ml','부담 없이 사용하는 스테디셀러 ',79900,15,'상온',1,'[\"upload_files/12.jpg\"]',NULL,'[\"upload_files/12_1_1.jpg\", \"upload_files/12_1_2.jpg\"]',NULL,'[\"upload_files/12_2_1.jpg\"]',NULL,'2025-02-16 12:41:00'),(13,'마녀공장','103','1','[마녀공장] 퓨어 클렌징 오일 200ml','순하고 강력한 클렌징 오일',29000,40,'상온',1,'[\"upload_files/13.jpg\"]',NULL,'[\"upload_files/13_1_1.jpg\", \"upload_files/13_1_2.jpg\"]',NULL,'[\"upload_files/13_2_1.jpg\"]',NULL,'2025-02-25 12:43:00'),(14,'에스트라','103','1','[에스트라] 아토베리어365 버블클렌저 150ml 2개 세트(+클렌저 50ml 증정)','풍성한 거품으로 부드럽게 클렌징 ',34000,15,'상온',0,'[\"upload_files/14.jpg\"]',NULL,'[\"upload_files/14_1_1.jpg\", \"upload_files/14_1_2.jpg\"]',NULL,'[\"upload_files/14_2_1.jpg\"]',NULL,'2025-02-25 12:43:00'),(15,'바이오더마','103','2','[바이오더마] 센시비오 H2O 500ml 듀오','촉촉함을 전하는 워터 클렌저 듀오',42000,20,'상온',0,'[\"upload_files/15.jpg\"]',NULL,'[\"upload_files/15_1_1.jpg\", \"upload_files/15_1_2.jpg\"]',NULL,'[\"upload_files/15_2_1.jpg\"]',NULL,'2025-02-25 12:43:00'),(16,'닥터아토','104','1','[닥터아토] 실키 포켓 선스틱 17g','백탁 없이 보송한 저자극 선스틱',23900,62,'상온',1,'[\"upload_files/16.jpg\"]',NULL,'[\"upload_files/16_1_1.jpg\", \"upload_files/16_2_1.jpg\"]',NULL,'[\"upload_files/16_2_1.jpg\"]',NULL,'2025-02-25 12:43:00'),(17,'라로제','104','1','[라로제] 클린 선스틱 SPF 50 PA++++18.5g(워터프루프)','피부와 환경까지 생각한 선스틱',29000,10,'상온',0,'[\"upload_files/17.jpg\"]',NULL,'[\"upload_files/17_1_1.jpg\", \"upload_files/17_1_2.jpg\"]',NULL,'[\"upload_files/17_2_1.jpg\"]',NULL,'2025-02-25 12:43:00'),(18,'맥','104','2','[맥] 라이트풀 C3 톤업 밤(로즈 톤업 밤) SPF30 / PA+++ 2종(택1)','간편한 밤 타입 톤업 베이스',75000,15,'상온',1,'[\"upload_files/18.jpg\"]',NULL,'[\"upload_files/18_1_1.jpg\", \"upload_files/18_1_2.jpg\"]',NULL,'[\"upload_files/18_2_1.jpg\"]',NULL,'2025-02-25 12:43:00'),(19,'정샘물','104','2','[정샘물] 정샘물 키즈 마일드 선 쿠션 18g(SPF50+/PA++++)','시원한 쿨링감의 톤업 무기자차',30000,20,'상온',1,'[\"upload_files/19.jpg\"]',NULL,'[\"upload_files/19_1_1.jpg\", \"upload_files/19_1_2.jpg\"]',NULL,'[\"upload_files/19_1_1.jpg\"]',NULL,'2025-02-25 12:43:00'),(20,'베비언스','104','2','[베비언스] BB핑크퐁 선쿠션 15g','아이 피부에 안심하고 톡톡',19800,0,'상온',0,'[\"upload_files/20.jpg\"]',NULL,'[\"upload_files/20_1_1.jpg\", \"upload_files/20_1_2.jpg\"]',NULL,'[\"upload_files/20_2_1.jpg\"]',NULL,'2025-02-25 12:43:00');
/*!40000 ALTER TABLE `kurly_product` ENABLE KEYS */;
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
