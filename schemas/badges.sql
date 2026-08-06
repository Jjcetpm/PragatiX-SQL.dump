USE `spdms_lab`;

-- Schema DDL for table `badges`
DROP TABLE IF EXISTS `badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `badges` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `approval_authority` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `rarity` varchar(50) NOT NULL,
  `tier` varchar(50) NOT NULL,
  `xp_required` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKcuebofvgkgi4g9fxde2kmpr1h` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
