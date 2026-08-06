USE `spdms_lab`;

-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_members` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint NOT NULL,
  `is_captain` tinyint(1) NOT NULL DEFAULT '0',
  `team_id` bigint NOT NULL,
  `reg_no` bigint NOT NULL,
  `role` enum('CAPTAIN','MEMBER','VICE_CAPTAIN') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_team_student` (`team_id`,`student_id`),
  KEY `student_id` (`student_id`),
  KEY `FKon9ryy73ym5urs24gsm2dre9w` (`reg_no`),
  CONSTRAINT `FKon9ryy73ym5urs24gsm2dre9w` FOREIGN KEY (`reg_no`) REFERENCES `students` (`id`),
  CONSTRAINT `FKtgca08el3ofisywcf11f0f76t` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `team_members_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;
UNLOCK TABLES;

--
