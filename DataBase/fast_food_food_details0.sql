-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: fast_food
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `food_details`
--

DROP TABLE IF EXISTS `food_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_details` (
  `Item_Code` int NOT NULL AUTO_INCREMENT,
  `Item_Name` varchar(50) DEFAULT NULL,
  `Cat_ID` int DEFAULT NULL,
  `Item_Details` varchar(100) DEFAULT NULL,
  `Image1` varchar(100) DEFAULT NULL,
  `Image2` varchar(100) DEFAULT NULL,
  `Was_Price` int DEFAULT NULL,
  `Now_Price` int DEFAULT NULL,
  `user1` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Item_Code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_details`
--

LOCK TABLES `food_details` WRITE;
/*!40000 ALTER TABLE `food_details` DISABLE KEYS */;
INSERT INTO `food_details` VALUES (1,'Pepperoni Pizza',1,'Veg Pepperoni Pizza with toppings','~/Styles/small/1tgbtrgr.jpg','~/Styles/small/1tgbtrgr.jpg',120,2000,NULL),(2,'Tripple Rice',6,'Veg Tripple rice','~/Styles/small/chrome_w2YxVXZhXB.jpg','~/Styles/small/chrome_w2YxVXZhXB.jpg',89,50,NULL),(3,'Soup',1,'Veg Soup','~/Styles/small/chrome_9X4pRrrX7I.jpg','~/Styles/large/chrome_n03LQ3BMNK.jpg',70,60,NULL),(4,'Rolls',5,'Cheese Rolls','~/Styles/small/chrome_La0953cWEu.jpg','~/Styles/large/chrome_n03LQ3BMNK.jpg',80,90,NULL);
/*!40000 ALTER TABLE `food_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-12 22:56:56
