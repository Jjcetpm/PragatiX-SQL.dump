USE `spdms_lab`;

-- Schema DDL for table `attendance_settings`
DROP TABLE IF EXISTS `attendance_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_settings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `daily_engine_enabled` bit(1) DEFAULT NULL,
  `daily_processing_time` time(6) DEFAULT NULL,
  `full_day_penalty` int DEFAULT NULL,
  `partial_day_penalty` int DEFAULT NULL,
  `perfect_week_reward` int DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `week_end_day` enum('FRIDAY','MONDAY','SATURDAY','SUNDAY','THURSDAY','TUESDAY','WEDNESDAY') DEFAULT NULL,
  `week_start_day` enum('FRIDAY','MONDAY','SATURDAY','SUNDAY','THURSDAY','TUESDAY','WEDNESDAY') DEFAULT NULL,
  `weekly_engine_enabled` bit(1) DEFAULT NULL,
  `weekly_processing_time` time(6) DEFAULT NULL,
  `academic_year` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL,
  `daily_engine_status` varchar(20) DEFAULT NULL,
  `last_daily_run` datetime(6) DEFAULT NULL,
  `last_weekly_run` datetime(6) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `test_mode_enabled` bit(1) DEFAULT NULL,
  `test_time` time(6) DEFAULT NULL,
  `weekly_engine_status` varchar(20) DEFAULT NULL,
  `week_end_full_penalty` int DEFAULT NULL,
  `week_end_partial_penalty` int DEFAULT NULL,
  `week_start_full_penalty` int DEFAULT NULL,
  `week_start_partial_penalty` int DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
