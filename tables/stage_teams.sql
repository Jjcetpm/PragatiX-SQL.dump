USE `spdms_lab`;

-- Table structure for table `stage_teams`
--

DROP TABLE IF EXISTS `stage_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stage_teams` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `captain_id` bigint DEFAULT NULL,
  `stage_id` bigint NOT NULL,
  `team_id` bigint NOT NULL,
  `vice_captain_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_stage_team` (`stage_id`,`team_id`),
  KEY `FKjn8oms5hngw5t7h4uq5q5vakp` (`captain_id`),
  KEY `FKhkmy7e8i9p3oj3ih17cf94ybk` (`team_id`),
  KEY `FKtoym937dpt8rd4k4088pal1ld` (`vice_captain_id`),
  CONSTRAINT `FK44hre9s69jf2plrw2bhmnhwgg` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`),
  CONSTRAINT `FKhkmy7e8i9p3oj3ih17cf94ybk` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `FKjn8oms5hngw5t7h4uq5q5vakp` FOREIGN KEY (`captain_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKtoym937dpt8rd4k4088pal1ld` FOREIGN KEY (`vice_captain_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage_teams`
--

LOCK TABLES `stage_teams` WRITE;
/*!40000 ALTER TABLE `stage_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `stage_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
