USE `spdms_lab`;

-- Data DML for table `activity_stages`
LOCK TABLES `activity_stages` WRITE;
/*!40000 ALTER TABLE `activity_stages` DISABLE KEYS */;
INSERT INTO `activity_stages` VALUES (20,'stage 0','2026-07-31 18:54:42','2026-07-31 18:55:00','','stage 0',0,_binary '',50,'ACTIVE',0,0,0,NULL,NULL,_binary '\0',_binary '',_binary '\0','SECOND_YEAR'),(27,'Stage 1','2026-08-05 06:37:23','2026-08-06 09:35:50','','Stage 1',1,_binary '',200,'ACTIVE',150,150,80,NULL,NULL,_binary '\0',_binary '',_binary '\0','FIRST_YEAR'),(28,'Stage 2','2026-08-05 10:29:59','2026-08-06 09:36:25','','Stage 2',2,_binary '',200,'ACTIVE',150,150,100,NULL,NULL,_binary '\0',_binary '',_binary '\0','FIRST_YEAR');
/*!40000 ALTER TABLE `activity_stages` ENABLE KEYS */;
UNLOCK TABLES;
