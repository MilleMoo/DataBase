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
-- Table structure for table `patient_tables`
--

DROP TABLE IF EXISTS `patient_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_tables` (
  `Patient_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `ID_Card` bigint NOT NULL,
  `House_No` varchar(25) NOT NULL,
  `Sub_District_Sub_Area` varchar(50) NOT NULL,
  `District_Area` varchar(50) NOT NULL,
  `Province` varchar(50) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Blood_Group` varchar(2) NOT NULL,
  `Weight` decimal(5,2) NOT NULL,
  `Height` decimal(5,2) NOT NULL,
  `Disease_Code` varchar(20) NOT NULL,
  PRIMARY KEY (`Patient_ID`),
  UNIQUE KEY `Unique_Patient` (`ID_Card`),
  UNIQUE KEY `Patient_ID` (`Patient_ID`),
  KEY `idx_Disease_Code` (`Disease_Code`)
) ENGINE=InnoDB AUTO_INCREMENT=100008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_tables`
--

LOCK TABLES `patient_tables` WRITE;
/*!40000 ALTER TABLE `patient_tables` DISABLE KEYS */;
INSERT INTO `patient_tables` VALUES (100003,'วีรชัย','สันติวงษ์',3320947461878,'2/29','กำแพงแสน','กำแพงแสน','นครปฐม','ชาย','A',70.00,175.00,'D000001'),(100004,'พัฒนภัทร','สิริวาณิชย์ ',3734878857054,'6/5','รางพิกุล','กำแพงแสน','นครปฐม','ชาย','O',65.00,168.00,'D000002'),(100005,'ณัฏฐชัย','รัศมีโชติ',8059597853413,'33/8','ทุ่งบัว','กำแพงแสน','นครปฐม','ชาย','B',75.00,170.00,'D000003'),(100006,'ภัทรพร ','มากมี',4706699178249,'75/1','ทุ่งบัว','กำแพงแสน','นครปฐม','หญิง','AB',50.00,160.00,'D000004'),(100007,'นันทิพร  ','นันทพินิจ',5118503973693,'6/9','กำแพงแสน','กำแพงแสน','นครปฐม','หญิง','A',55.00,165.00,'D000005');
/*!40000 ALTER TABLE `patient_tables` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Set_Default_Disease_Code` BEFORE INSERT ON `patient_tables` FOR EACH ROW BEGIN
    DECLARE disease_counter INT;
    DECLARE new_disease_code VARCHAR(20);
    SET disease_counter = (SELECT COUNT(*) + 1 FROM Patient_Tables);
    SET new_disease_code = CONCAT('D', LPAD(disease_counter, 6, '0'));
    
    -- Check if the newly generated Disease_Code already exists
    WHILE EXISTS (SELECT 1 FROM Patient_Tables WHERE Disease_Code = new_disease_code) DO
        SET disease_counter = disease_counter + 1;
        SET new_disease_code = CONCAT('D', LPAD(disease_counter, 6, '0'));
    END WHILE;
    
    SET NEW.Disease_Code = new_disease_code;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 21:57:05
