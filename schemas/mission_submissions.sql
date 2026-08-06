USE `spdms_lab`;

-- Schema DDL for table `mission_submissions`
DROP TABLE IF EXISTS `mission_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mission_submissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `evidence_url` varchar(500) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `submitted_at` datetime(6) DEFAULT NULL,
  `week_number` int DEFAULT NULL,
  `xp_awarded` int DEFAULT NULL,
  `mission_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdiekhr3skruynrind97ticy4k` (`mission_id`),
  KEY `FKdwdtk0amkvmdqxowtub3xymuo` (`student_id`),
  CONSTRAINT `FKdiekhr3skruynrind97ticy4k` FOREIGN KEY (`mission_id`) REFERENCES `missions` (`id`),
  CONSTRAINT `FKdwdtk0amkvmdqxowtub3xymuo` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
