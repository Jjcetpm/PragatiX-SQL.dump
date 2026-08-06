USE `spdms_lab`;

-- Table structure for table `academic_month`
--

DROP TABLE IF EXISTS `academic_month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_month` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `month` int NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `year` int NOT NULL,
  `academic_year_enum` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_month`
--

LOCK TABLES `academic_month` WRITE;
/*!40000 ALTER TABLE `academic_month` DISABLE KEYS */;
INSERT INTO `academic_month` VALUES (1,'2026-08-01 08:42:47.433809',8,'2026-08-01 08:42:47.433809',2026,'FIRST_YEAR'),(2,'2026-08-01 08:42:47.651537',7,'2026-08-01 08:42:47.651537',2026,'FIRST_YEAR'),(3,'2026-08-01 08:42:47.737260',9,'2026-08-01 08:42:47.737260',2026,'FIRST_YEAR'),(4,'2026-08-01 08:46:03.267310',8,'2026-08-01 08:46:03.267310',2026,'SECOND_YEAR'),(5,'2026-08-01 08:46:03.395944',7,'2026-08-01 08:46:03.395944',2026,'SECOND_YEAR'),(6,'2026-08-01 08:46:03.490950',9,'2026-08-01 08:46:03.490950',2026,'SECOND_YEAR'),(7,'2026-08-01 17:20:46.158117',6,'2026-08-01 17:20:46.158117',2026,'FIRST_YEAR');
/*!40000 ALTER TABLE `academic_month` ENABLE KEYS */;
UNLOCK TABLES;

--
