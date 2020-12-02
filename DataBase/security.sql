-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: security_fast_food
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
-- Table structure for table `my_aspnet_applications`
--

DROP TABLE IF EXISTS `my_aspnet_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_applications`
--

LOCK TABLES `my_aspnet_applications` WRITE;
/*!40000 ALTER TABLE `my_aspnet_applications` DISABLE KEYS */;
INSERT INTO `my_aspnet_applications` VALUES (1,'/','MySQL Role provider');
/*!40000 ALTER TABLE `my_aspnet_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_membership`
--

DROP TABLE IF EXISTS `my_aspnet_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_membership` (
  `userId` int NOT NULL,
  `Email` varchar(128) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `Password` varchar(128) NOT NULL,
  `PasswordKey` char(32) DEFAULT NULL,
  `PasswordFormat` tinyint DEFAULT NULL,
  `PasswordQuestion` varchar(255) DEFAULT NULL,
  `PasswordAnswer` varchar(255) DEFAULT NULL,
  `IsApproved` tinyint(1) DEFAULT NULL,
  `LastActivityDate` datetime DEFAULT NULL,
  `LastLoginDate` datetime DEFAULT NULL,
  `LastPasswordChangedDate` datetime DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `IsLockedOut` tinyint(1) DEFAULT NULL,
  `LastLockedOutDate` datetime DEFAULT NULL,
  `FailedPasswordAttemptCount` int unsigned DEFAULT NULL,
  `FailedPasswordAttemptWindowStart` datetime DEFAULT NULL,
  `FailedPasswordAnswerAttemptCount` int unsigned DEFAULT NULL,
  `FailedPasswordAnswerAttemptWindowStart` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_membership`
--

LOCK TABLES `my_aspnet_membership` WRITE;
/*!40000 ALTER TABLE `my_aspnet_membership` DISABLE KEYS */;
INSERT INTO `my_aspnet_membership` VALUES (1,'nikhil295@gmail.com','','cNBUXz25pET77QfXPmOpH57zTf3pCPRe5j6K58wTbSg=','fyLpwSmkiKJqEv6d5YsDiw==',1,'1','g13vr4zB9maBrPOPWMKDTy74kIMnt0feEeeBDf+gBJQ=',1,'2020-12-02 17:38:10','2020-12-02 17:38:10','2020-12-02 17:29:44','2020-12-02 17:29:44',0,'2020-12-02 17:29:44',0,'2020-12-02 17:29:44',0,'2020-12-02 17:29:44'),(2,'nikhil295@gmail.com','','Lh7hCyafVCsv6Q0mVDDUMrkRroElj3kyPkgVatzIZwE=','vFG/M8tkdmdP9dNXkfpEFA==',1,'1','tiovs4GqD4OYuE6Yzdosf1DUmxblAdIvNlmnxKmyU4Y=',1,'2020-12-02 22:30:20','2020-12-02 22:30:20','2020-12-02 22:29:46','2020-12-02 17:30:12',0,'2020-12-02 17:30:12',2,'2020-12-02 22:21:01',1,'2020-12-02 20:47:27'),(3,'nikhil295@gmail.com','','UbHDh+oOwN0eRGOHcgGAhpynl9bAVY/d5hs67w9bkN8=','vT46rpHk119Y+zR7HBDh5w==',1,'1','cvW0GUpNawq4P9n/lhOyrK0FKpLPxe/SqNpocHUT5Ik=',1,'2020-12-02 22:47:28','2020-12-02 22:47:28','2020-12-02 17:37:24','2020-12-02 17:37:24',0,'2020-12-02 17:37:24',0,'2020-12-02 17:37:24',0,'2020-12-02 17:37:24'),(4,'nikhil295@gmail.com','','WiwD9LBYZ3aKHpv0GyTvQN1NaBHnW4TPLgCwbLJk/9M=','ikNcJvMNtPS+JTX6zBi+mQ==',1,'Your pet name?','Z3n90Zyf/y/7flccEZZbqby5aTn0u3gyHYU20J0/2i4=',1,'2020-12-02 22:42:49','2020-12-02 22:42:49','2020-12-02 22:42:49','2020-12-02 22:42:49',0,'2020-12-02 22:42:49',0,'2020-12-02 22:42:49',0,'2020-12-02 22:42:49');
/*!40000 ALTER TABLE `my_aspnet_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_paths`
--

DROP TABLE IF EXISTS `my_aspnet_paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_paths` (
  `applicationId` int NOT NULL,
  `pathId` varchar(36) NOT NULL,
  `path` varchar(256) NOT NULL,
  `loweredPath` varchar(256) NOT NULL,
  PRIMARY KEY (`pathId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_paths`
--

LOCK TABLES `my_aspnet_paths` WRITE;
/*!40000 ALTER TABLE `my_aspnet_paths` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_paths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_personalizationallusers`
--

DROP TABLE IF EXISTS `my_aspnet_personalizationallusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_personalizationallusers` (
  `pathId` varchar(36) NOT NULL,
  `pageSettings` blob NOT NULL,
  `lastUpdatedDate` datetime NOT NULL,
  PRIMARY KEY (`pathId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_personalizationallusers`
--

LOCK TABLES `my_aspnet_personalizationallusers` WRITE;
/*!40000 ALTER TABLE `my_aspnet_personalizationallusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_personalizationallusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_personalizationperuser`
--

DROP TABLE IF EXISTS `my_aspnet_personalizationperuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_personalizationperuser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `applicationId` int NOT NULL,
  `pathId` varchar(36) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `pageSettings` blob NOT NULL,
  `lastUpdatedDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_personalizationperuser`
--

LOCK TABLES `my_aspnet_personalizationperuser` WRITE;
/*!40000 ALTER TABLE `my_aspnet_personalizationperuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_personalizationperuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_profiles`
--

DROP TABLE IF EXISTS `my_aspnet_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_profiles` (
  `userId` int NOT NULL,
  `valueindex` longtext,
  `stringdata` longtext,
  `binarydata` longblob,
  `lastUpdatedDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_profiles`
--

LOCK TABLES `my_aspnet_profiles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_roles`
--

DROP TABLE IF EXISTS `my_aspnet_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `applicationId` int NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_roles`
--

LOCK TABLES `my_aspnet_roles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_roles` DISABLE KEYS */;
INSERT INTO `my_aspnet_roles` VALUES (1,1,'Sadmin'),(2,1,'Admin'),(3,1,'Customer');
/*!40000 ALTER TABLE `my_aspnet_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_schemaversion`
--

DROP TABLE IF EXISTS `my_aspnet_schemaversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_schemaversion` (
  `version` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_schemaversion`
--

LOCK TABLES `my_aspnet_schemaversion` WRITE;
/*!40000 ALTER TABLE `my_aspnet_schemaversion` DISABLE KEYS */;
INSERT INTO `my_aspnet_schemaversion` VALUES (10);
/*!40000 ALTER TABLE `my_aspnet_schemaversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_sessioncleanup`
--

DROP TABLE IF EXISTS `my_aspnet_sessioncleanup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_sessioncleanup` (
  `LastRun` datetime NOT NULL,
  `IntervalMinutes` int NOT NULL,
  `ApplicationId` int NOT NULL,
  PRIMARY KEY (`ApplicationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_sessioncleanup`
--

LOCK TABLES `my_aspnet_sessioncleanup` WRITE;
/*!40000 ALTER TABLE `my_aspnet_sessioncleanup` DISABLE KEYS */;
INSERT INTO `my_aspnet_sessioncleanup` VALUES ('2020-12-02 22:47:12',10,1);
/*!40000 ALTER TABLE `my_aspnet_sessioncleanup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_sessions`
--

DROP TABLE IF EXISTS `my_aspnet_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_sessions` (
  `SessionId` varchar(191) NOT NULL,
  `ApplicationId` int NOT NULL,
  `Created` datetime NOT NULL,
  `Expires` datetime NOT NULL,
  `LockDate` datetime NOT NULL,
  `LockId` int NOT NULL,
  `Timeout` int NOT NULL,
  `Locked` tinyint(1) NOT NULL,
  `SessionItems` longblob,
  `Flags` int NOT NULL,
  PRIMARY KEY (`SessionId`,`ApplicationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_sessions`
--

LOCK TABLES `my_aspnet_sessions` WRITE;
/*!40000 ALTER TABLE `my_aspnet_sessions` DISABLE KEYS */;
INSERT INTO `my_aspnet_sessions` VALUES ('15ib4b3jn1dfixmfhtinl0c3',1,'2020-12-02 22:50:34','2020-12-02 23:10:59','2020-12-02 22:50:59',12,20,0,_binary '\0\0\0ÿÿÿÿcuserabc\0\0\0\0\0\0nik1260',0),('4v1gcyena1uskxzorxvudhz1',1,'2020-12-02 22:26:40','2020-12-02 22:47:18','2020-12-02 22:27:18',3,20,0,NULL,0),('cmyoij4qbyallpoh4n2mvhkm',1,'2020-12-02 22:28:23','2020-12-02 22:48:23','2020-12-02 22:28:23',1,20,0,NULL,0),('eqkbtdm5ejso54vrxh5djda0',1,'2020-12-02 22:40:50','2020-12-02 23:03:12','2020-12-02 22:43:12',16,20,0,_binary '\0\0\0ÿÿÿÿcuserabc\0\0\0\0\0\0nik12410',0),('fdp01ndu5x3z54g2lfhsiyag',1,'2020-12-02 22:48:13','2020-12-02 23:08:19','2020-12-02 22:48:19',3,20,0,_binary '\0\0\0ÿÿÿÿcuser\0\0\0nik1',0),('l21w4t1dpoeiuko1zau1b3wm',1,'2020-12-02 22:29:29','2020-12-02 22:49:47','2020-12-02 22:29:47',3,20,0,NULL,0),('n3yydthigfc2mcraoeqxekgx',1,'2020-12-02 22:47:13','2020-12-02 23:07:33','2020-12-02 22:47:33',10,20,0,_binary '\0\0\0ÿÿÿÿcuser\0\0\0nik1',0),('ptpocejexkafjytrowofdpli',1,'2020-12-02 22:36:19','2020-12-02 22:56:26','2020-12-02 22:36:26',5,20,0,NULL,0),('qrld5fenk4clfgkclhuibr3r',1,'2020-12-02 22:36:54','2020-12-02 22:57:05','2020-12-02 22:37:05',5,20,0,NULL,0),('tlzfwzxcyb2sks4w4fnsg5y0',1,'2020-12-02 22:28:40','2020-12-02 22:48:53','2020-12-02 22:28:53',2,20,0,NULL,0),('v123attgsquv2lmhmyz3pwap',1,'2020-12-02 22:38:21','2020-12-02 22:58:39','2020-12-02 22:38:39',9,20,0,NULL,0),('vo3e1x0rxdrhra3zbu3sbdhx',1,'2020-12-02 22:29:08','2020-12-02 22:49:09','2020-12-02 22:29:08',1,20,0,NULL,0),('ynkpfzqhpt1wlrq51p5bk2da',1,'2020-12-02 22:30:03','2020-12-02 22:50:19','2020-12-02 22:30:19',10,20,0,NULL,0),('znthmvbid4jfmchzt5cxxenq',1,'2020-12-02 22:43:34','2020-12-02 23:03:35','2020-12-02 22:43:34',1,20,0,NULL,0);
/*!40000 ALTER TABLE `my_aspnet_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_sitemap`
--

DROP TABLE IF EXISTS `my_aspnet_sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_sitemap` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) DEFAULT NULL,
  `Description` varchar(512) DEFAULT NULL,
  `Url` varchar(512) DEFAULT NULL,
  `Roles` varchar(1000) DEFAULT NULL,
  `ParentId` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_sitemap`
--

LOCK TABLES `my_aspnet_sitemap` WRITE;
/*!40000 ALTER TABLE `my_aspnet_sitemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_sitemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_users`
--

DROP TABLE IF EXISTS `my_aspnet_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `applicationId` int NOT NULL,
  `name` varchar(256) NOT NULL,
  `isAnonymous` tinyint(1) NOT NULL DEFAULT '1',
  `lastActivityDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_users`
--

LOCK TABLES `my_aspnet_users` WRITE;
/*!40000 ALTER TABLE `my_aspnet_users` DISABLE KEYS */;
INSERT INTO `my_aspnet_users` VALUES (1,1,'Admin',0,'2020-12-02 17:38:10'),(2,1,'Sadmin',0,'2020-12-02 22:30:20'),(3,1,'nik1',0,'2020-12-02 22:47:28'),(4,1,'nik12',0,'2020-12-02 22:42:49');
/*!40000 ALTER TABLE `my_aspnet_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_usersinroles`
--

DROP TABLE IF EXISTS `my_aspnet_usersinroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_usersinroles` (
  `userId` int NOT NULL,
  `roleId` int NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_usersinroles`
--

LOCK TABLES `my_aspnet_usersinroles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_usersinroles` DISABLE KEYS */;
INSERT INTO `my_aspnet_usersinroles` VALUES (1,2),(2,1),(3,3),(4,3);
/*!40000 ALTER TABLE `my_aspnet_usersinroles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-02 23:03:20
