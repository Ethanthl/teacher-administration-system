-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: teacher-administration-system
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `notification_message` varchar(10000) NOT NULL,
  `teacher_email` varchar(255) NOT NULL,
  PRIMARY KEY (`notification_id`),
  UNIQUE KEY `idnotification_UNIQUE` (`notification_id`),
  KEY `fk_notification_teacher1_idx` (`teacher_email`),
  CONSTRAINT `fk_notification_teacher1` FOREIGN KEY (`teacher_email`) REFERENCES `teacher` (`teacher_email`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'Hello students!','teacherken@gmail.com'),(2,'Hello students!','teacherken@gmail.com'),(3,'Hello students!','teacherken@gmail.com'),(5,'Hello students!','teacherken@gmail.com'),(7,'Hello students!','teacherken@gmail.com'),(9,'Hello students!','teacherken@gmail.com'),(11,'Hello students!','teacherken@gmail.com'),(15,'Hello students!','teacherken@gmail.com'),(18,'Hello students!','teacherken@gmail.com'),(20,'Hello students!','teacherken@gmail.com'),(21,'Hello students!','teacherken@gmail.com'),(23,'Hello students!','teacherken@gmail.com'),(25,'Hello students!','teacherken@gmail.com'),(27,'Hello students!','teacherken@gmail.com'),(29,'Hello students!','teacherken@gmail.com'),(31,'Hello students!','teacherken@gmail.com'),(33,'Hello students!','teacherken@gmail.com'),(35,'Hello students!','teacherken@gmail.com'),(37,'Hello students!','teacherken@gmail.com'),(39,'Hello students!','teacherken@gmail.com'),(41,'Hello students!','teacherken@gmail.com'),(43,'Hello students!','teacherken@gmail.com'),(45,'Hello students!','teacherken@gmail.com'),(47,'Hello students!','teacherken@gmail.com'),(49,'Hello students!','teacherken@gmail.com'),(51,'Hello students!','teacherken@gmail.com'),(53,'Hello students!','teacherken@gmail.com'),(55,'Hello students!','teacherken@gmail.com'),(57,'Hello students!','teacherken@gmail.com'),(59,'Hello students!','teacherken@gmail.com'),(61,'Hello students!','teacherken@gmail.com'),(63,'Hello students!','teacherken@gmail.com'),(65,'Hello students!','teacherken@gmail.com'),(67,'Hello students!','teacherken@gmail.com'),(69,'Hello students!','teacherken@gmail.com'),(71,'Hello students!','teacherken@gmail.com'),(73,'Hello students!','teacherken@gmail.com'),(75,'Hello students!','teacherken@gmail.com'),(77,'Hello students!','teacherken@gmail.com'),(79,'Hello students!','teacherken@gmail.com'),(81,'Hello students!','teacherken@gmail.com'),(83,'Hello students!','teacherken@gmail.com'),(85,'Hello students!','teacherken@gmail.com'),(87,'Hello students!','teacherken@gmail.com'),(89,'Hello students!','teacherken@gmail.com'),(91,'Hello students!','teacherken@gmail.com'),(93,'Hello students!','teacherken@gmail.com'),(95,'Hello students!','teacherken@gmail.com'),(97,'Hello students!','teacherken@gmail.com'),(99,'Hello students!','teacherken@gmail.com'),(101,'Hello students!','teacherken@gmail.com'),(103,'Hello students!','teacherken@gmail.com'),(105,'Hello students!','teacherken@gmail.com'),(107,'Hello students!','teacherken@gmail.com'),(109,'Hello students!','teacherken@gmail.com'),(111,'Hello students!','teacherken@gmail.com'),(113,'Hello students!','teacherken@gmail.com'),(115,'Hello students!','teacherken@gmail.com'),(117,'Hello students!','teacherken@gmail.com'),(119,'Hello students!','teacherken@gmail.com'),(121,'Hello students!','teacherken@gmail.com'),(123,'Hello students!','teacherken@gmail.com'),(125,'Hello students!','teacherken@gmail.com'),(127,'Hello students!','teacherken@gmail.com'),(129,'Hello students!','teacherken@gmail.com'),(131,'Hello students!','teacherken@gmail.com'),(133,'Hello students!','teacherken@gmail.com'),(135,'Hello students!','teacherken@gmail.com'),(137,'Hello students!','teacherken@gmail.com'),(139,'Hello students!','teacherken@gmail.com'),(141,'Hello students!','teacherken@gmail.com'),(143,'Hello students!','teacherken@gmail.com'),(145,'Hello students!','teacherken@gmail.com'),(147,'Hello students!','teacherken@gmail.com'),(149,'Hello students!','teacherken@gmail.com'),(151,'Hello students!','teacherken@gmail.com'),(153,'Hello students!','teacherken@gmail.com'),(155,'Hello students!','teacherken@gmail.com'),(157,'Hello students!','teacherken@gmail.com'),(159,'Hello students!','teacherken@gmail.com'),(161,'Hello students!','teacherken@gmail.com'),(163,'Hello students!','teacherken@gmail.com'),(165,'Hello students!','teacherken@gmail.com'),(167,'Hello students!','teacherken@gmail.com'),(169,'Hello students!','teacherken@gmail.com'),(171,'Hello students!','teacherken@gmail.com'),(173,'Hello students!','teacherken@gmail.com'),(175,'Hello students!','teacherken@gmail.com'),(177,'Hello students!','teacherken@gmail.com'),(179,'Hello students!','teacherken@gmail.com'),(181,'Hello students!','teacherken@gmail.com'),(183,'Hello students!','teacherken@gmail.com'),(185,'Hello students!','teacherken@gmail.com'),(187,'Hello students!','teacherken@gmail.com'),(189,'Hello students!','teacherken@gmail.com'),(191,'Hello students!','teacherken@gmail.com'),(193,'Hello students!','teacherken@gmail.com'),(201,'Hello students!','teacherken@gmail.com'),(202,'Hello students!','teacherken@gmail.com'),(203,'Hello students!','teacherken@gmail.com'),(204,'Hello students!','teacherken@gmail.com'),(205,'Hello students!','teacherken@gmail.com'),(206,'Hello students!','teacherken@gmail.com'),(207,'Hello students!','teacherken@gmail.com');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipient`
--

DROP TABLE IF EXISTS `recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipient` (
  `notification_id` int NOT NULL,
  `student_email` varchar(255) NOT NULL,
  PRIMARY KEY (`notification_id`,`student_email`),
  KEY `fk_notification_has_student_student1_idx` (`student_email`),
  KEY `fk_notification_has_student_notification1_idx` (`notification_id`),
  CONSTRAINT `fk_notification_has_student_notification1` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`notification_id`),
  CONSTRAINT `fk_notification_has_student_student1` FOREIGN KEY (`student_email`) REFERENCES `student` (`student_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipient`
--

LOCK TABLES `recipient` WRITE;
/*!40000 ALTER TABLE `recipient` DISABLE KEYS */;
INSERT INTO `recipient` VALUES (1,'studentagnes@gmail.com'),(1,'studentmiche@gmail.com'),(3,'studentagnes@gmail.com'),(3,'studentmiche@gmail.com'),(5,'studentagnes@gmail.com'),(5,'studentmiche@gmail.com'),(7,'studentagnes@gmail.com'),(7,'studentmiche@gmail.com'),(9,'studentagnes@gmail.com'),(9,'studentmiche@gmail.com'),(11,'studentagnes@gmail.com'),(11,'studentmiche@gmail.com'),(15,'studentagnes@gmail.com'),(15,'studentmiche@gmail.com'),(18,'studentagnes@gmail.com'),(18,'studentmiche@gmail.com'),(20,'studentagnes@gmail.com'),(20,'studentmiche@gmail.com'),(21,'studentagnes@gmail.com'),(21,'studentmiche@gmail.com'),(23,'studentagnes@gmail.com'),(23,'studentmiche@gmail.com'),(25,'studentagnes@gmail.com'),(25,'studentmiche@gmail.com'),(27,'studentagnes@gmail.com'),(27,'studentmiche@gmail.com'),(29,'studentagnes@gmail.com'),(29,'studentmiche@gmail.com'),(31,'studentagnes@gmail.com'),(31,'studentbob@gmail.com'),(31,'studentjon@gmail.com'),(31,'studentmiche@gmail.com'),(33,'studentagnes@gmail.com'),(33,'studentbob@gmail.com'),(33,'studentjon@gmail.com'),(33,'studentmiche@gmail.com'),(35,'studentagnes@gmail.com'),(35,'studentbob@gmail.com'),(35,'studentjon@gmail.com'),(35,'studentmiche@gmail.com'),(37,'studentagnes@gmail.com'),(37,'studentbob@gmail.com'),(37,'studentjon@gmail.com'),(37,'studentmiche@gmail.com'),(39,'studentagnes@gmail.com'),(39,'studentbob@gmail.com'),(39,'studentjon@gmail.com'),(39,'studentmiche@gmail.com'),(41,'studentagnes@gmail.com'),(41,'studentbob@gmail.com'),(41,'studentjon@gmail.com'),(41,'studentmiche@gmail.com'),(43,'studentagnes@gmail.com'),(43,'studentbob@gmail.com'),(43,'studentjon@gmail.com'),(43,'studentmiche@gmail.com'),(45,'studentagnes@gmail.com'),(45,'studentbob@gmail.com'),(45,'studentjon@gmail.com'),(45,'studentmiche@gmail.com'),(47,'studentagnes@gmail.com'),(47,'studentbob@gmail.com'),(47,'studentjon@gmail.com'),(47,'studentmiche@gmail.com'),(49,'studentagnes@gmail.com'),(49,'studentbob@gmail.com'),(49,'studentjon@gmail.com'),(49,'studentmiche@gmail.com'),(51,'studentagnes@gmail.com'),(51,'studentbob@gmail.com'),(51,'studentjon@gmail.com'),(51,'studentmiche@gmail.com'),(53,'studentagnes@gmail.com'),(53,'studentbob@gmail.com'),(53,'studentjon@gmail.com'),(53,'studentmiche@gmail.com'),(55,'studentagnes@gmail.com'),(55,'studentbob@gmail.com'),(55,'studentjon@gmail.com'),(55,'studentmiche@gmail.com'),(57,'studentagnes@gmail.com'),(57,'studentbob@gmail.com'),(57,'studentjon@gmail.com'),(57,'studentmiche@gmail.com'),(59,'studentagnes@gmail.com'),(59,'studentbob@gmail.com'),(59,'studentjon@gmail.com'),(59,'studentmiche@gmail.com'),(61,'studentagnes@gmail.com'),(61,'studentbob@gmail.com'),(61,'studentjon@gmail.com'),(61,'studentmiche@gmail.com'),(63,'studentagnes@gmail.com'),(63,'studentbob@gmail.com'),(63,'studentjon@gmail.com'),(63,'studentmiche@gmail.com'),(65,'studentagnes@gmail.com'),(65,'studentbob@gmail.com'),(65,'studentjon@gmail.com'),(65,'studentmiche@gmail.com'),(67,'studentagnes@gmail.com'),(67,'studentbob@gmail.com'),(67,'studentjon@gmail.com'),(67,'studentmiche@gmail.com'),(69,'studentagnes@gmail.com'),(69,'studentbob@gmail.com'),(69,'studentjon@gmail.com'),(69,'studentmiche@gmail.com'),(71,'studentagnes@gmail.com'),(71,'studentbob@gmail.com'),(71,'studentjon@gmail.com'),(71,'studentmiche@gmail.com'),(73,'studentagnes@gmail.com'),(73,'studentbob@gmail.com'),(73,'studentjon@gmail.com'),(73,'studentmiche@gmail.com'),(75,'studentagnes@gmail.com'),(75,'studentbob@gmail.com'),(75,'studentjon@gmail.com'),(75,'studentmiche@gmail.com'),(77,'studentagnes@gmail.com'),(77,'studentbob@gmail.com'),(77,'studentjon@gmail.com'),(77,'studentmiche@gmail.com'),(79,'studentagnes@gmail.com'),(79,'studentbob@gmail.com'),(79,'studentjon@gmail.com'),(79,'studentmiche@gmail.com'),(81,'studentagnes@gmail.com'),(81,'studentbob@gmail.com'),(81,'studentjon@gmail.com'),(81,'studentmiche@gmail.com'),(83,'studentagnes@gmail.com'),(83,'studentbob@gmail.com'),(83,'studentjon@gmail.com'),(83,'studentmiche@gmail.com'),(85,'studentagnes@gmail.com'),(85,'studentbob@gmail.com'),(85,'studentcharles@gmail.com'),(85,'studentjon@gmail.com'),(85,'studentmiche@gmail.com'),(85,'studentnic@gmail.com'),(87,'studentagnes@gmail.com'),(87,'studentbob@gmail.com'),(87,'studentcharles@gmail.com'),(87,'studentjon@gmail.com'),(87,'studentmiche@gmail.com'),(87,'studentnic@gmail.com'),(89,'studentagnes@gmail.com'),(89,'studentbob@gmail.com'),(89,'studentcharles@gmail.com'),(89,'studentjon@gmail.com'),(89,'studentmiche@gmail.com'),(89,'studentnic@gmail.com'),(91,'studentagnes@gmail.com'),(91,'studentbob@gmail.com'),(91,'studentcharles@gmail.com'),(91,'studentjon@gmail.com'),(91,'studentmiche@gmail.com'),(91,'studentnic@gmail.com'),(93,'studentagnes@gmail.com'),(93,'studentbob@gmail.com'),(93,'studentcharles@gmail.com'),(93,'studentjon@gmail.com'),(93,'studentmiche@gmail.com'),(93,'studentnic@gmail.com'),(95,'studentagnes@gmail.com'),(95,'studentbob@gmail.com'),(95,'studentcharles@gmail.com'),(95,'studentjon@gmail.com'),(95,'studentmiche@gmail.com'),(95,'studentnic@gmail.com'),(97,'studentagnes@gmail.com'),(97,'studentbob@gmail.com'),(97,'studentcharles@gmail.com'),(97,'studentjon@gmail.com'),(97,'studentmiche@gmail.com'),(97,'studentnic@gmail.com'),(99,'studentagnes@gmail.com'),(99,'studentbob@gmail.com'),(99,'studentcharles@gmail.com'),(99,'studentjon@gmail.com'),(99,'studentmiche@gmail.com'),(99,'studentnic@gmail.com'),(101,'studentagnes@gmail.com'),(101,'studentbob@gmail.com'),(101,'studentcharles@gmail.com'),(101,'studentjon@gmail.com'),(101,'studentmiche@gmail.com'),(101,'studentnic@gmail.com'),(103,'studentagnes@gmail.com'),(103,'studentbob@gmail.com'),(103,'studentcharles@gmail.com'),(103,'studentjon@gmail.com'),(103,'studentmiche@gmail.com'),(103,'studentnic@gmail.com'),(105,'studentagnes@gmail.com'),(105,'studentbob@gmail.com'),(105,'studentcharles@gmail.com'),(105,'studentjon@gmail.com'),(105,'studentmiche@gmail.com'),(105,'studentnic@gmail.com'),(107,'studentagnes@gmail.com'),(107,'studentbob@gmail.com'),(107,'studentcharles@gmail.com'),(107,'studentjon@gmail.com'),(107,'studentmiche@gmail.com'),(107,'studentnic@gmail.com'),(109,'studentagnes@gmail.com'),(109,'studentbob@gmail.com'),(109,'studentcharles@gmail.com'),(109,'studentjon@gmail.com'),(109,'studentmiche@gmail.com'),(109,'studentnic@gmail.com'),(111,'studentagnes@gmail.com'),(111,'studentbob@gmail.com'),(111,'studentcharles@gmail.com'),(111,'studentjon@gmail.com'),(111,'studentmiche@gmail.com'),(111,'studentnic@gmail.com'),(113,'studentagnes@gmail.com'),(113,'studentbob@gmail.com'),(113,'studentcharles@gmail.com'),(113,'studentjon@gmail.com'),(113,'studentmiche@gmail.com'),(113,'studentnic@gmail.com'),(115,'studentagnes@gmail.com'),(115,'studentbob@gmail.com'),(115,'studentcharles@gmail.com'),(115,'studentjon@gmail.com'),(115,'studentmiche@gmail.com'),(115,'studentnic@gmail.com'),(117,'studentagnes@gmail.com'),(117,'studentbob@gmail.com'),(117,'studentcharles@gmail.com'),(117,'studentjon@gmail.com'),(117,'studentmiche@gmail.com'),(117,'studentnic@gmail.com'),(119,'studentagnes@gmail.com'),(119,'studentbob@gmail.com'),(119,'studentcharles@gmail.com'),(119,'studentjon@gmail.com'),(119,'studentmiche@gmail.com'),(119,'studentnic@gmail.com'),(121,'studentagnes@gmail.com'),(121,'studentbob@gmail.com'),(121,'studentcharles@gmail.com'),(121,'studentjon@gmail.com'),(121,'studentmiche@gmail.com'),(121,'studentnic@gmail.com'),(123,'studentagnes@gmail.com'),(123,'studentbob@gmail.com'),(123,'studentcharles@gmail.com'),(123,'studentjon@gmail.com'),(123,'studentmiche@gmail.com'),(123,'studentnic@gmail.com'),(125,'studentagnes@gmail.com'),(125,'studentbob@gmail.com'),(125,'studentcharles@gmail.com'),(125,'studentjon@gmail.com'),(125,'studentmiche@gmail.com'),(125,'studentnic@gmail.com'),(127,'studentagnes@gmail.com'),(127,'studentbob@gmail.com'),(127,'studentcharles@gmail.com'),(127,'studentjon@gmail.com'),(127,'studentmiche@gmail.com'),(127,'studentnic@gmail.com'),(129,'studentagnes@gmail.com'),(129,'studentbob@gmail.com'),(129,'studentcharles@gmail.com'),(129,'studentjon@gmail.com'),(129,'studentmiche@gmail.com'),(129,'studentnic@gmail.com'),(131,'studentagnes@gmail.com'),(131,'studentbob@gmail.com'),(131,'studentcharles@gmail.com'),(131,'studentjon@gmail.com'),(131,'studentmiche@gmail.com'),(131,'studentnic@gmail.com'),(133,'studentagnes@gmail.com'),(133,'studentbob@gmail.com'),(133,'studentcharles@gmail.com'),(133,'studentjon@gmail.com'),(133,'studentmiche@gmail.com'),(133,'studentnic@gmail.com'),(135,'studentagnes@gmail.com'),(135,'studentbob@gmail.com'),(135,'studentcharles@gmail.com'),(135,'studentjon@gmail.com'),(135,'studentmiche@gmail.com'),(135,'studentnic@gmail.com'),(137,'studentagnes@gmail.com'),(137,'studentbob@gmail.com'),(137,'studentcharles@gmail.com'),(137,'studentjon@gmail.com'),(137,'studentmiche@gmail.com'),(137,'studentnic@gmail.com'),(139,'studentagnes@gmail.com'),(139,'studentbob@gmail.com'),(139,'studentcharles@gmail.com'),(139,'studentjon@gmail.com'),(139,'studentmiche@gmail.com'),(139,'studentnic@gmail.com'),(141,'studentagnes@gmail.com'),(141,'studentbob@gmail.com'),(141,'studentcharles@gmail.com'),(141,'studentjon@gmail.com'),(141,'studentmiche@gmail.com'),(141,'studentnic@gmail.com'),(143,'studentagnes@gmail.com'),(143,'studentbob@gmail.com'),(143,'studentcharles@gmail.com'),(143,'studentjon@gmail.com'),(143,'studentmiche@gmail.com'),(143,'studentnic@gmail.com'),(145,'studentagnes@gmail.com'),(145,'studentbob@gmail.com'),(145,'studentcharles@gmail.com'),(145,'studentjon@gmail.com'),(145,'studentmiche@gmail.com'),(145,'studentnic@gmail.com'),(147,'studentagnes@gmail.com'),(147,'studentbob@gmail.com'),(147,'studentcharles@gmail.com'),(147,'studentjon@gmail.com'),(147,'studentmiche@gmail.com'),(147,'studentnic@gmail.com'),(149,'studentagnes@gmail.com'),(149,'studentbob@gmail.com'),(149,'studentcharles@gmail.com'),(149,'studentjon@gmail.com'),(149,'studentmiche@gmail.com'),(149,'studentnic@gmail.com'),(151,'studentagnes@gmail.com'),(151,'studentbob@gmail.com'),(151,'studentcharles@gmail.com'),(151,'studentjon@gmail.com'),(151,'studentmiche@gmail.com'),(151,'studentnic@gmail.com'),(153,'studentagnes@gmail.com'),(153,'studentbob@gmail.com'),(153,'studentcharles@gmail.com'),(153,'studentjon@gmail.com'),(153,'studentmiche@gmail.com'),(153,'studentnic@gmail.com'),(155,'studentagnes@gmail.com'),(155,'studentbob@gmail.com'),(155,'studentcharles@gmail.com'),(155,'studentjon@gmail.com'),(155,'studentmiche@gmail.com'),(155,'studentnic@gmail.com'),(157,'studentagnes@gmail.com'),(157,'studentbob@gmail.com'),(157,'studentcharles@gmail.com'),(157,'studentjon@gmail.com'),(157,'studentmiche@gmail.com'),(157,'studentnic@gmail.com'),(159,'studentagnes@gmail.com'),(159,'studentbob@gmail.com'),(159,'studentcharles@gmail.com'),(159,'studentjon@gmail.com'),(159,'studentmiche@gmail.com'),(159,'studentnic@gmail.com'),(161,'studentagnes@gmail.com'),(161,'studentbob@gmail.com'),(161,'studentcharles@gmail.com'),(161,'studentjon@gmail.com'),(161,'studentmiche@gmail.com'),(161,'studentnic@gmail.com'),(163,'studentagnes@gmail.com'),(163,'studentbob@gmail.com'),(163,'studentcharles@gmail.com'),(163,'studentjon@gmail.com'),(163,'studentmiche@gmail.com'),(163,'studentnic@gmail.com'),(165,'studentagnes@gmail.com'),(165,'studentbob@gmail.com'),(165,'studentcharles@gmail.com'),(165,'studentjon@gmail.com'),(165,'studentmiche@gmail.com'),(165,'studentnic@gmail.com'),(167,'studentagnes@gmail.com'),(167,'studentbob@gmail.com'),(167,'studentcharles@gmail.com'),(167,'studentjon@gmail.com'),(167,'studentmiche@gmail.com'),(167,'studentnic@gmail.com'),(169,'studentagnes@gmail.com'),(169,'studentbob@gmail.com'),(169,'studentcharles@gmail.com'),(169,'studentjon@gmail.com'),(169,'studentmiche@gmail.com'),(169,'studentnic@gmail.com'),(171,'studentagnes@gmail.com'),(171,'studentbob@gmail.com'),(171,'studentcharles@gmail.com'),(171,'studentjon@gmail.com'),(171,'studentmiche@gmail.com'),(171,'studentnic@gmail.com'),(173,'studentagnes@gmail.com'),(173,'studentbob@gmail.com'),(173,'studentcharles@gmail.com'),(173,'studentjon@gmail.com'),(173,'studentmiche@gmail.com'),(173,'studentnic@gmail.com'),(175,'studentagnes@gmail.com'),(175,'studentbob@gmail.com'),(175,'studentcharles@gmail.com'),(175,'studentjon@gmail.com'),(175,'studentmiche@gmail.com'),(175,'studentnic@gmail.com'),(177,'studentagnes@gmail.com'),(177,'studentbob@gmail.com'),(177,'studentcharles@gmail.com'),(177,'studentjon@gmail.com'),(177,'studentmiche@gmail.com'),(177,'studentnic@gmail.com'),(179,'studentagnes@gmail.com'),(179,'studentbob@gmail.com'),(179,'studentcharles@gmail.com'),(179,'studentjon@gmail.com'),(179,'studentmiche@gmail.com'),(179,'studentnic@gmail.com'),(181,'studentagnes@gmail.com'),(181,'studentbob@gmail.com'),(181,'studentcharles@gmail.com'),(181,'studentjon@gmail.com'),(181,'studentmiche@gmail.com'),(181,'studentnic@gmail.com'),(183,'studentagnes@gmail.com'),(183,'studentbob@gmail.com'),(183,'studentcharles@gmail.com'),(183,'studentjon@gmail.com'),(183,'studentmiche@gmail.com'),(183,'studentnic@gmail.com'),(185,'studentagnes@gmail.com'),(185,'studentbob@gmail.com'),(185,'studentcharles@gmail.com'),(185,'studentjon@gmail.com'),(185,'studentmiche@gmail.com'),(185,'studentnic@gmail.com'),(187,'studentagnes@gmail.com'),(187,'studentbob@gmail.com'),(187,'studentcharles@gmail.com'),(187,'studentjon@gmail.com'),(187,'studentmiche@gmail.com'),(187,'studentnic@gmail.com'),(189,'studentagnes@gmail.com'),(189,'studentbob@gmail.com'),(189,'studentcharles@gmail.com'),(189,'studentjon@gmail.com'),(189,'studentmiche@gmail.com'),(189,'studentnic@gmail.com'),(191,'studentagnes@gmail.com'),(191,'studentbob@gmail.com'),(191,'studentcharles@gmail.com'),(191,'studentjon@gmail.com'),(191,'studentmiche@gmail.com'),(191,'studentnic@gmail.com'),(193,'studentagnes@gmail.com'),(193,'studentmiche@gmail.com'),(201,'studentbob@gmail.com'),(201,'studentJoey@gmail.com'),(201,'studentjohn@gmail.com'),(201,'studentmiche@gmail.com'),(202,'studentbob@gmail.com'),(202,'studentJoey@gmail.com'),(202,'studentjohn@gmail.com'),(202,'studentmiche@gmail.com'),(203,'studentbob@gmail.com'),(203,'studentJoey@gmail.com'),(203,'studentjohn@gmail.com'),(203,'studentmiche@gmail.com'),(204,'studentbob@gmail.com'),(204,'studentJoey@gmail.com'),(204,'studentjohn@gmail.com'),(204,'studentmiche@gmail.com'),(205,'studentbob@gmail.com'),(205,'studentJoey@gmail.com'),(205,'studentjohn@gmail.com'),(205,'studentmiche@gmail.com'),(206,'studentJoey@gmail.com'),(206,'studentjohn@gmail.com'),(207,'studentagnes@gmail.com'),(207,'studenthon@gmail.com'),(207,'studentJoey@gmail.com'),(207,'studentjohn@gmail.com'),(207,'studentjon@gmail.com'),(207,'studentmiche@gmail.com');
/*!40000 ALTER TABLE `recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) NOT NULL,
  PRIMARY KEY (`status_id`),
  UNIQUE KEY `status_id_UNIQUE` (`status_id`),
  UNIQUE KEY `status_name_UNIQUE` (`status_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'active'),(2,'suspended');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_email` varchar(255) NOT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`student_email`),
  UNIQUE KEY `student_email_UNIQUE` (`student_email`),
  KEY `fk_student_status1_idx` (`status_id`),
  CONSTRAINT `fk_student_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('james@gmail.com',1),('studentagnes@gmail.com',1),('studentbob@gmail.com',1),('studentcharles@gmail.com',1),('studenthon@gmail.com',1),('studentjoey@gmail.com',1),('studentjohn@gmail.com',1),('studentmiche@gmail.com',1),('studentnic@gmail.com',1),('studentjon@gmail.com',2),('studentmary@gmail.com',2);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_email` varchar(255) NOT NULL,
  PRIMARY KEY (`teacher_email`),
  UNIQUE KEY `teacher_email_UNIQUE` (`teacher_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('teacherbarbie@gmail.com'),('teacherjoe@gmail.com'),('teacherken@gmail.com');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_student`
--

DROP TABLE IF EXISTS `teacher_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_student` (
  `teacher_email` varchar(255) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  PRIMARY KEY (`teacher_email`,`student_email`),
  KEY `fk_teacher_has_student_student1_idx` (`student_email`),
  KEY `fk_teacher_has_student_teacher1_idx` (`teacher_email`),
  CONSTRAINT `fk_teacher_has_student_student1` FOREIGN KEY (`student_email`) REFERENCES `student` (`student_email`),
  CONSTRAINT `fk_teacher_has_student_teacher1` FOREIGN KEY (`teacher_email`) REFERENCES `teacher` (`teacher_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_student`
--

LOCK TABLES `teacher_student` WRITE;
/*!40000 ALTER TABLE `teacher_student` DISABLE KEYS */;
INSERT INTO `teacher_student` VALUES ('teacherken@gmail.com','studenthon@gmail.com'),('teacherbarbie@gmail.com','studentJoey@gmail.com'),('teacherjoe@gmail.com','studentJoey@gmail.com'),('teacherken@gmail.com','studentJoey@gmail.com'),('teacherbarbie@gmail.com','studentjohn@gmail.com'),('teacherjoe@gmail.com','studentjohn@gmail.com'),('teacherken@gmail.com','studentjohn@gmail.com'),('teacherken@gmail.com','studentjon@gmail.com'),('teacherjoe@gmail.com','studentmary@gmail.com');
/*!40000 ALTER TABLE `teacher_student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-14 16:41:40
