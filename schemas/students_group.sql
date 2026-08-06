USE `spdms_lab`;

-- Schema DDL for table `students_group`
DROP TABLE IF EXISTS `students_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dept_id` bigint NOT NULL,
  `name` varchar(100) NOT NULL,
  `max_size` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_students_group` (`dept_id`,`name`),
  UNIQUE KEY `uq_students_team` (`dept_id`,`name`),
  CONSTRAINT `FKj47s3n0afrqp3i2jcxsukp2ha` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `chk_group_size` CHECK ((`max_size` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
