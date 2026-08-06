USE `spdms_lab`;

-- Schema DDL for table `teams`
DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `size` int NOT NULL,
  `captain_id` bigint DEFAULT NULL,
  `assignment_id` bigint DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `department_id` bigint DEFAULT NULL,
  `section_id` bigint DEFAULT NULL,
  `vice_captain_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKqcvyixaqvy6a1e3haycgy0nja` (`name`),
  UNIQUE KEY `uk_team_name_assignment` (`name`,`assignment_id`),
  UNIQUE KEY `uk_team_name_class` (`name`,`department_id`,`year`,`section_id`),
  KEY `FKc59hkkmfd3fb1w4dgewg3lfh1` (`captain_id`),
  KEY `FKi382pmjr988ro4g3t2c08h1hd` (`assignment_id`),
  KEY `FKcq9jk9qh4ox827y0d161rabce` (`created_by_id`),
  KEY `FKkteyamwleykiqb2nv0cu2fc3r` (`department_id`),
  KEY `FK938r0tivp59n0bmou7dhv6v56` (`section_id`),
  KEY `FKfx82rxx8m5xjjxhsy6tmhhbke` (`vice_captain_id`),
  CONSTRAINT `FK938r0tivp59n0bmou7dhv6v56` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  CONSTRAINT `FKc59hkkmfd3fb1w4dgewg3lfh1` FOREIGN KEY (`captain_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKcq9jk9qh4ox827y0d161rabce` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKfx82rxx8m5xjjxhsy6tmhhbke` FOREIGN KEY (`vice_captain_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKi382pmjr988ro4g3t2c08h1hd` FOREIGN KEY (`assignment_id`) REFERENCES `activity_assignments` (`id`),
  CONSTRAINT `FKkteyamwleykiqb2nv0cu2fc3r` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
