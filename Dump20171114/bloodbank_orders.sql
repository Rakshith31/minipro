CREATE DATABASE  IF NOT EXISTS `bloodbank` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bloodbank`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bloodbank
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `Ord_no` int(4) NOT NULL AUTO_INCREMENT,
  `Ord_date` date DEFAULT NULL,
  `Btype` char(3) DEFAULT NULL,
  `Quantity` float DEFAULT NULL,
  `HID` char(4) DEFAULT NULL,
  PRIMARY KEY (`Ord_no`),
  KEY `btyp_fk` (`Btype`),
  KEY `hid1_fk` (`HID`),
  CONSTRAINT `btyp_fk` FOREIGN KEY (`Btype`) REFERENCES `blood` (`Btype`),
  CONSTRAINT `hid1_fk` FOREIGN KEY (`HID`) REFERENCES `hospital` (`HID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`Ord_no`, `Ord_date`, `Btype`, `Quantity`, `HID`) VALUES (5,'2017-11-12','O+',350,'H10'),(7,'2017-11-12','o+',250,'H10'),(8,'2017-11-12','o+',250,'H10'),(9,'2017-11-12','A+',450,'H11'),(10,'2017-11-12','ab+',500,'H12'),(11,'2017-11-13','B-',500,'H10'),(12,'2017-11-13','A+',500,'H11'),(13,'2017-11-13','o+',450,'H10'),(14,'2017-11-13','o+',450,'H10'),(15,'2017-11-13','ab+',450,'H10');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-14  5:26:09
