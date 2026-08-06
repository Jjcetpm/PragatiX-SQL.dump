USE `spdms_lab`;

-- Schema DDL for table `sms_notifications`
DROP TABLE IF EXISTS `sms_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_notifications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `error_message` text,
  `guardian_phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `provider` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `student_id` bigint NOT NULL,
  `twilio_sid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
