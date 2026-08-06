USE `spdms_lab`;

-- Schema DDL for table `group_deletion_audit_log`
DROP TABLE IF EXISTS `group_deletion_audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_deletion_audit_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `deleted_by_role` varchar(100) NOT NULL,
  `deleted_by_user_id` varchar(100) NOT NULL,
  `reason` varchar(500) DEFAULT NULL,
  `team_id` bigint NOT NULL,
  `team_name` varchar(255) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
