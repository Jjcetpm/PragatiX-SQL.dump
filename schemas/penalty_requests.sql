USE `spdms_lab`;

-- Schema DDL for table `penalty_requests`
DROP TABLE IF EXISTS `penalty_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penalty_requests` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(100) DEFAULT NULL,
  `approved_at` datetime(6) DEFAULT NULL,
  `approved_by` varchar(100) DEFAULT NULL,
  `cc_name` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `penalty_xp` int NOT NULL,
  `reason` text,
  `rejected_reason` text,
  `status` varchar(20) NOT NULL,
  `teacher_name` varchar(100) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `activity_id` bigint DEFAULT NULL,
  `cc_id` bigint DEFAULT NULL,
  `student_id` bigint NOT NULL,
  `teacher_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKps5lgvixbub7xr7vn9rijrrvy` (`activity_id`),
  KEY `FK4ghjl43a5xu4738820pa1op0j` (`cc_id`),
  KEY `FKs86j9i2prb9a66hubxfn5pt67` (`student_id`),
  KEY `FKqphr3ibe5nsn2dq1j9kamrfku` (`teacher_id`),
  CONSTRAINT `FK4ghjl43a5xu4738820pa1op0j` FOREIGN KEY (`cc_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKps5lgvixbub7xr7vn9rijrrvy` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `FKqphr3ibe5nsn2dq1j9kamrfku` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKs86j9i2prb9a66hubxfn5pt67` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
