USE `spdms_lab`;

-- Schema DDL for table `streaks`
DROP TABLE IF EXISTS `streaks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `streaks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `current_streak` int NOT NULL,
  `is_broken` bit(1) NOT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `penalty_per_break` int NOT NULL,
  `streak_type` varchar(50) NOT NULL,
  `student_id` bigint NOT NULL,
  `reg_no` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKehg7pdbwrdqkiq17jnqowqwg5` (`student_id`),
  KEY `FKgs4huer1l3h459838yihayxqx` (`reg_no`),
  CONSTRAINT `FKehg7pdbwrdqkiq17jnqowqwg5` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
