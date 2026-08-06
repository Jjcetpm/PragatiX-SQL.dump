USE `spdms_lab`;

-- Schema DDL for table `discipline_logs`
DROP TABLE IF EXISTS `discipline_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discipline_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint DEFAULT NULL,
  `activity_id` bigint DEFAULT NULL,
  `recorded_by` bigint DEFAULT NULL,
  `points` int NOT NULL,
  `reason` varchar(255) NOT NULL,
  `remarks` text,
  `incident_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `recorded_by_id` bigint DEFAULT NULL,
  `subgroup_id` bigint DEFAULT NULL,
  `reg_no` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discipline_logs_ibfk_2` (`activity_id`),
  KEY `discipline_logs_ibfk_3` (`recorded_by`),
  KEY `idx_discipline_student_date` (`student_id`,`incident_date`),
  KEY `FKq1in7t2kuukg1xilj2i92bm2g` (`recorded_by_id`),
  KEY `FK8yqmdoonjp1pe3hdlueff75aq` (`subgroup_id`),
  KEY `FKa7a329hsf527p0l61x9pog303` (`reg_no`),
  CONSTRAINT `discipline_logs_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `discipline_logs_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `discipline_logs_ibfk_3` FOREIGN KEY (`recorded_by`) REFERENCES `faculty` (`id`),
  CONSTRAINT `FK8yqmdoonjp1pe3hdlueff75aq` FOREIGN KEY (`subgroup_id`) REFERENCES `activity_subgroups` (`id`),
  CONSTRAINT `FKa7a329hsf527p0l61x9pog303` FOREIGN KEY (`reg_no`) REFERENCES `students` (`id`),
  CONSTRAINT `FKq1in7t2kuukg1xilj2i92bm2g` FOREIGN KEY (`recorded_by_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
