USE `spdms_lab`;

-- Schema DDL for table `captain_reward_settings`
DROP TABLE IF EXISTS `captain_reward_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `captain_reward_settings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `academic_year` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') NOT NULL,
  `captain_xp` int DEFAULT NULL,
  `engine_enabled` bit(1) DEFAULT NULL,
  `execution_time` time(6) DEFAULT NULL,
  `last_execution_date` datetime(6) DEFAULT NULL,
  `vice_captain_xp` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKlc1wugw65da78hx2cajtqtx9w` (`academic_year`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
