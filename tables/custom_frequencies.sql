USE `spdms_lab`;

-- Table structure for table `custom_frequencies`
--

DROP TABLE IF EXISTS `custom_frequencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_frequencies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cap_type` varchar(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `default_cap` int DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKdwvgfonmejvccbcv17imp17ws` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_frequencies`
--

LOCK TABLES `custom_frequencies` WRITE;
/*!40000 ALTER TABLE `custom_frequencies` DISABLE KEYS */;
INSERT INTO `custom_frequencies` VALUES (1,'UNLIMITED','2026-07-13 18:06:08.824125',0,'Per Assignment','2026-07-13 18:06:08.824125'),(2,'MANUAL_CAP','2026-07-13 18:19:16.764715',1,'Week 1 (Once)','2026-07-13 18:19:16.764715'),(3,'MANUAL_CAP','2026-07-13 18:27:16.434256',1,'Week 2 (Once)','2026-07-13 18:27:16.434256');
/*!40000 ALTER TABLE `custom_frequencies` ENABLE KEYS */;
UNLOCK TABLES;

--
