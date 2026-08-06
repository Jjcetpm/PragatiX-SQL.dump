USE `spdms_lab`;

-- Table structure for table `student_badges`
--

DROP TABLE IF EXISTS `student_badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_badges` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `approved_by` varchar(100) DEFAULT NULL,
  `awarded_at` datetime(6) DEFAULT NULL,
  `evidence_url` text,
  `status` varchar(50) NOT NULL,
  `badge_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdogjuytddp97f0p6ivt3r8ufp` (`badge_id`),
  KEY `FKtciahqu1w23ccrula5smx9i73` (`student_id`),
  CONSTRAINT `FKdogjuytddp97f0p6ivt3r8ufp` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`),
  CONSTRAINT `FKtciahqu1w23ccrula5smx9i73` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_badges`
--

LOCK TABLES `student_badges` WRITE;
/*!40000 ALTER TABLE `student_badges` DISABLE KEYS */;
INSERT INTO `student_badges` VALUES (1,'jaga','2026-07-08 10:25:15.912880','ghb','APPROVED',1,15),(2,'jaga','2026-07-09 05:14:04.715384','gggg','APPROVED',2,15),(3,'jaga','2026-07-13 12:52:06.219264','gfg','APPROVED',1,23),(4,'admin','2026-07-15 11:34:50.699692','https://github.com/sharugesh2303/Discipline_Monitor_Frontend','REJECTED',4,23),(5,'admin','2026-07-15 11:34:52.618319','https://github.com/sharugesh2303/Discipline_Monitor_Frontend.git','REJECTED',8,23),(6,'admin','2026-07-15 11:34:55.143459','https://github.com/sharugesh2303/Discipline_Monitor_Frontend.git','REJECTED',2,23),(7,'admin','2026-07-15 16:15:10.798049','https://docs.google.com/document/d/1mNrMurcTRteM322DlAVrNnVQWWZU91c3eVOg43Z3aIE/edit?usp=drive_link','APPROVED',4,23),(8,'jaga','2026-07-29 05:38:19.091065','https://drive.google.com/file/d/1rPQdMcDWt0DFgub5PFDGIZJUq1fqREiI/view?usp=drive_link','REJECTED',8,23),(9,'jaga','2026-07-24 21:42:55.713238',NULL,'APPROVED',4,24),(10,'jaga','2026-07-29 05:38:19.392576','pragatix.in','REJECTED',7,23),(11,'jaga','2026-07-29 05:38:13.474847','pragatix.in','REJECTED',7,23),(12,'jaga','2026-07-29 05:38:03.843052','pragatix.in','REJECTED',7,23),(13,'jaga','2026-07-29 05:37:53.625766','pragatix.in','REJECTED',7,23),(14,'jaga','2026-07-29 05:37:58.394307','pragatix.in','REJECTED',7,23),(15,'jaga','2026-07-29 05:37:49.408127','pragatix.in','REJECTED',7,23),(16,'admin','2026-07-29 05:33:45.581236','pragatix.in','APPROVED',8,22),(17,'jaga','2026-07-30 16:45:12.623573','https://pragatix.in','APPROVED',3,22),(18,'jaga','2026-08-05 12:18:26.239465',NULL,'APPROVED',1,24),(19,'jaga','2026-08-05 12:18:30.139048',NULL,'APPROVED',2,24);
/*!40000 ALTER TABLE `student_badges` ENABLE KEYS */;
UNLOCK TABLES;

--
