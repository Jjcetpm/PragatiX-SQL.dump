USE `spdms_lab`;

-- Table structure for table `student_activity_streaks`
--

DROP TABLE IF EXISTS `student_activity_streaks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_activity_streaks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `current_streak` int NOT NULL,
  `last_completed_date` date DEFAULT NULL,
  `longest_streak` int NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `activity_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_student_activity_streak` (`student_id`,`activity_id`),
  KEY `FKs157a0pqlp91rv6rx1oha2t1k` (`activity_id`),
  CONSTRAINT `FKpjweg58rirwvsqi281ic3kul5` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKs157a0pqlp91rv6rx1oha2t1k` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_activity_streaks`
--

LOCK TABLES `student_activity_streaks` WRITE;
/*!40000 ALTER TABLE `student_activity_streaks` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_activity_streaks` ENABLE KEYS */;
UNLOCK TABLES;

--
