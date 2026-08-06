USE `spdms_lab`;

-- Schema DDL for table `student_activity_xp`
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
