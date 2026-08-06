USE `spdms_lab`;

-- Schema DDL for table `alternate_working_day`
DROP TABLE IF EXISTS `alternate_working_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alternate_working_day` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `effective_date` date NOT NULL,
  `original_holiday_day` varchar(255) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `working_day` varchar(255) NOT NULL,
  `academic_calendar_month_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhhql9tdp4yqtibhjbqt1or8kp` (`academic_calendar_month_id`),
  CONSTRAINT `FKhhql9tdp4yqtibhjbqt1or8kp` FOREIGN KEY (`academic_calendar_month_id`) REFERENCES `academic_month` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
