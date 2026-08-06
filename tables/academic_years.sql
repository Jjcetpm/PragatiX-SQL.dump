USE `spdms_lab`;

-- Table structure for table `academic_years`
--

DROP TABLE IF EXISTS `academic_years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_years` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `academic_year` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `academic_year` (`academic_year`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_years`
--

LOCK TABLES `academic_years` WRITE;
/*!40000 ALTER TABLE `academic_years` DISABLE KEYS */;
INSERT INTO `academic_years` VALUES (1,'2024-2025','2024-06-01','2025-05-31','ACTIVE','2026-07-06 16:15:18','2026-07-06 16:15:18'),(2,'8','2026-07-10','2027-07-10','ACTIVE','2026-07-10 08:31:41','2026-07-10 08:31:41'),(3,'9','2026-07-10','2027-07-10','ACTIVE','2026-07-10 08:31:41','2026-07-10 08:31:41'),(4,'855','2026-07-10','2027-07-10','ACTIVE','2026-07-10 08:31:42','2026-07-10 08:31:42'),(5,'8.59','2026-07-10','2027-07-10','ACTIVE','2026-07-10 08:31:43','2026-07-10 08:31:43'),(6,'7','2026-07-10','2027-07-10','ACTIVE','2026-07-10 08:31:48','2026-07-10 08:31:48'),(7,'80','2026-07-10','2027-07-10','ACTIVE','2026-07-10 08:31:50','2026-07-10 08:31:50'),(8,'2026-2030','2026-08-10','2030-05-31','ACTIVE','2026-07-16 20:52:17','2026-07-16 20:52:17');
/*!40000 ALTER TABLE `academic_years` ENABLE KEYS */;
UNLOCK TABLES;

--
