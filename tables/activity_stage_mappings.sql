USE `spdms_lab`;

-- Table structure for table `activity_stage_mappings`
--

DROP TABLE IF EXISTS `activity_stage_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_stage_mappings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `display_order` int NOT NULL,
  `activity_id` bigint NOT NULL,
  `stage_id` bigint NOT NULL,
  `subgroup_id` bigint NOT NULL,
  `award_enabled` bit(1) DEFAULT NULL,
  `award_frequency` varchar(50) DEFAULT NULL,
  `award_xp` int DEFAULT NULL,
  `penalty_enabled` bit(1) DEFAULT NULL,
  `penalty_xp` int DEFAULT NULL,
  `assignment_mode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_stage_activity` (`stage_id`,`activity_id`),
  KEY `FK1laou9t3uc6gsexeng82y5smb` (`activity_id`),
  KEY `FKl4jjroqh5ffcxbcnyf6y4s374` (`subgroup_id`),
  CONSTRAINT `FK1laou9t3uc6gsexeng82y5smb` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `FKl4jjroqh5ffcxbcnyf6y4s374` FOREIGN KEY (`subgroup_id`) REFERENCES `activity_subgroups` (`id`),
  CONSTRAINT `FKrrtriom1ji8mf8ojvds2d2gsn` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_stage_mappings`
--

LOCK TABLES `activity_stage_mappings` WRITE;
/*!40000 ALTER TABLE `activity_stage_mappings` DISABLE KEYS */;
INSERT INTO `activity_stage_mappings` VALUES (35,NULL,0,20,27,79,_binary '','Per Assignment',50,_binary '\0',0,'MANUAL'),(36,NULL,0,21,27,79,_binary '','Per Assignment',50,_binary '\0',0,'MANUAL'),(37,NULL,0,22,27,79,_binary '\0','Every Period',0,_binary '',40,'GLOBAL'),(39,NULL,0,24,27,80,_binary '','Every Period',1,_binary '',1,'GLOBAL'),(40,NULL,0,25,27,80,_binary '','Per Assignment',10,_binary '\0',0,'MANUAL'),(41,NULL,0,26,27,80,_binary '','Per Assignment',50,_binary '\0',0,'MANUAL'),(42,NULL,0,27,27,80,_binary '','Per Assignment',50,_binary '\0',0,'MANUAL'),(43,NULL,0,28,27,80,_binary '','Per Assignment',50,_binary '\0',0,'MANUAL'),(44,NULL,0,29,27,80,_binary '','Per Assignment',50,_binary '\0',0,'MANUAL'),(45,NULL,0,30,27,80,_binary '','Per Assignment',100,_binary '',150,'CLASS_COORDINATOR'),(46,NULL,0,31,27,80,_binary '','One Time',50,_binary '\0',0,'MANUAL'),(47,NULL,0,32,27,80,_binary '','One Time',100,_binary '\0',0,'CLASS_COORDINATOR'),(48,NULL,0,33,27,80,_binary '','Weekly',200,_binary '\0',0,'CLASS_COORDINATOR'),(49,NULL,0,34,27,81,_binary '','Per Assignment',100,_binary '\0',0,'MANUAL'),(50,NULL,0,35,27,81,_binary '','Monthly',100,_binary '\0',0,'MANUAL'),(51,NULL,0,36,27,81,_binary '','Daily',100,_binary '',100,'MANUAL'),(52,NULL,0,37,27,81,_binary '','Per Assignment',50,_binary '',150,'MANUAL'),(53,NULL,0,38,27,81,_binary '','One Time',100,_binary '\0',0,'MANUAL'),(54,NULL,0,20,28,82,_binary '','Per Assignment',50,_binary '\0',0,NULL),(55,NULL,0,21,28,82,_binary '','Per Assignment',50,_binary '\0',0,NULL),(56,NULL,0,22,28,82,_binary '\0','Every Period',0,_binary '',40,NULL),(58,NULL,0,24,28,83,_binary '','Every Period',1,_binary '',1,NULL),(60,NULL,0,39,28,82,_binary '','Per Assignment',50,_binary '\0',0,'CLASS_COORDINATOR'),(61,NULL,0,40,28,82,_binary '','Per Assignment',50,_binary '\0',0,'CLASS_COORDINATOR'),(62,NULL,0,41,28,84,_binary '','Per Assignment',100,_binary '\0',0,'MANUAL'),(63,NULL,0,33,28,83,_binary '','Weekly',200,_binary '\0',0,'CLASS_COORDINATOR'),(64,NULL,0,42,28,84,_binary '','Per Assignment',100,_binary '\0',0,'MANUAL'),(65,NULL,0,43,28,83,_binary '','Per Assignment',100,_binary '\0',0,'MANUAL'),(66,NULL,0,44,28,83,_binary '','Per Assignment',100,_binary '\0',0,'CLASS_COORDINATOR'),(67,NULL,0,45,28,84,_binary '','Per Assignment',100,_binary '\0',0,'CLASS_COORDINATOR'),(68,NULL,0,46,28,83,_binary '','Per Assignment',100,_binary '\0',0,'CLASS_COORDINATOR'),(69,NULL,0,38,28,84,_binary '','One Time',100,_binary '\0',0,NULL),(70,NULL,0,36,28,84,_binary '','Daily',100,_binary '',100,NULL),(71,NULL,0,37,28,84,_binary '','Per Assignment',50,_binary '',150,NULL),(72,NULL,0,47,28,83,_binary '','Per Assignment',300,_binary '\0',0,'CLASS_COORDINATOR'),(73,NULL,0,48,28,83,_binary '','Per Assignment',100,_binary '\0',0,'CLASS_COORDINATOR'),(74,NULL,0,49,28,83,_binary '','Per Assignment',150,_binary '\0',0,'CLASS_COORDINATOR'),(75,NULL,0,50,28,83,_binary '','Per Assignment',100,_binary '\0',0,'CLASS_COORDINATOR'),(76,NULL,0,51,28,83,_binary '','Per Assignment',100,_binary '\0',0,'MANUAL'),(77,NULL,0,52,28,83,_binary '','Per Assignment',200,_binary '\0',0,'CLASS_COORDINATOR');
/*!40000 ALTER TABLE `activity_stage_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
