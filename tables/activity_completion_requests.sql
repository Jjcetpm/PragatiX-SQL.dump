USE `spdms_lab`;

-- Table structure for table `activity_completion_requests`
--

DROP TABLE IF EXISTS `activity_completion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_completion_requests` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint NOT NULL,
  `team_id` bigint DEFAULT NULL,
  `activity_id` bigint NOT NULL,
  `cc_id` bigint DEFAULT NULL,
  `proof_url` varchar(500) DEFAULT NULL,
  `reason` text,
  `status` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approved_by` varchar(100) DEFAULT NULL,
  `rejected_reason` text,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_acr_student` (`student_id`),
  KEY `fk_acr_team` (`team_id`),
  KEY `fk_acr_activity` (`activity_id`),
  KEY `fk_acr_cc` (`cc_id`),
  CONSTRAINT `fk_acr_activity` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `fk_acr_cc` FOREIGN KEY (`cc_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_acr_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `fk_acr_team` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_completion_requests`
--

LOCK TABLES `activity_completion_requests` WRITE;
/*!40000 ALTER TABLE `activity_completion_requests` DISABLE KEYS */;
INSERT INTO `activity_completion_requests` VALUES (6,23,NULL,20,13,NULL,NULL,'APPROVED','2026-08-06 07:06:06','2026-08-06 07:07:35','jaga',NULL,'2026-08-06 07:07:35'),(7,23,NULL,25,13,NULL,NULL,'PENDING','2026-08-06 10:41:26',NULL,NULL,NULL,'2026-08-06 10:41:26');
/*!40000 ALTER TABLE `activity_completion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
