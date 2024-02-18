-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: grocer
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
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `PurchaseId` int NOT NULL,
  `ProductNumber` int DEFAULT NULL,
  `VendorId` int DEFAULT NULL,
  `Cost` decimal(5,2) DEFAULT NULL,
  `PurchaseDate` datetime DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`PurchaseId`),
  KEY `ProductNumber_idx` (`ProductNumber`),
  KEY `VendorId_idx` (`VendorId`),
  CONSTRAINT `ProductNumber` FOREIGN KEY (`ProductNumber`) REFERENCES `product` (`ProductNumber`),
  CONSTRAINT `VendorId` FOREIGN KEY (`VendorId`) REFERENCES `vendor` (`VendorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES (110,1000,101,2.35,'2022-02-01 00:00:00',25),(111,1100,102,0.69,'2022-02-02 00:00:00',40),(112,1222,102,0.59,'2022-02-10 00:00:00',40),(113,1223,102,1.75,'2022-02-10 00:00:00',10),(114,1224,102,0.65,'2022-02-10 00:00:00',30),(115,2000,103,1.29,'2022-02-12 00:00:00',25),(116,2001,103,2.19,'2022-02-12 00:00:00',20),(117,1223,102,1.80,'2022-02-15 00:00:00',10);
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-18 19:45:05
