USE `spdms_lab`;

-- Schema DDL for table `activity_assignments`
DROP TABLE IF EXISTS `activity_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_assignments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `activity_id` bigint DEFAULT NULL,
  `section_id` bigint DEFAULT NULL,
  `faculty_id` bigint DEFAULT NULL,
  `assigned_date` date NOT NULL DEFAULT (curdate()),
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `assigned_at` datetime(6) NOT NULL,
  `assigned_by_id` bigint NOT NULL,
  `department_id` bigint NOT NULL,
  `teacher_id` bigint DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `assignment_scope` enum('DEPARTMENT','GLOBAL','SECTION','SPECIFIC_FACULTY') NOT NULL,
  `stage_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_activity_assignment` (`activity_id`,`section_id`,`faculty_id`),
  KEY `activity_assignments_ibfk_2` (`section_id`),
  KEY `activity_assignments_ibfk_3` (`faculty_id`),
  KEY `FKs6rb1fk0d3b4fmrpjs6ka2i4q` (`assigned_by_id`),
  KEY `FKs7l7yvgwwafjp00ii2yamsndp` (`department_id`),
  KEY `FKbo8m8a2oca785upuafbp48lov` (`teacher_id`),
  KEY `FKdksttwvyj7vewlu9fnm9ib250` (`stage_id`),
  CONSTRAINT `activity_assignments_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `activity_assignments_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  CONSTRAINT `activity_assignments_ibfk_3` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`),
  CONSTRAINT `FKbo8m8a2oca785upuafbp48lov` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKdksttwvyj7vewlu9fnm9ib250` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`),
  CONSTRAINT `FKs6rb1fk0d3b4fmrpjs6ka2i4q` FOREIGN KEY (`assigned_by_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKs7l7yvgwwafjp00ii2yamsndp` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=885 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
