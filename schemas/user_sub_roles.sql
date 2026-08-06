USE `spdms_lab`;

-- Schema DDL for table `user_sub_roles`
DROP TABLE IF EXISTS `user_sub_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_sub_roles` (
  `user_id` bigint NOT NULL,
  `sub_role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`sub_role_id`),
  KEY `user_sub_roles_ibfk_2` (`sub_role_id`),
  CONSTRAINT `user_sub_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_sub_roles_ibfk_2` FOREIGN KEY (`sub_role_id`) REFERENCES `sub_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
