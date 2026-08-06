USE `spdms_lab`;

-- Table structure for table `badge_requests`
--

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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badge_requests`
--

LOCK TABLES `badge_requests` WRITE;
/*!40000 ALTER TABLE `badge_requests` DISABLE KEYS */;
INSERT INTO `badge_requests` VALUES (1,NULL,'2026-07-24 17:08:07.585957','2026-07-24 21:36:14.000097','jaga','REJECTED',1,8,47,24,NULL),(2,NULL,'2026-07-24 17:08:15.566110','2026-07-24 21:36:16.546322','jaga','REJECTED',4,8,47,24,NULL),(3,NULL,'2026-07-24 21:37:20.058016','2026-07-24 21:42:55.681816','jaga','APPROVED',4,8,47,24,'https://chatgpt.com/c/6a50f662-1cf8-83ee-beb6-c00829c5e326'),(4,NULL,'2026-08-05 12:03:17.771001','2026-08-05 12:18:26.233428','jaga','APPROVED',1,8,47,24,'https://github.com/sharugesh2303'),(5,NULL,'2026-08-05 12:04:26.467604','2026-08-05 12:18:30.134043','jaga','APPROVED',2,8,47,24,'https://github.com/sharugesh2303'),(6,NULL,'2026-08-06 10:39:07.221347',NULL,NULL,'PENDING',6,8,47,23,'https://sharugesh/2303');
/*!40000 ALTER TABLE `badge_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
