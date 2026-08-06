USE `spdms_lab`;

-- Schema DDL for table `student_badges`
DROP TABLE IF EXISTS `student_badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_badges` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `approved_by` varchar(100) DEFAULT NULL,
  `awarded_at` datetime(6) DEFAULT NULL,
  `evidence_url` text,
  `status` varchar(50) NOT NULL,
  `badge_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdogjuytddp97f0p6ivt3r8ufp` (`badge_id`),
  KEY `FKtciahqu1w23ccrula5smx9i73` (`student_id`),
  CONSTRAINT `FKdogjuytddp97f0p6ivt3r8ufp` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`),
  CONSTRAINT `FKtciahqu1w23ccrula5smx9i73` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
