USE `spdms_lab`;

-- Schema DDL for table `faculty`
DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `dept_id` bigint NOT NULL,
  `section_id` bigint DEFAULT NULL,
  `designation` varchar(100) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_faculty_user` (`user_id`),
  KEY `fk_section_id` (`section_id`),
  KEY `faculty_ibfk_2` (`dept_id`),
  CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `faculty_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `fk_section_id` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
