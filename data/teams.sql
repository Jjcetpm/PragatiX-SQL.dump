USE `spdms_lab`;

-- Data DML for table `teams`
LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (31,'Team A',10,24,NULL,'1',6,8,47,76),(32,'Team B',10,15,NULL,'1',13,8,47,56),(33,'Team C',10,45,NULL,'1',6,8,47,63),(35,'Team D',10,53,NULL,'1',6,8,47,26),(90,'Team E',10,58,NULL,'1',13,8,47,39),(91,'Team F',10,62,NULL,'1',13,8,47,65);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
