USE `spdms_lab`;

-- Table structure for table `student_guardians`
--

DROP TABLE IF EXISTS `student_guardians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_guardians` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint NOT NULL,
  `guardian_name` varchar(150) NOT NULL,
  `relationship` enum('FATHER','MOTHER','GUARDIAN','PARENT') NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reg_no` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`,`relationship`),
  UNIQUE KEY `reg_no` (`reg_no`,`relationship`),
  KEY `idx_guardian_student` (`student_id`),
  CONSTRAINT `fk_guardian_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_guardians`
--

LOCK TABLES `student_guardians` WRITE;
/*!40000 ALTER TABLE `student_guardians` DISABLE KEYS */;
INSERT INTO `student_guardians` VALUES (1,23,'Thiruppathi','FATHER','6380170548','',1,'2026-07-22 11:23:16','2026-07-22 11:23:16','36'),(2,35,'Jagadheesh','PARENT','6383007210','',1,'2026-07-22 11:50:42','2026-07-22 11:50:42','24CSC101'),(3,75,'Jagadheesh','FATHER','6383007210','',1,'2026-07-22 11:52:02','2026-07-22 11:52:02','24CSC141'),(4,36,'Sharugesh','FATHER','6380170548','',1,'2026-07-22 15:02:41','2026-07-22 15:02:41','24CSC102'),(5,22,'selvakumar','FATHER','6380170548','',1,'2026-07-23 10:24:37','2026-07-23 10:24:37','99'),(7,96,'','GUARDIAN','','',1,'2026-08-04 09:47:59','2026-08-04 09:47:59','1234'),(9,98,'','GUARDIAN','','',1,'2026-08-05 13:19:37','2026-08-05 13:19:37','CSE2619');
/*!40000 ALTER TABLE `student_guardians` ENABLE KEYS */;
UNLOCK TABLES;

--
