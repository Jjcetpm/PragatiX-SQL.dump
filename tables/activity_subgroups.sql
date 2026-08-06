USE `spdms_lab`;

-- Table structure for table `activity_subgroups`
--

DROP TABLE IF EXISTS `activity_subgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_subgroups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `threshold` int NOT NULL,
  `assigned_department_id` bigint DEFAULT NULL,
  `assigned_faculty_id` bigint DEFAULT NULL,
  `stage_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgvax9c9kfqxfvdjpago66nr8a` (`assigned_department_id`),
  KEY `FK1vp1g018b7stosiid9rg14tqd` (`assigned_faculty_id`),
  KEY `FK7wnk9awbww7qjslomg21f7hrm` (`stage_id`),
  CONSTRAINT `FK1vp1g018b7stosiid9rg14tqd` FOREIGN KEY (`assigned_faculty_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK7wnk9awbww7qjslomg21f7hrm` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`),
  CONSTRAINT `FKgvax9c9kfqxfvdjpago66nr8a` FOREIGN KEY (`assigned_department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_subgroups`
--

LOCK TABLES `activity_subgroups` WRITE;
/*!40000 ALTER TABLE `activity_subgroups` DISABLE KEYS */;
INSERT INTO `activity_subgroups` VALUES (38,'must','Must (Individual)',0,NULL,NULL,20),(39,'individual','Individual',0,NULL,NULL,20),(40,'group','Groups',0,NULL,NULL,20),(79,'must','Must (Individual)',80,NULL,NULL,27),(80,'individual','Individual',150,NULL,NULL,27),(81,'group','Groups',150,NULL,NULL,27),(82,'must','Must (Individual)',100,NULL,NULL,28),(83,'individual','Individual',150,NULL,NULL,28),(84,'group','Groups',150,NULL,NULL,28);
/*!40000 ALTER TABLE `activity_subgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
