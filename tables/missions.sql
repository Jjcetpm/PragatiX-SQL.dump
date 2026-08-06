USE `spdms_lab`;

-- Table structure for table `missions`
--

DROP TABLE IF EXISTS `missions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `missions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `description` text,
  `evidence_type` varchar(50) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `owner_role` varchar(50) DEFAULT NULL,
  `stage` int NOT NULL,
  `task_code` varchar(50) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `xp_cap` int DEFAULT NULL,
  `xp_reward` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKbx3v7rkjab75f45nwtrexl0jl` (`task_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missions`
--

LOCK TABLES `missions` WRITE;
/*!40000 ALTER TABLE `missions` DISABLE KEYS */;
/*!40000 ALTER TABLE `missions` ENABLE KEYS */;
UNLOCK TABLES;

--
