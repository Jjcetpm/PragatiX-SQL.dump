USE `spdms_lab`;

-- Schema DDL for table `attendance_sessions`
DROP TABLE IF EXISTS `attendance_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_sessions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attendance_date` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `period_number` int NOT NULL,
  `academic_year_id` bigint NOT NULL,
  `department_id` bigint NOT NULL,
  `section_id` bigint DEFAULT NULL,
  `teacher_id` bigint NOT NULL,
  `year_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_attendance_session` (`attendance_date`,`period_number`,`department_id`,`section_id`,`year_id`),
  KEY `FK80kb2jo2jw76bvgg2vi7u00do` (`academic_year_id`),
  KEY `FK7qk3qm8p22rfnlqqm5buc3wt7` (`department_id`),
  KEY `FKpcs7hgdua629c9s4x702j0sp2` (`section_id`),
  KEY `FKpnjo169km7kmsfh5t60do9vyh` (`teacher_id`),
  KEY `FKbqim9btko5s07w467rtv8ms56` (`year_id`),
  CONSTRAINT `FK7qk3qm8p22rfnlqqm5buc3wt7` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `FK80kb2jo2jw76bvgg2vi7u00do` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `FKbqim9btko5s07w467rtv8ms56` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`),
  CONSTRAINT `FKpcs7hgdua629c9s4x702j0sp2` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  CONSTRAINT `FKpnjo169km7kmsfh5t60do9vyh` FOREIGN KEY (`teacher_id`) REFERENCES `faculty` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
