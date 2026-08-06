USE `spdms_lab`;

-- Table structure for table `semesters`
--

DROP TABLE IF EXISTS `semesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semesters` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `semester_no` tinyint NOT NULL,
  `semester_name` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `semester_no` (`semester_no`),
  UNIQUE KEY `uq_semester_name` (`semester_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semesters`
--

LOCK TABLES `semesters` WRITE;
/*!40000 ALTER TABLE `semesters` DISABLE KEYS */;
INSERT INTO `semesters` VALUES (1,1,'Semester I','2026-07-06 10:45:15','2026-07-06 10:45:15'),(2,2,'Semester II','2026-07-06 10:45:15','2026-07-06 10:45:15'),(3,3,'Semester III','2026-07-06 10:45:15','2026-07-06 10:45:15'),(4,4,'Semester IV','2026-07-06 10:45:15','2026-07-06 10:45:15'),(5,5,'Semester V','2026-07-06 10:45:15','2026-07-06 10:45:15'),(6,6,'Semester VI','2026-07-06 10:45:15','2026-07-06 10:45:15'),(7,7,'Semester VII','2026-07-06 10:45:15','2026-07-06 10:45:15'),(8,8,'Semester VIII','2026-07-06 10:45:15','2026-07-06 10:45:15'),(9,0,'Semester 0','2026-07-10 08:31:41','2026-07-10 08:31:41');
/*!40000 ALTER TABLE `semesters` ENABLE KEYS */;
UNLOCK TABLES;

--
