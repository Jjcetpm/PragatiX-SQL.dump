USE `spdms_lab`;

-- Table structure for table `discipline_logs`
--

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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline_logs`
--

LOCK TABLES `discipline_logs` WRITE;
/*!40000 ALTER TABLE `discipline_logs` DISABLE KEYS */;
INSERT INTO `discipline_logs` VALUES (3,21,NULL,NULL,4,'test',NULL,'2026-07-08 10:33:21','2026-07-08 10:28:05','2026-07-09 07:00:50',6,NULL,NULL),(4,21,NULL,NULL,12,'test',NULL,'2026-07-08 10:33:30','2026-07-08 10:28:15','2026-07-09 07:00:50',6,NULL,NULL),(5,15,NULL,NULL,10,'Attendance Above 95% (+10)',NULL,'2026-07-08 10:35:28','2026-07-08 10:30:13','2026-07-09 07:00:50',NULL,NULL,NULL),(6,24,NULL,NULL,-5,'Mobile Usage (-5)',NULL,'2026-07-09 11:33:29','2026-07-09 11:33:28','2026-07-09 11:33:28',13,NULL,NULL),(7,15,NULL,NULL,-5,'Mobile Usage (-5)',NULL,'2026-07-10 08:36:21','2026-07-10 08:36:20','2026-08-05 05:30:33',13,NULL,NULL),(8,15,NULL,NULL,-3,'Late Arrival (-3)',NULL,'2026-07-10 08:36:37','2026-07-10 08:36:36','2026-07-10 08:36:36',13,NULL,NULL),(9,17,NULL,NULL,20,'Monday Remember / Regret Journal',NULL,'2026-07-21 12:08:52','2026-07-21 12:08:51','2026-07-21 12:08:51',6,NULL,NULL),(10,17,NULL,NULL,20,'Monday Remember / Regret Journal',NULL,'2026-07-21 12:08:59','2026-07-21 12:08:58','2026-07-21 12:08:58',6,NULL,NULL),(11,17,NULL,NULL,-20,'Full Day Absent Penalty (Attendance Date: 2026-07-27)',NULL,'2026-08-01 17:28:47','2026-08-01 17:28:47','2026-08-05 05:30:33',NULL,NULL,NULL),(12,25,NULL,NULL,-20,'Partial Day Penalty (Attendance Date: 2026-07-27)',NULL,'2026-08-01 17:28:47','2026-08-01 17:28:47','2026-08-05 05:30:33',NULL,NULL,NULL),(13,16,NULL,NULL,-20,'Full Day Absent Penalty (Attendance Date: 2026-07-27)',NULL,'2026-08-01 17:28:49','2026-08-01 17:28:48','2026-08-05 05:30:33',NULL,NULL,NULL),(14,17,NULL,NULL,-20,'Full Day Absent Penalty (Attendance Date: 2026-07-27)',NULL,'2026-08-01 17:37:33','2026-08-01 17:37:32','2026-08-05 05:30:33',NULL,NULL,NULL),(15,25,NULL,NULL,-20,'Partial Day Penalty (Attendance Date: 2026-07-27)',NULL,'2026-08-01 17:37:33','2026-08-01 17:37:32','2026-08-05 05:30:33',NULL,NULL,NULL),(16,16,NULL,NULL,-20,'Full Day Absent Penalty (Attendance Date: 2026-07-27)',NULL,'2026-08-01 17:37:34','2026-08-01 17:37:34','2026-08-05 05:30:33',NULL,NULL,NULL),(17,17,NULL,NULL,-20,'Full Day Absent Penalty (Attendance Date: 2026-07-27)',NULL,'2026-08-01 17:43:49','2026-08-01 17:43:48','2026-08-05 05:30:33',NULL,NULL,NULL),(18,25,NULL,NULL,-20,'Partial Day Penalty (Attendance Date: 2026-07-27)',NULL,'2026-08-01 17:43:49','2026-08-01 17:43:49','2026-08-05 05:30:33',NULL,NULL,NULL),(19,16,NULL,NULL,-20,'Full Day Absent Penalty (Attendance Date: 2026-07-27)',NULL,'2026-08-01 17:43:51','2026-08-01 17:43:50','2026-08-05 05:30:33',NULL,NULL,NULL);
/*!40000 ALTER TABLE `discipline_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
