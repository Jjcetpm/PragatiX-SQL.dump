USE `spdms_lab`;

-- Table structure for table `timetable_entries`
--

DROP TABLE IF EXISTS `timetable_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timetable_entries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `day` varchar(30) NOT NULL,
  `end_time` varchar(15) NOT NULL,
  `period_number` int NOT NULL,
  `start_time` varchar(15) NOT NULL,
  `faculty_id` bigint NOT NULL,
  `subject_id` bigint NOT NULL,
  `timetable_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj61690mwftwguyahrgmv692ku` (`faculty_id`),
  KEY `FKi8jv4d492h85hygx2v35aytjh` (`subject_id`),
  KEY `FKfoi9lt7rgy5hb73bwva21u6ln` (`timetable_id`),
  CONSTRAINT `FKfoi9lt7rgy5hb73bwva21u6ln` FOREIGN KEY (`timetable_id`) REFERENCES `timetable` (`id`),
  CONSTRAINT `FKi8jv4d492h85hygx2v35aytjh` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  CONSTRAINT `FKj61690mwftwguyahrgmv692ku` FOREIGN KEY (`faculty_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable_entries`
--

LOCK TABLES `timetable_entries` WRITE;
/*!40000 ALTER TABLE `timetable_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetable_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
