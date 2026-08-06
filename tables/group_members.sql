USE `spdms_lab`;

-- Table structure for table `group_members`
--

DROP TABLE IF EXISTS `group_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_members` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_captain` bit(1) NOT NULL,
  `student_id` bigint NOT NULL,
  `group_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_group_student` (`group_id`,`student_id`),
  KEY `FKriqbhx06deaevh9o051g4fo95` (`student_id`),
  CONSTRAINT `FK3au16gnt2ywalakrslk2vhxj9` FOREIGN KEY (`group_id`) REFERENCES `students_group` (`id`),
  CONSTRAINT `FKriqbhx06deaevh9o051g4fo95` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_members`
--

LOCK TABLES `group_members` WRITE;
/*!40000 ALTER TABLE `group_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_members` ENABLE KEYS */;
UNLOCK TABLES;

--
