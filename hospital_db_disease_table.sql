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
-- Table structure for table `disease_table`
--

DROP TABLE IF EXISTS `disease_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disease_table` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Disease` varchar(10) NOT NULL,
  `Congenital_Disease` varchar(100) NOT NULL,
  `Drug_Allergy_History` varchar(100) NOT NULL,
  `Medical_History` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Disease_Code` (`ID_Disease`),
  CONSTRAINT `fk_Disease_Code` FOREIGN KEY (`ID_Disease`) REFERENCES `patient_tables` (`Disease_Code`)
) ENGINE=InnoDB AUTO_INCREMENT=100007 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease_table`
--

LOCK TABLES `disease_table` WRITE;
/*!40000 ALTER TABLE `disease_table` DISABLE KEYS */;
INSERT INTO `disease_table` VALUES (100001,'D000002','ไม่มี','Antacid','รับยาKremil'),(100002,'D000003','ความดัน','ไม่มี','รับยาNifedipine'),(100003,'D000004','ไม่มี','NSAIDs','รับยาAspirin'),(100004,'D000005','โรคหอบหืด','ไม่มี','รับยาสเตียรอยด์ชนิดสูด(ICS)'),(100005,'D000001','โรคหัวใจ','ไม่มี','รับยาDabigatran'),(100006,'D000001','เบาหวาน','Antacid','รับยาKremil');
/*!40000 ALTER TABLE `disease_table` ENABLE KEYS */;
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
