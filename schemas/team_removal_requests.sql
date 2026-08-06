USE `spdms_lab`;

-- Schema DDL for table `team_removal_requests`
DROP TABLE IF EXISTS `team_removal_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_removal_requests` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `reason` varchar(500) NOT NULL,
  `status` varchar(20) NOT NULL,
  `captain_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  `team_id` bigint NOT NULL,
  `reg_no` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6ci2e9rcg55cn6aju5o1e2fiu` (`captain_id`),
  KEY `FK3plqqp3ya6i524272qwjsdjhk` (`student_id`),
  KEY `FK8siu2o6r727x6co4ahugdf3wo` (`team_id`),
  KEY `FKgpv2t0mhgoinelie9tqoi38ic` (`reg_no`),
  CONSTRAINT `FK3plqqp3ya6i524272qwjsdjhk` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FK6ci2e9rcg55cn6aju5o1e2fiu` FOREIGN KEY (`captain_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FK8siu2o6r727x6co4ahugdf3wo` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `FKgpv2t0mhgoinelie9tqoi38ic` FOREIGN KEY (`reg_no`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
