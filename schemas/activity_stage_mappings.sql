USE `spdms_lab`;

-- Schema DDL for table `activity_stage_mappings`
DROP TABLE IF EXISTS `activity_stage_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_stage_mappings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `display_order` int NOT NULL,
  `activity_id` bigint NOT NULL,
  `stage_id` bigint NOT NULL,
  `subgroup_id` bigint NOT NULL,
  `award_enabled` bit(1) DEFAULT NULL,
  `award_frequency` varchar(50) DEFAULT NULL,
  `award_xp` int DEFAULT NULL,
  `penalty_enabled` bit(1) DEFAULT NULL,
  `penalty_xp` int DEFAULT NULL,
  `assignment_mode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_stage_activity` (`stage_id`,`activity_id`),
  KEY `FK1laou9t3uc6gsexeng82y5smb` (`activity_id`),
  KEY `FKl4jjroqh5ffcxbcnyf6y4s374` (`subgroup_id`),
  CONSTRAINT `FK1laou9t3uc6gsexeng82y5smb` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `FKl4jjroqh5ffcxbcnyf6y4s374` FOREIGN KEY (`subgroup_id`) REFERENCES `activity_subgroups` (`id`),
  CONSTRAINT `FKrrtriom1ji8mf8ojvds2d2gsn` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
