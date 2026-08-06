USE `spdms_lab`;

-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dept_code` varchar(20) NOT NULL,
  `dept_name` varchar(180) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dept_code` (`dept_code`),
  UNIQUE KEY `dept_name` (`dept_name`),
  UNIQUE KEY `UKj6cwks7xecs5jov19ro8ge3qk` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (8,'CSE-CS','Cyber Security','2026-07-06 16:59:24','2026-07-06 16:59:24','CSE-CS',NULL,'Cyber Security'),(13,'IT','Information Technology','2026-07-07 16:05:15','2026-07-11 09:05:31','IT',NULL,'Information Technology'),(14,'CSE','Computer Science engineering','2026-07-08 06:33:12','2026-07-11 09:05:54','CSE',NULL,'Computer Science engineering'),(15,'EEE','Electrical and electronics engineering','2026-07-10 08:27:59','2026-07-11 09:08:07','EEE',NULL,'Electrical and electronics engineering'),(16,'MECH','Mechanical engineering','2026-07-11 09:04:03','2026-07-11 09:04:03','MECH',NULL,'Mechanical engineering'),(17,'CIVIL','Civil engineering','2026-07-11 09:06:14','2026-07-11 09:06:14','CIVIL',NULL,'Civil engineering'),(18,'AERO','Aeronautical engineering','2026-07-11 09:07:45','2026-07-11 09:07:45','AERO',NULL,'Aeronautical engineering'),(19,'ECE','Electronical and communication engineering','2026-07-11 09:08:37','2026-07-11 09:08:37','ECE',NULL,'Electronical and communication engineering'),(20,'AIDS','Artificial intelligence and data science','2026-07-11 09:10:27','2026-07-11 09:10:27','AIDS',NULL,'Artificial intelligence and data science'),(21,'ENG','English','2026-07-11 11:00:12','2026-07-11 11:00:12','ENG',NULL,'English'),(22,'MBA','Business Administration','2026-07-11 18:12:27','2026-07-11 18:12:27','MBA',NULL,'Business Administration'),(30,'COD_CB488E','Test_name_725a','2026-08-03 17:14:12','2026-08-03 17:14:12','COD_CB488E','Test_description_1d9b','Test_name_725a');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
