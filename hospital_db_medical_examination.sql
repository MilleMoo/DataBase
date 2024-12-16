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
-- Table structure for table `medical_examination`
--

DROP TABLE IF EXISTS `medical_examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_examination` (
  `ID_Medical_Examination` int NOT NULL AUTO_INCREMENT,
  `Appointment_Schedule_ID` int unsigned NOT NULL,
  `Examination_Results` varchar(100) NOT NULL,
  `Ordering_Treatment` varchar(100) NOT NULL,
  `Note` varchar(200) DEFAULT NULL,
  `Date_Of_Starting_Treatment` date NOT NULL,
  `Treatment_End_Date` date DEFAULT NULL,
  PRIMARY KEY (`ID_Medical_Examination`),
  KEY `Appointment_Schedule_ID` (`Appointment_Schedule_ID`),
  CONSTRAINT `medical_examination_ibfk_1` FOREIGN KEY (`Appointment_Schedule_ID`) REFERENCES `appointment_schedule` (`Schedule_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_examination`
--

LOCK TABLES `medical_examination` WRITE;
/*!40000 ALTER TABLE `medical_examination` DISABLE KEYS */;
INSERT INTO `medical_examination` VALUES (10001,10001,'หอบหืด','ใช้ยา','-','2567-03-03','2567-04-03'),(10002,10002,'ลิ่มเลือดในหลอดเลือด','ทานยา','ประวัติการแพ้ยา Antacid','2567-03-05','2567-04-05'),(10003,10003,'ความดันโลหิตสูง','ทานยา','-','2567-03-07','2567-04-07'),(10004,10004,'กรดไหลย้อน','ทานยา','ประวัติการแพ้ยา Antacid','2567-03-09','2567-04-09'),(10005,10005,'ลิ่มเลือดอุดตัน','ทานยา','-','2567-03-11','2567-04-11');
/*!40000 ALTER TABLE `medical_examination` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 21:57:05
