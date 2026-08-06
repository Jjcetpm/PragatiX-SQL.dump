USE `spdms_lab`;

-- Table structure for table `stage_activity_mappings`
--

DROP TABLE IF EXISTS `stage_activity_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stage_activity_mappings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `activity_id` bigint NOT NULL,
  `stage_id` bigint NOT NULL,
  `display_order` int NOT NULL,
  `subgroup_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKop038fc85aolfs45a0dv8uod6` (`activity_id`),
  KEY `FK2dg4wbp42gll5gnoqq39fh6v` (`stage_id`),
  CONSTRAINT `FK2dg4wbp42gll5gnoqq39fh6v` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`),
  CONSTRAINT `FKop038fc85aolfs45a0dv8uod6` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage_activity_mappings`
--

LOCK TABLES `stage_activity_mappings` WRITE;
/*!40000 ALTER TABLE `stage_activity_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `stage_activity_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
