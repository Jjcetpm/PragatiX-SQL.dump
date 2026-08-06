USE `spdms_lab`;

-- Table structure for table `academic_week`
--

DROP TABLE IF EXISTS `academic_week`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_week` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `end_date` date NOT NULL,
  `start_date` date NOT NULL,
  `week_number` int NOT NULL,
  `academic_month_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo4fja4rpe0m44rdyg4xyy7hjf` (`academic_month_id`),
  CONSTRAINT `FKo4fja4rpe0m44rdyg4xyy7hjf` FOREIGN KEY (`academic_month_id`) REFERENCES `academic_month` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_week`
--

LOCK TABLES `academic_week` WRITE;
/*!40000 ALTER TABLE `academic_week` DISABLE KEYS */;
INSERT INTO `academic_week` VALUES (9,'2026-07-31','2026-07-27',1,1),(15,'2026-08-05','2026-08-03',2,1);
/*!40000 ALTER TABLE `academic_week` ENABLE KEYS */;
UNLOCK TABLES;

--
