USE `spdms_lab`;

-- Table structure for table `student_activity_xp`
--

DROP TABLE IF EXISTS `student_activity_xp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_activity_xp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `awarded_at` datetime(6) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `xp_awarded` int NOT NULL,
  `activity_id` bigint NOT NULL,
  `assignment_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  `teacher_id` bigint NOT NULL,
  `result` varchar(50) NOT NULL,
  `stage_order` int DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FKsjhq1ffk9cbkch5bnvom9aypr` (`activity_id`),
  KEY `FK1qs9jd73r6b8jx0m251k34o06` (`assignment_id`),
  KEY `FKdr6722wmy4cm78xx6vrpdtil7` (`student_id`),
  KEY `FKqpniaf47k9cc8bmqmi4jkokt3` (`teacher_id`),
  CONSTRAINT `FK1qs9jd73r6b8jx0m251k34o06` FOREIGN KEY (`assignment_id`) REFERENCES `activity_assignments` (`id`),
  CONSTRAINT `FKdr6722wmy4cm78xx6vrpdtil7` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKqpniaf47k9cc8bmqmi4jkokt3` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKsjhq1ffk9cbkch5bnvom9aypr` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_activity_xp`
--

LOCK TABLES `student_activity_xp` WRITE;
/*!40000 ALTER TABLE `student_activity_xp` DISABLE KEYS */;
INSERT INTO `student_activity_xp` VALUES (69,'2026-08-05 09:39:27.153913','',10,25,760,24,13,'PASS',2),(70,'2026-08-05 09:39:27.303177','',10,25,760,35,13,'PASS',2),(71,'2026-08-05 09:39:27.357783','',10,25,760,37,13,'PASS',2),(72,'2026-08-05 09:42:05.628146','',-40,22,733,23,13,'FAIL',2),(79,'2026-08-06 09:09:59.721627','',20,20,822,55,44,'PASS',1),(80,'2026-08-06 09:12:05.400579','',50,28,830,42,44,'PASS',1),(81,'2026-08-06 10:23:50.639270','',50,20,822,56,44,'PASS',1),(82,'2026-08-06 10:24:20.862625','',50,20,822,56,44,'PASS',1),(83,'2026-08-06 10:24:47.711558','',50,21,825,56,44,'PASS',1),(84,'2026-08-06 10:26:52.765606','',10,25,760,56,13,'PASS',1),(85,'2026-08-06 10:27:54.833071','',50,26,826,56,44,'PASS',1),(86,'2026-08-06 10:28:14.899670','',50,28,830,56,44,'PASS',1),(87,'2026-08-06 10:28:45.163523','',50,27,828,56,21,'PASS',1);
/*!40000 ALTER TABLE `student_activity_xp` ENABLE KEYS */;
UNLOCK TABLES;

--
