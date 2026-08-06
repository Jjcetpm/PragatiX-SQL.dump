USE `spdms_lab`;

-- Table structure for table `activity_stages`
--

DROP TABLE IF EXISTS `activity_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_stages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `stage_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `display_order` int NOT NULL,
  `is_active` bit(1) NOT NULL,
  `expected_xp` int NOT NULL DEFAULT '0',
  `status` enum('ACTIVE','COMPLETED','UPCOMING') NOT NULL,
  `group_threshold` int NOT NULL,
  `individual_threshold` int NOT NULL,
  `must_threshold` int NOT NULL,
  `end_datetime` datetime(6) DEFAULT NULL,
  `start_datetime` datetime(6) DEFAULT NULL,
  `use_combined_validation` bit(1) NOT NULL,
  `use_date_validation` bit(1) NOT NULL,
  `use_threshold_validation` bit(1) NOT NULL,
  `academic_year` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_stage_name` (`stage_name`),
  UNIQUE KEY `UK94qv2sd8jwbxsmdv8r4aibi7v` (`name`),
  UNIQUE KEY `uq_stage_name_year` (`stage_name`,`academic_year`),
  UNIQUE KEY `uq_name_year` (`name`,`academic_year`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_stages`
--

LOCK TABLES `activity_stages` WRITE;
/*!40000 ALTER TABLE `activity_stages` DISABLE KEYS */;
INSERT INTO `activity_stages` VALUES (20,'stage 0','2026-07-31 18:54:42','2026-07-31 18:55:00','','stage 0',0,_binary '',50,'ACTIVE',0,0,0,NULL,NULL,_binary '\0',_binary '',_binary '\0','SECOND_YEAR'),(27,'Stage 1','2026-08-05 06:37:23','2026-08-06 09:35:50','','Stage 1',1,_binary '',200,'ACTIVE',150,150,80,NULL,NULL,_binary '\0',_binary '',_binary '\0','FIRST_YEAR'),(28,'Stage 2','2026-08-05 10:29:59','2026-08-06 09:36:25','','Stage 2',2,_binary '',200,'ACTIVE',150,150,100,NULL,NULL,_binary '\0',_binary '',_binary '\0','FIRST_YEAR');
/*!40000 ALTER TABLE `activity_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
