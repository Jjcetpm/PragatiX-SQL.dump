USE `spdms_lab`;

-- Schema DDL for table `student_points_history`
DROP TABLE IF EXISTS `student_points_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_points_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint DEFAULT NULL,
  `activity_id` bigint DEFAULT NULL,
  `log_id` bigint DEFAULT NULL,
  `points` int NOT NULL,
  `new_score` int NOT NULL,
  `new_streak` int NOT NULL,
  `incident_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reg_no` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_points_history_ibfk_2` (`activity_id`),
  KEY `student_points_history_ibfk_3` (`log_id`),
  KEY `idx_points_student_date` (`student_id`,`incident_date`),
  KEY `FK66b91ft72q8nboionnev395f1` (`reg_no`),
  CONSTRAINT `FK66b91ft72q8nboionnev395f1` FOREIGN KEY (`reg_no`) REFERENCES `students` (`id`),
  CONSTRAINT `student_points_history_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `student_points_history_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `student_points_history_ibfk_3` FOREIGN KEY (`log_id`) REFERENCES `discipline_logs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
