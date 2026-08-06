USE `spdms_lab`;

-- Schema DDL for table `attendance_records`
DROP TABLE IF EXISTS `attendance_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_records` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `marked_at` datetime(6) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` enum('ABSENT','PRESENT') NOT NULL,
  `attendance_session_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_attendance_record` (`attendance_session_id`,`student_id`),
  KEY `FKb5ijilkgrgx66qn66iajdkyb9` (`student_id`),
  CONSTRAINT `FKb5ijilkgrgx66qn66iajdkyb9` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKbeajy0xxweanmk3g7aujtf5bj` FOREIGN KEY (`attendance_session_id`) REFERENCES `attendance_sessions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
