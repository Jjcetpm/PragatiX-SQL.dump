USE `spdms_lab`;

-- Table structure for table `user_sub_roles`
--

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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_sub_roles`
--

LOCK TABLES `user_sub_roles` WRITE;
/*!40000 ALTER TABLE `user_sub_roles` DISABLE KEYS */;
INSERT INTO `user_sub_roles` VALUES (13,1),(23,1),(24,1),(25,1),(26,1),(28,1),(30,1),(32,1),(35,1),(38,1),(41,1),(5,2),(16,2),(17,2),(18,2),(19,2),(29,2),(34,2),(37,2),(40,2),(43,2);
/*!40000 ALTER TABLE `user_sub_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
