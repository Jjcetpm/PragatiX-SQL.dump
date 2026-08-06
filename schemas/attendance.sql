USE `spdms_lab`;

-- Schema DDL for table `attendance`
DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint NOT NULL,
  `faculty_id` bigint NOT NULL,
  `status` enum('PRESENT','ABSENT','OD','LEAVE') NOT NULL DEFAULT 'PRESENT',
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reg_no` varchar(255) NOT NULL,
  `attendance_date` date NOT NULL DEFAULT '2026-01-01',
  `period_no` int NOT NULL DEFAULT '1',
  `subject_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_attendance_student_date_period` (`student_id`,`attendance_date`,`period_no`),
  KEY `fk_attendance_faculty` (`faculty_id`),
  KEY `FK6rbdq2aqpc01xhtp5d65mi4a4` (`reg_no`),
  KEY `FKcjg1qkkmmy4dtktcdug457x4p` (`subject_id`),
  CONSTRAINT `fk_attendance_faculty` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`),
  CONSTRAINT `fk_attendance_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKcjg1qkkmmy4dtktcdug457x4p` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1537 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
