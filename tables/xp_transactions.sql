USE `spdms_lab`;

-- Table structure for table `xp_transactions`
--

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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xp_transactions`
--

LOCK TABLES `xp_transactions` WRITE;
/*!40000 ALTER TABLE `xp_transactions` DISABLE KEYS */;
INSERT INTO `xp_transactions` VALUES (1,'Newspaper Reading','jaga',_binary '\0','MUST MUST (INDIVIDUAL) SKILL',NULL,_binary '\0','APPROVED','2026-08-05 10:33:54.211882',20,24,20,1),(2,'Remember/Regret talk OR Word / Sentence','jaga',_binary '\0','MUST MUST (INDIVIDUAL) COMMUNICATION',NULL,_binary '\0','APPROVED','2026-08-05 10:34:11.566859',20,24,21,1),(3,'Presentable attire - Penalty: Presentable attire - ','SYSTEM',_binary '\0','MUST MUST (INDIVIDUAL) DISCIPLINE',NULL,_binary '','APPROVED','2026-08-05 10:45:02.085575',-40,25,22,1),(4,'Newspaper Reading','subashree',_binary '\0','MUST MUST (INDIVIDUAL) SKILL',NULL,_binary '\0','APPROVED','2026-08-05 11:58:06.090634',20,25,20,1),(5,'Newspaper Reading','usha rani',_binary '\0','MUST MUST (INDIVIDUAL) SKILL',NULL,_binary '\0','APPROVED','2026-08-06 05:58:44.030064',20,24,20,1),(6,'Newspaper Reading','jaga',_binary '\0','MUST MUST (INDIVIDUAL) SKILL',NULL,_binary '\0','APPROVED','2026-08-06 06:48:58.466973',20,24,20,1),(7,'Newspaper Reading','jaga',_binary '\0','MUST MUST (INDIVIDUAL) SKILL',NULL,_binary '\0','APPROVED','2026-08-06 06:51:46.769387',20,25,20,1),(8,'Newspaper Reading','subashree',_binary '\0','MUST MUST (INDIVIDUAL) SKILL',NULL,_binary '\0','APPROVED','2026-08-06 09:09:59.730199',20,55,20,1),(9,'MS Power Point','subashree',_binary '\0','INDIVIDUAL INDIVIDUAL SKILL',NULL,_binary '\0','APPROVED','2026-08-06 09:12:05.405231',50,42,28,1),(10,'Newspaper Reading','subashree',_binary '\0','MUST MUST (INDIVIDUAL) SKILL',NULL,_binary '\0','APPROVED','2026-08-06 10:23:50.651590',50,56,20,1),(11,'Newspaper Reading','subashree',_binary '\0','MUST MUST (INDIVIDUAL) SKILL',NULL,_binary '\0','APPROVED','2026-08-06 10:24:20.866475',50,56,20,1),(12,'Remember/Regret talk OR Word / Sentence','subashree',_binary '\0','MUST MUST (INDIVIDUAL) COMMUNICATION',NULL,_binary '\0','APPROVED','2026-08-06 10:24:47.714392',50,56,21,1),(13,'Assignment Physics','jaga',_binary '\0','INDIVIDUAL INDIVIDUAL ACADEMIC',NULL,_binary '\0','APPROVED','2026-08-06 10:26:52.771725',10,56,25,1),(14,'MS Word Document','subashree',_binary '\0','INDIVIDUAL INDIVIDUAL SKILL',NULL,_binary '\0','APPROVED','2026-08-06 10:27:54.838187',50,56,26,1),(15,'MS Power Point','subashree',_binary '\0','INDIVIDUAL INDIVIDUAL SKILL',NULL,_binary '\0','APPROVED','2026-08-06 10:28:14.916784',50,56,28,1),(16,'MS Excel','Mahalakshmi',_binary '\0','INDIVIDUAL INDIVIDUAL SKILL',NULL,_binary '\0','APPROVED','2026-08-06 10:28:45.167166',50,56,27,1);
/*!40000 ALTER TABLE `xp_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
