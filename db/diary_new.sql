-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: diary
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.22.04.1

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
-- Table structure for table `bill_amounts`
--

DROP TABLE IF EXISTS `bill_amounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_amounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `user_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_price` int DEFAULT NULL,
  `service_charge` int DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `amount_got` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_amounts`
--

LOCK TABLES `bill_amounts` WRITE;
/*!40000 ALTER TABLE `bill_amounts` DISABLE KEYS */;
INSERT INTO `bill_amounts` VALUES (1,'2022-07-20','jayan',140,60,200,200,'2022-07-20 11:32:25','2022-07-20 11:32:25'),(2,'2022-07-20','cilin',80,120,200,200,'2022-07-20 11:34:23','2022-07-20 11:34:23'),(11,'2022-08-05','bat',40,0,40,0,'2022-08-05 11:22:21','2022-08-05 11:22:21'),(12,'2022-08-09','Aneesh',147,253,400,400,'2022-08-09 04:34:24','2022-08-10 10:27:37'),(13,'2022-08-28','amma',40,0,40,0,'2022-08-28 09:10:12','2022-08-28 09:10:12'),(14,'2022-08-28','Aneesh',60,40,100,100,'2022-08-28 09:10:47','2022-08-28 09:10:47'),(15,'2022-09-06','Jayan',90,0,90,0,'2022-09-06 12:41:56','2022-09-06 12:41:56'),(16,'2022-09-24','Amma',70,0,70,0,'2022-09-24 10:53:28','2022-09-24 10:53:28');
/*!40000 ALTER TABLE `bill_amounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_users`
--

DROP TABLE IF EXISTS `blog_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bloggerName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` blob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_users`
--

LOCK TABLES `blog_users` WRITE;
/*!40000 ALTER TABLE `blog_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_prices`
--

DROP TABLE IF EXISTS `component_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_prices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comp_unit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_prices`
--

LOCK TABLES `component_prices` WRITE;
/*!40000 ALTER TABLE `component_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `component_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_names`
--

DROP TABLE IF EXISTS `components_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_names` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_names`
--

LOCK TABLES `components_names` WRITE;
/*!40000 ALTER TABLE `components_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_amounts`
--

DROP TABLE IF EXISTS `expense_amounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense_amounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `expense_date` date DEFAULT NULL,
  `finyear` bigint unsigned NOT NULL,
  `expense_name` bigint unsigned NOT NULL,
  `expense_amount` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `expense_amounts_finyear_foreign` (`finyear`),
  KEY `expense_amounts_expense_name_foreign` (`expense_name`),
  CONSTRAINT `expense_amounts_expense_name_foreign` FOREIGN KEY (`expense_name`) REFERENCES `expense_names` (`id`) ON DELETE CASCADE,
  CONSTRAINT `expense_amounts_finyear_foreign` FOREIGN KEY (`finyear`) REFERENCES `financial_years` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_amounts`
--

LOCK TABLES `expense_amounts` WRITE;
/*!40000 ALTER TABLE `expense_amounts` DISABLE KEYS */;
INSERT INTO `expense_amounts` VALUES (12,'2022-05-02',2,15,11000,'2022-06-13 10:20:37','2022-06-13 10:20:37',1),(13,'2022-05-02',2,16,4000,'2022-06-13 10:21:06','2022-06-13 10:21:06',1),(14,'2022-06-01',2,15,25000,'2022-06-13 10:21:39','2022-06-13 10:21:39',1),(15,'2022-06-01',2,16,3500,'2022-06-13 10:22:01','2022-06-13 10:22:01',1),(16,'2022-06-06',2,17,1700,'2022-06-13 10:22:19','2022-06-13 10:22:19',1),(17,'2022-04-30',2,14,27477,'2022-06-13 10:25:09','2022-06-13 10:25:09',0),(18,'2022-05-31',2,14,11079,'2022-06-13 10:27:07','2022-06-13 10:27:07',0),(19,'2022-06-01',2,1,250,'2022-06-13 10:28:04','2022-06-13 10:28:04',0),(24,'2022-06-06',2,21,210,'2022-06-13 10:31:29','2022-06-13 10:31:29',0),(25,'2022-06-06',2,6,419,'2022-06-13 10:31:42','2022-06-13 10:31:42',0),(26,'2022-06-06',2,2,1000,'2022-06-13 10:32:03','2022-06-13 10:32:03',0),(27,'2022-06-06',2,4,2200,'2022-06-13 10:32:26','2022-06-13 10:32:26',0),(28,'2022-06-06',2,14,3250,'2022-06-13 10:32:45','2022-06-13 10:32:45',0),(29,'2022-06-06',2,14,100,'2022-06-13 10:33:06','2022-06-13 10:33:06',0),(30,'2022-06-06',2,23,148,'2022-06-13 10:33:45','2022-06-13 10:33:45',0),(31,'2022-06-06',2,14,387,'2022-06-13 10:34:11','2022-06-13 10:34:11',0),(32,'2022-06-10',2,1,600,'2022-06-13 10:34:27','2022-06-13 10:34:27',0),(34,'2022-06-15',2,14,40,'2022-06-15 10:20:06','2022-06-15 10:20:06',0),(35,'2022-06-18',2,14,60,'2022-06-18 10:22:52','2022-06-18 10:22:52',0),(37,'2022-06-19',2,1,650,'2022-06-20 10:37:48','2022-06-20 10:37:48',0),(38,'2022-06-21',2,14,680,'2022-06-21 11:03:06','2022-06-21 11:03:06',0),(39,'2022-06-21',2,24,300,'2022-06-21 11:04:00','2022-06-21 11:04:00',0),(40,'2022-06-25',2,1,600,'2022-06-27 10:06:34','2022-06-27 10:06:34',0),(41,'2022-06-24',2,21,200,'2022-06-27 10:07:03','2022-06-27 10:07:03',0),(42,'2022-06-26',2,24,200,'2022-06-27 10:07:22','2022-06-27 10:07:22',0),(43,'2022-07-02',2,15,25000,'2022-07-02 10:07:58','2022-07-02 10:07:58',1),(45,'2022-07-02',2,25,479,'2022-07-02 10:10:18','2022-07-02 10:10:18',0),(46,'2022-07-02',2,2,5000,'2022-07-02 10:10:38','2022-07-02 10:10:38',0),(47,'2022-07-02',2,26,100,'2022-07-02 10:12:00','2022-07-02 10:12:00',0),(49,'2022-07-04',2,17,2700,'2022-07-08 10:20:33','2022-07-08 10:20:33',1),(50,'2022-07-08',2,16,3500,'2022-07-08 10:21:11','2022-07-08 10:21:11',1),(52,'2022-07-08',2,4,120,'2022-07-08 10:23:16','2022-07-08 10:23:16',0),(53,'2022-07-09',2,4,150,'2022-07-09 22:43:29','2022-07-09 22:43:29',0),(55,'2022-07-09',2,28,150,'2022-07-09 22:45:49','2022-07-09 22:45:49',0),(56,'2022-07-09',2,29,2000,'2022-07-09 22:47:15','2022-07-09 22:47:15',0),(57,'2022-07-09',2,1,600,'2022-07-09 22:47:33','2022-07-09 22:47:33',0),(58,'2022-07-09',2,30,20,'2022-07-09 22:47:58','2022-07-09 22:47:58',0),(60,'2022-07-12',2,21,240,'2022-07-13 10:25:15','2022-07-13 10:25:15',0),(61,'2022-07-17',2,1,600,'2022-07-17 09:19:58','2022-07-17 09:19:58',0),(62,'2022-07-17',2,24,50,'2022-07-17 09:20:17','2022-07-17 09:20:17',0),(63,'2022-07-20',2,21,50,'2022-07-20 10:11:42','2022-07-20 10:11:42',0),(64,'2022-07-20',2,8,500,'2022-07-20 10:12:00','2022-07-20 10:12:00',0),(65,'2022-07-25',2,1,600,'2022-07-25 10:40:28','2022-07-25 10:40:28',0),(66,'2022-07-26',2,26,50,'2022-07-26 11:43:41','2022-07-26 11:43:41',0),(67,'2022-07-26',2,21,90,'2022-07-26 11:44:34','2022-07-26 11:44:34',0),(68,'2022-07-27',2,21,1295,'2022-07-28 10:43:22','2022-07-28 10:43:22',0),(69,'2022-07-28',2,21,2100,'2022-07-28 10:54:33','2022-07-28 10:54:33',0),(70,'2022-07-28',2,25,479,'2022-07-28 10:54:55','2022-07-28 10:54:55',0),(71,'2022-04-01',2,17,0,'2022-07-31 10:23:34','2022-07-31 10:23:34',1),(72,'2022-08-01',2,1,600,'2022-07-31 10:25:58','2022-07-31 10:25:58',0),(73,'2022-08-01',2,24,150,'2022-07-31 10:26:35','2022-07-31 10:26:35',0),(74,'2022-08-01',2,4,100,'2022-08-01 10:30:56','2022-08-01 10:30:56',0),(75,'2022-08-01',2,21,50,'2022-08-01 10:32:05','2022-08-01 10:32:05',0),(76,'2022-07-27',2,25,479,'2022-08-01 10:32:58','2022-08-01 10:32:58',0),(77,'2022-08-02',2,33,2000,'2022-08-02 10:30:53','2022-08-02 10:41:14',1),(78,'2022-08-02',2,34,0,'2022-08-02 10:31:06','2022-08-02 10:31:06',0),(79,'2022-08-04',2,2,5000,'2022-08-03 21:38:43','2022-08-03 21:38:43',0),(80,'2022-08-04',2,26,1000,'2022-08-03 21:38:58','2022-08-03 21:38:58',0),(81,'2022-08-04',2,15,30900,'2022-08-03 21:44:32','2022-08-03 21:44:32',1),(82,'2022-08-04',2,17,1700,'2022-08-04 10:38:39','2022-08-04 10:38:39',1),(83,'2022-08-04',2,25,479,'2022-08-04 10:42:38','2022-08-04 10:42:38',0),(84,'2022-08-05',2,35,255,'2022-08-05 11:08:01','2022-08-05 11:08:01',0),(85,'2022-08-05',2,4,43,'2022-08-05 11:08:17','2022-08-05 11:08:17',0),(86,'2022-08-06',2,30,1708,'2022-08-06 20:45:14','2022-08-06 20:45:14',0),(87,'2022-08-06',2,29,736,'2022-08-06 20:48:00','2022-08-06 20:48:00',0),(88,'2022-08-06',2,21,170,'2022-08-06 20:49:12','2022-08-06 20:49:12',0),(89,'2022-08-06',2,29,3390,'2022-08-06 20:52:15','2022-08-06 20:52:15',0),(90,'2022-08-06',2,21,580,'2022-08-06 20:53:04','2022-08-06 20:53:04',0),(91,'2022-08-06',2,21,41,'2022-08-06 20:53:36','2022-08-06 20:53:36',0),(92,'2022-08-06',2,29,1082,'2022-08-06 20:55:16','2022-08-06 20:55:16',0),(93,'2022-08-06',2,29,2330,'2022-08-06 20:56:11','2022-08-06 20:56:11',0),(94,'2022-08-06',2,21,1321,'2022-08-06 20:57:02','2022-08-06 20:57:02',0),(95,'2022-08-07',2,4,2700,'2022-08-09 04:28:37','2022-08-09 04:28:37',0),(96,'2022-08-08',2,16,3250,'2022-08-09 04:29:07','2022-08-09 04:29:07',1),(97,'2022-08-07',2,1,500,'2022-08-09 04:31:20','2022-08-09 04:31:20',0),(98,'2022-08-08',2,34,2000,'2022-08-09 05:31:00','2022-08-09 05:31:00',0),(99,'2022-08-08',2,24,500,'2022-08-09 05:31:20','2022-08-09 05:31:20',0),(100,'2022-08-10',2,21,90,'2022-08-10 10:29:23','2022-08-10 10:29:23',0),(101,'2022-08-11',2,24,500,'2022-08-11 10:49:11','2022-08-11 10:49:11',0),(102,'2022-08-27',2,1,1150,'2022-08-28 00:41:19','2022-08-28 00:41:19',0),(103,'2022-08-22',2,37,395,'2022-08-28 08:39:30','2022-08-28 08:39:30',0),(104,'2022-08-25',2,33,395,'2022-08-28 08:42:24','2022-08-28 08:42:24',1),(105,'2022-08-28',2,14,13500,'2022-08-28 08:44:33','2022-08-28 08:44:33',0),(106,'2022-08-31',2,1,200,'2022-09-01 10:52:02','2022-09-01 10:52:02',0),(107,'2022-09-04',2,33,350,'2022-09-04 09:23:09','2022-09-04 09:23:09',1),(108,'2022-09-04',2,1,100,'2022-09-04 09:23:37','2022-09-04 09:23:37',0),(109,'2022-09-04',2,1,250,'2022-09-04 09:24:12','2022-09-04 09:24:12',0),(110,'2022-09-04',2,8,450,'2022-09-04 09:24:42','2022-09-04 09:24:42',0),(111,'2022-09-04',2,14,150,'2022-09-04 09:25:10','2022-09-04 09:25:10',0),(112,'2022-09-05',2,15,29903,'2022-09-05 19:56:40','2022-09-05 19:56:40',1),(113,'2022-09-05',2,17,2700,'2022-09-05 19:57:06','2022-09-05 19:57:06',1),(114,'2022-09-05',2,35,160,'2022-09-05 19:57:35','2022-09-05 19:57:35',0),(115,'2022-09-06',2,4,2700,'2022-09-05 20:01:23','2022-09-05 20:01:23',0),(116,'2022-09-05',2,14,950,'2022-09-05 20:02:00','2022-09-05 20:02:00',0),(117,'2022-09-06',2,1,500,'2022-09-06 11:58:39','2022-09-06 11:58:39',0),(118,'2022-09-06',2,30,100,'2022-09-06 11:58:54','2022-09-06 11:58:54',0),(119,'2022-09-06',2,2,5000,'2022-09-06 12:00:01','2022-09-06 12:00:01',0),(120,'2022-09-06',2,4,2000,'2022-09-06 12:01:57','2022-09-06 12:01:57',0),(121,'2022-09-06',2,14,500,'2022-09-06 12:04:40','2022-09-06 12:04:40',0),(122,'2022-09-10',2,26,1500,'2022-09-06 12:06:47','2022-09-06 12:06:47',0),(123,'2022-09-06',2,34,745,'2022-09-06 12:07:59','2022-09-06 12:07:59',0),(124,'2022-09-10',2,26,200,'2022-09-06 12:09:36','2022-09-06 12:09:36',0),(125,'2022-09-07',2,14,90,'2022-09-07 10:41:28','2022-09-07 10:41:28',0),(126,'2022-09-07',2,8,300,'2022-09-07 10:42:44','2022-09-07 10:42:44',0),(127,'2022-09-07',2,24,247,'2022-09-07 10:43:04','2022-09-07 10:43:04',0),(128,'2022-09-07',2,16,3500,'2022-09-07 10:43:23','2022-09-07 10:43:23',1),(129,'2022-09-10',2,1,600,'2022-09-10 04:00:06','2022-09-10 04:00:06',0),(130,'2022-09-10',2,26,200,'2022-09-10 04:00:21','2022-09-10 04:00:21',0),(131,'2022-09-11',2,21,180,'2022-09-12 06:55:09','2022-09-12 06:55:09',0),(132,'2022-09-11',2,14,30,'2022-09-12 06:55:30','2022-09-12 06:55:30',0),(133,'2022-09-12',2,24,60,'2022-09-12 06:55:53','2022-09-12 06:55:53',0),(134,'2022-09-14',2,24,105,'2022-09-14 00:04:19','2022-09-14 00:04:19',0),(135,'2022-09-14',2,21,150,'2022-09-14 00:04:48','2022-09-14 00:04:48',0),(136,'2022-09-14',2,23,315,'2022-09-14 07:08:25','2022-09-14 07:08:25',0),(137,'2022-09-17',2,4,250,'2022-09-18 10:25:52','2022-09-18 10:25:52',0),(138,'2022-09-18',2,1,300,'2022-09-18 10:26:13','2022-09-18 10:26:13',0),(139,'2022-09-19',2,35,30,'2022-09-19 10:14:16','2022-09-19 10:14:16',0),(140,'2022-09-19',2,33,1000,'2022-09-19 10:14:38','2022-09-19 10:14:38',1),(141,'2022-09-20',2,30,20,'2022-09-20 10:41:15','2022-09-20 10:41:15',0),(142,'2022-09-20',2,21,130,'2022-09-20 10:41:44','2022-09-20 10:41:44',0),(143,'2022-09-20',2,3,8350,'2022-09-20 10:42:03','2022-09-20 10:42:03',0),(144,'2022-09-21',2,21,275,'2022-09-21 05:13:39','2022-09-21 05:13:39',0),(145,'2022-09-21',2,30,1943,'2022-09-21 05:13:59','2022-09-21 05:13:59',0),(146,'2022-09-21',2,14,650,'2022-09-21 05:14:48','2022-09-21 05:14:48',0),(147,'2022-09-21',2,33,1000,'2022-09-21 05:16:00','2022-09-21 05:16:00',1),(148,'2022-09-22',2,25,219,'2022-09-22 10:16:07','2022-09-22 10:16:07',0),(149,'2022-09-22',2,1,600,'2022-09-22 10:16:21','2022-09-22 10:16:21',0),(150,'2022-09-23',2,25,19,'2022-09-23 05:32:00','2022-09-23 05:32:00',0),(151,'2022-09-24',2,33,2000,'2022-09-23 20:15:20','2022-09-23 20:15:20',1),(152,'2022-09-24',2,14,1926,'2022-09-23 20:17:04','2022-09-23 20:17:04',0),(153,'2022-09-26',2,33,50000,'2022-09-26 10:39:09','2022-09-26 10:39:09',1),(154,'2022-09-26',2,30,320,'2022-09-26 10:39:40','2022-09-26 10:39:40',0);
/*!40000 ALTER TABLE `expense_amounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_names`
--

DROP TABLE IF EXISTS `expense_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense_names` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `expense_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_names`
--

LOCK TABLES `expense_names` WRITE;
/*!40000 ALTER TABLE `expense_names` DISABLE KEYS */;
INSERT INTO `expense_names` VALUES (1,'petrol','2022-05-30 18:30:00','2022-05-30 18:30:00',0),(2,'home',NULL,NULL,0),(3,'Chitty','2022-06-07 10:45:14','2022-06-07 10:45:14',0),(4,'wife','2022-06-07 10:47:46','2022-06-07 10:47:46',0),(5,'Loan','2022-06-07 10:48:57','2022-06-07 10:48:57',0),(6,'Entertainment','2022-06-07 10:50:00','2022-06-07 10:50:00',0),(7,'Education','2022-06-07 10:50:11','2022-06-07 10:50:11',0),(8,'Donation','2022-06-07 10:54:19','2022-06-07 10:54:19',0),(14,'Other','2022-06-11 04:24:03','2022-06-11 04:24:03',0),(15,'NIC','2022-06-11 10:53:46','2022-06-11 10:53:46',1),(16,'Prathibha','2022-06-11 10:54:31','2022-06-11 10:54:31',1),(17,'Tuition','2022-06-11 10:58:28','2022-06-11 10:58:28',1),(21,'Food','2022-06-13 10:30:20','2022-06-13 10:30:20',0),(23,'Charges','2022-06-13 10:33:29','2022-06-13 10:33:29',0),(24,'health','2022-06-21 11:03:45','2022-06-21 11:03:45',0),(25,'recharge','2022-07-02 10:10:05','2022-07-02 10:10:05',0),(26,'Devotional','2022-07-02 10:11:48','2022-07-02 10:11:48',0),(28,'Trip','2022-07-09 22:44:49','2022-07-09 22:44:49',0),(29,'Dress','2022-07-09 22:46:57','2022-07-09 22:46:57',0),(30,'Bike','2022-07-09 22:47:44','2022-07-09 22:47:44',0),(33,'Debt Earns','2022-08-02 10:29:56','2022-08-02 10:29:56',1),(34,'Debt Paid','2022-08-02 10:30:12','2022-08-02 10:30:12',0),(35,'Treat','2022-08-05 11:07:35','2022-08-05 11:07:35',0),(36,'Debt get','2022-08-28 08:38:30','2022-08-28 08:38:30',1),(37,'Debt given','2022-08-28 08:38:45','2022-08-28 08:38:45',0);
/*!40000 ALTER TABLE `expense_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `expense_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `expense_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_date` date DEFAULT NULL,
  `expense_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financial_years`
--

DROP TABLE IF EXISTS `financial_years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financial_years` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial_years`
--

LOCK TABLES `financial_years` WRITE;
/*!40000 ALTER TABLE `financial_years` DISABLE KEYS */;
INSERT INTO `financial_years` VALUES (1,'2021-04-01','2022-03-31','2022-06-10 18:30:00','2022-06-10 18:30:00',NULL),(2,'2022-04-01','2023-03-31','2022-06-10 18:30:00','2022-06-10 18:30:00','2022-23');
/*!40000 ALTER TABLE `financial_years` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_05_18_104433_create_sessions_table',1),(7,'2022_05_23_162053_create_stock_names_table',2),(8,'2022_05_24_160023_create_expense_names_table',2),(9,'2022_05_27_164153_create_expenses_table',3),(10,'2022_06_11_080634_create_financial_years_table',4),(11,'2022_06_11_084814_create_expense_amounts_table',5),(12,'2022_06_11_160535_state_added',6),(13,'2022_06_11_164159_state_added_amounts',7),(14,'2022_06_18_160733_create_stocks_table',8),(15,'2022_06_18_162425_create_stock_sells_table',9),(16,'2022_06_27_154156_create_months_table',10),(17,'2022_07_17_145713_create_components_names_table',11),(18,'2022_07_20_162847_create_bill_amounts_table',12),(19,'2022_07_23_162916_create_component_prices_table',13),(20,'2022_07_31_045855_financial_years',14),(21,'2022_08_07_052247_user_cahnge',15),(22,'2022_08_11_162838_profit_column',16),(23,'2022_09_14_124012_create_blog-users_table',17),(24,'2022_09_14_124921_create_blog_users_table',18),(25,'2022_09_14_131008_create_blog_users_table',19),(26,'2022_09_19_162706_create_stock_analys_table',20),(27,'2022_09_24_164021_stock_code',21),(28,'2022_09_24_164516_stock_buy_code',22),(29,'2022_09_24_165018_stock_buy_status',23),(30,'2022_09_25_033042_stock_name_code',24);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `months`
--

DROP TABLE IF EXISTS `months`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `months` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `months`
--

LOCK TABLES `months` WRITE;
/*!40000 ALTER TABLE `months` DISABLE KEYS */;
/*!40000 ALTER TABLE `months` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('YpQescbQJlkjVi7ytaJahhqIP6no9ha3io0WRImd',1,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT0NCZzBpTUtOY3ROcFduWlRZOGFNbGhXbFdLNXhhbUpSQnh5Z3JqcSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMjoiaHR0cDovL2xvY2FsaG9zdC9hZG1pbi1kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1664209389);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_analys`
--

DROP TABLE IF EXISTS `stock_analys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_analys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `stock_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_price` double(7,3) DEFAULT NULL,
  `debt_equity` double(7,3) DEFAULT NULL,
  `promoter_holding` double(4,2) DEFAULT NULL,
  `roe` double(4,2) DEFAULT NULL,
  `roce` double(4,2) DEFAULT NULL,
  `profit_aft_tax` double(7,3) DEFAULT NULL,
  `divident` double(4,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy_status` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_analys`
--

LOCK TABLES `stock_analys` WRITE;
/*!40000 ALTER TABLE `stock_analys` DISABLE KEYS */;
INSERT INTO `stock_analys` VALUES (1,'haldyn glass ltd',68.300,0.070,57.90,6.55,8.16,10.300,0.88,'2022-09-19 11:29:09','2022-09-19 11:29:09','srstock1',0),(4,'Ador fontech ltd',87.100,0.000,39.20,19.40,26.90,15.100,3.44,'2022-09-24 11:00:08','2022-09-25 00:42:12','srstock4',0),(5,'Gujarat pipavav port ltd',89.000,0.020,44.00,9.67,15.00,5.990,4.50,'2022-09-24 11:02:06','2022-09-24 11:02:06','srstock5',0),(6,'Federal bank',117.000,10.400,0.00,11.00,5.00,39.400,1.54,'2022-09-24 20:47:33','2022-09-24 20:47:33','srstock6',1),(7,'Vikas life care',4.750,0.030,13.30,21.00,25.40,309.000,0.00,'2022-09-24 20:54:59','2022-09-24 20:54:59','srstock7',1),(8,'Itc',346.000,0.000,0.00,24.80,33.60,17.400,3.32,'2022-09-24 20:56:05','2022-09-24 20:56:05','srstock8',1),(9,'Suraj ltd',73.600,0.380,74.70,3.31,7.50,168.000,0.00,'2022-09-24 20:57:24','2022-09-24 20:57:24','srstock9',1),(10,'Rubfila international',91.200,0.000,57.20,21.10,28.40,4.680,1.92,'2022-09-24 20:59:35','2022-09-24 20:59:35','srstock10',1),(13,'canara robocco',0.000,0.000,0.00,0.00,0.00,0.000,0.00,'2022-09-26 10:51:53','2022-09-26 10:52:52','srstock11',1);
/*!40000 ALTER TABLE `stock_analys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_names`
--

DROP TABLE IF EXISTS `stock_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_names` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_names`
--

LOCK TABLES `stock_names` WRITE;
/*!40000 ALTER TABLE `stock_names` DISABLE KEYS */;
INSERT INTO `stock_names` VALUES (1,'Delta Corp','2022-06-15 10:44:57','2022-06-15 10:44:57',NULL),(4,'ITC','2022-06-15 10:48:15','2022-06-15 10:48:15',NULL),(5,'Vikas Life','2022-06-15 10:48:58','2022-06-15 10:48:58',NULL),(6,'Federal Bank','2022-06-15 10:49:16','2022-06-15 10:49:16',NULL),(7,'Franklin India','2022-08-28 00:40:24','2022-08-28 00:40:24',NULL),(8,'ICICI Divident','2022-09-05 19:54:34','2022-09-05 19:54:34',NULL),(9,'Rubfila','2022-09-07 10:49:32','2022-09-07 10:49:32',NULL),(10,'Surajltd','2022-09-07 10:49:53','2022-09-07 10:49:53',NULL),(12,'canara robocco','2022-09-26 10:51:53','2022-09-26 10:51:53','srstock11');
/*!40000 ALTER TABLE `stock_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_sells`
--

DROP TABLE IF EXISTS `stock_sells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_sells` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `finyear` bigint unsigned NOT NULL,
  `stock_name` bigint unsigned NOT NULL,
  `sell_count` int DEFAULT NULL,
  `sell_date` date DEFAULT NULL,
  `sell_amount_single` double(8,2) DEFAULT NULL,
  `total_sell_amount` double(8,2) DEFAULT NULL,
  `buy_charge` double(8,2) DEFAULT '0.00',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=true 0=false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profit` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_sells_finyear_foreign` (`finyear`),
  KEY `stock_sells_stock_name_foreign` (`stock_name`),
  CONSTRAINT `stock_sells_finyear_foreign` FOREIGN KEY (`finyear`) REFERENCES `financial_years` (`id`) ON DELETE CASCADE,
  CONSTRAINT `stock_sells_stock_name_foreign` FOREIGN KEY (`stock_name`) REFERENCES `stock_names` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_sells`
--

LOCK TABLES `stock_sells` WRITE;
/*!40000 ALTER TABLE `stock_sells` DISABLE KEYS */;
INSERT INTO `stock_sells` VALUES (6,2,1,5,'2022-08-11',192.00,960.00,17.00,1,'2022-08-11 11:48:19','2022-08-11 11:48:19',-221.00);
/*!40000 ALTER TABLE `stock_sells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `finyear` bigint unsigned NOT NULL,
  `stock_name` bigint unsigned NOT NULL,
  `buy_count` int DEFAULT NULL,
  `buy_date` date DEFAULT NULL,
  `buy_amount_single` double(8,2) DEFAULT NULL,
  `total_buy_amount` double(8,2) DEFAULT NULL,
  `buy_charge` double(8,2) DEFAULT '0.00',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=true 0=false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stocks_finyear_foreign` (`finyear`),
  KEY `stocks_stock_name_foreign` (`stock_name`),
  CONSTRAINT `stocks_finyear_foreign` FOREIGN KEY (`finyear`) REFERENCES `financial_years` (`id`) ON DELETE CASCADE,
  CONSTRAINT `stocks_stock_name_foreign` FOREIGN KEY (`stock_name`) REFERENCES `stock_names` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (2,2,4,4,'2021-10-12',240.00,960.00,0.00,1,'2022-07-14 11:29:26','2022-07-14 11:29:26',NULL),(3,2,5,90,'2022-02-24',4.94,444.60,0.00,1,'2022-07-14 11:38:20','2022-07-14 11:38:20',NULL),(4,2,6,60,'2022-05-18',86.00,5160.00,0.00,1,'2022-07-14 11:39:34','2022-07-14 11:39:34',NULL),(5,2,1,5,'2022-05-20',232.80,1164.00,0.00,1,'2022-07-14 11:40:46','2022-07-14 11:40:46',NULL),(6,2,7,1,'2022-08-25',500.00,500.00,0.00,1,'2022-08-28 00:40:50','2022-08-28 00:40:50',NULL),(7,2,7,1,'2022-09-05',2000.00,2000.00,0.00,1,'2022-09-05 19:55:18','2022-09-05 19:55:18',NULL),(8,2,8,1,'2022-09-05',2000.00,2000.00,0.00,1,'2022-09-05 19:55:54','2022-09-05 19:55:54',NULL),(9,2,9,30,'2022-09-06',95.00,2850.00,0.00,1,'2022-09-07 10:51:17','2022-09-07 10:51:17',NULL),(10,2,10,13,'2022-09-07',70.00,910.00,9.00,1,'2022-09-07 10:53:31','2022-09-07 10:53:31',NULL),(11,2,5,32,'2022-09-09',5.15,164.80,0.00,1,'2022-09-10 04:04:00','2022-09-10 04:04:00',NULL),(15,2,12,1,'2022-09-26',50000.00,50000.00,0.00,1,'2022-09-26 10:52:52','2022-09-26 10:52:52',NULL);
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'sreeraj','sreerajs728@gmail.com',NULL,'$2y$10$bzDk2PCAfHYZIB5J6PDbr.Eh83Sf2hxxvpXl4KXwoBDBFy0X6NqTm',NULL,NULL,NULL,'yf9zIxZDFiVJ3STqtYulP0Pnp5WNkBXfhpU4mQh3JlZwBUSPZQIeYT8nRkir',NULL,NULL,'2022-08-06 23:55:54','2022-08-06 23:55:54',1),(2,'sanju','sanjusanju20546@gmail.com',NULL,'$2y$10$8shKbK0Ku5FhC.FAW6L.VOyo84kQK.yPZ9X1xYcIpBKdEP6ckCvfy',NULL,NULL,NULL,'aJK12WnFEXT8OQ9KodGFtmFbybAIqIae0OYg7a0LMdUPzdKvzm8YGRlsEa1r',NULL,NULL,'2022-08-10 10:39:44','2022-08-10 10:39:44',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 22:01:19
