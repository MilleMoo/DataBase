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
-- Table structure for table `appointment_schedule`
--

DROP TABLE IF EXISTS `appointment_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_schedule` (
  `Schedule_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Schedule_Date` date NOT NULL,
  `Schedule_Selection_Time` time NOT NULL,
  `Doctor_Schedule` int unsigned NOT NULL,
  `Patient_ID` int NOT NULL,
  PRIMARY KEY (`Schedule_ID`),
  UNIQUE KEY `Schedule_ID_UNIQUE` (`Schedule_ID`),
  KEY `FK_Doctor_Schedule` (`Doctor_Schedule`),
  KEY `FK_Patient_ID` (`Patient_ID`),
  CONSTRAINT `FK_Doctor_Schedule` FOREIGN KEY (`Doctor_Schedule`) REFERENCES `doctor_schedule` (`Schedule_ID`),
  CONSTRAINT `FK_Patient_ID` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_tables` (`Patient_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10009 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_schedule`
--

LOCK TABLES `appointment_schedule` WRITE;
/*!40000 ALTER TABLE `appointment_schedule` DISABLE KEYS */;
INSERT INTO `appointment_schedule` VALUES (10001,'2567-02-03','08:00:00',10021,100003),(10002,'2567-02-04','09:30:00',10022,100004),(10003,'2567-02-06','10:45:00',10023,100005),(10004,'2567-02-08','10:00:00',10024,100006),(10005,'2567-02-10','10:00:00',10025,100007);
/*!40000 ALTER TABLE `appointment_schedule` ENABLE KEYS */;
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
