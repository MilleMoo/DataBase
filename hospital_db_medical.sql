-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospital_db
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `medical`
--

DROP TABLE IF EXISTS `medical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical` (
  `Medical_ID` int NOT NULL AUTO_INCREMENT,
  `Medical_Name` varchar(100) NOT NULL,
  `Medicinal_Properties` varchar(200) NOT NULL,
  `Drug_Type` varchar(45) NOT NULL,
  `Quantity_Required` varchar(100) NOT NULL,
  `Directions` varchar(45) NOT NULL,
  PRIMARY KEY (`Medical_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical`
--

LOCK TABLES `medical` WRITE;
/*!40000 ALTER TABLE `medical` DISABLE KEYS */;
INSERT INTO `medical` VALUES (100001,'ยาสเตียรอยด์ชนิดสูด(ICS)','เพิ่มสมรรถภาพปอด ลดความไวของหลอดลม  ลดอาการ','ยาควบคุมพิเศษ','ตามอาการ','สูด'),(100002,'Aspirin 325 มิลลิกรัม','ยับยั้งการสร้างสารที่ทำให้เกิดการเกาะกลุ่มของเกล็ดเลือด','ยาที่ไม่ใช่ยาอันตรายหรือยาควบคุมพิเศษ','รับประทานครั้งละ 1 เม็ด ก่อนอาหาร','ทาน'),(100003,'Nifedipine 20 มิลลิกรัม ','คลายกล้ามเนื้อหัวใจและหลอดเลือด','ยาควบคุมพิเศษ','รับประทานครั้งละ 1 เม็ด 3 ครั้งต่อ 1 วัน','ทาน'),(100004,'Kremil  250 มิลลิกรัม','บรรเทาอาการท้องอืด แน่น จุกเสียด บรรเทาอาการกรดไหลย้อน','ยาที่ไม่ใช่ยาอันตรายหรือยาควบคุมพิเศษ','รับประทานครั้งละ 1 เม็ด หลังอาหาร\r \r ','ทาน'),(100005,'Dabigatran 75  มิลลิกรัม','ป้องกันการเกิดลิ่มเลือดอุดตัน','ยาควบคุมพิเศษ','รับประทานครั้งละ 1 เม็ด 2 ครั้งต่อวัน เช้า-เย็น','ทาน');
/*!40000 ALTER TABLE `medical` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 21:57:06
