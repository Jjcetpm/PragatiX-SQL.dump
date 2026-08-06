USE `spdms_lab`;

-- Table structure for table `attendance_holiday`
--

DROP TABLE IF EXISTS `attendance_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_holiday` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `holiday_date` date NOT NULL,
  `holiday_name` varchar(255) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_holiday`
--

LOCK TABLES `attendance_holiday` WRITE;
/*!40000 ALTER TABLE `attendance_holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
