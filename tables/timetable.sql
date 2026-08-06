USE `spdms_lab`;

-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timetable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `academic_year_id` bigint NOT NULL,
  `created_by_id` bigint NOT NULL,
  `department_id` bigint NOT NULL,
  `section_id` bigint NOT NULL,
  `semester_id` bigint NOT NULL,
  `year_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5edkxibmo2r3eeegkfvdp24o6` (`academic_year_id`),
  KEY `FKbf0x6ki3ym112b24shaf1ia97` (`created_by_id`),
  KEY `FKe7pho8bicl9ky0w6l3hepo4bc` (`department_id`),
  KEY `FKog52wc8yod6g56621vygalt2f` (`section_id`),
  KEY `FKlwqgafdl0hrmeg548uarkrbvi` (`semester_id`),
  KEY `FKb7eoap2ph5ywqf8tn5tw25w82` (`year_id`),
  CONSTRAINT `FK5edkxibmo2r3eeegkfvdp24o6` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `FKb7eoap2ph5ywqf8tn5tw25w82` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`),
  CONSTRAINT `FKbf0x6ki3ym112b24shaf1ia97` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKe7pho8bicl9ky0w6l3hepo4bc` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `FKlwqgafdl0hrmeg548uarkrbvi` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`),
  CONSTRAINT `FKog52wc8yod6g56621vygalt2f` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable`
--

LOCK TABLES `timetable` WRITE;
/*!40000 ALTER TABLE `timetable` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
