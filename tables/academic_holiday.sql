USE `spdms_lab`;

-- Table structure for table `academic_holiday`
--

DROP TABLE IF EXISTS `academic_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_holiday` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `holiday_date` date NOT NULL,
  `holiday_name` varchar(255) NOT NULL,
  `academic_month_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpkyjlle225v8tu8nu8hohby6o` (`academic_month_id`),
  CONSTRAINT `FKpkyjlle225v8tu8nu8hohby6o` FOREIGN KEY (`academic_month_id`) REFERENCES `academic_month` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_holiday`
--

LOCK TABLES `academic_holiday` WRITE;
/*!40000 ALTER TABLE `academic_holiday` DISABLE KEYS */;
INSERT INTO `academic_holiday` VALUES (1,'2026-08-01','sample',1);
/*!40000 ALTER TABLE `academic_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
