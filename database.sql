CREATE DATABASE  IF NOT EXISTS `fitness_website` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fitness_website`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fitness_website
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Email` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Password` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (5,'vuduclong','user@example.com','$2b$12$8l735LoCQ1f9NZGzcnnBbeS4Y790WqO.dV3sPRDHadfoqL8sTFHKC'),(22,'user10','user10@gmail.com','$2b$12$.mIThDi24Jut/QnBf53gre4eNvjgZmSS9nPailwe6./ITbHFcjLRC'),(23,'user11','user11@gmail.com','$2b$12$kIo.W66tDUIkR8zTNTJoJuyuNsAAtwwSR1HFOE3V5EKMDuutEGbC6'),(24,'user2','user2@gmail.com','$2b$12$JQlroerz7gUPBMcCTs4n9.E19bdRLjV.N.M7mDilGwC1HvrXhMkNa'),(25,'user3','user3@gmail.com','$2b$12$MeFrj9aTeDFPjiSFmeAz1uuGNeL6v54PjW9Zo5mMz/HKi4OUjk4yu'),(26,'user4','user4@gmail.com','$2b$12$U0HXON3UFFKbegvzTB/Cx.L6FdZ9825VSqA6B5VEuLacIwCN.dWHK'),(27,'user5','user5@gmail.com','$2b$12$sl7O5DFo6qaMBx3MXXYgMuNk02Jxw5vTO5E4hh2aKnhQ/Y3xsK/bu'),(28,'user6','user6@gmail.com','$2b$12$ngPHu6hfgqztKxZoSaelT.L.Ft19oA4/k/LhSnht/FWgIItJGhXz.'),(29,'vuduclong1','vuduclong1@gmail.com','$2b$12$ay/DiS7nETNfuDsuO6ytvue0f0OS52VKC.XHCdWEpT3afoaSiw7c6');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_account_insert` AFTER INSERT ON `account` FOR EACH ROW BEGIN
    INSERT INTO profiles(Customer_ID) VALUES (NEW.Customer_ID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_account_insert2` AFTER INSERT ON `account` FOR EACH ROW BEGIN
    INSERT INTO fitness_details (Customer_ID) VALUES (NEW.Customer_ID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `author` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'create-a-personalized-self-care-plan-in-4-steps','Create a Personalized Self-Care Plan in 4 Steps','PhD Haley'),(2,'how-to-form-healthy-habits','How to Form Healthy Habits','PhD Haley'),(3,'when-rest-is-more-important-than-working-out-tips-for-managing-rest-days','When Rest is More Important Than Working Out','PhD Haley');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fitness_details`
--

DROP TABLE IF EXISTS `fitness_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fitness_details` (
  `Customer_ID` int NOT NULL DEFAULT '0',
  `Gender` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Height` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Weight` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fitness_goal` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fitness_level` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `equipment` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `target_muscles` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fitness_details`
--

LOCK TABLES `fitness_details` WRITE;
/*!40000 ALTER TABLE `fitness_details` DISABLE KEYS */;
INSERT INTO `fitness_details` VALUES (5,'male','170','70','muscles gain','beginner','other','lats'),(22,'male','180','80','weight loss','beginner','e-z curl bar',NULL),(23,'male','123','170','muscles gain','beginner','body only','abductors'),(24,'male','170','80','muscles gain','intermediate','dumbbell','shoulders'),(25,'male','170','75','weight loss','beginner','body only','chest'),(26,'male','170','70','strength','intermediate','body only','hamstrings'),(27,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'male','170','70','muscles gain','intermediate','body only','quadriceps'),(29,'male','170','70','weight loss','beginner','body only','shoulders');
/*!40000 ALTER TABLE `fitness_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DoB` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Address` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Email` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Province` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Country` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Postcode` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Mobile_Number` varchar(11) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (5,'Vũ Đức Long','27/05/2003','District 8','vuduclonggl1@gmail.com','HCM city','Vietnam','12345542','0389066072'),(22,'Long','12/10/2023','27','user11@gmail.com','HCM city','Vietnam','123213','12213123'),(23,'Long','12/10/2023','27','user11@gmail.com','HCM city','Vietnam','70000','01231141313'),(24,'Vũ Đức Long','27/05/2003','A','vuduclonggl1@gmail.com','A','Vietnam','12345542','0389066072'),(25,'Vu Duc Long','27/05/2003','27  ','user10@gmail.com','District 8','Viet Nam','70000','0327967123'),(26,'Vu Duc Long','27/05/2003','1002 Ta Quang Buu Street','user4@gmail.com','Ho Chi Minh City','VietNam','73000','0327967123'),(27,'Vu Duc Long','27/05/2003','1002 Ta Quang Buu','user5@gmail.com','Ho Chi Minh city','Viet Nam','73000','0327967123'),(28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Vu Duc Long','27/05/2003','1003 Ta Quang Buu','vuduclong1@gmail.com','Ho Chi Minh city','Viet Nam','73000','0327967123');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fitness_website'
--

--
-- Dumping routines for database 'fitness_website'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-27  8:07:57
