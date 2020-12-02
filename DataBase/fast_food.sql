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
-- Table structure for table `admin_registration`
--

DROP TABLE IF EXISTS `admin_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_registration` (
  `arid` int NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) DEFAULT NULL,
  `m_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `contact_no` bigint DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `pin_code` int DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`arid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_registration`
--

LOCK TABLES `admin_registration` WRITE;
/*!40000 ALTER TABLE `admin_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_registration`
--

DROP TABLE IF EXISTS `cust_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cust_registration` (
  `crid` int NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) DEFAULT NULL,
  `m_name` varchar(45) DEFAULT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `contact_no` bigint DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `pin_code` int DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`crid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_registration`
--

LOCK TABLES `cust_registration` WRITE;
/*!40000 ALTER TABLE `cust_registration` DISABLE KEYS */;
INSERT INTO `cust_registration` VALUES (3,'Nikhil','Mangesh','Shirdhankar',9096546781,'Ratnagiri','Ratnagiri','Ratnagiri','nikhil295@gmail.com',415612,'nik1','nikhil!'),(4,'Nikhil','Mangesh','Shirdhankar',9096546781,'Ratnagiri','Ratnagiri','Ratnagiri','nikhil295@gmail.com',415612,'nik12','nikhil!');
/*!40000 ALTER TABLE `cust_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_category`
--

DROP TABLE IF EXISTS `food_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_category` (
  `Cat_ID` int NOT NULL AUTO_INCREMENT,
  `Cat_Title` varchar(100) DEFAULT NULL,
  `Cat_Desc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Cat_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_category`
--

LOCK TABLES `food_category` WRITE;
/*!40000 ALTER TABLE `food_category` DISABLE KEYS */;
INSERT INTO `food_category` VALUES (1,'Pizza1','Pizza1'),(3,'Noodels','Noodels'),(4,'Burgers','Veg/NonVeg Burgers'),(5,'Frankie','Veg/NonVeg Frankies'),(6,'Rice','Rice'),(7,'Soup','Soup');
/*!40000 ALTER TABLE `food_category` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_details`
--

LOCK TABLES `food_details` WRITE;
/*!40000 ALTER TABLE `food_details` DISABLE KEYS */;
INSERT INTO `food_details` VALUES (1,'Pepperoni Pizza',1,'Veg Pepperoni Pizza with toppings','~/Styles/small/1tgbtrgr.jpg','~/Styles/small/1tgbtrgr.jpg',120,2000,NULL),(2,'Tripple Rice',6,'Veg Tripple rice','~/Styles/small/chrome_w2YxVXZhXB.jpg','~/Styles/small/chrome_w2YxVXZhXB.jpg',89,50,NULL),(3,'Soup',1,'Veg Soup','~/Styles/small/chrome_9X4pRrrX7I.jpg','~/Styles/large/chrome_n03LQ3BMNK.jpg',70,60,NULL),(4,'Rolls',5,'Cheese Rolls','~/Styles/small/chrome_La0953cWEu.jpg','~/Styles/large/chrome_n03LQ3BMNK.jpg',80,90,NULL),(6,'Hakka Noodels',3,'Noodels','~/Styles/small/ferferf.jpg','',80,100,'Admin'),(7,'Tomato Soup',7,'Soup','119547073_770497607122555_3377064877914460649_n.jpg','',100,70,'Admin'),(8,'Corn Pizza',1,'Veg Pizza','~/Styles/small/italian chicken  pizza2.jpg','~/Styles/large/italian chicken  pizza2.jpg',80,70,'Admin'),(9,'Club House Pizza',1,'Non Veg Pizza','~/Styles/small/maxresdefault.jpg','~/Styles/large/maxresdefault.jpg',140,120,'Admin'),(10,'Mexican Pizza',1,'Veg Pizza','~/Styles/small/download.jpeg','~/Styles/large/download.jpeg',120,120,'Admin'),(11,'Chicken Overload',1,'Non Veg Pizza','~/Styles/small/veg-pizza.jpeg','~/Styles/large/veg-pizza.jpeg',150,160,'Admin'),(12,'Hong Kong Noodels',3,'Veg Noodels','~/Styles/small/Soy-Sauce-Noodles_2.jpg','~/Styles/large/Soy-Sauce-Noodles_2.jpg',100,90,'Admin'),(13,'Korean Noodles',3,'Veg Noodels','~/Styles/small/OB7S7ZQJAVDRFGVXYHMD3FUS2Y.jpg','~/Styles/small/OB7S7ZQJAVDRFGVXYHMD3FUS2Y.jpg',130,110,'Admin'),(14,'Sliced Noodles',3,'Non Veg Noodles ','~/Styles/small/stir-fried-eggs-tomato.jpg','~/Styles/large/stir-fried-eggs-tomato.jpg',120,100,'Admin'),(15,'Cheese Burger',4,'burger with Cheese on topping','~/Styles/small/omlet  sandwich2.jpg','~/Styles/large/omlet  sandwich2.jpg',90,100,'Admin'),(16,'Chicken Burger',4,'Chicken Toppings','~/Styles/small/ymchbrgr.jpg','~/Styles/large/ymchbrgr.jpg',140,130,'Admin'),(31,'TestFood',1,'Cheese Rolls','~/Styles/small/hello world.txt','~/Styles/large/119547073_770497607122555_3377064877914460649_n.jpg',12,100,'Admin');
/*!40000 ALTER TABLE `food_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_table`
--

DROP TABLE IF EXISTS `new_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_table` (
  `Order_Detail_Id` int NOT NULL AUTO_INCREMENT,
  `Order_Id` int DEFAULT NULL,
  `Item_Code` int DEFAULT NULL,
  `Item_Name` varchar(45) DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Total` int DEFAULT NULL,
  `User_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Order_Detail_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_table`
--

LOCK TABLES `new_table` WRITE;
/*!40000 ALTER TABLE `new_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order1`
--

DROP TABLE IF EXISTS `order1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order1` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `Date_Created` datetime DEFAULT NULL,
  `Date_Shipped` datetime DEFAULT NULL,
  `Verified` tinyint DEFAULT '0',
  `Dilivery_Status` tinyint DEFAULT '0',
  `Payment_Dilevery_Status` tinyint DEFAULT '0',
  `Completed` tinyint DEFAULT '0',
  `Cancled` tinyint DEFAULT '0',
  `Comment` varchar(100) DEFAULT NULL,
  `Coustmer_Name` varchar(250) DEFAULT NULL,
  `Coustmer_Email` varchar(100) DEFAULT NULL,
  `Shipping_Adress` varchar(250) DEFAULT NULL,
  `Pin` int DEFAULT NULL,
  `User_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order1`
--

LOCK TABLES `order1` WRITE;
/*!40000 ALTER TABLE `order1` DISABLE KEYS */;
INSERT INTO `order1` VALUES (1,'2020-11-23 00:00:00',NULL,1,1,1,1,0,NULL,'Nikhil Mangesh Shirdhankar','nikhil295@gmail.com','tttt',415612,'nik1'),(2,'2020-11-23 00:00:00',NULL,1,1,0,0,1,NULL,'Nikhil Mangesh Shirdhankar','nikhil295@gmail.com','fdfdf',415612,'nik1'),(3,'2020-11-23 00:00:00',NULL,0,0,0,0,0,NULL,'Nikhil Mangesh Shirdhankar','nikhil295@gmail.com','ewew',415612,'nik1'),(4,'2020-11-23 00:00:00',NULL,0,0,0,0,0,NULL,'Nikhil Mangesh Shirdhankar','nikhil295@gmail.com','ffdsd',415612,'nik1'),(5,'2020-12-02 00:00:00',NULL,0,0,0,0,0,NULL,'Nikhil Mangesh Shirdhankar','nikhil295@gmail.com','Ratnagiri',415612,'nik1');
/*!40000 ALTER TABLE `order1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `Order_Detail_Id` int NOT NULL AUTO_INCREMENT,
  `Order_Id` int DEFAULT NULL,
  `Item_Code` int DEFAULT NULL,
  `Item_Name` varchar(45) DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Total` int DEFAULT NULL,
  `User_Name` varchar(45) DEFAULT NULL,
  `Owner` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Order_Detail_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (9,4,9,'Club House Pizza',1,140,140,'nik1',''),(10,4,11,'Chicken Overload',1,150,150,'nik1',''),(11,4,4,'Rolls',1,80,80,'nik1',''),(12,4,8,'Corn Pizza',1,80,80,'nik1','Admin'),(13,5,1,'Pepperoni Pizza',1,120,120,'nik1',''),(14,5,10,'Mexican Pizza',4,120,480,'nik1','Admin');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_cart`
--

DROP TABLE IF EXISTS `shop_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_cart` (
  `Shop_Cart_ID` int NOT NULL AUTO_INCREMENT,
  `Item_Code` int DEFAULT NULL,
  `Item_Name` varchar(45) DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Tran_Date` datetime DEFAULT NULL,
  `Total` int DEFAULT NULL,
  `User_Name_1` varchar(50) DEFAULT NULL,
  `Owner` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Shop_Cart_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_cart`
--

LOCK TABLES `shop_cart` WRITE;
/*!40000 ALTER TABLE `shop_cart` DISABLE KEYS */;
INSERT INTO `shop_cart` VALUES (1,1,'Pepperoni Pizza',8,120,'2020-09-17 00:00:00',960,'Cust1',NULL),(2,8,'Corn Pizza',2,80,'2020-09-17 00:00:00',160,'Cust1',NULL),(7,31,'TestFood',1,12,'2020-09-20 00:00:00',12,'Cust1',NULL),(8,7,'Tomato Soup',1,100,'2020-09-20 00:00:00',100,'Cust1',NULL),(9,2,'Tripple Rice',2,89,'2020-09-20 00:00:00',178,'Cust1',NULL),(10,4,'Rolls',1,80,'2020-09-20 00:00:00',80,'Cust1',NULL),(11,9,'Club House Pizza',1,140,'2020-09-20 00:00:00',140,'Cust1',NULL),(12,13,'Korean Noodles',1,130,'2020-09-27 00:00:00',130,'Cust1',NULL),(15,1,'Pepperoni Pizza',7,120,'2020-11-23 00:00:00',840,'Admin',NULL),(16,9,'Club House Pizza',1,140,'2020-11-23 00:00:00',140,'Admin',NULL),(17,11,'Chicken Overload',1,150,'2020-11-23 00:00:00',150,'Admin',NULL),(28,1,'Pepperoni Pizza',1,120,'2020-12-02 00:00:00',120,'nik12',''),(29,9,'Club House Pizza',1,140,'2020-12-02 00:00:00',140,'nik12','Admin'),(30,11,'Chicken Overload',1,150,'2020-12-02 00:00:00',150,'nik12','Admin'),(31,1,'Pepperoni Pizza',1,120,'2020-12-02 00:00:00',120,'nik1',''),(32,9,'Club House Pizza',1,140,'2020-12-02 00:00:00',140,'nik1','Admin');
/*!40000 ALTER TABLE `shop_cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-02 23:06:06
