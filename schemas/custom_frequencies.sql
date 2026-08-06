USE `spdms_lab`;

-- Schema DDL for table `custom_frequencies`
DROP TABLE IF EXISTS `custom_frequencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_frequencies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cap_type` varchar(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `default_cap` int DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKdwvgfonmejvccbcv17imp17ws` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
