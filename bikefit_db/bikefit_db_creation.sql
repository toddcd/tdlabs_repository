-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: bikefit
-- ------------------------------------------------------
-- Server version	8.0.12

CREATE DATABASE `bikefit` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE bikefit;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bike`
--

DROP TABLE IF EXISTS `bike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bike` (
  `bike_id` int(11) NOT NULL AUTO_INCREMENT,
  `make` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `size_varchar` varchar(45) DEFAULT NULL,
  `size_int` varchar(45) DEFAULT NULL,
  `reach` int(11) DEFAULT NULL,
  `top_tube_horizontal` int(11) DEFAULT NULL,
  `head_tube_length` int(11) DEFAULT NULL,
  `head_tube_angle` double DEFAULT NULL,
  `seat_tube_length` int(11) DEFAULT NULL,
  `seat_tube_angle` double DEFAULT NULL,
  `stack` int(11) DEFAULT NULL,
  `wheelbase` int(11) DEFAULT NULL,
  `chainstay` int(11) DEFAULT NULL,
  `front_center` int(11) DEFAULT NULL,
  `bb_drop` int(11) DEFAULT NULL,
  `bb_height` int(11) DEFAULT NULL,
  `standover` int(11) DEFAULT NULL,
  `fork_length` int(11) DEFAULT NULL,
  `trail` int(11) DEFAULT NULL,
  PRIMARY KEY (`bike_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bike`
--

LOCK TABLES `bike` WRITE;
/*!40000 ALTER TABLE `bike` DISABLE KEYS */;
INSERT INTO `bike` VALUES (1,'Felt','F30X',2018,NULL,'57',406,580,170,72,570,73.5,587,1048,430,626,65,NULL,815,393,NULL),(2,'Felt','F30X',2018,NULL,'60',420,600,190,72,590,73.5,607,1068,430,647,65,NULL,834,393,NULL),(4,'Felt','F30X',2018,NULL,'55',397,565,150,72,550,73.5,568,1033,430,611,65,NULL,796,393,NULL),(5,'Specialized','Crux',2016,NULL,'56',384,559,155,72,560,73.25,583,1022,425,606,69,NULL,350,400,NULL),(6,'Specialized','Crux',2016,NULL,'58',387,569,170,72.5,580,73,597,1025,425,609,67,NULL,350,400,NULL),(7,'Specialized','Crux',2016,NULL,'61',392,587,190,73,610,72.5,618,1031,425,615,67,NULL,350,400,NULL);
/*!40000 ALTER TABLE `bike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `position` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(45) DEFAULT NULL,
  `position_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bike_id` int(11) DEFAULT NULL,
  `saddle_height` int(11) DEFAULT NULL,
  `saddle_setback` int(11) DEFAULT NULL,
  `handlebar_drop` int(11) DEFAULT NULL,
  `saddle_to_handlebar` int(11) DEFAULT NULL,
  `saddle_to_hood` int(11) DEFAULT NULL,
  `stem_make` varchar(45) DEFAULT NULL,
  `stem_length` int(11) DEFAULT NULL,
  `stem_angle` double DEFAULT NULL,
  `seatpost_make` varchar(45) DEFAULT NULL,
  `seatpost_size` int(11) DEFAULT NULL,
  `seatpost_setback` int(11) DEFAULT NULL,
  `handlebar_make` varchar(45) DEFAULT NULL,
  `handlebar_width` int(11) DEFAULT NULL,
  `handlebar_clampsize` int(11) DEFAULT NULL,
  `handlebar_bend` varchar(10) DEFAULT NULL,
  `saddle_make` varchar(45) DEFAULT NULL,
  `saddle_width` int(11) DEFAULT NULL,
  `crank_make` varchar(45) DEFAULT NULL,
  `crank_length` int(11) DEFAULT NULL,
  `crank_qfactor` int(11) DEFAULT NULL,
  PRIMARY KEY (`position_id`),
  KEY `fk_position_user_id_idx` (`user_id`),
  KEY `fk_position_bike_id_idx` (`bike_id`),
  CONSTRAINT `fk_position_bike_id` FOREIGN KEY (`bike_id`) REFERENCES `bike` (`bike_id`),
  CONSTRAINT `fk_position_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Cyclocross Setup','2013-10-31 00:00:00',1,6,805,100,805,575,NULL,NULL,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Road Setup','2016-04-30 00:00:00',1,6,800,100,100,605,NULL,NULL,120,6,NULL,NULL,NULL,NULL,440,NULL,NULL,NULL,NULL,NULL,175,NULL);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `inseam` int(11) DEFAULT NULL,
  `reach` int(11) DEFAULT NULL,
  `usercol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Todd','Davis','C','M',73,NULL,NULL,NULL),(2,'Ali','Basye','K','F',NULL,NULL,NULL,NULL),(3,'Anthony','Dickson',NULL,'M',NULL,NULL,NULL,NULL),(4,'Kenneth','Rizer',NULL,'M',NULL,NULL,NULL,NULL),(8,'Tim','Farrel',NULL,'M',70,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-24 12:54:32
