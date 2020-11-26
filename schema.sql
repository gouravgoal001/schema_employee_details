-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: employee_details
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deapartmental_info`
--

DROP TABLE IF EXISTS `deapartmental_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deapartmental_info` (
  `Department` varchar(15) NOT NULL,
  `department_CODE` char(7) NOT NULL,
  `Total_emp` varchar(2) NOT NULL,
  `Current_emp` varchar(2) NOT NULL,
  `Emp_ID` char(9) DEFAULT NULL,
  PRIMARY KEY (`department_CODE`),
  KEY `FK_DEAPARTMENTAL_INFOpersonal_details_` (`Emp_ID`),
  CONSTRAINT `FK_DEAPARTMENTAL_INFOpersonal_details_` FOREIGN KEY (`Emp_ID`) REFERENCES `personal_details` (`Emp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deapartmental_info`
--

LOCK TABLES `deapartmental_info` WRITE;
/*!40000 ALTER TABLE `deapartmental_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `deapartmental_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educational_details`
--

DROP TABLE IF EXISTS `educational_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educational_details` (
  `Course` varchar(20) NOT NULL,
  `edu_id` int unsigned NOT NULL AUTO_INCREMENT,
  `Emp_ID` char(9) DEFAULT NULL,
  `certifications` varchar(30) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  PRIMARY KEY (`edu_id`),
  KEY `FK_personal_detailseducational_detailsABC` (`Emp_ID`),
  CONSTRAINT `FK_personal_detailseducational_detailsABC` FOREIGN KEY (`Emp_ID`) REFERENCES `personal_details` (`Emp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_details`
--

LOCK TABLES `educational_details` WRITE;
/*!40000 ALTER TABLE `educational_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `educational_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_details`
--

DROP TABLE IF EXISTS `personal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_details` (
  `Name` varchar(25) NOT NULL,
  `Emp_ID` char(9) NOT NULL,
  `Phone_NO` int NOT NULL,
  `Email_ID` varchar(100) NOT NULL,
  `Father_Name` varchar(25) NOT NULL,
  `Adhar_Card` char(12) NOT NULL,
  `D_O_B` date NOT NULL,
  `Hometown` varchar(30) NOT NULL,
  `marital_status` char(1) NOT NULL,
  PRIMARY KEY (`Emp_ID`),
  UNIQUE KEY `Phone_NO` (`Phone_NO`),
  UNIQUE KEY `Email_ID` (`Email_ID`),
  UNIQUE KEY `Adhar_Card` (`Adhar_Card`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_details`
--

LOCK TABLES `personal_details` WRITE;
/*!40000 ALTER TABLE `personal_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professional_details`
--

DROP TABLE IF EXISTS `professional_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professional_details` (
  `Last_Designation` varchar(20) NOT NULL,
  `Last_Company` varchar(20) NOT NULL,
  `Join_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `COMPANY_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Emp_ID` char(9) DEFAULT NULL,
  `LOCATION` varchar(20) NOT NULL,
  PRIMARY KEY (`COMPANY_ID`),
  KEY `FK_PROFESSIONAL_DETAILSpersonal_details_` (`Emp_ID`),
  CONSTRAINT `FK_PROFESSIONAL_DETAILSpersonal_details_` FOREIGN KEY (`Emp_ID`) REFERENCES `personal_details` (`Emp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professional_details`
--

LOCK TABLES `professional_details` WRITE;
/*!40000 ALTER TABLE `professional_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `professional_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-26 23:30:23
