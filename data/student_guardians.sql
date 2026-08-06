USE `spdms_lab`;

-- Data DML for table `student_guardians`
LOCK TABLES `student_guardians` WRITE;
/*!40000 ALTER TABLE `student_guardians` DISABLE KEYS */;
INSERT INTO `student_guardians` VALUES (1,23,'Thiruppathi','FATHER','6380170548','',1,'2026-07-22 11:23:16','2026-07-22 11:23:16','36'),(2,35,'Jagadheesh','PARENT','6383007210','',1,'2026-07-22 11:50:42','2026-07-22 11:50:42','24CSC101'),(3,75,'Jagadheesh','FATHER','6383007210','',1,'2026-07-22 11:52:02','2026-07-22 11:52:02','24CSC141'),(4,36,'Sharugesh','FATHER','6380170548','',1,'2026-07-22 15:02:41','2026-07-22 15:02:41','24CSC102'),(5,22,'selvakumar','FATHER','6380170548','',1,'2026-07-23 10:24:37','2026-07-23 10:24:37','99'),(7,96,'','GUARDIAN','','',1,'2026-08-04 09:47:59','2026-08-04 09:47:59','1234'),(9,98,'','GUARDIAN','','',1,'2026-08-05 13:19:37','2026-08-05 13:19:37','CSE2619');
/*!40000 ALTER TABLE `student_guardians` ENABLE KEYS */;
UNLOCK TABLES;
