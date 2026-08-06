USE `spdms_lab`;

-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levels` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `key_unlocks` text,
  `level_number` int NOT NULL,
  `primary_objective` text,
  `stage` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `xp_max` int NOT NULL,
  `xp_min` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKli0eoqvxan7eauih6cmj751i1` (`level_number`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` VALUES (1,'Onboarding missions, basic badges, attend all sessions',1,'Build participation habits',1,'Explorer',100,0),(2,'Study groups, quiz battles, attendance streaks',2,'Develop consistency & discipline',1,'Builder',500,101),(3,'Skill pathways unlocked, mini-projects, peer collaboration',3,'Build technical & collaborative skills',2,'Innovator',1500,501),(4,'Advanced missions, certification tracks, own deliverables',4,'Demonstrate competency & peer support',2,'Specialist',3000,1501),(5,'Mentorship roles, leadership missions, project lead',5,'Guide peers, lead teams strategically',3,'Leader',5000,3001),(6,'Governance participation, ecosystem stewardship',6,'Sustain ecosystem & peer development',3,'Mentor',7000,5001),(7,'Industry opportunities, innovation access, strategic leadership',7,'Influence ecosystem growth & innovation',3,'Architect',10000,7001),(8,'Full privileges, alumni bridge, institutional ambassador',8,'Professional-level readiness - placement & alumni',3,'Industry Ready',99999,10001);
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
