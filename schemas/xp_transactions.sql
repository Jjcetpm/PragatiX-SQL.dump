USE `spdms_lab`;

-- Schema DDL for table `xp_transactions`
DROP TABLE IF EXISTS `xp_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xp_transactions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(255) NOT NULL,
  `approved_by` varchar(100) DEFAULT NULL,
  `cap_applied` bit(1) NOT NULL,
  `category` varchar(50) NOT NULL,
  `evidence_url` varchar(500) DEFAULT NULL,
  `is_penalty` bit(1) NOT NULL,
  `status` varchar(20) NOT NULL,
  `submitted_at` datetime(6) NOT NULL,
  `xp_points` int NOT NULL,
  `student_id` bigint NOT NULL,
  `activity_id` bigint DEFAULT NULL,
  `stage_order` int DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK1qh1hd5r941kikty3go7isxj9` (`student_id`),
  KEY `FKgs7fmfhhyews0ls3yurpvbsgh` (`activity_id`),
  CONSTRAINT `FK1qh1hd5r941kikty3go7isxj9` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKgs7fmfhhyews0ls3yurpvbsgh` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
