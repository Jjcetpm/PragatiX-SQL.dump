USE `spdms_lab`;

-- Schema DDL for table `badge_requests`
DROP TABLE IF EXISTS `badge_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `badge_requests` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `remarks` text,
  `requested_at` datetime(6) NOT NULL,
  `reviewed_at` datetime(6) DEFAULT NULL,
  `reviewed_by` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `badge_id` bigint NOT NULL,
  `department_id` bigint DEFAULT NULL,
  `section_id` bigint DEFAULT NULL,
  `student_id` bigint NOT NULL,
  `proof_link` text,
  PRIMARY KEY (`id`),
  KEY `FKt3g2npskagiy54ujcokkt8krq` (`badge_id`),
  KEY `FK7wb98rahkhgh7bgbvqh5ka2iw` (`department_id`),
  KEY `FK22d5eg8y06gdhwx2avkhkqm1r` (`section_id`),
  KEY `FK4s80g104ewi5930vmn00pxyqe` (`student_id`),
  CONSTRAINT `FK22d5eg8y06gdhwx2avkhkqm1r` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  CONSTRAINT `FK4s80g104ewi5930vmn00pxyqe` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FK7wb98rahkhgh7bgbvqh5ka2iw` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `FKt3g2npskagiy54ujcokkt8krq` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
